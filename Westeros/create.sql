create table actor (birthday date, deathday date, popularity float(53) not null, source_id integer not null, id bigint generated by default as identity (start with 1), also_known_as varchar(255), biography varchar(255), name varchar(255), profile_path varchar(255), primary key (id));
create table actor_role (actor_id bigint, id bigint generated by default as identity (start with 1), movie_id bigint, name varchar(255), primary key (id));
create table company (id integer generated by default as identity (start with 1), source_id integer not null, logo_path varchar(255), name varchar(255), origin_country varchar(255), primary key (id));
create table company_movies (movies_id integer not null, production_companies_id bigint not null);
create table country (id integer generated by default as identity (start with 1), name varchar(255), primary key (id));
create table country_movies (production_countries_id integer not null, movies_id bigint not null);
create table genre (id integer generated by default as identity (start with 1), source_id integer not null, name varchar(255), primary key (id));
create table genre_movies (genres_id integer not null, movies_id bigint not null);
create table language (id integer generated by default as identity (start with 1), english_name varchar(255), name varchar(255), primary key (id));
create table language_movies (spoken_languages_id integer not null, movies_id bigint not null);
create table movie (adult boolean not null, budget integer not null, popularity float(53) not null, release_date date, runtime integer not null, vote_average float(53) not null, vote_count integer not null, id bigint generated by default as identity (start with 1), source_id bigint not null, backdrop_path varchar(255), homepage varchar(255), original_language varchar(255), original_title varchar(255), overview varchar(255), poster_path varchar(255), primary key (id));
alter table actor_role add constraint FK2x71qf5w1n93pki686nbhsxqm foreign key (actor_id) references actor;
alter table actor_role add constraint FK7nixnkawckbp6e6d7x0f5pby6 foreign key (movie_id) references movie;
alter table company_movies add constraint FKmmc8rt6ss635b1nrybown4va2 foreign key (production_companies_id) references movie;
alter table company_movies add constraint FKknnnj0j6wcph9jgfn2bcd4ky6 foreign key (movies_id) references company;
alter table country_movies add constraint FKpygrtf1pvsg7g61jprlk308m8 foreign key (movies_id) references movie;
alter table country_movies add constraint FKpxkrflndnuuvgs4n7pj2sqlpx foreign key (production_countries_id) references country;
alter table genre_movies add constraint FKtgatsvi7lb98phh9ft1gogkep foreign key (movies_id) references movie;
alter table genre_movies add constraint FKe8j9am8l355522fj88clwhbt8 foreign key (genres_id) references genre;
alter table language_movies add constraint FK78fnn8j50f8md8o3ajkdp346l foreign key (movies_id) references movie;
alter table language_movies add constraint FKv00xsh77h5m3pcr1b1n29j5a foreign key (spoken_languages_id) references language;
