DROP SEQUENCE BC_contract_seq ; 
create sequence BC_contract_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_contract_PK_trig 
before insert on BC_contract
for each row 
begin 
select BC_contract_seq.nextval into :new.contract_id from dual; 
end; 
/
alter table BC_contract add dflex date ; 
alter table BC_contract add iflex1 integer ; 
alter table BC_contract add iflex2 integer ; 
alter table BC_contract add vflex1 VARCHAR2 (4000) ; 
alter table BC_contract add vflex2 VARCHAR2 (4000) ; 
alter table BC_contract add vflex3 VARCHAR2 (4000) ; 
alter table BC_contract add created date ; 
alter table BC_contract add created_by VARCHAR2 (255) ; 
alter table BC_contract add row_version_number integer ; 
alter table BC_contract add updated date ; 
alter table BC_contract add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_contract_AUD_trig 
before insert or update on BC_contract 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_dept_seq ; 
create sequence BC_dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_dept_PK_trig 
before insert on BC_dept
for each row 
begin 
select BC_dept_seq.nextval into :new.dept_id from dual; 
end; 
/
alter table BC_dept add dflex date ; 
alter table BC_dept add iflex1 integer ; 
alter table BC_dept add iflex2 integer ; 
alter table BC_dept add vflex1 VARCHAR2 (4000) ; 
alter table BC_dept add vflex2 VARCHAR2 (4000) ; 
alter table BC_dept add vflex3 VARCHAR2 (4000) ; 
alter table BC_dept add created date ; 
alter table BC_dept add created_by VARCHAR2 (255) ; 
alter table BC_dept add row_version_number integer ; 
alter table BC_dept add updated date ; 
alter table BC_dept add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_dept_AUD_trig 
before insert or update on BC_dept 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_note_seq ; 
create sequence BC_note_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_note_PK_trig 
before insert on BC_note
for each row 
begin 
select BC_note_seq.nextval into :new.note_id from dual; 
end; 
/
alter table BC_note add dflex date ; 
alter table BC_note add iflex1 integer ; 
alter table BC_note add iflex2 integer ; 
alter table BC_note add vflex1 VARCHAR2 (4000) ; 
alter table BC_note add vflex2 VARCHAR2 (4000) ; 
alter table BC_note add vflex3 VARCHAR2 (4000) ; 
alter table BC_note add created date ; 
alter table BC_note add created_by VARCHAR2 (255) ; 
alter table BC_note add row_version_number integer ; 
alter table BC_note add updated date ; 
alter table BC_note add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_note_AUD_trig 
before insert or update on BC_note 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE BC_vendor_seq ; 
create sequence BC_vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_vendor_PK_trig 
before insert on BC_vendor
for each row 
begin 
select BC_vendor_seq.nextval into :new.vendor_id from dual; 
end; 
/
alter table BC_vendor add dflex date ; 
alter table BC_vendor add iflex1 integer ; 
alter table BC_vendor add iflex2 integer ; 
alter table BC_vendor add vflex1 VARCHAR2 (4000) ; 
alter table BC_vendor add vflex2 VARCHAR2 (4000) ; 
alter table BC_vendor add vflex3 VARCHAR2 (4000) ; 
alter table BC_vendor add created date ; 
alter table BC_vendor add created_by VARCHAR2 (255) ; 
alter table BC_vendor add row_version_number integer ; 
alter table BC_vendor add updated date ; 
alter table BC_vendor add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_vendor_AUD_trig 
before insert or update on BC_vendor 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_Escalation_seq ; 
create sequence CREO_Escalation_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_Escalation_PK_trig 
before insert on CREO_Escalation
for each row 
begin 
select CREO_Escalation_seq.nextval into :new.escalation_id from dual; 
end; 
/
alter table CREO_Escalation add dflex date ; 
alter table CREO_Escalation add iflex1 integer ; 
alter table CREO_Escalation add iflex2 integer ; 
alter table CREO_Escalation add vflex1 VARCHAR2 (4000) ; 
alter table CREO_Escalation add vflex2 VARCHAR2 (4000) ; 
alter table CREO_Escalation add vflex3 VARCHAR2 (4000) ; 
alter table CREO_Escalation add created date ; 
alter table CREO_Escalation add created_by VARCHAR2 (255) ; 
alter table CREO_Escalation add row_version_number integer ; 
alter table CREO_Escalation add updated date ; 
alter table CREO_Escalation add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_Escalation_AUD_trig 
before insert or update on CREO_Escalation 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_communication_seq ; 
create sequence CREO_communication_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_communication_PK_trig 
before insert on CREO_communication
for each row 
begin 
select CREO_communication_seq.nextval into :new.communication_id from dual; 
end; 
/
alter table CREO_communication add dflex date ; 
alter table CREO_communication add iflex1 integer ; 
alter table CREO_communication add iflex2 integer ; 
alter table CREO_communication add vflex1 VARCHAR2 (4000) ; 
alter table CREO_communication add vflex2 VARCHAR2 (4000) ; 
alter table CREO_communication add vflex3 VARCHAR2 (4000) ; 
alter table CREO_communication add created date ; 
alter table CREO_communication add created_by VARCHAR2 (255) ; 
alter table CREO_communication add row_version_number integer ; 
alter table CREO_communication add updated date ; 
alter table CREO_communication add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_communication_AUD_trig 
before insert or update on CREO_communication 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_contact_seq ; 
create sequence CREO_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_contact_PK_trig 
before insert on CREO_contact
for each row 
begin 
select CREO_contact_seq.nextval into :new.contact_id from dual; 
end; 
/
alter table CREO_contact add dflex date ; 
alter table CREO_contact add iflex1 integer ; 
alter table CREO_contact add iflex2 integer ; 
alter table CREO_contact add vflex1 VARCHAR2 (4000) ; 
alter table CREO_contact add vflex2 VARCHAR2 (4000) ; 
alter table CREO_contact add vflex3 VARCHAR2 (4000) ; 
alter table CREO_contact add created date ; 
alter table CREO_contact add created_by VARCHAR2 (255) ; 
alter table CREO_contact add row_version_number integer ; 
alter table CREO_contact add updated date ; 
alter table CREO_contact add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_contact_AUD_trig 
before insert or update on CREO_contact 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_cost_seq ; 
create sequence CREO_cost_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_cost_PK_trig 
before insert on CREO_cost
for each row 
begin 
select CREO_cost_seq.nextval into :new.cost_id from dual; 
end; 
/
alter table CREO_cost add dflex date ; 
alter table CREO_cost add iflex1 integer ; 
alter table CREO_cost add iflex2 integer ; 
alter table CREO_cost add vflex1 VARCHAR2 (4000) ; 
alter table CREO_cost add vflex2 VARCHAR2 (4000) ; 
alter table CREO_cost add vflex3 VARCHAR2 (4000) ; 
alter table CREO_cost add created date ; 
alter table CREO_cost add created_by VARCHAR2 (255) ; 
alter table CREO_cost add row_version_number integer ; 
alter table CREO_cost add updated date ; 
alter table CREO_cost add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_cost_AUD_trig 
before insert or update on CREO_cost 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_document_seq ; 
create sequence CREO_document_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_document_PK_trig 
before insert on CREO_document
for each row 
begin 
select CREO_document_seq.nextval into :new.id from dual; 
end; 
/
alter table CREO_document add dflex date ; 
alter table CREO_document add iflex1 integer ; 
alter table CREO_document add iflex2 integer ; 
alter table CREO_document add vflex1 VARCHAR2 (4000) ; 
alter table CREO_document add vflex2 VARCHAR2 (4000) ; 
alter table CREO_document add vflex3 VARCHAR2 (4000) ; 
alter table CREO_document add created date ; 
alter table CREO_document add created_by VARCHAR2 (255) ; 
alter table CREO_document add row_version_number integer ; 
alter table CREO_document add updated date ; 
alter table CREO_document add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_document_AUD_trig 
before insert or update on CREO_document 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_issue_seq ; 
create sequence CREO_issue_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_issue_PK_trig 
before insert on CREO_issue
for each row 
begin 
select CREO_issue_seq.nextval into :new.issue_id from dual; 
end; 
/
alter table CREO_issue add dflex date ; 
alter table CREO_issue add iflex1 integer ; 
alter table CREO_issue add iflex2 integer ; 
alter table CREO_issue add vflex1 VARCHAR2 (4000) ; 
alter table CREO_issue add vflex2 VARCHAR2 (4000) ; 
alter table CREO_issue add vflex3 VARCHAR2 (4000) ; 
alter table CREO_issue add created date ; 
alter table CREO_issue add created_by VARCHAR2 (255) ; 
alter table CREO_issue add row_version_number integer ; 
alter table CREO_issue add updated date ; 
alter table CREO_issue add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_issue_AUD_trig 
before insert or update on CREO_issue 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_item_esc_seq ; 
create sequence CREO_item_esc_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_item_esc_PK_trig 
before insert on CREO_item_esc
for each row 
begin 
select CREO_item_esc_seq.nextval into :new.item_esc_id from dual; 
end; 
/
alter table CREO_item_esc add dflex date ; 
alter table CREO_item_esc add iflex1 integer ; 
alter table CREO_item_esc add iflex2 integer ; 
alter table CREO_item_esc add vflex1 VARCHAR2 (4000) ; 
alter table CREO_item_esc add vflex2 VARCHAR2 (4000) ; 
alter table CREO_item_esc add vflex3 VARCHAR2 (4000) ; 
alter table CREO_item_esc add created date ; 
alter table CREO_item_esc add created_by VARCHAR2 (255) ; 
alter table CREO_item_esc add row_version_number integer ; 
alter table CREO_item_esc add updated date ; 
alter table CREO_item_esc add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_item_esc_AUD_trig 
before insert or update on CREO_item_esc 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_lease_seq ; 
create sequence CREO_lease_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_lease_PK_trig 
before insert on CREO_lease
for each row 
begin 
select CREO_lease_seq.nextval into :new.lease_id from dual; 
end; 
/
alter table CREO_lease add dflex date ; 
alter table CREO_lease add iflex1 integer ; 
alter table CREO_lease add iflex2 integer ; 
alter table CREO_lease add vflex1 VARCHAR2 (4000) ; 
alter table CREO_lease add vflex2 VARCHAR2 (4000) ; 
alter table CREO_lease add vflex3 VARCHAR2 (4000) ; 
alter table CREO_lease add created date ; 
alter table CREO_lease add created_by VARCHAR2 (255) ; 
alter table CREO_lease add row_version_number integer ; 
alter table CREO_lease add updated date ; 
alter table CREO_lease add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_lease_AUD_trig 
before insert or update on CREO_lease 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_lease_item_seq ; 
create sequence CREO_lease_item_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_lease_item_PK_trig 
before insert on CREO_lease_item
for each row 
begin 
select CREO_lease_item_seq.nextval into :new.item_id from dual; 
end; 
/
alter table CREO_lease_item add dflex date ; 
alter table CREO_lease_item add iflex1 integer ; 
alter table CREO_lease_item add iflex2 integer ; 
alter table CREO_lease_item add vflex1 VARCHAR2 (4000) ; 
alter table CREO_lease_item add vflex2 VARCHAR2 (4000) ; 
alter table CREO_lease_item add vflex3 VARCHAR2 (4000) ; 
alter table CREO_lease_item add created date ; 
alter table CREO_lease_item add created_by VARCHAR2 (255) ; 
alter table CREO_lease_item add row_version_number integer ; 
alter table CREO_lease_item add updated date ; 
alter table CREO_lease_item add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_lease_item_AUD_trig 
before insert or update on CREO_lease_item 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_link_seq ; 
create sequence CREO_link_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_link_PK_trig 
before insert on CREO_link
for each row 
begin 
select CREO_link_seq.nextval into :new.link_id from dual; 
end; 
/
alter table CREO_link add dflex date ; 
alter table CREO_link add iflex1 integer ; 
alter table CREO_link add iflex2 integer ; 
alter table CREO_link add vflex1 VARCHAR2 (4000) ; 
alter table CREO_link add vflex2 VARCHAR2 (4000) ; 
alter table CREO_link add vflex3 VARCHAR2 (4000) ; 
alter table CREO_link add created date ; 
alter table CREO_link add created_by VARCHAR2 (255) ; 
alter table CREO_link add row_version_number integer ; 
alter table CREO_link add updated date ; 
alter table CREO_link add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_link_AUD_trig 
before insert or update on CREO_link 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_payment_seq ; 
create sequence CREO_payment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_payment_PK_trig 
before insert on CREO_payment
for each row 
begin 
select CREO_payment_seq.nextval into :new.payment_id from dual; 
end; 
/
alter table CREO_payment add dflex date ; 
alter table CREO_payment add iflex1 integer ; 
alter table CREO_payment add iflex2 integer ; 
alter table CREO_payment add vflex1 VARCHAR2 (4000) ; 
alter table CREO_payment add vflex2 VARCHAR2 (4000) ; 
alter table CREO_payment add vflex3 VARCHAR2 (4000) ; 
alter table CREO_payment add created date ; 
alter table CREO_payment add created_by VARCHAR2 (255) ; 
alter table CREO_payment add row_version_number integer ; 
alter table CREO_payment add updated date ; 
alter table CREO_payment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_payment_AUD_trig 
before insert or update on CREO_payment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_property_seq ; 
create sequence CREO_property_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_property_PK_trig 
before insert on CREO_property
for each row 
begin 
select CREO_property_seq.nextval into :new.property_id from dual; 
end; 
/
alter table CREO_property add dflex date ; 
alter table CREO_property add iflex1 integer ; 
alter table CREO_property add iflex2 integer ; 
alter table CREO_property add vflex1 VARCHAR2 (4000) ; 
alter table CREO_property add vflex2 VARCHAR2 (4000) ; 
alter table CREO_property add vflex3 VARCHAR2 (4000) ; 
alter table CREO_property add created date ; 
alter table CREO_property add created_by VARCHAR2 (255) ; 
alter table CREO_property add row_version_number integer ; 
alter table CREO_property add updated date ; 
alter table CREO_property add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_property_AUD_trig 
before insert or update on CREO_property 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

-- Table Relation_30 has a compound primary key so no sequence or trigger was created for it.
