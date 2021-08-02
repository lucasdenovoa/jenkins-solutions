#!/bin/bash

REPO_NAME=$1
USER_NAME=$2
BRANCH_NAME=$3

GIT_URL="https://github.com/"

clonaRepo () {
  git clone --branch $3 "$GIT_URL$1/$2"

  }


clonaRepo $REPO_NAME $USER_NAME $BRANCH_NAME
