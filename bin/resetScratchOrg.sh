#!/bin/bash

sfdx force:org:delete -p -u $1
sfdx force:org:create -f config/project-scratch-def.json -a $1 -s -v steampunk -d 2 

sfdx shane:github:src:install -c -g apex-enterprise-patterns -r fflib-apex-mocks -p sfdx-source/apex-mocks
sfdx shane:github:src:install -c -g apex-enterprise-patterns -r fflib-apex-common -p sfdx-source/apex-common
sfdx shane:github:src:install -c -g apex-enterprise-patterns -r force-di -p force-di
sfdx shane:github:src:install -c -g apex-enterprise-patterns -r at4dx -p sfdx-source/core

sfdx force:source:push -f 