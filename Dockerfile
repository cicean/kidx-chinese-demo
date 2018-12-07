FROM python:3.6-slim

SHELL ["/bin/bash", "-c"]

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ARG GITHUB_TOKEN

RUN apt-get update -qq && \
  apt-get install -y --no-install-recommends \
  apt-utils \
  vim \
  build-essential \
  wget \
  openssh-client \
  graphviz-dev \
  pkg-config \
  git-core \
  openssl \
  libssl-dev \
  libffi6 \
  libffi-dev \
  libpng-dev \
  curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  mkdir /demo

COPY requirements.txt ./

RUN pip install -r requirements.txt && \
    pip install https://github.com/howl-anderson/Chinese_models_for_SpaCy/releases/download/v2.0.5/zh_core_web_sm-2.0.5.tar.gz && \
    python -m spacy link zh_core_web_sm zh


VOLUME /demo

EXPOSE 5005

CMD ["bash"]
