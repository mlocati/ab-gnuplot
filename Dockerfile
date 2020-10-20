FROM alpine:3.12

COPY ab-gnuplot /usr/local/bin/

RUN \
    echo 'Updating APK packages' && \
    apk  update -q && \
    echo 'Upgrading APK packages' && \
    apk upgrade -q && \
    echo 'Installing APK packages' && \
    apk add -q --no-cache apache2-utils git gnuplot php php-json php-mbstring php-openssl php-phar ttf-liberation && \
    echo 'Installing Composer' && \
    wget -q -O - https://getcomposer.org/installer | php -- --quiet --filename=/usr/local/bin/composer && \
    echo 'Setting permissions' && \
    chmod 0755 /usr/local/bin/ab-gnuplot && \
    echo 'Cleanup' && \
    rm -rf /var/cache/apk/* && \
    echo 'All done.'

ENTRYPOINT [ "ab-gnuplot" ]
