FROM oven/bun:1
WORKDIR /app

COPY ./package.json ./package.json
COPY ./bun.lock ./bun.lock
COPY ./packages ./packages
COPY ./turbo.json ./turbo.json
COPY ./apps/websocket ./apps/websocket

RUN bun install 

RUN bun run db:migrate

RUN bun install

EXPOSE 8081

CMD ["bun", "run", "start:ws"]