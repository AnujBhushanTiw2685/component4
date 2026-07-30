#!/bin/bash

source ./scripts/common.sh

print_header "Build"

log_info "Creating build directory..."
mkdir -p build

log_info "generating dummy artifact..."

echo "This is a dummy artifact." > build/artifact.txt

log_info "Artifact generated successfully."

print_success