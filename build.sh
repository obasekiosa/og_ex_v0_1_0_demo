#!/usr/bin/env bash

# Stop immediately when any release-build step fails.
set -o errexit
set -o nounset
set -o pipefail

# Install the package managers needed by a fresh Render build image.
mix local.hex --force
mix local.rebar --force

# Fetch and compile only dependencies used by the production application.
mix deps.get --only prod
MIX_ENV=prod mix compile

# Build and digest the browser assets served by Phoenix.
MIX_ENV=prod mix assets.deploy

# Assemble a self-contained OTP release for Render to start.
MIX_ENV=prod mix release
