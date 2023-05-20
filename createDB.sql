drop schema public cascade;
create schema public;
grant all on schema public to postgres;
grant all on schema public to public;

create table tb_user(
    id serial primary key,
    password text not null,
    name text not null,
    age double precision,
    sex text,
    hobby text[] not null default '{}',
    "text" text,
    avatar text
);

create table tb_type(
    id serial primary key,
    name text not null
);

insert into tb_type values (0, '其他');

create table tb_commodity(
    id serial primary key,
    type int not null references tb_type default 0,
    name text not null,
    price int8,
    status text,
    inventory int4,
    describe text,
    picture text
);

insert into tb_user(name, password, age, sex, hobby, text) VALUES ('明日香', '0',18, '女', '{吃饭, 睡觉, 打真嗣}', '?');

insert into tb_type(name) VALUES ('女装'),('内衣'),('奢品'),
                                 ('女鞋'),('男鞋'),('箱包'),
                                 ('美妆'),('饰品'),('洗护'),
                                 ('男装'),('运动'),('百货'),
                                 ('手机'),('数码'),('礼品'),
                                 ('家装'),('电器'),('车品'),
                                 ('食品'),('生鲜'),('母婴'),
                                 ('医药'),('保健'),('进口');


INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (11, 4, '乐福鞋女小众设计感2023春秋新款软皮小皮鞋舒适单鞋上班族一脚蹬', 68, '已上架', 2222, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/2253306056/O1CN01nBAJwL1ubhNs7Amj0_!!2253306056.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (12, 4, 'Jimmy Choo/周仰杰蕾丝网纱高跟鞋水钻水晶尖头', 2680, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2214968076982/O1CN01U49KW521RoA6gvva6_!!2214968076982.jpg_360x360q90.jpg');

