#!/bin/sh
cd `dirname $0`
bin/rails server -b 0.0.0.0 -p 8080 -d
