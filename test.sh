#!/bin/bash
set -a
source <(cat telepresence.env | \
    sed -e '/^#/d;/^\s*$/d' -e "s/'/'\\\''/g" -e "s/=\(.*\)/='\1'/g")
set +a
jupyterhub --config telepresence.conf/jupyterhub_config.py
