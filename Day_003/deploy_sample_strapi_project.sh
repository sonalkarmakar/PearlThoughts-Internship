#/usr/bin/env bash

# Update the system
echo "UPDATING THE SYSTEM..."
sudo dnf update -y
sudo dnf upgrade -y

# Install Node.js as per official AWS Documentation
# https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
echo "INSTALLING NODE.JS AS PER AWS DOCS..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"

# Install and set up Sample Strapi Project
echo "INSTALLING AND SETTING UP SAMPLE STRAPI PROJECT"
echo "PLEASE ENTER THE DETAILS AS PROMPTED BELOW..."
npx create-strapi@latest

# Instructions for running the project
echo "SAMPLE STRAPI PROJECT HAS BEEN CREATED!"
echo "GO INTO PROJECT DIRECTORY AND RUN npm run develop"