#!/bin/sh
set -e

exec $@ java -jar /deployments/quarkus-run.jar
