FROM ubuntu:18.04

MAINTAINER Masaharu TASHIRO <masatsr.kit@gmail.com>

RUN set -x \
    && apt-get -yqq update \
    && apt-get -yqq install apt-mirror  --no-install-recommends \
    && apt-get -yqq clean \
    && apt-get -yqq autoremove \
    && apt-get -yqq autoclean
CMD ["bash"]

