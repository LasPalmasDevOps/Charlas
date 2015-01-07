#!/bin/sh
ansible -u vagrant -i src/ansible/hosts --private-key=~/.vagrant.d/insecure_private_key $*
