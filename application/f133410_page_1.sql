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
,p_release=>'24.2.5'
,p_default_workspace_id=>88188309796877567175
,p_default_application_id=>133410
,p_default_id_offset=>0
,p_default_owner=>'WKSP_UNIVESPPI'
);
end;
/
 
prompt APPLICATION 133410 - SentinelLins
--
-- Application Export:
--   Application:     133410
--   Name:            SentinelLins
--   Exported By:     2201146@ALUNO.UNIVESP.BR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 1
--   Manifest End
--   Version:         24.2.5
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00001
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>unistr('Ocorr\00EAncias Regionais - Lins SP')
,p_alias=>'DADOS'
,p_step_title=>'SentinelLins'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109986828313362023612)
,p_plug_name=>'Sentinel Lins SP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(109986397142472023440)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110469624438442194233)
,p_button_sequence=>10
,p_button_name=>'BtnFiltros'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(109986703914041023488)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Filtros de Ocorr\00EAncias')
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-table'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110836329738907271203)
,p_button_sequence=>30
,p_button_name=>'BtnDashboard'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(109986703914041023488)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Painel de Controle (Dashboard)'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-combo-chart'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110816549098247278402)
,p_button_sequence=>40
,p_button_name=>'BtnRelatorio'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(109986703914041023488)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Relat\00F3rio Interativo')
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-file-text-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110816549129331278403)
,p_button_sequence=>50
,p_button_name=>'BtnGrafico1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(109986703914041023488)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Gr\00E1fico de Ocorr\00EAncias')
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-combo-chart'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
