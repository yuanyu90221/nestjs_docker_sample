# stage 1
FROM node:alpine AS builder
RUN mkdir app
COPY . app/
WORKDIR app/
RUN yarn install --frozen-lockfile
RUN yarn run build
# stage 2
FROM node:alpine
RUN mkdir app
COPY --from=builder app/dist ./app/dist
COPY --from=builder app/node_modules ./app/node_modules
USER node
WORKDIR app/
CMD ["node", "dist/main"]