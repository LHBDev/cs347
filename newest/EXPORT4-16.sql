set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_default_workspace_id=>350000566724281539
,p_default_application_id=>12160
,p_default_owner=>'BC_SCHEMA'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 12160 - business_contracts
--
-- Application Export:
--   Application:     12160
--   Name:            business_contracts
--   Date and Time:   01:00 Thursday April 17, 2014
--   Exported By:     GREGSTONT@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.01
--   Instance ID:     69326320839772
--
 
-- Application Statistics:
--   Pages:                     16
--     Items:                  186
--     Processes:               35
--     Regions:                 22
--     Buttons:                 43
--     Dynamic Actions:          5
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 5
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                20
--         Region:              36
--         Label:                6
--         List:                19
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:              11
--         Report:              11
--       Shortcuts:              1
--     Globalization:
--     Reports:
 
prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
wwv_flow_audit.remove_audit_trail(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,12160)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'BC_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'business_contracts')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_12160')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'7C87F0F3420FF1B326D3A61FB8D3868DBA19F54E0D9D5345075A196A62568E0C'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>350503613162139746+wwv_flow_api.g_id_offset
,p_application_tab_set=>0
,p_logo_image=>'TEXT:business_contracts'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417005818'
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>26
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>350492330510139722+wwv_flow_api.g_id_offset
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>350503587252139745+wwv_flow_api.g_id_offset
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>350505023742139749+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>350537903798165380+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'Contracts'
,p_tab_text=>'Contracts'
,p_tab_step=>2
,p_tab_also_current_for_pages=>'3'
);
wwv_flow_api.create_tab(
 p_id=>360094024854971513+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'Departments'
,p_tab_text=>'Departments'
,p_tab_step=>15
,p_tab_also_current_for_pages=>'16'
);
wwv_flow_api.create_tab(
 p_id=>361453819242096112+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>50
,p_tab_name=>'Contacts'
,p_tab_text=>'Contacts'
,p_tab_step=>21
,p_tab_also_current_for_pages=>'22'
);
wwv_flow_api.create_tab(
 p_id=>361496013226137228+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>60
,p_tab_name=>'Vendors'
,p_tab_text=>'Vendors'
,p_tab_step=>23
,p_tab_also_current_for_pages=>'24'
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20140415195725'
);
wwv_flow_api.create_page_plug(
 p_id=>350505215174139750+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350494978506139731+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350504709335139749+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350502744911139742+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Contracts'
,p_page_mode=>'NORMAL'
,p_step_title=>'Contracts'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417005400'
);
wwv_flow_api.create_page_plug(
 p_id=>350549890201165403+wwv_flow_api.g_id_offset
,p_plug_name=>'Contracts'
,p_plug_template=>350496024353139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "CONTRACT_ID", ',
'"RECEIVED_DATE",',
'"INITIALS",',
'"PURPOSE",',
'"NOTES",',
'"BEGINNING_DATE",',
'"ENDING_DATE",',
'"REMAINING_RENEWAL",',
'"REMAINING_LENGTHS",',
'"FOREIGN_CONTRACT",',
'"FACILITY_USE_REPORTS",',
'"SERVICE_TYPE",',
'"ACCOUNT_TYPE",',
'"CONTRACT_AMOUNT",',
'"DATE_RETURNED",',
'"LAST_CONTACT_DATE",',
'"STATUS",',
'"SIGNED_BY",',
'"REVIEWED_BY",',
'"SIGNED_DATE",',
'"OGC",',
'"EVC",',
'"BOR",',
'"DOCKET",',
'"DOCKET_DATE",',
'"SYSTEM_NOTES",',
'"AMENDMENT_VERSION",',
'"AMENDMENT_TOTAL",',
'"VENDOR_ID",',
'"DEPT_ID",',
'"CONTRACT_ID1",',
'"DEPT_ID1",',
'"VENDOR_ID1",',
'"DFLEX",',
'"IFLEX1",',
'"IFLEX2",',
'"VFLEX1",',
'"VFLEX2",',
'"VFLEX3",',
'"CREATED",',
'"CREATED_BY",',
'"ROW_VERSION_NUMBER",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_CONTRACT" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>350550034412165404+wwv_flow_api.g_id_offset
,p_name=>'Contracts'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "CONTRACT_ID", ',
'"RECEIVED_DATE",',
'"INITIALS",',
'"PURPOSE",',
'"NOTES",',
'"BEGINNING_DATE",',
'"ENDING_DATE",',
'"REMAINING_RENEWAL",',
'"REMAINING_LENGTHS",',
'"FOREIGN_CONTRACT",',
'"FACILITY_USE_REPORTS",',
'"SERVICE_TYPE",',
'"ACCOUNT_TYPE",',
'"CONTRACT_AMOUNT",',
'"DATE_RETURNED",',
'"LAST_CONTACT_DATE",',
'"STATUS",',
'"SIGNED_BY",',
'"REVIEWED_BY",',
'"SIGNED_DATE",',
'"OGC",',
'"EVC",',
'"BOR",',
'"DOCKET",',
'"DOCKET_DATE",',
'"SYSTEM_NOTES",',
'"AMENDMENT_VERSION",',
'"AMENDMENT_TOTAL",',
'"VENDOR_ID",',
'"DEPT_ID",',
'"CONTRACT_ID1",',
'"DEPT_ID1",',
'"VENDOR_ID1",',
'"DFLEX",',
'"IFLEX1",',
'"IFLEX2",',
'"VFLEX1",',
'"VFLEX2",',
'"VFLEX3",',
'"CREATED",',
'"CREATED_BY",',
'"ROW_VERSION_NUMBER",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_CONTRACT" ',
'  ',
''))
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_CONTRACT,P6_HIDEAMEND:#CONTRACT_ID#,#CONTRACT_ID1#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'GREGSTONT@GMAIL.COM'
,p_internal_uid=>350550034412165404
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550139208165406+wwv_flow_api.g_id_offset
,p_db_column_name=>'CONTRACT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Contract Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550242959165407+wwv_flow_api.g_id_offset
,p_db_column_name=>'RECEIVED_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Received Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550392084165407+wwv_flow_api.g_id_offset
,p_db_column_name=>'INITIALS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Initials'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550410068165407+wwv_flow_api.g_id_offset
,p_db_column_name=>'PURPOSE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Purpose'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550532964165407+wwv_flow_api.g_id_offset
,p_db_column_name=>'NOTES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550663751165408+wwv_flow_api.g_id_offset
,p_db_column_name=>'BEGINNING_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Beginning Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550764032165408+wwv_flow_api.g_id_offset
,p_db_column_name=>'ENDING_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Ending Date'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550818578165408+wwv_flow_api.g_id_offset
,p_db_column_name=>'REMAINING_RENEWAL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Remaining Renewal'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350550966232165408+wwv_flow_api.g_id_offset
,p_db_column_name=>'REMAINING_LENGTHS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Remaining Lengths'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551033554165409+wwv_flow_api.g_id_offset
,p_db_column_name=>'FOREIGN_CONTRACT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Foreign Contract'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551170859165409+wwv_flow_api.g_id_offset
,p_db_column_name=>'FACILITY_USE_REPORTS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Facility Use Reports'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551252768165409+wwv_flow_api.g_id_offset
,p_db_column_name=>'SERVICE_TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Service Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551341787165409+wwv_flow_api.g_id_offset
,p_db_column_name=>'ACCOUNT_TYPE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Account Type'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551428745165409+wwv_flow_api.g_id_offset
,p_db_column_name=>'CONTRACT_AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Contract Amount'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551500427165410+wwv_flow_api.g_id_offset
,p_db_column_name=>'DATE_RETURNED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Date Returned'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551692562165410+wwv_flow_api.g_id_offset
,p_db_column_name=>'LAST_CONTACT_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Contact Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551789647165410+wwv_flow_api.g_id_offset
,p_db_column_name=>'STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551843662165410+wwv_flow_api.g_id_offset
,p_db_column_name=>'SIGNED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Signed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350551976849165410+wwv_flow_api.g_id_offset
,p_db_column_name=>'REVIEWED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Reviewed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552084033165411+wwv_flow_api.g_id_offset
,p_db_column_name=>'SIGNED_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Signed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552134634165411+wwv_flow_api.g_id_offset
,p_db_column_name=>'OGC'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Ogc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552258084165411+wwv_flow_api.g_id_offset
,p_db_column_name=>'EVC'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Evc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552399431165411+wwv_flow_api.g_id_offset
,p_db_column_name=>'BOR'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Bor'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552446007165411+wwv_flow_api.g_id_offset
,p_db_column_name=>'DOCKET'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Docket'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552542290165412+wwv_flow_api.g_id_offset
,p_db_column_name=>'DOCKET_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Docket Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552604780165412+wwv_flow_api.g_id_offset
,p_db_column_name=>'SYSTEM_NOTES'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'System Notes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552716597165412+wwv_flow_api.g_id_offset
,p_db_column_name=>'AMENDMENT_VERSION'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Amendment Version'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552847690165412+wwv_flow_api.g_id_offset
,p_db_column_name=>'AMENDMENT_TOTAL'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Amendment Total'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350552935126165413+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Vendor Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553028731165413+wwv_flow_api.g_id_offset
,p_db_column_name=>'DEPT_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Dept Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553169697165413+wwv_flow_api.g_id_offset
,p_db_column_name=>'CONTRACT_ID1'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Contract Id1'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553287567165413+wwv_flow_api.g_id_offset
,p_db_column_name=>'DEPT_ID1'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Dept Id1'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553315072165413+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_ID1'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Vendor Id1'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553429342165414+wwv_flow_api.g_id_offset
,p_db_column_name=>'DFLEX'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Dflex'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553548033165414+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX1'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Iflex1'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553684755165415+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX2'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Iflex2'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553734355165415+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX1'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Vflex1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553830888165415+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX2'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Vflex2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350553944121165415+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX3'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Vflex3'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350554023884165415+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350554199620165416+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350554251721165416+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350554309796165416+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350554449377165416+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>350554890743165715+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3505549'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CONTRACT_ID:RECEIVED_DATE:INITIALS:PURPOSE:NOTES:BEGINNING_DATE:ENDING_DATE:REMAINING_RENEWAL:REMAINING_LENGTHS:FOREIGN_CONTRACT:FACILITY_USE_REPORTS:SERVICE_TYPE:ACCOUNT_TYPE:CONTRACT_AMOUNT:DATE_RETURNED:LAST_CONTACT_DATE:STATUS:SIGNED_BY:REVIEWED_'
||'BY:SIGNED_DATE:OGC:EVC:BOR:DOCKET:DOCKET_DATE:SYSTEM_NOTES:AMENDMENT_VERSION:AMENDMENT_TOTAL:VENDOR_ID:DEPT_ID:CONTRACT_ID1:DEPT_ID1:VENDOR_ID1:DFLEX:IFLEX1:IFLEX2:VFLEX1:VFLEX2:VFLEX3:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>350554699428165417+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>350549890201165403+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_CONTRACT'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BC_CONTRACT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417004304'
);
wwv_flow_api.create_page_plug(
 p_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on BC_CONTRACT'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>350538334073165382+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3_CONTRACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>350538574708165382+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>350538270756165382+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3_CONTRACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>350538487907165382+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_CONTRACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>350539648822165384+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>350539837807165385+wwv_flow_api.g_id_offset
,p_name=>'P3_CONTRACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350540034008165387+wwv_flow_api.g_id_offset
,p_name=>'P3_RECEIVED_DATE'
,p_item_sequence=>20
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Received Date'
,p_source=>'RECEIVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350540281426165387+wwv_flow_api.g_id_offset
,p_name=>'P3_INITIALS'
,p_item_sequence=>30
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initials'
,p_source=>'INITIALS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350540468886165387+wwv_flow_api.g_id_offset
,p_name=>'P3_PURPOSE'
,p_item_sequence=>40
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purpose'
,p_source=>'PURPOSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350540647833165388+wwv_flow_api.g_id_offset
,p_name=>'P3_NOTES'
,p_item_sequence=>50
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350540819937165388+wwv_flow_api.g_id_offset
,p_name=>'P3_BEGINNING_DATE'
,p_item_sequence=>60
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Beginning Date'
,p_source=>'BEGINNING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350541073477165388+wwv_flow_api.g_id_offset
,p_name=>'P3_ENDING_DATE'
,p_item_sequence=>70
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ending Date'
,p_source=>'ENDING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350541205760165388+wwv_flow_api.g_id_offset
,p_name=>'P3_REMAINING_RENEWAL'
,p_item_sequence=>80
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remaining Renewal'
,p_source=>'REMAINING_RENEWAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>350541444480165389+wwv_flow_api.g_id_offset
,p_name=>'P3_REMAINING_LENGTHS'
,p_item_sequence=>90
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remaining Lengths'
,p_source=>'REMAINING_LENGTHS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>350541681652165390+wwv_flow_api.g_id_offset
,p_name=>'P3_FOREIGN_CONTRACT'
,p_item_sequence=>100
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Foreign Contract'
,p_source=>'FOREIGN_CONTRACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350541870173165390+wwv_flow_api.g_id_offset
,p_name=>'P3_FACILITY_USE_REPORTS'
,p_item_sequence=>110
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Facility Use Reports'
,p_source=>'FACILITY_USE_REPORTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350542065987165390+wwv_flow_api.g_id_offset
,p_name=>'P3_SERVICE_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Type'
,p_source=>'SERVICE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350542286907165390+wwv_flow_api.g_id_offset
,p_name=>'P3_ACCOUNT_TYPE'
,p_item_sequence=>130
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Type'
,p_source=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>350542457927165391+wwv_flow_api.g_id_offset
,p_name=>'P3_CONTRACT_AMOUNT'
,p_item_sequence=>140
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Amount'
,p_source=>'CONTRACT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>350542679916165391+wwv_flow_api.g_id_offset
,p_name=>'P3_DATE_RETURNED'
,p_item_sequence=>150
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Returned'
,p_source=>'DATE_RETURNED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350542886164165391+wwv_flow_api.g_id_offset
,p_name=>'P3_LAST_CONTACT_DATE'
,p_item_sequence=>160
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Contact Date'
,p_source=>'LAST_CONTACT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350543064401165391+wwv_flow_api.g_id_offset
,p_name=>'P3_STATUS'
,p_item_sequence=>170
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350543239740165392+wwv_flow_api.g_id_offset
,p_name=>'P3_SIGNED_BY'
,p_item_sequence=>180
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Signed By'
,p_source=>'SIGNED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350543443253165392+wwv_flow_api.g_id_offset
,p_name=>'P3_REVIEWED_BY'
,p_item_sequence=>190
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reviewed By'
,p_source=>'REVIEWED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350543693009165392+wwv_flow_api.g_id_offset
,p_name=>'P3_SIGNED_DATE'
,p_item_sequence=>200
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Signed Date'
,p_source=>'SIGNED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350543804976165392+wwv_flow_api.g_id_offset
,p_name=>'P3_OGC'
,p_item_sequence=>210
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ogc'
,p_source=>'OGC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350544083315165393+wwv_flow_api.g_id_offset
,p_name=>'P3_EVC'
,p_item_sequence=>220
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Evc'
,p_source=>'EVC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350544275652165393+wwv_flow_api.g_id_offset
,p_name=>'P3_BOR'
,p_item_sequence=>230
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bor'
,p_source=>'BOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350544411617165393+wwv_flow_api.g_id_offset
,p_name=>'P3_DOCKET'
,p_item_sequence=>240
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docket'
,p_source=>'DOCKET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350544626598165394+wwv_flow_api.g_id_offset
,p_name=>'P3_DOCKET_DATE'
,p_item_sequence=>250
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docket Date'
,p_source=>'DOCKET_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350544884180165394+wwv_flow_api.g_id_offset
,p_name=>'P3_SYSTEM_NOTES'
,p_item_sequence=>260
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'System Notes'
,p_source=>'SYSTEM_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350545003066165394+wwv_flow_api.g_id_offset
,p_name=>'P3_AMENDMENT_VERSION'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amendment Version'
,p_source=>'AMENDMENT_VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350545202303165394+wwv_flow_api.g_id_offset
,p_name=>'P3_AMENDMENT_TOTAL'
,p_is_required=>true
,p_item_sequence=>280
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amendment Total'
,p_source=>'AMENDMENT_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350545417163165395+wwv_flow_api.g_id_offset
,p_name=>'P3_VENDOR_ID'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select vendor_name, vendor_id from BC_vendor'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>350545648190165395+wwv_flow_api.g_id_offset
,p_name=>'P3_DEPT_ID'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id'
,p_source=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select dept_name, dept_id from BC_dept'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>350545866818165395+wwv_flow_api.g_id_offset
,p_name=>'P3_CONTRACT_ID1'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id1'
,p_source=>'CONTRACT_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350546073193165395+wwv_flow_api.g_id_offset
,p_name=>'P3_DEPT_ID1'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id1'
,p_source=>'DEPT_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350546231335165396+wwv_flow_api.g_id_offset
,p_name=>'P3_VENDOR_ID1'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id1'
,p_source=>'VENDOR_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350546464006165396+wwv_flow_api.g_id_offset
,p_name=>'P3_DFLEX'
,p_item_sequence=>340
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dflex'
,p_source=>'DFLEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350546681349165396+wwv_flow_api.g_id_offset
,p_name=>'P3_IFLEX1'
,p_item_sequence=>350
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex1'
,p_source=>'IFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350546888355165396+wwv_flow_api.g_id_offset
,p_name=>'P3_IFLEX2'
,p_item_sequence=>360
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex2'
,p_source=>'IFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350547093938165396+wwv_flow_api.g_id_offset
,p_name=>'P3_VFLEX1'
,p_item_sequence=>370
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex1'
,p_source=>'VFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350547213601165397+wwv_flow_api.g_id_offset
,p_name=>'P3_VFLEX2'
,p_item_sequence=>380
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex2'
,p_source=>'VFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350547411331165397+wwv_flow_api.g_id_offset
,p_name=>'P3_VFLEX3'
,p_item_sequence=>390
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex3'
,p_source=>'VFLEX3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350547690077165397+wwv_flow_api.g_id_offset
,p_name=>'P3_CREATED'
,p_item_sequence=>400
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350547878480165397+wwv_flow_api.g_id_offset
,p_name=>'P3_CREATED_BY'
,p_item_sequence=>410
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350548033248165398+wwv_flow_api.g_id_offset
,p_name=>'P3_ROW_VERSION_NUMBER'
,p_item_sequence=>420
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Row Version Number'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350548267917165398+wwv_flow_api.g_id_offset
,p_name=>'P3_UPDATED'
,p_item_sequence=>430
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350548472557165398+wwv_flow_api.g_id_offset
,p_name=>'P3_UPDATED_BY'
,p_item_sequence=>440
,p_item_plug_id=>350538023233165381+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>350548801372165399+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P3_CONTRACT_ID'
,p_attribute_04=>'CONTRACT_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>350549005060165400+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P3_CONTRACT_ID'
,p_attribute_04=>'CONTRACT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>350549269694165400+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>350538487907165382+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Contract'
,p_page_mode=>'NORMAL'
,p_step_title=>'Contract'
,p_step_sub_title=>'Contract'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417005818'
);
wwv_flow_api.create_report_region(
 p_id=>350811336162255064+wwv_flow_api.g_id_offset
,p_name=>'Contract'
,p_template=>350496976181139733+wwv_flow_api.g_id_offset
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "CONTRACT_ID",',
' "RECEIVED_DATE",',
' "INITIALS",',
' "PURPOSE",',
' "NOTES",',
' "BEGINNING_DATE",',
' "ENDING_DATE",',
' "REMAINING_RENEWAL",',
' "REMAINING_LENGTHS",',
' "FOREIGN_CONTRACT",',
' "FACILITY_USE_REPORTS",',
' "SERVICE_TYPE",',
' "ACCOUNT_TYPE",',
' "CONTRACT_AMOUNT",',
' "DATE_RETURNED",',
' "LAST_CONTACT_DATE",',
' "STATUS",',
' "SIGNED_BY",',
' "REVIEWED_BY",',
' "SIGNED_DATE",',
' "OGC",',
' "EVC",',
' "BOR",',
' "DOCKET",',
' "DOCKET_DATE",',
' "SYSTEM_NOTES",',
' "AMENDMENT_VERSION",',
' "AMENDMENT_TOTAL",',
' "VENDOR_ID",',
' "DEPT_ID",',
' "CONTRACT_ID1",',
' "DEPT_ID1",',
' "VENDOR_ID1",',
' "DFLEX",',
' "IFLEX1",',
' "IFLEX2",',
' "VFLEX1",',
' "VFLEX2",',
' "VFLEX3",',
' "CREATED",',
' "CREATED_BY",',
' "ROW_VERSION_NUMBER",',
' "UPDATED",',
' "UPDATED_BY"',
'from #OWNER#.BC_CONTRACT',
'where contract_id = :P6_CONTRACT'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350499050003139736+wwv_flow_api.g_id_offset
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350811661533255065+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'CONTRACT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'CONTRACT_ID'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350811712237255066+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'RECEIVED_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'RECEIVED_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350811806114255066+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'INITIALS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350811973098255066+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'PURPOSE'
,p_column_display_sequence=>4
,p_column_heading=>'PURPOSE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812064065255066+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'NOTES'
,p_column_display_sequence=>5
,p_column_heading=>'NOTES'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812151552255066+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'BEGINNING_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'BEGINNING_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812267609255066+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'ENDING_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'ENDING_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812394955255066+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'REMAINING_RENEWAL'
,p_column_display_sequence=>8
,p_column_heading=>'REMAINING_RENEWAL'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812456617255066+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'REMAINING_LENGTHS'
,p_column_display_sequence=>9
,p_column_heading=>'REMAINING_LENGTHS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812552647255066+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'FOREIGN_CONTRACT'
,p_column_display_sequence=>10
,p_column_heading=>'FOREIGN_CONTRACT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812676303255066+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'FACILITY_USE_REPORTS'
,p_column_display_sequence=>11
,p_column_heading=>'FACILITY_USE_REPORTS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812757528255066+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'SERVICE_TYPE'
,p_column_display_sequence=>12
,p_column_heading=>'SERVICE_TYPE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812888662255066+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'ACCOUNT_TYPE'
,p_column_display_sequence=>13
,p_column_heading=>'ACCOUNT_TYPE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350812956769255066+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'CONTRACT_AMOUNT'
,p_column_display_sequence=>14
,p_column_heading=>'CONTRACT_AMOUNT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813016554255066+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'DATE_RETURNED'
,p_column_display_sequence=>15
,p_column_heading=>'DATE_RETURNED'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813119881255066+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'LAST_CONTACT_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'LAST_CONTACT_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813276352255066+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'STATUS'
,p_column_display_sequence=>17
,p_column_heading=>'STATUS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813315002255066+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'SIGNED_BY'
,p_column_display_sequence=>18
,p_column_heading=>'SIGNED_BY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813465384255066+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'REVIEWED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'REVIEWED_BY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813548198255066+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'SIGNED_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'SIGNED_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813609141255066+wwv_flow_api.g_id_offset
,p_query_column_id=>21
,p_column_alias=>'OGC'
,p_column_display_sequence=>21
,p_column_heading=>'OGC'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813704595255066+wwv_flow_api.g_id_offset
,p_query_column_id=>22
,p_column_alias=>'EVC'
,p_column_display_sequence=>22
,p_column_heading=>'EVC'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813834390255066+wwv_flow_api.g_id_offset
,p_query_column_id=>23
,p_column_alias=>'BOR'
,p_column_display_sequence=>23
,p_column_heading=>'BOR'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350813918578255067+wwv_flow_api.g_id_offset
,p_query_column_id=>24
,p_column_alias=>'DOCKET'
,p_column_display_sequence=>24
,p_column_heading=>'DOCKET'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814088508255067+wwv_flow_api.g_id_offset
,p_query_column_id=>25
,p_column_alias=>'DOCKET_DATE'
,p_column_display_sequence=>25
,p_column_heading=>'DOCKET_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814114240255067+wwv_flow_api.g_id_offset
,p_query_column_id=>26
,p_column_alias=>'SYSTEM_NOTES'
,p_column_display_sequence=>26
,p_column_heading=>'SYSTEM_NOTES'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814254557255067+wwv_flow_api.g_id_offset
,p_query_column_id=>27
,p_column_alias=>'AMENDMENT_VERSION'
,p_column_display_sequence=>27
,p_column_heading=>'AMENDMENT_VERSION'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814365100255067+wwv_flow_api.g_id_offset
,p_query_column_id=>28
,p_column_alias=>'AMENDMENT_TOTAL'
,p_column_display_sequence=>28
,p_column_heading=>'AMENDMENT_TOTAL'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814425554255067+wwv_flow_api.g_id_offset
,p_query_column_id=>29
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>29
,p_column_heading=>'VENDOR_ID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814557328255067+wwv_flow_api.g_id_offset
,p_query_column_id=>30
,p_column_alias=>'DEPT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'DEPT_ID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814616906255067+wwv_flow_api.g_id_offset
,p_query_column_id=>31
,p_column_alias=>'CONTRACT_ID1'
,p_column_display_sequence=>31
,p_column_heading=>'CONTRACT_ID1'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814725662255067+wwv_flow_api.g_id_offset
,p_query_column_id=>32
,p_column_alias=>'DEPT_ID1'
,p_column_display_sequence=>32
,p_column_heading=>'DEPT_ID1'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814839313255067+wwv_flow_api.g_id_offset
,p_query_column_id=>33
,p_column_alias=>'VENDOR_ID1'
,p_column_display_sequence=>33
,p_column_heading=>'VENDOR_ID1'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350814954798255067+wwv_flow_api.g_id_offset
,p_query_column_id=>34
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>34
,p_column_heading=>'DFLEX'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815057969255067+wwv_flow_api.g_id_offset
,p_query_column_id=>35
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>35
,p_column_heading=>'IFLEX1'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815189664255067+wwv_flow_api.g_id_offset
,p_query_column_id=>36
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>36
,p_column_heading=>'IFLEX2'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815227937255067+wwv_flow_api.g_id_offset
,p_query_column_id=>37
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>37
,p_column_heading=>'VFLEX1'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815334123255067+wwv_flow_api.g_id_offset
,p_query_column_id=>38
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>38
,p_column_heading=>'VFLEX2'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815481702255067+wwv_flow_api.g_id_offset
,p_query_column_id=>39
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>39
,p_column_heading=>'VFLEX3'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815588611255067+wwv_flow_api.g_id_offset
,p_query_column_id=>40
,p_column_alias=>'CREATED'
,p_column_display_sequence=>40
,p_column_heading=>'CREATED'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815686802255067+wwv_flow_api.g_id_offset
,p_query_column_id=>41
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>41
,p_column_heading=>'CREATED_BY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815705998255067+wwv_flow_api.g_id_offset
,p_query_column_id=>42
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>42
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815816703255067+wwv_flow_api.g_id_offset
,p_query_column_id=>43
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>43
,p_column_heading=>'UPDATED'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>350815930243255067+wwv_flow_api.g_id_offset
,p_query_column_id=>44
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>44
,p_column_heading=>'UPDATED_BY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>351151281150356027+wwv_flow_api.g_id_offset
,p_plug_name=>'Documents'
,p_plug_template=>350495802584139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>351850115963544415+wwv_flow_api.g_id_offset
,p_plug_name=>'Documents'
,p_parent_plug_id=>351151281150356027+wwv_flow_api.g_id_offset
,p_plug_template=>350496024353139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from CREO_document where CONTRACT_ID = :P6_CONTRACT'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>351850225821544415+wwv_flow_api.g_id_offset
,p_name=>'Documents'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_api.g_region_source
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'GREGSTONT@GMAIL.COM'
,p_internal_uid=>351850225821544415
);
wwv_flow_api.create_worksheet_column(
 p_id=>351850455038544416+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351850566223544417+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351850697116544417+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILE_MIMETYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'File Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351854729507544417+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'File Charset'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351854864042544417+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILE_BLOB'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'File Blob'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351854916555544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'File Comments'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855061900544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'TAGS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855151370544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'LEASE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Lease Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855288290544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'PROPERTY_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Property Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855357134544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'CONTRACT_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Contract Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855408215544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'DFLEX'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Dflex'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855579613544418+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX1'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Iflex1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855636621544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX2'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Iflex2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855759107544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX1'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Vflex1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855877958544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX2'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vflex2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351855982591544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX3'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Vflex3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351856039599544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351856110073544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351856201708544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351856347901544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>351856403649544419+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>351856545153545877+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3518566'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:FILENAME:FILE_MIMETYPE:FILE_CHARSET:FILE_BLOB:FILE_COMMENTS:TAGS:LEASE_ID:PROPERTY_ID:CONTRACT_ID:DFLEX:IFLEX1:IFLEX2:VFLEX1:VFLEX2:VFLEX3:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>357208762096291218+wwv_flow_api.g_id_offset
,p_plug_name=>'Amendments'
,p_plug_template=>350495802584139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P6_HIDEAMEND'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>357379129862432937+wwv_flow_api.g_id_offset
,p_name=>'Amendments'
,p_parent_plug_id=>357208762096291218+wwv_flow_api.g_id_offset
,p_template=>350496976181139733+wwv_flow_api.g_id_offset
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'select * from BC_contract where CONTRACT_ID1 = :P6_CONTRACT'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350498619592139735+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>357379472504432939+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'CONTRACT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'CONTRACT_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>357379538073432940+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'RECEIVED_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'RECEIVED_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>357379651702432940+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'INITIALS'
);
wwv_flow_api.create_report_columns(
 p_id=>357379770604432940+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'PURPOSE'
,p_column_display_sequence=>4
,p_column_heading=>'PURPOSE'
);
wwv_flow_api.create_report_columns(
 p_id=>357379846197432940+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'NOTES'
,p_column_display_sequence=>5
,p_column_heading=>'NOTES'
);
wwv_flow_api.create_report_columns(
 p_id=>357379999393432940+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'BEGINNING_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'BEGINNING_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>357380062080432940+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'ENDING_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'ENDING_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>357380119514432940+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'REMAINING_RENEWAL'
,p_column_display_sequence=>8
,p_column_heading=>'REMAINING_RENEWAL'
);
wwv_flow_api.create_report_columns(
 p_id=>357380201091432940+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'REMAINING_LENGTHS'
,p_column_display_sequence=>9
,p_column_heading=>'REMAINING_LENGTHS'
);
wwv_flow_api.create_report_columns(
 p_id=>357380366542432940+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'FOREIGN_CONTRACT'
,p_column_display_sequence=>10
,p_column_heading=>'FOREIGN_CONTRACT'
);
wwv_flow_api.create_report_columns(
 p_id=>357380462597432940+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'FACILITY_USE_REPORTS'
,p_column_display_sequence=>11
,p_column_heading=>'FACILITY_USE_REPORTS'
);
wwv_flow_api.create_report_columns(
 p_id=>357380574444432940+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'SERVICE_TYPE'
,p_column_display_sequence=>12
,p_column_heading=>'SERVICE_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>357380662665432940+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'ACCOUNT_TYPE'
,p_column_display_sequence=>13
,p_column_heading=>'ACCOUNT_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>357382713192432940+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'CONTRACT_AMOUNT'
,p_column_display_sequence=>14
,p_column_heading=>'CONTRACT_AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>357382827701432940+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'DATE_RETURNED'
,p_column_display_sequence=>15
,p_column_heading=>'DATE_RETURNED'
);
wwv_flow_api.create_report_columns(
 p_id=>357382999028432940+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'LAST_CONTACT_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'LAST_CONTACT_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>357383096712432940+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'STATUS'
,p_column_display_sequence=>17
,p_column_heading=>'STATUS'
);
wwv_flow_api.create_report_columns(
 p_id=>357383169526432940+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'SIGNED_BY'
,p_column_display_sequence=>18
,p_column_heading=>'SIGNED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>357383201349432941+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'REVIEWED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'REVIEWED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>357383345796432941+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'SIGNED_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'SIGNED_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>357383430524432941+wwv_flow_api.g_id_offset
,p_query_column_id=>21
,p_column_alias=>'OGC'
,p_column_display_sequence=>21
,p_column_heading=>'OGC'
);
wwv_flow_api.create_report_columns(
 p_id=>357383562113432941+wwv_flow_api.g_id_offset
,p_query_column_id=>22
,p_column_alias=>'EVC'
,p_column_display_sequence=>22
,p_column_heading=>'EVC'
);
wwv_flow_api.create_report_columns(
 p_id=>357383617189432941+wwv_flow_api.g_id_offset
,p_query_column_id=>23
,p_column_alias=>'BOR'
,p_column_display_sequence=>23
,p_column_heading=>'BOR'
);
wwv_flow_api.create_report_columns(
 p_id=>357383767038432941+wwv_flow_api.g_id_offset
,p_query_column_id=>24
,p_column_alias=>'DOCKET'
,p_column_display_sequence=>24
,p_column_heading=>'DOCKET'
);
wwv_flow_api.create_report_columns(
 p_id=>357383826375432941+wwv_flow_api.g_id_offset
,p_query_column_id=>25
,p_column_alias=>'DOCKET_DATE'
,p_column_display_sequence=>25
,p_column_heading=>'DOCKET_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>357383921680432941+wwv_flow_api.g_id_offset
,p_query_column_id=>26
,p_column_alias=>'SYSTEM_NOTES'
,p_column_display_sequence=>26
,p_column_heading=>'SYSTEM_NOTES'
);
wwv_flow_api.create_report_columns(
 p_id=>357384051792432941+wwv_flow_api.g_id_offset
,p_query_column_id=>27
,p_column_alias=>'AMENDMENT_VERSION'
,p_column_display_sequence=>27
,p_column_heading=>'AMENDMENT_VERSION'
);
wwv_flow_api.create_report_columns(
 p_id=>357384100735432941+wwv_flow_api.g_id_offset
,p_query_column_id=>28
,p_column_alias=>'AMENDMENT_TOTAL'
,p_column_display_sequence=>28
,p_column_heading=>'AMENDMENT_TOTAL'
);
wwv_flow_api.create_report_columns(
 p_id=>357384242842432941+wwv_flow_api.g_id_offset
,p_query_column_id=>29
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>29
,p_column_heading=>'VENDOR_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>357384320079432941+wwv_flow_api.g_id_offset
,p_query_column_id=>30
,p_column_alias=>'DEPT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'DEPT_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>357384447066432941+wwv_flow_api.g_id_offset
,p_query_column_id=>31
,p_column_alias=>'CONTRACT_ID1'
,p_column_display_sequence=>31
,p_column_heading=>'CONTRACT_ID1'
);
wwv_flow_api.create_report_columns(
 p_id=>357384538394432941+wwv_flow_api.g_id_offset
,p_query_column_id=>32
,p_column_alias=>'DEPT_ID1'
,p_column_display_sequence=>32
,p_column_heading=>'DEPT_ID1'
);
wwv_flow_api.create_report_columns(
 p_id=>357384642424432941+wwv_flow_api.g_id_offset
,p_query_column_id=>33
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>33
,p_column_heading=>'DFLEX'
);
wwv_flow_api.create_report_columns(
 p_id=>357384751460432941+wwv_flow_api.g_id_offset
,p_query_column_id=>34
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>34
,p_column_heading=>'IFLEX1'
);
wwv_flow_api.create_report_columns(
 p_id=>357384804696432941+wwv_flow_api.g_id_offset
,p_query_column_id=>35
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>35
,p_column_heading=>'IFLEX2'
);
wwv_flow_api.create_report_columns(
 p_id=>357384967015432941+wwv_flow_api.g_id_offset
,p_query_column_id=>36
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>36
,p_column_heading=>'VFLEX1'
);
wwv_flow_api.create_report_columns(
 p_id=>357385065892432941+wwv_flow_api.g_id_offset
,p_query_column_id=>37
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>37
,p_column_heading=>'VFLEX2'
);
wwv_flow_api.create_report_columns(
 p_id=>357385102486432941+wwv_flow_api.g_id_offset
,p_query_column_id=>38
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>38
,p_column_heading=>'VFLEX3'
);
wwv_flow_api.create_report_columns(
 p_id=>357385283430432941+wwv_flow_api.g_id_offset
,p_query_column_id=>39
,p_column_alias=>'CREATED'
,p_column_display_sequence=>39
,p_column_heading=>'CREATED'
);
wwv_flow_api.create_report_columns(
 p_id=>357385345634432941+wwv_flow_api.g_id_offset
,p_query_column_id=>40
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>40
,p_column_heading=>'CREATED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>357385433083432941+wwv_flow_api.g_id_offset
,p_query_column_id=>41
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>41
,p_column_heading=>'ROW_VERSION_NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>357385538844432941+wwv_flow_api.g_id_offset
,p_query_column_id=>42
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>42
,p_column_heading=>'UPDATED'
);
wwv_flow_api.create_report_columns(
 p_id=>357385677605432941+wwv_flow_api.g_id_offset
,p_query_column_id=>43
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>43
,p_column_heading=>'UPDATED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>357385730991432941+wwv_flow_api.g_id_offset
,p_query_column_id=>44
,p_column_alias=>'VENDOR_ID1'
,p_column_display_sequence=>44
,p_column_heading=>'VENDOR_ID1'
);
wwv_flow_api.create_report_columns(
 p_id=>357385853721432942+wwv_flow_api.g_id_offset
,p_query_column_id=>45
,p_column_alias=>'PARENT'
,p_column_display_sequence=>45
,p_column_heading=>'PARENT'
);
wwv_flow_api.create_page_plug(
 p_id=>357995372693657113+wwv_flow_api.g_id_offset
,p_plug_name=>'Notes'
,p_plug_template=>350495802584139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>358023838917700708+wwv_flow_api.g_id_offset
,p_name=>'Notes'
,p_parent_plug_id=>357995372693657113+wwv_flow_api.g_id_offset
,p_template=>350496976181139733+wwv_flow_api.g_id_offset
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'select * from BC_NOTE where contract_id = :P6_CONTRACT'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350498619592139735+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>358024187100700710+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'NOTE_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358024204512700710+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'date'
,p_column_display_sequence=>2
,p_column_heading=>'date'
);
wwv_flow_api.create_report_columns(
 p_id=>358024318121700710+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>358024473008700710+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'CONTRACT_ID'
,p_column_display_sequence=>4
,p_column_heading=>'CONTRACT_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358024513351700710+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>5
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358024605411700710+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>6
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358026779899700710+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>7
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358026837142700711+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>8
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358026974028700711+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>9
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358027073678700711+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>10
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358027127119700711+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>11
,p_column_heading=>'CREATED'
);
wwv_flow_api.create_report_columns(
 p_id=>358027241275700711+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'CREATED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>358027399061700711+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>13
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>358027490098700711+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>14
,p_column_heading=>'UPDATED'
);
wwv_flow_api.create_report_columns(
 p_id=>358027553423700711+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'UPDATED_BY'
);
wwv_flow_api.create_page_button(
 p_id=>351780327612446070+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>351151281150356027+wwv_flow_api.g_id_offset
,p_button_name=>'ADD_DOCUMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350502025920139741+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Document'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_CONTRACT_ID:&P6_CONTRACT.'
);
wwv_flow_api.create_page_button(
 p_id=>357256599483349935+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>357208762096291218+wwv_flow_api.g_id_offset
,p_button_name=>'NEW_AMENDMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350502025920139741+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Amendment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::P12_CONTRACT_ID1:&P6_CONTRACT.'
,p_button_condition=>'P6_HIDEAMEND'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>358017515462684261+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>357995372693657113+wwv_flow_api.g_id_offset
,p_button_name=>'ADD_NOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350502025920139741+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Note'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_CONTRACT_ID:&P6_CONTRACT.'
);
wwv_flow_api.create_page_item(
 p_id=>350821304312308872+wwv_flow_api.g_id_offset
,p_name=>'P6_CONTRACT'
,p_item_sequence=>10
,p_item_plug_id=>350811336162255064+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>359941816664830209+wwv_flow_api.g_id_offset
,p_name=>'P6_PURPOSE'
,p_item_sequence=>20
,p_item_plug_id=>350811336162255064+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>362330458363535475+wwv_flow_api.g_id_offset
,p_name=>'P6_HIDEAMEND'
,p_item_sequence=>30
,p_item_plug_id=>350811336162255064+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on CREO_DOCUMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on CREO_DOCUMENT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140415213527'
);
wwv_flow_api.create_page_plug(
 p_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on CREO_DOCUMENT'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>351553439807435516+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>351553605441435517+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>351553349553435516+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>351553500930435516+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>351554725013435519+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>351554915882435521+wwv_flow_api.g_id_offset
,p_name=>'P10_ID'
,p_item_sequence=>10
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351555176912435522+wwv_flow_api.g_id_offset
,p_name=>'P10_FILENAME'
,p_item_sequence=>20
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351555375071435522+wwv_flow_api.g_id_offset
,p_name=>'P10_FILE_MIMETYPE'
,p_item_sequence=>30
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Mimetype'
,p_source=>'FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351555590686435522+wwv_flow_api.g_id_offset
,p_name=>'P10_FILE_CHARSET'
,p_item_sequence=>40
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Charset'
,p_source=>'FILE_CHARSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351555786619435522+wwv_flow_api.g_id_offset
,p_name=>'P10_FILE_COMMENTS'
,p_item_sequence=>50
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Comments'
,p_source=>'FILE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351555956624435523+wwv_flow_api.g_id_offset
,p_name=>'P10_TAGS'
,p_item_sequence=>60
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351556132569435523+wwv_flow_api.g_id_offset
,p_name=>'P10_LEASE_ID'
,p_item_sequence=>70
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lease Id'
,p_source=>'LEASE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>351556317355435523+wwv_flow_api.g_id_offset
,p_name=>'P10_PROPERTY_ID'
,p_item_sequence=>80
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Property Id'
,p_source=>'PROPERTY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>351556503215435524+wwv_flow_api.g_id_offset
,p_name=>'P10_CONTRACT_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>351556743662435524+wwv_flow_api.g_id_offset
,p_name=>'P10_DFLEX'
,p_item_sequence=>100
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dflex'
,p_source=>'DFLEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351556978087435524+wwv_flow_api.g_id_offset
,p_name=>'P10_IFLEX1'
,p_item_sequence=>110
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex1'
,p_source=>'IFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>351557138645435525+wwv_flow_api.g_id_offset
,p_name=>'P10_IFLEX2'
,p_item_sequence=>120
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex2'
,p_source=>'IFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>351557368636435525+wwv_flow_api.g_id_offset
,p_name=>'P10_VFLEX1'
,p_item_sequence=>130
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex1'
,p_source=>'VFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351557544260435525+wwv_flow_api.g_id_offset
,p_name=>'P10_VFLEX2'
,p_item_sequence=>140
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex2'
,p_source=>'VFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351557750062435525+wwv_flow_api.g_id_offset
,p_name=>'P10_VFLEX3'
,p_item_sequence=>150
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex3'
,p_source=>'VFLEX3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351557948888435526+wwv_flow_api.g_id_offset
,p_name=>'P10_CREATED'
,p_item_sequence=>160
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351558195344435526+wwv_flow_api.g_id_offset
,p_name=>'P10_CREATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351558324193435526+wwv_flow_api.g_id_offset
,p_name=>'P10_ROW_VERSION_NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Row Version Number'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>351558541342435526+wwv_flow_api.g_id_offset
,p_name=>'P10_UPDATED'
,p_item_sequence=>190
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351558786169435526+wwv_flow_api.g_id_offset
,p_name=>'P10_UPDATED_BY'
,p_item_sequence=>200
,p_item_plug_id=>351553163246435516+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>351553752938435517+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>351553605441435517+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>351554176054435518+wwv_flow_api.g_id_offset
,p_event_id=>351553752938435517+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>351560796862435529+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CREO_DOCUMENT'
,p_attribute_02=>'CREO_DOCUMENT'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>351560966928435530+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CREO_DOCUMENT'
,p_attribute_02=>'CREO_DOCUMENT'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>351561187477435530+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>351553500930435516+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>351561381361435530+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on CREO_DOCUMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on CREO_DOCUMENT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416201410'
);
wwv_flow_api.create_page_plug(
 p_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on CREO_DOCUMENT'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>351987159525785231+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>351987329537785231+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>351987078905785231+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>351987280850785231+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>351988429045785232+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>351988625129785233+wwv_flow_api.g_id_offset
,p_name=>'P11_ID'
,p_item_sequence=>10
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351988873234785234+wwv_flow_api.g_id_offset
,p_name=>'P11_FILENAME'
,p_item_sequence=>20
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351989098926785234+wwv_flow_api.g_id_offset
,p_name=>'P11_FILE_MIMETYPE'
,p_item_sequence=>30
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Mimetype'
,p_source=>'FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351989258830785235+wwv_flow_api.g_id_offset
,p_name=>'P11_FILE_CHARSET'
,p_item_sequence=>40
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Charset'
,p_source=>'FILE_CHARSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351989410306785235+wwv_flow_api.g_id_offset
,p_name=>'P11_FILE_COMMENTS'
,p_item_sequence=>50
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Comments'
,p_source=>'FILE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351989670914785236+wwv_flow_api.g_id_offset
,p_name=>'P11_TAGS'
,p_item_sequence=>60
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>351989872191785236+wwv_flow_api.g_id_offset
,p_name=>'P11_LEASE_ID'
,p_item_sequence=>70
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lease Id'
,p_source=>'LEASE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351990057568785236+wwv_flow_api.g_id_offset
,p_name=>'P11_PROPERTY_ID'
,p_item_sequence=>80
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Property Id'
,p_source=>'PROPERTY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351990256049785236+wwv_flow_api.g_id_offset
,p_name=>'P11_CONTRACT_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351990452111785237+wwv_flow_api.g_id_offset
,p_name=>'P11_DFLEX'
,p_item_sequence=>100
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dflex'
,p_source=>'DFLEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351990605862785237+wwv_flow_api.g_id_offset
,p_name=>'P11_IFLEX1'
,p_item_sequence=>110
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex1'
,p_source=>'IFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351990822137785237+wwv_flow_api.g_id_offset
,p_name=>'P11_IFLEX2'
,p_item_sequence=>120
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex2'
,p_source=>'IFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351991098587785237+wwv_flow_api.g_id_offset
,p_name=>'P11_VFLEX1'
,p_item_sequence=>130
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex1'
,p_source=>'VFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351991248990785238+wwv_flow_api.g_id_offset
,p_name=>'P11_VFLEX2'
,p_item_sequence=>140
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex2'
,p_source=>'VFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351991483758785238+wwv_flow_api.g_id_offset
,p_name=>'P11_VFLEX3'
,p_item_sequence=>150
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex3'
,p_source=>'VFLEX3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351991688853785238+wwv_flow_api.g_id_offset
,p_name=>'P11_CREATED'
,p_item_sequence=>160
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351991810301785238+wwv_flow_api.g_id_offset
,p_name=>'P11_CREATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351992075073785238+wwv_flow_api.g_id_offset
,p_name=>'P11_ROW_VERSION_NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Row Version Number'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>351992241226785239+wwv_flow_api.g_id_offset
,p_name=>'P11_UPDATED'
,p_item_sequence=>190
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>351992417957785239+wwv_flow_api.g_id_offset
,p_name=>'P11_UPDATED_BY'
,p_item_sequence=>200
,p_item_plug_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>351987491877785231+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>351987329537785231+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>351987850324785232+wwv_flow_api.g_id_offset
,p_event_id=>351987491877785231+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>359224698079878961+wwv_flow_api.g_id_offset
,p_name=>'refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'DOM_OBJECT'
,p_triggering_element=>'DOCUMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>359224966303878962+wwv_flow_api.g_id_offset
,p_event_id=>359224698079878961+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>351986879673785231+wwv_flow_api.g_id_offset
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>351994434785785241+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CREO_DOCUMENT'
,p_attribute_02=>'CREO_DOCUMENT'
,p_attribute_03=>'P11_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>351994633931785242+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CREO_DOCUMENT'
,p_attribute_02=>'CREO_DOCUMENT'
,p_attribute_03=>'P11_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>351994849652785242+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>351987280850785231+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>351995082557785242+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_CONTRACT'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on BC_CONTRACT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417003539'
);
wwv_flow_api.create_page_plug(
 p_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on BC_CONTRACT'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>357223503289315043+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P12_CONTRACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>357223748465315043+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>357223441256315043+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P12_CONTRACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>357223678314315043+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P12_CONTRACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>357228865796315046+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>357229016242315047+wwv_flow_api.g_id_offset
,p_name=>'P12_CONTRACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357229216533315048+wwv_flow_api.g_id_offset
,p_name=>'P12_RECEIVED_DATE'
,p_item_sequence=>20
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Received Date'
,p_source=>'RECEIVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357229407821315048+wwv_flow_api.g_id_offset
,p_name=>'P12_INITIALS'
,p_item_sequence=>30
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initials'
,p_source=>'INITIALS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357229625768315049+wwv_flow_api.g_id_offset
,p_name=>'P12_PURPOSE'
,p_item_sequence=>40
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purpose'
,p_source=>'PURPOSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357229831252315049+wwv_flow_api.g_id_offset
,p_name=>'P12_NOTES'
,p_item_sequence=>50
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357230066479315049+wwv_flow_api.g_id_offset
,p_name=>'P12_BEGINNING_DATE'
,p_item_sequence=>60
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Beginning Date'
,p_source=>'BEGINNING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357230209368315049+wwv_flow_api.g_id_offset
,p_name=>'P12_ENDING_DATE'
,p_item_sequence=>70
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ending Date'
,p_source=>'ENDING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357230491793315050+wwv_flow_api.g_id_offset
,p_name=>'P12_REMAINING_RENEWAL'
,p_item_sequence=>80
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remaining Renewal'
,p_source=>'REMAINING_RENEWAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357230686157315050+wwv_flow_api.g_id_offset
,p_name=>'P12_REMAINING_LENGTHS'
,p_item_sequence=>90
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remaining Lengths'
,p_source=>'REMAINING_LENGTHS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357230829707315050+wwv_flow_api.g_id_offset
,p_name=>'P12_FOREIGN_CONTRACT'
,p_item_sequence=>100
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Foreign Contract'
,p_source=>'FOREIGN_CONTRACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357231082011315050+wwv_flow_api.g_id_offset
,p_name=>'P12_FACILITY_USE_REPORTS'
,p_item_sequence=>110
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Facility Use Reports'
,p_source=>'FACILITY_USE_REPORTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357231209395315051+wwv_flow_api.g_id_offset
,p_name=>'P12_SERVICE_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Type'
,p_source=>'SERVICE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357231468498315051+wwv_flow_api.g_id_offset
,p_name=>'P12_ACCOUNT_TYPE'
,p_item_sequence=>130
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Type'
,p_source=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357231601099315051+wwv_flow_api.g_id_offset
,p_name=>'P12_CONTRACT_AMOUNT'
,p_item_sequence=>140
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Amount'
,p_source=>'CONTRACT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357231880434315051+wwv_flow_api.g_id_offset
,p_name=>'P12_DATE_RETURNED'
,p_item_sequence=>150
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Returned'
,p_source=>'DATE_RETURNED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357232094872315051+wwv_flow_api.g_id_offset
,p_name=>'P12_LAST_CONTACT_DATE'
,p_item_sequence=>160
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Contact Date'
,p_source=>'LAST_CONTACT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357232277240315052+wwv_flow_api.g_id_offset
,p_name=>'P12_STATUS'
,p_item_sequence=>170
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357232414582315052+wwv_flow_api.g_id_offset
,p_name=>'P12_SIGNED_BY'
,p_item_sequence=>180
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Signed By'
,p_source=>'SIGNED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357232612402315052+wwv_flow_api.g_id_offset
,p_name=>'P12_REVIEWED_BY'
,p_item_sequence=>190
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reviewed By'
,p_source=>'REVIEWED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357232898659315052+wwv_flow_api.g_id_offset
,p_name=>'P12_SIGNED_DATE'
,p_item_sequence=>200
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Signed Date'
,p_source=>'SIGNED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357233040400315053+wwv_flow_api.g_id_offset
,p_name=>'P12_OGC'
,p_item_sequence=>210
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ogc'
,p_source=>'OGC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357233256666315053+wwv_flow_api.g_id_offset
,p_name=>'P12_EVC'
,p_item_sequence=>220
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Evc'
,p_source=>'EVC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357233451844315053+wwv_flow_api.g_id_offset
,p_name=>'P12_BOR'
,p_item_sequence=>230
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bor'
,p_source=>'BOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357233677124315053+wwv_flow_api.g_id_offset
,p_name=>'P12_DOCKET'
,p_item_sequence=>240
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docket'
,p_source=>'DOCKET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357233834510315053+wwv_flow_api.g_id_offset
,p_name=>'P12_DOCKET_DATE'
,p_item_sequence=>250
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docket Date'
,p_source=>'DOCKET_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357234021833315053+wwv_flow_api.g_id_offset
,p_name=>'P12_SYSTEM_NOTES'
,p_item_sequence=>260
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'System Notes'
,p_source=>'SYSTEM_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357234285893315054+wwv_flow_api.g_id_offset
,p_name=>'P12_AMENDMENT_VERSION'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amendment Version'
,p_source=>'AMENDMENT_VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357234411425315054+wwv_flow_api.g_id_offset
,p_name=>'P12_AMENDMENT_TOTAL'
,p_is_required=>true
,p_item_sequence=>280
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amendment Total'
,p_source=>'AMENDMENT_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357234665130315054+wwv_flow_api.g_id_offset
,p_name=>'P12_VENDOR_ID'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357234820462315054+wwv_flow_api.g_id_offset
,p_name=>'P12_DEPT_ID'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id'
,p_source=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357235045967315055+wwv_flow_api.g_id_offset
,p_name=>'P12_CONTRACT_ID1'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id1'
,p_source=>'CONTRACT_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357235230377315055+wwv_flow_api.g_id_offset
,p_name=>'P12_DEPT_ID1'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id1'
,p_source=>'DEPT_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357235412567315055+wwv_flow_api.g_id_offset
,p_name=>'P12_DFLEX'
,p_item_sequence=>330
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dflex'
,p_source=>'DFLEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357235628322315055+wwv_flow_api.g_id_offset
,p_name=>'P12_IFLEX1'
,p_item_sequence=>340
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex1'
,p_source=>'IFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357235814702315055+wwv_flow_api.g_id_offset
,p_name=>'P12_IFLEX2'
,p_item_sequence=>350
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iflex2'
,p_source=>'IFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357236076485315055+wwv_flow_api.g_id_offset
,p_name=>'P12_VFLEX1'
,p_item_sequence=>360
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex1'
,p_source=>'VFLEX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357236285289315056+wwv_flow_api.g_id_offset
,p_name=>'P12_VFLEX2'
,p_item_sequence=>370
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex2'
,p_source=>'VFLEX2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357236497317315056+wwv_flow_api.g_id_offset
,p_name=>'P12_VFLEX3'
,p_item_sequence=>380
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex3'
,p_source=>'VFLEX3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>357236696780315056+wwv_flow_api.g_id_offset
,p_name=>'P12_CREATED'
,p_item_sequence=>390
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357236811010315056+wwv_flow_api.g_id_offset
,p_name=>'P12_CREATED_BY'
,p_item_sequence=>400
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357237023501315056+wwv_flow_api.g_id_offset
,p_name=>'P12_ROW_VERSION_NUMBER'
,p_item_sequence=>410
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Row Version Number'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>357237297785315057+wwv_flow_api.g_id_offset
,p_name=>'P12_UPDATED'
,p_item_sequence=>420
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357237455332315057+wwv_flow_api.g_id_offset
,p_name=>'P12_UPDATED_BY'
,p_item_sequence=>430
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>357237612549315057+wwv_flow_api.g_id_offset
,p_name=>'P12_VENDOR_ID1'
,p_is_required=>true
,p_item_sequence=>440
,p_item_plug_id=>357223286309315043+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id1'
,p_source=>'VENDOR_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>357223812420315043+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>357223748465315043+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>357224240897315045+wwv_flow_api.g_id_offset
,p_event_id=>357223812420315043+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>357238079595315058+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P12_CONTRACT_ID'
,p_attribute_04=>'CONTRACT_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>357238288207315058+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P12_CONTRACT_ID'
,p_attribute_04=>'CONTRACT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>357238470685315059+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>357223678314315043+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>357238601197315059+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_NOTE'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on BC_NOTE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416193942'
);
wwv_flow_api.create_page_plug(
 p_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on BC_NOTE'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>357996439730672209+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P13_NOTE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>357996614912672209+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>357996343223672209+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P13_NOTE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>357996541151672209+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P13_NOTE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>358003782866672211+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>358003982481672212+wwv_flow_api.g_id_offset
,p_name=>'P13_NOTE_ID'
,p_item_sequence=>10
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note Id'
,p_source=>'NOTE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358004106110672212+wwv_flow_api.g_id_offset
,p_name=>'P13_DATE'
,p_item_sequence=>20
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_source=>'date'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>358004375713672213+wwv_flow_api.g_id_offset
,p_name=>'P13_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Text'
,p_source=>'TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>358004565851672213+wwv_flow_api.g_id_offset
,p_name=>'P13_CONTRACT_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>358004739428672213+wwv_flow_api.g_id_offset
,p_name=>'P13_CREATED'
,p_item_sequence=>50
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>358004973679672213+wwv_flow_api.g_id_offset
,p_name=>'P13_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>358005190732672214+wwv_flow_api.g_id_offset
,p_name=>'P13_UPDATED'
,p_item_sequence=>70
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>358005389400672214+wwv_flow_api.g_id_offset
,p_name=>'P13_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>357996136100672209+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>358002787560672209+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>357996614912672209+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>358003177687672210+wwv_flow_api.g_id_offset
,p_event_id=>358002787560672209+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>358006147626672215+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_NOTE'
,p_attribute_02=>'BC_NOTE'
,p_attribute_03=>'P13_NOTE_ID'
,p_attribute_04=>'NOTE_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>358006366732672215+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_NOTE'
,p_attribute_02=>'BC_NOTE'
,p_attribute_03=>'P13_NOTE_ID'
,p_attribute_04=>'NOTE_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>358006573561672215+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>357996541151672209+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>358006775340672216+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Departments'
,p_page_mode=>'NORMAL'
,p_step_title=>'Departments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416231904'
);
wwv_flow_api.create_page_plug(
 p_id=>360098889461971523+wwv_flow_api.g_id_offset
,p_plug_name=>'Departments'
,p_plug_template=>350496024353139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "DEPT_ID", ',
'"DEPT_NAME",',
'"EMAIL",',
'"PRIMARY_CONTACT",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_DEPT" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>360099013997971524+wwv_flow_api.g_id_offset
,p_name=>'Departments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_api.g_region_source
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:16:&APP_SESSION.::::P16_DEPT_ID:#DEPT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'GREGSTONT@GMAIL.COM'
,p_internal_uid=>360099013997971524
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099138496971524+wwv_flow_api.g_id_offset
,p_db_column_name=>'DEPT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dept Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099281960971525+wwv_flow_api.g_id_offset
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099371351971525+wwv_flow_api.g_id_offset
,p_db_column_name=>'EMAIL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099439304971525+wwv_flow_api.g_id_offset
,p_db_column_name=>'PRIMARY_CONTACT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Primary Contact'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099584494971525+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099611202971526+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099786213971526+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>360099844869971526+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>360100233963972483+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3601003'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DEPT_ID:DEPT_NAME:EMAIL:PRIMARY_CONTACT:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>360100018628971526+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>360098889461971523+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_DEPT'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BC_DEPT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417000921'
);
wwv_flow_api.create_page_plug(
 p_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on BC_DEPT'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>360094470912971514+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P16_DEPT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>360094646221971514+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>360094399936971514+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P16_DEPT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>360094527749971514+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P16_DEPT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>360095468939971515+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>360095612082971517+wwv_flow_api.g_id_offset
,p_name=>'P16_DEPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id'
,p_source=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>360095875209971518+wwv_flow_api.g_id_offset
,p_name=>'P16_DEPT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Name'
,p_source=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>360096080994971518+wwv_flow_api.g_id_offset
,p_name=>'P16_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>360096278979971518+wwv_flow_api.g_id_offset
,p_name=>'P16_PRIMARY_CONTACT'
,p_item_sequence=>40
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary Contact'
,p_source=>'PRIMARY_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name as "name", name as "name1" from CREO_contact'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>360096400790971519+wwv_flow_api.g_id_offset
,p_name=>'P16_CREATED'
,p_item_sequence=>50
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>360096693956971519+wwv_flow_api.g_id_offset
,p_name=>'P16_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>360096897122971520+wwv_flow_api.g_id_offset
,p_name=>'P16_UPDATED'
,p_item_sequence=>70
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>360097054717971520+wwv_flow_api.g_id_offset
,p_name=>'P16_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>360094109789971513+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>360097835192971521+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_DEPT'
,p_attribute_02=>'BC_DEPT'
,p_attribute_03=>'P16_DEPT_ID'
,p_attribute_04=>'DEPT_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>360098081389971522+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_DEPT'
,p_attribute_02=>'BC_DEPT'
,p_attribute_03=>'P16_DEPT_ID'
,p_attribute_04=>'DEPT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>360098247580971522+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>360094527749971514+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_VENDOR'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BC_VENDOR'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416234233'
);
wwv_flow_api.create_page_plug(
 p_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on BC_VENDOR'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>361081042012050884+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P18_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>361081275303050884+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>361080914916050884+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P18_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>361081113907050884+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>361082015611050885+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>361082252990050886+wwv_flow_api.g_id_offset
,p_name=>'P18_VENDOR_ID'
,p_item_sequence=>10
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>361082414912050887+wwv_flow_api.g_id_offset
,p_name=>'P18_V_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'V Address'
,p_source=>'V_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361082677150050888+wwv_flow_api.g_id_offset
,p_name=>'P18_V_CITY'
,p_item_sequence=>30
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'V City'
,p_source=>'V_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361082842711050888+wwv_flow_api.g_id_offset
,p_name=>'P18_V_STATE'
,p_item_sequence=>40
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'V State'
,p_source=>'V_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361083055832050888+wwv_flow_api.g_id_offset
,p_name=>'P18_V_ZIP'
,p_item_sequence=>50
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'V Zip'
,p_source=>'V_ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361083298555050888+wwv_flow_api.g_id_offset
,p_name=>'P18_V_COUNTRY'
,p_item_sequence=>60
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'V Country'
,p_source=>'V_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361083405611050889+wwv_flow_api.g_id_offset
,p_name=>'P18_CREATED'
,p_item_sequence=>70
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>361083642823050889+wwv_flow_api.g_id_offset
,p_name=>'P18_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>361083838116050889+wwv_flow_api.g_id_offset
,p_name=>'P18_UPDATED'
,p_item_sequence=>90
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>361084025268050889+wwv_flow_api.g_id_offset
,p_name=>'P18_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>361080706335050883+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>361084818857050890+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P18_VENDOR_ID'
,p_attribute_04=>'VENDOR_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>361085009957050891+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P18_VENDOR_ID'
,p_attribute_04=>'VENDOR_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>361085227208050891+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>361081113907050884+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Contacts'
,p_page_mode=>'NORMAL'
,p_step_title=>'Contacts'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416233704'
);
wwv_flow_api.create_page_plug(
 p_id=>361460411922096131+wwv_flow_api.g_id_offset
,p_plug_name=>'Contacts'
,p_plug_template=>350496024353139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "CONTACT_ID", ',
'"INTERNAL_NAME",',
'"TYPE",',
'"DEPARTMENT",',
'"VID",',
'"ACCOUNT_NUMBER",',
'"PRIMARY_CONTACT_NAME",',
'"VENDOR_NAME",',
'"NAME",',
'"TITLE",',
'"PHONE",',
'"FAX",',
'"EMAIL",',
'"ADDRESS",',
'"CITY",',
'"STATE",',
'"ZIP_CODE",',
'"COUNTRY",',
'"DEPT_ID"',
'from "#OWNER#"."CREO_CONTACT" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>361460602564096132+wwv_flow_api.g_id_offset
,p_name=>'Contacts'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_api.g_region_source
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:22:&APP_SESSION.::::P22_CONTACT_ID:#CONTACT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'GREGSTONT@GMAIL.COM'
,p_internal_uid=>361460602564096132
);
wwv_flow_api.create_worksheet_column(
 p_id=>361460744978096134+wwv_flow_api.g_id_offset
,p_db_column_name=>'CONTACT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Contact Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361460898779096135+wwv_flow_api.g_id_offset
,p_db_column_name=>'INTERNAL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Internal Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361460990390096135+wwv_flow_api.g_id_offset
,p_db_column_name=>'TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461042002096136+wwv_flow_api.g_id_offset
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461106830096136+wwv_flow_api.g_id_offset
,p_db_column_name=>'VID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Vid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461276249096136+wwv_flow_api.g_id_offset
,p_db_column_name=>'ACCOUNT_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Account Number'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461381777096136+wwv_flow_api.g_id_offset
,p_db_column_name=>'PRIMARY_CONTACT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Primary Contact Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461442303096136+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Vendor Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461555765096137+wwv_flow_api.g_id_offset
,p_db_column_name=>'NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461609737096137+wwv_flow_api.g_id_offset
,p_db_column_name=>'TITLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461758507096137+wwv_flow_api.g_id_offset
,p_db_column_name=>'PHONE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461894701096137+wwv_flow_api.g_id_offset
,p_db_column_name=>'FAX'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fax'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361461926868096137+wwv_flow_api.g_id_offset
,p_db_column_name=>'EMAIL'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361462064126096138+wwv_flow_api.g_id_offset
,p_db_column_name=>'ADDRESS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361462168014096138+wwv_flow_api.g_id_offset
,p_db_column_name=>'CITY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361462226377096138+wwv_flow_api.g_id_offset
,p_db_column_name=>'STATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361462306210096138+wwv_flow_api.g_id_offset
,p_db_column_name=>'ZIP_CODE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Zip Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361462406034096138+wwv_flow_api.g_id_offset
,p_db_column_name=>'COUNTRY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361462535173096139+wwv_flow_api.g_id_offset
,p_db_column_name=>'DEPT_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Dept Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>361462921883096551+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3614630'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CONTACT_ID:INTERNAL_NAME:TYPE:DEPARTMENT:VID:ACCOUNT_NUMBER:PRIMARY_CONTACT_NAME:VENDOR_NAME:NAME:TITLE:PHONE:FAX:EMAIL:ADDRESS:CITY:STATE:ZIP_CODE:COUNTRY:DEPT_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>361462728573096139+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>361460411922096131+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on CREO_CONTACT'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on CREO_CONTACT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140417002357'
);
wwv_flow_api.create_page_plug(
 p_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on CREO_CONTACT'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>361454296483096113+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P22_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>361454473709096113+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>361454147383096113+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P22_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>361454314604096113+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P22_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>361455232874096115+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>361455492732096115+wwv_flow_api.g_id_offset
,p_name=>'P22_CONTACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Id'
,p_source=>'CONTACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>361455601081096116+wwv_flow_api.g_id_offset
,p_name=>'P22_INTERNAL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Name'
,p_source=>'INTERNAL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361455877810096117+wwv_flow_api.g_id_offset
,p_name=>'P22_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361456083177096117+wwv_flow_api.g_id_offset
,p_name=>'P22_DEPARTMENT'
,p_item_sequence=>40
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEPARTMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361456275536096117+wwv_flow_api.g_id_offset
,p_name=>'P22_VID'
,p_item_sequence=>50
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vid'
,p_source=>'VID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361456453483096117+wwv_flow_api.g_id_offset
,p_name=>'P22_ACCOUNT_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Number'
,p_source=>'ACCOUNT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361456680058096118+wwv_flow_api.g_id_offset
,p_name=>'P22_PRIMARY_CONTACT_NAME'
,p_item_sequence=>70
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary Contact Name'
,p_source=>'PRIMARY_CONTACT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361456807434096118+wwv_flow_api.g_id_offset
,p_name=>'P22_VENDOR_NAME'
,p_item_sequence=>80
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Name'
,p_source=>'VENDOR_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361457081199096119+wwv_flow_api.g_id_offset
,p_name=>'P22_NAME'
,p_item_sequence=>90
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361457281343096119+wwv_flow_api.g_id_offset
,p_name=>'P22_TITLE'
,p_item_sequence=>100
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361457418703096119+wwv_flow_api.g_id_offset
,p_name=>'P22_PHONE'
,p_item_sequence=>110
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361457678456096120+wwv_flow_api.g_id_offset
,p_name=>'P22_FAX'
,p_item_sequence=>120
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax'
,p_source=>'FAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361457807638096120+wwv_flow_api.g_id_offset
,p_name=>'P22_EMAIL'
,p_item_sequence=>130
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361458043912096120+wwv_flow_api.g_id_offset
,p_name=>'P22_ADDRESS'
,p_item_sequence=>140
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361458216613096120+wwv_flow_api.g_id_offset
,p_name=>'P22_CITY'
,p_item_sequence=>150
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361458438040096120+wwv_flow_api.g_id_offset
,p_name=>'P22_STATE'
,p_item_sequence=>160
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361458658096096121+wwv_flow_api.g_id_offset
,p_name=>'P22_ZIP_CODE'
,p_item_sequence=>170
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip Code'
,p_source=>'ZIP_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361458801959096121+wwv_flow_api.g_id_offset
,p_name=>'P22_COUNTRY'
,p_item_sequence=>180
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361459066289096121+wwv_flow_api.g_id_offset
,p_name=>'P22_DEPT_ID'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>361453977268096112+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id'
,p_source=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select dept_name, dept_id from BC_dept'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350501537261139740+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>361459430522096122+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CREO_CONTACT'
,p_attribute_02=>'CREO_CONTACT'
,p_attribute_03=>'P22_CONTACT_ID'
,p_attribute_04=>'CONTACT_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>361459660460096122+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CREO_CONTACT'
,p_attribute_02=>'CREO_CONTACT'
,p_attribute_03=>'P22_CONTACT_ID'
,p_attribute_04=>'CONTACT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>361459855862096122+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>361454314604096113+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Vendors'
,p_page_mode=>'NORMAL'
,p_step_title=>'Vendors'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416235114'
);
wwv_flow_api.create_page_plug(
 p_id=>361500393394137238+wwv_flow_api.g_id_offset
,p_plug_name=>'Vendors'
,p_plug_template=>350496024353139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "VENDOR_ID", ',
'"V_ADDRESS",',
'"V_CITY",',
'"V_STATE",',
'"V_ZIP",',
'"V_COUNTRY",',
'"VENDOR_NAME"',
'from "#OWNER#"."BC_VENDOR" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>361500506241137238+wwv_flow_api.g_id_offset
,p_name=>'Vendors'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "VENDOR_ID", ',
'"V_ADDRESS",',
'"V_CITY",',
'"V_STATE",',
'"V_ZIP",',
'"V_COUNTRY",',
'"VENDOR_NAME"',
'from "#OWNER#"."BC_VENDOR" ',
'  ',
''))
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_VENDOR_ID:#VENDOR_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'GREGSTONT@GMAIL.COM'
,p_internal_uid=>361500506241137238
);
wwv_flow_api.create_worksheet_column(
 p_id=>361500653504137239+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Vendor Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361500771615137239+wwv_flow_api.g_id_offset
,p_db_column_name=>'V_ADDRESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361500891803137240+wwv_flow_api.g_id_offset
,p_db_column_name=>'V_CITY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361500922433137240+wwv_flow_api.g_id_offset
,p_db_column_name=>'V_STATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361501041534137240+wwv_flow_api.g_id_offset
,p_db_column_name=>'V_ZIP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361501190894137240+wwv_flow_api.g_id_offset
,p_db_column_name=>'V_COUNTRY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>361501214221137240+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Vendor Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>361502103389138738+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3615022'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'VENDOR_ID:V_ADDRESS:V_CITY:V_STATE:V_ZIP:V_COUNTRY:VENDOR_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>361501494380137240+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>361500393394137238+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_VENDOR'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BC_VENDOR'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GREGSTONT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140416234925'
);
wwv_flow_api.create_page_plug(
 p_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_plug_name=>'Form on BC_VENDOR'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>361496494598137229+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P24_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>361496682430137229+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>361496370961137229+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P24_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>361496556457137229+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P24_VENDOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>361497404324137231+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>361497656318137232+wwv_flow_api.g_id_offset
,p_name=>'P24_VENDOR_ID'
,p_item_sequence=>10
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>361497870589137234+wwv_flow_api.g_id_offset
,p_name=>'P24_V_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'V_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361498002568137234+wwv_flow_api.g_id_offset
,p_name=>'P24_V_CITY'
,p_item_sequence=>30
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'V_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361498251760137234+wwv_flow_api.g_id_offset
,p_name=>'P24_V_STATE'
,p_item_sequence=>40
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'V_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361498439193137234+wwv_flow_api.g_id_offset
,p_name=>'P24_V_ZIP'
,p_item_sequence=>50
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'V_ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361498611717137235+wwv_flow_api.g_id_offset
,p_name=>'P24_V_COUNTRY'
,p_item_sequence=>60
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'V_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>361498856756137235+wwv_flow_api.g_id_offset
,p_name=>'P24_VENDOR_NAME'
,p_item_sequence=>15
,p_item_plug_id=>361496165064137229+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Name'
,p_source=>'VENDOR_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350501342331139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>361499360707137236+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P24_VENDOR_ID'
,p_attribute_04=>'VENDOR_ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>361499565383137237+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P24_VENDOR_ID'
,p_attribute_04=>'VENDOR_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>361499757535137237+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>361496556457137229+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>350503419048139745+wwv_flow_api.g_id_offset
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>350492514312139723+wwv_flow_api.g_id_offset
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20140415195725'
);
wwv_flow_api.create_page_plug(
 p_id=>350503995074139747+wwv_flow_api.g_id_offset
,p_plug_name=>'Login'
,p_plug_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>350504018218139747+wwv_flow_api.g_id_offset
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>350503995074139747+wwv_flow_api.g_id_offset
,p_prompt=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350504174744139748+wwv_flow_api.g_id_offset
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>350503995074139747+wwv_flow_api.g_id_offset
,p_prompt=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350504251320139748+wwv_flow_api.g_id_offset
,p_name=>'P101_LOGIN'
,p_item_sequence=>30
,p_item_plug_id=>350503995074139747+wwv_flow_api.g_id_offset
,p_item_default=>'Login'
,p_prompt=>'Login'
,p_source=>'LOGIN'
,p_source_type=>'STATIC'
,p_display_as=>'BUTTON'
,p_tag_attributes=>'template:'||to_char(350501692613139741 + wwv_flow_api.g_id_offset)
,p_begin_on_new_line=>'N'
,p_button_action=>'SUBMIT'
,p_button_is_hot=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>350504460144139749+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>350504355915139748+wwv_flow_api.g_id_offset
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>350504634639139749+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>350504554264139749+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>350504709335139749+wwv_flow_api.g_id_offset
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>350505144274139750+wwv_flow_api.g_id_offset
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>350492454699139722+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Dialog'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer" role="dialog" aria-label="#TITLE#">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.close(#IS_MODAL#);'
,p_dialog_height=>'400'
,p_dialog_width=>'600'
,p_dialog_max_width=>'1000'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350492514312139723+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uLoginContainer">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="$x_Remove(''uNotificationMessage'')"></a>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>350492671576139723+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Minimal Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer" class="minimalPage">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#TITLE#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350492770701139724+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350492895206139725+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350492919149139725+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493047021139726+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493107990139727+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Content Frame'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'		#REGION_POSITION_02#',
'    </span>',
'  </div>',
'  <div class="uFrameContent">',
'	<div class="uFrameMain">',
'		#BODY#',
'	</div>',
'	<div class="uFrameSide">',
'		#REGION_POSITION_03#',
'	</div>',
'  </div>',
'</section>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>350493237341139727+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493368300139727+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493419839139727+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493578571139728+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493696106139728+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Search Filter Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="body" class="uSearchContainer">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary=""  width="100%">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="vertical-align:top">',
'          <div class="ebaSearchFilterBar">#REGION_POSITION_02#</div>',
'        </td>',
'        <td class="tbl-main">#BODY##REGION_POSITION_03#</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493751625139729+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Wizard Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'',
'<div class="cWizard">',
'	<div class="cWizardHeader">',
'		#REGION_POSITION_02#',
'	</div>',
'    <div class="cWizardContentContainer">',
'    <div class="cWizardContent">',
'        #BODY##REGION_POSITION_03#',
'    </div>',
'    <div class="clear"></div>',
'</div>',
'',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493841937139729+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350493983733139730+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPrinterFriendly">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>350494074165139730+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350494122138139730+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350494230304139730+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350494355997139730+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>350501692613139741+wwv_flow_api.g_id_offset
,p_template_name=>'Button'
,p_template=>'<a href="#LINK#" class="uButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButton uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350501736823139741+wwv_flow_api.g_id_offset
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>'<input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>'<input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_template_comment=>'5.0 upgrade'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350501889834139741+wwv_flow_api.g_id_offset
,p_template_name=>'Interactive Report Button'
,p_template=>'<a href="#LINK#" class="uButtonIR #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350501972061139741+wwv_flow_api.g_id_offset
,p_template_name=>'Interactive Report Button (Next)'
,p_template=>'<a href="#LINK#" class="uButtonIR nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502025920139741+wwv_flow_api.g_id_offset
,p_template_name=>'Large Button'
,p_template=>'<a href="#LINK#" class="uButtonLarge #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502194424139741+wwv_flow_api.g_id_offset
,p_template_name=>'Large Button (Next)'
,p_template=>'<a href="#LINK#" class="uButtonLarge nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502266352139741+wwv_flow_api.g_id_offset
,p_template_name=>'Large Button (Previous)'
,p_template=>'<a href="#LINK#" class="uButtonLarge prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge utHotButton prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502310972139741+wwv_flow_api.g_id_offset
,p_template_name=>'Small Button'
,p_template=>'<a href="#LINK#" class="uButtonSmall #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonSmall uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502445813139741+wwv_flow_api.g_id_offset
,p_template_name=>'[ + ] Add Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#"  class="addIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502599049139741+wwv_flow_api.g_id_offset
,p_template_name=>'[ > ] Go To Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350502692929139741+wwv_flow_api.g_id_offset
,p_template_name=>'[ Text ] Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>350494452746139730+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#BUTTON_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350494547112139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>350494621658139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>350494745894139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    #BODY#',
'</section>'))
,p_page_plug_template_name=>'Borderless Region (no heading)'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>350494843408139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBracketedRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>26
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>350494978506139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBreadcrumbs" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  #BODY#',
'  <div class="uBreadcrumbsBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>26
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>350495050474139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>26
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350495114800139731+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>26
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350495255665139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350495349059139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350495402645139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350495555456139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350495633504139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350495726111139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350495802584139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350495959642139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region - Borderless'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496024353139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496174042139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding uLoginRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uLoginHeading">',
'    <span class="bgArrow"></span>',
'    <div class="appIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="appIcon #REGION_STATIC_ID#" alt=""/>',
'    </div> ',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uLoginBody clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350496259812139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Modal Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350496336320139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>26
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496418233139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region - Heading Inside'
,p_theme_id=>26
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496527798139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix">',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>26
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496622423139732+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>26
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496738149139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion uNoHeading uReportFilter #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    <div class="uReportFilterRow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uSearchIcon" alt="" />',
'    #BODY#',
'    </div>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>26
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496844939139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350496976181139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350497043167139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350497172280139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - Heading Inside'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350497244196139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix"  style="height: 400px; overflow:scroll">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Scrollable Content Region'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1826089610826571714
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350497385158139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uFilterRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Search Filter Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350497403429139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>350497563518139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region - Heading Inside'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350497625833139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350497711663139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>26
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350497870930139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>26
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>350497949186139733+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" style="display:none" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'jQuery Modal Region Template'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
null;
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>350499140041139736+wwv_flow_api.g_id_offset
,p_list_template_current=>'<a href="#LINK#" class="uButtonSmall uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButtonSmall" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_theme_id=>26
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>350499229739139736+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>26
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350499397734139736+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350499464508139736+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>26
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350499594728139736+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>26
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350499646897139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>26
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350499704675139737+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350499864392139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav class="uPageTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>350499925097139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>26
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#f_spacer.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350500087980139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>26
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350500147183139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Search Filter Tabs'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="ebaViewTabs">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350500239930139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350500370573139737+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>26
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350500405431139737+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="" />',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="" />',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350500536483139737+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>26
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>350500665447139740+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350500730028139740+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350500873268139740+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>26
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350500929621139740+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>350498030814139734+wwv_flow_api.g_id_offset
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350498030814139734+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350498141766139735+wwv_flow_api.g_id_offset
,p_row_template_name=>'Comment Bubbles'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350498238618139735+wwv_flow_api.g_id_offset
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350498238618139735+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350498341245139735+wwv_flow_api.g_id_offset
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350498341245139735+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350498462762139735+wwv_flow_api.g_id_offset
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350498462762139735+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350498538584139735+wwv_flow_api.g_id_offset
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350498619592139735+wwv_flow_api.g_id_offset
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350498619592139735+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350498725833139736+wwv_flow_api.g_id_offset
,p_row_template_name=>'Standard - Alternative'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350498725833139736+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350498873256139736+wwv_flow_api.g_id_offset
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350498930527139736+wwv_flow_api.g_id_offset
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350499050003139736+wwv_flow_api.g_id_offset
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>350501030271139740+wwv_flow_api.g_id_offset
,p_template_name=>'Hidden label, read by screen reader'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350501187706139740+wwv_flow_api.g_id_offset
,p_template_name=>'No Label'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350501293398139740+wwv_flow_api.g_id_offset
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350501342331139740+wwv_flow_api.g_id_offset
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350501480319139740+wwv_flow_api.g_id_offset
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired">'
,p_template_body2=>' <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350501537261139740+wwv_flow_api.g_id_offset
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>350502744911139742+wwv_flow_api.g_id_offset
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> '
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>350502852522139742+wwv_flow_api.g_id_offset
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>350503211112139743+wwv_flow_api.g_id_offset
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#" type="text/css" media="all"/>',
'#THEME_CSS#'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>350502938107139742+wwv_flow_api.g_id_offset
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>350503041352139743+wwv_flow_api.g_id_offset
,p_cal_template_name=>'Calendar - Alternative'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>350503195990139743+wwv_flow_api.g_id_offset
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th scope="col">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uCalendarSmall" summary="#IMONTH# #YYYY#">',
'  <caption>#IMONTH# #YYYY#</caption>'))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </tbody>',
'</table>'))
,p_day_title_format=>'#DD#'
,p_day_open_format=>'<td>#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'#DD#'
,p_weekend_open_format=>'<td class="weekend">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'#DD#'
,p_nonday_open_format=>'<td class="inactive">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>350503321264139744+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_theme_name=>'Productivity Applications'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_is_locked=>false
,p_default_page_template=>350493419839139727+wwv_flow_api.g_id_offset
,p_default_dialog_template=>350492454699139722+wwv_flow_api.g_id_offset
,p_error_template=>350492919149139725+wwv_flow_api.g_id_offset
,p_printer_friendly_template=>350493983733139730+wwv_flow_api.g_id_offset
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>350492514312139723+wwv_flow_api.g_id_offset
,p_default_button_template=>350501692613139741+wwv_flow_api.g_id_offset
,p_default_region_template=>350496976181139733+wwv_flow_api.g_id_offset
,p_default_chart_template=>350495349059139732+wwv_flow_api.g_id_offset
,p_default_form_template=>350495633504139732+wwv_flow_api.g_id_offset
,p_default_reportr_template=>350496976181139733+wwv_flow_api.g_id_offset
,p_default_tabform_template=>350496976181139733+wwv_flow_api.g_id_offset
,p_default_wizard_template=>350497711663139733+wwv_flow_api.g_id_offset
,p_default_menur_template=>350494978506139731+wwv_flow_api.g_id_offset
,p_default_listr_template=>350495255665139732+wwv_flow_api.g_id_offset
,p_default_irr_template=>350496024353139732+wwv_flow_api.g_id_offset
,p_default_report_template=>350498619592139735+wwv_flow_api.g_id_offset
,p_default_label_template=>350501293398139740+wwv_flow_api.g_id_offset
,p_default_menu_template=>350502744911139742+wwv_flow_api.g_id_offset
,p_default_calendar_template=>350502938107139742+wwv_flow_api.g_id_offset
,p_default_list_template=>350500730028139740+wwv_flow_api.g_id_offset
,p_default_option_label=>350501342331139740+wwv_flow_api.g_id_offset
,p_default_required_label=>350501537261139740+wwv_flow_api.g_id_offset
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix=>'#IMAGE_PREFIX#themes/theme_26/'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>350538959307165383+wwv_flow_api.g_id_offset
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>350503613162139746+wwv_flow_api.g_id_offset
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>351821507186501831+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end;
commit;
end;
/
set verify on feedback on define on
prompt  ...done
