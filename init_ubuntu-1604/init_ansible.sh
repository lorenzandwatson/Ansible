#!/bin/bash
#route delete default
#route add default gw 192.168.2.254 enp0s8
function ErrChk()
{
  PROC=${1}
  RC=${?}
  if [[ ${RC} -ne 0 ]]; then
    echo "The process failed.[${PROC}]"
    exit 1
  fi
}

apt-get update
ErrChk "apt-get update"
apt-get -y install software-properties-common
ErrChk "Install software-properties-common"
apt-add-repository ppa:ansible/ansible
ErrChk "apt-add-repository"
apt-get update
ErrChk "apt-get update"
apt-get -y install ansible
ErrChk "Install Ansible"
