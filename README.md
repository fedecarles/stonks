#               /$$                         /$$               
#              | $$                        | $$                
#    /$$$$$$$ /$$$$$$    /$$$$$$  /$$$$$$$ | $$   /$$  /$$$$$$$
#   /$$_____/|_  $$_/   /$$__  $$| $$__  $$| $$  /$$/ /$$_____/
#  |  $$$$$$   | $$    | $$  \ $$| $$  \ $$| $$$$$$/ |  $$$$$$ 
#   \____  $$  | $$ /$$| $$  | $$| $$  | $$| $$_  $$  \____  $$
#   /$$$$$$$/  |  $$$$/|  $$$$$$/| $$  | $$| $$ \  $$ /$$$$$$$/
#  |_______/    \___/   \______/ |__/  |__/|__/  \__/|_______/ 
#                                                              
#                                                              

#### The poor man's financial terminal.

A way to quickly get stock prices from yahoo finance and do some quick plotting
from the terminal.

## Requirements

* awk 5.1+
* gnuplot 5.2+

## Current features

* Get quotes from yahoo finance.
* Basic plotting (candlesticks and volume).

## Usage

The ticker script will fetch the symbols data from yahoo finance for the
specified period. Data is saved in the watchlist folder as a csv file for
each symbol requested.

* ticker [ -t TICKER ] [ -p PERIOD ]
    * TICKER: GOOG, AAPL, VOO, etc. (as in yahoo finance).
    * PERIOD: 1d, 1w, 1m, 1y

The plot scripts will plot the data for the given ticker already saved in the
watchlist folder.

* plot [ -t TICKER ] [ -t TYPE ] [ -x TERMINAL ]
    * TICKER: GOOG, AAPL, VOO, etc. (as in yahoo finance).
    * TYPE: candle, vol
    * TERMINAL: qt, x11, dumb, etc.

## Screenshots
![stonks](images/screen.png)
![stonks](images/screen2.png)

## To- do, some day, maybe...
* [ ] Add line plots.
* [ ] Add basic indicators.
    * [ ] RSI.
    * [ ] MACD.
    * [ ] SMA.
* [ ] Add other APIs.
