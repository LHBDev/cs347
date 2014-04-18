-- Generated by Oracle SQL Developer Data Modeler 4.0.1.836
--   at:        2014-04-16 19:00:08 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE BC_contract CASCADE CONSTRAINTS ;

DROP TABLE BC_dept CASCADE CONSTRAINTS ;

DROP TABLE BC_note CASCADE CONSTRAINTS ;

DROP TABLE BC_vendor CASCADE CONSTRAINTS ;

DROP TABLE CREO_Escalation CASCADE CONSTRAINTS ;

DROP TABLE CREO_communication CASCADE CONSTRAINTS ;

DROP TABLE CREO_contact CASCADE CONSTRAINTS ;

DROP TABLE CREO_cost CASCADE CONSTRAINTS ;

DROP TABLE CREO_document CASCADE CONSTRAINTS ;

DROP TABLE CREO_issue CASCADE CONSTRAINTS ;

DROP TABLE CREO_item_esc CASCADE CONSTRAINTS ;

DROP TABLE CREO_lease CASCADE CONSTRAINTS ;

DROP TABLE CREO_lease_item CASCADE CONSTRAINTS ;

DROP TABLE CREO_link CASCADE CONSTRAINTS ;

DROP TABLE CREO_payment CASCADE CONSTRAINTS ;

DROP TABLE CREO_property CASCADE CONSTRAINTS ;

DROP TABLE Relation_30 CASCADE CONSTRAINTS ;

CREATE TABLE BC_contract
  (
    contract_id          INTEGER NOT NULL ,
    received_date        DATE ,
    initials             VARCHAR2 (255) ,
    purpose              VARCHAR2 (255) ,
    notes                VARCHAR2 (255) ,
    beginning_date       DATE ,
    ending_date          VARCHAR2 (255) ,
    remaining_renewal    INTEGER ,
    remaining_lengths    INTEGER ,
    foreign_contract     CHAR (1) ,
    facility_use_reports VARCHAR2 (255) ,
    service_type         VARCHAR2 (255) ,
    account_type         INTEGER ,
    contract_amount      INTEGER ,
    date_returned        DATE ,
    last_contact_date    DATE ,
    status               VARCHAR2 (255) ,
    signed_by            VARCHAR2 (255) ,
    reviewed_by          VARCHAR2 (255) ,
    signed_date          DATE ,
    OGC                  VARCHAR2 (255) ,
    EVC                  VARCHAR2 (255) ,
    BOR                  VARCHAR2 (255) ,
    docket               VARCHAR2 (255) ,
    docket_date          DATE ,
    system_notes         VARCHAR2 (255) ,
    amendment_version    INTEGER NOT NULL ,
    amendment_total      INTEGER NOT NULL ,
    vendor_id            INTEGER NOT NULL ,
    dept_id              INTEGER NOT NULL ,
    contract_id1         INTEGER NOT NULL ,
    dept_id1             INTEGER NOT NULL ,
    vendor_id1           NUMBER
  ) ;
ALTER TABLE BC_contract ADD CONSTRAINT BC_contract_PK PRIMARY KEY ( contract_id ) ;

CREATE TABLE BC_dept
  (
    dept_id         INTEGER NOT NULL ,
    dept_name       VARCHAR2 (255) ,
    email           VARCHAR2 (255) ,
    primary_contact VARCHAR2 (255)
  ) ;
ALTER TABLE BC_dept ADD CONSTRAINT BC_department_PK PRIMARY KEY ( dept_id ) ;

CREATE TABLE BC_note
  (
    note_id     NUMBER NOT NULL ,
    "date"      DATE ,
    text        VARCHAR2 (4000) ,
    contract_id INTEGER NOT NULL
  ) ;
ALTER TABLE BC_note ADD CONSTRAINT BC_note_PK PRIMARY KEY ( note_id ) ;

CREATE TABLE BC_vendor
  (
    vendor_id   INTEGER NOT NULL ,
    v_address   VARCHAR2 (255) ,
    v_city      VARCHAR2 (255) ,
    v_state     VARCHAR2 (255) ,
    v_zip       VARCHAR2 (255) ,
    v_country   VARCHAR2 (255) ,
    vendor_name VARCHAR2 (255)
  ) ;
ALTER TABLE BC_vendor ADD CONSTRAINT BC_vendor_PK PRIMARY KEY ( vendor_id ) ;

CREATE TABLE CREO_Escalation
  (
    escalation_id INTEGER NOT NULL ,
    "date"        DATE ,
    amount        NUMBER ,
    percentage    INTEGER ,
    description   VARCHAR2 (100) NOT NULL
  ) ;
ALTER TABLE CREO_Escalation ADD CONSTRAINT CREO_Escalation_PK PRIMARY KEY ( escalation_id ) ;

CREATE TABLE CREO_communication
  (
    communication_id        INTEGER NOT NULL ,
    "date"                  DATE ,
    notes                   VARCHAR2 (4000) ,
    CREO_contact_contact_id INTEGER NOT NULL
  ) ;
ALTER TABLE CREO_communication ADD CONSTRAINT CREO_communication_PK PRIMARY KEY ( communication_id ) ;

CREATE TABLE CREO_contact
  (
    contact_id           INTEGER NOT NULL ,
    internal_name        VARCHAR2 (255) ,
    type                 VARCHAR2 (100) DEFAULT 'UT as Tenant' ,
    department           VARCHAR2 (50) ,
    vid                  VARCHAR2 (100) ,
    account_number       VARCHAR2 (100) ,
    primary_contact_name VARCHAR2 (255) ,
    vendor_name          VARCHAR2 (255) ,
    name                 VARCHAR2 (100) ,
    title                VARCHAR2 (50) ,
    phone                VARCHAR2 (25) ,
    fax                  VARCHAR2 (25) ,
    email                VARCHAR2 (100) ,
    address              VARCHAR2 (100) ,
    city                 VARCHAR2 (50) ,
    state                VARCHAR2 (50) ,
    zip_code             VARCHAR2 (25) ,
    country              VARCHAR2 (50) ,
    dept_id              INTEGER NOT NULL
  ) ;
ALTER TABLE CREO_contact ADD CHECK ( type IN ('Contact', 'External Customer', 'UT as Landlord', 'UT as Tenant', 'Vendor', 'Vendor Landlord')) ;
CREATE UNIQUE INDEX CREO_contact__IDX ON CREO_contact ( dept_id ASC ) ;
  ALTER TABLE CREO_contact ADD CONSTRAINT CREO_contact_PK PRIMARY KEY ( contact_id ) ;

CREATE TABLE CREO_cost
  (
    cost_id                 INTEGER NOT NULL ,
    description             VARCHAR2 (100) NOT NULL ,
    amount                  NUMBER ,
    date_incurred           DATE ,
    status                  VARCHAR2 (25) NOT NULL ,
    date_paid               DATE ,
    property_id             INTEGER ,
    item_id                 INTEGER ,
    CREO_contact_contact_id INTEGER
  ) ;
ALTER TABLE CREO_cost ADD CONSTRAINT CREO_cost_PK PRIMARY KEY ( cost_id ) ;

CREATE TABLE CREO_document
  (
    id            INTEGER NOT NULL ,
    filename      VARCHAR2 (4000 BYTE) ,
    file_mimetype VARCHAR2 (512) ,
    file_charset  VARCHAR2 (512) ,
    file_blob BLOB ,
    file_comments           VARCHAR2 (4000) ,
    tags                    VARCHAR2 (4000) ,
    lease_id                INTEGER ,
    property_id             INTEGER ,
    contract_id             INTEGER NOT NULL ,
    CREO_contact_contact_id INTEGER
  ) ;
ALTER TABLE CREO_document ADD CONSTRAINT CREO_document_PK PRIMARY KEY ( id ) ;

CREATE TABLE CREO_issue
  (
    issue_id                INTEGER NOT NULL ,
    description             VARCHAR2 (4000) NOT NULL ,
    due_date                DATE NOT NULL ,
    status                  VARCHAR2 (25) NOT NULL ,
    lease_id                INTEGER ,
    property_id             INTEGER ,
    CREO_contact_contact_id INTEGER
  ) ;
ALTER TABLE CREO_issue ADD CONSTRAINT CREO_issue_PK PRIMARY KEY ( issue_id ) ;

CREATE TABLE CREO_item_esc
  (
    item_esc_id   INTEGER NOT NULL ,
    escalation_id INTEGER NOT NULL ,
    item_id       INTEGER NOT NULL
  ) ;
ALTER TABLE CREO_item_esc ADD CONSTRAINT CREO_item_esc_PK PRIMARY KEY ( item_esc_id ) ;

CREATE TABLE CREO_lease
  (
    lease_id                 INTEGER NOT NULL ,
    type                     VARCHAR2 (100) DEFAULT 'UT as Tenant' ,
    name                     VARCHAR2 (255) NOT NULL ,
    use                      VARCHAR2 (255) ,
    rent_frequency           VARCHAR2 (100) ,
    monthly_income           NUMBER ,
    annual_income            NUMBER ,
    total_rent               NUMBER ,
    renewal_options_number   INTEGER ,
    renewal_options_term     VARCHAR2 (50) ,
    po_number                VARCHAR2 (255) ,
    CREO_contact_contact_id  INTEGER ,
    CREO_contact_contact_id1 INTEGER
  ) ;
ALTER TABLE CREO_lease ADD CHECK ( type IN ('ATM', 'Tower', 'UT as Landlord', 'UT as Tenant')) ;
ALTER TABLE CREO_lease ADD CONSTRAINT CREO_ord_id_pk PRIMARY KEY ( lease_id ) ;

CREATE TABLE CREO_lease_item
  (
    item_id     INTEGER NOT NULL ,
    lease_id    INTEGER NOT NULL ,
    description VARCHAR2 (255) NOT NULL ,
    start_date  DATE ,
    end_date    DATE ,
    rent        NUMBER ,
    property_id INTEGER
  ) ;
ALTER TABLE CREO_lease_item ADD CONSTRAINT CREO_item_ordid_itemid_pk PRIMARY KEY ( item_id ) ;

CREATE TABLE CREO_link
  (
    link_id                 INTEGER NOT NULL ,
    link_text               VARCHAR2 (255 BYTE) ,
    link_target             VARCHAR2 (4000 BYTE) ,
    link_comments           VARCHAR2 (4000) ,
    tags                    VARCHAR2 (4000) ,
    lease_id                INTEGER ,
    property_id             INTEGER ,
    CREO_contact_contact_id INTEGER
  ) ;
ALTER TABLE CREO_link ADD CONSTRAINT CREO_link_PK PRIMARY KEY ( link_id ) ;

CREATE TABLE CREO_payment
  (
    payment_id              INTEGER NOT NULL ,
    item_id                 INTEGER ,
    payment_number          VARCHAR2 (255) ,
    amount                  NUMBER ,
    description             VARCHAR2 (100) ,
    due_date                DATE ,
    payment_data            DATE ,
    total_payments          NUMBER ,
    CREO_contact_contact_id INTEGER
  ) ;
ALTER TABLE CREO_payment ADD CONSTRAINT CREO_payment_PK PRIMARY KEY ( payment_id ) ;

CREATE TABLE CREO_property
  (
    property_id  INTEGER NOT NULL ,
    building     VARCHAR2 (100) ,
    space        VARCHAR2 (255) NOT NULL ,
    square_feet  NUMBER ,
    acreage      NUMBER ,
    price_per_sf NUMBER ,
    annual_rent  NUMBER
  ) ;
ALTER TABLE CREO_property ADD CONSTRAINT CREO_product_id_pk PRIMARY KEY ( property_id ) ;

CREATE TABLE Relation_30
  (
    BC_contract_contract_id INTEGER NOT NULL ,
    BC_vendor_vendor_id     INTEGER NOT NULL
  ) ;
ALTER TABLE Relation_30 ADD CONSTRAINT Relation_30__IDX PRIMARY KEY ( BC_contract_contract_id, BC_vendor_vendor_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            17
-- CREATE INDEX                             1
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
