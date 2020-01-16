#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install resources for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

# shellcheck disable=SC2034  # Unused variables left for readability
RESOURCES_ROOT=$(RESOURCES root)
RESOURCES_SRC_DIR="${RESOURCES_ROOT_DIR}"/src

resources_package_name='resources'

# shellcheck source=/dev/null
source "${RESOURCES_SRC_DIR}"/base.zsh

function resources::dependences::check {
    if ! type -p async_init > /dev/null; then
        message_warning "is neccesary implement async_init."
    fi
    if [ -z "${GITHUB_USER}" ]; then
        message_warning "You should set 'git config --global github.user'."
    fi
}

resources::dependences::check
