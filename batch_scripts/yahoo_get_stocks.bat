py %PYTHON_WORK%\scripts\yahoo_get_stocks.py
sqlldr stocks/password@localhost:1521/stocks_pdb parfile=%ORACLE_WORK%\control\stocks.par
rem pause
