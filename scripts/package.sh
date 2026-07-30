#!/bin/bash

source ./scripts/common.sh

print_header "Package"

log_info "Packaging artifact..."

sleep 2

if [ "$FAIL_STAGE" = "package" ]; then
    log_error "Packaging failed."
    cp build/missing-artifact.zip release/
    print_failure
    exit 1
fi

mkdir -p release
cp build/artifact.txt release/
log_info "Package created successfully."
print_success