#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function brew::exist {
    if ! type -p brew > /dev/null; then
        echo 0
        return
    fi
    echo 1
}

function rsync::exist {
    if ! type -p rsync > /dev/null; then
        echo 0
        return
    fi
    echo 1
}

function rsync::install {
    if [ "$(brew::exist)" -eq 0 ]; then
        message_warning "Please Install brew or use antibody bundle luismayta/zsh-brew branch:develop"
        return
    fi
    message_info "Installing Rsync"
    brew install rsync
    message_success "Installed Rsync"
}

if [ "$(rsync::exist)" -eq 0 ]; then rsync::install; fi