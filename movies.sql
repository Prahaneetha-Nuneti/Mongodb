create database movies;
use movies;

create table movie(movie_id int,movie_name text,artist1 text,artist2 text);
insert into movie(movie_id,movie_name,artist1,artist2)values(1,"robo2","rajini","aishwarya"),(2,"baahubali","prabhas","anushka"),(3,"avengers","chrisevans","robert");
select * from movie;

create table user_reviews(user_id int,movie_id int,rating float);
insert into user_reviews(user_id,movie_id,rating) values(1,1,9),(1,2,8.5),(1,3,7.5),(2,1,8),(2,2,7),(2,3,6),(3,1,9.2),(3,2,8.5),(3,3,9);

create table media(id int,media1 text,media2 text);

List media for a particular film.
select movie.movie_name,media1,media2 from media join movie on media.id=movie.movie_id where movie.movie_name="robo2";

list all media and reviews of a particular film
select movie.movie_name,user_reviews.rating from user_reviews join movie on movie.movie_id=user_reviews.movie_id where user_id=2;

create table role(artist text,role1 text ,role2 text);
insert into role(artist,role1,role2) values("rajini","chitti","vasikaran"),("aishwarya","sana",NULL),("prabhas","amarendra_bahubali","mahendra_bahubali"),("anushka","devasena",NULL),("chrisevans","captain_america",NULL),("robert","ironman",NULL);

List roles performed by particular arist
select artist,role1,role2 from role where artist="robert";
create table skill(artist text,skill1 text ,skill2 text);
insert into skill(artist,skill1,skill2) values("rajini","acting","dancing"),("aishwarya","acting","dancing"),("prabhas","acting","singing"),("anushka","costume_designer","singing"),("chrisevans","comedian","dancing"),("robert","dancing","singing");

list skills of a particular artist
select artist,skill1,skill2 from skill where artist="chrisevans";

list media and reviews of a particular film
select media.media1,media.media2,user_reviews.rating from media join user_reviews on media.id=user_reviews.movie_id where media.id=(select movie_id from movie where movie_name="baahubali");

list all cast along with roles and artist of particular film
select movie.movie_name,role.artist,role1,role2  from role join movie on (movie.artist1=role.artist) or (movie.artist2=role.artist) where movie_name="baahubali";
 

 