#!/bin/bash
docker $1 {application-db,application-ui,application-api,reverse-proxy}
