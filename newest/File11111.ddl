DROP SEQUENCE BC_state_seq ; 
create sequence BC_state_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_state_PK_trig 
; 

create or replace trigger BC_state_PK_trig 
before insert on BC_state
for each row 
begin 
select BC_state_seq.nextval into :new.state_id from dual; 
end; 
/

DROP SEQUENCE BC_status_seq ; 
create sequence BC_status_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_status_PK_trig 
; 

create or replace trigger BC_status_PK_trig 
before insert on BC_status
for each row 
begin 
select BC_status_seq.nextval into :new.status_id from dual; 
end; 
/

