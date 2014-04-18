DROP SEQUENCE BC_contract_seq ; 
create sequence BC_contract_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_contract_PK_trig 
; 

create or replace trigger BC_contract_PK_trig 
before insert on BC_contract
for each row 
begin 
select BC_contract_seq.nextval into :new.contract_id from dual; 
end; 
/

DROP SEQUENCE BC_dept_seq ; 
create sequence BC_dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_dept_PK_trig 
; 

create or replace trigger BC_dept_PK_trig 
before insert on BC_dept
for each row 
begin 
select BC_dept_seq.nextval into :new.dept_id from dual; 
end; 
/

DROP SEQUENCE BC_note_seq ; 
create sequence BC_note_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_note_PK_trig 
; 

create or replace trigger BC_note_PK_trig 
before insert on BC_note
for each row 
begin 
select BC_note_seq.nextval into :new.note_id from dual; 
end; 
/

DROP SEQUENCE BC_vendor_seq ; 
create sequence BC_vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_vendor_PK_trig 
; 

create or replace trigger BC_vendor_PK_trig 
before insert on BC_vendor
for each row 
begin 
select BC_vendor_seq.nextval into :new.vendor_id from dual; 
end; 
/

DROP SEQUENCE CREO_Escalation_seq ; 
create sequence CREO_Escalation_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_Escalation_PK_trig 
; 

create or replace trigger CREO_Escalation_PK_trig 
before insert on CREO_Escalation
for each row 
begin 
select CREO_Escalation_seq.nextval into :new.escalation_id from dual; 
end; 
/

DROP SEQUENCE CREO_communication_seq ; 
create sequence CREO_communication_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_communication_PK_trig 
; 

create or replace trigger CREO_communication_PK_trig 
before insert on CREO_communication
for each row 
begin 
select CREO_communication_seq.nextval into :new.communication_id from dual; 
end; 
/

DROP SEQUENCE CREO_contact_seq ; 
create sequence CREO_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_contact_PK_trig 
; 

create or replace trigger CREO_contact_PK_trig 
before insert on CREO_contact
for each row 
begin 
select CREO_contact_seq.nextval into :new.contact_id from dual; 
end; 
/

DROP SEQUENCE CREO_cost_seq ; 
create sequence CREO_cost_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_cost_PK_trig 
; 

create or replace trigger CREO_cost_PK_trig 
before insert on CREO_cost
for each row 
begin 
select CREO_cost_seq.nextval into :new.cost_id from dual; 
end; 
/

DROP SEQUENCE CREO_document_seq ; 
create sequence CREO_document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_document_PK_trig 
; 

create or replace trigger CREO_document_PK_trig 
before insert on CREO_document
for each row 
begin 
select CREO_document_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE CREO_issue_seq ; 
create sequence CREO_issue_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_issue_PK_trig 
; 

create or replace trigger CREO_issue_PK_trig 
before insert on CREO_issue
for each row 
begin 
select CREO_issue_seq.nextval into :new.issue_id from dual; 
end; 
/

DROP SEQUENCE CREO_item_esc_seq ; 
create sequence CREO_item_esc_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_item_esc_PK_trig 
; 

create or replace trigger CREO_item_esc_PK_trig 
before insert on CREO_item_esc
for each row 
begin 
select CREO_item_esc_seq.nextval into :new.item_esc_id from dual; 
end; 
/

DROP SEQUENCE CREO_lease_seq ; 
create sequence CREO_lease_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_lease_PK_trig 
; 

create or replace trigger CREO_lease_PK_trig 
before insert on CREO_lease
for each row 
begin 
select CREO_lease_seq.nextval into :new.lease_id from dual; 
end; 
/

DROP SEQUENCE CREO_lease_item_seq ; 
create sequence CREO_lease_item_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_lease_item_PK_trig 
; 

create or replace trigger CREO_lease_item_PK_trig 
before insert on CREO_lease_item
for each row 
begin 
select CREO_lease_item_seq.nextval into :new.item_id from dual; 
end; 
/

DROP SEQUENCE CREO_link_seq ; 
create sequence CREO_link_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_link_PK_trig 
; 

create or replace trigger CREO_link_PK_trig 
before insert on CREO_link
for each row 
begin 
select CREO_link_seq.nextval into :new.link_id from dual; 
end; 
/

DROP SEQUENCE CREO_payment_seq ; 
create sequence CREO_payment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_payment_PK_trig 
; 

create or replace trigger CREO_payment_PK_trig 
before insert on CREO_payment
for each row 
begin 
select CREO_payment_seq.nextval into :new.payment_id from dual; 
end; 
/

DROP SEQUENCE CREO_property_seq ; 
create sequence CREO_property_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CREO_property_PK_trig 
; 

create or replace trigger CREO_property_PK_trig 
before insert on CREO_property
for each row 
begin 
select CREO_property_seq.nextval into :new.property_id from dual; 
end; 
/

-- Table Relation_30 has a compound primary key so no sequence or trigger was created for it.
