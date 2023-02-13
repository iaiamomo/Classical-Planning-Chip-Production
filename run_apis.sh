#!/bin/bash

exec python IndustrialAPIs/app.py
exec python IndustrialAPIs/run-service.py
exec python orchestrator.py