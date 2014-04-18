
CREATE TABLE BC_state
  ( state_id NUMBER NOT NULL , name VARCHAR2 (255)
  ) ;
ALTER TABLE BC_state ADD CONSTRAINT BC_state_PK PRIMARY KEY ( state_id ) ;

CREATE TABLE BC_status
  ( status_id NUMBER NOT NULL , name VARCHAR2 (255)
  ) ;
ALTER TABLE BC_status ADD CONSTRAINT BC_status_PK PRIMARY KEY ( status_id ) ;