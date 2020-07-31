#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# shellcheck disable=SC2154
function resources::utils::callable {
    (( $+commands[$1] || $+functions[$1] ))
}