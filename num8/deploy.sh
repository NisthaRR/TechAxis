#!/bin/bash
echo "Pulling latest code..."
git pull origin master
echo "Installing dependencies..."
npm install
echo "Restarting app..."
pm2 restart app || pm2 start index.js --name app
echo "Done!"