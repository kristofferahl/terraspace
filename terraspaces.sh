#!/usr/bin/env bash

terraspace () {
  local workspace
  workspace="$(terraform workspace show)"

  if [[ -f ./secrets.sh ]]; then
    source ./secrets.sh
  fi

  export TF_CLI_ARGS_apply="-var-file ./workspace/${workspace:?}.tfvars"
  export TF_CLI_ARGS_plan="-var-file ./workspace/${workspace:?}.tfvars"
  export TF_CLI_ARGS_destroy="-var-file ./workspace/${workspace:?}.tfvars"

  terraform "$@"
}
