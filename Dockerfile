FROM node:14-slim
WORKDIR /usr/src/cli
RUN chown node:node ./
USER node
RUN npm i -G firebase-tools
RUN chmod +x entrypoint.sh
COPY . .
ENTRYPOINT ["/usr/src/cli/entrypoint.sh"]