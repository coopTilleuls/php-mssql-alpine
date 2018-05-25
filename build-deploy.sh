#!/bin/bash

for version in */ ; do
    for full in $version/*/ ; do
        subtitution=${full/\/\//-}
        tag=${subtitution::-1}
        docker build -t cooptilleuls/php-mssql-alpine:$tag $full
        docker push cooptilleuls/php-mssql-alpine:$tag
    done
done