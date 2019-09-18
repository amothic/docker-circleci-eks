FROM docker:18.06-git

RUN apk add --no-cache python groff jq less bash && \
    apk add --no-cache --virtual .build-deps py-pip && \
    pip install --no-cache-dir awscli && \
    apk del .build-deps \
