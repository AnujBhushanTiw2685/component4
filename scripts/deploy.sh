#!/bin/bash

source ./scripts/common.sh

print_header "Deploy"

log_info "Initiating deployment process..."

sleep 2

if [ "$FAIL_STAGE" = "deploy" ]; then
    log_error "Deployment failed."
    cp release/deployment-manifest.yaml deployment/
    print_failure
    exit 1
fi

log_info "Deployment completed."
print_success