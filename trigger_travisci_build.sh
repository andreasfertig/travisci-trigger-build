#!/bin/sh

body="{ \"request\": { \"branch\":\"master\", \"message\": \"Build triggered by companion $TRAVIS_REPO_SLUG\" }}"

curl -s -X POST \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -H "Travis-API-Version: 3" \
     -H "Authorization: token $TRAVIS_TOKEN" \
     -d "$body" \
     https://api.travis-ci.org/repo/$TARGET_OWNER%2F$TARGET_REPO/requests
