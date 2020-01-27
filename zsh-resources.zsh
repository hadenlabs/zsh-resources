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
RESOURCES_SRC_DIR="${RESOURCES_ROOT_DIR}"/src
RESOURCES_ASSETS_DIR="${RESOURCES_ROOT_DIR}"/assets
RESOURCES_ASSETS_FONTS_DIR="${RESOURCES_ASSETS_DIR}"/fonts

resources_package_name='resources'

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

resources::path::factory

# shellcheck source=/dev/null
source "${RESOURCES_SRC_DIR}"/fonts.zsh
