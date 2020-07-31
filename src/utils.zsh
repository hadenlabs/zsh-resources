#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function resources::utils::callable {
    (( $+commands[$1] || $+functions[$1] ))
}