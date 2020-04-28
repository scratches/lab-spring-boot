#!/bin/bash

if ! [ -d ~/.sdkman ]; then
    curl get.sdkman.io | bash
    source "/home/eduk8s/.sdkman/bin/sdkman-init.sh"
fi

sdk install java 11.0.7-zulu
