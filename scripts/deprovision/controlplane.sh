#!/bin/bash

METAL3_DIR="$(dirname "$(readlink -f "${0}")")/../.."

export ACTION="deprovision_controlplane"

"${METAL3_DIR}"/scripts/run.sh
