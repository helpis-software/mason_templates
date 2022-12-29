#!/usr/bin/env bash

################################################################################
# Copyright (C) Hellenic Progressive Internet Services, Inc.                   #
# All Rights Reserved. 2022.                                                   #
# Unauthorized copying of this file, via any medium is strictly prohibited.    #
# Proprietary and confidential.                                                #
# Written by Elias Kapareliotis <helpis@tutamail.com>.                         #
################################################################################

escapedPath="$(echo `pwd` | sed 's/\//\\\//g')"

if grep flutter pubspec.yaml > /dev/null; then
  if [ -d "coverage" ]; then
    # combine line coverage info from package tests to a common file
    if [ ! -d "$MELOS_ROOT_PATH/coverage" ]; then
      mkdir "$MELOS_ROOT_PATH/coverage"
    fi
    sed "s/^SF:lib/SF:$escapedPath\/lib/g" coverage/lcov.info >> "$MELOS_ROOT_PATH/coverage/lcov.info"
    rm -rf "coverage"
  fi
fi
