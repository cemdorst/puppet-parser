#!/bin/bash

exec /opt/puppetlabs/bin/puppet parser validate --verbose /manifests >> /proc/1/fd/1
