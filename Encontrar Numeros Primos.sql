DECLARE @myTableVariable TABLE    (
      Id int NOT NULL
             IDENTITY(1, 1),
      Prime int NULL
    )

declare @cont int = 1
declare @is_prime int
Declare @currentrow Int = 1
Declare @totalrows Int = (Select count(*) from @myTableVariable)

while @cont < 1000
begin 
    set @is_prime = 1
    set @cont = @cont +1
    --select REPLICATE('* ', @cont)
    set @currentrow = 1
    set @totalrows = (Select count(*) from @myTableVariable)
    while @currentrow <= @totalrows and @is_prime = 1
        Begin
        
        --select @cont, (Select Prime from @myTableVariable where id = @currentrow), ( @cont % (Select Prime from @myTableVariable where id = @currentrow))
        
        if ( @cont % (Select Prime from @myTableVariable where id = @currentrow)) = 0
            SET @is_prime = 0
        set @currentrow = @currentrow + 1
        end

        

    --select 'saiu do loop 2'

    if @is_prime = 1
        insert into @myTableVariable([Prime]) values(@cont)


END 

select STRING_AGG(Prime, '&') from @myTableVariable;









