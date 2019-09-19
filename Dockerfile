FROM docker:18.06-git

RUN apk add --no-cache python groff jq less bash && \
    apk add --no-cache --virtual .build-deps py-pip curl && \
    pip install --no-cache-dir awscli && \
    curl -L -o /usr/local/bin/kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.8/2019-08-14/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    curl -L -o /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v3.2.0/kustomize_3.2.0_linux_amd64 && \
    chmod +x /usr/local/bin/kustomize && \
    apk del .build-deps \
