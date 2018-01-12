ARG BUILD_FROM
FROM homeassistant/i386-base:latest


#Add env
ENV LANG C.UTF-8



# Setup base
WORKDIR /share
RUN apk add --no-cache \
		git \
		python2 \
		python-dev \	
		py-pip \
		jq
RUN apk add --no-cache \
		gcc \
		g++ \
		make \
		libffi-dev \
		openssl-dev
 RUN pip install \
 		schedule \
		datetime \
		paho-mqtt
 
# RUN pip install git+https://github.com/jdhorne/pycarwings2.git

# Copy data for add-on
# COPY run.sh /
# RUN chmod a+x /run.sh

# CMD [ "/run.sh" ]