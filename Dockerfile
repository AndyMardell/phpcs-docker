FROM herloct/phpcs

RUN apk update && apk upgrade && \
    apk add git && \
    git clone -b master https://github.com/WordPress/WordPress-Coding-Standards.git /wpcs && \
    phpcs --config-set installed_paths /wpcs

