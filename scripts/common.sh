#!/bin/bash


###############################################################################
# Common Utility Functions
###############################################################################

print_header() {
    echo "============================================================"
    echo "COMPONENT : ${COMPONENT_NAME}"
    echo "STAGE     : ${STAGE}"
    echo "STATUS    : ${STATUS}"
    echo "TIMESTAMP : $(date)"
    echo "============================================================"
}

print_success() {
    echo ""
    echo "------------------------------------------------------------"
    echo "STATUS : SUCCESS"
    echo "TIME   : $(date)"
    echo "------------------------------------------------------------"
    
}

print_failure() {
    echo ""
    echo "------------------------------------------------------------"
    echo "STATUS : FAILURE"
    echo "TIME   : $(date)"
    echo "------------------------------------------------------------"
    
}

log_info() {
    echo "[INFO] $1"
}

log_warn() {
    echo "[WARN] $1"
}

log_error() {
    echo "[ERROR] $1"
}