#!/bin/bash
ping -c1 pihole.hippi.xyz > /dev/null
if [ $? -eq 0 ]
  then 
    echo ON
    exit 0
  else
    echo OFF
fi
