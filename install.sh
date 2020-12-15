#!/bin/bash
sudo mkdir /octoprint && sudo chmod 644 /octoprint
sudo chmod +x ./octoprint-service && sudo cp ./octoprint-service /octoprint
sudo cp ./dock* /octoprint/*