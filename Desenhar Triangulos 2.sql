declare @cont int
set @cont = 0
while @cont < 20
begin 
	set @cont = @cont +1
    select REPLICATE('* ', @cont)
    
END ;






