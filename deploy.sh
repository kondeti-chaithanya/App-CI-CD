#!/bin/bash

APP_DIR="./myapp-deploy"

echo "=== Simulated Deployment (Windows) ==="

echo "[1] Simulating service stop..."
# no systemctl on Windows

echo "[2] Cleaning old files..."
rm -rf $APP_DIR
mkdir -p $APP_DIR

echo "[3] Copying build..."
cp -r build/* $APP_DIR/

echo "[4] Simulating service start..."
# no systemctl on Windows

echo "=== Deployment Completed Successfully ==="
