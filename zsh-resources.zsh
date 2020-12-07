#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install resources for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_RESOURCES_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_RESOURCES_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_RESOURCES_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_RESOURCES_PATH}"/pkg/main.zsh
