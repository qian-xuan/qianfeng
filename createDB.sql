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


insert into tb_type(name) VALUES ('女装'),('内衣'),('奢品'),
                                 ('女鞋'),('男鞋'),('箱包'),
                                 ('美妆'),('饰品'),('洗护'),
                                 ('男装'),('运动'),('百货'),
                                 ('手机'),('数码'),('礼品'),
                                 ('家装'),('电器'),('车品'),
                                 ('食品'),('生鲜'),('母婴'),
                                 ('医药'),('保健'),('进口');

INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (1, '小耳出品【假日旅行】全棉高密粗斜纹牛仔外套春季新款女短款休闲', 16900, '已上架', 34, null, 'https://gw.alicdn.com/bao/upload/O1CN01F1ThqL1xAcot1c7BZ_!!6000000006403-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (1, 'Les Fortes/23SS 原创复古水洗牛仔百褶蛋糕裙抹胸收腰蓬蓬连衣裙', 31900, '已上架', 700, null, 'https://gw.alicdn.com/bao/upload/O1CN01mV8Jzc273QlIUaNJ1_!!6000000007741-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (1, 'AS原创优雅教科书 100%精梳棉 重工立体缩褶收腰大A摆吊带连衣裙', 70900, '已上架', 100, null, 'https://gw.alicdn.com/bao/upload/O1CN013aUv541hduIXXuLTa_!!6000000004301-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (1, '从一时刻 白色吊带连衣裙2023女新款a字法式收腰小众设计长裙子', 29900, '已上架', 100, null, '//gw.alicdn.com/bao/upload/O1CN01qRUxKG1KzfxUK1liN_!!6000000001235-0-yinhe.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (1, 'yesroom千金风裙子女小众设计感杏色木耳边泡泡袖短袖连衣裙女', 15500, '已上架', 1000, null, 'https://gw.alicdn.com/bao/upload/O1CN01JobfVf1ZXTo2G07rF_!!6000000003204-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (1, '鹿向南《珍妮弗日记》浅蓝色牛仔短外套女2023新款春季设计感小众', 16800, '已上架', 900, null, 'https://gw.alicdn.com/bao/upload/O1CN01EVUeAI1aGp13ihb7z_!!6000000003303-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (2, '[2/4件]三枪男士背心新疆纯棉跨栏运动健身打底夏季汗衫全棉T恤男', 4700, '已上架', 1000, null, 'https://img.alicdn.com/imgextra/i3/19810817/O1CN01muddlQ1HuEQRjsVKr_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (3, 'ANFEIXITE 原创设计AKOU康康包单肩包 高端定制女包 芝麻色小牛皮', 533800, '已上架', 100, null, 'https://img.alicdn.com/imgextra/i1/3199614975/O1CN01T3Tjt81mcbCmtkcnD_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (3, '【三折即刻拍】95新GUCCI 古驰 帆布配皮女士手提包专柜', 228000, '已上架', 99, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/O1CN01XC6BEy1lT9TCBjLSd_!!0-paimai.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (3, 'GUCCI古驰女包Dionysus系列包包女士酒神包单肩斜挎包链条 酒神迷你16.5*4*10', 639900, '已上架', 99, null, '//img12.360buyimg.com/n7/jfs/t1/166216/33/32990/152462/6467c423Fb53f5d72/45909084273b2ea3.jpg' );
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (4, 'CHARLES&KEITH23春季新品CK1-70900437宝石链尖头穆勒鞋女鞋 Silver银色 37', 36000, '已上架', 1000, null, '//m.360buyimg.com/mobilecms/s1524x1524_jfs/t1/138896/6/30648/37794/6441f440F2e4ea02d/89365e9cd89c26fa.jpg!q70.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (4, '高跟凉鞋女细跟一字带水钻蝴蝶结仙女风2023年新款夏季欧美高跟鞋', 13200, '已上架', 100, null, 'https://img.alicdn.com/imgextra/i3/2606850227/O1CN01NkOHA61DY0a89EQzO_!!2606850227.gif');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (4, '乐福鞋女小众设计感2023春秋新款软皮小皮鞋舒适单鞋上班族一脚蹬', 6800, '已上架', 2222, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/2253306056/O1CN01nBAJwL1ubhNs7Amj0_!!2253306056.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (4, 'Jimmy Choo/周仰杰蕾丝网纱高跟鞋水钻水晶尖头', 26800, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2214968076982/O1CN01U49KW521RoA6gvva6_!!2214968076982.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (5, 'Nike耐克夏季男鞋AIR ZOOM PEGASUS透气舒适运动鞋跑步鞋DV3853', 609, '已上架', 999, null, 'https://img.alicdn.com/imgextra/i2/10160449/O1CN012eZzqm1FBgfuIxWym_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (5, '安踏毒刺4代丨跑步鞋男2023夏季减震运动鞋网面透气', 39900, '已上架', 1000, null, 'https://img.alicdn.com/imgextra/i1/16049769/O1CN01Nq5HsT2M2G0PmkTkA_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (5, '英伦风男士商务正装皮鞋真皮方头牛津鞋手工结婚新郎鞋三接头男鞋',38800, '已上架', 9999, null, 'https://img.alicdn.com/imgextra/i2/2541511019/O1CN01HrtK9v1JOkPg7wM9j_!!2541511019.jpg_400x400.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (6, '爱华仕短途外出旅行包女大容量出差运动男手提包旅游行李箱收纳袋', 39900, '已上架', 100, null, '//gw.alicdn.com/bao/uploaded/i3/287745076/O1CN01HnLH2e1nMrGmN1e9a_!!287745076.jpg_Q75.jpg' );
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (6, 'CeivlmKlain全铝镁合金拉杆箱万向轮行李箱男女密码登机旅行箱子', 30800, '已上架', 1000, null, 'https://img.alicdn.com/imgextrahttps://img.alicdn.com/imgextra/i3/3885923289/O1CN01HVZqHL1aAPMz6ZlXr_!!3885923289-0-alimamacc.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (6, '520情人节生日礼物送男友老公背包男士双肩包旅行电脑大学生书包', 19900, '已上架', 1000, null, 'https://img.alicdn.com/imgextra/i3/127650663/O1CN01iyIiI61GlhQrFBlk4_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (7, 'gucci古驰口红505哑光酷奇金管208碎花25口红礼盒520套装官方正品', 17800, '已上架', 1000, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/693266907/O1CN01ms4ujC20tSIdzKS5d_!!693266907.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (6, '2023新款多功能可充电行李箱拉杆箱女旅行箱男登机密码箱子皮箱包', 14900, '已上架', 1000, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2201211358806/O1CN019kQC8h2EvCaXqP9co_!!0-item_pic.jpg_460x460q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (7, 'Dior迪奥口红999哑光720丝绒888滋润772显白 复古520高级送礼专属', 19800, '已上架', 1000, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/819023540/O1CN018pre151c1Ms1fm5hY_!!819023540.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (7, '法国兰蒄妮护肤品套装正品官方旗舰店补水保湿化妆品小黑瓶全套女', 6400, '已上架', 100, null, 'https://img.alicdn.com/imgextra/i1/32634688/O1CN019ZKjNI1kV9aMrQ1HT_!!0-saturn_solar.jpg_460x460q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (8, '四叶草项链女18k玫瑰金正品锁骨链玛瑙吊坠2022年新款礼物送女友', 71800, '已上架', 100, null, '//gw.alicdn.com/imgextra/i3/2206843161772/O1CN011iY9ob1Oxceiyln2R_!!0-item_pic.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (8, '法国color works小碎钻U型马蹄扣项链纯银饰女轻奢小众设计高级感', 18800, '已上架', 100, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/67998446/O1CN01bZ5rnM2CGJuTFyl0v_!!67998446.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (8, 'vana18K跳动心白金项链铂金轻奢小众高级感生日520礼物送女友', 188800, '已上架', 1000, null, 'https://picasso.alicdn.com/imgextra/O1CNA1r1OEuV1oPtVn6OBxn_!!3108485218-0-psf.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (10, '罗蒙西服套装男士修身商务正装西装外套兄弟团伴郎服新郎结婚礼服', 29900, '已上架', 100, null, '//gw.alicdn.com/imgextra/i1/3994613842/O1CN01FBjaeA1eFgTSs6TVw_!!0-item_pic.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (9, '阿道夫洗发水护发素沐浴露套装去屑控油乳露洗头膏正品留香男女', 2900, '已上架', 100, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/3937219703/O1CN01jjckdH2LY1rbwtBSB_!!3937219703-0-C2M.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (9, '清扬洗发水露男士去屑止痒控油专用洗头膏正品官方品牌旗舰店官网', 4600, '已上架', 999, null, 'https://picasso.alicdn.com/imgextra/O1CNA1GChHR32AfqrAZfspX_!!2290138231-0-psf.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (9,'欧莱雅发芯绷带洗发水护发素洗前发膜强韧修护套装', 14900, '已上架', 999, null, '//gw.alicdn.com/imgextra/i1/2081948193/O1CN016dcekT2AORoA5xugR_!!2081948193.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (10, 'JEEP美式街头休闲裤男春夏季宽松直筒长裤子男士黑色高街潮流男裤', 17900, '已上架', 700, null, 'https://picasso.alicdn.com/imgextra/O1CNA1rlTTXB2Cf3Ooj71fK_!!2201481688500-0-psf.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (10, '森马集团GENIOLAMODE男生短袖t恤男夏季', 5900, '已上架', 1000, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2213900457790/O1CN01dwCWBU27PsC11Qeoj_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (11, '夏装休闲户外专业健身房速干衣宽松透气跑步瑜伽服', 11800, '已上架', 8000, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2201532297363/O1CN01K7GNnM24GIyLp3qrR_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (11, '佑美健腹轮肘撑式自动回弹卷腹肌轮练瘦肚子健身器材神器',5900, '已上架', 1000, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1067106875/O1CN013L1DHE20enmtMmBBR_!!0-item_pic.jpg_460x460q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (11, '李宁运动发带男止汗头巾头带女生吸汗导汗头戴防汗跑步束发薄款夏', 1200, '已上架', 900, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2208374433876/O1CN01gjqKzr1eVFuABcuAI_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (12, '学生寝室宿舍好物粘毛神器', 370, '已上架', 999, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/1660857504/O1CN01N1CiJF25IsnewfHp9_!!1660857504.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (12, '厨房用品家用大全壁挂垃圾桶生活收纳置物架实用', 1990 ,'已上架', 1000, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/3937219703/O1CN01Vsc9Sn2LY1riZ08lR_!!3937219703-0-C2M.jpg_460x460q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (12, '厨房置物架调料调味料架收纳架刀架神器筷子刀具台面用品家用大全', 1800, '已上架', 100, null, 'https://img.alicdn.com/imgextrahttps://img.alicdn.com/imgextra/i4/2208922128333/O1CN01iPbg0T2BQZFWPy6n7_!!2208922128333-0-alimamacc.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (13, '【优惠500元】HUAWEI/华为Mate 50 直屏超光变XMAGE影像鸿蒙3.0拍照摄影游戏新款智能', 549900, '已上架', 99, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2838892713/O1CN017BcXN91VubMLx9f07_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (13, '[享3年超长质保]Meizu/魅族20新品无界', 339900, '已上架', 100, null, 'https://img.alicdn.com/imgextrahttps://img.alicdn.com/imgextra/i3/2215616105826/O1CN01KRLiFg1suMJtcvH2Q_!!2215616105826-0-alimamacc.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (14, '索尼a7rm3a微单反相机数码高清全画幅蚂蚁摄影a7r3sony A7RM3A', 1867900, '已上架', 100, null, '//gw.alicdn.com/imgextra/i4/2495829718/O1CN01mt17li2LetjwJlb82_!!2495829718.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (14, '品胜100W氮化镓充电器多口PD快充插头适用苹果小米华为iPhone14笔记本充电头手机macbook电脑ipad双口type-c', 17900, '已上架', 100, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/467098491/O1CN01YAEcjn2Cavopufr1N_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (14, '照相机单反相机入门级女生录像', 48900, '已上架', 1000, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2211751888140/O1CN01O05BOv2A0AodULk8k_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (15, '高档商务活页笔记本礼盒套装定制可印logo加厚会议记录本办公手账本子精致礼物公司高端', 9600, '已上架', 999, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2214606443566/O1CN01Bqs4YJ1cDHClk6ONe_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (15, '发大笔财招财创意中式摆件客厅老板办公室装饰品公司乔迁开业', 18000, '已上架', 999, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/808581260/O1CN01jjPghb1LB7dcVna1L_!!0-item_pic.jpg_460x460q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (16, '欧派全屋定制衣柜家装衣帽间家用卧室走入式柜子收纳家具北欧物语',149900, '已上架', 100, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2823405886/O1CN01lTCDzB1tLq2jNGgEr_!!0-item_pic.jpg_460x460q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (16, '上海装修公司全包装修设计整装旧二手出租房翻新装潢', 100000, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2209954784108/O1CN01LlunW11gDVo629kxS_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (16, '现代简约风极简卧室床头灯设计师白色小球形柔光防眩护眼吊线壁灯', 16800, '已上架', 344, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2212696789850/O1CN01pMl8Xk2MdM4SI1Nru_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (17, 'SUPOR/苏泊尔 SW-08C06 电动自动上水电水壶 煮茶器电茶炉', 24900, '已上架', 333, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2208293813827/O1CN01N6tdX21e8oX6EVRPH_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (17, '苏泊尔新款1年-FC29Q电压力锅5L升家用智能双胆锅高压饭煲3-4人6', 26900, '已上架', 1000, null, 'https://gw.alicdn.com/imgextra/O1CN018aavSq227wbnxxFRE_!!2892507074-0-picasso.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (17, '新品上市石头自清洁扫地机器人 P10系列全自动家用扫拖吸一体机', 329900, '已上架', 222, null, 'https://img.alicdn.com/imgextra/i2/126691397/O1CN01uUlDiz1MBs929wBTz_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (18, '冬季加厚保暖汽车坐垫', 31800, '已上架', 111, null, 'https://gtms01.alicdn.com/bao/uploaded/i1/TB1Ak94ekvoK1RjSZFwSuwiCFXa.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (18, '香百年车载香水座男士', 6200, '已上架', 2222, null, 'https://gtms01.alicdn.com/bao/uploaded/i1/http://img.alicdn.com/bao/upload/TB1xXPQnVkoBKNjSZFkSuv4tFXa.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (19, '比比赞乳酸菌小口袋面包整箱蛋糕夹心小零食健康早餐休闲', 600, '已上架', 222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2081314055/O1CN01VtXFBU1fpEriBJPeq_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (19, '五黑桑葚紫米饼早餐整箱粗粮减饱腹代餐0蔗糖全麦欧包休闲零食', 500, '已上架', 22, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/3937219703/O1CN01SAdnXR2LY1rPJBhRK_!!3937219703-0-C2M.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (20, '圣女果小黄瓜新鲜樱桃小番茄水果青瓜千禧西红柿子生吃自然熟5斤', 1500, '已上架', 11, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1756499933/O1CN01tTpAXt2NFMs67OXrK_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (20, '阿彭进口牛肉谷饲黑安格斯厚切西冷牛排官方旗舰店原切新鲜1500g', 32800, '已上架', 2000, null, '//gw.alicdn.com/imgextra/i2/3295866146/O1CN01ilH9OU1vGuuP5iE4q_!!3295866146.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (20, '青岛海鲜礼盒海鲜大礼包鲜活冷冻春节年货企业团购福利特产送礼', 48800, '已上架', 2222, null, 'https://img.alicdn.com/imgextra/i2/1909300130/O1CN01yrK2jG1CpaHmHDn73_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (21, '摇摇马小木马 儿童摇马婴儿宝宝两用溜溜车二合一周岁生日礼物女', 3800, '已上架', 2222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2210480326078/O1CN012QX65R1ulm3owzmgA_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (21, '50抽特价婴儿湿巾纸新生手口专用屁宝宝幼儿童家庭实惠量贩大包装', 300, '已上架', 111, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/3937219703/O1CN01y2p2VJ2LY1rkeHWAW_!!3937219703-0-C2M.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (22, '京都念慈菴 蜜炼川贝枇杷膏150ml止咳糖浆化痰感冒京都念慈庵港版', 1900, '已上架', 22, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2209706973106/O1CN01TNcfLA1Yob08CzO2G_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (22, '快克复方氨酚烷胺胶囊10粒感冒流鼻涕鼻塞退烧药正品官方旗舰店', 1300, '已上架', 100, null, '//gw.alicdn.com/imgextra/i2/2215623951019/O1CN018bwJjJ1JOkQkBN4rZ_!!2215623951019-0-scmitem8000.jpg_Q75.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (22, '云南白药气雾剂85g+30喷剂消肿喷雾跌打损伤肌肉拉伤扭伤酸痛活血', 4900, '已上架', 44, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2200728903172/O1CN01R1Q24Q1ZIpA4KHMoq_!!2200728903172-0-tm_health.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (23, '康富来牌 洋参含片12片 花旗参西洋参含片 ', 1200, '已上架', 222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i7/TB1Pk8Aa7yWBuNjy0FpHSCssXXa_114217.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (23, '北京同仁堂葡萄籽软胶囊花青素抗氧化内服', 3900, '已上架', 222, null, 'https://picasso.alicdn.com/imgextra/O1CNA198sZ7v29djOiNNhQi_!!3368758091-0-psf.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (24, '俄罗斯网红黑巧克力纯可可脂每日黑巧苦巧原装', 2200, '已上架', 333, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/96176933/O1CN017YWovY215Mgc8XOsw_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity (type, name, price, status, inventory, describe, picture) VALUES (24, 'Maxim黄麦馨麦蒂卡咖啡三合一摩卡速溶咖啡100条盒装', 6000, '已上架', 2222, null, 'https://img.alicdn.com/imgextra/i2/4124118515/O1CN01MWH4jq2ClvKtyaSR8_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 1, '【JOEY】浪漫小千金系列早春新款上衣微闪黑色针织外套毛衣开衫女', 25100, '已上架', 66, null, 'https://gw.alicdn.com/bao/upload/O1CN01Gc4Nq21HrU1E0Varj_!!6000000000811-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 1, 'DFAY 梦幻紫晕油画 柔软网纱 露背露肩收腰显瘦挂脖吊带连衣裙 女', 29800, '已上架', 444, null, 'https://gw.alicdn.com/bao/upload/O1CN01sFjgTI1pZnfjpQVj8_!!6000000005375-0-yinhe.jpg_Q75.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '猫人美背内衣女夏U型吊带背心一体式文胸薄款小胸聚拢防走光抹胸', 7900, '已上架', 222, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2207720400795/O1CN01S62SAq1Hk9husOHL3_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '女士小胸聚拢美背塑形薄款夏季收副乳防下垂文胸罩', 5900, '已上架', 111, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/1652553642/O1CN01hXxne91cm5HcCWpbA_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '【柔感】红豆秋衣秋裤男女莫代尔抗静电情侣打底保暖套装薄款', 13900, '已上架', 1111, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/387911053/O1CN01nZxrEp1JeJpWnotW5_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '浪莎秋衣秋裤套装男士莫代尔薄款保暖内衣本命年红色女打底棉毛衫', 6900, '已上架', 2222, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/1667291844/O1CN01Dmhb871PUbB6aQJqS_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '芬腾秋衣秋裤男士套装莫代尔棉薄款线衣线裤打底秋冬季保暖内衣', 5900, '已上架', 223, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2209648332323/O1CN01KN3ZOu1T1yrCanJTL_!!2209648332323.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '内衣女聚拢小胸防滑抹胸无痕裹胸美背前扣隐形文胸罩夏季薄', 3500, '已上架', 222, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2048258955/O1CN01Xrd0jg2G1RapZxY9P_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 2, '夏娃之秀防走光抹胸内衣女薄款夏季无钢圈蕾丝小胸聚拢文胸罩美背', 12700, '已上架', 4444, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/420284856/O1CN01pfYgRA1lk68IDOZsK_!!2-item_pic.png_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 3, '纪诗哲包包女2023夏新款单肩斜挎链条小方包真皮高级感520送女友', 121400, '已上架', 323, null, 'https://img.alicdn.com/imgextra/i3/1597210139/O1CN01sTVOpi1CthnLNTsra_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 3, 'CINVAI&KROSE包包女新款2023女包真皮女士手提包单肩包妈妈斜挎包', 33900, '已上架', 555, null, 'https://img.alicdn.com/imgextra/i2/1116140090/O1CN01Kr1tLP1CXGUJJdd0Q_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 3, 'D家美物新品超美羊脂玉奢华天然鸵鸟皮女包单肩斜跨迷你小号原创', 159800, '已上架', 2222, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/93021736/O1CN01Dv84DL1Oh8HblW8v0_!!93021736.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 3, '95新LV路易威登女士Locky bb老花配皮单肩斜挎手提锁头邮差包', 928888, '已上架', 222, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/O1CN01RhrXjM1HdHhUSmIWI_!!0-paimai.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 3, 'TBW 泰国轻奢鳄鱼皮女包真皮高级质感奢侈单肩斜挎包', 89000, '已上架', 311, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2120352665/O1CN01u57n2V1VYcLwaiNOJ_!!0-item_pic.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 4, '思加图新款仙女鞋尖头凉鞋婚鞋女细高跟鞋', 45800, '已上架', 221, null, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/1731961317/O1CN01bQ3Z0s1LbESUunCf3_!!1731961317.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 4, '蹀愫2023春新水晶蝴蝶结尖头细跟浅口高跟宴会女鞋', 93100, '已上架', 333, null, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/1574853209/O1CN01e2HfFV1ZZlogmijNc_!!1574853209.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 4, '包头半拖鞋女中跟小码拖鞋法式尖头外穿夏季粗跟单鞋小香风穆勒鞋', 19800, '已上架', 2223, null, 'https://img.alicdn.com/imgextra/i2/56999094/O1CN01shLPGA2H36QQL8hWz_!!0-saturn_solar.jpg_360x360q90.jpg');
INSERT INTO public.tb_commodity ( type, name, price, status, inventory, describe, picture) VALUES ( 4, '卓诗尼小皮鞋女厚底玛丽珍2023春季新款交叉绑带单鞋圆头百搭', 16700, '已上架', 111, null, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/467426552/O1CN01zot8H11yGrra6v9DH_!!467426552.jpg_360x360q90.jpg');
