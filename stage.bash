#!/bin/bash


ref='refs/heads/staging'
if [ ${ref} == 'refs/heads/develop' ]
then
  stage="int-dev"
elif [ ${ref} == 'refs/heads/staging' ]
then
  stage="staging"
else
  echo "Workflow not defined for branch ${ref}"
fi

echo "STAGE=${stage}"