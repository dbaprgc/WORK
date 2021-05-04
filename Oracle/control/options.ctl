LOAD DATA APPEND INTO TABLE stocks.options when DT_BOUGHT <> '' FIELDS TERMINATED BY "," 
TRAILING NULLCOLS(
	DT_BOUGHT "to_date(:dt_bought, 'yyyy-mm-dd')", 
	ACCOUNT , 
    	SYMBOL ,
        	TYPE ,
	EXPIRATION "to_date(:expiration, 'yyyy-mm-dd')", 
	STRIKE , 
	SHARE_PRICE , 
	BUY_OPT_PRICE , 
	LAST_OPT_PRICE , 
    CONTRACTS ,
    PREMIUM,
    COMMISSION
)


