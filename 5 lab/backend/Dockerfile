FROM alpine

WORKDIR /app

COPY --from=source /repo/spring-backend /app

RUN apk add --no-cache maven openjdk17-jdk && \
    mvn clean package && \
    apk del maven openjdk17-jdk && \
    rm -rf /var/cache/apk/* /tmp/*

RUN addgroup -S mygroup && adduser -S myuser -G mygroup && \
    chown -R myuser:mygroup /app

USER myuser

CMD ["sh", "-c", "java -jar target/$(ls target/ | grep -E '.*\\.jar$')"]