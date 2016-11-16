#!/bin/bash

install-pip() {
  tmpdir=$(mktemp -d)
  tmpfile=${tmpdir}/get-pip.py

  curl --silent \
    --location \
    --retry 3 \
    --output "${tmpfile}" \
    https://bootstrap.pypa.io/get-pip.py

  python "${tmpfile}"

  rm -rf "${tmpdir}"
}

main() {
  if ! type pip &> /dev/null; then
    debug "pip is not installed, start to install pip."
    install-pip
  fi

  pip install awscli

  if [ -n "${WERCKER_INSTALL_AWSCLI_KEY}" ]; then
    aws configure set aws_access_key_id "${WERCKER_INSTALL_AWSCLI_KEY}"
  fi

  if [ -n "${WERCKER_INSTALL_AWSCLI_SECRET}" ]; then
    aws configure set aws_secret_access_key "${WERCKER_INSTALL_AWSCLI_SECRET}"
  fi

  if [ -n "${WERCKER_INSTALL_AWSCLI_REGION}" ]; then
    aws configure set default.region "${WERCKER_INSTALL_AWSCLI_REGION}"
  fi

  if [ -n "${WERCKER_INSTALL_AWSCLI_OUTPUT}" ]; then
    aws configure set default.output "${WERCKER_INSTALL_AWSCLI_OUTPUT}"
  fi
}

main

