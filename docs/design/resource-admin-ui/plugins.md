# Plugins

The Resource Administration UI can be extended with a set of plugins that can be loaded to generate the editor.
The below documentation describes the preliminary concepts and examples.

Each plugin would be responsible for a section of the editor and would be able to define the fields that should be shown.
This allows for a more modular approach to the editor. Each instance could use a different set of plugins to define the editor structure. 
These could be custom plugins or plugins from the community.

Drawing inspiration from the JSON schema spec, each plugin would define a schema to create the editor. 
For each field type there would be a corresponding default widget to render it, 
but plugins could define their own widgets (in the form of a React component) to be used by the fields.

Below are some examples.

!!! NOTE
    The provided code examples are preliminary illustrations of the concepts and not necessarily complete.

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

Something more complicated would include an async init function to get values needed for the plugin.

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

All this would be set up in a configuration file that would define the plugins to be used by the editor.
The plugins could even be loaded dynamically depending on some condition.

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

Then the Widget:

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

`ObjectField` is the default widget for objects so basically we're adding a wrapper around it to show the map.

Lastly, the configuration file would be used to generate the editor:

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