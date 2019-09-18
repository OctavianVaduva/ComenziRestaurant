create schema if not exists Restaurant;
USE Restaurant;

create table if not exists categorie_produs
(
  idCategorie_Produs int not null auto_increment primary key,
  nume_categorie_produs varchar(45) not null
);

insert into Restaurant.categorie_produs (nume_categorie_produs) values
  ('Gustari'),
  ('Ciorbe'),
  ('Salate speciale'),
  ('Peste'),
  ('Gratar'),
  ('Preparate calde'),
  ('Salate'),
  ('Desert'),
  ('Racoritoare'),
  ('Cafea/Ceai'),
  ('Bere'),
  ('Diverse bucatarie');

create table if not exists produse
(
  id_produs int not null auto_increment primary key,
  id_categorie int not null,
  nume_produs varchar(60) not null,
  obs_produs varchar(250) default null,
  pret_unitar DECIMAL(7,2) default 0 not null,
  stoc_level int not null,
  alert_level int default 50 not null,
  constraint id_categorie foreign key (id_categorie) references Restaurant.categorie_produs (idCategorie_Produs)
);

create index id_categorie_idx on Restaurant.produse (id_categorie);

insert into Restaurant.produse (id_categorie, nume_produs, obs_produs, pret_unitar, stoc_level, alert_level) values
  (1, 'Cașcaval pane cu cartofi prăjiți', '', 19.50, 30, 5),
  (1, 'Fasole bătută ca la Buzău (250g)', 'Cu ceapă călită şi usturoi - produs vegetarian', 9.50, 20, 3),
  (1, 'Gustarea bibliotecarului (520g)', 'Frigărui de pui cu bacon, chifteluțe cu susan, bulete de cașcaval, ciuperci umplute cu brânză de burduf, ardei gras', 30.50, 20, 5),
  (1, 'Gustarea francezului (300g)', 'Parfait din ficat de pui, fasole bătută cu ulei de trufe, castraveciori murați', 24.50, 15, 5),
  (1, 'Taifas (400g)', 'Hummus, sos Pesto, pastă de ardei copt, bastonete de legume, ardei iute murat', 27.50, 30, 5),
  (1, 'Gustarea ciobanului (500g)', 'Mămăligă cu brânză, smântână și ou', 23.50, 50, 5),
  (1, 'Gustarea grădinarului (390g)', 'Salată de vinete proaspete, zacuscă tradiţională, fasole bătută, roșii, ceapă, măsline Kalamata, pâine prăjită', 9.50, 30, 5),
  (1, 'Salată de vinete oltenească (280g)', 'Vinete proaspete coapte pe tablă și tocate la mână - produs vegetarian', 9.50, 30, 5),
  (2, 'Borș de cocoș cu tăiței de casă (420g)', 'Servit cu ardei iute', 14.00, 30, 5),
  (2, 'Ciorbă de burtă (430 g)', 'Servită cu ardei iute', 14.50, 30, 5),
  (2, 'Ciorbă de fasole cu afumătură (440 g)', 'Servită cu ceapă', 13.50, 30, 5),
  (2, 'Ciorbă de văcuță (350g)', 'Servită cu ardei iute', 14.50, 30, 5),
  (2, 'Cremă de legume cu crutoane (400g)', '', 12.50, 30, 5),
  (2, 'Cremă de roșii cu crutoane', '', 12.50, 30, 5),
  (3, 'Salată Atena (490g)', 'Castraveţi, roșii, brânză tip Feta, ulei de măsline, ceapă roșie, ardei gras, măsline Kalamata', 27.00, 30, 5),
  (3, 'Salată Genova (240g)', 'Mix de salată, mușchi de vițel pregătit la grătar, mango, roșii cherry, parmezan, muguri de pin, dressing vinaigrette', 38.00, 30, 5),
  (3, 'Salată Lyon (350g)', 'Salată Romaine, piept de pui, ardei gras roșu, ardei gras galben, morcovi, brânză gorgonzola, mere roșii, dressing bluecheese, semințe susan negru', 29.50, 30, 5),
  (3, 'Salată Nisa (345g)', 'Ton, anchois, ou fiert, cartofi nature, fasole verde, mix de salată, dressing vinaigrette', 33.50, 30, 5),
  (3, 'Salată Normandia (220g)', 'Mix de salată, piept de rață afumat, sfeclă roșie, pere, brânză capră, muguri de pin, rodie, dressing vinaigrette, semințe susan negru, ulei măsline extra virgin, baghetă', 30.00, 30, 5),
  (3, 'Salată vegetariană (290g)', 'Avocado, porumb, țelină Apio, năut fiert, roșii cherry, nucă, rodie, morcov, dressing Vinaigrette, mix de salată, semințe de susan negru', 23.50, 30, 5),
  (4, 'Somon la grătar (200g)', 'Cu sos de roșii și usturoi, lămâie', 43.50, 30, 5),
  (4, 'Doradă la grătar (230g)', 'Cu sos de roșii și usturoi, lămâie', 44.50, 30, 5),
  (4, 'Păstrăv la grătar (240g)', 'Cu sos de roșii și usturoi, lămâie', 35.00, 30, 5),
  (4, 'Șalău la cuptor cu legume (235g)', 'Cu baby spanac și ridichi', 36.50, 30, 5),
  (5, 'Platou marele grătar (600g/ 250g/ 100g)', 'Mușchi de vită , pulpă de pui dezosată, 2 mici de Medgidia, frigăruie de porc, cârnați afumați, cartofi copți cu parmezan, castraveți murați, sos barbeque, muștar', 82.00, 30, 5),
  (5, 'Platoul Micilor (640g/ 360g)', '2 mici de Obor, 2 mici de Medgidia, 2 mici de Lehliu Gară, 2 mici de-ai lui Iordache, serviți cu cartofi prăjiți si 2 tipuri de muștar', 49.50, 30, 5),
  (5, 'Friptura lui Pintea Hipsterul (450g/ 360g/ 200g)', 'Friptură de porc servită cu cartofi prăjiţi și varză albă', 44.50, 30, 5),
  (5, 'Coaste de porc marinate la cuptor (500g/ 180g/ 50g)', 'Servite cu cartofi prăjiți și sos Barbeque', 53.50, 30, 5),
  (5, 'Platou de bere (4 persoane) (2400 g)', 'Fleică de porc, ceafă de porc, mici de Medgidia (8 buc), cârnați de porc, aripioare de pui, cartofi prăjiți, mujdei de usturoi cu smântână, muștar', 135.50, 30, 5),
  (5, 'Platou tradițional (1025g)', 'Cârnați de Pleșcoi, micii lui Iordache, frigăruie de berbecuț, pastramă de oaie, brânză de burduf, mămăligă friptă, salată de varză murată', 86.00, 30, 5),
  (5, 'Antricot Uruguay Angus (250g/ 150g/ 25g)', 'Servit cu cartofi copţi cu parmezan și mix de salată', 68.50, 30, 5),
  (5, 'Ceafă de porc la grătar (200g)', 'Servită cu cartofi prăjiți', 31.50, 30, 5),
  (5, 'Frigăruie de oaie cu ceapă (200g/ 300g)', 'Servită cu mămăligă rumenită', 39.00, 30, 5),
  (5, 'Frigăruie de porc cu legume (200g / 180g)', 'Servită cu cartofi prăjiţi', 29.00, 30, 5),
  (5, 'Mușchi de vițel rosé (210g/ 100g/ 25g)', 'Servit cu cartofi copţi cu parmezan și mix de salată', 78.00, 30, 5),
  (5, 'Pulpe de pui aurii la grătar (290g)', 'Servite cu cartofi prăjiţi', 30.50, 30, 5),
  (5, 'Pastramă de oaie (240 g / 300 g / 50 g)', 'Cu mămăligă rumenită și brânză de burduf', 41.50, 30, 5),
  (6, 'Pui la ceaun (700 g / 300 g / 50 g)', 'Cu mămăliguță rumenită și mujdei', 28.50, 30, 5),
  (6, 'Sărmăluțe românești (400g / 300g)', 'Cu mămăliguță și ciușcă de ardei iute', 30.50, 30, 5),
  (6, 'Tocăniță sănătoasă cu mămăligă (300g / 300g)', 'Din legume zemoase și gustoase, servită cu mămăligă - produs vegetarian', 17.50, 30, 5),
  (6, 'Varză a la Cluj (400 g)', 'Varză murată, carne tocată porc-vită, smântână', 24.50, 30, 5),
  (6, 'Mâncarea grăbitului (200g/ 300g/ 200g)', 'Carne la garniță și cârnați, mămăligă și salată de varză murată', 44.50, 30, 5),
  (6, 'Bărcuțe de vinete umplute cu carne (280g)', '', 26.50, 30, 5),
  (6, 'Sărmăluțe românești (400g / 300g)', 'Cu mămăliguță și ciușcă de ardei iute', 29.90, 30, 5),
  (6, 'Șnițel Franz Iosif (220g)', 'Piept de pui sănătos tras în pesmet', 24.00, 30, 5),
  (6, 'Tigaie de duminică (280g)', 'Bucăţi aurii de pui trase la tigaie cu legume proaspete', 26.50, 30, 5),
  (7, 'Mix de salată (50g)', 'Produs vegetarian', 9.50, 30, 5),
  (7, 'Salată de ardei copți (210g)', 'Produs vegetarian', 12.00, 30, 5),
  (7, 'Salată de castraveți murați (200g)', '', 9.00, 30, 5),
  (7, 'Salată de ceapă roșie (210g)', '', 5.50, 30, 5),
  (7, 'Salată de roșii (300g)', '', 9.90, 30, 5),
  (7, 'Salată de roșii și castraveți (230g)', 'Produs vegetarian', 9.90, 30, 5),
  (7, 'Salată de varză albă (200g)', 'Produs vegetarian', 8.90, 30, 5),
  (7, 'Salată de varză murată (200g)', '', 8.90, 30, 5),
  (8, 'Tort de ciocolată și  vișine (220g)', '', 18.00, 30, 5),
  (8, 'Budincă de curmale (260g)', 'Desert din curmale și unt, cu înghețată de vanilie și caramel', 21.00, 30, 5),
  (8, 'Clătite cu dulceaţă de vişine (200g)', '', 13.00, 30, 5),
  (8, 'Clătite cu brânză dulce și stafide (200g)', '', 13.50, 30, 5),
  (8, 'Înghețată facută-n casă (150g)', '', 18.00, 30, 5),
  (8, 'Papanași (400g)', 'Cu smântână și dulceață', 19.50, 30, 5),
  (8, 'Tartă de mere cu bezea (210g)', '', 13.50, 30, 5),
  (8, 'Tort de biscuiți (200g)', '', 16.00, 30, 5),
  (9, 'Apă plată / minerală Borsec (330ml)', '', 8.00, 300, 5),
  (9, 'Apă plată / minerală Borsec (750ml)', '', 11.50, 300, 5),
  (9, 'Apă plată / minerală Bucovina (330ml)', '', 7.50, 300, 5),
  (9, 'Apă plată / minerală Bucovina (750ml)', '', 11.50, 300, 5),
  (9, 'Citronadă miere (500ml)', '', 16.00, 30, 5),
  (9, 'Evervess (250ml)', '', 9.00, 30, 5),
  (9, 'Fresh de grapefruit (330 ml)', '', 18.00, 30, 5),
  (9, 'Fresh de grapefruit (500 ml)', '', 25.50, 30, 5),
  (9, 'Fresh de mere (330ml)', '', 15.50, 30, 5),
  (9, 'Fresh de mere (500ml)', '', 25.00, 30, 5),
  (9, 'Fresh portocale și grapefruit (330 ml)', '', 17.50, 30, 5),
  (9, 'Fresh portocale și grapefruit (500ml)', '', 25.00, 30, 5),
  (9, 'Fresh de portocale (500ml)', '', 24.00, 30, 5),
  (9, 'Lapte dulce (330ml)', '', 6.50, 30, 5),
  (9, 'Limonadă cu cătină (500ml)', '', 18.00, 30, 5),
  (9, 'Limonadă cu sirop de soc (500ml)', '', 15.50, 30, 5),
  (9, 'Pepsi, Mirinda, 7up, Mountain Dew (250ml)', '', 9.00, 30, 5),
  (9, 'Red Bull energizant (250ml)', '', 16.00, 30, 5),
  (10, 'Affogato Coffee', 'Espresso, îngheţată', 12.00, 30, 5),
  (10, 'Amaretto Coffee', 'Espresso, amaretto', 15.50, 30, 5),
  (10, 'Amaretto Frappe', '', 16.50, 30, 5),
  (10, 'Amaretto Frappe', '', 11.50, 30, 5),
  (10, 'Cappuccino', '', 11.90, 30, 5),
  (10, 'Cappuccino fără cofeină', '', 11.90, 30, 5),
  (10, 'Ceai românesc', 'Mușețel, tei, sunătoare, busuioc, mentă, salvie și  liniște de vară (amestec de plante)', 8.20, 30, 5),
  (10, 'Ceai Julius Meinl', 'Darjeeling Monteviot, Earl Grey, Wild Cherry, Chinese Jasmine, Mentă, Mușetel', 8.00, 30, 5),
  (10, 'Ciocolată Caldă Julius Meinl', 'Arome: Moro Ciok și Bianca Bahia', 13.00, 30, 5),
  (10, 'Espresso', '', 9.20, 30, 5),
  (10, 'Espresso dublu', '', 16.00, 30, 5),
  (10, 'Espresso fără cofeină', '', 9.20, 30, 5),
  (10, 'Irish Coffee', '', 17.50, 30, 5),
  (10, 'Sweet Frappé', 'Cafea instant, lapte, frișcă, topping, îngheţată, zahăr', 18.00, 30, 5),
  (11, 'Azuga nepasteurizată (500ml)', '', 16.00, 30, 5),
  (11, 'Cidru Kingswood (400ml)', '', 11.50, 30, 5),
  (11, 'Grolsch (400ml)', '', 11.50, 30, 5),
  (11, 'Grolsch (500ml)', '', 12.00, 30, 5),
  (11, 'Grolsch swing top (450ml)', '', 15.50, 30, 5),
  (11, 'Grolsch Weizen (500ml)', '', 15.50, 30, 5),
  (11, 'Peroni la metru', '', 82.00, 30, 5),
  (11, 'Ursus la metru', '', 66.50, 30, 5),
  (11, 'Metru Ursus Nefiltrată', '', 89.00, 30, 5),
  (11, 'Peroni Nastro Azurro (330ml)', '', 11.50, 30, 5),
  (11, 'Peroni Nastro Azzurro (400ml)', 'draught', 10.50, 30, 5),
  (11, 'Ursus Premium (400ml)', 'draught', 8.50, 30, 5),
  (11, 'Ursus Premium (500ml)', '', 10.00, 30, 5),
  (11, 'Ursus Black (500ml)', '', 11.00, 30, 5),
  (11, 'Ursus Cooler (500ml)', '', 11.50, 30, 5),
  (12, 'Pâine rustică albă (200g)', '', 5.20, 30, 5),
  (12, 'Pâine rustică neagră (200g)', '', 6.00, 30, 5),
  (12, 'Baghetă rustică (150g)', '', 5.00, 30, 5),
  (12, 'Pâine rustică albă (100g)', '', 2.60, 30, 5),
  (12, 'Ardei iute (1 buc)', '', 0.50, 30, 5),
  (12, 'Bacon (50g)', '', 3.80, 30, 5),
  (12, 'Brânză feta (50g)', '', 2.70, 30, 5),
  (12, 'Brânză gorgonzola (50g)', '', 7.00, 30, 5),
  (12, 'Dulceață (50g)', '', 3.20, 30, 5),
  (12, 'Maioneză (50g)', '', 3.00, 30, 5),
  (12, 'Măsline (50g)', '', 2.70, 30, 5),
  (12, 'Mujdei (50g)', '', 2.00, 30, 5),
  (12, 'Smântână (70g)', '', 2.50, 30, 5);


create table if not exists ospatari
(
  id_ospatar int auto_increment primary key,
  nume_ospatar varchar(45) not null,
  prenume_ospatar varchar(45) null
);

insert into Restaurant.ospatari (nume_ospatar, prenume_ospatar) values
  ('Cristina', 'ENE'),
  ('Brad','PITT'),
  ('Kim','KARDASHIAN'),
  ('Miley','CYRUS'),
  ('Taylor','SWIFT'),
  ('Ben','AFFLEK'),
  ('Jennifer','ANISTON'),
  ('Angelina','JOLIE'),
  ('Tom','CRUISE'),
  ('Rihana',''),
  ('Mila','KUNIS'),
  ('Paris','HILTON'),
  ('George', 'CLOONEY'),
  ('Charlize', 'THERON')
;

create table if not exists mese
(
  id_masa int auto_increment primary key,
  numar_masa int not null,
  capacitate_masa int not null
);

insert into Restaurant.mese (numar_masa, capacitate_masa) values
  (1, 4),
  (2, 4),
  (3, 4),
  (4, 4),
  (5, 6),
  (6, 4),
  (7, 4),
  (8, 4),
  (9, 3),
  (10, 4)
;
create index numar_masa_idx on Restaurant.mese (numar_masa);


create table if not exists mese_ospatari
(
  data date not null,
  numar_masa int not null,
  id_ospatar int not null,
  constraint foreign key(numar_masa) references Restaurant.mese (numar_masa),
  constraint foreign key(id_ospatar) references Restaurant.ospatari (id_ospatar)
);

insert into Restaurant.mese_ospatari (data, numar_masa, id_ospatar) values
  ('2019-05-21', 1, 1),
  ('2019-05-21', 2, 1),
  ('2019-05-21', 3, 1),
  ('2019-05-21', 4, 2),
  ('2019-05-21', 5, 2),
  ('2019-05-21', 6, 3),
  ('2019-05-21', 7, 3),
  ('2019-05-21', 8, 3),
  ('2019-05-21', 9, 4),
  ('2019-05-21', 10, 4),
  ('2019-05-22', 1, 5),
  ('2019-05-22', 2, 5),
  ('2019-05-22', 3, 5),
  ('2019-05-22', 4, 6),
  ('2019-05-22', 5, 6),
  ('2019-05-22', 6, 7),
  ('2019-05-22', 7, 7),
  ('2019-05-22', 8, 7),
  ('2019-05-22', 9, 8),
  ('2019-05-22', 10, 8),
  ('2019-05-23', 1, 9),
  ('2019-05-23', 2, 9),
  ('2019-05-23', 3, 9),
  ('2019-05-23', 4, 10),
  ('2019-05-23', 5, 10),
  ('2019-05-23', 6, 11),
  ('2019-05-23', 7, 11),
  ('2019-05-23', 8, 11),
  ('2019-05-23', 9, 12),
  ('2019-05-23', 10, 12)
;

create table if not exists comenzi
(
  id_comanda int not null auto_increment primary key,
  id_masa int not null,
  data_comanda datetime not null,
  pret_total_comanda DECIMAL(7,2) null,
  incasat DECIMAL(7,2) default 0 not null,
  data_incasare datetime not null,
  constraint id_masa foreign key (id_masa) references Restaurant.mese (id_masa)
);
create index id_masa_idx  on Restaurant.comenzi (id_masa);

create table  if not exists comanda_curenta
(
  id_comanda_curenta int not null primary key,
  id_comanda int not null,
  data_comanda datetime not null,
  id_produs int null,
  nr_produse int not null,
  pret_echivalent decimal not null, # TODO se calculeaza, nu este o valoare fixa - poate fi scos din tabel
  make_time_final_min int null, # TODO s-ar putea sa ne creeze probleme - trebuie introduse date in tabelul cu produse
  livrat tinyint default 0 null,# TODO panou/fisier confirmare livrare
  pret_total_comanda decimal not null, # TODO se calculeaza, nu este o valoare fixa - poate fi scos din tabel
  id_masa int not null,
  constraint id_comanda foreign key (id_comanda) references Restaurant.comenzi (id_comanda),
  constraint id_produs foreign key (id_produs) references Restaurant.produse (id_produs)
);
create index id_masa_idx on comanda_curenta (id_masa);
create index id_comanda_idx on comanda_curenta (id_comanda);
create index id_produs_idx on comanda_curenta (id_produs);
