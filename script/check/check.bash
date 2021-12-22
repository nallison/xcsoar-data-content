#!/bin/bash

# Verify integrity.

# Halt on errors:
set -e
# Echo commands:
set -x

# Install dependencies:
pip3 install -U aerofiles
pip3 install -U iso3166

./script/check/check_waypoints_country.py data/content/waypoint/country/

for each in data/content/waypoint/region/*.cup ; do python ./script/check/check-waypoints "${each}" ; done