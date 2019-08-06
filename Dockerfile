FROM herloct/phpcs

RUN apk update && apk upgrade && \
    apk add git && \
    git clone -b master https://github.com/WordPress/WordPress-Coding-Standards.git /wpcs && \
    phpcs --config-set installed_paths /wpcs && \
    phpcs --config-set colors 1 && \
    phpcs --config-set show_progress 1 && \
    phpcs --config-set report_width 200

ENTRYPOINT ["phpcs"]
