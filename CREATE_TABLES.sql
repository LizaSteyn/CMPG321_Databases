
--Create Fire Event
CREATE TABLE FIRE_EVENT (
    Event_ID        NUMBER(10) CONSTRAINT PK_FIRE_EVENT PRIMARY KEY,
    Event_Name      VARCHAR2(100 CHAR) NOT NULL,
    Event_Lat       FLOAT(9) NOT NULL,
    Event_Long      FLOAT(9) NOT NULL,
    Event_AreaSize  FLOAT(9) NOT NULL,
    Event_LivesLost NUMBER
);

--Create Local Government Area(LGA)
CREATE TABLE LGA (
    LGA_Code       NUMBER(10) CONSTRAINT PK_LGA PRIMARY KEY,
    LGA_Name       VARCHAR2(50) NOT NULL,
    LGA_Area       FLOAT(9) NOT NULL,
    LGA_Size       FLOAT(9) NOT NULL,
    LGA_CEO        VARCHAR2(100) NOT NULL,
    LGA_ContactNum VARCHAR2(10 CHAR) NOT NULL,
    CONSTRAINT UNQ_LGA_CONTACTNUM UNIQUE(LGA_ContactNum),
    CONSTRAINT UNQ_LGA_CEO UNIQUE(LGA_CEO),
    CONSTRAINT CHECK_LGA_PHONE CHECK(LENGTH(LGA_ContactNum) = 10)
);

--Create Owner Type (Individual, Business OR Body Corporate)
CREATE TABLE OWNER_TYPE (
    Owner_Type          NUMBER(10) CONSTRAINT PK_OWNER_TYPE PRIMARY KEY,
    Type_Description    VARCHAR2(50 CHAR) NOT NULL,
    CONSTRAINT UNQ_OWNER_TYPE UNIQUE(Type_Description),
    CONSTRAINT CHECK_OWNER_TYPE CHECK(Type_Description IN ('Individual', 'Business', 'Body Corporate'))
);

--Create Property Type(Residential, Farm or Business)
CREATE TABLE PROPERTY_TYPE (
    Type_ID         NUMBER CONSTRAINT PK_PROP_TYPE PRIMARY KEY,
    Prop_Type       VARCHAR2(25) NOT NULL,
    CONSTRAINT UNQ_PROP_TYPE UNIQUE(Prop_Type),
    CONSTRAINT CHECK_PROP_TYPE CHECK(Prop_Type IN ('Residential', 'Farm', 'Business'))
);

--Create Insurer
CREATE TABLE INSURANCE (
    Insurance_Code       NUMBER(10) CONSTRAINT PK_INSURANCE PRIMARY KEY,
    Insurance_Name       VARCHAR2(50) NOT NULL,
    Insurance_ContactNum CHAR(10) NOT NULL,
    CONSTRAINT UNQ_INSURANCE_CONTACTNUM UNIQUE(Insurance_ContactNum),
    CONSTRAINT CHECK_INSURANCE_PHONE CHECK(LENGTH(Insurance_ContactNum) = 10)
);

--Create Assessor
CREATE TABLE ASSESSOR (
    Assessor_ID             NUMBER(10) CONSTRAINT PK_ASSESSOR PRIMARY KEY,
    Assessor_Name           VARCHAR2(50) NOT NULL,
    Assessor_Surname        VARCHAR2(50) NOT NULL,
    Assessor_ContactNum     CHAR(10) NOT NULL,
    CONSTRAINT UNQ_ASSESSOR_CONTACTNUM UNIQUE(Assessor_ContactNum),
    CONSTRAINT CHECK_PHONE CHECK(LENGTH(Assessor_ContactNum) = 10)
);

--CREATE Fire LGA to indicate where fires took place
CREATE TABLE FIRE_LGA (
    Event_ID        NUMBER(10) NOT NULL,
    LGA_Code        NUMBER(10) NOT NULL,
    Event_Date      DATE NOT NULL,
    CONSTRAINT PK_FIRE_LGA PRIMARY KEY(Event_ID, LGA_Code),
    CONSTRAINT FK1_FIRE_LGA FOREIGN KEY(Event_ID) REFERENCES FIRE_EVENT(Event_ID),
    CONSTRAINT FK2_FIRE_LGA FOREIGN KEY(LGA_Code) REFERENCES LGA(LGA_Code)
);

--Create Owner of property table
CREATE TABLE OWNER (
    Owner_ID              NUMBER(10) CONSTRAINT PK_OWNER PRIMARY KEY,
    Owner_Type            NUMBER(10) NOT NULL,
    Owner_ContactNum      NUMBER(10) NOT NULL,
    Owner_Name            VARCHAR2(50 CHAR),
    Owner_Surname         VARCHAR2(50 CHAR),
    Bus_Type              VARCHAR2(50 CHAR),
    Bus_Reg_Num           VARCHAR2(14 CHAR),
    BC_Employer           VARCHAR2(50 CHAR),
    CONSTRAINT FK1_OWNER FOREIGN KEY(Owner_Type) REFERENCES OWNER_TYPE(Owner_Type),
    CONSTRAINT CHECK_OWNER_CONTACTNUM CHECK(LENGTH(Owner_ContactNum) = 10),
    CONSTRAINT CHECK_BUS_REG_NUM CHECK(LENGTH(Bus_Reg_Num) <= 14)
);


--Create Property table to indicate property attributes
CREATE TABLE PROPERTY (
    Prop_ID               NUMBER(10) CONSTRAINT PK_PROPERTY PRIMARY KEY,
    LGA_Code              NUMBER(10) NOT NULL,
    Type_ID               NUMBER(10) NOT NULL,
    Owner_ID              NUMBER(10) NOT NULL,
    Prop_City             VARCHAR2(50) NOT NULL,
    Prop_Suburb           VARCHAR2(50) NOT NULL,
    Prop_StreetName       VARCHAR2(50) NOT NULL,
    Prop_Size             FLOAT NOT NULL,
    CONSTRAINT FK1_PROPERTY FOREIGN KEY(LGA_Code) REFERENCES LGA(LGA_Code),
    CONSTRAINT FK2_PROPERTY FOREIGN KEY(Type_ID) REFERENCES PROPERTY_TYPE(Type_ID),
    CONSTRAINT FK3_PROPERTY FOREIGN KEY(Owner_ID) REFERENCES OWNER(Owner_ID)
);

--Create building entity to associate with buildings built on a specific property
CREATE TABLE BUILDING (
    Building_ID              NUMBER(10) NOT NULL,
    Prop_ID                  NUMBER(10) NOT NULL,
    Insurance_Code           NUMBER(10) NOT NULL,
    Date_Approved            DATE NOT NULL,
    Building_Size            FLOAT NOT NULL,
    Building_Class           CHAR(2) NOT NULL,
    CONSTRAINT PK_BUILDING PRIMARY KEY(Building_ID, Prop_ID),
    CONSTRAINT FK1_BUILDING FOREIGN KEY(Prop_ID) REFERENCES PROPERTY(Prop_ID),
    CONSTRAINT FK2_BUILDING FOREIGN KEY(Insurance_Code) REFERENCES INSURANCE(Insurance_Code)
);

--Create Assessor History entity to keep record of assessor's employment history
CREATE TABLE ASSESSOR_HISTORY (
    Insurance_Code           NUMBER(10) NOT NULL,
    Assessor_ID              NUMBER(10) NOT NULL,
    Start_Date               DATE NOT NULL,
    End_Date                 DATE,
    CONSTRAINT PK_ASSESSOR_HISTORY PRIMARY KEY(Insurance_Code, Assessor_ID),
    CONSTRAINT FK1_ASSESSOR_HISTORY FOREIGN KEY(Insurance_Code) REFERENCES INSURANCE(Insurance_Code),
    CONSTRAINT FK2_ASSESSOR_HISTORY FOREIGN KEY(Assessor_ID) REFERENCES ASSESSOR(Assessor_ID)
);

--Create the Damage Cost entity to keep track of costs related to building sustained due to fire events
CREATE TABLE DAMAGE_COST (
    Building_ID                       NUMBER(10) NOT NULL,
    Prop_ID                           NUMBER(10) NOT NULL,
    Event_ID                          NUMBER(10) NOT NULL,
    Assessor_ID                       NUMBER(10),
    LGA_Code                          NUMBER(10),
    Damage_Cost                       NUMBER(10,2) NOT NULL,
    is_Destroyed                      CHAR(1) DEFAULT 'N',
    CONSTRAINT PK_DAMAGE_COST PRIMARY KEY(Building_ID, Prop_ID, Event_ID),
    CONSTRAINT FK1_DAMAGE_COST FOREIGN KEY(Building_ID, Prop_ID) REFERENCES BUILDING(Building_ID, Prop_ID),
    CONSTRAINT FK2_DAMAGE_COST FOREIGN KEY(Event_ID) REFERENCES FIRE_EVENT(Event_ID)
);

