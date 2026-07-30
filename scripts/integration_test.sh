#!/bin/bash

source ./scripts/common.sh

print_header "Integration Test"

log_info "Running integration tests..."

sleep 2

if [ "$FAIL_STAGE" = "integration_test" ]; then
    log_error "Integration test failed."

    python pseudo_test_runner.py
    print_failure

    exit 1
fi

log_info "integration tests passed."
print_success