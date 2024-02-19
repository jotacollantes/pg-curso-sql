-- -------------------------------------------------------------
-- TablePlus 5.3.8(500)
--
-- https://tableplus.com/
--
-- Database: course-db
-- Generation Time: 2023-06-30 11:50:46.1110
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."countrylanguage";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."countrylanguage" (
    "countrycode" bpchar(3) NOT NULL,
    "language" text NOT NULL,
    "isofficial" bool NOT NULL,
    "percentage" float4 NOT NULL
);

INSERT INTO "public"."countrylanguage" ("countrycode", "language", "isofficial", "percentage") VALUES
('NLD', 'Dutch', 't', 95.6),
('ANT', 'Papiamento', 't', 86.2),
('ALB', 'Albaniana', 't', 97.9),
('DZA', 'Arabic', 't', 86),
('ASM', 'Samoan', 't', 90.6),
('AND', 'Spanish', 'f', 44.6),
('AGO', 'Ovimbundu', 'f', 37.2),
('AIA', 'English', 't', 0),
('ATG', 'Creole English', 'f', 95.7),
('ARE', 'Arabic', 't', 42),
('ARG', 'Spanish', 't', 96.8),
('ARM', 'Armenian', 't', 93.4),
('ABW', 'Papiamento', 'f', 76.7),
('AUS', 'English', 't', 81.2),
('AZE', 'Azerbaijani', 't', 89),
('BHS', 'Creole English', 'f', 89.7),
('BHR', 'Arabic', 't', 67.7),
('BGD', 'Bengali', 't', 97.7),
('BRB', 'Bajan', 'f', 95.1),
('BEL', 'Dutch', 't', 59.2),
('BLZ', 'English', 't', 50.8),
('BEN', 'Fon', 'f', 39.8),
('BMU', 'English', 't', 100),
('BTN', 'Dzongkha', 't', 50),
('BOL', 'Spanish', 't', 87.7),
('BIH', 'Serbo-Croatian', 't', 99.2),
('BWA', 'Tswana', 'f', 75.5),
('BRA', 'Portuguese', 't', 97.5),
('GBR', 'English', 't', 97.3),
('VGB', 'English', 't', 0),
('BRN', 'Malay', 't', 45.5),
('BGR', 'Bulgariana', 't', 83.2),
('BFA', 'Mossi', 'f', 50.2),
('BDI', 'Kirundi', 't', 98.1),
('CYM', 'English', 't', 0),
('CHL', 'Spanish', 't', 89.7),
('COK', 'Maori', 't', 0),
('CRI', 'Spanish', 't', 97.5),
('DJI', 'Somali', 'f', 43.9),
('DMA', 'Creole English', 'f', 100),
('DOM', 'Spanish', 't', 98),
('ECU', 'Spanish', 't', 93),
('EGY', 'Arabic', 't', 98.8),
('SLV', 'Spanish', 't', 100),
('ERI', 'Tigrinja', 't', 49.1),
('ESP', 'Spanish', 't', 74.4),
('ZAF', 'Zulu', 't', 22.7),
('ETH', 'Oromo', 'f', 31),
('FLK', 'English', 't', 0),
('FJI', 'Fijian', 't', 50.8),
('PHL', 'Pilipino', 't', 29.3),
('FRO', 'Faroese', 't', 100),
('GAB', 'Fang', 'f', 35.8),
('GMB', 'Malinke', 'f', 34.1),
('GEO', 'Georgiana', 't', 71.7),
('GHA', 'Akan', 'f', 52.4),
('GIB', 'English', 't', 88.9),
('GRD', 'Creole English', 'f', 100),
('GRL', 'Greenlandic', 't', 87.5),
('GLP', 'Creole French', 'f', 95),
('GUM', 'English', 't', 37.5),
('GTM', 'Spanish', 't', 64.7),
('GIN', 'Ful', 'f', 38.6),
('GNB', 'Crioulo', 'f', 36.4),
('GUY', 'Creole English', 'f', 96.4),
('HTI', 'Haiti Creole', 'f', 100),
('HND', 'Spanish', 't', 97.2),
('HKG', 'Canton Chinese', 'f', 88.7),
('SJM', 'Norwegian', 't', 0),
('IDN', 'Javanese', 'f', 39.4),
('IND', 'Hindi', 't', 39.9),
('IRQ', 'Arabic', 't', 77.2),
('IRN', 'Persian', 't', 45.7),
('IRL', 'English', 't', 98.4),
('ISL', 'Icelandic', 't', 95.7),
('ISR', 'Hebrew', 't', 63.1),
('ITA', 'Italian', 't', 94.1),
('TMP', 'Sunda', 'f', 0),
('AUT', 'German', 't', 92),
('JAM', 'Creole English', 'f', 94.2),
('JPN', 'Japanese', 't', 99.1),
('YEM', 'Arabic', 't', 99.6),
('JOR', 'Arabic', 't', 97.9),
('CXR', 'Chinese', 'f', 0),
('YUG', 'Serbo-Croatian', 't', 75.2),
('KHM', 'Khmer', 't', 88.6),
('CMR', 'Fang', 'f', 19.7),
('CAN', 'English', 't', 60.4),
('CPV', 'Crioulo', 'f', 100),
('KAZ', 'Kazakh', 't', 46),
('KEN', 'Kikuyu', 'f', 20.9),
('CAF', 'Gbaya', 'f', 23.8),
('CHN', 'Chinese', 't', 92),
('KGZ', 'Kirgiz', 't', 59.7),
('KIR', 'Kiribati', 't', 98.9),
('COL', 'Spanish', 't', 99),
('COM', 'Comorian', 't', 75),
('COG', 'Kongo', 'f', 51.5),
('COD', 'Luba', 'f', 18),
('CCK', 'Malay', 'f', 0),
('PRK', 'Korean', 't', 99.9),
('KOR', 'Korean', 't', 99.9),
('GRC', 'Greek', 't', 98.5),
('HRV', 'Serbo-Croatian', 't', 95.9),
('CUB', 'Spanish', 't', 100),
('KWT', 'Arabic', 't', 78.1),
('CYP', 'Greek', 't', 74.1),
('LAO', 'Lao', 't', 67.2),
('LVA', 'Latvian', 't', 55.1),
('LSO', 'Sotho', 't', 85),
('LBN', 'Arabic', 't', 93),
('LBR', 'Kpelle', 'f', 19.5),
('LBY', 'Arabic', 't', 96),
('LIE', 'German', 't', 89),
('LTU', 'Lithuanian', 't', 81.6),
('LUX', 'Luxembourgish', 't', 64.4),
('ESH', 'Arabic', 't', 100),
('MAC', 'Canton Chinese', 'f', 85.6),
('MDG', 'Malagasy', 't', 98.9),
('MKD', 'Macedonian', 't', 66.5),
('MWI', 'Chichewa', 't', 58.3),
('MDV', 'Dhivehi', 't', 100),
('MYS', 'Malay', 't', 58.4),
('MLI', 'Bambara', 'f', 31.8),
('MLT', 'Maltese', 't', 95.8),
('MAR', 'Arabic', 't', 65),
('MHL', 'Marshallese', 't', 96.8),
('MTQ', 'Creole French', 'f', 96.6),
('MRT', 'Hassaniya', 'f', 81.7),
('MUS', 'Creole French', 'f', 70.6),
('MYT', 'Mahor�', 'f', 41.9),
('MEX', 'Spanish', 't', 92.1),
('FSM', 'Trukese', 'f', 41.6),
('MDA', 'Romanian', 't', 61.9),
('MCO', 'French', 't', 41.9),
('MNG', 'Mongolian', 't', 78.8),
('MSR', 'English', 't', 0),
('MOZ', 'Makua', 'f', 27.8),
('MMR', 'Burmese', 't', 69),
('NAM', 'Ovambo', 'f', 50.7),
('NRU', 'Nauru', 't', 57.5),
('NPL', 'Nepali', 't', 50.4),
('NIC', 'Spanish', 't', 97.6),
('NER', 'Hausa', 'f', 53.1),
('NGA', 'Joruba', 'f', 21.4),
('NIU', 'Niue', 'f', 0),
('NFK', 'English', 't', 0),
('NOR', 'Norwegian', 't', 96.6),
('CIV', 'Akan', 'f', 30),
('OMN', 'Arabic', 't', 76.7),
('PAK', 'Punjabi', 'f', 48.2),
('PLW', 'Palau', 't', 82.2),
('PAN', 'Spanish', 't', 76.8),
('PNG', 'Papuan Languages', 'f', 78.1),
('PRY', 'Spanish', 't', 55.1),
('PER', 'Spanish', 't', 79.8),
('PCN', 'Pitcairnese', 'f', 0),
('MNP', 'Philippene Languages', 'f', 34.1),
('PRT', 'Portuguese', 't', 99),
('PRI', 'Spanish', 't', 51.3),
('POL', 'Polish', 't', 97.6),
('GNQ', 'Fang', 'f', 84.8),
('QAT', 'Arabic', 't', 40.7),
('FRA', 'French', 't', 93.6),
('GUF', 'Creole French', 'f', 94.3),
('PYF', 'Tahitian', 'f', 46.4),
('REU', 'Creole French', 'f', 91.5),
('ROM', 'Romanian', 't', 90.7),
('RWA', 'Rwanda', 't', 100),
('SWE', 'Swedish', 't', 89.5),
('SHN', 'English', 't', 0),
('KNA', 'Creole English', 'f', 100),
('LCA', 'Creole French', 'f', 80),
('VCT', 'Creole English', 'f', 99.1),
('SPM', 'French', 't', 0),
('DEU', 'German', 't', 91.3),
('SLB', 'Malenasian Languages', 'f', 85.6),
('ZMB', 'Bemba', 'f', 29.7),
('WSM', 'Samoan-English', 'f', 52),
('SMR', 'Italian', 't', 100),
('STP', 'Crioulo', 'f', 86.3),
('SAU', 'Arabic', 't', 95),
('SEN', 'Wolof', 't', 48.1),
('SYC', 'Seselwa', 'f', 91.3),
('SLE', 'Mende', 'f', 34.8),
('SGP', 'Chinese', 't', 77.1),
('SVK', 'Slovak', 't', 85.6),
('SVN', 'Slovene', 't', 87.9),
('SOM', 'Somali', 't', 98.3),
('LKA', 'Singali', 't', 60.3),
('SDN', 'Arabic', 't', 49.4),
('FIN', 'Finnish', 't', 92.7),
('SUR', 'Sranantonga', 'f', 81),
('SWZ', 'Swazi', 't', 89.9),
('CHE', 'German', 't', 63.6),
('SYR', 'Arabic', 't', 90),
('TJK', 'Tadzhik', 't', 62.2),
('TWN', 'Min', 'f', 66.7),
('TZA', 'Nyamwesi', 'f', 21.1),
('DNK', 'Danish', 't', 93.5),
('THA', 'Thai', 't', 52.6),
('TGO', 'Ewe', 't', 23.2),
('TKL', 'Tokelau', 'f', 0),
('TON', 'Tongan', 't', 98.3),
('TTO', 'English', 'f', 93.5),
('TCD', 'Sara', 'f', 27.7),
('CZE', 'Czech', 't', 81.2),
('TUN', 'Arabic', 't', 69.9),
('TUR', 'Turkish', 't', 87.6),
('TKM', 'Turkmenian', 't', 76.7),
('TCA', 'English', 't', 0),
('TUV', 'Tuvalu', 't', 92.5),
('UGA', 'Ganda', 'f', 18.1),
('UKR', 'Ukrainian', 't', 64.7),
('HUN', 'Hungarian', 't', 98.5),
('URY', 'Spanish', 't', 95.7),
('NCL', 'Malenasian Languages', 'f', 45.4),
('NZL', 'English', 't', 87),
('UZB', 'Uzbek', 't', 72.6),
('BLR', 'Belorussian', 't', 65.6),
('WLF', 'Wallis', 'f', 0),
('VUT', 'Bislama', 't', 56.6),
('VAT', 'Italian', 't', 0),
('VEN', 'Spanish', 't', 96.9),
('RUS', 'Russian', 't', 86.6),
('VNM', 'Vietnamese', 't', 86.8),
('EST', 'Estonian', 't', 65.3),
('USA', 'English', 't', 86.2),
('VIR', 'English', 't', 81.7),
('UMI', 'English', 't', 0),
('ZWE', 'Shona', 'f', 72.1),
('PSE', 'Arabic', 'f', 95.9),
('AFG', 'Dari', 't', 32.1),
('NLD', 'Fries', 'f', 3.7),
('ANT', 'English', 'f', 7.8),
('ALB', 'Greek', 'f', 1.8),
('DZA', 'Berberi', 'f', 14),
('ASM', 'English', 't', 3.1),
('AND', 'Catalan', 't', 32.3),
('AGO', 'Mbundu', 'f', 21.6),
('ATG', 'English', 't', 0),
('ARE', 'Hindi', 'f', 0),
('ARG', 'Italian', 'f', 1.7),
('ARM', 'Azerbaijani', 'f', 2.6),
('ABW', 'English', 'f', 9.5),
('AUS', 'Italian', 'f', 2.2),
('AZE', 'Russian', 'f', 3),
('BHS', 'Creole French', 'f', 10.3),
('BHR', 'English', 'f', 0),
('BGD', 'Chakma', 'f', 0.4),
('BRB', 'English', 't', 0),
('BEL', 'French', 't', 32.6),
('BLZ', 'Spanish', 'f', 31.6),
('BEN', 'Joruba', 'f', 12.2),
('BTN', 'Nepali', 'f', 34.8),
('BOL', 'Ket�ua', 't', 8.1),
('BWA', 'Shona', 'f', 12.3),
('BRA', 'German', 'f', 0.5),
('GBR', 'Kymri', 'f', 0.9),
('BRN', 'Malay-English', 'f', 28.8),
('BGR', 'Turkish', 'f', 9.4),
('BFA', 'Ful', 'f', 9.7),
('BDI', 'French', 't', 0),
('CHL', 'Araucan', 'f', 9.6),
('COK', 'English', 'f', 0),
('CRI', 'Creole English', 'f', 2),
('DJI', 'Afar', 'f', 34.8),
('DMA', 'Creole French', 'f', 0),
('DOM', 'Creole French', 'f', 2),
('ECU', 'Ket�ua', 'f', 7),
('EGY', 'Sinaberberi', 'f', 0),
('SLV', 'Nahua', 'f', 0),
('ERI', 'Tigre', 'f', 31.7),
('ESP', 'Catalan', 'f', 16.9),
('ZAF', 'Xhosa', 't', 17.7),
('ETH', 'Amhara', 'f', 30),
('FJI', 'Hindi', 'f', 43.7),
('PHL', 'Cebuano', 'f', 23.3),
('FRO', 'Danish', 't', 0),
('GAB', 'Punu-sira-nzebi', 'f', 17.1),
('GMB', 'Ful', 'f', 16.2),
('GEO', 'Russian', 'f', 8.8),
('GHA', 'Mossi', 'f', 15.8),
('GIB', 'Arabic', 'f', 7.4),
('GRL', 'Danish', 't', 12.5),
('GLP', 'French', 't', 0),
('GUM', 'Chamorro', 't', 29.6),
('GTM', 'Quich�', 'f', 10.1),
('GIN', 'Malinke', 'f', 23.2),
('GNB', 'Ful', 'f', 16.6),
('GUY', 'Caribbean', 'f', 2.2),
('HTI', 'French', 't', 0),
('HND', 'Garifuna', 'f', 1.3),
('HKG', 'English', 't', 2.2),
('SJM', 'Russian', 'f', 0),
('IDN', 'Sunda', 'f', 15.8),
('IND', 'Bengali', 'f', 8.2),
('IRQ', 'Kurdish', 'f', 19),
('IRN', 'Azerbaijani', 'f', 16.8),
('IRL', 'Irish', 't', 1.6),
('ISL', 'English', 'f', 0),
('ISR', 'Arabic', 't', 18),
('ITA', 'Sardinian', 'f', 2.7),
('TMP', 'Portuguese', 't', 0),
('AUT', 'Serbo-Croatian', 'f', 2.2),
('JAM', 'Hindi', 'f', 1.9),
('JPN', 'Korean', 'f', 0.5),
('YEM', 'Soqutri', 'f', 0),
('JOR', 'Circassian', 'f', 1),
('CXR', 'English', 't', 0),
('YUG', 'Albaniana', 'f', 16.5),
('KHM', 'Vietnamese', 'f', 5.5),
('CMR', 'Bamileke-bamum', 'f', 18.6),
('CAN', 'French', 't', 23.4),
('CPV', 'Portuguese', 't', 0),
('KAZ', 'Russian', 'f', 34.7),
('KEN', 'Luhya', 'f', 13.8),
('CAF', 'Banda', 'f', 23.5),
('CHN', 'Zhuang', 'f', 1.4),
('KGZ', 'Russian', 't', 16.2),
('KIR', 'Tuvalu', 'f', 0.5),
('COL', 'Chibcha', 'f', 0.4),
('COM', 'Comorian-French', 'f', 12.9),
('COG', 'Teke', 'f', 17.3),
('COD', 'Kongo', 'f', 16),
('CCK', 'English', 't', 0),
('PRK', 'Chinese', 'f', 0.1),
('KOR', 'Chinese', 'f', 0.1),
('GRC', 'Turkish', 'f', 0.9),
('HRV', 'Slovene', 'f', 0),
('KWT', 'English', 'f', 0),
('CYP', 'Turkish', 't', 22.4),
('LAO', 'Mon-khmer', 'f', 16.5),
('LVA', 'Russian', 'f', 32.5),
('LSO', 'Zulu', 'f', 15),
('LBN', 'Armenian', 'f', 5.9),
('LBR', 'Bassa', 'f', 13.7),
('LBY', 'Berberi', 'f', 1),
('LIE', 'Italian', 'f', 2.5),
('LTU', 'Russian', 'f', 8.1),
('LUX', 'Portuguese', 'f', 13),
('MAC', 'Portuguese', 't', 2.3),
('MDG', 'French', 't', 0),
('MKD', 'Albaniana', 'f', 22.9),
('MWI', 'Lomwe', 'f', 18.4),
('MDV', 'English', 'f', 0),
('MYS', 'Chinese', 'f', 9),
('MLI', 'Ful', 'f', 13.9),
('MLT', 'English', 't', 2.1),
('MAR', 'Berberi', 'f', 33),
('MHL', 'English', 't', 0),
('MTQ', 'French', 't', 0),
('MRT', 'Wolof', 'f', 6.6),
('MUS', 'Bhojpuri', 'f', 21.1),
('MYT', 'French', 't', 20.3),
('MEX', 'N�huatl', 'f', 1.8),
('FSM', 'Pohnpei', 'f', 23.8),
('MDA', 'Russian', 'f', 23.2),
('MCO', 'Monegasque', 'f', 16.1),
('MNG', 'Kazakh', 'f', 5.9),
('MOZ', 'Tsonga', 'f', 12.4),
('MMR', 'Shan', 'f', 8.5),
('NAM', 'Nama', 'f', 12.4),
('NRU', 'Kiribati', 'f', 17.9),
('NPL', 'Maithili', 'f', 11.9),
('NIC', 'Miskito', 'f', 1.6),
('NER', 'Songhai-zerma', 'f', 21.2),
('NGA', 'Hausa', 'f', 21.1),
('NIU', 'English', 't', 0),
('NOR', 'English', 'f', 0.5),
('CIV', 'Gur', 'f', 11.7),
('OMN', 'Balochi', 'f', 0),
('PAK', 'Pashto', 'f', 13.1),
('PLW', 'Philippene Languages', 'f', 9.2),
('PAN', 'Creole English', 'f', 14),
('PNG', 'Malenasian Languages', 'f', 20),
('PRY', 'Guaran�', 't', 40.1),
('PER', 'Ket�ua', 't', 16.4),
('MNP', 'Chamorro', 'f', 30),
('PRI', 'English', 'f', 47.4),
('POL', 'German', 'f', 1.3),
('GNQ', 'Bubi', 'f', 8.7),
('QAT', 'Urdu', 'f', 0),
('FRA', 'Arabic', 'f', 2.5),
('GUF', 'Indian Languages', 'f', 1.9),
('PYF', 'French', 't', 40.8),
('REU', 'Chinese', 'f', 2.8),
('ROM', 'Hungarian', 'f', 7.2),
('RWA', 'French', 't', 0),
('SWE', 'Finnish', 'f', 2.4),
('KNA', 'English', 't', 0),
('LCA', 'English', 't', 20),
('VCT', 'English', 't', 0),
('DEU', 'Turkish', 'f', 2.6),
('SLB', 'Papuan Languages', 'f', 8.6),
('ZMB', 'Tongan', 'f', 11),
('WSM', 'Samoan', 't', 47.5),
('STP', 'French', 'f', 0.7),
('SEN', 'Ful', 'f', 21.7),
('SYC', 'English', 't', 3.8),
('SLE', 'Temne', 'f', 31.8),
('SGP', 'Malay', 't', 14.1),
('SVK', 'Hungarian', 'f', 10.5),
('SVN', 'Serbo-Croatian', 'f', 7.9),
('SOM', 'Arabic', 't', 0),
('LKA', 'Tamil', 't', 19.6),
('SDN', 'Dinka', 'f', 11.5),
('FIN', 'Swedish', 't', 5.7),
('SUR', 'Hindi', 'f', 0),
('SWZ', 'Zulu', 'f', 2),
('CHE', 'French', 't', 19.2),
('SYR', 'Kurdish', 'f', 9),
('TJK', 'Uzbek', 'f', 23.2),
('TWN', 'Mandarin Chinese', 't', 20.1),
('TZA', 'Swahili', 't', 8.8),
('DNK', 'Turkish', 'f', 0.8),
('THA', 'Lao', 'f', 26.9),
('TGO', 'Kaby�', 't', 13.8),
('TKL', 'English', 't', 0),
('TON', 'English', 't', 0),
('TTO', 'Hindi', 'f', 3.4),
('TCD', 'Arabic', 't', 12.3),
('CZE', 'Moravian', 'f', 12.9),
('TUN', 'Arabic-French', 'f', 26.3),
('TUR', 'Kurdish', 'f', 10.6),
('TKM', 'Uzbek', 'f', 9.2),
('TUV', 'Kiribati', 'f', 7.5),
('UGA', 'Nkole', 'f', 10.7),
('UKR', 'Russian', 'f', 32.9),
('HUN', 'Romani', 'f', 0.5),
('NCL', 'French', 't', 34.3),
('NZL', 'Maori', 'f', 4.3),
('UZB', 'Russian', 'f', 10.9),
('BLR', 'Russian', 't', 32),
('WLF', 'Futuna', 'f', 0),
('VUT', 'English', 't', 28.3),
('VEN', 'Goajiro', 'f', 0.4),
('RUS', 'Tatar', 'f', 3.2),
('VNM', 'Tho', 'f', 1.8),
('EST', 'Russian', 'f', 27.8),
('USA', 'Spanish', 'f', 7.5),
('VIR', 'Spanish', 'f', 13.3),
('ZWE', 'Ndebele', 'f', 16.2),
('PSE', 'Hebrew', 'f', 4.1),
('AFG', 'Uzbek', 'f', 8.8),
('NLD', 'Arabic', 'f', 0.9),
('ANT', 'Dutch', 't', 0),
('ALB', 'Macedonian', 'f', 0.1),
('ASM', 'Tongan', 'f', 3.1),
('AND', 'Portuguese', 'f', 10.8),
('AGO', 'Kongo', 'f', 13.2),
('ARG', 'Indian Languages', 'f', 0.3),
('ABW', 'Spanish', 'f', 7.4),
('AUS', 'Greek', 'f', 1.6),
('AZE', 'Lezgian', 'f', 2.3),
('BGD', 'Marma', 'f', 0.2),
('BEL', 'Italian', 'f', 2.4),
('BLZ', 'Maya Languages', 'f', 9.6),
('BEN', 'Adja', 'f', 11.1),
('BTN', 'Asami', 'f', 15.2),
('BOL', 'Aimar�', 't', 3.2),
('BWA', 'San', 'f', 3.5),
('BRA', 'Italian', 'f', 0.4),
('GBR', 'Gaeli', 'f', 0.1),
('BRN', 'Chinese', 'f', 9.3),
('BGR', 'Romani', 'f', 3.7),
('BFA', 'Gurma', 'f', 5.7),
('BDI', 'Swahili', 'f', 0),
('CHL', 'Aimar�', 'f', 0.5),
('CRI', 'Chibcha', 'f', 0.3),
('DJI', 'Arabic', 't', 10.6),
('ERI', 'Afar', 'f', 4.3),
('ESP', 'Galecian', 'f', 6.4),
('ZAF', 'Afrikaans', 't', 14.3),
('ETH', 'Tigrinja', 'f', 7.2),
('PHL', 'Ilocano', 'f', 9.3),
('GAB', 'Mpongwe', 'f', 14.6),
('GMB', 'Wolof', 'f', 12.6),
('GEO', 'Armenian', 'f', 6.8),
('GHA', 'Ewe', 'f', 11.9),
('GUM', 'Philippene Languages', 'f', 19.7),
('GTM', 'Cakchiquel', 'f', 8.9),
('GIN', 'Susu', 'f', 11),
('GNB', 'Balante', 'f', 14.6),
('GUY', 'Arawakan', 'f', 1.4),
('HND', 'Creole English', 'f', 0.2),
('HKG', 'Fukien', 'f', 1.9),
('IDN', 'Malay', 't', 12.1),
('IND', 'Telugu', 'f', 7.8),
('IRQ', 'Azerbaijani', 'f', 1.7),
('IRN', 'Kurdish', 'f', 9.1),
('ISR', 'Russian', 'f', 8.9),
('ITA', 'Friuli', 'f', 1.2),
('AUT', 'Turkish', 'f', 1.5),
('JPN', 'Chinese', 'f', 0.2),
('JOR', 'Armenian', 'f', 1),
('YUG', 'Hungarian', 'f', 3.4),
('KHM', 'Chinese', 'f', 3.1),
('CMR', 'Duala', 'f', 10.9),
('CAN', 'Chinese', 'f', 2.5);
INSERT INTO "public"."countrylanguage" ("countrycode", "language", "isofficial", "percentage") VALUES
('KAZ', 'Ukrainian', 'f', 5),
('KEN', 'Luo', 'f', 12.8),
('CAF', 'Mandjia', 'f', 14.8),
('CHN', 'Mant�u', 'f', 0.9),
('KGZ', 'Uzbek', 'f', 14.1),
('COL', 'Creole English', 'f', 0.1),
('COM', 'Comorian-madagassi', 'f', 5.5),
('COG', 'Mboshi', 'f', 11.4),
('COD', 'Mongo', 'f', 13.5),
('LAO', 'Thai', 'f', 7.8),
('LVA', 'Belorussian', 'f', 4.1),
('LSO', 'English', 't', 0),
('LBN', 'French', 'f', 0),
('LBR', 'Grebo', 'f', 8.9),
('LIE', 'Turkish', 'f', 2.5),
('LTU', 'Polish', 'f', 7),
('LUX', 'Italian', 'f', 4.6),
('MAC', 'Mandarin Chinese', 'f', 1.2),
('MKD', 'Turkish', 'f', 4),
('MWI', 'Yao', 'f', 13.2),
('MYS', 'Tamil', 'f', 3.9),
('MLI', 'Senufo and Minianka', 'f', 12),
('MRT', 'Tukulor', 'f', 5.4),
('MUS', 'French', 'f', 3.4),
('MYT', 'Malagasy', 'f', 16.1),
('MEX', 'Yucatec', 'f', 1.1),
('FSM', 'Mortlock', 'f', 7.6),
('MDA', 'Ukrainian', 'f', 8.6),
('MCO', 'Italian', 'f', 16.1),
('MNG', 'Dorbet', 'f', 2.7),
('MOZ', 'Sena', 'f', 9.4),
('MMR', 'Karen', 'f', 6.2),
('NAM', 'Kavango', 'f', 9.7),
('NRU', 'Chinese', 'f', 8.5),
('NPL', 'Bhojpuri', 'f', 7.5),
('NIC', 'Creole English', 'f', 0.5),
('NER', 'Tamashek', 'f', 10.4),
('NGA', 'Ibo', 'f', 18.1),
('NOR', 'Danish', 'f', 0.4),
('CIV', 'Malinke', 'f', 11.4),
('PAK', 'Sindhi', 'f', 11.8),
('PLW', 'English', 't', 3.2),
('PAN', 'Guaym�', 'f', 5.3),
('PRY', 'Portuguese', 'f', 3.2),
('PER', 'Aimar�', 't', 2.3),
('MNP', 'Chinese', 'f', 7.1),
('POL', 'Ukrainian', 'f', 0.6),
('FRA', 'Portuguese', 'f', 1.2),
('PYF', 'Chinese', 'f', 2.9),
('REU', 'Comorian', 'f', 2.8),
('ROM', 'Romani', 't', 0.7),
('SWE', 'Southern Slavic Languages', 'f', 1.3),
('DEU', 'Southern Slavic Languages', 'f', 1.4),
('SLB', 'Polynesian Languages', 'f', 3.8),
('ZMB', 'Nyanja', 'f', 7.8),
('WSM', 'English', 't', 0.6),
('SEN', 'Serer', 'f', 12.5),
('SYC', 'French', 't', 1.3),
('SLE', 'Limba', 'f', 8.3),
('SGP', 'Tamil', 't', 7.4),
('SVK', 'Romani', 'f', 1.7),
('SVN', 'Hungarian', 'f', 0.5),
('LKA', 'Mixed Languages', 'f', 19.6),
('SDN', 'Nubian Languages', 'f', 8.1),
('FIN', 'Russian', 'f', 0.4),
('CHE', 'Italian', 't', 7.7),
('TJK', 'Russian', 'f', 9.7),
('TWN', 'Hakka', 'f', 11),
('TZA', 'Hehet', 'f', 6.9),
('DNK', 'Arabic', 'f', 0.7),
('THA', 'Chinese', 'f', 12.1),
('TGO', 'Watyi', 'f', 10.3),
('TTO', 'Creole English', 'f', 2.9),
('TCD', 'Mayo-kebbi', 'f', 11.5),
('CZE', 'Slovak', 'f', 3.1),
('TUN', 'Arabic-French-English', 'f', 3.2),
('TUR', 'Arabic', 'f', 1.4),
('TKM', 'Russian', 'f', 6.7),
('TUV', 'English', 't', 0),
('UGA', 'Kiga', 'f', 8.3),
('UKR', 'Romanian', 'f', 0.7),
('HUN', 'German', 'f', 0.4),
('NCL', 'Polynesian Languages', 'f', 11.6),
('UZB', 'Tadzhik', 'f', 4.4),
('BLR', 'Ukrainian', 'f', 1.3),
('VUT', 'French', 't', 14.2),
('VEN', 'Warrau', 'f', 0.1),
('RUS', 'Ukrainian', 'f', 1.3),
('VNM', 'Thai', 'f', 1.6),
('EST', 'Ukrainian', 'f', 2.8),
('USA', 'French', 'f', 0.7),
('VIR', 'French', 'f', 2.5),
('ZWE', 'English', 't', 2.2),
('AFG', 'Turkmenian', 'f', 1.9),
('NLD', 'Turkish', 'f', 0.8),
('AND', 'French', 'f', 6.2),
('AGO', 'Luimbe-nganguela', 'f', 5.4),
('ABW', 'Dutch', 't', 5.3),
('AUS', 'Canton Chinese', 'f', 1.1),
('AZE', 'Armenian', 'f', 2),
('BGD', 'Garo', 'f', 0.1),
('BEL', 'Arabic', 'f', 1.6),
('BLZ', 'Garifuna', 'f', 6.8),
('BEN', 'Aizo', 'f', 8.7),
('BOL', 'Guaran�', 'f', 0.1),
('BWA', 'Khoekhoe', 'f', 2.5),
('BRA', 'Japanese', 'f', 0.4),
('BRN', 'English', 'f', 3.1),
('BGR', 'Macedonian', 'f', 2.6),
('BFA', 'Busansi', 'f', 3.5),
('CHL', 'Rapa nui', 'f', 0.2),
('CRI', 'Chinese', 'f', 0.2),
('ERI', 'Hadareb', 'f', 3.8),
('ESP', 'Basque', 'f', 1.6),
('ZAF', 'Northsotho', 'f', 9.1),
('ETH', 'Gurage', 'f', 4.7),
('PHL', 'Hiligaynon', 'f', 9.1),
('GAB', 'Mbete', 'f', 13.8),
('GMB', 'Diola', 'f', 9.2),
('GEO', 'Azerbaijani', 'f', 5.5),
('GHA', 'Ga-adangme', 'f', 7.8),
('GUM', 'Korean', 'f', 3.3),
('GTM', 'Kekch�', 'f', 4.9),
('GIN', 'Kissi', 'f', 6),
('GNB', 'Portuguese', 't', 8.1),
('HND', 'Miskito', 'f', 0.2),
('HKG', 'Hakka', 'f', 1.6),
('IDN', 'Madura', 'f', 4.3),
('IND', 'Marathi', 'f', 7.4),
('IRQ', 'Assyrian', 'f', 0.8),
('IRN', 'Gilaki', 'f', 5.3),
('ITA', 'French', 'f', 0.5),
('AUT', 'Hungarian', 'f', 0.4),
('JPN', 'English', 'f', 0.1),
('YUG', 'Romani', 'f', 1.4),
('KHM', 'T�am', 'f', 2.4),
('CMR', 'Ful', 'f', 9.6),
('CAN', 'Italian', 'f', 1.7),
('KAZ', 'German', 'f', 3.1),
('KEN', 'Kamba', 'f', 11.2),
('CAF', 'Ngbaka', 'f', 7.5),
('CHN', 'Hui', 'f', 0.8),
('KGZ', 'Ukrainian', 'f', 1.7),
('COL', 'Arawakan', 'f', 0.1),
('COM', 'Comorian-Arabic', 'f', 1.6),
('COG', 'Mbete', 'f', 4.8),
('COD', 'Rwanda', 'f', 10.3),
('LAO', 'Lao-Soung', 'f', 5.2),
('LVA', 'Ukrainian', 'f', 2.9),
('LBR', 'Gio', 'f', 7.9),
('LTU', 'Belorussian', 'f', 1.4),
('LUX', 'French', 't', 4.2),
('MAC', 'English', 'f', 0.5),
('MKD', 'Romani', 'f', 2.3),
('MWI', 'Ngoni', 'f', 6.7),
('MYS', 'Iban', 'f', 2.8),
('MLI', 'Soninke', 'f', 8.7),
('MRT', 'Soninke', 'f', 2.7),
('MUS', 'Hindi', 'f', 1.2),
('MEX', 'Zapotec', 'f', 0.6),
('FSM', 'Kosrean', 'f', 7.3),
('MDA', 'Gagauzi', 'f', 3.2),
('MCO', 'English', 'f', 6.5),
('MNG', 'Bajad', 'f', 1.9),
('MOZ', 'Lomwe', 'f', 7.8),
('MMR', 'Rakhine', 'f', 4.5),
('NAM', 'Afrikaans', 'f', 9.5),
('NRU', 'Tuvalu', 'f', 8.5),
('NPL', 'Tharu', 'f', 5.4),
('NIC', 'Sumo', 'f', 0.2),
('NER', 'Ful', 'f', 9.7),
('NGA', 'Ful', 'f', 11.3),
('NOR', 'Swedish', 'f', 0.3),
('CIV', 'Kru', 'f', 10.5),
('PAK', 'Saraiki', 'f', 9.8),
('PLW', 'Chinese', 'f', 1.6),
('PAN', 'Cuna', 'f', 2),
('PRY', 'German', 'f', 0.9),
('MNP', 'Korean', 'f', 6.5),
('POL', 'Belorussian', 'f', 0.5),
('FRA', 'Italian', 'f', 0.4),
('REU', 'Malagasy', 'f', 1.4),
('ROM', 'German', 'f', 0.4),
('SWE', 'Arabic', 'f', 0.8),
('DEU', 'Italian', 'f', 0.7),
('ZMB', 'Lozi', 'f', 6.4),
('SEN', 'Diola', 'f', 5),
('SLE', 'Kono-vai', 'f', 5.1),
('SVK', 'Czech and Moravian', 'f', 1.1),
('SDN', 'Beja', 'f', 6.4),
('FIN', 'Estonian', 'f', 0.2),
('CHE', 'Romansh', 't', 0.6),
('TWN', 'Ami', 'f', 0.6),
('TZA', 'Haya', 'f', 5.9),
('DNK', 'German', 'f', 0.5),
('THA', 'Malay', 'f', 3.6),
('TGO', 'Kotokoli', 'f', 5.7),
('TCD', 'Kanem-bornu', 'f', 9),
('CZE', 'Polish', 'f', 0.6),
('TKM', 'Kazakh', 'f', 2),
('UGA', 'Soga', 'f', 8.2),
('UKR', 'Bulgariana', 'f', 0.3),
('HUN', 'Serbo-Croatian', 'f', 0.2),
('UZB', 'Kazakh', 'f', 3.8),
('BLR', 'Polish', 'f', 0.6),
('RUS', 'Chuvash', 'f', 0.9),
('VNM', 'Muong', 'f', 1.5),
('EST', 'Belorussian', 'f', 1.4),
('USA', 'German', 'f', 0.7),
('ZWE', 'Nyanja', 'f', 2.2),
('AFG', 'Balochi', 'f', 0.9),
('AGO', 'Nyaneka-nkhumbi', 'f', 5.4),
('AUS', 'Arabic', 'f', 1),
('BGD', 'Khasi', 'f', 0.1),
('BEL', 'German', 't', 1),
('BEN', 'Bariba', 'f', 8.7),
('BWA', 'Ndebele', 'f', 1.3),
('BRA', 'Indian Languages', 'f', 0.2),
('BFA', 'Dagara', 'f', 3.1),
('ERI', 'Bilin', 'f', 3),
('ZAF', 'English', 't', 8.5),
('ETH', 'Somali', 'f', 4.1),
('PHL', 'Bicol', 'f', 5.7),
('GMB', 'Soninke', 'f', 7.6),
('GEO', 'Osseetti', 'f', 2.4),
('GHA', 'Gurma', 'f', 3.3),
('GUM', 'Japanese', 'f', 2),
('GTM', 'Mam', 'f', 2.7),
('GIN', 'Kpelle', 'f', 4.6),
('GNB', 'Malinke', 'f', 6.9),
('HKG', 'Chiu chau', 'f', 1.4),
('IDN', 'Minangkabau', 'f', 2.4),
('IND', 'Tamil', 'f', 6.3),
('IRQ', 'Persian', 'f', 0.8),
('IRN', 'Luri', 'f', 4.3),
('ITA', 'German', 'f', 0.5),
('AUT', 'Slovene', 'f', 0.4),
('JPN', 'Philippene Languages', 'f', 0.1),
('YUG', 'Slovak', 'f', 0.7),
('CMR', 'Tikar', 'f', 7.4),
('CAN', 'German', 'f', 1.6),
('KAZ', 'Uzbek', 'f', 2.3),
('KEN', 'Kalenjin', 'f', 10.8),
('CAF', 'Sara', 'f', 6.4),
('CHN', 'Miao', 'f', 0.7),
('KGZ', 'Tatar', 'f', 1.3),
('COL', 'Caribbean', 'f', 0.1),
('COM', 'Comorian-Swahili', 'f', 0.5),
('COG', 'Punu', 'f', 2.9),
('COD', 'Zande', 'f', 6.1),
('LVA', 'Polish', 'f', 2.1),
('LBR', 'Kru', 'f', 7.2),
('LTU', 'Ukrainian', 'f', 1.1),
('LUX', 'German', 't', 2.3),
('MKD', 'Serbo-Croatian', 'f', 2),
('MYS', 'English', 'f', 1.6),
('MLI', 'Tamashek', 'f', 7.3),
('MRT', 'Ful', 'f', 1.2),
('MUS', 'Tamil', 'f', 0.8),
('MEX', 'Mixtec', 'f', 0.6),
('FSM', 'Yap', 'f', 5.8),
('MDA', 'Bulgariana', 'f', 1.6),
('MNG', 'Buryat', 'f', 1.7),
('MOZ', 'Shona', 'f', 6.5),
('MMR', 'Mon', 'f', 2.4),
('NAM', 'Herero', 'f', 8),
('NRU', 'English', 't', 7.5),
('NPL', 'Tamang', 'f', 4.9),
('NER', 'Kanuri', 'f', 4.4),
('NGA', 'Ibibio', 'f', 5.6),
('NOR', 'Saame', 'f', 0),
('CIV', '[South]Mande', 'f', 7.7),
('PAK', 'Urdu', 't', 7.6),
('PAN', 'Embera', 'f', 0.6),
('MNP', 'English', 't', 4.8),
('FRA', 'Spanish', 'f', 0.4),
('REU', 'Tamil', 'f', 0),
('ROM', 'Ukrainian', 'f', 0.3),
('SWE', 'Spanish', 'f', 0.6),
('DEU', 'Greek', 'f', 0.4),
('ZMB', 'Chewa', 'f', 5.7),
('SEN', 'Malinke', 'f', 3.8),
('SLE', 'Bullom-sherbro', 'f', 3.8),
('SVK', 'Ukrainian and Russian', 'f', 0.6),
('SDN', 'Nuer', 'f', 4.9),
('FIN', 'Saame', 'f', 0),
('TWN', 'Atayal', 'f', 0.4),
('TZA', 'Makonde', 'f', 5.9),
('DNK', 'English', 'f', 0.3),
('THA', 'Khmer', 'f', 1.3),
('TGO', 'Ane', 'f', 5.7),
('TCD', 'Ouaddai', 'f', 8.7),
('CZE', 'German', 'f', 0.5),
('UGA', 'Teso', 'f', 6),
('UKR', 'Hungarian', 'f', 0.3),
('HUN', 'Romanian', 'f', 0.1),
('UZB', 'Karakalpak', 'f', 2),
('RUS', 'Bashkir', 'f', 0.7),
('VNM', 'Chinese', 'f', 1.4),
('EST', 'Finnish', 'f', 0.7),
('USA', 'Italian', 'f', 0.6),
('AGO', 'Chokwe', 'f', 4.2),
('AUS', 'Vietnamese', 'f', 0.8),
('BGD', 'Santhali', 'f', 0.1),
('BEL', 'Turkish', 'f', 0.9),
('BEN', 'Somba', 'f', 6.7),
('BFA', 'Dyula', 'f', 2.6),
('ERI', 'Saho', 'f', 3),
('ZAF', 'Tswana', 'f', 8.1),
('ETH', 'Sidamo', 'f', 3.2),
('PHL', 'Waray-waray', 'f', 3.8),
('GEO', 'Abhyasi', 'f', 1.7),
('GHA', 'Joruba', 'f', 1.3),
('GIN', 'Yalunka', 'f', 2.9),
('GNB', 'Mandyako', 'f', 4.9),
('IDN', 'Batakki', 'f', 2.2),
('IND', 'Urdu', 'f', 5.1),
('IRN', 'Mazandarani', 'f', 3.6),
('ITA', 'Albaniana', 'f', 0.2),
('AUT', 'Polish', 'f', 0.2),
('JPN', 'Ainu', 'f', 0),
('YUG', 'Macedonian', 'f', 0.5),
('CMR', 'Mandara', 'f', 5.7),
('CAN', 'Polish', 'f', 0.7),
('KAZ', 'Tatar', 'f', 2),
('KEN', 'Gusii', 'f', 6.1),
('CAF', 'Mbum', 'f', 6.4),
('CHN', 'Uighur', 'f', 0.6),
('KGZ', 'Kazakh', 'f', 0.8),
('COG', 'Sango', 'f', 2.6),
('COD', 'Ngala and Bangi', 'f', 5.8),
('LVA', 'Lithuanian', 'f', 1.2),
('LBR', 'Mano', 'f', 7.2),
('MYS', 'Dusun', 'f', 1.1),
('MLI', 'Songhai', 'f', 6.9),
('MRT', 'Zenaga', 'f', 1.2),
('MUS', 'Marathi', 'f', 0.7),
('MEX', 'Otom�', 'f', 0.4),
('FSM', 'Wolea', 'f', 3.7),
('MNG', 'Dariganga', 'f', 1.4),
('MOZ', 'Tswa', 'f', 6),
('MMR', 'Chin', 'f', 2.2),
('NAM', 'Caprivi', 'f', 4.7),
('NPL', 'Newari', 'f', 3.7),
('NGA', 'Kanuri', 'f', 4.1),
('PAK', 'Balochi', 'f', 3),
('PAN', 'Arabic', 'f', 0.6),
('MNP', 'Carolinian', 'f', 4.8),
('FRA', 'Turkish', 'f', 0.4),
('ROM', 'Serbo-Croatian', 'f', 0.1),
('SWE', 'Norwegian', 'f', 0.5),
('DEU', 'Polish', 'f', 0.3),
('ZMB', 'Nsenga', 'f', 4.3),
('SEN', 'Soninke', 'f', 1.3),
('SLE', 'Ful', 'f', 3.8),
('SDN', 'Zande', 'f', 2.7),
('TWN', 'Paiwan', 'f', 0.3),
('TZA', 'Nyakusa', 'f', 5.4),
('DNK', 'Swedish', 'f', 0.3),
('THA', 'Kuy', 'f', 1.1),
('TGO', 'Moba', 'f', 5.4),
('TCD', 'Hadjarai', 'f', 6.7),
('CZE', 'Silesiana', 'f', 0.4),
('UGA', 'Lango', 'f', 5.9),
('UKR', 'Belorussian', 'f', 0.3),
('HUN', 'Slovak', 'f', 0.1),
('UZB', 'Tatar', 'f', 1.8),
('RUS', 'Chechen', 'f', 0.6),
('VNM', 'Khmer', 'f', 1.4),
('USA', 'Chinese', 'f', 0.6),
('AGO', 'Luvale', 'f', 3.6),
('AUS', 'Serbo-Croatian', 'f', 0.6),
('BGD', 'Tripuri', 'f', 0.1),
('BEN', 'Ful', 'f', 5.6),
('ZAF', 'Southsotho', 'f', 7.6),
('ETH', 'Walaita', 'f', 2.8),
('PHL', 'Pampango', 'f', 3),
('GIN', 'Loma', 'f', 2.3),
('IDN', 'Bugi', 'f', 2.2),
('IND', 'Gujarati', 'f', 4.8),
('IRN', 'Balochi', 'f', 2.3),
('ITA', 'Slovene', 'f', 0.2),
('AUT', 'Czech', 'f', 0.2),
('CMR', 'Maka', 'f', 4.9),
('CAN', 'Spanish', 'f', 0.7),
('KEN', 'Meru', 'f', 5.5),
('CHN', 'Yi', 'f', 0.6),
('KGZ', 'Tadzhik', 'f', 0.8),
('COD', 'Rundi', 'f', 3.8),
('LBR', 'Loma', 'f', 5.8),
('MOZ', 'Chuabo', 'f', 5.7),
('MMR', 'Kachin', 'f', 1.4),
('NAM', 'San', 'f', 1.9),
('NPL', 'Hindi', 'f', 3),
('NGA', 'Edo', 'f', 3.3),
('PAK', 'Hindko', 'f', 2.4),
('SLE', 'Kuranko', 'f', 3.4),
('SDN', 'Bari', 'f', 2.5),
('TZA', 'Chaga and Pare', 'f', 4.9),
('DNK', 'Norwegian', 'f', 0.3),
('TGO', 'Naudemba', 'f', 4.1),
('TCD', 'Tandjile', 'f', 6.5),
('CZE', 'Romani', 'f', 0.3),
('UGA', 'Lugbara', 'f', 4.7),
('UKR', 'Polish', 'f', 0.1),
('RUS', 'Mordva', 'f', 0.5),
('VNM', 'Nung', 'f', 1.1),
('USA', 'Tagalog', 'f', 0.4),
('AGO', 'Ambo', 'f', 2.4),
('AUS', 'German', 'f', 0.6),
('ZAF', 'Tsonga', 'f', 4.3),
('PHL', 'Pangasinan', 'f', 1.8),
('IDN', 'Banja', 'f', 1.8),
('IND', 'Kannada', 'f', 3.9),
('IRN', 'Arabic', 'f', 2.2),
('ITA', 'Romani', 'f', 0.2),
('AUT', 'Romanian', 'f', 0.2),
('CMR', 'Masana', 'f', 3.9),
('CAN', 'Portuguese', 'f', 0.7),
('KEN', 'Nyika', 'f', 4.8),
('CHN', 'Tujia', 'f', 0.5),
('COD', 'Teke', 'f', 2.7),
('LBR', 'Malinke', 'f', 5.1),
('MOZ', 'Ronga', 'f', 3.7),
('MMR', 'Kayah', 'f', 0.4),
('NAM', 'German', 'f', 0.9),
('NGA', 'Tiv', 'f', 2.3),
('PAK', 'Brahui', 'f', 1.2),
('SLE', 'Yalunka', 'f', 3.4),
('SDN', 'Fur', 'f', 2.1),
('TZA', 'Luguru', 'f', 4.9),
('TGO', 'Gurma', 'f', 3.4),
('TCD', 'Gorane', 'f', 6.2),
('CZE', 'Hungarian', 'f', 0.2),
('UGA', 'Gisu', 'f', 4.5),
('RUS', 'Kazakh', 'f', 0.4),
('VNM', 'Miao', 'f', 0.9),
('USA', 'Polish', 'f', 0.3),
('AGO', 'Luchazi', 'f', 2.4),
('ZAF', 'Swazi', 'f', 2.5),
('PHL', 'Maguindanao', 'f', 1.4),
('IDN', 'Bali', 'f', 1.7),
('IND', 'Malajalam', 'f', 3.6),
('IRN', 'Bakhtyari', 'f', 1.7),
('CAN', 'Punjabi', 'f', 0.7),
('KEN', 'Masai', 'f', 1.6),
('CHN', 'Mongolian', 'f', 0.4),
('COD', 'Boa', 'f', 2.3),
('MOZ', 'Marendje', 'f', 3.5),
('NGA', 'Ijo', 'f', 1.8),
('SDN', 'Chilluk', 'f', 1.7),
('TZA', 'Shambala', 'f', 4.3),
('UGA', 'Acholi', 'f', 4.4),
('RUS', 'Avarian', 'f', 0.4),
('VNM', 'Man', 'f', 0.7),
('USA', 'Korean', 'f', 0.3),
('ZAF', 'Venda', 'f', 2.2),
('PHL', 'Maranao', 'f', 1.3),
('IND', 'Orija', 'f', 3.3),
('IRN', 'Turkmenian', 'f', 1.6),
('CAN', 'Ukrainian', 'f', 0.6),
('KEN', 'Turkana', 'f', 1.4),
('CHN', 'Tibetan', 'f', 0.4),
('COD', 'Chokwe', 'f', 1.8),
('MOZ', 'Nyanja', 'f', 3.3),
('NGA', 'Bura', 'f', 1.6),
('SDN', 'Lotuko', 'f', 1.5),
('TZA', 'Gogo', 'f', 3.9),
('UGA', 'Rwanda', 'f', 3.2),
('RUS', 'Mari', 'f', 0.4),
('USA', 'Vietnamese', 'f', 0.2),
('ZAF', 'Ndebele', 'f', 1.5),
('IND', 'Punjabi', 'f', 2.8),
('CAN', 'Dutch', 'f', 0.5),
('CHN', 'Puyi', 'f', 0.2),
('TZA', 'Ha', 'f', 3.5),
('RUS', 'Udmur', 'f', 0.3),
('USA', 'Japanese', 'f', 0.2),
('IND', 'Asami', 'f', 1.5),
('CAN', 'Eskimo Languages', 'f', 0.1),
('CHN', 'Dong', 'f', 0.2),
('RUS', 'Belorussian', 'f', 0.3),
('USA', 'Portuguese', 'f', 0.2);
