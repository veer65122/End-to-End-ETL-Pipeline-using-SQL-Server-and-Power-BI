---handling foriengn character
select * from netflix_raw
where show_id='s5975'
ALTER TABLE netflix_raw
ALTER COLUMN show_id VARCHAR(20) NOT NULL

ALTER TABLE netflix_raw
ADD CONSTRAINT PK_netflix_raw PRIMARY KEY (show_id)

---remove duplicates
SELECT *
FROM netflix_raw
WHERE show_id = 's1'
select show_id,count(*) from netflix_raw
group by show_id having count(*)>1

select * from netflix_raw where upper(title) in 
(select upper(title) from netflix_raw group by upper(title)
having count(*)>1)
order by title
	
with cte as (
select * ,ROW_NUMBER() over(partition by upper(title)  order by 
case when director is not null then 0 else 1 end, show_id) as rn
from netflix_raw) delete  from cte where rn>1

---creating new table for column with multiple values

select director from netflix_raw

select show_id,trim(value)as director 
into netflix_director
from netflix_raw
cross apply string_split(director,',')

select* from netflix_director

select show_id,trim(value)as country
into netflix_country
from netflix_raw
cross apply string_split(country,',')

select* from netflix_country

select show_id,trim(value)as cast
into netflix_cast
from netflix_raw
cross apply string_split(cast,',')

select* from netflix_cast

select show_id,trim(value)as listed_in
into netflix_listed_in
from netflix_raw
cross apply string_split(listed_in,',')

select* from netflix_listed_in

---popluate missing values 
insert into netflix_country
select show_id,i.country from netflix_raw r
inner join(
select director , country from netflix_country c 
inner join netflix_director d 
on c.show_id=d.show_id
group by director, country) i
on r.director=i.director 
where  r.country is null

select * from netflix_raw where duration is null

UPDATE netflix_raw
SET duration = rating,
    rating = NULL
WHERE rating not IN (
    'TV-Y','TV-Y7','TV-G','TV-PG','TV-14','TV-MA',
    'G','PG','PG-13','R','NC-17','NR','UR'
)
select * from netflix_raw where rating is null

UPDATE netflix_raw
SET rating = duration,
    duration = NULL
WHERE duration  IN (
    'TV-Y7-FV'
)

select * from netflix_raw where rating is null

UPDATE netflix_raw
SET
    rating = ISNULL(rating, 'Not Available'),
    duration = ISNULL(duration, 'Not Available'),
    date_added = ISNULL(date_added, 'Not Available')


---drop columns with multiple values

alter table netflix_raw
drop column director, listed_in, cast, country;




    