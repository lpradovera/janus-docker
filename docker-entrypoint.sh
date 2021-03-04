#!/bin/bash
set -e

envsubst < /opt/janus/etc/janus/janus.eventhandler.sampleevh.jcfg.sample > /opt/janus/etc/janus/janus.eventhandler.sampleevh.jcfg

/opt/janus/bin/janus
