--
-- Code Louisville
-- by Patricia Zajia

--
-- CreateInsert Tables for PaintersCoCtrlProposals Database
-- 

------------------------------------------------------------------------------------
-- Table structure for Customers: Customers in a micro company dedicated to painting
--          buildings/houses, who can be individuals, companies
--          and corporation
------------------------------------------------------------------------------------          
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[Customers] (
CustomerId int PRIMARY KEY,
SocialSecurity varchar(15) NOT NULL,
[Name] varchar(25) NOT NULL,
[Address] varchar(25) NOT NULL,
City varchar(25) NOT NULL,
[State] varchar(2) NOT NULL,
Zip varchar(25) NOT NULL,
Email varchar(30) NOT NULL,
Phone varchar(15) NOT NULL,
Contact_Name varchar(25) NOT NULL,
Contact_Position varchar(25) NOT NULL,
Email_Contact varchar(30) NOT NULL,
Website varchar(30) NOT NULL
)

--
-- Dumping data for Customer -
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[Customers] (CustomerId, SocialSecurity, [NAME], [ADDRESS], CITY, [STATE], ZIP, EMAIL, PHONE, CONTACT_NAME,
CONTACT_POSITION, EMAIL_CONTACT, WEBSITE) VALUES
(1, '1234567890', 'Porfirio Ledezma', '12116 Bay Run Dr.', 'Louisville', 'KY', '40241', 'progresopaintersinc@gmail.com', '(502)437-2923', 'Porfirio Ledezma', 'Owner', 'progresopaintersinc@gmail.com', 'www.progresopaintersinc.com'),
(2, '1234567342', 'WESTPORT GROUP HOMES', '116 Shelbyville Rd', 'Prospect', 'KY', '40244', 'westportgrouphomes@gmail.com', '(502)767-3429', 'Rodrigo Ledezma', 'Project Manager',  'westportgrouphomes@gmail.com', 'www.westportgrouphomes.com'),
(3, '8933457890', 'MEREDITH GROUP Inc.', '12 La Grange Rd.', 'Louisville', 'KY', '40241', 'meredithgroup@yahoo.com', '(502)767-2423', 'James Meredith', 'Accounter',  'progresopaintersinc@gmail.com', 'www.meredithgroup.com'),
(4, '1234123890', 'CASTLEBUILT HOMES', '34116 Brownsboro Rd', 'Prospect', 'KY', '40244', 'castlebuilthomes@gmail', '(502)732-2929', 'William Castleblanco', 'Owner', 'castlebuildhomes@yatt.net', 'www.castlebuilthomes'),
(5, '1233456662', 'WESTPORT GROUP HOMES', '14516 Shelbyville Rd', 'Prospect', 'KY', '40244', 'westporthomes@gmail.com', '(502)557-3429', 'Rodrigo Frias', 'Project Manager', 'westporthomes@gmail.com', 'www.westporthomes.com')

Select *
From [PaintersCoCtrlProposals].[dbo].[Customers]


------------------------------------------------------------------------------------
-- Table structure for Contractors: Individuals or Companies to whom a Proposal
--            is assigned to work on it.
------------------------------------------------------------------------------------
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[Contractors] (
ContractorId int PRIMARY KEY,
SocialSecurity varchar(15),
[Name] varchar(25) NOT NULL,
[Address] varchar(25) NOT NULL,
City varchar(25) NOT NULL,
[State] varchar(2) NOT NULL,
Zip varchar(25) NOT NULL,
Email varchar(30) NOT NULL,
Phone varchar(15) NOT NULL,
Contact_Name varchar(25) NOT NULL,
Contact_Position varchar(25) NOT NULL,
Contact_Email varchar(30) NOT NULL,
Website varchar(30) NOT NULL
)

--
-- Dumping data for Contractors
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[Contractors] (ContractorId, SocialSecurity, [NAME], [ADDRESS], CITY, [STATE], ZIP, EMAIL, PHONE, CONTACT_NAME,
CONTACT_POSITION, CONTACT_EMAIL, WEBSITE) VALUES
(1, '1234567890', 'Porfirio Ledezma', '12116 Bay Run Dr.', 'Louisville', 'KY', '40241', 'progresopaintersinc@gmail.com', '(502)437-2923', 'Porfirio Ledezma', 'Owner', 'progresopaintersinc@gmail.com', 'www.progresopaintersinc.com'),
(2, '3454567890', 'Rodrigo Ledezma', '12116 Bay Run Dr.', 'Louisville', 'KY', '40241', 'progresopaintersinc@gmail.com', '(502)437-2923', 'Rodrigo Ledezma', 'Owner', 'progresopaintersinc@gmail.com', 'www.progresopaintersinc.com'),
(3, '4561237342', 'Alvarado Painters', '13416 Shelbyville Rd', 'Louisville', 'KY', '40244', 'alvaradopainters@gmail.com', '(502)763-3429', 'Adolfo Alvarado', 'Project Manager',  'www.alvaradopainters@gmail.com', 'www.alvaradopainters.com')

Select *
From [PaintersCoCtrlProposals].[dbo].[Contractors]

--------------------------------------------------------------------------------------
-- Table structure for Group: Classify the different products into categories
-------------------------------------------------------------------------------------- 
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[Categories] (
CategoryId int PRIMARY KEY,
[Description] varchar(25) DEFAULT NULL
)

--
-- Dumping data for Categories -
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[Categories] (CategoryId, [Description]) VALUES
(1, 'Paint'),
(2, 'Trim Wood')

Select *
From [PaintersCoCtrlProposals].[dbo].[Categories]


------------------------------------------------------------------------------------
-- Table structure for Services: Painting and small repair services
--             offered by micro painters companies.
------------------------------------------------------------------------------------
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[Products] (
ProductId int PRIMARY KEY,
CategoryId int FOREIGN KEY REFERENCES Categories(CategoryId),
[Description] varchar(60) NOT NULL,
Price money NOT NULL
)

--
-- Dumping data for Products -

--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[Products] (ProductId, CategoryId, [Description], Price) VALUES
(1, 1, 'Paint the Interiors Walls per Sqf', 8.00),
(2, 1, 'Paint the Porch per Sqf', 8.05),
(3, 1, 'Paint the Room Blue per Sqf', 9.00),
(4, 1, 'Paint the Bedroom per Sqf', 9.00),
(5, 1, 'Paint the Ceiling per Sqf', 9.00),              
(6, 1, 'Paint the Floor per Sqf', 7.50),
(7, 1, 'Paint the Bedroom per Sqf', 9.00),
(8, 1, 'Paint the Roof per Sqf', 9.00),
(9, 1, 'Paint the Garage per Sqf', 9.00),
(10, 2, 'Trim closets per Sqf', 8.5),
(11, 2, 'Trim Shells per Sqf', 9.00)

Select *
From [PaintersCoCtrlProposals].[dbo].[Products]

----------------------------------------------------------------------------------
--
-- Table structure for ContractorServices: The Contractor, assigned to a proposal,
-- have to work all the services that we need in a proposal. This is the purpose of
-- keeping this table.
------------------------------------------------------------------------------------
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[ContractorProducts] (
ContractorId int FOREIGN KEY REFERENCES Contractors(ContractorId),
ProductId int FOREIGN KEY REFERENCES Products(ProductId),
CONSTRAINT ContractorProductsId PRIMARY KEY (ContractorId,ProductId)
)

--
-- Dumping data for table ContractorProducts
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[ContractorProducts] (ContractorId, ProductId) VALUES
(1,1), (2,1), (1,2), (2,2), (3,10), (3,11)

Select *
From [PaintersCoCtrlProposals].[dbo].[ContractorProducts]


------------------------------------------------------------------------------------
--  Table structure for Project: We can observe in micro paint companies that
--  they work for individuals and for housing corporations, these corporations
--  build large housing complexes in different sectors of the town. Then,
--  micro painting companies obtain several buildings in these complex rooms.
--  It is we call projects, for example: The Norton Commons Project
--  will assign 20 buildings to be painted. The additional data in this table
--  refer to the address of the Client or Information Office
--  located in the housing complexes.(Address for Project/Areas/Office)
------------------------------------------------------------------------------------
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[Projects] (
ProjectId int NOT NULL PRIMARY KEY,
CustomerId int FOREIGN KEY REFERENCES Customers(CustomerId),
[Description] varchar(60) NOT NULL,
[Address] varchar(25) NOT NULL,
City varchar(25) NOT NULL,
[State] varchar(2) NOT NULL,
Zip varchar(25) NOT NULL,
[Date] date NOT NULL
)

--
-- Dumping data for table Projects
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[Projects] (ProjectID, CustomerId, [Description], [Address], City, [State], Zip, [Date]) VALUES
(1, 1, 'PAINT FIRST FLOOR HOUSE NOT GARAGE', '12116 Bay Run Dr.', 'Louisville', 'KY', '40241', '10/10/2019'),
(2, 3, 'EXTERNAL PAINT OF ALL WESPORT RD AREA', '16 Westport Rd.', 'Louisville', 'KY', '40222','11/10/2019'),
(3, 5, 'PAINT TWENTY HOUSES', '12116 Bardstown Rd.', 'Louisville', 'KY', '40241','03/01/2020'),
(4, 1, 'PAINT SECOND FLOOR FIRST FLOOR ALL HOUSES', '12116 Bay Run Dr.', 'Louisville', 'KY', '40241','05/10/2020')

Select *
From [PaintersCoCtrlProposals].[dbo].[Projects]
 
 ------------------------------------------------------------------------------------
-- Table structure for Proposals: It is a proposal for a work order, this proposal
--  to paint a certain building is related to a project and assigned to a contractor.
--  A project can have multiple proposals. A proposal have a Contractor.
--    A contractor may have several proposals. The Additional information refers
--  to the address of the building is the job address)
------------------------------------------------------------------------------------
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[Proposals] (
ProposalId int PRIMARY KEY,
ProjectId int FOREIGN KEY REFERENCES Projects(ProjectId),
ContractorsId int FOREIGN KEY REFERENCES Contractors(ContractorId),
[Address] varchar(25) NOT NULL,
City varchar(25) NOT NULL,
[State] varchar(2) NOT NULL,
Zip varchar(25) NOT NULL,
[Date] date NOT NULL,
[PStatus] varchar(25)
)

--
-- Dumping data for Proposals
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[Proposals] (ProposalId, ProjectId, ContractorsId, [Address], City, [State], Zip, [Date], [PStatus]) VALUES
(1, 1, 1, '12116 Bay Run Cir.', 'Louisville', 'KY', '40222','03/10/2020','Working'),
(2, 1, 1, '12116 Bay Run Cir.', 'Louisville', 'KY', '40222','03/10/2020','Working'),
(3, 2, 1, '11621 Westport Rd. Apt.1', 'Louisville', 'KY', '40222','12/19/2020','Working'),
(4, 2, 3, '12163 Westport Rd. Apt.2', 'Louisville', 'KY', '40222','12/25/2020','Finished')

Select *
From [PaintersCoCtrlProposals].[dbo].[Proposals]

------------------------------------------------------------------------------------
-- Table structure for table ProposalProducts: Details of the Proposals
------------------------------------------------------------------------------------
CREATE TABLE [PaintersCoCtrlProposals].[dbo].[ProposalProducts] (
ProposalId int FOREIGN KEY REFERENCES Proposals(ProposalId),
ProductId int FOREIGN KEY REFERENCES Products(ProductId),
Amount int NOT NULL,
Discount decimal(5,2) NOT NULL,
Price money NOT NULL,
Description varchar(60) NOT NULL,
CONSTRAINT ProposalProductsId PRIMARY KEY (ProposalId,ProductId)
)

--
-- Dumping data for table ProposalProducts
--
INSERT INTO [PaintersCoCtrlProposals].[dbo].[ProposalProducts] (ProposalId, ProductId, Amount, Discount, Price, [Description]) VALUES
(1, 1, 1,  8.5, 8.50, 'Removing dust'),
(2, 1, 1,  9.50, 8.50, 'Paint in Green'),
(3, 1, 1,  8.50, 8.50, 'Removing dust'),
(4, 1, 1, 10.0, 8.60, 'No Removing dust'),
(1, 2, 1,  8.50, 9.50, 'Paint in Blue'),
(2, 2, 1,  9.50, 8.50, 'Moving Furniture'),
(3, 2, 1,  8.50, 5.50, 'Paint in Blue'),
(4, 2, 1,  9.50, 8.50, 'Paint in Purple'),
(1, 3, 1, 10.50, 10.50, 'Moving Furniture'),
(2, 3, 1,  9.50, 8.50, 'Paint in Green'),
(3, 3, 1,  9.50, 8.50, 'Paint in Blue'),
(4, 3, 1,  9.50, 8.50, 'Paint in White'),
(1, 4, 1, 11.50, 6.50, 'Moving Furniture'),
(2, 4, 1, 10.50, 8.50, 'Paint in Blue'),
(3, 4, 1, 10.50, 8.50, 'Paint in Blue'),
(4, 4, 1, 11.50, 7.50, 'Moving Furniture'),
(1, 5, 1,  8.5, 8.35, 'Removing dust'),
(2, 5, 1,  9.50, 8.35, 'Paint in Green'),
(3, 5, 1,  8.5, 8.35, 'Removing dust'),
(4, 5, 1, 10.0, 8.35, 'No Removing dust'),
(1, 6, 1,  8.50, 7.44, 'Paint in Blue'),
(2, 6, 1,  9.50, 8.55, 'Moving Furniture'),
(3, 6, 1,  8.50, 10.00, 'Paint in Blue'),
(4, 6, 1,  9.50, 10.00, 'Paint in Purple'),
(1, 7, 1, 10.50, 6.70, 'Moving Furniture'),
(2,  7, 1, 9.50, 4.30, 'Paint in Green'),
(3,  7, 1,  9.50, 6.70, 'Paint in Blue'),
(4,  7, 1,  9.50, 3.40, 'Paint in White'),
(1,  8, 1, 11.50, 6.70, 'Moving Furniture'),
(2,  8, 1, 10.50, 8.90, 'Paint in Blue'),
(3,  8, 1, 10.50, 4.80, 'Paint in Blue'),
(4,  8, 1, 11.50, 5.60, 'Moving Furniture'),
(1,  9, 1,  8.5, 8.80, 'Removing dust'),
(2,  9, 1,  9.50, 5.60, 'Paint in Green'),
(3,  9, 1,  8.5, 8.90, 'Removing dust'),
(4,  9, 1, 10.0, 8.80, 'No Removing dust'),
(1, 10, 1,  8.50, 8.90, 'Paint in Blue'),
(2, 10, 1,  9.50, 5.60, 'Moving Furniture'),
(3, 10, 1,  8.50, 8.80, 'Paint in Blue'),
(4, 10, 1,  9.50, 8.80, 'Paint in White'),
(1, 11, 1, 10.50, 8.90, 'Moving Furniture'),
(2, 11, 1, 9.50, 5.60, 'Paint in White'),
(3, 11, 1,  9.50, 8.90, 'Paint in Blue'),
(4, 11, 1,  9.50, 8.90, 'Paint in White')
 
Select *
From [PaintersCoCtrlProposals].[dbo].[ProposalProducts]