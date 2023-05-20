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


INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (6, 1, '小耳出品【假日旅行】全棉高密粗斜纹牛仔外套春季新款女短款休闲', 169, '已上架', 34, null, 'https://gw.alicdn.com/bao/upload/O1CN01F1ThqL1xAcot1c7BZ_!!6000000006403-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (7, 1, '鹿向南《珍妮弗日记》浅蓝色牛仔短外套女2023新款春季设计感小众', 168, '已上架', 900, null, 'https://gw.alicdn.com/bao/upload/O1CN01EVUeAI1aGp13ihb7z_!!6000000003303-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (8, 1, 'Les Fortes/23SS 原创复古水洗牛仔百褶蛋糕裙抹胸收腰蓬蓬连衣裙', 319, '已上架', 700, null, 'https://gw.alicdn.com/bao/upload/O1CN01mV8Jzc273QlIUaNJ1_!!6000000007741-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (9, 1, 'AS原创优雅教科书 100%精梳棉 重工立体缩褶收腰大A摆吊带连衣裙', 709, '已上架', 100, null, 'https://gw.alicdn.com/bao/upload/O1CN013aUv541hduIXXuLTa_!!6000000004301-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (10, 1, 'yesroom千金风裙子女小众设计感杏色木耳边泡泡袖短袖连衣裙女', 155, '已上架', 1000, null, 'https://gw.alicdn.com/bao/upload/O1CN01JobfVf1ZXTo2G07rF_!!6000000003204-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (12, 3, 'ANFEIXITE 原创设计AKOU康康包单肩包 高端定制女包 芝麻色小牛皮', 5338, '已上架', 100, null, 'https://img.alicdn.com/imgextra/i1/3199614975/O1CN01T3Tjt81mcbCmtkcnD_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (13, 3, '【三折即刻拍】95新GUCCI 古驰 帆布配皮女士手提包专柜', 2280, '已上架', 99, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/O1CN01XC6BEy1lT9TCBjLSd_!!0-paimai.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (14, 5, '安踏毒刺4代丨跑步鞋男2023夏季减震运动鞋网面透气', 399, '已上架', 1000, null, 'https://img.alicdn.com/imgextra/i1/16049769/O1CN01Nq5HsT2M2G0PmkTkA_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (15, 5, 'Nike耐克夏季男鞋AIR ZOOM PEGASUS透气舒适运动鞋跑步鞋DV3853', 609, '已上架', 999, null, 'https://img.alicdn.com/imgextra/i2/10160449/O1CN012eZzqm1FBgfuIxWym_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (16, 6, 'CeivlmKlain全铝镁合金拉杆箱万向轮行李箱男女密码登机旅行箱子', 308, '已上架', 1000, null, 'https://img.alicdn.com/imgextrahttps://img.alicdn.com/imgextra/i3/3885923289/O1CN01HVZqHL1aAPMz6ZlXr_!!3885923289-0-alimamacc.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (17, 6, '520情人节生日礼物送男友老公背包男士双肩包旅行电脑大学生书包', 199, '已上架', 1000, null, 'https://img.alicdn.com/imgextra/i3/127650663/O1CN01iyIiI61GlhQrFBlk4_!!0-saturn_solar.jpg_360x360q90.jpg');


INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (11, 4, '乐福鞋女小众设计感2023春秋新款软皮小皮鞋舒适单鞋上班族一脚蹬', 68, '已上架', 2222, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/2253306056/O1CN01nBAJwL1ubhNs7Amj0_!!2253306056.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (12, 4, 'Jimmy Choo/周仰杰蕾丝网纱高跟鞋水钻水晶尖头', 2680, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2214968076982/O1CN01U49KW521RoA6gvva6_!!2214968076982.jpg_360x360q90.jpg');

INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (1, 24, 'Maxim黄麦馨麦蒂卡咖啡三合一摩卡速溶咖啡100条盒装', 60, '已上架', 2222, null, 'https://img.alicdn.com/imgextra/i2/4124118515/O1CN01MWH4jq2ClvKtyaSR8_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (2, 24, '俄罗斯网红黑巧克力纯可可脂每日黑巧苦巧原装', 22, '已上架', 333, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/96176933/O1CN017YWovY215Mgc8XOsw_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (3, 23, '康富来牌 洋参含片12片 花旗参西洋参含片 ', 12, '已上架', 222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i7/TB1Pk8Aa7yWBuNjy0FpHSCssXXa_114217.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (4, 23, '北京同仁堂葡萄籽软胶囊花青素抗氧化内服', 39, '已上架', 222, null, 'https://picasso.alicdn.com/imgextra/O1CNA198sZ7v29djOiNNhQi_!!3368758091-0-psf.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (5, 22, '云南白药气雾剂85g+30喷剂消肿喷雾跌打损伤肌肉拉伤扭伤酸痛活血', 49, '已上架', 44, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2200728903172/O1CN01R1Q24Q1ZIpA4KHMoq_!!2200728903172-0-tm_health.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (6, 22, '京都念慈菴 蜜炼川贝枇杷膏150ml止咳糖浆化痰感冒京都念慈庵港版', 19, '已上架', 22, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2209706973106/O1CN01TNcfLA1Yob08CzO2G_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (7, 21, '50抽特价婴儿湿巾纸新生手口专用屁宝宝幼儿童家庭实惠量贩大包装', 3, '已上架', 111, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/3937219703/O1CN01y2p2VJ2LY1rkeHWAW_!!3937219703-0-C2M.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (8, 21, '摇摇马小木马 儿童摇马婴儿宝宝两用溜溜车二合一周岁生日礼物女', 38, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2210480326078/O1CN012QX65R1ulm3owzmgA_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (9, 20, '青岛海鲜礼盒海鲜大礼包鲜活冷冻春节年货企业团购福利特产送礼', 488, '已上架', 2222, null, 'https://img.alicdn.com/imgextra/i2/1909300130/O1CN01yrK2jG1CpaHmHDn73_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (10, 20, '圣女果小黄瓜新鲜樱桃小番茄水果青瓜千禧西红柿子生吃自然熟5斤', 15, '已上架', 11, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1756499933/O1CN01tTpAXt2NFMs67OXrK_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (11, 19, '比比赞乳酸菌小口袋面包整箱蛋糕夹心小零食健康早餐休闲', 6, '已上架', 222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2081314055/O1CN01VtXFBU1fpEriBJPeq_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (12, 19, '五黑桑葚紫米饼早餐整箱粗粮减饱腹代餐0蔗糖全麦欧包休闲零食', 5, '已上架', 22, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/3937219703/O1CN01SAdnXR2LY1rPJBhRK_!!3937219703-0-C2M.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (13, 18, '香百年车载香水座男士', 62, '已上架', 2222, null, 'https://gtms01.alicdn.com/bao/uploaded/i1/http://img.alicdn.com/bao/upload/TB1xXPQnVkoBKNjSZFkSuv4tFXa.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (14, 18, '冬季加厚保暖汽车坐垫', 318, '已上架', 111, null, 'https://gtms01.alicdn.com/bao/uploaded/i1/TB1Ak94ekvoK1RjSZFwSuwiCFXa.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (15, 17, '新品上市石头自清洁扫地机器人 P10系列全自动家用扫拖吸一体机', 3299, '已上架', 222, null, 'https://img.alicdn.com/imgextra/i2/126691397/O1CN01uUlDiz1MBs929wBTz_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (16, 17, 'SUPOR/苏泊尔 SW-08C06 电动自动上水电水壶 煮茶器电茶炉', 249, '已上架', 333, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2208293813827/O1CN01N6tdX21e8oX6EVRPH_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (17, 16, '上海装修公司全包装修设计整装旧二手出租房翻新装潢', 1000, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2209954784108/O1CN01LlunW11gDVo629kxS_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (id, type, name, price, status, inventory, describe, picture) VALUES (18, 16, '现代简约风极简卧室床头灯设计师白色小球形柔光防眩护眼吊线壁灯', 168, '已上架', 344, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2212696789850/O1CN01pMl8Xk2MdM4SI1Nru_!!0-item_pic.jpg_360x360q90.jpg');
