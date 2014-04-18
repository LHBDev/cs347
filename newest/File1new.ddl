DROP SEQUENCE BC_service_type_seq ; 
create sequence BC_service_type_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_service_type_PK_trig 
; 

create or replace trigger BC_service_type_PK_trig 
before insert on BC_service_type
for each row 
begin 
select BC_service_type_seq.nextval into :new.type_id from dual; 
end; 
/

