#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Created: Nov, 02, 2022 14:40:15

def main():
  from pandas_datareader.data import get_quote_yahoo
  dollar = get_quote_yahoo('JPY=X')["price"].values[0]
  print(f"USD/JPY={dollar}")

if(__name__ == '__main__'):
  main()
