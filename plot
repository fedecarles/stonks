#!/bin/bash

function usage(){
    echo "Usage: $0 [ -t TICKER ] [ -p PLOT ]
    TICKER: GOOG, AAPL, VOO, etc. (as in yahoo finance)
    PLOT: candlestick, volume" 1>&2
}

while getopts ':t:p:x:' flag; do
    case "${flag}" in
        t) 
          TICKER=$OPTARG
          ;;
        p) 
          TYPE=$OPTARG
          ;;
        x) 
          TERM=$OPTARG
          ;;
        *)
          usage
          exit 1
          ;;
    esac
done

if [ $OPTIND -eq 1 ]; then
    gnuplot -e "filename='watchlist/$1.csv'" -c candlestick.gnuplot $TICKER
else
    gnuplot -e "filename='watchlist/$TICKER.csv'" -c $TYPE.gnuplot $TICKER $TERM
fi
