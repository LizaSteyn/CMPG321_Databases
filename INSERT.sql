INSERT ALL
INTO FIRE_LGA VALUES (
  Event_ID, LGA_Code, Event_Date
SELECT * FROM DUAL;

INSERT ALL
INTO FIRE_EVENT VALUES (
  Event_ID, Event_Name, Event_Lat, Event_Long, Event_AreaSize, Event_LivesLost
SELECT * FROM DUAL;

INSERT ALL
INTO LGA VALUES (1, 'East London', 22, 'Spencer Hastings', '0437059000')
INTO LGA VALUES (2, 'Bloemfontein', 25, 'Lando Norris', '0514058911')
INTO LGA VALUES (3, 'Port Elizabeth', 30, 'Ashleigh Barty', '0415061911')
INTO LGA VALUES (4, 'Pretoria', 50, 'Caeleb Dressel', '0123587095')
INTO LGA VALUES (5, 'Johannesburg', 60, 'Ariarne Titmus', '0860562874')
INTO LGA VALUES (6, 'Cape Town', 72,'"Daniel Ricciardo', '0214001111')
INTO LGA VALUES (7, 'Durban', 32, 'Max Verstappen', '0313245000')
INTO LGA VALUES (8, 'East Rand', 10, 'Rafe Cameron', '0860543000')
INTO LGA VALUES (9, 'Newcastle', 5, 'Alexis Carrington', '0343287600')
INTO LGA VALUES (10, 'Randfontein', 40, 'Sebastian Vettel', '0114110000')
INTO LGA VALUES (11, 'Witbank', 45, 'Charles Le CLerc', '013696911')
INTO LGA VALUES (12, 'Burgersdorp', 12, 'Sergio Perez', '0516531777')
INTO LGA VALUES (13, 'George', 15, 'Belinda Bencic', '0448031300')
INTO LGA VALUES (14, 'Potchefstroom', 53, 'Alexander Zverev', '0182995111')
INTO LGA VALUES (15, 'Modimolle', 47, 'Daniel Medvedev', '0147183300')
INTO LGA VALUES (16, 'Kimberley', 33, 'Emma Raducanu', '0538380911')
INTO LGA VALUES (17, 'Nelspruit', 26, 'Leylah Annie Fernandez', '0137599111')
INTO LGA VALUES (18, 'Springbok', 18, 'Angelique Kerber', '0277128000')
INTO LGA VALUES (19, 'Polokwane', 8, 'Bianca Andreescu', '0152941000')
INTO LGA VALUES (20, 'Rustenburg', 11, 'Simona Halep', '0145904500')
SELECT * FROM DUAL;
              
INSERT ALL
INTO PROPERTY VALUES (1, 1, 1, 1, 'Nelspruit', 'Rockys Drift', 'Curlews Street', 10)
INTO PROPERTY VALUES (2, 2, 2, 2, 'Pretoria', 'Garsfontein', 'Giraffe Avenue', 8)
INTO PROPERTY VALUES (3, 3, 3, 3, 'Port Elizabeth', 'Kensington', 'Crocodile Lane', 23)
INTO PROPERTY VALUES (4, 4, 4, 4, 'Johannesburg', 'Sandtont', 'Dinosaur Street', 2)
INTO PROPERTY VALUES (5, 5, 5, 5, 'Rustenburg', 'Buffelspoort', 'Raven Avenue', 5)
INTO PROPERTY VALUES (6, 6, 6, 6, 'Durban', 'Umhlanga Rocks', 'Dove Avenue', 7)
INTO PROPERTY VALUES (7, 7, 7, 7, 'Mossel Bay', 'Pinnacle Point', 'Pelican Lane', 3)
INTO PROPERTY VALUES (8, 8, 8, 8, 'Oudtshoorn', 'Dysselsdorp', 'Elephant Street', 12)
INTO PROPERTY VALUES (9, 9, 9, 9, 'Potchefstroom', 'Grimbeeck Park', 'Buffalo Lane', 9)
INTO PROPERTY VALUES (10, 10, 10, 10, 'Ellis Ras', 'Rietspruit', 'Pigeon Avenue', 1)
INTO PROPERTY VALUES (11, 11, 11, 11, 'Upington', 'Blydeville', 'Ostrich Avenue', 4)
INTO PROPERTY VALUES (12, 12, 12, 12, 'Bloemfontein', 'Brandwag', 'Zebra Lane', 6)
INTO PROPERTY VALUES (13, 13, 13, 13, 'Johannesburg', 'Fourways', 'Mongoose Avenue', 11)
INTO PROPERTY VALUES (14, 14, 14, 14, 'Middelburg', 'Dennesig', 'Waterbuck Street', 15)
INTO PROPERTY VALUES (15, 15, 15, 15, 'Pretoria', 'Menlo Park', 'Waterhog Street', 13)
INTO PROPERTY VALUES (16, 16, 16, 16, 'Johannesburg', 'Rosebank', 'Impala Street', 14)
INTO PROPERTY VALUES (17, 17, 17, 17, 'Nelspruit', 'Barberton', 'Otter Lane', 18)
INTO PROPERTY VALUES (18, 18, 18, 18, 'Pretoria', 'Faerie Glen', 'Locust Avenue', 19)
INTO PROPERTY VALUES (19, 19, 19, 19, 'Kimberley', 'Ashburnham', 'Eland Lane', 32)
INTO PROPERTY VALUES (20, 20, 20, 20, 'Cape Town', 'Camps Bay', 'Jackal Lane', 7)                 
SELECT * FROM DUAL;

INSERT ALL
INTO PROPERTY_TYPE VALUES (
  Type_ID, Prop_Type
SELECT * FROM DUAL;

INSERT ALL
INTO OWNER VALUES (
  Owner_ID, Owner_Type, Owner_ContactNum, Owner_Name, Owner_Surname, Bus_Type, Bus_Reg_Nr, BC_Employer
SELECT * FROM DUAL;

INSERT ALL
INTO OWNER_TYPE VALUES (
  Owner_Type, Owner_Description
SELECT * FROM DUAL;

INSERT ALL
INTO BUILDING VALUES (
  Building_ID, Prop_ID, Insurance_Code, Date_Approved, Building_Size, Building_Class
SELECT * FROM DUAL;

INSERT ALL
INTO DAMAGE_COST VALUES (1, 1, 1, 1, 1, 25000, TRUE)
INTO DAMAGE_COST VALUES (2, 2, 2, 2, 2, 35875, FALSE)
INTO DAMAGE_COST VALUES (3, 3, 3, 3, 3, 46857, TRUE)
INTO DAMAGE_COST VALUES (4, 4, 4, 4, 4, 14527, FALSE)
INTO DAMAGE_COST VALUES (5, 5, 5, 5, 5, 36587, FALSE)
INTO DAMAGE_COST VALUES (6, 6, 6, 6, 6, 98755, FALSE)
INTO DAMAGE_COST VALUES (7, 7, 7, 7, 7, 45125, TRUE)
INTO DAMAGE_COST VALUES (8, 8, 8, 8, 8, 87555, FALSE)
INTO DAMAGE_COST VALUES (9, 9, 9, 9, 9, 105455, TRUE)
INTO DAMAGE_COST VALUES (10, 10, 10, 10, 10, 45668, TRUE)
INTO DAMAGE_COST VALUES (11, 11, 11, 11, 11, 9875, FALSE)
INTO DAMAGE_COST VALUES (12, 12, 12, 12, 12, 102558, TRUE)
INTO DAMAGE_COST VALUES (13, 13, 13, 13, 13, 155895, TRUE)
INTO DAMAGE_COST VALUES (14, 14, 14, 14, 14, 78596, TRUE)
INTO DAMAGE_COST VALUES (15, 15, 15, 15, 15, 255465, TRUE)
INTO DAMAGE_COST VALUES (16, 16, 16, 16, 16, 63556, FALSE)
INTO DAMAGE_COST VALUES (17, 17, 17, 17, 17, 58554, FALSE)
INTO DAMAGE_COST VALUES (18, 18, 18, 18, 18, 365484, TRUE)
INTO DAMAGE_COST VALUES (19, 19, 19, 19, 19, 784565, TRUE)
INTO DAMAGE_COST VALUES (20, 20, 20, 20, 20, 564121, TRUE)
SELECT * FROM DUAL;

INSERT ALL
INTO ASSESSOR VALUES (1, 'Jackson', 'Avery', '0764154256')
INTO ASSESSOR VALUES (2, 'Alina', 'Starkov', '07729856542')
INTO ASSESSOR VALUES (3, 'Olivia', 'Benson', '0823117896')
INTO ASSESSOR VALUES (4,  'Tony', 'Stark', '0728952100')
INTO ASSESSOR VALUES (5, 'Aleksander', 'Kirigan', '0821234567')
INTO ASSESSOR VALUES (6, 'Annalise', 'Keating', '0828989899') 
INTO ASSESSOR VALUES (7,  'Sarah', 'Cameron', '0724568795')
INTO ASSESSOR VALUES (8, 'Randall', 'Pearson', '0824587956')
INTO ASSESSOR VALUES (9, 'John Booker', 'Routledge', '0832145236')
INTO ASSESSOR VALUES (10, 'Callie', 'Adams-Foster', '0828798794')
INTO ASSESSOR VALUES (11, 'Kim', 'Burgess', '0829515955')
INTO ASSESSOR VALUES (12, 'Amanda', 'Clarke', '0839954113')
INTO ASSESSOR VALUES (13,  'Brooke', 'Davis', '0836747821')
INTO ASSESSOR VALUES (14, 'Austin', 'Ames', '0845787456')
INTO ASSESSOR VALUES (15, 'Will', 'Buyers', '0847557335')
INTO ASSESSOR VALUES (16,  'Conrad', 'Hawkins', '0829636993')
INTO ASSESSOR VALUES (17, 'Aria', 'Montgomery', '0827414574')
INTO ASSESSOR VALUES (18, 'Penelope', 'Featherington', '0834526843')
INTO ASSESSOR VALUES (19, 'Jim', 'Hopper', '0862301450')
INTO ASSESSOR VALUES (20, 'Vanya', 'Hargreeves', '0864215489') 
SELECT * FROM DUAL;

INSERT ALL
INTO INSURANCE VALUES (1, 'Santam', '0116857600')
INTO INSURANCE VALUES (2, 'Old Mutual', '0114773409')
INTO INSURANCE VALUES (3, 'King Price', '0120010800')
INTO INSURANCE VALUES (4, '1st For Women', '0114894255')
INTO INSURANCE VALUES (5, 'OUTsurance', '0836005824')
INTO INSURANCE VALUES (6, 'Budget', '0114894255')
INTO INSURANCE VALUES (7, 'AIG', '0115518065')
INTO INSURANCE VALUES (8, 'MiWay', '0119900100')
INTO INSURANCE VALUES (9, 'Discovery', '0114406533')
INTO INSURANCE VALUES (10, 'Liberty', '0114082559')
INTO INSURANCE VALUES (11, 'Momentum', '0116691000')
INTO INSURANCE VALUES (12, 'Clientele', '0118781000')
INTO INSURANCE VALUES (13, 'Assupol', '0127414277')
INTO INSURANCE VALUES (14, 'Alexander Forbes', '0127414274')
INTO INSURANCE VALUES (15, 'Hollard' '00113515002')
INTO INSURANCE VALUES (16, 'Sasguard', '0218075148')
INTO INSURANCE VALUES (17, '1Life', '0114894255')
INTO INSURANCE VALUES (18, 'Avbob', '0118802322')
INTO INSURANCE VALUES (19, 'Bidvest', '07861627873')
INTO INSURANCE VALUES (20, 'Auto & General', '0114894255')
SELECT * FROM DUAL;

INSERT ALL
INTO ASSESSOR_HISTORY VALUES (1, 1, TO_DATE('16-05-2021', 'DD-MM-YYYY'), TO_DATE('19-06-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (2, 2, TO_DATE('03-05-2021', 'DD-MM-YYYY'), TO_DATE('09-05-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (3, 3, TO_DATE('10-05-2021', 'DD-MM-YYYY'), TO_DATE('02-06-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (4, 4, TO_DATE('29-04-2021', 'DD-MM-YYYY'), TO_DATE('31-05-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (5, 5, TO_DATE('08-05-2021', 'DD-MM-YYYY'), TO_DATE('17-06-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (6, 6, TO_DATE('16-09-2021', 'DD-MM-YYYY'), TO_DATE('19-12-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (7, 7, TO_DATE('16-08-2021', 'DD-MM-YYYY'), TO_DATE('23-10-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (8, 8, TO_DATE('27-02-2021', 'DD-MM-YYYY'), TO_DATE('15-05-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (9, 9, TO_DATE('31-03-2021', 'DD-MM-YYYY'), TO_DATE('07-06-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (10, 10, TO_DATE('15-04-2021', 'DD-MM-YYYY'), TO_DATE('19-07-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (11, 11, TO_DATE('26-06-2021', 'DD-MM-YYYY'), TO_DATE('26-09-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (12, 12, TO_DATE('22-07-2021', 'DD-MM-YYYY'), TO_DATE('14-10-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (13, 13, TO_DATE('28-08-2021', 'DD-MM-YYYY'), TO_DATE('30-11-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (14, 14, TO_DATE('11-09-2021', 'DD-MM-YYYY'), TO_DATE('07-12-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (15, 15, TO_DATE('25-10-2021', 'DD-MM-YYYY'), TO_DATE('05-12-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (16, 16, TO_DATE('1-11-2021', 'DD-MM-YYYY'), TO_DATE('12-12-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (17, 17, TO_DATE('05-01-2021', 'DD-MM-YYYY'), TO_DATE('29-07-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (18, 18, TO_DATE('08-08-2021', 'DD-MM-YYYY'), TO_DATE('21-11-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (19, 19, TO_DATE('03-09-2021', 'DD-MM-YYYY'), TO_DATE('24-11-2021', 'DD-MM-YYYY'))
INTO ASSESSOR_HISTORY VALUES (20, 20, TO_DATE('11-10-2021', 'DD-MM-YYYY'), TO_DATE('15-12-2021', 'DD-MM-YYYY'))
SELECT * FROM DUAL;

COMMIT;
