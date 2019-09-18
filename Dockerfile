FROM docker:18.06-git

RUN apk add --no-cache python groff jq less bash && \
    apk add --no-cache --virtual .build-deps py-pip curl && \
    pip install --no-cache-dir awscli && \
    curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.8/2019-08-14/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    apk del .build-deps \
