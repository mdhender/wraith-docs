#!/bin/bash

grep -A 1 '^\[\[a-.*-chart\]\]$' reference.adoc |
  sed -e 's/^\.//' -e 's/\[\[//' -e 's/\]\]//' |
  awk -f table_of_charts.awk | sort

