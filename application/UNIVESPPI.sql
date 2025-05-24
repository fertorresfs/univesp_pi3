prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_default_workspace_id=>88188309796877567175
);
end;
/
prompt  WORKSPACE 88188309796877567175
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   22:00 Saturday May 24, 2025
--   Exported By:     2201146@ALUNO.UNIVESP.BR
--   Export Type:     Workspace Export
--   Version:         24.2.5
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>88188309796877567175);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace UNIVESPPI...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 88218075939877059574
 ,p_provisioning_company_id => 88188309796877567175
 ,p_short_name => 'UNIVESPPI'
 ,p_display_name => 'UNIVESPPI'
 ,p_first_schema_provisioned => 'WKSP_UNIVESPPI'
 ,p_company_schemas => 'WKSP_UNIVESPPI'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'UNIVESPP'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'UNIVESPPI'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1815043986472711,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1814950743472711,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1814853097472710,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88188309658479567175',
  p_user_name                    => '2201146@ALUNO.UNIVESP.BR',
  p_first_name                   => 'Fernando',
  p_last_name                    => 'Torres Ferreira da Silva',
  p_description                  => '',
  p_email_address                => '2201146@aluno.univesp.br',
  p_web_password                 => 'AA9BC135358B887C77E0D5B804A8FDDE3E58339B1728D5FC6F4F6BCD53676A8FEC52A347C2A4A611C77501F36EA693AC2580F63DD7138A5620620ED67921C677',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202505242159','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88219519966160602218',
  p_user_name                    => '2201769@ALUNO.UNIVESP.BR',
  p_first_name                   => '2201769@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2201769@aluno.univesp.br',
  p_web_password                 => 'E6F65D3E3216EF0ABE5990FE5DF0D7D41FBC3CC42B94D2AE59CC7C288886F5DD0C0C7C135943B9EB45E00CA6D3C8777A103316A22B34FB25F797E200688D4D7E',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404031931','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88219791937323613392',
  p_user_name                    => '2206737@ALUNO.UNIVESP.BR',
  p_first_name                   => '2206737@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2206737@aluno.univesp.br',
  p_web_password                 => 'A8AEB68053272D4C5973510D02F048D6CB6F4EF37FF3CA61C294411E7A292779E3B9E3603EDC23356B3B4D8A6A05A77054753D5270B83AB8889016ADBF563B9F',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404041445','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88220166013312096597',
  p_user_name                    => '2211046@ALUNO.UNIVESP.BR',
  p_first_name                   => '2211046@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2211046@aluno.univesp.br',
  p_web_password                 => 'A111C87EB89EACBC73DBECC2A8048FDC3A44784AED17429ECD9765B1E25BD4B65A50F629E75F35998937EDCDDE952C710FA94458E21238CAC91666E676358ADE',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404030000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88219388177224093832',
  p_user_name                    => '2217008@ALUNO.UNIVESP.BR',
  p_first_name                   => '2217008@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2217008@aluno.univesp.br',
  p_web_password                 => 'FE237FB2B9D45816CA5A0B77FB29626D9DBC6F488A37102E9DF0F042D75691AE6057B612B5770CD066B7B780209DC62308B08887152E5E01F732241FB6875DCE',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404030000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88218581776596583881',
  p_user_name                    => '2218851@ALUNO.UNIVESP.BR',
  p_first_name                   => '2218851@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2218851@aluno.univesp.br',
  p_web_password                 => '3187A57904CB74AAC7AD69379865E447340BE768A47130018AAB879CD88AA892AF1B9C76BB45F417C7B412A3A5310C13A560D2901978F754F09CA44C70AF6805',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202411042228','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 7,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88219323446692083993',
  p_user_name                    => '2224257@ALUNO.UNIVESP.BR',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2224257@aluno.univesp.br',
  p_web_password                 => 'DC6CADB1A28F24CA29841618CAEF95D1ECC69EE8EE3FCC7DE25D9AB0E5EF6CA39CD58354F3E8A275542095A456E180C7296B3E66EE40C0873053107FD46E890C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404040444','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '88220479393420099487',
  p_user_name                    => '2226076@ALUNO.UNIVESP.BR',
  p_first_name                   => '2226076@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '2226076@aluno.univesp.br',
  p_web_password                 => '0A04F9997F4A9635C370C6F14233C9D139113820EF9BF4F568E515F41C8878A599E617D6F669D558BC7816F64E09D60DF593873BF774CEB6492CA348B429C8FB',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202503150033','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '20012040330418731994',
  p_user_name                    => '23227980@ALUNO.UNIVESP.BR',
  p_first_name                   => '23227980@aluno.univesp.br',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '23227980@aluno.univesp.br',
  p_web_password                 => 'EF145DA55FC0E8B4917393FA455DA170B67E12F09F691F4853AE18079D271B9F95F2D2D2F72DB9FAC0E3C2ED874BFDBE30F178A2E21A48BFD2247CE47B573CC0',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1814853097472710:1814950743472711:1815043986472711:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202503150000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '75668570174950175105',
  p_user_name                    => 'SENTINELLINS',
  p_first_name                   => 'Sentinel',
  p_last_name                    => 'Lins',
  p_description                  => '',
  p_email_address                => 'sentinellins@gmail.com',
  p_web_password                 => 'EAC9E0EA68A39FD875FE602076235B0B4F4A2028723F7146B0F4F0F2CC7719BAD3EDA640A3E762CF022E7CDBCEE14C0973934FC5BD76D327F69221009254487D',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_UNIVESPPI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202411140000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
