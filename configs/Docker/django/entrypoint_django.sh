#!/bin/bash

set -euo pipefail

# determine the scripts current working directory (CWD)
CWD="${BASH_SOURCE%/*}";
if [[ ! -d "$CWD" ]]; then CWD="$PWD"; fi

# include the script for setting the timezone
source "$CWD/set_timezone.sh"

# execute the provided command, but drop privileges using gosu
exec gosu pythonuser "$@"
