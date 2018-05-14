FROM debian:stable

ENV ANSIBLE_VERSION 2.5

RUN apt-get update && apt-get install --no-install-recommends -y python-pip python-cryptography python-bcrypt python-nacl && apt-get clean && rm -Rf /var/lib/apt/lists
RUN pip --no-cache-dir install openshift ansible==${ANSIBLE_VERSION}
