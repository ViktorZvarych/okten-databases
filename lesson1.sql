use aboryhen;

show tables;

select * from cars;

# знайти всі машини старші за 2000 р.
select * from cars where year < 2000;

# знайти всі машини молодші 2015 р.
select * from cars where year > 2015;

# знайти всі машини 2008, 2009, 2010 років
select * from cars where year >= 2008 and year <= 2010;

# знайти всі машини не з цих років 2008, 2009, 2010
select * from cars where year in (2008, 2009, 2010);

# знайти всі машини де year==price
select * from cars where year = price;

# знайти всі машини bmw старші за 2014 р.
select * from cars where year < 2014 and model = 'bmw';

# знайти всі машини audi молодші 2014 р.
select * from cars where year > 2014 and model = 'audi';

# знайти перші 5 машин
select * from cars limit 5;

# знайти останні 5 машин
select * from cars order by id desc limit 5;

# знайти середнє арифметичне цін машини KIA
select avg(price) as avgPrice, model  from cars where model= 'KIA';

# знайти середнє арифметичне цін для кожної марки машин окремо
select count(*) as modelCount, avg(price) as avgPrice, model  from cars group by model order by modelCount desc;

# підрахувати кількість кожної марки
select count(*) as modelCount, model from cars group by model order by modelCount desc;

# знайти марку машин кількість яких найбільше
select count(*) as modelCount, model from cars group by model order by modelCount desc limit 1;

# знайти марку машини в назві яких друга та передостання буква "a"
select * from cars where model like '_a%a_';

# знайти всі машини назва моделі яких більше за 8 символів
select * from cars where model like '________%';
select * from cars where length(model)>8;


# ***знайти машини ціна котрих більше ніж ціна середнього
#     арифметичного всіх машин
select * from cars where price >(select avg(price) from cars);