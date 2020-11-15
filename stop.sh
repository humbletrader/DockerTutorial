#!/bin/sh

sudo docker container rm $(sudo docker container ls -aq)
