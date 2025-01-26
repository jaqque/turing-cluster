#!/bin/sh

curl https://my-netdata.io/kickstart.sh | sh -s - \
  --non-interactive \
  --release-channel nightly \
  --auto-update \
  --disable-telemetry \
  --native-only \
  --claim-token 7xRbQsWzzWxprwDRgLE5aStHTTOJ2-ywQqyKeBYTywP4bV8nZGm0eLZE5Isrg2cZu3MjjpKag2JL9Byc5DUgJNxmTu3ATfOEkbW3qH5cZGc9tSGT-iw-QkXiHwU4hN86BWMytNk \
  --claim-rooms 24b888c5-a4e3-4e27-87c1-80195393776a \
  --claim-url https://app.netdata.cloud
