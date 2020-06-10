#!/bin/sh


# Copyright (c) 2020 Daniel Sloan, Lucid Horizons Pty Ltd

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# this doesn't actually work, you need to hand-write the UID/GID at the moment
# low priority, will fix eventually
docker run --rm -it --mount type=bind,source=$(pwd),target=/workdir --mount type=bind,source=$(pwd)/deploy,target=/worktmp/deploy -v yoctotmp:/worktmp crops/poky:ubuntu-18.04 --workdir=/workdir --id=${UID}:${GID}

