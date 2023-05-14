drop schema public cascade;
create schema public;
grant all on schema public to postgres;
grant all on schema public to public;

create table tb_user(
    id serial primary key,
    name text not null,
    age double precision not null,
    sex text not null,
    hobby text[] not null default '{}',
    "text" text not null,
    avatar text
);

insert into tb_user(name, age, sex, hobby, text) VALUES ('明日香', 18, '女', '{吃饭, 睡觉, 打真嗣}', '?')