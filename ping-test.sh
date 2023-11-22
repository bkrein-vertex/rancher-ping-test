#!/usr/bin/env bash

TARGET="api.github.com"
SLEEP="2"

usage () {
  echo "$(basename $0) [-t <target>] [-s <sleep_secs>] [-h]"
  echo
  echo "  -t - Target to ping (default: $TARGET)"
  echo "  -s - Seconds to sleep between pings (default: $SLEEP)"
  echo
  exit 1
}

while getopts ":ht:s:" arg
do
  case "$arg" in
    t) TARGET="$OPTARG" ;;
    s) SLEEP="$OPTARG" ;;
    h) usage ;;
    ?) error "Invalid option: -$OPTARG" ;;
  esac
done

while true
do
  echo "$(date) - $(dig $TARGET +noall +answer)"
  sleep "$SLEEP"
done
