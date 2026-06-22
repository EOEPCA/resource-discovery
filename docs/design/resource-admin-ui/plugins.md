# Plugins

The administration user interface is extended through plugins that generate the metadata editor. The
examples below illustrate the design concepts from the original specification. They are realised in
[STAC Manager](https://github.com/developmentseed/stac-manager) (see the [Design](design.md) page).

!!! NOTE
    For the authoritative, up-to-date plugin API, refer to the `@stac-manager/data-core`,
    `@stac-manager/data-widgets`, and `@stac-manager/data-plugins` packages in the STAC Manager
    repository. The code examples here are illustrative and may not match the current API exactly.

Each plugin is responsible for a section of the editor and defines the fields that should be shown.
This allows a modular editor layout: each deployment can load a different set of plugins—custom or
from the community.

Drawing inspiration from the JSON Schema spec, each plugin defines a schema that drives the editor.
For each field type there is a corresponding default widget, but plugins can supply custom widgets
(as React components) for specific fields.

## Simple example plugin

```javascript
export class PluginMeta extends Plugin {
  editSchema() {
    return {
      type: 'root',
      properties: {
        title: {
          type: 'string'
        },
        description: {
          type: 'string'
        },
        provider: {
          type: 'string',
          'ui:widget': 'select',
          enum: [
            ['ESA', 'esa'],
            ['NASA', 'nasa'],
            ['JAXA', 'jaxa'],
            ['CNSA', 'cnsa']
          ]
        }
      }
    };
  }

  enterData(data) {
    // Transform the input data to the format expected by the editor.
    // A transformation may be needed in cases where an object key is being edited.
  }

  exitData(data) {
    // Transform the data from the editor to the format expected by STAC.
  }
}
```

## More complicated example

A more complex plugin includes an async `init` function to fetch values needed at edit time.

```javascript
export class PluginRender extends Plugin {
  async init(data) {
    this.colorMaps = [];

    try {
      const response = await fetch(
        'https://dev.openveda.cloud/api/raster/colorMaps'
      );
      const result = await response.json();
      this.colorMaps = result.colorMaps;
    } catch (error) {
      // oops!
    }
  }

  // ... more code
}
```

## Configuration

Plugins are registered in a configuration file that defines which plugins the editor loads. Plugins can
be loaded dynamically depending on conditions such as the STAC extensions present on a record.

```javascript
export const config = {
  // Collection level plugins.
  collectionPlugins: [
    new PluginMeta()
  ],

  // Item level plugins.
  itemPlugins: [
    new PluginMeta(),
    new PluginExtension(),
    (data) => data.stac_extensions?.some((e) => e.includes('/render/'))
      ? new PluginRender()
      : null
    ],

  // Custom widgets. 
  'widgets': {
    keyname: KeynameWidget,
    select: SelectWidget
  }
};
```

## Widgets

```javascript
export class PluginRender extends Plugin {
  editSchema() {
    return {
      type: 'root',
      properties: {
        renders: {
          type: 'array',
          items: {
            type: 'object',
            'ui:widget': 'renderExtensionItemWidget',
            properties: {
              key: {
                label: 'Key name',
                'ui:widget': 'keyname',
                type: 'string'
              },
              assets: {
                label: 'Assets',
                type: 'array',
                items: {
                  type: 'string'
                }
              },
              nodata: {
                label: 'No Data',
                type: 'string'
              },
              colormap_name: {
                label: 'Colormap Name',
                type: 'string',
              }
              // ... more fields
            }
          }
        }
      }
    };
  }
}
```

The corresponding widget:

```javascript
export function RenderExtensionItemWidget(props) {
  const [tilejson, setTilejson] = useState();
  return (
    <Box>
      <Box position='relative' aspectRatio='4/2'>
        <RMap
          mapboxAccessToken={process.env.MAPBOX_TOKEN}
          mapStyle='mapbox://styles/mapbox/satellite-v9'
        >
          {tilejson && (
            <Source tiles={tilejson.tiles} type='raster'>
              <Layer id='data' type='raster' />
            </Source>
          )}
        </RMap>
      </Box>
      <Flex gap={4} direction='column' mt={4}>
        <ObjectField pointer={props.pointer} field={props.field} />
      </Flex>
    </Box>
  );
}
```

`ObjectField` is the default widget for objects; this custom widget wraps it to add a map preview.

The configuration file ties plugins and widgets together:

```javascript
export const config = {
  collectionPlugins: [
    new PluginMeta(),
    new PluginRender()
  ],

  'ui:widget': {
    renderExtensionItemWidget: RenderExtensionItemWidget
  }
};
```