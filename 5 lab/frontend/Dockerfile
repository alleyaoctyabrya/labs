FROM node:alpine

WORKDIR /app

COPY --from=source /repo/react-frontend /app

RUN addgroup -S mygroup && adduser -S myuser -G mygroup && \
    chown -R myuser:mygroup /app

USER myuser

RUN npm ci && \
    npm cache clean --force

CMD ["npm", "start"]