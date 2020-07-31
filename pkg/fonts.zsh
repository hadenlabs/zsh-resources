#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function resources::fonts::sync {
    rsync -avzh --progress "${RESOURCES_ASSETS_FONTS_DIR}/" "${RESOURCES_FONTS_DIR}/"
    if type -p fc-cache > /dev/null; then
        fc-cache -f "${RESOURCES_FONTS_DIR}"
    fi
}
