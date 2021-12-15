ALTER TABLE Product
	ADD 
		/* Combined the first two constraints into one since P.Category already needed to include that it can also have a NULL value
		   Category can be NULL or it is one of two values 'Perishable' or 'Durable'.     */ 
		CONSTRAINT CHK1 CHECK (  
			(
				NOT(Product.Category IS NULL AND Product.Subcategory IS NULL) 
			) 
		OR
			(
				Product.Category = 'Perishable' 
				OR
				Product.Category = 'Durable'
			)
		)
		-- UPC_CODE is always 32 characters and is allowed to have only alphabets, digits, hyphen
		, CONSTRAINT CHK2 CHECK (
			Product.UPC_CODE = CHAR(32)
			AND
			Product.UPC_CODE NOT LIKE '[^A-Z0-9-]'
		)
		-- dateIntroduced cannot be more than 6 months into the future
		, CONSTRAINT CHK3 CHECK (
		  Product.dateIntroduced <= DATEADD(MM, 6, GETDATE())
		)