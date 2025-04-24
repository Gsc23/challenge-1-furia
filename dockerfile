# Building stage
FROM node:18-alpine AS builder

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --include=dev

COPY . .
RUN npm run build && npm prune --production

# Final stage
FROM node:18-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache tzdata && \
    addgroup -S appgroup && \
    adduser -S appuser -G appgroup && \
    mkdir -p data && touch data/chatbot.db && \
    chown appuser:appgroup /data

COPY --from=builder --chown=appuser:appgroup /usr/src/app/node_modules ./node_modules
COPY --from=builder --chown=appuser:appgroup /usr/src/app/dist ./dist
COPY --chown=appuser:appgroup package*.json ./

USER appuser

EXPOSE 3000
CMD ["node", "dist/main.js"]
