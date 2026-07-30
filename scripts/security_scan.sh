#!/bin/bash

source ./scripts/common.sh

print_header "Security Scan"

log_info "Scanning project..."

sleep 2

if [ "$FAIL_STAGE" = "security_scan" ]; then
log_error "Critical vulnerability detected."
    cat pseudo_report.json
    print_failure
    exit 1
fi

log_info "No vulnerabilities detected."
print_success