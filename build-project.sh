#!/bin/bash


go get -u github.com/a-hilaly/medaires

cp $GOPATH/bin/medaires $HOME/bin

medaires
