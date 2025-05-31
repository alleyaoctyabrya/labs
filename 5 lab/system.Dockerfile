FROM alpine as source

WORKDIR /repo

RUN apk add --no-cache git && \
    git clone --depth 1 https://gitlab.com/deusops/projects/react-spring-app.git . && \
    apk del git

RUN rm -rf $(ls -A | grep -Ev "spring-backend|react-frontend")