FROM node:20-slim AS builder
WORKDIR /app
COPY package.json yarn.lock .env.e2e.example ./
RUN yarn install

FROM node:20-slim
WORKDIR /app
COPY --from=builder /app/node_modules /app/node_modules
COPY . .

COPY ./docker-entrypoint.sh /app/
CMD ["/app/docker-entrypoint.sh"]
