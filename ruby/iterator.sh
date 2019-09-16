#!/usr/bin/env bash
for (( i = 0; i < 42; i++ )); do
  ./spam_views.rb &
done
