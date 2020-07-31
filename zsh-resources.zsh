#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install resources for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

# shellcheck disable=SC2034  # Unused variables left for readability
RESOURCES_ROOT_DIR=$(dirname "${0}")
RESOURCES_SRC_DIR="${RESOURCES_ROOT_DIR}"/pkg
RESOURCES_ASSETS_DIR="${RESOURCES_ROOT_DIR}"/assets
RESOURCES_ASSETS_FONTS_DIR="${RESOURCES_ASSETS_DIR}"/fonts
RESOURCES_ASYNC_NAME="resources_worker"

export RESOURCES_PACKAGE_NAME='resources'

function resources::path::linux {
    # shellcheck source=/dev/null
    source "${RESOURCES_SRC_DIR}"/linux.zsh
}

function resources::path::osx {
    # shellcheck source=/dev/null
    source "${RESOURCES_SRC_DIR}"/osx.zsh
}

function resources::path::factory {
    case "${OSTYPE}" in
        darwin*)
            resources::path::osx
            ;;
        linux*)
            resources::path::linux
            ;;
    esac
}


# shellcheck source=/dev/null
source "${RESOURCES_SRC_DIR}"/base.zsh

# shellcheck source=/dev/null
source "${RESOURCES_SRC_DIR}"/utils.zsh

# shellcheck source=/dev/null
source "${RESOURCES_SRC_DIR}"/async.zsh

resources::path::factory

# shellcheck source=/dev/null
source "${RESOURCES_SRC_DIR}"/fonts.zsh
