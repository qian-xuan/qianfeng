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

INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (9, 4, '星星板鞋2023新款春季厚底休闲百搭小白鞋原创小众鞋子女', 84, '已上架', 999, '', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i…1hR5BYgSnVO_!!1065364273.jpg_360x360q90.jpg_.webp');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (4, 4, '2023春秋新款单鞋夏季高跟小香风包头凉鞋', 98, '已上架', 666, '', e'https://g-search3.alicdn.com/img/bao/uploaded/i4/i…2KIAWqfLMK5_!!1950009533.jpg_360x360q90.jpg_.webp
');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (8, 4, '卓诗尼百凉鞋女士2023年夏季新款水钻一字带坡跟厚底网红松糕', 199, '已上架', 2222, '', 'https://img.alicdn.com/imgextra/i4/2067420190/O1CN…5ZT6Qy1_!!0-saturn_solar.jpg_360x360q90.jpg_.webp');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (10, 4, '华伦V家2023夏季新款尖头黑色铆钉', 169, '已上架', 8888, '', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i…zE1gypqs_!!2212668881930.jpg_360x360q90.jpg_.webp');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (11, 4, '女粗跟圆头一字带成人礼法式婚纱公主表演礼服单', 60, '已上架', 22, null, e'https://g-search3.alicdn.com/img/bao/uploaded/i4/i…a5oZ0Spu_!!2208304973892.jpg_360x360q90.jpg_.webp
');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (5, 1, '小耳出品【假日旅行】全棉高密粗斜纹牛仔外套春季新款女短款休闲', 169, '已上架', 34, null, 'https://gw.alicdn.com/bao/upload/O1CN01F1ThqL1xAcot1c7BZ_!!6000000006403-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (6, 1, '鹿向南《珍妮弗日记》浅蓝色牛仔短外套女2023新款春季设计感小众', 168, '已上架', 900, null, 'https://gw.alicdn.com/bao/upload/O1CN01EVUeAI1aGp13ihb7z_!!6000000003303-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (4, 1, 'Les Fortes/23SS 原创复古水洗牛仔百褶蛋糕裙抹胸收腰蓬蓬连衣裙', 319, '已上架', 700, '', 'https://gw.alicdn.com/bao/upload/O1CN01mV8Jzc273QlIUaNJ1_!!6000000007741-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (3, 1, 'AS原创优雅教科书 100%精梳棉 重工立体缩褶收腰大A摆吊带连衣裙', 709, '已上架', 100, '', 'https://gw.alicdn.com/bao/upload/O1CN013aUv541hduIXXuLTa_!!6000000004301-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (2, 1, 'yesroom千金风裙子女小众设计感杏色木耳边泡泡袖短袖连衣裙女', 155, '已上架', 1000, '', 'https://gw.alicdn.com/bao/upload/O1CN01JobfVf1ZXTo2G07rF_!!6000000003204-0-yinhe.jpg_Q75.jpg');


