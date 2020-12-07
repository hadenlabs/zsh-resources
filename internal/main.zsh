#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function resources::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_RESOURCES_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_RESOURCES_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_RESOURCES_PATH}"/internal/linux.zsh
      ;;
    esac
}

resources::internal::main::factory

if ! type -p rsync > /dev/null; then resources::internal::rync::install; fi
