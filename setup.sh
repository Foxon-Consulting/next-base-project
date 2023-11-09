#!/bin/bash

# Initialize the repository
git init
git add .
git commit -m "feat!: :tada: cookiecutter scaffold"

pre-commit install

# install dependencies
npm install

# database initialisation
npx prisma init --datasource-provider sqlite
