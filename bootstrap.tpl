#!/bin/bash

metadata_url=http://169.254.169.254/latest/meta-data
function setHostname() {
  instance_id=`curl $metadata_url/instance-id`
  hostname ${HOSTNAME}-$instance_id
}

function check_internet() {
  retry_frequency=$1
  for i in $(seq 1 $retry_frequency); do
    if ping -c 1 -w 1 google.com >> /dev/null 2>&1; then
      echo "Internet is up, can proceed further now"
      return
    else
      echo "Internet connection timeout, continuing with check..."
    fi
  done
}

function puppet_setup() {
  echo "I'll do the setup via puppet"
}

check_internet 500
setHostname
yum -y install wget
puppet_setup
