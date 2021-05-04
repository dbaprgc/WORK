py %PYTHON_WORK%\scripts\yahoo_get_stocks.py
sqlldr stocks/password@localhost:1521/stocks_pdb parfile=%WORK%\control\stocks.par
sqlldr stocks/password@localhost:1521/stocks_pdb parfile=%WORK%\oracle\control\options.par
rem pause
