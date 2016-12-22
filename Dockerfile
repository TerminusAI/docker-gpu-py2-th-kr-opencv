FROM terminus7/gpu-py2-th-kr

MAINTAINER Luis Mesas <luis.mesas@intelygenz.com>

ARG CUDA_ARCHITECTURE="3.0"

RUN apt-get update && \
    apt-get install -y python-opencv libopencv-dev libjpeg-dev libpng-dev&& \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

WORKDIR "/root"
CMD ["/bin/bash"]
