FROM debian:stable

COPY ./.loki .
COPY ./.storybook .
COPY ./public .
COPY ./src .
COPY ./loki.config.js .
COPY ./package.json .

RUN apt-get update -qqy \
  && apt-get -qqy install \
       dumb-init gnupg wget ca-certificates apt-transport-https \
       ttf-wqy-zenhei \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN rm -rf /var/lib/apt/lists/* \
    && rm -rf /etc/apt/sources.list.d/* \
    && apt-get update \
    && apt-get -qqy install nodejs npm

RUN npm i

CMD [ "npm run test-ci" ]
