FROM alpine:3.4

RUN apk update && \
  apk add --no-cache \
  ansible \
  openssh-client \
  sshpass

COPY ansible_hosts /etc/ansible/hosts

COPY ansible.cfg /etc/ansible/ansible.cfg
