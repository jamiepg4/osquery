#!/usr/bin/env bash

#  Copyright (c) 2014-present, Facebook, Inc.
#  All rights reserved.
#
#  This source code is licensed under the BSD-style license found in the
#  LICENSE file in the root directory of this source tree. An additional grant
#  of patent rights can be found in the PATENTS file in the same directory.

function distro_main() {
  do_sudo apt-get -y update

  package git
  package gawk
  package autotools-dev
  package autopoint
  package g++
  package ruby
  package ruby-dev
  package curl
  package bison
  package flex
  package bsdtar
  package doxygen
  package realpath

  GEM=`which gem`
  do_sudo $GEM install fpm 
}
