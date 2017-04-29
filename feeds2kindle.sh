#!/bin/bash

if [ "$SMTP_RELAY" = "" ]; then
    echo "SMTP_RELAY not defined!"
    exit 1
fi
if [ "$SMTP_PORT" = "" ]; then
    echo "SMTP_PORT not defined!"
    exit 1
fi
if [ "$SMTP_USERNAME" = "" ]; then
    echo "SMTP_USERNAME not defined!"
    exit 1
fi
if [ "$SMTP_PASSWORD" = "" ]; then
    echo "SMTP_PASSWORD not defined!"
    exit 1
fi
if [ "$KINDLE_EMAIL_ADDR" = "" ]; then
    echo "KINDLE_EMAIL_ADDR not defined!"
    exit 1
fi
if [ "$CALIBRE_FEED_RECIPE" = "" ]; then
    echo "CALIBRE_FEED_RECIPE not defined!"
    exit 1
fi
echo "converted feed '${CALIBRE_FEED_RECIPE}'..."
ebook-convert "${CALIBRE_FEED_RECIPE}".recipe feed.mobi
echo "sending converted feed '${CALIBRE_FEED_RECIPE}' to '${KINDLE_EMAIL_ADDR}'"
calibre-smtp -r $SMTP_RELAY --username $SMTP_USERNAME --password $SMTP_PASSWORD --port $SMTP_PORT $SMTP_USERNAME $KINDLE_EMAIL_ADDR '' -s "${CALIBRE_FEED_RECIPE}" -a feed.mobi
echo "all work done"
