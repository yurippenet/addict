FROM node:8
ENV NODE_ENV production

ENV ADDICT_VERSION 1.1.1

EXPOSE 3000
ENTRYPOINT [ "/usr/local/bin/addict" ]

RUN yarn global add "addict@$ADDICT_VERSION" && \
    yarn cache clean --force
