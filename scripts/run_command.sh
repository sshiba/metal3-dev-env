#!/bin/bash
# Runs arbitrary command with environment variables used by the metal3-dev-env
# setup scripts.

set -xe

METAL3_DIR="$(dirname "$(readlink -f "${0}")")/.."

# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/logging.sh"
# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/common.sh"
# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/releases.sh"
# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/network.sh"
# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/images.sh"
# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/ironic_basic_auth.sh"
# shellcheck disable=SC1090
# shellcheck disable=SC1091
source "${METAL3_DIR}/lib/ironic_tls_setup.sh"

exec "$@"
