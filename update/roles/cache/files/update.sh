#!/bin/bash

vkpurge list > /tmp/list

cat /tmp/list | while read test
  do
   vkpurge rm $test && update-grub
  done

