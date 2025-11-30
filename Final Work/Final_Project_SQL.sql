create database Sup_Chain


-- 1- Products Table (Stores unique product info)

CREATE TABLE Products (
    SKU VARCHAR(50) PRIMARY KEY,
    p_type VARCHAR(50),
    Price DECIMAL(10,2),
    avail_per INT,
    stock_per INT,
	gen_revenue  DECIMAL(10,2)
	)


-- 2 - orders2 Table (Stores product sales and revenue details)

CREATE TABLE Orders2 (
    ord_ID INT,
    SKU VARCHAR(50), 
	no_prod_sold INT,
    order_qun INT,
    customer_lt INT,
	cust_gender nvarchar(50),
    FOREIGN KEY (SKU) REFERENCES Products(SKU),
	)

-- 3- Suppliers Table (Includes supplier details)

CREATE TABLE Suppliers (
    SupID INT PRIMARY KEY,
    sup_name VARCHAR(25),
    delv_location VARCHAR(25),
    Supplier_lt INT
	)


-- 4- Manufacturing Table (Includes production details)

CREATE TABLE Manufacturing (
    manufuct_Id INT PRIMARY KEY,
    SKU VARCHAR(50),
    SupID INT,
    prod_volum INT,
    manfuct_lt INT,
    manfuct_cost DECIMAL(12,2),
    inspect_resl VARCHAR(50),
    def_rate DECIMAL(5,2),
    FOREIGN KEY (SKU) REFERENCES Products(SKU),
    FOREIGN KEY (SupID) REFERENCES Suppliers(SupID)
	)

-- 5- Shipping Table (Manage transportation details, track inspections, and monitor defect rates)

CREATE TABLE Shipping (
    Shipping_Id INT PRIMARY KEY,
    SKU VARCHAR(50),
    SupID INT,
    shipping_lt INT,
    shipping_carr VARCHAR(25),
    shipping_cost DECIMAL(12,2),
    trans_modes VARCHAR(25),
    Route VARCHAR(25),
    total_costs DECIMAL(12,2),
    FOREIGN KEY (SKU) REFERENCES Products(SKU),
    FOREIGN KEY (SupID) REFERENCES Suppliers(SupID)
	)

--Inserting Data into Tables.

-- 1- Products Table

INSERT INTO [Products] ([SKU], [p_type], [Price], [avail_per], [stock_per], [gen_revenue]) VALUES
    ('SKU0', 'haircare', '69.80800554', '55', '58','8662.00'),
    ('SKU1', 'skincare', '14.84352328', '95', '53','7460.90'),
    ('SKU2', 'haircare', '11.31968329', '34', '1','9577.75'),
    ('SKU3', 'skincare', '61.16334302', '68', '23','7766.84'),
    ('SKU4', 'skincare', '4.805496036', '26', '5','2686.51'),
    ('SKU5', 'haircare', '1.699976014', '87', '90','2828.35'),
    ('SKU6', 'skincare', '4.078332863', '48', '11','7823.48'),
    ('SKU7', 'cosmetics', '42.95838438', '59', '93','8496.1'),
    ('SKU8', 'cosmetics', '68.71759675', '78', '5','7517.36'),
    ('SKU9', 'skincare', '64.01573294', '35', '14','4971.15'),
    ('SKU10', 'skincare', '15.70779568', '11', '51','2330.97'),
    ('SKU11', 'skincare', '90.63545998', '95', '46','6099.94'),
    ('SKU12', 'haircare', '71.21338908', '41', '100','2873.74'),
    ('SKU13', 'skincare', '16.16039332', '5', '80','4052.74'),
    ('SKU14', 'skincare', '99.17132864', '26', '54','8653.57'),
    ('SKU15', 'skincare', '36.98924493', '94', '9','5442.09'),
    ('SKU16', 'skincare', '7.54717211', '74', '2','6453.80'),
    ('SKU17', 'cosmetics', '81.46253437', '82', '45','2629.40'),
    ('SKU18', 'haircare', '36.44362777', '23', '10','9364.67'),
    ('SKU19', 'skincare', '51.12387009', '100', '48','2553.50'),
    ('SKU20', 'skincare', '96.34107244', '22', '27','8128.03'),
    ('SKU21', 'cosmetics', '84.89386898', '60', '69','7087.05'),
    ('SKU22', 'haircare', '27.67978089', '55', '71','2390.81'),
    ('SKU23', 'cosmetics', '4.324341186', '30', '84','8858.37'),
    ('SKU24', 'haircare', '4.156308359', '32', '4','9049.08'),
    ('SKU25', 'haircare', '39.62934399', '73', '82','2174.78'),
    ('SKU26', 'haircare', '97.44694662', '9', '59','3716.49'),
    ('SKU27', 'cosmetics', '92.55736081', '42', '47','2686.46'),
    ('SKU28', 'cosmetics', '2.397274706', '12', '48','6117.32'),
    ('SKU29', 'cosmetics', '63.44755919', '3', '45','8318.90'),
    ('SKU30', 'haircare', '8.022859211', '10', '60','2766.34'),
    ('SKU31', 'skincare', '50.84739305', '28', '6','9655.14'),
    ('SKU32', 'skincare', '79.20993602', '43', '89','9571.55'),
    ('SKU33', 'cosmetics', '64.795435', '63', '4','5150.00'),
    ('SKU34', 'skincare', '37.46759233', '96', '1','9061.71'),
    ('SKU35', 'cosmetics', '84.95778682', '11', '42','6541.33'),
    ('SKU36', 'skincare', '9.813002579', '34', '18','7573.40'),
    ('SKU37', 'skincare', '23.39984475', '5', '25','2438.34'),
    ('SKU38', 'cosmetics', '52.07593068', '75', '69','9692.32'),
    ('SKU39', 'skincare', '19.12747727', '26', '78','1912.47'),
    ('SKU40', 'skincare', '80.54142417', '97', '90','5724.96'),
    ('SKU41', 'skincare', '99.11329162', '35', '64','5521.21'),
    ('SKU42', 'skincare', '46.52916761', '98', '22','1839.61'),
    ('SKU43', 'haircare', '11.74327178', '6', '36','5737.43'),
    ('SKU44', 'cosmetics', '51.35579091', '34', '13','7152.29'),
    ('SKU45', 'haircare', '33.78413803', '1', '93','5267.96'),
    ('SKU46', 'haircare', '27.0822072', '75', '92','2556.77'),
    ('SKU47', 'skincare', '95.71213588', '93', '4','7089.47'),
    ('SKU48', 'haircare', '76.03554443', '28', '30','7397.07'),
    ('SKU49', 'cosmetics', '78.89791321', '19', '97','8001.61'),
    ('SKU50', 'cosmetics', '14.20348426', '91', '31','5910.89'),
    ('SKU51', 'haircare', '26.70076097', '61', '100','9866.47'),
    ('SKU52', 'skincare', '98.03182966', '1', '64','9435.76'),
    ('SKU53', 'skincare', '30.34147071', '93', '96','8232.33'),
    ('SKU54', 'haircare', '31.14624316', '11', '33','6088.02'),
    ('SKU55', 'haircare', '79.85505834', '16', '97','2925.68'),
    ('SKU56', 'skincare', '20.98638604', '90', '25','4767.02'),
    ('SKU57', 'haircare', '49.26320535', '65', '5','1605.87'),
    ('SKU58', 'skincare', '59.84156138', '81', '10','2021.15'),
    ('SKU59', 'cosmetics', '63.82839835', '30', '100','1061.62'),
    ('SKU60', 'skincare', '17.02802792', '16', '41','8864.08'),
    ('SKU61', 'haircare', '52.0287499', '23', '32','6885.59'),
    ('SKU62', 'cosmetics', '72.79635396', '89', '86','3899.75'),
    ('SKU63', 'skincare', '13.01737679', '55', '54','4256.95'),
    ('SKU64', 'skincare', '89.63409561', '11', '73','8458.73'),
    ('SKU65', 'skincare', '33.69771721', '72', '57','8354.58'),
    ('SKU66', 'skincare', '26.03486977', '52', '13','8367.72'),
    ('SKU67', 'skincare', '87.75543235', '16', '12','9473.80'),
    ('SKU68', 'haircare', '37.93181238', '29', '0','3550.22'),
    ('SKU69', 'skincare', '54.86552852', '62', '95','1752.38'),
    ('SKU70', 'haircare', '47.91454182', '90', '10','7014.89'),
    ('SKU71', 'cosmetics', '6.381533163', '14', '76','8180.34'),
    ('SKU72', 'cosmetics', '90.20442752', '88', '57','2633.12'),
    ('SKU73', 'cosmetics', '83.85101768', '41', '17','7910.89'),
    ('SKU74', 'haircare', '3.170011414', '64', '41','5709.95'),
    ('SKU75', 'skincare', '92.99688423', '29', '16','1889.07'),
    ('SKU76', 'haircare', '69.10879955', '23', '38','5328.38'),
    ('SKU77', 'haircare', '57.44974296', '14', '96','2483.76'),
    ('SKU78', 'haircare', '6.306883176', '50', '5','1292.46'),
    ('SKU79', 'haircare', '57.05703122', '56', '31','7888.72'),
    ('SKU80', 'skincare', '91.12831835', '75', '39','8651.67'),
    ('SKU81', 'haircare', '72.81920693', '9', '48','4384.41'),
    ('SKU82', 'skincare', '17.03493074', '13', '42','2943.38'),
    ('SKU83', 'haircare', '68.91124621', '82', '65','2411.75'),
    ('SKU84', 'haircare', '89.10436729', '99', '73','2048.29'),
    ('SKU85', 'cosmetics', '76.96299442', '83', '15','8684.61'),
    ('SKU86', 'skincare', '19.99817694', '18', '32','1229.59'),
    ('SKU87', 'haircare', '80.41403665', '24', '5','5133.85'),
    ('SKU88', 'cosmetics', '75.27040698', '58', '60','9444.74'),
    ('SKU89', 'cosmetics', '97.76008558', '10', '90','5924.68'),
    ('SKU90', 'skincare', '13.8819135', '56', '66','9592.63'),
    ('SKU91', 'cosmetics', '62.11196546', '90', '98','1935.21'),
    ('SKU92', 'cosmetics', '47.71423308', '44', '90','2100.13'),
    ('SKU93', 'haircare', '69.290831', '88', '63','4531.40'),
    ('SKU94', 'cosmetics', '3.037688725', '97', '77','7888.36'),
    ('SKU95', 'haircare', '77.90392722', '65', '15','7386.36'),
    ('SKU96', 'cosmetics', '24.42313142', '29', '67','7698.42'),
    ('SKU97', 'haircare', '3.526111259', '56', '46','4370.92'),
    ('SKU98', 'skincare', '19.75460487', '43', '53','8525.95'),
    ('SKU99', 'haircare', '68.5178327', '17', '55','9185.19')


-- 2- Orders Table

INSERT INTO [Orders2] ([ord_ID], [SKU], [no_prod_sold], [order_qun], [customer_lt], [cust_gender]) VALUES
    ('0', 'SKU0', '802','96',  '7', 'Non-binary'),
    ('1', 'SKU1', '736','37',  '30','Female'),
    ('2', 'SKU2', '8', '88',  '10','Unknown'),
    ('3', 'SKU3', '83', '59',  '13', 'Non-binary'),
    ('4', 'SKU4', '871', '56',  '3', 'Non-binary'),
    ('5', 'SKU5', '147', '66',  '27', 'Non-binary'),
    ('6', 'SKU6', '65', '58',  '15','Male'),
    ('7', 'SKU7', '426', '11',  '17','Female'),
    ('8', 'SKU8', '150', '15',  '10','Female'),
    ('9', 'SKU9', '980', '83',  '27','Unknown'),
    ('10', 'SKU10', '996', '80',  '13', 'Non-binary'),
    ('11', 'SKU11', '960', '60',  '23','Female'),
    ('12', 'SKU12', '336', '85',  '30','Unknown'),
    ('13', 'SKU13', '249', '48', '8','Male'),
    ('14', 'SKU14', '562', '78',  '29', 'Non-binary'),
    ('15', 'SKU15', '469', '69', '8', 'Non-binary'),
    ('16', 'SKU16', '280', '78',  '5','Female'),
    ('17', 'SKU17', '126', '85',  '17','Female'),
    ('18', 'SKU18', '620', '46',  '10','Unknown'),
    ('19', 'SKU19', '187', '94', '11','Unknown'),
    ('20', 'SKU20', '320', '68', '12','Unknown'),
    ('21', 'SKU21', '601', '7',  '25','Unknown'),
    ('22', 'SKU22', '884', '63', '1','Unknown'),
    ('23', 'SKU23', '391', '29', '5','Unknown'),
    ('24', 'SKU24', '209', '2',  '26','Male'),
    ('25', 'SKU25', '142', '52',  '11','Male'),
    ('26', 'SKU26', '353', '48',  '16','Male'),
    ('27', 'SKU27', '352', '62',  '9','Unknown'),
    ('28', 'SKU28', '394', '24',  '15','Female'),
    ('29', 'SKU29', '253', '67',  '5','Female'),
    ('30', 'SKU30', '327', '35', '26','Male'),
    ('31', 'SKU31', '168', '44', '17','Male'),
    ('32', 'SKU32', '781', '64', '13','Unknown'),
    ('33', 'SKU33', '616', '95', '17', 'Non-binary'),
    ('34', 'SKU34', '602', '21',  '26','Unknown'),
    ('35', 'SKU35', '449', '85',  '27','Female'),
    ('36', 'SKU36', '963', '28',  '23','Female'),
    ('37', 'SKU37', '963', '21', '8','Female'),
    ('38', 'SKU38', '705', '88', '1', 'Non-binary'),
    ('39', 'SKU39', '176', '34', '29','Female'),
    ('40', 'SKU40', '933', '39', '20','Female'),
    ('41', 'SKU41', '556', '38', '19','Female'),
    ('42', 'SKU42', '155', '57', '27','Female'),
    ('43', 'SKU43', '598', '85', '29','Unknown'),
    ('44', 'SKU44', '919', '72', '19','Female'),
    ('45', 'SKU45', '24', '52',  '7','Male'),
    ('46', 'SKU46', '859', '6',  '29', 'Non-binary'),
    ('47', 'SKU47', '910', '51', '15','Male'),
    ('48', 'SKU48', '29', '9',  '16', 'Non-binary'),
    ('49', 'SKU49', '99', '9',  '24','Unknown'),
    ('50', 'SKU50', '633', '82', '23','Female'),
    ('51', 'SKU51', '154', '52', '4','Male'),
    ('52', 'SKU52', '820', '11', '11','Male'),
    ('53', 'SKU53', '242', '54', '25','Male'),
    ('54', 'SKU54', '622', '61', '22', 'Non-binary'),
    ('55', 'SKU55', '701', '11', '11','Male'),
    ('56', 'SKU56', '93', '83', '23', 'Non-binary'),
    ('57', 'SKU57', '227', '51', '18','Unknown'),
    ('58', 'SKU58', '896', '44', '5', 'Non-binary'),
    ('59', 'SKU59', '484', '26', '16', 'Non-binary'),
    ('60', 'SKU60', '380', '72', '27','Female'),
    ('61', 'SKU61', '117', '36', '23','Unknown'),
    ('62', 'SKU62', '270', '40', '2','Unknown'),
    ('63', 'SKU63', '246', '10', '19', 'Non-binary'),
    ('64', 'SKU64', '134', '75', '27','Female'),
    ('65', 'SKU65', '457', '54', '24','Male'),
    ('66', 'SKU66', '704', '19', '17','Female'),
    ('67', 'SKU67', '513', '71', '9','Unknown'),
    ('68', 'SKU68', '163', '58', '8', 'Non-binary'),
    ('69', 'SKU69', '511', '27', '1', 'Non-binary'),
    ('70', 'SKU70', '32',  '22',  '12','Female'),
    ('71', 'SKU71', '637', '26', '2','Female'),
    ('72', 'SKU72', '478', '77', '29', 'Non-binary'),
    ('73', 'SKU73', '375', '66', '25','Male'),
    ('74', 'SKU74', '904', '1',  '6','Female'),
    ('75', 'SKU75', '106', '56', '20', 'Non-binary'),
    ('76', 'SKU76', '241', '22',  '1','Male'),
    ('77', 'SKU77', '359', '57',  '28','Unknown'),
    ('78', 'SKU78', '946', '51',  '4','Unknown'),
    ('79', 'SKU79', '198', '20',  '25', 'Non-binary'),
    ('80', 'SKU80', '872', '41',  '14','Unknown'),
    ('81', 'SKU81', '774', '8',  '6','Unknown'),
    ('82', 'SKU82', '336', '72',  '19','Unknown'),
    ('83', 'SKU83', '663', '7',  '24','Unknown'),
    ('84', 'SKU84', '618', '80', '26','Unknown'),
    ('85', 'SKU85', '25',  '66',  '18','Female'),
    ('86', 'SKU86', '223', '22', '14','Unknown'),
    ('87', 'SKU87', '79',  '55',  '7','Male'),
    ('88', 'SKU88', '737', '85', '18','Male'),
    ('89', 'SKU89', '134', '27',  '1','Unknown'),
    ('90', 'SKU90', '320', '96', '18', 'Non-binary'),
    ('91', 'SKU91', '916', '85',  '22','Male'),
    ('92', 'SKU92', '276', '10',  '25','Male'),
    ('93', 'SKU93', '114', '66', '17','Unknown'),
    ('94', 'SKU94', '987', '72',  '26','Unknown'),
    ('95', 'SKU95', '672', '26',  '14','Unknown'),
    ('96', 'SKU96', '324', '32',  '2', 'Non-binary'),
    ('97', 'SKU97', '62', '4',  '19','Male'),
    ('98', 'SKU98', '913', '27', '1','Female'),
    ('99', 'SKU99', '627', '59', '8','Unknown')

-- 3- Suppliers Table

INSERT INTO [Suppliers] ([SupID], [sup_name], [delv_location], [Supplier_lt]) VALUES
    ('0', 'Supplier 3', 'Mumbai', '29'),
    ('1', 'Supplier 3', 'Mumbai', '23'),
    ('2', 'Supplier 1', 'Mumbai', '12'),
    ('3', 'Supplier 5', 'Kolkata', '24'),
    ('4', 'Supplier 1', 'Delhi', '5'),
    ('5', 'Supplier 4', 'Bangalore', '10'),
    ('6', 'Supplier 3', 'Kolkata', '14'),
    ('7', 'Supplier 4', 'Bangalore', '22'),
    ('8', 'Supplier 4', 'Mumbai', '13'),
    ('9', 'Supplier 2', 'Chennai', '29'),
    ('10', 'Supplier 5', 'Kolkata', '18'),
    ('11', 'Supplier 2', 'Kolkata', '28'),
    ('12', 'Supplier 4', 'Kolkata', '3'),
    ('13', 'Supplier 5', 'Bangalore', '23'),
    ('14', 'Supplier 1', 'Kolkata', '25'),
    ('15', 'Supplier 1', 'Bangalore', '14'),
    ('16', 'Supplier 1', 'Bangalore', '3'),
    ('17', 'Supplier 1', 'Chennai', '7'),
    ('18', 'Supplier 2', 'Kolkata', '18'),
    ('19', 'Supplier 4', 'Chennai', '20'),
    ('20', 'Supplier 1', 'Chennai', '29'),
    ('21', 'Supplier 5', 'Chennai', '19'),
    ('22', 'Supplier 4', 'Kolkata', '22'),
    ('23', 'Supplier 5', 'Kolkata', '11'),
    ('24', 'Supplier 2', 'Bangalore', '28'),
    ('25', 'Supplier 4', 'Kolkata', '19'),
    ('26', 'Supplier 2', 'Bangalore', '26'),
    ('27', 'Supplier 5', 'Mumbai', '25'),
    ('28', 'Supplier 1', 'Mumbai', '13'),
    ('29', 'Supplier 1', 'Kolkata', '16'),
    ('30', 'Supplier 4', 'Kolkata', '27'),
    ('31', 'Supplier 3', 'Chennai', '24'),
    ('32', 'Supplier 3', 'Kolkata', '30'),
    ('33', 'Supplier 5', 'Chennai', '1'),
    ('34', 'Supplier 1', 'Chennai', '4'),
    ('35', 'Supplier 1', 'Delhi', '3'),
    ('36', 'Supplier 2', 'Delhi', '26'),
    ('37', 'Supplier 3', 'Kolkata', '24'),
    ('38', 'Supplier 5', 'Mumbai', '10'),
    ('39', 'Supplier 2', 'Kolkata', '30'),
    ('40', 'Supplier 1', 'Kolkata', '18'),
    ('41', 'Supplier 4', 'Chennai', '18'),
    ('42', 'Supplier 5', 'Bangalore', '26'),
    ('43', 'Supplier 5', 'Mumbai', '1'),
    ('44', 'Supplier 2', 'Delhi', '7'),
    ('45', 'Supplier 2', 'Chennai', '25'),
    ('46', 'Supplier 3', 'Chennai', '18'),
    ('47', 'Supplier 1', 'Kolkata', '10'),
    ('48', 'Supplier 2', 'Mumbai', '9'),
    ('49', 'Supplier 5', 'Delhi', '28'),
    ('50', 'Supplier 2', 'Delhi', '20'),
    ('51', 'Supplier 5', 'Bangalore', '18'),
    ('52', 'Supplier 1', 'Mumbai', '10'),
    ('53', 'Supplier 1', 'Delhi', '1'),
    ('54', 'Supplier 1', 'Kolkata', '26'),
    ('55', 'Supplier 2', 'Delhi', '27'),
    ('56', 'Supplier 1', 'Mumbai', '24'),
    ('57', 'Supplier 2', 'Delhi', '21'),
    ('58', 'Supplier 3', 'Delhi', '18'),
    ('59', 'Supplier 1', 'Kolkata', '11'),
    ('60', 'Supplier 4', 'Mumbai', '29'),
    ('61', 'Supplier 4', 'Kolkata', '14'),
    ('62', 'Supplier 2', 'Mumbai', '13'),
    ('63', 'Supplier 3', 'Bangalore', '18'),
    ('64', 'Supplier 1', 'Delhi', '17'),
    ('65', 'Supplier 5', 'Kolkata', '16'),
    ('66', 'Supplier 2', 'Bangalore', '2'),
    ('67', 'Supplier 4', 'Kolkata', '9'),
    ('68', 'Supplier 1', 'Bangalore', '22'),
    ('69', 'Supplier 1', 'Bangalore', '21'),
    ('70', 'Supplier 4', 'Chennai', '13'),
    ('71', 'Supplier 4', 'Delhi', '1'),
    ('72', 'Supplier 1', 'Chennai', '25'),
    ('73', 'Supplier 2', 'Bangalore', '25'),
    ('74', 'Supplier 3', 'Bangalore', '5'),
    ('75', 'Supplier 3', 'Chennai', '8'),
    ('76', 'Supplier 3', 'Delhi', '28'),
    ('77', 'Supplier 2', 'Mumbai', '6'),
    ('78', 'Supplier 1', 'Bangalore', '20'),
    ('79', 'Supplier 5', 'Chennai', '24'),
    ('80', 'Supplier 5', 'Chennai', '4'),
    ('81', 'Supplier 1', 'Mumbai', '4'),
    ('82', 'Supplier 3', 'Chennai', '27'),
    ('83', 'Supplier 2', 'Mumbai', '21'),
    ('84', 'Supplier 1', 'Kolkata', '23'),
    ('85', 'Supplier 3', 'Bangalore', '8'),
    ('86', 'Supplier 4', 'Delhi', '5'),
    ('87', 'Supplier 2', 'Mumbai', '4'),
    ('88', 'Supplier 4', 'Chennai', '21'),
    ('89', 'Supplier 2', 'Delhi', '12'),
    ('90', 'Supplier 4', 'Mumbai', '18'),
    ('91', 'Supplier 3', 'Mumbai', '28'),
    ('92', 'Supplier 4', 'Mumbai', '10'),
    ('93', 'Supplier 5', 'Chennai', '28')

-- 4- Manufacturing Table 

INSERT INTO [Manufacturing] ([manufuct_Id], [SKU], [SupID], [prod_volum], [manfuct_lt], [manfuct_cost], [inspect_resl], [def_rate]) VALUES
    ('0', 'SKU0', '0', '215', '29', '46.27987924', 'Pending', '0.226410361'),
    ('1', 'SKU1', '1', '517', '30', '33.61676895', 'Pending', '4.854068026'),
    ('2', 'SKU2', '2', '971', '27', '30.68801935', 'Pending', '4.580592619'),
    ('3', 'SKU3', '3', '937', '18', '35.6247414', 'Fail', '4.746648621'),
    ('4', 'SKU4', '4', '414', '3', '92.0651606', 'Fail', '3.145579523'),
    ('5', 'SKU5', '5', '104', '17', '56.76647556', 'Fail', '2.779193512'),
    ('6', 'SKU6', '6', '314', '24', '1.08506857', 'Pending', '1.000910619'),
    ('7', 'SKU7', '7', '564', '1', '99.4661086', 'Fail', '0.398177187'),
    ('8', 'SKU8', '8', '769', '8', '11.42302714', 'Pending', '2.709862691'),
    ('9', 'SKU9', '9', '963', '23', '47.95760163', 'Pending', '3.844614479'),
    ('10', 'SKU10', '10', '830', '5', '96.52735279', 'Pass', '1.727313928'),
    ('11', 'SKU11', '11', '362', '11', '27.59236309', 'Pending', '0.021169821'),
    ('12', 'SKU12', '12', '563', '3', '32.32128621', 'Fail', '2.161253748'),
    ('13', 'SKU13', '13', '173', '10', '97.82905011', 'Pending', '1.63107423'),
    ('14', 'SKU14', '14', '558', '14', '5.79143663', 'Pending', '0.100682852'),
    ('15', 'SKU15', '15', '580', '7', '97.12128175', 'Pass', '2.264405761'),
    ('16', 'SKU16', '16', '399', '21', '77.1063425', 'Pass', '1.012563089'),
    ('17', 'SKU17', '17', '453', '16', '47.67968037', 'Fail', '0.102020755'),
    ('18', 'SKU18', '18', '374', '17', '27.10798085', 'Pending', '2.231939111'),
    ('19', 'SKU19', '19', '694', '16', '82.37332059', 'Fail', '3.646450865'),
    ('20', 'SKU20', '20', '309', '6', '65.68625961', 'Pass', '4.231416574'),
    ('21', 'SKU21', '21', '791', '4', '61.73572895', 'Pending', '0.018607568'),
    ('22', 'SKU22', '22', '780', '28', '50.12083961', 'Fail', '2.591275473'),
    ('23', 'SKU23', '23', '568', '29', '98.60995724', 'Pending', '1.342291563'),
    ('24', 'SKU24', '24', '447', '3', '40.3823597', 'Pending', '3.691310293'),
    ('25', 'SKU25', '25', '934', '23', '78.28038312', 'Pending', '3.797231217'),
    ('26', 'SKU26', '26', '171', '4', '15.97222976', 'Pass', '2.119319737'),
    ('27', 'SKU27', '27', '291', '4', '10.52824507', 'Fail', '2.864667838'),
    ('28', 'SKU28', '28', '171', '7', '59.42938181', 'Fail', '0.815757079'),
    ('29', 'SKU29', '29', '329', '7', '39.29287559', 'Pass', '3.878098937'),
    ('30', 'SKU30', '30', '806', '30', '51.6348934', 'Pending', '0.965394705'),
    ('31', 'SKU31', '31', '461', '8', '60.25114566', 'Pending', '2.989000007'),
    ('32', 'SKU32', '32', '737', '7', '29.69246715', 'Pass', '1.946036119'),
    ('33', 'SKU33', '33', '251', '23', '23.85342751', 'Fail', '3.541046012'),
    ('34', 'SKU34', '34', '452', '10', '10.75427282', 'Pass', '0.646604559'),
    ('35', 'SKU35', '35', '367', '2', '58.00478704', 'Pass', '0.541154098'),
    ('36', 'SKU36', '36', '671', '19', '45.53136424', 'Fail', '3.805533379'),
    ('37', 'SKU37', '37', '867', '15', '34.34327747', 'Pending', '2.610288085'),
    ('38', 'SKU38', '38', '841', '12', '5.930693646', 'Pending', '0.613326899'),
    ('39', 'SKU39', '39', '791', '6', '9.005807429', 'Fail', '1.451972204'),
    ('40', 'SKU40', '40', '793', '1', '88.1794071', 'Pending', '4.213269431'),
    ('41', 'SKU41', '41', '892', '7', '95.33206455', 'Fail', '0.045302262'),
    ('42', 'SKU42', '42', '179', '7', '96.42282064', 'Fail', '4.939255289'),
    ('43', 'SKU43', '43', '206', '23', '26.27736596', 'Pending', '0.372304768'),
    ('44', 'SKU44', '44', '834', '18', '22.55410662', 'Fail', '2.96262632'),
    ('45', 'SKU45', '45', '794', '25', '66.31254444', 'Pass', '3.219604612'),
    ('46', 'SKU46', '46', '870', '23', '77.32235321', 'Pending', '3.648610593'),
    ('47', 'SKU47', '47', '964', '20', '19.71299291', 'Pending', '0.380573587'),
    ('48', 'SKU48', '48', '109', '18', '23.12636358', 'Fail', '1.698112541'),
    ('49', 'SKU49', '49', '177', '28', '14.14781544', 'Pass', '2.825813985'),
    ('50', 'SKU50', '50', '306', '21', '45.17875792', 'Fail', '4.754800805'),
    ('51', 'SKU51', '51', '673', '28', '14.19032834', 'Pending', '1.772951172'),
    ('52', 'SKU52', '52', '727', '27', '9.166849149', 'Pending', '2.122471619'),
    ('53', 'SKU53', '53', '631', '17', '83.34405899', 'Pending', '1.410347576'),
    ('54', 'SKU54', '54', '497', '29', '30.18602338', 'Pass', '2.478771976'),
    ('55', 'SKU55', '55', '918', '5', '30.32354526', 'Fail', '4.548919659'),
    ('56', 'SKU56', '56', '826', '28', '12.83628457', 'Pass', '1.173755495'),
    ('57', 'SKU57', '57', '588', '25', '67.77962299', 'Pending', '2.51117483'),
    ('58', 'SKU58', '58', '396', '7', '65.04741509', 'Fail', '1.73037472'),
    ('59', 'SKU59', '59', '176', '4', '1.900762244', 'Fail', '0.447194015'),
    ('60', 'SKU60', '60', '929', '24', '87.21305782', 'Fail', '2.853090617'),
    ('61', 'SKU61', '61', '480', '12', '78.70239397', 'Fail', '4.367470538'),
    ('62', 'SKU62', '62', '751', '14', '21.04864273', 'Pass', '1.874001404'),
    ('63', 'SKU63', '63', '736', '10', '20.07500398', 'Pending', '3.63284329'),
    ('64', 'SKU64', '64', '328', '6', '8.693042426', 'Fail', '0.159486315'),
    ('65', 'SKU65', '65', '358', '21', '1.597222743', 'Fail', '4.911095955'),
    ('66', 'SKU66', '3', '867', '28', '42.08443674', 'Fail', '3.448063288'),
    ('67', 'SKU67', '52', '198', '11', '7.057876147', 'Pass', '0.131955444'),
    ('68', 'SKU68', '66', '375', '18', '97.11358156', 'Fail', '1.983467872'),
    ('69', 'SKU69', '67', '862', '7', '77.62776581', 'Pending', '1.362387989'),
    ('70', 'SKU70', '68', '775', '16', '11.44078182', 'Pass', '1.830575599'),
    ('71', 'SKU71', '68', '258', '10', '30.66167748', 'Pending', '2.078750608'),
    ('72', 'SKU72', '69', '152', '11', '55.7604929', 'Pending', '3.213329607'),
    ('73', 'SKU73', '70', '444', '4', '46.8702388', 'Fail', '4.620546065'),
    ('74', 'SKU74', '71', '919', '9', '80.58085216', 'Fail', '0.396612724'),
    ('75', 'SKU75', '72', '759', '11', '48.06478264', 'Pass', '2.030069089'),
    ('76', 'SKU76', '73', '985', '24', '64.3235978', 'Pending', '2.180037452'),
    ('77', 'SKU77', '54', '334', '5', '42.95244475', 'Pass', '3.055141818'),
    ('78', 'SKU78', '27', '858', '21', '71.12651472', 'Pending', '4.096881332'),
    ('79', 'SKU79', '74', '228', '12', '57.87090292', 'Pending', '0.165871627'),
    ('80', 'SKU80', '75', '202', '5', '76.96122802', 'Fail', '2.849662199'),
    ('81', 'SKU81', '76', '698', '1', '19.78959294', 'Pending', '2.547547122'),
    ('82', 'SKU82', '77', '955', '26', '4.465278435', 'Pending', '4.137877049'),
    ('83', 'SKU83', '78', '443', '5', '97.7305938', 'Fail', '0.773006134'),
    ('84', 'SKU84', '79', '589', '22', '33.80863651', 'Pass', '4.843456577'),
    ('85', 'SKU85', '80', '211', '2', '69.92934552', 'Fail', '1.374429'),
    ('86', 'SKU86', '81', '569', '18', '74.60897', 'Pass', '2.051512931'),
    ('87', 'SKU87', '82', '523', '17', '28.69699682', 'Fail', '3.693737788'),
    ('88', 'SKU88', '83', '953', '11', '68.18491906', 'Pending', '0.722204402'),
    ('89', 'SKU89', '84', '370', '11', '46.60387338', 'Pending', '1.907665734'),
    ('90', 'SKU90', '85', '585', '8', '85.67596334', 'Pass', '1.219382224'),
    ('91', 'SKU91', '86', '207', '28', '39.7728825', 'Pending', '0.626001858'),
    ('92', 'SKU92', '87', '671', '29', '62.6126904', 'Pass', '0.333431825'),
    ('93', 'SKU93', '88', '824', '20', '35.63365234', 'Fail', '4.165781795'),
    ('94', 'SKU94', '89', '908', '14', '60.38737861', 'Pass', '1.463607498'),
    ('95', 'SKU95', '90', '450', '26', '58.89068577', 'Pending', '1.21088213'),
    ('96', 'SKU96', '91', '648', '28', '17.80375633', 'Pending', '3.872047681'),
    ('97', 'SKU97', '92', '535', '13', '65.76515593', 'Fail', '3.376237835'),
    ('98', 'SKU98', '93', '581', '9', '5.604690864', 'Pending', '2.908122169'),
    ('99', 'SKU99', '9', '921', '2', '38.07289852', 'Fail', '0.346027291')

-- 5- Shipping Table

INSERT INTO [Shipping] ([Shipping_Id], [SKU], [SupID], [shipping_lt], [shipping_carr], [shipping_cost], [trans_modes], [Route], [total_costs]) VALUES
    ('0', 'SKU0', '0', '4', 'Carrier B', '2.956572139', 'Road', 'Route B', '187.7520755'),
    ('1', 'SKU1', '1', '2', 'Carrier A', '9.716574771', 'Road', 'Route B', '503.0655791'),
    ('2', 'SKU2', '2', '2', 'Carrier B', '8.054479262', 'Air', 'Route C', '141.9202818'),
    ('3', 'SKU3', '3', '6', 'Carrier C', '1.729568564', 'Rail', 'Route A', '254.7761592'),
    ('4', 'SKU4', '4', '8', 'Carrier A', '3.890547916', 'Air', 'Route A', '923.4406317'),
    ('5', 'SKU5', '5', '3', 'Carrier B', '4.444098864', 'Road', 'Route A', '235.4612367'),
    ('6', 'SKU6', '6', '8', 'Carrier C', '3.880763303', 'Sea', 'Route A', '134.3690969'),
    ('7', 'SKU7', '7', '1', 'Carrier B', '2.348338784', 'Road', 'Route C', '802.0563118'),
    ('8', 'SKU8', '8', '7', 'Carrier C', '3.404733857', 'Sea', 'Route B', '505.5571342'),
    ('9', 'SKU9', '9', '1', 'Carrier A', '7.166645291', 'Rail', 'Route B', '995.9294615'),
    ('10', 'SKU10', '10', '2', 'Carrier C', '8.673211211', 'Road', 'Route B', '806.1031777'),
    ('11', 'SKU11', '11', '1', 'Carrier A', '4.523943124', 'Air', 'Route A', '126.7230334'),
    ('12', 'SKU12', '12', '4', 'Carrier A', '1.32527401', 'Road', 'Route B', '402.9687891'),
    ('13', 'SKU13', '13', '9', 'Carrier A', '9.537283061', 'Road', 'Route B', '547.2410052'),
    ('14', 'SKU14', '14', '5', 'Carrier B', '2.039770189', 'Air', 'Route B', '929.23529'),
    ('15', 'SKU15', '15', '7', 'Carrier B', '2.422039723', 'Sea', 'Route B', '127.8618'),
    ('16', 'SKU16', '16', '1', 'Carrier B', '4.191324586', 'Air', 'Route A', '865.5257798'),
    ('17', 'SKU17', '17', '9', 'Carrier C', '3.585418958', 'Air', 'Route C', '670.9343908'),
    ('18', 'SKU18', '18', '8', 'Carrier C', '4.339224714', 'Sea', 'Route A', '593.4802587'),
    ('19', 'SKU19', '19', '3', 'Carrier A', '4.742635883', 'Road', 'Route C', '477.3076311'),
    ('20', 'SKU20', '20', '6', 'Carrier A', '8.878334651', 'Air', 'Route B', '493.8712153'),
    ('21', 'SKU21', '21', '6', 'Carrier B', '6.037883769', 'Air', 'Route C', '523.3609147'),
    ('22', 'SKU22', '22', '10', 'Carrier A', '9.567648921', 'Rail', 'Route C', '205.5719958'),
    ('23', 'SKU23', '23', '7', 'Carrier A', '2.924857601', 'Rail', 'Route A', '196.3294461'),
    ('24', 'SKU24', '24', '8', 'Carrier C', '9.741291689', 'Air', 'Route A', '758.7247726'),
    ('25', 'SKU25', '25', '3', 'Carrier C', '2.231073681', 'Road', 'Route B', '458.5359457'),
    ('26', 'SKU26', '26', '4', 'Carrier B', '6.507548621', 'Rail', 'Route A', '617.8669165'),
    ('27', 'SKU27', '27', '8', 'Carrier C', '7.406750953', 'Sea', 'Route B', '762.4591822'),
    ('28', 'SKU28', '28', '4', 'Carrier B', '9.898140508', 'Air', 'Route A', '123.4370275'),
    ('29', 'SKU29', '29', '7', 'Carrier B', '8.100973145', 'Road', 'Route B', '764.9353759'),
    ('30', 'SKU30', '30', '7', 'Carrier B', '8.954528315', 'Road', 'Route C', '880.0809882'),
    ('31', 'SKU31', '31', '4', 'Carrier B', '2.679660965', 'Rail', 'Route C', '609.3792066'),
    ('32', 'SKU32', '32', '4', 'Carrier C', '6.599104901', 'Road', 'Route A', '761.1739095'),
    ('33', 'SKU33', '33', '9', 'Carrier C', '4.858270503', 'Sea', 'Route A', '371.2552955'),
    ('34', 'SKU34', '34', '7', 'Carrier A', '1.019487571', 'Road', 'Route B', '510.3580004'),
    ('35', 'SKU35', '35', '8', 'Carrier C', '5.28818999', 'Sea', 'Route C', '553.4204712'),
    ('36', 'SKU36', '36', '3', 'Carrier B', '2.107951267', 'Air', 'Route C', '403.8089742'),
    ('37', 'SKU37', '37', '9', 'Carrier A', '1.532655274', 'Sea', 'Route A', '183.932968'),
    ('38', 'SKU38', '38', '5', 'Carrier B', '9.235931437', 'Air', 'Route B', '339.6728699'),
    ('39', 'SKU39', '39', '3', 'Carrier A', '5.562503779', 'Air', 'Route B', '653.6729946'),
    ('40', 'SKU40', '40', '8', 'Carrier C', '7.22959514', 'Road', 'Route A', '529.808724'),
    ('41', 'SKU41', '41', '8', 'Carrier B', '5.773263744', 'Sea', 'Route A', '275.5243711'),
    ('42', 'SKU42', '42', '4', 'Carrier C', '7.526248327', 'Road', 'Route A', '635.6571205'),
    ('43', 'SKU43', '43', '9', 'Carrier B', '3.694021268', 'Air', 'Route A', '716.0441198'),
    ('44', 'SKU44', '44', '6', 'Carrier C', '7.577449657', 'Rail', 'Route A', '610.4532696'),
    ('45', 'SKU45', '45', '6', 'Carrier B', '5.215155009', 'Rail', 'Route A', '495.305697'),
    ('46', 'SKU46', '46', '8', 'Carrier B', '4.070955837', 'Road', 'Route B', '380.4359371'),
    ('47', 'SKU47', '47', '9', 'Carrier B', '8.978750756', 'Rail', 'Route A', '581.6023551'),
    ('48', 'SKU48', '48', '3', 'Carrier C', '7.095833157', 'Rail', 'Route B', '768.651914'),
    ('49', 'SKU49', '49', '6', 'Carrier C', '2.505621033', 'Rail', 'Route A', '336.8901685'),
    ('50', 'SKU50', '50', '10', 'Carrier A', '6.247860915', 'Rail', 'Route B', '496.2486503'),
    ('51', 'SKU51', '51', '1', 'Carrier A', '4.783000558', 'Road', 'Route A', '694.9823176'),
    ('52', 'SKU52', '52', '1', 'Carrier B', '8.63105218', 'Air', 'Route C', '602.8984988'),
    ('53', 'SKU53', '53', '3', 'Carrier B', '1.013486566', 'Air', 'Route B', '750.7378407'),
    ('54', 'SKU54', '54', '3', 'Carrier B', '4.305103471', 'Road', 'Route B', '814.0699966'),
    ('55', 'SKU55', '55', '5', 'Carrier A', '5.014364955', 'Sea', 'Route B', '323.012928'),
    ('56', 'SKU56', '56', '5', 'Carrier C', '1.774429714', 'Air', 'Route B', '832.2108087'),
    ('57', 'SKU57', '57', '1', 'Carrier B', '9.160558535', 'Rail', 'Route A', '482.1912386'),
    ('58', 'SKU58', '58', '7', 'Carrier A', '4.938438565', 'Road', 'Route B', '110.3643352'),
    ('59', 'SKU59', '59', '7', 'Carrier B', '7.293722597', 'Air', 'Route A', '312.5742736'),
    ('60', 'SKU60', '60', '8', 'Carrier C', '4.381368158', 'Rail', 'Route A', '430.169097'),
    ('61', 'SKU61', '61', '7', 'Carrier C', '9.030340423', 'Air', 'Route A', '164.3665282'),
    ('62', 'SKU62', '62', '7', 'Carrier C', '7.291701389', 'Sea', 'Route C', '320.8465158'),
    ('63', 'SKU63', '63', '4', 'Carrier A', '2.457933528', 'Sea', 'Route A', '687.2861779'),
    ('64', 'SKU64', '64', '6', 'Carrier C', '4.585353468', 'Air', 'Route C', '771.2250847'),
    ('65', 'SKU65', '65', '8', 'Carrier C', '6.580541348', 'Rail', 'Route C', '555.8591037'),
    ('66', 'SKU66', '3', '8', 'Carrier A', '2.216142729', 'Road', 'Route A', '393.8433486'),
    ('67', 'SKU67', '52', '9', 'Carrier C', '9.147811545', 'Sea', 'Route C', '169.2718014'),
    ('68', 'SKU68', '66', '8', 'Carrier B', '1.194251865', 'Rail', 'Route A', '299.7063031'),
    ('69', 'SKU69', '67', '3', 'Carrier B', '9.70528679', 'Air', 'Route A', '207.6632062'),
    ('70', 'SKU70', '68', '4', 'Carrier B', '6.315717755', 'Road', 'Route C', '183.2728987'),
    ('71', 'SKU71', '68', '6', 'Carrier A', '9.228190317', 'Road', 'Route A', '405.1670679'),
    ('72', 'SKU72', '69', '9', 'Carrier A', '6.59961416', 'Rail', 'Route B', '677.9445698'),
    ('73', 'SKU73', '70', '5', 'Carrier B', '1.512936837', 'Road', 'Route A', '866.4728001'),
    ('74', 'SKU74', '71', '5', 'Carrier A', '5.23765465', 'Rail', 'Route A', '341.5526568'),
    ('75', 'SKU75', '72', '10', 'Carrier C', '2.473897761', 'Air', 'Route C', '873.129648'),
    ('76', 'SKU76', '73', '10', 'Carrier A', '7.054538337', 'Rail', 'Route A', '997.4134501'),
    ('77', 'SKU77', '54', '4', 'Carrier B', '6.780946626', 'Road', 'Route B', '852.5680989'),
    ('78', 'SKU78', '27', '5', 'Carrier B', '8.467049771', 'Sea', 'Route C', '323.5922034'),
    ('79', 'SKU79', '74', '1', 'Carrier B', '6.496325364', 'Air', 'Route C', '351.5042193'),
    ('80', 'SKU80', '75', '2', 'Carrier C', '2.833184679', 'Sea', 'Route B', '787.7798505'),
    ('81', 'SKU81', '76', '5', 'Carrier B', '4.066277502', 'Rail', 'Route B', '276.7783359'),
    ('82', 'SKU82', '77', '1', 'Carrier A', '4.708181874', 'Road', 'Route C', '589.9785556'),
    ('83', 'SKU83', '78', '8', 'Carrier B', '4.949839578', 'Road', 'Route A', '682.9710182'),
    ('84', 'SKU84', '79', '10', 'Carrier A', '8.381615625', 'Air', 'Route B', '465.457006'),
    ('85', 'SKU85', '80', '2', 'Carrier C', '8.249168705', 'Road', 'Route B', '842.68683'),
    ('86', 'SKU86', '81', '6', 'Carrier B', '1.45430531', 'Rail', 'Route A', '264.2548898'),
    ('87', 'SKU87', '82', '10', 'Carrier A', '6.575803798', 'Sea', 'Route B', '879.3592177'),
    ('88', 'SKU88', '83', '7', 'Carrier A', '3.801253133', 'Sea', 'Route A', '103.916248'),
    ('89', 'SKU89', '84', '8', 'Carrier B', '9.929816245', 'Rail', 'Route B', '517.4999739'),
    ('90', 'SKU90', '85', '7', 'Carrier B', '7.674430708', 'Rail', 'Route B', '990.0784725'),
    ('91', 'SKU91', '86', '7', 'Carrier B', '7.471514084', 'Rail', 'Route B', '996.778315'),
    ('92', 'SKU92', '87', '8', 'Carrier B', '4.469500026', 'Rail', 'Route B', '230.0927825'),
    ('93', 'SKU93', '88', '1', 'Carrier C', '7.006432059', 'Air', 'Route A', '823.5238459'),
    ('94', 'SKU94', '89', '9', 'Carrier B', '6.942945942', 'Rail', 'Route B', '846.665257'),
    ('95', 'SKU95', '90', '9', 'Carrier B', '8.63033887', 'Air', 'Route A', '778.8642414'),
    ('96', 'SKU96', '91', '3', 'Carrier C', '5.352878044', 'Road', 'Route A', '188.7421411'),
    ('97', 'SKU97', '92', '9', 'Carrier A', '7.904845611', 'Road', 'Route A', '540.1324229'),
    ('98', 'SKU98', '93', '7', 'Carrier B', '1.409801095', 'Rail', 'Route A', '882.1988635'),
    ('99', 'SKU99', '9', '6', 'Carrier B', '1.311023756', 'Rail', 'Route B', '210.743009')




--final code of all tables:

select P.SKU, p.p_type, P.Price, p.avail_per, o.no_prod_sold, o.cust_gender, p.stock_per, o.customer_lt, o.order_qun,Sh.shipping_lt,Sh.shipping_carr,Sh.shipping_cost,S.sup_name,S.delv_location, S.Supplier_lt, M.prod_volum, M.manfuct_lt, M.manfuct_cost, M.inspect_resl, M.def_rate, Sh.trans_modes, Sh.Route, Sh.total_costs
from orders2 o join Products P
on P.SKU=O.SKU
join Manufacturing M
on M.SKU=P.SKU
join Shipping Sh
on P.SKU=Sh.SKU
join Suppliers S
on Sh.SupID=S.SupID


-- analysis questions

--1- cosmetics
--suppliers
select s.sup_name,AVG(s.supplier_lt) as average_s_lead_time
from Suppliers s join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by s.sup_name
order by average_s_lead_time

select s.sup_name,avg(sh.total_costs) as average_total_costs
from Suppliers s join Shipping Sh
on S.SupID=Sh.SupID
JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by s.sup_name
order by average_total_costs

select s.sup_name,AVG(m.def_rate) as average_defect_rate
from Suppliers s join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by s.sup_name
order by average_defect_rate



--carriers
SELECT sh.shipping_carr,AVG(sh.shipping_lt) AS average_shipping_lead_time
FROM Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
GROUP BY sh.shipping_carr
ORDER BY average_shipping_lead_time


select shipping_carr,avg(shipping_cost) as average_shipping_costs
FROM Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by shipping_carr
order by average_shipping_costs

select sh.shipping_carr,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by sh.shipping_carr
order by average_defect_rate


--Transportation mode

select trans_modes,AVG(shipping_lt) as average_shipping_lead_time
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by trans_modes
order by average_shipping_lead_time

select sh.trans_modes,avg(sh.shipping_cost) as average_shipping_costs
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by sh.trans_modes
order by average_shipping_costs

select sh.trans_modes,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by sh.trans_modes
order by average_defect_rate

-- Routes

select Route,AVG(shipping_lt) as average_shipping_lead_time
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by Route
order by average_shipping_lead_time

select Route,avg(shipping_cost) as average_shipping_costs
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by Route
order by average_shipping_costs

select sh.Route,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'cosmetics'
group by sh.Route
order by average_defect_rate

--2--Skincare
--suppliers
select s.sup_name,AVG(s.supplier_lt) as average_s_lead_time
from Suppliers s join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by s.sup_name
order by average_s_lead_time

select s.sup_name,avg(sh.total_costs) as average_total_costs
from Suppliers s join Shipping Sh
on S.SupID=Sh.SupID
JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by s.sup_name
order by average_total_costs

select s.sup_name,AVG(m.def_rate) as average_defect_rate
from Suppliers s join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by s.sup_name
order by average_defect_rate



--carriers
SELECT sh.shipping_carr,AVG(sh.shipping_lt) AS average_shipping_lead_time
FROM Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
GROUP BY sh.shipping_carr
ORDER BY average_shipping_lead_time


select shipping_carr,avg(shipping_cost) as average_shipping_costs
FROM Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by shipping_carr
order by average_shipping_costs

select sh.shipping_carr,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by sh.shipping_carr
order by average_defect_rate


--Transportation mode

select trans_modes,AVG(shipping_lt) as average_shipping_lead_time
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by trans_modes
order by average_shipping_lead_time

select sh.trans_modes,avg(sh.shipping_cost) as average_shipping_costs
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by sh.trans_modes
order by average_shipping_costs

select sh.trans_modes,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by sh.trans_modes
order by average_defect_rate

-- Routes

select Route,AVG(shipping_lt) as average_shipping_lead_time
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by Route
order by average_shipping_lead_time

select Route,avg(shipping_cost) as average_shipping_costs
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by Route
order by average_shipping_costs

select sh.Route,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'skincare'
group by sh.Route
order by average_defect_rate


--3--Haircare
--suppliers
select s.sup_name,AVG(s.supplier_lt) as average_s_lead_time
from Suppliers s join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by s.sup_name
order by average_s_lead_time

select s.sup_name,avg(sh.total_costs) as average_total_costs
from Suppliers s join Shipping Sh
on S.SupID=Sh.SupID
JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by s.sup_name
order by average_total_costs

select s.sup_name,AVG(m.def_rate) as average_defect_rate
from Suppliers s join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by s.sup_name
order by average_defect_rate



--carriers
SELECT sh.shipping_carr,AVG(sh.shipping_lt) AS average_shipping_lead_time
FROM Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
GROUP BY sh.shipping_carr
ORDER BY average_shipping_lead_time


select shipping_carr,avg(shipping_cost) as average_shipping_costs
FROM Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by shipping_carr
order by average_shipping_costs

select sh.shipping_carr,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by sh.shipping_carr
order by average_defect_rate


--Transportation mode

select trans_modes,AVG(shipping_lt) as average_shipping_lead_time
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by trans_modes
order by average_shipping_lead_time

select sh.trans_modes,avg(sh.shipping_cost) as average_shipping_costs
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by sh.trans_modes
order by average_shipping_costs

select sh.trans_modes,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by sh.trans_modes
order by average_defect_rate

-- Routes

select Route,AVG(shipping_lt) as average_shipping_lead_time
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by Route
order by average_shipping_lead_time

select Route,avg(shipping_cost) as average_shipping_costs
from Shipping sh JOIN Products p
ON sh.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by Route
order by average_shipping_costs

select sh.Route,AVG(m.def_rate) as average_defect_rate
from Shipping sh join Suppliers s
on Sh.SupID=s.SupID
join Manufacturing M
on S.SupID=m.SupID
JOIN Products p
ON m.SKU = p.SKU
WHERE p.p_type = 'haircare'
group by sh.Route
order by average_defect_rate


--createing stock_per_groups

SELECT 
    SKU,
    p_type,
    stock_per,
    CASE
        WHEN stock_per < 50 THEN 'Low'
        WHEN stock_per >= 50 AND stock_per < 80 THEN 'Medium'
        ELSE 'High'
    END AS stock_group
FROM 
    project

--creating avail_per_groups

SELECT 
    SKU,
    p_type,
    avail_per,
    CASE
        WHEN avail_per < 50 THEN 'Low'
        WHEN avail_per >= 50 AND avail_per < 80 THEN 'Medium'
        ELSE 'High'
    END AS avail_group
FROM 
    project;



-- crosstabulation between product type and stock_group

SELECT
    p_type,
    SUM(CASE WHEN stock_per < 50 THEN 1 ELSE 0 END) AS Low,
    SUM(CASE WHEN stock_per >= 50 AND stock_per < 80 THEN 1 ELSE 0 END) AS Medium,
    SUM(CASE WHEN stock_per >= 80 THEN 1 ELSE 0 END) AS High,
    COUNT(*) AS Total,
    ROUND(SUM(CASE WHEN stock_per < 50 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Low_Percent,
    ROUND(SUM(CASE WHEN stock_per >= 50 AND stock_per < 80 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Medium_Percent,
    ROUND(SUM(CASE WHEN stock_per >=80 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS High_Percent
FROM
    project
GROUP BY
    p_type
ORDER BY
    p_type;



-- crosstabulation between product type and Avail_group

SELECT
    p_type,
    SUM(CASE WHEN avail_per < 50 THEN 1 ELSE 0 END) AS Low,
    SUM(CASE WHEN avail_per >= 50 AND avail_per < 80 THEN 1 ELSE 0 END) AS Medium,
    SUM(CASE WHEN avail_per >= 80 THEN 1 ELSE 0 END) AS High,
    COUNT(*) AS Total,
    ROUND(SUM(CASE WHEN avail_per < 50 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Low_Percent,
    ROUND(SUM(CASE WHEN avail_per >= 50 AND avail_per < 80 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Medium_Percent,
    ROUND(SUM(CASE WHEN avail_per >=80 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS High_Percent
FROM
    project
GROUP BY
    p_type
ORDER BY
    p_type;


-- cross table between stock_group and avail_group and order quantity

WITH grouped_project AS (
    SELECT *,
           CASE 
               WHEN stock_per >= 80 THEN 'High'
               WHEN stock_per >= 50 THEN 'Medium'
               ELSE 'Low'
           END AS stock_group,
           CASE 
               WHEN avail_per >= 80 THEN 'High'
               WHEN avail_per >= 50 THEN 'Medium'
               ELSE 'Low'
           END AS avail_group
    FROM project
),
total_orders AS (
    SELECT SUM(order_qun) AS total_qty
    FROM grouped_project
)
SELECT
    stock_group,
    SUM(CASE WHEN avail_group = 'High' THEN order_qun ELSE 0 END) AS High,
    ROUND(SUM(CASE WHEN avail_group = 'High' THEN order_qun ELSE 0 END) * 100.0 / (SELECT total_qty FROM total_orders), 1) AS High_Percent,
    
    SUM(CASE WHEN avail_group = 'Medium' THEN order_qun ELSE 0 END) AS Medium,
    ROUND(SUM(CASE WHEN avail_group = 'Medium' THEN order_qun ELSE 0 END) * 100.0 / (SELECT total_qty FROM total_orders), 1) AS Medium_Percent,
    
    SUM(CASE WHEN avail_group = 'Low' THEN order_qun ELSE 0 END) AS Low,
    ROUND(SUM(CASE WHEN avail_group = 'Low' THEN order_qun ELSE 0 END) * 100.0 / (SELECT total_qty FROM total_orders), 1) AS Low_Percent,
    
    SUM(order_qun) AS Total
FROM grouped_project
GROUP BY stock_group
ORDER BY CASE stock_group
            WHEN 'High' THEN 1
            WHEN 'Medium' THEN 2
            WHEN 'Low' THEN 3
            ELSE 4
         END;

-----create cross tabulation between gender, delv_location and order_qun

SELECT
    gender,
    ISNULL([Delhi], 0) AS Delhi,
    ISNULL([Mumbai], 0) AS Mumbai,
    ISNULL([Kolkata], 0) AS Kolkata,
    ISNULL([Bangalore], 0) AS Bangalore,
	ISNULL([Chennai], 0) AS Chennai,
    (ISNULL([Delhi], 0) + ISNULL([Mumbai], 0) + ISNULL([Kolkata], 0) + ISNULL([Bangalore], 0)+ ISNULL([Chennai], 0) ) AS Total_Orders
FROM
(
    SELECT gender, delv_location, order_qun
    FROM project
) AS source_table
PIVOT
(
    SUM(order_qun)
    FOR delv_location IN ([Delhi], [Mumbai], [Kolkata], [Bangalore], [Chennai])
) AS pivot_table
ORDER BY gender;


-----create cross tabulation between gender, delv_location and no of prod sold

SELECT
    gender,
    ISNULL([Delhi], 0) AS Delhi,
    ISNULL([Mumbai], 0) AS Mumbai,
    ISNULL([Kolkata], 0) AS Kolkata,
    ISNULL([Bangalore], 0) AS Bangalore,
	ISNULL([Chennai], 0) AS Chennai,
    (ISNULL([Delhi], 0) + ISNULL([Mumbai], 0) + ISNULL([Kolkata], 0) + ISNULL([Bangalore], 0)+ ISNULL([Chennai], 0) ) AS Total_Orders
FROM
(
    SELECT gender, delv_location, no_prod_sold
    FROM project
) AS source_table
PIVOT
(
    SUM(no_prod_sold)
    FOR delv_location IN ([Delhi], [Mumbai], [Kolkata], [Bangalore], [Chennai])
) AS pivot_table
ORDER BY gender;



--create descriptive table that shows the sum of revenue for each gender

WITH total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM project
)
SELECT
    gender,
    SUM(revenue) AS Total_Revenue,
    ROUND(SUM(revenue) * 100.0 / (SELECT total_rev FROM total_revenue), 2) AS Revenue_Percent
FROM
    project
GROUP BY
    gender
ORDER BY
    gender;

----create descriptive table that shows the sum of revenue for each Route

    WITH total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM project
)
SELECT
    Routes,
    SUM(revenue) AS Total_Revenue,
    ROUND(SUM(revenue) * 100.0 / (SELECT total_rev FROM total_revenue), 2) AS Revenue_Percent
FROM
    project
GROUP BY
    Routes
ORDER BY
    Routes;


----create descriptive table that shows the sum of revenue for each shipping_carr

    WITH total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM project
)
SELECT
    shipping_carr,
    SUM(revenue) AS Total_Revenue,
    ROUND(SUM(revenue) * 100.0 / (SELECT total_rev FROM total_revenue), 2) AS Revenue_Percent
FROM
    project
GROUP BY
    shipping_carr
ORDER BY
    shipping_carr;

----create descriptive table that shows the sum of revenue for each transportation mode

    WITH total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM project
)
SELECT
    trans_modes,
    SUM(revenue) AS Total_Revenue,
    ROUND(SUM(revenue) * 100.0 / (SELECT total_rev FROM total_revenue), 2) AS Revenue_Percent
FROM
    project
GROUP BY
    trans_modes
ORDER BY
    trans_modes;


----create descriptive table that shows the sum of revenue for each delivery location

    WITH total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM project
)
SELECT
    delv_location,
    SUM(revenue) AS Total_Revenue,
    ROUND(SUM(revenue) * 100.0 / (SELECT total_rev FROM total_revenue), 2) AS Revenue_Percent
FROM
    project
GROUP BY
    delv_location
ORDER BY
    delv_location;

----create descriptive table that shows the sum of revenue for each supplier

    WITH total_revenue AS (
    SELECT SUM(revenue) AS total_rev
    FROM project
)
SELECT
    sup_name,
    SUM(revenue) AS Total_Revenue,
    ROUND(SUM(revenue) * 100.0 / (SELECT total_rev FROM total_revenue), 2) AS Revenue_Percent
FROM
    project
GROUP BY
    sup_name
ORDER BY
    sup_name;


-- create Pass measure

SELECT 
    SKU,
    p_type,
    inspect_resl,
    CASE
        WHEN inspect_resl ='Pass' THEN 1
        ELSE 0
    END AS Pass
FROM 
    project;

-- create AQL measure

SELECT 
    SKU,
    p_type,
    def_rate,
    CASE
        WHEN def_rate < 1 THEN 'Excellent'
        WHEN def_rate >= 1 AND def_rate <=2 THEN 'Acceptable'
        ELSE 'Action Required'
    END AS AQL
FROM 
    project;
