FROM alpine:latest

LABEL version="1.0" maintainer="Dominic Lecuyer <dominic.lecuyer@datastyx.com>" description="Alpine based Image with libxml2 utilities and BATS for testing."

RUN apk add --no-cache bash libxml2-utils
RUN git clone https://github.com/bats-core/bats-core.git \
  && cd bats-core \
  && ./install.sh /usr/local
  
# Install parallel and accept the citation notice (we aren't using this in a
# context where it make sense to cite GNU Parallel).
RUN apk add --no-cache parallel && \
    mkdir -p ~/.parallel && touch ~/.parallel/will-cite
    
ENTRYPOINT ["/bin/bash", "/usr/local/bin/bats"]
