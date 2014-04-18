CREATE TABLE BC_service_type
  (
    type_id NUMBER NOT NULL ,
    name    VARCHAR2 (255)
  ) ;
ALTER TABLE BC_service_type ADD CONSTRAINT BC_service_type_PK PRIMARY KEY ( type_id ) ;