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
--     PAGE: 2
--   Manifest End
--   Version:         24.2.5
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00002
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>unistr('Relat\00F3rio Interativo')
,p_alias=>unistr('RELAT\00D3RIO-INTERATIVO')
,p_step_title=>unistr('Relat\00F3rio Interativo')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111210951407352710032)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(109986642973986023460)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(109986326986063023408)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(109986705467904023489)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111210952140142710035)
,p_plug_name=>unistr('Relat\00F3rio Interativo')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(109986620611495023451)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OCOR_VIEW'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Relat\00F3rio Interativo')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(111210952284099710035)
,p_name=>unistr('Relat\00F3rio Interativo')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'2218851@ALUNO.UNIVESP.BR'
,p_internal_uid=>111210952284099710035
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210952666909710263)
,p_db_column_name=>'MUNICIPIO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Municipio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210953053046710263)
,p_db_column_name=>'OCORRENCIA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ocorrencia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210953460508710263)
,p_db_column_name=>'ANO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ano'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210953878949710264)
,p_db_column_name=>'JANEIRO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Jan'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210954220811710264)
,p_db_column_name=>'FEVEREIRO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fev'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210954630585710264)
,p_db_column_name=>'MARCO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mar'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210955037226710264)
,p_db_column_name=>'ABRIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Abr'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210955469251710265)
,p_db_column_name=>'MAIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mai'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210955821697710265)
,p_db_column_name=>'JUNHO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Jun'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210956284887710265)
,p_db_column_name=>'JULHO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Jul'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210956670024710265)
,p_db_column_name=>'AGOSTO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ago'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210957003785710266)
,p_db_column_name=>'SETEMBRO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Set'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210957418677710266)
,p_db_column_name=>'OUTUBRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Out'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210957873187710266)
,p_db_column_name=>'NOVEMBRO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Nov'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210958265889710266)
,p_db_column_name=>'DEZEMBRO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Dez'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111210958691157710266)
,p_db_column_name=>'TOTAL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Total'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(111210965625747711416)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1112109657'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MUNICIPIO:OCORRENCIA:ANO:JANEIRO:FEVEREIRO:MARCO:ABRIL:MAIO:JUNHO:JULHO:AGOSTO:SETEMBRO:OUTUBRO:NOVEMBRO:DEZEMBRO:TOTAL'
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
