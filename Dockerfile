# docker run --name docker-asterisk -v ./asterisk:/etc/asterisk -p 5600:5060/udp -p 31000-31500:31000-31500/udp --rm -ti --entrypoint=sh docker-asterisk

FROM alpine:3.19.1

RUN apk add --update --no-cache \
    asterisk=20.5.2-r0 \
    asterisk-sample-config \
    asterisk-alsa \
    asterisk-curl \
    asterisk-dbg \
    asterisk-dev \
    asterisk-fax \
    asterisk-mobile \
    asterisk-odbc \
    asterisk-openrc \
    asterisk-opus \
    asterisk-pgsql \
    asterisk-sounds-en \
    asterisk-sounds-moh \
    asterisk-speex \
    asterisk-srtp \
    asterisk-tds \
    net-tools

WORKDIR /etc/asterisk

ENTRYPOINT ["asterisk", "-f", "-vvv"]
