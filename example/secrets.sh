#!/usr/bin/env bash

# ---------------------------------------------
# Fetch your secrets here based on the
# $workspace variable.
# ---------------------------------------------

export TF_VAR_some_secret

case ${workspace:?} in
  dev)
    TF_VAR_some_secret='A DEV SECRET'
    ;;
  default)
    TF_VAR_some_secret='A DEFAULT SECRET'
    ;;
esac
