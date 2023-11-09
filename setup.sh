#!/bin/bash

read -p 'Enter user.email for git config: ' email
read -p 'Enter user.name for git config: ' name

git config --global user.email $email
git config --global user.name $name

# Initialize the repository
git init
git add .
git commit -m "feat!: :tada: cookiecutter scaffold"

pre-commit install

# install dependencies
npm install

# database initialization
npx prisma init --datasource-provider sqlite
