# terraspaces

Experiment to replace [terragrunt](https://github.com/gruntwork-io/terragrunt) as a lightweight wrapper for terraform.

## Features

- Supports all the regular terraform commmands
- Supports loading variables based on the current workspace
- Supports sourcing of secrets based on the current workspace

## Usage

    curl https://raw.githubusercontent.com/kristofferahl/terraspaces/master/terraspaces.sh > ./terraspaces.sh
    source ./terraspaces.sh

    cd <path to terraform files>
    terraspace workspace select <workspace>
    terraspace <terraform command>
