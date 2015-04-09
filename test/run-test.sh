#! /bin/bash

mkdir -p roles

ln -sfn ../../ roles/ansible-nodejs

vagrant up --no-provision
vagrant provision
