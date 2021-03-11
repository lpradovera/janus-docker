#!/bin/bash
set -e
rm -rf /opt/janus/etc/janus

mkdir -p /opt/janus/etc/janus

for tpl in /opt/templates/*
do
  echo $tpl
  filename=$(basename $tpl)
  dest="/opt/janus/etc/janus/$filename"
  echo $dest

  envsubst < $tpl > $dest
done