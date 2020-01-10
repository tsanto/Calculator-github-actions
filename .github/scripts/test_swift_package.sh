#!/bin/bash

set -eo pipefail

cd Calculator-package; swift test --parallel; cd ..
