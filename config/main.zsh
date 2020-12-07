#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function resources::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_RESOURCES_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_RESOURCES_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_RESOURCES_PATH}"/config/linux.zsh
      ;;
    esac
}

resources::config::main::factory