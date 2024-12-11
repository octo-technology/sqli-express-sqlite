FROM docker.io/library/node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN --mount=type=cache,target=/root/.npm/cache npm ci

COPY . .

CMD ["npm", "start"]
