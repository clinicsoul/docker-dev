FROM docker

RUN apk add --no-cache --update npm

RUN npm install -g azure-cli

RUN ln -s $(which azure) /usr/bin/az

RUN wget -O /usr/bin/helmfile https://github.com/roboll/helmfile/releases/download/v0.112.0/helmfile_linux_amd64 && \
    chmod +x /usr/bin/helmfile
