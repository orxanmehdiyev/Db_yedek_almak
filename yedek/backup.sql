-- Tablo Adı: iqtisaditesnifat_bolmes
-- Satır Sayısı: 5

CREATE TABLE `iqtisaditesnifat_bolmes` (
  `iqtisaditesnifat_bolme_id` int(11) NOT NULL AUTO_INCREMENT,
  `iqtisaditesnifat_bolme_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `iqtisaditesnifat_bolme_kod` int(11) NOT NULL,
  `iqtisaditesnifat_bolme_status` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `iqtisaditesnifat_bolme_aciqlama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`iqtisaditesnifat_bolme_id`),
  UNIQUE KEY `iqtisaditesnifat_bolme_id` (`iqtisaditesnifat_bolme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


INSERT INTO `iqtisaditesnifat_bolmes` (`iqtisaditesnifat_bolme_id`,`iqtisaditesnifat_bolme_ad`,`iqtisaditesnifat_bolme_kod`,`iqtisaditesnifat_bolme_status`,`iqtisaditesnifat_bolme_aciqlama`) VALUES 
('42','Əməyin ödənişi','210000','1',''),
('43','Malların (işlərin və xidmətin) satınalınması','220000','1',''),
('44','Təqaütlər və sosial müavinətlər','270000','1',''),
('45','Digər xərçlər','280000','1',''),
('46','Qeyri-maliyyə aktivləri','310000','1','');




-- Tablo Adı: iqtisaditesnifat_kb
-- Satır Sayısı: 15

CREATE TABLE `iqtisaditesnifat_kb` (
  `iqtisaditesnifat_kb_id` int(11) NOT NULL AUTO_INCREMENT,
  `iqtisaditesnifat_bolme_id` int(11) NOT NULL,
  `iqtisaditesnifat_kb_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `iqtisaditesnifat_kb_kod` int(11) NOT NULL,
  `iqtisaditesnifat_kb_status` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `iqtisaditesnifat_kb_aciqlama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`iqtisaditesnifat_kb_id`),
  UNIQUE KEY `iqtisaditesnifat_kb_id` (`iqtisaditesnifat_kb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


INSERT INTO `iqtisaditesnifat_kb` (`iqtisaditesnifat_kb_id`,`iqtisaditesnifat_bolme_id`,`iqtisaditesnifat_kb_ad`,`iqtisaditesnifat_kb_kod`,`iqtisaditesnifat_kb_status`,`iqtisaditesnifat_kb_aciqlama`) VALUES 
('51','42','Əmək haqqı','211000','1',''),
('52','42','Əmək haqqına üstəlik','212000','1',''),
('53','43','İdarənin saxlanılması','221000','1',''),
('54','43','Ezamiyyə xərcləri','222000','1',''),
('55','43','Nəqliyyat xidmətləri haqqının ödənilməsi','223000','1',''),
('56','43','Komunal və kommunikasiya xidmətlərinin ödənilməsi','224000','1',''),
('57','43','İstehlak mallarının və xidmətlərinin alınması','225000','1',''),
('58','43','Sair xidmətlərin haqqının ödənilməsi','226000','1',''),
('59','44','sosial təminat','271000','1',''),
('60','44','Sosial müdafiyyə üzrə müavinətlər','272000','1',''),
('61','44','Dövlət qulluqçularına sosisal muavinətlər','273000','1',''),
('62','44','Digər təqaütlər','274000','1',''),
('63','45','Faizlər üzrə ödənişlər istisna olmaqla mülkiyyətlə bağlı xərc','281000','1',''),
('64','45','Sair müxtəlif xərclər','282000','1',''),
('65','46','Əsas vəsaitlər','311000','1','');




-- Tablo Adı: iqtisaditesnifat_madde
-- Satır Sayısı: 24

CREATE TABLE `iqtisaditesnifat_madde` (
  `iqtisaditesnifat_madde_id` int(11) NOT NULL AUTO_INCREMENT,
  `iqtisaditesnifat_paragraf_id` int(11) NOT NULL,
  `iqtisaditesnifat_madde_ad` varchar(250) NOT NULL,
  `iqtisaditesnifat_madde_kod` int(11) NOT NULL,
  `iqtisaditesnifat_madde_status` enum('0','1') NOT NULL,
  `iqtisaditesnifat_madde_aciqlama` text NOT NULL,
  PRIMARY KEY (`iqtisaditesnifat_madde_id`),
  UNIQUE KEY `iqtisaditesnifat_madde_id` (`iqtisaditesnifat_madde_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


INSERT INTO `iqtisaditesnifat_madde` (`iqtisaditesnifat_madde_id`,`iqtisaditesnifat_paragraf_id`,`iqtisaditesnifat_madde_ad`,`iqtisaditesnifat_madde_kod`,`iqtisaditesnifat_madde_status`,`iqtisaditesnifat_madde_aciqlama`) VALUES 
('1','107','İdarənin digər xərcləri','221310','1',''),
('2','107','Cari təmir','221320','1',''),
('3','119','Ölkə daxili telefon danışıa haqlarının ödənilməsi','224810','1',''),
('4','119','Beynəlxalq telefon danışıq halarının ödənilməsi','224820','1',''),
('5','120','Poçt xidmətinin ödənilməsi','224910','1',''),
('6','120','İnternet xidmətləri haqqının ödənilməsi','224920','1',''),
('7','124','İnventar və avadanlığın alınması','225410','1',''),
('8','125','Geoloji kəşfiyyat haqının ödənilməsi','226110','1',''),
('9','125','Topoqrafiya gedoziya axtarış haqının ödənilməsi','226120','1',''),
('10','128','Hərbi təqaütlər','271140','1',''),
('11','128','Digər təqaütlər','271150','1',''),
('12','129','İstefada olan hərbi qulluqculaar və onların uşaqlarının müavinətləri','272120','1',''),
('13','129','20 Yanvar və qarabağ şəhidlərinin uşaqlarına müavinət','272130','1',''),
('14','129','Qarabaqğ əliləri','272160','1',''),
('15','129','İşsizlərin hazırlanması və ixtisas artirmasi','272190','1',''),
('16','134','Digər müavinət və transferlər','274830','1',''),
('17','137','İnzibati idarə etmə obyektləri ilə bağlı əsaslı təmir','282240','1',''),
('18','137','Yolların əsaslı təmiri','282250','1',''),
('19','137','Bank xərcləri','282300','1',''),
('20','138','Yaşayış binalaı','311110','1',''),
('21','139','Nəqliyyat vasitələri','311210','1',''),
('22','139','Digər maşın və avadanlıqlar','311220','1',''),
('23','140','Kənd təsərüfatı texnikası','311310','1',''),
('24','140','Qeyri maddi aktivləır','311320','1','');




-- Tablo Adı: iqtisaditesnifat_paragraf
-- Satır Sayısı: 43

CREATE TABLE `iqtisaditesnifat_paragraf` (
  `iqtisaditesnifat_paragraf_id` int(11) NOT NULL AUTO_INCREMENT,
  `iqtisaditesnifat_kb_id` int(11) NOT NULL,
  `iqtisaditesnifat_paragraf_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `iqtisaditesnifat_paragraf_kod` int(11) NOT NULL,
  `iqtisaditesnifat_paragraf_status` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `iqtisaditesnifat_paragraf_aciqlama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`iqtisaditesnifat_paragraf_id`),
  UNIQUE KEY `iqtisaditesnifat_paragraf_id` (`iqtisaditesnifat_paragraf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


INSERT INTO `iqtisaditesnifat_paragraf` (`iqtisaditesnifat_paragraf_id`,`iqtisaditesnifat_kb_id`,`iqtisaditesnifat_paragraf_ad`,`iqtisaditesnifat_paragraf_kod`,`iqtisaditesnifat_paragraf_status`,`iqtisaditesnifat_paragraf_aciqlama`) VALUES 
('98','51','Ştatda olan işçilərin əməkhaqqı','211100','1',''),
('99','51','Ştatdankənar işçilərin əməkhaqqı','211200','1',''),
('100','51','Əməyin ödənişi ilə bağlı sair pul ödənişləri','211300','1',''),
('101','51','Əməyin ödənişi ilə bağlı nəzərdə tutulan artım','211400','1',''),
('102','52','DSMF','212100','1',''),
('103','52','Icvari sığorta','212200','1',''),
('104','52','İşsizlikdən sığorta','212400','1',''),
('105','53','Dəftərxana','221100','1',''),
('106','53','Mətbəə xərci','221200','1',''),
('107','53','İdarənin digər xərcləri','221300','1',''),
('108','54','Ölkə daxili ezamiyyə','222100','1',''),
('109','54','Xarici ezamiyyə','222200','1',''),
('110','55','Yanacaq sürgü materialarının alınması','223100','1',''),
('111','55','Digər nəqliyyat xərcləri','223200','1',''),
('112','56','Elektrik enerjisi haqqının ödənilməsi','224100','1',''),
('113','56','Qaz haqqının ödənilməsi','224200','1',''),
('114','56','Su haqqın ın ödənilməsi','224300','1',''),
('115','56','İstilik enerjisi haqının ödənilməsi','224400','1',''),
('116','56','Kanalizasiya xidmət haqqının ödənilməsi','224500','1',''),
('117','56','Digər komunal xidmət haqlarının ödənilməsi','224600','1',''),
('118','56','Komunal və komminikasiya xərcləri ilə bağlı digər xərclər','224700','1',''),
('119','56','Telefon danışıq haqqının ödənilməsi','224800','1',''),
('120','56','Poçt rabitə xidmətləri','224900','1',''),
('121','57','Dərman sarğı ləvazimatları və materillarının alınması','225100','1',''),
('122','57','Yumuşaq inventar,yataq ləvazimatları və xüsusi geyim alinması','225200','1',''),
('123','57','Ərzaq Məhsularınlın alınması','225300','1',''),
('124','57','Digər istehlak mal və materialarının alınması','225400','1',''),
('125','58','Geoloji kəşfiyyat topoqrafiya axtarişı haqqı','226100','1',''),
('126','58','Abadlaşdırma xidmətləri haqqının ödənilməsi','226200','1',''),
('127','58','Elmi tədqiqat xitmətləri haqının ödənilməsi','226300','1',''),
('128','59','Təqaütlər','271100','1',''),
('129','60','Sosial yardım üzrə ödənişlər','272100','1',''),
('130','61','Müavinətlər üzrə ödənişlər','273100','1',''),
('131','62','Aztəminatlı alələrə verilən müavinətlər','274100','1',''),
('132','62','İş qabiliyyətini müvəqqəti itirməyə görə müavinət','274300','1',''),
('133','62','Uşağın doğumu ilə bağlı verilən müavinət','274400','1',''),
('134','62','Digər müavinət və transferər','274800','1',''),
('135','63','İcarə və muzdlu xidmətlər','281400','1',''),
('136','64','Sair xərclər','282100','1',''),
('137','64','Əsaslı xərclər','282200','1',''),
('138','65','Binalar və tikililər','311100','1',''),
('139','65','Maşın və avadanlıqlar','311200','1',''),
('140','65','Digər əsas v\\əsaitlər','311300','1','');




-- Tablo Adı: iqtisaditesnifat_yarimmadde
-- Satır Sayısı: 4

CREATE TABLE `iqtisaditesnifat_yarimmadde` (
  `iqtisaditesnifat_yarimmadde_id` int(11) NOT NULL AUTO_INCREMENT,
  `iqtisaditesnifat_madde_id` int(11) NOT NULL,
  `iqtisaditesnifat_yarimmadde_ad` varchar(250) NOT NULL,
  `iqtisaditesnifat_yarimmadde_kod` int(11) NOT NULL,
  `iqtisaditesnifat_yarimmadde_status` enum('0','1') NOT NULL DEFAULT '0',
  `iqtisaditesnifat_yarimmadde_aciqlama` text NOT NULL,
  PRIMARY KEY (`iqtisaditesnifat_yarimmadde_id`),
  UNIQUE KEY `iqtisaditesnifat_yarimmadde_id` (`iqtisaditesnifat_yarimmadde_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;


INSERT INTO `iqtisaditesnifat_yarimmadde` (`iqtisaditesnifat_yarimmadde_id`,`iqtisaditesnifat_madde_id`,`iqtisaditesnifat_yarimmadde_ad`,`iqtisaditesnifat_yarimmadde_kod`,`iqtisaditesnifat_yarimmadde_status`,`iqtisaditesnifat_yarimmadde_aciqlama`) VALUES 
('77','7','İnventar alınması','225411','1',''),
('78','7','Avadanlığın alınması','225412','1',''),
('79','7','Digər alışlar və xidmətlər','225413','1',''),
('80','20','Qeyri yaşayış binaları','311122','1','');




-- Tablo Adı: kullanici
-- Satır Sayısı: 1

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL AUTO_INCREMENT,
  `kullanici_ad` varchar(50) NOT NULL,
  `kullanici_soyad` varchar(100) NOT NULL,
  `kullanici_ataadi` varchar(50) NOT NULL,
  `kullanici_kimliknomir` int(6) NOT NULL,
  `kullanici_mail` varchar(150) NOT NULL,
  `kullanici_nik` varchar(50) NOT NULL,
  `kullanici_password` varchar(250) NOT NULL,
  `kullanici_telulke` int(11) NOT NULL,
  `kullanici_telalan` int(11) NOT NULL,
  `kullanici_tel` bigint(20) NOT NULL,
  `kullanici_admin` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`kullanici_id`),
  UNIQUE KEY `kullanici_id` (`kullanici_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO `kullanici` (`kullanici_id`,`kullanici_ad`,`kullanici_soyad`,`kullanici_ataadi`,`kullanici_kimliknomir`,`kullanici_mail`,`kullanici_nik`,`kullanici_password`,`kullanici_telulke`,`kullanici_telalan`,`kullanici_tel`,`kullanici_admin`) VALUES 
('1','orxan','Mehdiyev','Hüseyn','0','orxanmehdiyev1987@gmail.com','orxanmehdiyev1987','2ccf4dfd7c9fc8ff00c054f1819b27a9','994','0','994502723383','1');




-- Tablo Adı: menu
-- Satır Sayısı: 0

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_ust` int(11) NOT NULL,
  `menu_ad` varchar(150) NOT NULL,
  `menu_url` varchar(150) NOT NULL,
  `menu_detay` text NOT NULL,
  `menu_durum` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Tablo Adı: smeta
-- Satır Sayısı: 1

CREATE TABLE `smeta` (
  `smeta_id` int(11) NOT NULL AUTO_INCREMENT,
  `smeta_tarix` date NOT NULL,
  `smeta_status` enum('0','1','2','3','4','5','6') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `smeta_testiq` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `vesait` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`smeta_id`),
  UNIQUE KEY `budce_smeta_id` (`smeta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


INSERT INTO `smeta` (`smeta_id`,`smeta_tarix`,`smeta_status`,`smeta_testiq`,`vesait`) VALUES 
('5','2008-05-20','0','','1');




-- Tablo Adı: smeta_detay
-- Satır Sayısı: 91

CREATE TABLE `smeta_detay` (
  `smeta_detay_id` int(11) NOT NULL AUTO_INCREMENT,
  `smeta_id` int(11) NOT NULL,
  `madde_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `madde_kod` int(11) DEFAULT NULL,
  `bome_id` int(11) DEFAULT NULL,
  `bome_ust` int(11) DEFAULT NULL,
  `iqtisaditesnifat_kb_id` int(11) DEFAULT NULL,
  `kb_ustid` int(11) DEFAULT NULL,
  `pargarf_id` int(11) DEFAULT NULL,
  `pargarf_ustid` int(11) DEFAULT NULL,
  `madde_id` int(11) DEFAULT NULL,
  `madde_ust` int(11) DEFAULT NULL,
  `yarimmadde_id` int(11) DEFAULT NULL,
  `yarimmadde_ust` int(11) DEFAULT NULL,
  `cemi` float(9,2) NOT NULL,
  `I_RUB` float(9,2) NOT NULL,
  `II_RUB` float(9,2) NOT NULL,
  `III_RUB` float(9,2) NOT NULL,
  `IV_RUB` float(9,2) NOT NULL,
  PRIMARY KEY (`smeta_detay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


INSERT INTO `smeta_detay` (`smeta_detay_id`,`smeta_id`,`madde_ad`,`madde_kod`,`bome_id`,`bome_ust`,`iqtisaditesnifat_kb_id`,`kb_ustid`,`pargarf_id`,`pargarf_ustid`,`madde_id`,`madde_ust`,`yarimmadde_id`,`yarimmadde_ust`,`cemi`,`I_RUB`,`II_RUB`,`III_RUB`,`IV_RUB`) VALUES 
('1','5','Əməyin ödənişi','210000','42','0','','','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('2','5','Əmək haqqı','211000','','','51','42','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('3','5','Ştatda olan işçilərin əməkhaqqı','211100','','','','','98','51','','','','','0.00','0.00','0.00','0.00','0.00'),
('4','5','Ştatdankənar işçilərin əməkhaqqı','211200','','','','','99','51','','','','','0.00','0.00','0.00','0.00','0.00'),
('5','5','Əməyin ödənişi ilə bağlı sair pul ödənişləri','211300','','','','','100','51','','','','','0.00','0.00','0.00','0.00','0.00'),
('6','5','Əməyin ödənişi ilə bağlı nəzərdə tutulan artım','211400','','','','','101','51','','','','','0.00','0.00','0.00','0.00','0.00'),
('7','5','Əmək haqqına üstəlik','212000','','','52','42','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('8','5','DSMF','212100','','','','','102','52','','','','','0.00','0.00','0.00','0.00','0.00'),
('9','5','Icvari sığorta','212200','','','','','103','52','','','','','0.00','0.00','0.00','0.00','0.00'),
('10','5','İşsizlikdən sığorta','212400','','','','','104','52','','','','','0.00','0.00','0.00','0.00','0.00'),
('11','5','Malların (işlərin və xidmətin) satınalınması','220000','43','0','','','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('12','5','İdarənin saxlanılması','221000','','','53','43','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('13','5','Dəftərxana','221100','','','','','105','53','','','','','0.00','0.00','0.00','0.00','0.00'),
('14','5','Mətbəə xərci','221200','','','','','106','53','','','','','0.00','0.00','0.00','0.00','0.00'),
('15','5','İdarənin digər xərcləri','221300','','','','','107','53','','','','','0.00','0.00','0.00','0.00','0.00'),
('16','5','İdarənin digər xərcləri','221310','','','','','','','1','107','','','0.00','0.00','0.00','0.00','0.00'),
('17','5','Cari təmir','221320','','','','','','','2','107','','','0.00','0.00','0.00','0.00','0.00'),
('18','5','Ezamiyyə xərcləri','222000','','','54','43','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('19','5','Ölkə daxili ezamiyyə','222100','','','','','108','54','','','','','0.00','0.00','0.00','0.00','0.00'),
('20','5','Xarici ezamiyyə','222200','','','','','109','54','','','','','0.00','0.00','0.00','0.00','0.00'),
('21','5','Nəqliyyat xidmətləri haqqının ödənilməsi','223000','','','55','43','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('22','5','Yanacaq sürgü materialarının alınması','223100','','','','','110','55','','','','','0.00','0.00','0.00','0.00','0.00'),
('23','5','Digər nəqliyyat xərcləri','223200','','','','','111','55','','','','','0.00','0.00','0.00','0.00','0.00'),
('24','5','Komunal və kommunikasiya xidmətlərinin ödənilməsi','224000','','','56','43','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('25','5','Elektrik enerjisi haqqının ödənilməsi','224100','','','','','112','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('26','5','Qaz haqqının ödənilməsi','224200','','','','','113','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('27','5','Su haqqın ın ödənilməsi','224300','','','','','114','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('28','5','İstilik enerjisi haqının ödənilməsi','224400','','','','','115','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('29','5','Kanalizasiya xidmət haqqının ödənilməsi','224500','','','','','116','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('30','5','Digər komunal xidmət haqlarının ödənilməsi','224600','','','','','117','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('31','5','Komunal və komminikasiya xərcləri ilə bağlı digər xərclər','224700','','','','','118','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('32','5','Telefon danışıq haqqının ödənilməsi','224800','','','','','119','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('33','5','Ölkə daxili telefon danışıa haqlarının ödənilməsi','224810','','','','','','','3','119','','','0.00','0.00','0.00','0.00','0.00'),
('34','5','Beynəlxalq telefon danışıq halarının ödənilməsi','224820','','','','','','','4','119','','','0.00','0.00','0.00','0.00','0.00'),
('35','5','Poçt rabitə xidmətləri','224900','','','','','120','56','','','','','0.00','0.00','0.00','0.00','0.00'),
('36','5','Poçt xidmətinin ödənilməsi','224910','','','','','','','5','120','','','0.00','0.00','0.00','0.00','0.00'),
('37','5','İnternet xidmətləri haqqının ödənilməsi','224920','','','','','','','6','120','','','0.00','0.00','0.00','0.00','0.00'),
('38','5','İstehlak mallarının və xidmətlərinin alınması','225000','','','57','43','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('39','5','Dərman sarğı ləvazimatları və materillarının alınması','225100','','','','','121','57','','','','','0.00','0.00','0.00','0.00','0.00'),
('40','5','Yumuşaq inventar,yataq ləvazimatları və xüsusi geyim alinması','225200','','','','','122','57','','','','','0.00','0.00','0.00','0.00','0.00'),
('41','5','Ərzaq Məhsularınlın alınması','225300','','','','','123','57','','','','','0.00','0.00','0.00','0.00','0.00'),
('42','5','Digər istehlak mal və materialarının alınması','225400','','','','','124','57','','','','','0.00','0.00','0.00','0.00','0.00'),
('43','5','İnventar və avadanlığın alınması','225410','','','','','','','7','124','','','0.00','0.00','0.00','0.00','0.00'),
('44','5','İnventar alınması','225411','','','','','','','','','77','7','0.00','0.00','0.00','0.00','0.00'),
('45','5','Avadanlığın alınması','225412','','','','','','','','','78','7','0.00','0.00','0.00','0.00','0.00'),
('46','5','Digər alışlar və xidmətlər','225413','','','','','','','','','79','7','0.00','0.00','0.00','0.00','0.00'),
('47','5','Sair xidmətlərin haqqının ödənilməsi','226000','','','58','43','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('48','5','Geoloji kəşfiyyat topoqrafiya axtarişı haqqı','226100','','','','','125','58','','','','','0.00','0.00','0.00','0.00','0.00'),
('49','5','Geoloji kəşfiyyat haqının ödənilməsi','226110','','','','','','','8','125','','','0.00','0.00','0.00','0.00','0.00'),
('50','5','Topoqrafiya gedoziya axtarış haqının ödənilməsi','226120','','','','','','','9','125','','','0.00','0.00','0.00','0.00','0.00'),
('51','5','Abadlaşdırma xidmətləri haqqının ödənilməsi','226200','','','','','126','58','','','','','0.00','0.00','0.00','0.00','0.00'),
('52','5','Elmi tədqiqat xitmətləri haqının ödənilməsi','226300','','','','','127','58','','','','','0.00','0.00','0.00','0.00','0.00'),
('53','5','Təqaütlər və sosial müavinətlər','270000','44','0','','','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('54','5','sosial təminat','271000','','','59','44','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('55','5','Təqaütlər','271100','','','','','128','59','','','','','0.00','0.00','0.00','0.00','0.00'),
('56','5','Hərbi təqaütlər','271140','','','','','','','10','128','','','0.00','0.00','0.00','0.00','0.00'),
('57','5','Digər təqaütlər','271150','','','','','','','11','128','','','0.00','0.00','0.00','0.00','0.00'),
('58','5','Sosial müdafiyyə üzrə müavinətlər','272000','','','60','44','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('59','5','Sosial yardım üzrə ödənişlər','272100','','','','','129','60','','','','','0.00','0.00','0.00','0.00','0.00'),
('60','5','İstefada olan hərbi qulluqculaar və onların uşaqlarının müavinətləri','272120','','','','','','','12','129','','','0.00','0.00','0.00','0.00','0.00'),
('61','5','20 Yanvar və qarabağ şəhidlərinin uşaqlarına müavinət','272130','','','','','','','13','129','','','0.00','0.00','0.00','0.00','0.00'),
('62','5','Qarabaqğ əliləri','272160','','','','','','','14','129','','','0.00','0.00','0.00','0.00','0.00'),
('63','5','İşsizlərin hazırlanması və ixtisas artirmasi','272190','','','','','','','15','129','','','0.00','0.00','0.00','0.00','0.00'),
('64','5','Dövlət qulluqçularına sosisal muavinətlər','273000','','','61','44','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('65','5','Müavinətlər üzrə ödənişlər','273100','','','','','130','61','','','','','0.00','0.00','0.00','0.00','0.00'),
('66','5','Digər təqaütlər','274000','','','62','44','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('67','5','Aztəminatlı alələrə verilən müavinətlər','274100','','','','','131','62','','','','','0.00','0.00','0.00','0.00','0.00'),
('68','5','İş qabiliyyətini müvəqqəti itirməyə görə müavinət','274300','','','','','132','62','','','','','0.00','0.00','0.00','0.00','0.00'),
('69','5','Uşağın doğumu ilə bağlı verilən müavinət','274400','','','','','133','62','','','','','0.00','0.00','0.00','0.00','0.00'),
('70','5','Digər müavinət və transferər','274800','','','','','134','62','','','','','0.00','0.00','0.00','0.00','0.00'),
('71','5','Digər müavinət və transferlər','274830','','','','','','','16','134','','','0.00','0.00','0.00','0.00','0.00'),
('72','5','Digər xərçlər','280000','45','0','','','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('73','5','Faizlər üzrə ödənişlər istisna olmaqla mülkiyyətlə bağlı xərc','281000','','','63','45','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('74','5','İcarə və muzdlu xidmətlər','281400','','','','','135','63','','','','','0.00','0.00','0.00','0.00','0.00'),
('75','5','Sair müxtəlif xərclər','282000','','','64','45','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('76','5','Sair xərclər','282100','','','','','136','64','','','','','0.00','0.00','0.00','0.00','0.00'),
('77','5','Əsaslı xərclər','282200','','','','','137','64','','','','','0.00','0.00','0.00','0.00','0.00'),
('78','5','İnzibati idarə etmə obyektləri ilə bağlı əsaslı təmir','282240','','','','','','','17','137','','','0.00','0.00','0.00','0.00','0.00'),
('79','5','Yolların əsaslı təmiri','282250','','','','','','','18','137','','','0.00','0.00','0.00','0.00','0.00'),
('80','5','Bank xərcləri','282300','','','','','','','19','137','','','0.00','0.00','0.00','0.00','0.00'),
('81','5','Qeyri-maliyyə aktivləri','310000','46','0','','','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('82','5','Əsas vəsaitlər','311000','','','65','46','','','','','','','0.00','0.00','0.00','0.00','0.00'),
('83','5','Binalar və tikililər','311100','','','','','138','65','','','','','0.00','0.00','0.00','0.00','0.00'),
('84','5','Yaşayış binalaı','311110','','','','','','','20','138','','','0.00','0.00','0.00','0.00','0.00'),
('85','5','Qeyri yaşayış binaları','311122','','','','','','','','','80','20','0.00','0.00','0.00','0.00','0.00'),
('86','5','Maşın və avadanlıqlar','311200','','','','','139','65','','','','','0.00','0.00','0.00','0.00','0.00'),
('87','5','Nəqliyyat vasitələri','311210','','','','','','','21','139','','','0.00','0.00','0.00','0.00','0.00'),
('88','5','Digər maşın və avadanlıqlar','311220','','','','','','','22','139','','','0.00','0.00','0.00','0.00','0.00'),
('89','5','Digər əsas v\\əsaitlər','311300','','','','','140','65','','','','','0.00','0.00','0.00','0.00','0.00'),
('90','5','Kənd təsərüfatı texnikası','311310','','','','','','','23','140','','','0.00','0.00','0.00','0.00','0.00'),
('91','5','Qeyri maddi aktivləır','311320','','','','','','','24','140','','','0.00','0.00','0.00','0.00','0.00');




