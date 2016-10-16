#!/bin/sh
cd `dirname $0`
bundle install
bin/rails server -b 0.0.0.0 -p 8080 -d
