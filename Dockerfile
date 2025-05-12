FROM node:20-slim

RUN apt-get update && apt-get install -y git

WORKDIR /app

ARG PUBLIC_URL="/"
ARG STAC_API_URL
ARG PRIMARY_COLOR='#005ACD'
ARG SECONDARY_COLOR='#048A81'

RUN git clone https://github.com/developmentseed/stac-manager .

ENV PUBLIC_URL=${PUBLIC_URL}
ENV REACT_APP_STAC_API=${STAC_API_URL}
ENV REACT_APP_THEME_PRIMARY_COLOR=${PRIMARY_COLOR}
ENV REACT_APP_THEME_SECONDARY_COLOR=${SECONDARY_COLOR}

RUN npm i -g http-server
RUN --mount=type=secret,id=keycloak_url \
    --mount=type=secret,id=keycloak_realm \
    --mount=type=secret,id=keycloak_client_id \
    export REACT_APP_KEYCLOAK_URL=$(cat /run/secrets/keycloak_url) && \
    export REACT_APP_KEYCLOAK_REALM=$(cat /run/secrets/keycloak_realm) && \
    export REACT_APP_KEYCLOAK_CLIENT_ID=$(cat /run/secrets/keycloak_client_id) && \
    npm i && npm run all:build

EXPOSE 80

ENTRYPOINT ["http-server"]
CMD ["-p", "80", "packages/client/dist"]
