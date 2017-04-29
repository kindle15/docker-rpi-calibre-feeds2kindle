# docker-rpi-calibre-feeds2kindle - Docker image for exporting feeds to kindle via calibre on a raspberrypi
![Travis build status](https://api.travis-ci.org/mahnkong/docker-rpi-calibre-feeds2kindle.svg?branch=master)

## Usage

A typical invocation of the container would be:
```
docker run --rm -ti -e SMTP_RELAY=smtp.gmail.com -e SMTP_PORT=587 -e SMTP_USERNAME=someone@gmail.com -e SMTP_PASSWORD=insertpasswordhere -e KINDLE_EMAIL_ADDR=someaddress@kindle.com -e CALIBRE_FEED_RECIPE='Spiegel Online - German' mahnkong/docker-rpi-calibre-feeds2kindle
```

## Environment Variables

The following environment variables must be set to configure the instance:

```
SMTP_RELAY: Relay to be used when sending the ebook to kindle
SMTP_PORT: Port of the Relay to be used when sending the ebook to kindle
SMTP_USERNAME: Username for the SMTP relay
SMTP_PASSWORD: Password for the SMTP relay
KINDLE_EMAIL_ADDR: Email address of the kindle
CALIBRE_FEED_RECIPE: Feed to be converted and sent to the kindle
```
