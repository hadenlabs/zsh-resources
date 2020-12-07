#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function resources::internal::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "${RESOURCES_MESSAGE_BREW}"
        return
    fi
    message_info "Installing rsync for ${RESOURCES_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${RESOURCES_PACKAGE_NAME}"
}
