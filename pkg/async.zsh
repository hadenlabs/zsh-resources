#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# shellcheck source=/dev/null
[ -e "${HOME}/.zsh-async/async.zsh" ] && source "${HOME}/.zsh-async/async.zsh"

# Define a function to process the result of the job
function resources::async::completed::callback {
    message_success "${@}"
    async_stop_worker "${RESOURCES_ASYNC_NAME}" -u
}

function resources::async::init {
    if ! resources::utils::callable "async_init" && ! resources::utils::callable "async_start_worker"; then
        message_warning "not found library async"
        return
    fi

    async_init
    resources::async::register_worker
}

function resources::async::register_worker {
    # Start a worker that will report job completion
    async_start_worker "${RESOURCES_ASYNC_NAME}" -u
    async_register_callback "${RESOURCES_ASYNC_NAME}" resources::async::completed::callback
}

resources::async::init