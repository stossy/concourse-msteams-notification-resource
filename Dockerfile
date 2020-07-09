FROM alpine

RUN apk add --no-cache curl \
            bash \
            git \
            tar \
            sed \
            jq \
            libxslt \
            libxml2-utils

COPY check /opt/resource/check
COPY in    /opt/resource/in
COPY out   /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
