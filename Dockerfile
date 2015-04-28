###
#
# A simple base image for installing meteorjs
#
###
FROM node:slim
MAINTAINER Kingsquare <docker@kingsquare.nl>

WORKDIR /app
VOLUME /app

####
# Install meteor+cleanup
RUN buildDeps='curl' \
	&& set -x \
	&& apt-get update && apt-get install -y $buildDeps \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl https://install.meteor.com/ | sh \
	&& apt-get purge -y --auto-remove $buildDeps


CMD meteor