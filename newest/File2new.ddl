DROP SEQUENCE BC_service_type_seq ; 
create sequence BC_service_type_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger BC_service_type_PK_trig 
before insert on BC_service_type
for each row 
begin 
select BC_service_type_seq.nextval into :new.type_id from dual; 
end; 
/
alter table BC_service_type add dflex date ; 
alter table BC_service_type add iflex1 integer ; 
alter table BC_service_type add iflex2 integer ; 
alter table BC_service_type add vflex1 VARCHAR2 (4000) ; 
alter table BC_service_type add vflex2 VARCHAR2 (4000) ; 
alter table BC_service_type add vflex3 VARCHAR2 (4000) ; 
alter table BC_service_type add created date ; 
alter table BC_service_type add created_by VARCHAR2 (255) ; 
alter table BC_service_type add row_version_number integer ; 
alter table BC_service_type add updated date ; 
alter table BC_service_type add updated_by VARCHAR2 (255) ; 
/
create or replace trigger BC_service_type_AUD_trig 
before insert or update on BC_service_type 
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

