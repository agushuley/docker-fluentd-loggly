FROM fluent/fluentd:latest
MAINTAINER Ted Chen <ted@nephilagraphic.com>

ENV TOKEN=""
ENV NODE_HOSTNAME=""
ENV LOGGLY_TAG="docker,container"

RUN gem install fluent-plugin-loggly

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
