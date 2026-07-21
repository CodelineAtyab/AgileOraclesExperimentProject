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
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>5345783099783523
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'DEV_SCHEMA'
);
end;
/
 
prompt APPLICATION 100 - Hospital Management System
--
-- Application Export:
--   Application:     100
--   Name:            Hospital Management System
--   Date and Time:   11:17 Tuesday July 21, 2026
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     25
--       Items:                  114
--       Validations:              8
--       Processes:               25
--       Regions:                 69
--       Buttons:                 47
--       Dynamic Actions:         11
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             21
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   9
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1545000731230301
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DEV_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Hospital Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'HOSPITAL-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'9D52D8504C0AECF450F6106C1ECC8300B18C67B073FDFF11E1D587BC1ACBDEAD'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(7551168175238943)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Hospital Management System'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Hospital Management System'
,p_created_on=>wwv_flow_imp.dz('20260713051438Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721102751Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461235051441
,p_version_scn=>'11327230'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(7552069510238959)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(7552852805239047)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7547109784238921)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7550017966238929)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7547365356238922)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7547697976238922)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7549706346238928)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7549128298238926)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7550397385238929)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7550650375238930)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7548859832238925)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7546865482238891)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260713051438Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7549458594238926)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7547955020238924)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7548504006238925)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7548231735238924)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7552852805239047)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260713051440Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7565916374239190)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7566522340239192)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7565916374239190)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7567005879239197)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7565916374239190)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7552069510238959)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:9ktR_SZ3N13hqkqEkiqp50z4sg_dmFCMNRTrBe0zkqU'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9692163266597651)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
,p_created_on=>wwv_flow_imp.dz('20260716115551Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9190915019002654)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Appointments form'
,p_static_id=>'appointments-form'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9176658375982532)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Appointments list'
,p_static_id=>'appointments-list'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
,p_created_on=>wwv_flow_imp.dz('20260715072315Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072315Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9604588830883379)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
,p_created_on=>wwv_flow_imp.dz('20260716064355Z')
,p_updated_on=>wwv_flow_imp.dz('20260716064355Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9671436677496029)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Current Admissions'
,p_static_id=>'current-admissions'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
,p_created_on=>wwv_flow_imp.dz('20260716113855Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7592550601559315)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'DEPARTMENT'
,p_static_id=>'department'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
,p_created_on=>wwv_flow_imp.dz('20260713062427Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7596898699630358)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Department From'
,p_static_id=>'department-from'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8815437345056821)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'DOCTER'
,p_static_id=>'docter'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
,p_created_on=>wwv_flow_imp.dz('20260714110950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8794315062563587)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'DOCTORS'
,p_static_id=>'doctors-2'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7563315070239161)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8690445155483297)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'home'
,p_static_id=>'home-3'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20260713102943Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102943Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9168538168887287)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Low Stock Medicines Report'
,p_static_id=>'low-stock-medicines-report'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260715070722Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070722Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9154573349399151)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'MEDICINE form'
,p_static_id=>'medicine-form'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9147983626341582)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'MEDICINES'
,p_static_id=>'medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
,p_created_on=>wwv_flow_imp.dz('20260715053621Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9655632007326487)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Patient Admission Form'
,p_static_id=>'patient-admission-form'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
,p_created_on=>wwv_flow_imp.dz('20260716111040Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111040Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9214598804682932)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20260715122733Z')
,p_updated_on=>wwv_flow_imp.dz('20260715122733Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9701391998656336)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
,p_created_on=>wwv_flow_imp.dz('20260716120538Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9622711741388312)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'PATIENT_VISITS'
,p_static_id=>'patient-visits'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8763975877801436)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'PATIENTS'
,p_static_id=>'patients'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260714065519Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8771575515854231)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients-2'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20260714070407Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9567552991526605)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Prescription'
,p_static_id=>'prescription'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC9D09741455BAC7FFD5DDD957929004C21A080442D812B6B00586451DC5737C67D4F73CF370F40841499033E33840547420670650813C8120';
wwv_flow_imp.g_varchar2_table(2) := 'FA46E7CDBCE7739EF3061CD9912D90C82EC896B013202121211B21E9EE9AEF2B122778849354556FD5B7A8DB55A9BECBF7FDBF5FDFAAEE7BAB30412C42010D0A08803488278A0202204181260504409AE41385054082014D0A088034C9270A0B8004039A';
wwv_flow_imp.g_varchar2_table(3) := '14500D90A6564561C3282000324C285DE38800C835BA1BA65501906142E91A470440AED1DD30AD0A800C134AD7382200728DEE8669D5F900B541BA177EFF51C8CB4B3E88CD5C92D72BF39D3583B216AD4D9BB378CDE4CC456B9EF086C4BEB2CFEC3B6BC0';
wwv_flow_imp.g_varchar2_table(4) := '5AB0266D90CEE9595C0B902C4BB373F212B372F2A6CF59BC7A55D6E2BC83598BD734065B9BAA2D4DE6EB52935C2C997114923D5F06B64812D67B43625FD967F69D35602D5813D626EB9E461FB066AC1D4843B870712A4099391F779C93B36A5AE6A2D58B';
wwv_flow_imp.g_varchar2_table(5) := 'B372566FCDCAC9AB34C9F22912E10F32A459809C425AF85012EB8F2B40DA281ABDCC9AB176ACA1A2E5E2BC45DC3BCF5DB82EE2C78B3AE6A8F300A24F8A646F4CA3CDEB9224CD872C4D2297C22889559B0261F7B494179824BC6EF76D4A23B8246D55B6BD';
wwv_flow_imp.g_varchar2_table(6) := 'B4C3019A9197E7332767F54BF449390D09FF0F4869108B43149081D1F401DD405A9F9A93B3E645D6DE210DB5AAD4A100CD5DB43ACEBF1CFBC9A9B5D4661F4A62758E027D6519EB02CAE57D9974D9E0C8261D065066CE9AFE36492A6CBEAE71A40FA2EE07';
wwv_flow_imp.g_varchar2_table(7) := '28403D52AA2437EE9FFBCEDAA40764D17CD82100652DCA1B23C9D847D6C551D26915D5A854A097CD6CCFCFCC593B5E65F98716D31D20EE7920C99BA95571814C22B8C91A26C9F6AF1CD113E90AD08C857981D4F37C4EA2055212AB7B291068B5D83FE318';
wwv_flow_imp.g_varchar2_table(8) := 'E96996AE00F95BECABC8B8FE94C4EA860AD0873BA93946BA59A71B40998B573F0F499AAE9B65A222C72840315262A553EDBA0034F7BDF7022448EFE96493A8C6C10A50ACDE9D41971B7A34A30B40B6FA40EE793AE86190A8C3290A44F85BE47FD7A325ED';
wwv_flow_imp.g_varchar2_table(9) := '00C932018D57E1BE8BB0ECC71490A42C3D863C340394F5BBBCA9645F5F4A62F52805E47ECDB1D364B56680643B44EF03CF5CF4889D26809E5FF89FFE1230D933E5135673ECF80B9016253401146E6E18498D6BAA83CA8BD5750A98E4BA80115A9AD7147C';
wwv_flow_imp.g_varchar2_table(10) := 'BBD9C40069695F9475B1025A63A80920BA8A1700B91800CDCDCBB2A618AA0648E6AFEFC018CD0EB871055E629A6B007A65E9AA1812389292583D5B81985772FE43751C55F7407E761FD58D7AB6DEC6B3DED7E41BABD62BD500D96588291B6A5577B3725A';
wwv_flow_imp.g_varchar2_table(11) := '62A90120AB00C8CD40506B8E5D561F4BD50049922940ADC1A29C7B2920C9268B5A8B5403248B53985ACDDDAF9C093E50B9A80608A2077AB0E41EF68E96CE40354066BB4D35B5EEA2AFCDDA84C6863BB8535783DADB95B87DEB262ACB4B1F9A380FE7E532';
wwv_flow_imp.g_varchar2_table(12) := '5C96EB70177F54DBA1A133500D900CC9AADA6027179469D899835D577D1B55E56528BF5182B292CBA828BD8EAA8A9BA8A9AA447D6D0DEEDEB983A6BB771F9A380FE7ADA1325C96EBB8575709D55586BA9ADB68BCDB403FD2DB9DECA56B9A530D906BCC6D';
wwv_flow_imp.g_varchar2_table(13) := '7BAB32F5CB0DF5B560606E5EBB0A0E764B704D2613A2A3A390D42F016347A562DAD474FCFC678F63F60BCFE2ED5FCEC0EFE76761E56F5FC3BA656F2889F7F918BF37FB856794BC5C86CB2625262875499284C68606B4407AAFCD3234D4D7114C72DB0DF7';
wwv_flow_imp.g_varchar2_table(14) := 'B09C8604A8BEB69A7A99ABA8AEBC05EE0D62A323317AF8503CFFCC9378FFED5F61DD920558326F365E9BF11C5E7CFA713CF5483A7E92968AD4E44474EFD219311D23101A1C048BD9AC24DEE763FC5E6A723F252F97E1B2AFCD7C4EA96BDD926CA5EEE9CF';
wwv_flow_imp.g_varchar2_table(15) := '4CC3E86143A88E483050D59515A8A01E8F4F791EC6469BCC35B529978764B2DB6CA828BD46D7335530518F90963A10F3B35EC4EFE665E2A57F9D86F49143D02134D861DE70DD13460EC54BFFF624F562999897F902460E4D0699A29C266FDDBC01D96EAC';
wwv_flow_imp.g_varchar2_table(16) := '539B6100E253565545196C562B4650D096BD3117339E7B0A7D7A7685AB96BEF1DD90F1F37FC1D2EC57316C7012AC8D8D742A2D7395390E69D73000F145B2B5A909E96929984541EB1016E210C1D4541A111E8A57A6FF0C63870F421341C4A7D51FAFC7F3';
wwv_flow_imp.g_varchar2_table(17) := '8E1A07A0C6BB8AFA2386242B5B777C19953A48318B6157760CF062188040DFBA381E9B76EEE38D5BA6CDBB0A14BBF874ABEC18E0C538003507E3D87767F1E6BB793876AAB8F988EB37474F9EC51BCBD6806D73BD35FA5A60388042428271F9EA75BCBFF6';
wwv_flow_imp.g_varchar2_table(18) := 'BFF0DB951F63CB9E6F505B5FAFAF6A6DA8ADA6AE1E9B7717E29D151F61F9877FC695921B60DBDA50D4A3B2180EA021C949E0144A5FD7CF5DB88C3F7FF11532B397227BE91A7CF4D906ECD87F08C597AEEA1EA4A28B57B163DF217CF43FEBB160E96A6A73';
wwv_flow_imp.g_varchar2_table(19) := '09FEFBAF1B71FEE21584858660E8A0011832A0BFEEEDBABA42C301C4D742DDBA76C68431A3307EF408C4F7E8067F7F3F5CBD76037B0A0EE1D3FFDD8045CBD7E117BF7C1B996F2EC35BEF7F88151F7F864FBFD884F5DBF7623B41B0FFF0091C3D59849345';
wwv_flow_imp.g_varchar2_table(20) := '1794C4FB7C8CDF5BBF2D1F9FFCDF46A5CC5BEFAD45E65BCB94BA16AF58874F3FDF803D85875172AD148101FEE815DF1DE96447FA9891E81AD7C9D5B17648FBC603A8954CE161A148EEDF1753268CC5E4F43148199C8CDEF13DD0312A127EBEBEA8A9A9C5';
wwv_flow_imp.g_varchar2_table(21) := 'A5CB253872FC1476EC29C0175F6EC31F0982BC3FFE854E3B7FC292559F2869F9877F021FE3F7BEF8FB567CBDB7502973E9CA35D454D7C2DFCF8F863322A9EE9E1836742026737B940624F6A1DE27B895450EDB7559C58606A8B5AA818101E8D239163C76';
wwv_flow_imp.g_varchar2_table(22) := '9546C31A53278EC363932760F4881424F5EB8384F89EED4AC9FD13317AE430FC74CA0405D051A9439194D81B9D636394DEA775DB46DE371E403C6ED0C688F9F85810151981DE3DBBA33F05BF3D29BE4757444584C362B1C09B17E301E4CDD17481EF0220';
wwv_flow_imp.g_varchar2_table(23) := '17886EA4260540468AA60B7C1100B940742335290032523455F8A2B588E10072E7814A3B64ADF172BBF28603E8C6CD9B6E27728B41374ADDD7B6161BDBBB351C4045C517F0ED77A761B3B9CFD451ABD546BF5C9F44F1F98BED8D8FDBE7371C4066B31917';
wwv_flow_imp.g_varchar2_table(24) := '2E5DC1D69D7B70EEE265DCBDDBE8B220DCB9D380A27317C996BDB87CA5046C9BCB8C7150C386036858CA2074EDD25901E7C4C933D8B47D1776EF3F8053678B517EABCA4132FEB3DAF28A5B3879A618BBF61562CBD77B68BF088D8D8DE846360D1B7A6F46';
wwv_flow_imp.g_varchar2_table(25) := 'E23F737BFE9EE100F2355B307460121E9D9C8E7E7D7BD36066082A2BAB70964E6DF90507F0E5E61DD843409D387D16D76E94A1B2AA1A7575F5686C6A6A7334B957ABA9AD57EA2DB95E8A6F09D4DDFBBFC1864DDB905F78887A9D0BA8A27AC3C343697CAC';
wwv_flow_imp.g_varchar2_table(26) := '8F32E636846CF2B5186FD8C37000B550E0EBE3833EBD7A82A7524C4A1F8B41C9FDD1A36B17848604A3AABA1AE7CE5FC281C3C7B09B7A8A6DBBF2B171EB4EFCEDABADF872CB0EA5D7DA4EC776E51782D3B65D7B95635F6EDEAEE4E15E6DC7EE7CEC26100F';
wwv_flow_imp.g_varchar2_table(27) := '1EF91617E854C923FB616161E8D1BD2B06535B3C03607CDA081AA1EF0E1E736BB1CB30DB66470C0B50B37FCA2628D09FE0892388FA615CDA703C31F52798347E3452870CC480A47E88EFD50B5DBA75456CA7588413047E7EBEB0DA6CB85D5D83EADA5AD8';
wwv_flow_imp.g_varchar2_table(28) := 'EC76654E516868283A74085752A7D868F44D88C7B0A183C153457E3A6522C68D1A86414989E8DE350E0101FE4ADB467F311E406D1C8D0F0A0A445CA718F4EADE05C97DE3913220117C47C7981129CA64349EEE31EDD1490A6C53278C43FAE8910A200C09';
wwv_flow_imp.g_varchar2_table(29) := 'A7E1743D9398D00B9D633B82A78A181D9407F9673C801EE4A938EE100504400E91D57B2A1500794FAC1DE2A900C821B27A4FA50220EF89B5433C6D3F400E314354EAA90A180EA03B0DF71EB2E08E01B973B7C11DCDD26493E1003A53548C063784A8AEBE';
wwv_flow_imp.g_varchar2_table(30) := '1EA78BCE690A963B16361C40D535B5D84EC30C45E72FF24DAA2ED7DC4EBF629F293A8FAFF714A0A6A6CEE5F6E86D80E100EA12D70976D98E93A78BB079C72E1C3D7E1265E5B7F4D6EDA1F5F1ACC8D2B2721CFEF63B6C221B4E53CF23C30EB6EDA1053DF0';
wwv_flow_imp.g_varchar2_table(31) := '4DC301144F635A13C7A6A1270D6AF2A7FFD29512ECFFE61036D040687EE141655A07DF27CF03AA76BBF629A6369B5D19D1BF52729DA02DC61E1AF15FBF711B0A0E1EC195ABD720D1BF9E3DBA816D62DB3C9091879A6C3880D8DBA0C0400CA4414DBE7579';
wwv_flow_imp.g_varchar2_table(32) := '78CA60F02DCD7C2F7C7945A532ADE3D0D1E3D8B5B7103CFD8247D679EECE011A55E7291E274F172B203C687BFCD4197C73E898527EE3B69DE0117A1ED13F7CEC048ACE5FC0AD5B55CAD818CF491A396C081E9D948E81FDFB826D62DB8C969C08906BA4EB';
wwv_flow_imp.g_varchar2_table(33) := '14D35179A8C29409639579391C549E27D4990652F9793D3CB7A7AAAA1AD7AE972A533C188287A5F3172EE37A69993225849FC918161AA200DA3F3101A3860FC56353268047E7794E524CC728D738EDC4560D0F506B2D795E0E0795E7090D1B32904E2BA3';
wwv_flow_imp.g_varchar2_table(34) := 'F0E463933179E2384C1837464963460E07CF1C1C34A03FFAD2687B629F5EE0B944235207132029DFA789E3D2F0C4A393C1F38D5206272321BE07A2A322E163C04963AD35FCE1BEF1006AE3748ED64204FAFB2134384049911161E81C1B8D1EDDE2909810';
wwv_flow_imp.g_varchar2_table(35) := '8FBEBDE3D1A36B1C62A33B122011DFA790E020880530091184025A14100069514F94153D9060409B02A207D2A69FD797F60480BC3E48EE2C8071006AFEF665B5BAEFFF83D764B3292C4892A46C8DF06218807C7DFD94789CBF7459D9BAE30BDF3FC676F9';
wwv_flow_imp.g_varchar2_table(36) := 'F819E7961FE300E41F001F82889F80B133BF40F9A59883E50EA9A2B20A3BF6ECC78DB29BF0F1F383AF00C81DC272BF0D9224213C2A1AFE4141B87DBB4619ABE2312B1E38E501CFFB733BFE2F9BD5A63C5061FFC1C3D8BBFF006A6A6A1110148C0E513190';
wwv_flow_imp.g_varchar2_table(37) := '24710A737C0454B420491242C32311111DAB7CD279CC8A074EBFDAB21D7B6924FE4CD179706FA0A2EA361529E7072B9C2D566E79E65BA48FF05492B20AA5C7619B42C223DA548F276532CC29ACB5E8161F5FE5931E19DB1941A16130597C504123F1A78B';
wwv_flow_imp.g_varchar2_table(38) := 'CE29BD01DF03CF23F0FC1CA1B3E72E801F07C33D55E9CD0A656A464D6DBDF2740FAE93E7F634DC6D444D6D9DF23085D29BE5CA7F9BC065CE145FC0B113A7B0736F8172CF7C3E3F58818EF1C31C2CBE3E4ADB91B1714ACFC836C1808B21016A8993D96C41';
wwv_flow_imp.g_varchar2_table(39) := '504818F5489D1019D319C161E1F0F5F787C96C068FC03304A7CE142B0FA4E29EAAE0C061F0D40C7E70024FF360D0786ECFE6EDBBB063F73EF0C3140A0E1C01E765F84E536F73F1F255E51E7AB3C5ACD41D12DE0191046E44C74E4ADB467C26105A2D8606';
wwv_flow_imp.g_varchar2_table(40) := 'A8959F30D32879607028C223A31145BD42745C3744C474527A87D08828F0E92538341C8121A1CAB58A5F40A0020403E74FFB7CFDC2EF31849C378CCAF0355724D5C17545C6C481EB0E080A8199C06DDDB691F755036497E0FCFF844BE74858E8D4C6DF88';
wwv_flow_imp.g_varchar2_table(41) := 'EE038420FA1E10828DA1B80F308230802E8615C0E8DB9499EAD0D92CE75727DBEFA86D54354074BDEAF100A915CD68E5B4C4523540B2066A8D16004FF7474B2C550364922CA207F274729AEDD7124B0D0079FE3550B37E5EBF3169B89E550D1064ABEA0B';
wwv_flow_imp.g_varchar2_table(42) := '2FB78F98B719A82196AA01BA6B96C529CC20A06989A56A80AC61960AD2CF784F0B20A7BC6C074C68FB0000033A494441546D688EA52AB75503B476E6CC26402E54D5AA28E4460AC885F762A9CE24D5003537B7B3792B369EAB80A6186A02C86487A6C621';
wwv_flow_imp.g_varchar2_table(43) := '16972BA035869A00AAB2F9179002E23A8844F0D0B5A13986AACDD704D01F16FEA24196F037D5AD1BAEA06739C4B1E3186AB15A13404AC376FB72652B5E3C4F011D62A719A0DCEC97F93426BE8D791E3E85CDB1D364B96680EEB52E8B5EE89E101EF4AA4F';
wwv_flow_imp.g_varchar2_table(44) := 'CC740128A2A9F42FA4DC554A62F50C054A9A63A6D95A5D005AB870A11532666BB64654E014056419B39498E9D09A2E00B11D2BB333F8DBD80ADE17C9AD1558919B9DB1412F0B7503880D6A88925EA3E18D03BC2F52BB14704A66FADABEF35E8CF46B4E57';
wwv_flow_imp.g_varchar2_table(45) := '80784CC564C2D3645E1525B1BA9702A526D9FC2CC7484FB37405880D5B3E6FD645D9244FA4FD8B94C4EA160A48976433A6AE58F052A9DEE6E80E101B983B6FD6119B644D85246FE3BF45729D0292841D36A92925F73719C71C6185430062433F983FBBE2';
wwv_flow_imp.g_varchar2_table(46) := '7AEFC847687F0D25B1BA400119F2BBD77A474CE15838AA798701C4067FFEF4D3B6950B3266D157FC59F4772325B13A47813B928C677317CCFA15C7C0914D3A14A016C3E92BFE1AB32CC7D3B780B764E04ACB71B1D55D01FA31575A485A27ACC8CEF80C4E';
wwv_flow_imp.g_varchar2_table(47) := '589C0210FBF17EF6AC92DCF919EFDC4888E809597E8A40DA4CC76943AF6255AD0015E4C79E6D90213D7E3D21A2C7CA0533DF66ADE9B85356A701D4E20D77A92BB367FD357741C6230D66A90375B5E3E9BD5709AA4F20E138EDBBEF33EAC83817AF56D648';
wwv_flow_imp.g_varchar2_table(48) := '063E956569AE2C99D2FD2D3E1DE832615AEE82997F676D9D6D9FD3016AEDE0DADFCCBC4D5DED6E12600541F5FCCAF9190369DFA7D6E2136AF5B175927DA4DEB20D83219B464BC01459C6346F48EC2BFBCCBEB306AC056BC2DAB046F4E19B9E9B3D7379EE';
wwv_flow_imp.g_varchar2_table(49) := 'FC19BB96BCFE620D5CB8B814A007F9FD3189B2EAD7AFDCC8FDF5CC73B96F661C5B993D63DF8A05195BF927786F48EC2BFBCCBEB306AC056BF220BD5C79DC2D0172A520A2EDF62920006A9F5E22F70F141000FD4010F167FB141000B54F2FE3E4D6C91301';
wwv_flow_imp.g_varchar2_table(50) := '904E427A6B3502206F8DBC4E7E0B807412D25BAB1100796BE475F25B00A49390DE5A8D00C85B23AF93DF02209D84F49E6AEEF7540074BF1EE2AF762A20006AA76022FBFD0AFC030000FFFF82E8ACC6000000064944415403002ABC7999C287CA1F000000';
wwv_flow_imp.g_varchar2_table(51) := '0049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7554225725239076)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713051440Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051440Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC9D0B7455D599C7FFB90979BF1FBC9F46DE0894A70A82BC0AE274D5D199D699D199A9B374B563ABB456ED521944B1AB6A6D956A75B523E36A';
wwv_flow_imp.g_varchar2_table(2) := 'ED8CB6CB2AD3CA2B81C81B0204038467809040DEEFE4E67543E8FE0EDCCB4D4848D29E7B73CEDDFF2C4EEE79ECF3ED6FFFBEEFBFF73E27C9C6F1C42BEF5DE14606BAE68003FC22018D0950001A079F4D0728006681D6042800ADC3CFC66B2C00069F0438';
wwv_flow_imp.g_varchar2_table(3) := '05620E684E802380E609A07BF32900DD3340F3F653009A2780EECDA70074CC00B6D9438002F0A0E08E8E0428001DA3CE367B0850001E14DCD1910005A063D4D9660F010AC083823B3A10E8D8460AA023111E6B458002D02ADC6C6C4702144047223CD68A';
wwv_flow_imp.g_varchar2_table(4) := '0005A055B8D9D88E0428808E4478AC15018D04A0555CD9D81E12A0007A088AC50293000510987165AB7A488002E82128160B4C02144060C695ADEA21010AA087A06C5D8CCE77498002E8120D2FE8408002D021CA6C63970428802ED1F0820E0428001DA2';
wwv_flow_imp.g_varchar2_table(5) := 'CC3676498002E8120D2F040281EEDA4001744788D7039A000510D0E165E3BA234001744788D7039A000510D0E165E3BA234001744788D7039A40000B20A0E3C6C699448002300924CDD893000560CFB8D16B930850002681A4197B12A000EC19377A6D12';
wwv_flow_imp.g_varchar2_table(6) := '010AC02490963243677A4C8002E8312A160C440214402046956DEA31010AA0C7A8583010095000811855B6A9C70428801EA362413B10E8AD8F14406F897551BED5E5424B73139A1A9C68A8AF85B3B61A75D595A8A92C435579092A4B8B505E7C11A597F2';
wwv_flow_imp.g_varchar2_table(7) := '6FBA4919292BF7C8BD62436C894DB12D75B4B6BABAF082A77B4B8002E825B156570B9A1A9D46824B825694141A092D495B5D5E8ADAAA0AD4D754C359578B46673D9A1B1BE16A6E46AB1248DBE5B66E6B93325256EE917BC586D8129B625BEAA82C2932EA';
wwv_flow_imp.g_varchar2_table(8) := 'AC282D3404E6ACAD513E351875745B010BB4234001B4C3D1FEE0CA952B686E6A307A724970E9BD2B4B8B515B596124B824E8E5D6D6F637F9F1E8B2ABD51098B3AE46F9546E8C32868F65C54A845568696AF4A337F6AC8A02E8246EAE9666486F5B565880';
wwv_flow_imp.g_varchar2_table(9) := '9A8A72A327975EB993A2C62987A298181F83D41143307DF2782CBA6B36EE5BB6000F3D702F9E7FE23FF0F2D3DFC1ABCF3F819FBFF814DEF9F18FF0DE4F9EC3AF5F7F01EBDE58656CB22FE7E49A9491B2728FDCFBD003CB0D5B8BEE9A65D8963AA42EA9D3';
wwv_flow_imp.g_varchar2_table(10) := 'A8BC936FAD2D2D6A1A5687EA8A329415151802E6B4A91350EA94436DFCA708484FEE54F37699D254959540E6DBEAF40DFF6262A231616C2A962D9C8BC7FFFD1B4672FFEAB595F8D9AAA7B072C5A3F8DEB7BE8987EFBF07F72D9D8FC5736762F4A8611836';
wwv_flow_imp.g_varchar2_table(11) := '780006242722212E065111E1080F0B45BF9010381C41C626FB724EAE4919292BF7C8BD8BE7CE326C3D7CFF72C3B6D42175499D2292FF543E2C5B38C7F0293A260A1DBFAEB45D31042CD3A62A3532C8B3445BDBE58EC5B43D0E2001FC7531BC7CB915B5D5';
wwv_flow_imp.g_varchar2_table(12) := '1590C497B9B608C1DB527C7CACEA7927E09FFF7E19DE7AE987F885DA9EF9F6C378F06B8B3173CA0423B9438283E1EF2FA95344324BF9F0E0D796407C7AFBA5A7F1E6EAA7F04FF72D553E8F47BC129CB75F2E3532C8B344457121EA95D8DBDABA7F26F1BE';
wwv_flow_imp.g_varchar2_table(13) := '3F10F7B51680CC9D25199A9CCE76B1955E78B19AC6ACFCFE637873D50F54CFFB0D7C75DEED8853BD7FBB82163C888F8DC1D2F977289FBF8937D594EB05352A2D54A3485C6CB4C75B79B669500FE995EA01BEAB91CE5338C077B415408D9A1F3BD5DB13EF';
wwv_flow_imp.g_varchar2_table(14) := 'F88E1E351C8FFECBFDC65CFD21358D491D3ED8FBB22DF76F55CF25FFAA9E23DE5AFD433CF2E0D731CAAB4D3202C8B34E7D4D952DDB6686D35A0AA046BD9B6FF67A433264600ABEFBAD07D503EB23983363B2195C2D6963DEECAF60951AD5BEF3F03F6050';
wwv_flow_imp.g_varchar2_table(15) := 'FF248F8F0DF575EAA1B9D673ACD38E760290215F5E5FBA83BCE0CE1978E5D9C73163F238F7A980FF9C3D6D92D1666FB1CBB3C1CDDE74052A14ED04D0A07E4AEB0EE6FC3BA6E3DFFEF1EFDC87F6FDFC2B3C77381CC674EFF6AF4CF4DCEDCDC67332C077B4';
wwv_flow_imp.g_varchar2_table(16) := '1380772FF7C0F245011EDEEE9B77BF1703F9358BEEEF08AC12DA09C03B7C2E177FA726D8EB156EDB65FD7E3EA0B500FEB8719BB71EB4DCFFE4F3AD5AB6DBDD68AD05B0FB4036D67DBCDECD42AB4F7905FAFEFF7D863D878E68D5EE8E8DD55A000263C7BE';
wwv_flow_imp.g_varchar2_table(17) := 'C378EED5B77130FB841C6AB1651ECEC1F3AFBD839D995FDABEBD7F6B03B41780002C2C2EC7DB1F7C8C356FBD8F5D07B3E554406E3BF61FC6EA9FFF0ABFFCCD1F50545211906DEC6DA3B416C0ACE953111919E161969B5780FFFEDDA758F1E21BF8F0D34D';
wwv_flow_imp.g_varchar2_table(18) := '389B5FE8B966D79DDC0B97F09B4F36E0C9553FC5BA8FD6E3BC579BA4EDC2C0AE6D33C36FAD053068400A96DC3D17E3C7DE8AD0D0100FCFEA9A3AA4EFD88797556FB9E2C59FE117FFF37B6C51C73575F59E3256DDA9AEADC3A62FF662EDBA8FF1A412F29A';
wwv_flow_imp.g_varchar2_table(19) := '377F8D6DBB3251537BDDF7D0D0504C183BDA68BB30B06A5BFCE197D60270031E933A0A4B17DD8DDB268C436444B8FBB4F1595D538B43478EE37FD588F0E47FFD14DF533DE96BEF7D888FFF9C8E03D9C771B1A804AD7DF0FAB0B5B515058525C8CCCEC147';
wwv_flow_imp.g_varchar2_table(20) := 'FF9F8657DFFD2DBEBBF275AC58F5063E5ABF1959474FA04609D968C4B56FD2E34F9E341ECB16CDC3E8D491D7CEEAFDE1D0BBF9D75BEF080AC22D238761C982BB3067F6748C1C3E548D0AA1D70B5CDBAB533DE9F153B9D8B87517DEF9E0F778E1B577F1D8';
wwv_flow_imp.g_varchar2_table(21) := '332FE307ABDFC0CBAAB795D1E2B77FDC88CF366F47FAAE03C83D5F60246A697925AAD5BDCEC6263435B7C0A512B8ADED0A64937D3927D7AA54D296A8B20585C538733E1F69AAF7FE74D376631AB376DD4778498D4A52D763CFAEC1CAD7DFC52F3FF80336';
wwv_flow_imp.g_varchar2_table(22) := '65ECC689D367515FDFFEB75AC5E5B0F0508C1C314CB5690664B41BA5DA151414047E5D256063015C6D802FBE272725628AEA29EF593CDF489CB1B7DE8294E444C8EFE077569FFC5A7D65751DCEAAF9B68C165B77EEC7679B32F0E1279F63CDDAF78D447D';
wwv_flow_imp.g_varchar2_table(23) := 'E695B558A1468FC79FFB09BEFDA31FE3D1A7D7E091A7561B9BECCB39B9F67D356D7956955DF9FA7B7865ED3AFC4ECDDFD76FCE30A63159474FE29C9AC34B5D526767BE84F40B56BE2661ECE854DC75C74C2C5B381F53268E43725202F87523010AE04626';
wwv_flow_imp.g_varchar2_table(24) := 'EDCE48E28C1B938A3B674DC7BD4B1762DE9DB331E5B609183572B89168111DA64CED6EF6F1814C69FA27272175D470C3A7F97366E3DE250B95AFD3306EF42D484C88F7B107F637EFB07F13FCDB8284F8588C1C360493278C3512EDAB6ACAF4F5E54BB078';
wwv_flow_imp.g_varchar2_table(25) := 'FE1C355A4CC7B42993D443F568A4DE320223860DC590C10331B07F0A9212E311AFEE8D8E8E42787818FA793D74CB7E784418E49A9411D10D540FE843D5BD23958D5B6F198989E34663FAD4DB30E7F699C65446EA9429CD1DB3A661D2F8B1864FF171B1FE';
wwv_flow_imp.g_varchar2_table(26) := '851100B551002605312A2A524D3312316CC8208C491D8949E3C660EA6DE3314325EDEC1953315725EE7C357A2C9A7727962E9C87E58B1740925836D95FBA601EE49A9499337B06664F9F6A24FC146543925F442082485642929E1FFC32850005600A461A';
wwv_flow_imp.g_varchar2_table(27) := 'B12B010AC08E91A3CFA611A0004C43494376244001D8316AF4D934021480692869C88E0428003B468D3E9B468002300D250DF98380D97550006613A53D5B11A0006C152E3A6B36010AC06CA2B4672B021480ADC24567CD26A0B5001A1B9BCCE6693B7BCE';
wwv_flow_imp.g_varchar2_table(28) := '06BD19D84800E6E7D6F1D3B9E61BB599C59C13A76CE6B1B9EE6A2D808B978A907524C75CA236B126FF47C0C1C3475054526A138F7DE3A6D60210A405170B91BE7D17E44F16E55887ADB0B814E95FECC2A5A2121D9A7BD3366A2F00A1E37436626FE621EC';
wwv_flow_imp.g_varchar2_table(29) := 'DA7740F58865722A20B77C35E26DDBB91707B2B2D1C0E71F23C65A0B60E6B4A9EDD605AAA8AC46E6A12F9196B11327CF9C43203C243B9D0DC839791A9BB66EC7E1EC63A8F35ADA45FEB046181899A0E937AD053078608AF1E785E33BAC0B24BDE3A93367';
wwv_flow_imp.g_varchar2_table(30) := 'B1450941A64787BE3C8ABC824B70B9FAE8FF04EE4572CAEA1267F3F291A97AF9ABFEEF46EEB90B686E6EF158F15E174818782E68B8A3B500DCF11E933A0AF72C5E80C913C7B51B11E4BA534D8F2E161623FBE8716C48CBC08E3D99C83E760279F90528AF';
wwv_flow_imp.g_varchar2_table(31) := 'A842BDEA6165591329EBCFADC5E5425D7D3DCACA2B7036EF82F1309FA1A6379B554F7FECF82914A9797EC7112C2A3202EED52EB82ED0D5685100573918DF478D18668C08C6BA402386222CECC67581AAAA6B54F25F54223889DDFB0F62EBF6DDD8B02503';
wwv_flow_imp.g_varchar2_table(32) := '9F6FD986EDBBF7E3A01A2DE4F5AAF4C2056ACE5D525601595C4B4695D6D6EED7DF97FFB3C0A94425F5949496235F3DA44B0F9E73F28C9A9E6543E6F07FDA948E8D695F60DB8EBDD893998563C74F431EE66BBDA6374683D4B730F7BA40B7CFC4E2BBE742';
wwv_flow_imp.g_varchar2_table(33) := 'D63B52A7F9EF1A010AE01A08EF0F635DA089B282DA7CC81FA877B72E90DC2BC92D897E498D166772CFABA43C852C35E7DE7720CB10863C578848D66F48C3CDB60D2AB1D395A864A4D977F0300EABD7B4396A0E9F7B2E0FF2CA52E6F0B29896D4D9D9D6E5';
wwv_flow_imp.g_varchar2_table(34) := 'BA4089F19D15D7FE1C05D04D0AC81225B6591768EE6CAE0BD44D3C3B5EA6003A12E9E638213E16965D172836B61BEFED77D9D71E53002611E6BA402681F4B3190AC0CFC0599DB5085000D68A07BDF133010AC0CFC0599DB5085000D68A07BDF133010B0B';
wwv_flow_imp.g_varchar2_table(35) := 'C0CF24589D960428002DC3CE46BB0950006E12FCD4920005A065D8D96837010AC04D829F5A12A000AC1876FAE437021480DF50B3222B12D05A001DFF60C48A01F2B54F5C17C8D7842D6C5FFE70C5C2EEF9C535AE0BE417CCD6AC84EB02715D20ADA74022';
wwv_flow_imp.g_varchar2_table(36) := '4BF953C274AE0B24282CB1F9DB09ED0520C09D4EAE0B241C74DCB41680AC89236BE3B803CF7581DC24F4F9D45A00B226CE92BBE782EB02E993F01D5BAAB500DC30B82E909B847E9F148057CCB92E90170C4D762D2400EB10E7BA40D68985AF3DA100BA21';
wwv_flow_imp.g_varchar2_table(37) := 'CC7581BA0164F3CB14402F03C875817A09CCE2C529009302C475814C02E9673314809F81B33A6B11A000AC100FFAD0670428803E43CF8AAD408002B04214E8439F11A000FA0C3D2BB602010AC00A51A00F7D468002E833F4AC5808F4F54601F47504587F';
wwv_flow_imp.g_varchar2_table(38) := '9F12A000FA143F2BEF6B0214405F4780F5F729010AA04FF1B3F2BE26A09D001C8EEB4DE6BA4080F7BA40DE6CFA3A31FD55FFF56CF0578D9E7AFA6627B85F3F4FC55C1708F05E1728A45FA8878D2E3BDA09202A3AD6135BAE0BD47E5DA0C898EB6C3C9002';
wwv_flow_imp.g_varchar2_table(39) := '7C473B0184864720222ADA1356AE0B74154564740C42C3C2AF1E68F45D3B01486C63E213111E1929BBC6A6FBBA40D22144C725182C74FBA6A50024C8B109C9888E8B475050901C1A9B6EEB0205398210139FA0B644A3FD3A7ED3560012EC48F53C903460';
wwv_flow_imp.g_varchar2_table(40) := '70BB29919C6F686CC2A93367B1256327D2B7EFC6A12F8F22AFE0125CAE56B9FCB76F3EB4D0D4DC82B379F9C8CCCAF6F89F7BEE029AD579EF6A23D494E76ADB63BC4F6BB7AFB50024DA8EE060A3074C1A3818513171080E0991D39ECDE96CC0C5C262641F';
wwv_flow_imp.g_varchar2_table(41) := '3D8E0D6919D8B12713D9C74E202FBF00E51555A857D75DADFE17468BCB85BAFA7A949557A884BF80AC2339C8D8B9179BB76EC7B1E3A750545C8A8EAF7943424311151B87E4814310A3A63C0E47B0A79DBAEE682F0077E08383438CE4905E312165807A46';
wwv_flow_imp.g_varchar2_table(42) := '88725F6AF759555DA392FFA212C149ECDE7F105BD508B1614B063EDFB20DDB77EFC741355A359D46780000036B49444154C8EB55E9850B2E15A1A4AC02D535B59051A5B5F5723B5B9D1DB854628BE8A49E92D272E45F2C84F4E03927CF20F35036B6A924';
wwv_flow_imp.g_varchar2_table(43) := 'FFD3A6746C4CFB02DB76ECC59ECC2C95F0A7210FF3B575F5379894698ECCF113070C4262CA4043E48E6026BE1B1405E026E1F5D92F340CB1094948193C0C7149C9C61429C4EBE707E8E44B925B12FD921A2DCEE49E5749790A59D9C7B0EF4096218C3435';
wwv_flow_imp.g_varchar2_table(44) := '9D1291ACDF90869B6D1B5462A72B51C948B3EFE0611C563D7BCEC9D34A0479282A29459D4AF2B6B62B9D7870FD94F4F4F256273EB93F52060D3346B890907ED70B70CF438002F0A0B8712728280861E191460225F61F84FE438623B1FF40431CF2CE3C4C';
wwv_flow_imp.g_varchar2_table(45) := 'BD52ED3865BAD18AEFCE8828C322228D912B2E3119D2CB1B3EAA9E3E5A4D71747CADD95BDA8EDEDEA07B79F96969786414A263E3D5E8908224F5106D249D12465C528A218EE8B878884022A2A2101611817E616108EE170287D7AF6174C5D111EC802476';
wwv_flow_imp.g_varchar2_table(46) := 'A8BA47EE95E94B94FA0155B44A681995A4574F52D399AB750E82247E947A761121D8A19787C5BE2800930222C2901141C4216F97442031F1492A415390903C0049FD072379D050631491E4ED6A4B1E3814896AB48957F7C425A618A34F94129B4C69C4B6';
wwv_flow_imp.g_varchar2_table(47) := 'F4EAC19CCE9814358002300D250DD991000560C7A8D167D3085000A6A1A4213B12A000EC1835FA6C1A013F0AC0349F6988044C23400198869286EC488002B063D4E8B369042800D350D2901D095000768C1A7D368D0005601ACA9B18E225CB12A0002C1B';
wwv_flow_imp.g_varchar2_table(48) := '1A3AE60F0214803F28B30ECB12A0002C1B1A3AE60F0214803F28B30ECB12A0002C1B9AC070CCEAADA000AC1E21FAE7530214804FF1D2B8D5095000568F10FDF329010AC0A77869DCEA042800AB4788FEF994800F05E053BF699C044C21400198829146EC';
wwv_flow_imp.g_varchar2_table(49) := '4A8002B06BE4E8B7290428005330D2885D095000768D1CFD36850005600AC60E4678681B0214806D4245477D418002F00555DAB40D010AC036A1A2A3BE204001F8822A6DDA860005609B50D9C351BB794901D82D62F4D754021480A93869CC6E042800BB';
wwv_flow_imp.g_varchar2_table(50) := '458CFE9A4A80023015278DD98D000560B788D15F530998280053FDA23112F00B010AC02F98598955095000568D0CFDF20B010AC02F98598955095000568D0CFDF20B010AC00CCCB4615B0214806D4347C7CD204001984191366C4B8002B06DE8E8B81904';
wwv_flow_imp.g_varchar2_table(51) := '28003328D2866D095000B60D9D351CB7BB177F010000FFFF3995A6BC000000064944415403008D5E9188444AB67B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7554525867239109)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D079854D5D9C7FF77667B631BCB2EB04813912E4D7AC79E6862922FF9623431511611C41251405D854562340A48335F34C6F8244FA24693';
wwv_flow_imp.g_varchar2_table(2) := '5890DE9BD2413A4B6FDBD85EE77EEF7BD9CEECB2656E99B9EF3CF7EEDC7ACE797FEF39FF7BCEB9B3E738201F2120046C4B4004C0B6AE17C38500200220B94008D8988008808D9D2FA6DB9B005B2F02C014641502362520026053C78BD942800988003005';
wwv_flow_imp.g_varchar2_table(3) := '5985804D098800D8D4F162B6BD0954582F02504142BE85800D098800D8D0E962B210A8202002504142BE85800D098800D8D0E962B2BD0954B75E04A03A0DD91602362320026033878BB942A03A011180EA34645B08D88C800880CD1C2EE6DA9B406DEB45';
wwv_flow_imp.g_varchar2_table(4) := '006A13917D2160230222003672B6982A046A131001A84D44F685808D088800D8C8D962AABD09B8B35E04C01D153926046C424004C0268E163385803B022200EEA8C8312160130222003671B498696F0275592F02501719392E046C404004A0969327CF9F';
wwv_flow_imp.g_varchar2_table(5) := '1F3835F9CDC8C79217C63F35FBDDC4C767FDB1C394D796DC3879CE926E4FA42CEA35296569DF29AF2EEA27ABF518B06FD847EC2BF619FB8E7DC8BE649FB26F6BB9DBF6BBB61480C9B39676A24CF2C327662F79794ACA924F69DD392565F159FA56959C80';
wwv_flow_imp.g_varchar2_table(6) := '42977F70A69FBFF37CA9527CCAE1283B8E121C5654EC57E1D8ED84FA2D5C8E6F64B51E03F60DFB887DC53E63DFB10FD997EC53F62DFBB8DCD7E4F3259F721EE0BCF0E4AB8B3ADA510D6C21005353DEE9332565E90B535296ACA5355771A84729937CAC2A';
wwv_flow_imp.g_varchar2_table(7) := '78919C7E2FAD7D00A535E46313029AAFC9E7B897F300E7853297E318E70D12873524083327CF5DD2DB5760D467874F0A4072F23F02A6CC5972D713298B174D4E5972CA05D74E407D85408CA03594565984803B02943794918A8A594A197691201CA7F52D';
wwv_flow_imp.g_varchar2_table(8) := '5AC7729E727783B71FF3290178F2D5859DC9597332FC338E43C5E72A94890A90E8ED4E92F49B46A003C5FC04AD2B384F4D9EBD3885F318EDFBCCE2F502401D3C619353163F4C057F7D99CB79843CF33CAD6D689545087892401B4551A6731EA3BCB68EF2';
wwv_flow_imp.g_varchar2_table(9) := 'DC2F39EF79320233C2F26A0198327BF10F9C01CE2D0A943F11BC61B4CA22048C20309CF2DC7B7EFE7E6BA89979BB111136358EEBDDE795023075D6E251A4C29BA1289F507BADFBF58C94F342401F026A3F6A667EC57991F3A43E71E81BAA57090057B9A6';
wwv_flow_imp.g_varchar2_table(10) := 'A42CFD9BCBA1AC262C83689545085881C020CE935352967CC079D40A096A681ABC4600A6CC7E6708BDCFDD4DBDF93F6DA871729D103098C003944777F18FC40C8EB7C9D17985003C91B2E441282E7EEADBF2C71A4DF6AEDC6806814E7039366979D68CD8';
wwv_flow_imp.g_varchar2_table(11) := 'ABC5D9904D6B0B80AA2AFCEA4505DE2763026895450878038100CEB34FCC5E32CBEA89B5AC00F00F2F9E98B3F4237EF5627588923E21E08E80AA60E6E49425EF735E7677DE0AC72C2900C9C9C97E197E191F938AFED00A90240D42A0A90414E0C174FFCC';
wwv_flow_imp.g_varchar2_table(12) := '7F729E6E6A187ADE674901C80C88FF0B14DCA3A7E112B610308A8002F5FB19FEF1EF19151FC7D3D0D57202409D277355153F6BA801729D10F012020F70DEB65A5A2D250093672F9D4AD5FE69568324E911029E20C0799BF3B827C2F25418961180C7E72C';
wwv_flow_imp.g_varchar2_table(13) := '1EAA28EA1B9E324CC2110256244079FCF529B3975AE667EB961000EE2575A80ABFEAB3447AAC9871244D3E43C0496F07DEE33CAF97458D09D712052ED33FE3154A74275A6511023E4F803A053B97E779D36D355D00A6A42CEE416DA3674C272109100206';
wwv_flow_imp.g_varchar2_table(14) := '12E03CFFF82B4B7B1A18A5DBA84C170040990DC049AB2C42C04E049C0EA76AFA2F054D158029B3DF19421EE731F9E84B1621603B02F77ABA43B0B1044D15002865BF6F6C82E57A21E053041417D7804D33C93401983A67E97D80C23500C84708D8978032';
wwv_flow_imp.g_varchar2_table(15) := '72CAAB4BEE30CB7ED304C0A5BAA69A65B4C42B042C45C0A53E67567A4C118049B3DFBE015078886EC84708080165C4E3B3FEC82310370B45536E3645009C8AF3579458855659848010001487A3F42198F0315E0054950ABEE39726D82A510A010B13501E';
wwv_flow_imp.g_varchar2_table(16) := '8456368C4DA2C3D8E880C9298B6F05546A02181DB3C427042C4DA0C3D5B2616C1A0D170087E2A0DE7F638D94D8848037105014A5C96F039A6A9FA3A93736F53E5585E1463635AD729F103096808F0BC0E3BF5BD01A0A7A190B556213025E4360E0A37397';
wwv_flow_imp.g_varchar2_table(17) := 'B63032B586D6009452BFDBC838EA04A4BFB2080121509B801254E6BAB3F6413DF70D1500071C329B8F9EDE94B0BD9E8002C72834F2D39CCB1DCDB9B9B1F7AA50FB34F61EB95E08D88980D165C43001484E4EE6B8A4FD6FA7DC2CB6368540CFF2B2D2947B';
wwv_flow_imp.g_varchar2_table(18) := '1B7D0F17CA46DFD4941BB2FC5B73E10F6ECABD728F10B0118190B480842E46D96B9800B85497B4FF8DF2AAC4E3D5041CAAABC14DE5E61A6A9800288A629851CD8522F70B01330928500C2B2B8609800B6A7B33A14ADC42C05B08A84057A3D26A9800282A';
wwv_flow_imp.g_varchar2_table(19) := 'E28D324AE211025E4D4085610F4BC304008A0800E423041A42A08165A521415DEF1A4304A0FCB546CCF51223E7858010D008449797196D47CF3F8608C0A9E0C45032C28F5659848010B83E01FF734808BAFE65CDBFC210018828C876363FA9128210B00F';
wwv_flow_imp.g_varchar2_table(20) := '8110E4071861AD2102E0171A6488314600933884801104AE57663C95064304A0B4D82135004F794CC2B10501A3CA8C210250AC964AFBDF16D9568CF41401A3CA8C210210E0941A80A7328684630F024695194304A0AC5404C01ED956ACF41481FACA8CA7';
wwv_flow_imp.g_varchar2_table(21) := 'E2E0700C11006780433A0199B689ABABAC0CA5252528292E427151A1DB95CFF1357CAD894995A88980CBA918D26F668800A0B8984C92C5D304B8A072612EC8CB455E761672B2327025E332B2D22E22E3D279A45D388BCBE74EE3D2D953DA361FCBBC7C91';
wwv_flow_imp.g_varchar2_table(22) := 'CE5F72BBF239BE86EFE37BF85EDEE6631C2687CD71705C1C27C7CD69F0B45D121EE05F56E24302201E6D36017E3AE7E766233B330D19972FE0F2F9D35AA1CE4ABBA415FCBC9C6C70A12C2A28A0A77B91F6B4E7C2A9AA6A93E3E67B390CAE1514171581C3';
wwv_flow_imp.g_varchar2_table(23) := 'E638382E16028E9B0582D3924969CACE4C07A7B1B44404BFC9D00DBED161707C125D03097021E2C294957E09FC24CEA42777EE952C14E6E7A3946A54AAABE905BB814968F0659C96124A53617E1E388D1997AE0AD495F4CB24083928A5A6478303930BEB';
wwv_flow_imp.g_varchar2_table(24) := '25E0E99322009E26DA8CF0CA4A4BB5AA3C3F55B91071612A2E2C043F89EB0B36243808AD5BB544B72E9D3064401FDC3E6A08EEBF7B3C1EFA9FEFE3A5277F83D9CF3E86D7663E81B75E7E060BE73C872573A7E38FBF9F8977DF78495B799B8FF139BE86AF';
wwv_flow_imp.g_varchar2_table(25) := 'E57BF8DE877EF27D0A6B9C16E690FE7D288E8E5A5C214181A8EFC3A2505458408290096E42A45F3C87BC9C2BE01A457DF7C9396309880018CBFB9AD8CACAA8D053C1C8B87C1E570B49769D8544511424B66E8541FD7AE2C7F78CC333131EC05BC94F6311';
wwv_flow_imp.g_varchar2_table(26) := '15EA39CF4DC2B3137F8147FFF73EFCECDEDBF0BD7143317A505F7468D7166D13E210171385C8883084060721283000FE7E7E7038146DE56D3EC6E7F81ABE96EFE17B470FEE4B610DD3C27CF4E7F7511C0F82E35AF4EAF35ADC4F531A382D83FAF5A0785A';
wwv_flow_imp.g_varchar2_table(27) := '415114B8FB5C15B72B5AB32593FA28B876E372B9DC5D2AC70C2420026020ECDA5171675AFA057A32665F41697149EDD3080D0D469F1E37E347F78CC7DCE993F1DE1F5EC2ACDF4E44D203F7E3EEB1C3D0A36B6744B608BFE63EA30E70DC3D290D9C96A407';
wwv_flow_imp.g_varchar2_table(28) := '7E44358D895A1A39ADF7539A7B77EF0AAE9DD44E4F09F52770ED26FDE259EAB7C8A97D5AF60D2420026020EC8AA8B8AD9C463DF4DC995671ACE23B26BA05C68D1884194FFC1A0B674FC3D45FFF0FEE193B14F12D632A2EB1FC37A7F57B94E6277FF353AD';
wwv_flow_imp.g_varchar2_table(29) := '76F2FCE4873176D840444745D4483B371372B2AE36118AE9D5648D93B2730D013D0E8800E841B59E30AF64A4514F7E7A8D6ABEA228E8D3E3264CF9CDFFE28D179EC4033FB80337B64FAC2714EF3A7553C776F8C5FD77E10F2F3E85C71FFE297A75BBB186';
wwv_flow_imp.g_varchar2_table(30) := '01DC49C86F14B84654E384ECE84E40044077C45511F0BBF4A282FCAA03B435A87F2FCC9E36899EF43F43DFEE5DE8886F2FFD7B76C5538FFC1CB3A86372409FEE358CE51A51CE958C1AC764475F022200FAF2AD0C3DE74AA6F67EBEE2402C55F5A7D2133F';
wwv_flow_imp.g_varchar2_table(31) := 'E9E73F449B56B115876DF39D481D93931EFA3126FDF2C788A9D63428C8CDA5579D79B6E160B6A122000678805F7D15E4567576B54F4C40F2D349E8638327FEF5F00EE8DD1D2F4C7D0489092D2B2FE5D785953BB2A111D0EB8F08805E64AB85CBBFE2ABD8';
wwv_flow_imp.g_varchar2_table(32) := '55E8D5DBA3D4631E16125C71C8F6DF9111E178F8673FA8E4C0AF0CB95FA0F2806CE84640044037B45501BBD4AAF7DD092D63D13A2EA6EAA46C69043A24B64642352EA5F273628D8BDE7F4400F426CCE157FBD5EE85B4345CC9C9E5A3B256239075250717';
wwv_flow_imp.g_varchar2_table(33) := 'D3AB3A00AFF7EBC76AB7CA663308880034035E536E7595A978F76F9F36E5569FBD870BFBBB7FFF945E8D56534A9FB5B6F186E9798708809E74EB087BF77747F1DAE2F7919E75A58E2BEC73382D235363B1E7E031FB186D214B45004C72C681C32730FDD5';
wwv_flow_imp.g_varchar2_table(34) := '05F8E48B95282B2B332915E6455B5252828F3E5F8119BF5B88EF8EA49A97109BC72C02606206282A2EC5BF97AFC7D4E4D7F1B74FBFC4A5B4AA36B089C9D235EA73172EE1C34F3EC7932FBF81FFAED80066A06B841278BD044400EAC5E3F993E1E161E87A';
wwv_flow_imp.g_varchar2_table(35) := '5367389C4A65E039B90558B6762B9E4D998FB90BDFC3CAF55B919757F3178395177BE14636757A2E5FBB1973DEFE13A6FF6E1196AFDF8EDCBCC24A4B1C4E076E2626E1E1A195C764E32A01BDFF8A00E84DB856F80A95FB9B3A75C098E143D132F6DAD781';
wwv_flow_imp.g_varchar2_table(36) := '078F9EC4079F7C8949335FC3CB6FBE83BFFFFB6B1C38720CC5C5DE33CA4E616121F61F3A8ABF7DB60C2FBDB118535E7C1D1F7EBA0C878F9D46ED4F1CBDFA1B4B2CBA1013054AEDD3B2AF330111009D01D7157C684830860CEC8B51C306A36DEB7838DCE4';
wwv_flow_imp.g_varchar2_table(37) := 'FD13A7CEE1ABD59BF0DAA20FF0E8B439786ECE3C2CFECB47F86ACD661C3B750625A5E6F71D141597E068EA697CB16A2316BDFF0F4C4B790B49CFCFC5EF97FC15CB289D27CF5CBC0601DB9AD8B635460F1F8CC1FDFB2224C49069F0AE49871C0044008CC8';
wwv_flow_imp.g_varchar2_table(38) := '054ADD91B4880843BF3E3D71DB9891E87E7317C4C644D579F185CB99D8BA731FFE4E4FD6596FFE1F1EF9ED2C3CFDCA9B98BBE8CF58FCC147F8F05F5F52BB7A1DB6EED84B4FDB54A4D17BF5BCBC3CF013993BDDEA0CB8DA091EA483AF2D2828406E6E2E2E';
wwv_flow_imp.g_varchar2_table(39) := 'A7A5E3D0D113D8F2ED1EFC67F95A7CF8C91758F4977F6A4D95A75EFE03264C4BC1EC797FC23FFEB31CDB761DC0C5B4AC6AA1D5DC64DB7A74BB09778C1B8DBEBDBA23223CACE605D5F7EA6156FD32D96E1E011180E6F16BD8DD0D78BD1D181880CE1D6EC0';
wwv_flow_imp.g_varchar2_table(40) := 'D05BFBE3AEF1A3D1A7673770CD800705A92F92F4CC2B387824950AFD3E2C5FB7957AD65791187C4CEDED3FE399D9F3A929F17BED89FC2815D4479F9D8D4933E6E2C9E437B4FE8619AF2DC28CD716D2F63CEDD863D35F45D27373F0C8B3299838FD7778FC';
wwv_flow_imp.g_varchar2_table(41) := '85D7F1DB94057875E1FB58F2D74FF0F117ABB17CFD366CDBB91FDC54C9C8CAAE2F69080B0D013FE9FBF6EE81BB6F1BADD9D6A97D3BF8FBFBD57B9F76B201CCB4EB7CF88F11A6398C8844E2681C012E203724B6D16A06E3460EC39DE3476160DFDEE8DCB1';
wwv_flow_imp.g_varchar2_table(42) := 'BD5643E0F38D0B11E0C1818B4B4A91975F88CC2B39DA1B87B3E72FE1ECF9CBB49DA91DCB2F93DE35A2000010004944415428025FD3D8B0F97A7F7F7FAD4FE3466ACB0FEA7F8B266263470ED59EF4896D12E0E7D78042CF01C96A280187A1B149644D2210';
wwv_flow_imp.g_varchar2_table(43) := '40852B213E0EDDBBDEA83D45B986308E0B173D593B75BC41AB2970F53A9C7AD10302FC9B1447436EE25A0ABFC5E0CE4BAE9DB02071F365FCE8E154E047697D1ADDA837BF555C6CC39EF20D8954AED195800880AE78F50B3C94ABD7F464EDD1B58B5653E0';
wwv_flow_imp.g_varchar2_table(44) := 'A6C398E14370E7B851B8F7AEF1B88BAADCB78F1E8131238660C4905BA970F6D36A115C1DEFD5BDAB26265D3A77C04D3776A4ED2EE8DDA32BF8DCC07E7D30E4D67EDA3D63460CC5ED634750F57D8C16E61D6347D2DB8BC1E0CECB7ED46FC182C442E06EDC';
wwv_flow_imp.g_varchar2_table(45) := '3FFD2C97903D494004C093342D149636D26F7020C2C34211151941D5F368702D82ABE31D6E48D49A133777E98CAE3776A2ED1BD0BE5D22F85C42AB96681913ADDD131E1682A0C040AABE3B2D64993D9262949522004691967884800509880058D0299224';
wwv_flow_imp.g_varchar2_table(46) := '216014011100A3484B3C42C0820444002CE8144992BD091869BD088091B4252E21603102220016738824470818494004C048DA129710B0180111008B394492636F02465B2F02603471894F085888800880859C2149110246131001309AB8C427042C4440';
wwv_flow_imp.g_varchar2_table(47) := '04C06067945A60141F834D6E7074A5A5A50DBED6172F34C326110083A9E7E717E0B20D46FF6D2CD60B972E23BFA0B0B1B7C9F5CD242002D04C804DB97DDB8E5DC8C8AC7BE8ACA684E9CDF7B0207EB373AF379BE0B569170130C175A5D40CD8B8ED5B9C39';
wwv_flow_imp.g_varchar2_table(48) := '77C184D8AD15E58993A7B18958D87172142B784204C0242FB8CA5CF876D75EACDDB815E7CE5F3B72AE49C9322CDA5367CF63D5FA4DD8B3FFA061715A3922B3D226026030F9808000F0D05A15D1665DC9C6F69D7BB07CCD061C39968AA222EF19FFBFC286';
wwv_flow_imp.g_varchar2_table(49) := '867EF37884070E1DC5572BD762E7EE7DC8C9C9ABBC9599309BCA03B2610801110043305745121414001E2CB35DDBD65507698B3B070F1C3AA2158E8D5BBF01578D7D410C0A0B8B34615BBB692B56AC594FDB27AE11B9F6EDDA6A4C82020388842C461210';
wwv_flow_imp.g_varchar2_table(50) := '01309276795C3C5CD72DBDBA63C4E081888F6B597EB4EA2B2D3D53AB1AF393920BCEEEBDDF21F5D4596467E7565D64D12DEEDC3C967A0A3BF6ECC7EAF59BB16CD53AB0B065B919429C6D1F31F456F4EE71339889454DF2E964890098E8DEA8A816B8B57F';
wwv_flow_imp.g_varchar2_table(51) := '1FF0A8BAED6F4884BB117DB9E0A49E3E83DDFB0E60F586CDF872C51A6CDBB11B478EA7E2E2A534535F9DE5E6E58327FB3C74E438366FDF81CFBF5E85F59BB763DF8143387DE61C784EC0DA78B9AADFB17D3B6DB051B63DAA4544ED4B6CB76FA6C1220046';
wwv_flow_imp.g_varchar2_table(52) := 'D057EA8F8447D5EDDDBDAB36A2EFD05BFB8307ED0C0909767B53717109CE5FB88403078F60CB373BB17CF57A7CF6C572ADE9B072DD26ACDBBC0D9BE9387730EE397010078F1C033F914F53A71B0BC6A5B40CD4B772D8274F9FC5D1E32771E0F051ECA64E';
wwv_flow_imp.g_varchar2_table(53) := 'BAEDD459B969DB0E706D64C5DA0D2442ABB53857AEDD88ED24461CC7A5CBE9E0B71BEE121D16168A4E3CE9C9A001E091857B76BB491B6CD4DDB595C7AEC3ACF23AD9681601118066E16BE0CD8D98E52636260A3C6CF7F851C3306ED4706DA86E6E23B788';
wwv_flow_imp.g_varchar2_table(54) := '0887C293EAD51125F717E4E6E62133F30A2E51CD805F319E483D8D43F474E627F20EEA7463C1D84CAFDCEA5BB976B16BEF01EC3F7818478E9E402ABDA63B47AF2B2FA7A5238BAAF1797905282EAEFB177B0E4A63243DD5B946C3C38CDF367A38C68E1882';
wwv_flow_imp.g_varchar2_table(55) := '1E3CED5974641DA97773B811CCDCDC2D871A484004A081A0CCB82C3424481BAA9BDBC8A3860DC2DDE3C760E8E001E0F1F85B27B482366D98994F4A8A9B9FEE3C3700CFF9379CFA34EEBE6D0C4672BB9E6A343CCC7870B04CFC6946DE69689C22000D2565';
wwv_flow_imp.g_varchar2_table(56) := '81EB9C4E0762A322C133F20CB8A51778DAB07BEF1C0FAE2D0C2361E84FC7F849DBB96307AD19C1F3F225C4C78167F289A6FBB816C1A211141408FF6AF3F3F1361FE3B9FCF89AE8E848C4B58C018B0C87C14D129EF2AB47B7AE18D0B71738AEF1F464E7B8';
wwv_flow_imp.g_varchar2_table(57) := 'F9E9CE938474A2767D34F569381C0E0B90F29E24989D52F196D91EF040FCDC5F104305BC0DD50AB8ADDDBD6B67AD19D197DE34F09C823C93CF701208AE45B068DC3E6604EE1A3F5A9BED479B4588B6F918BF9EE46B86535B7DF080BE184082C261709384';
wwv_flow_imp.g_varchar2_table(58) := 'A7FCEAD43E11ADE35B81E3E27E0B0F245D823099800880C90E90E8858099044400CCA42F710B019309880098EC0089DEBE04AC60B9088015BC20691002261110013009BC442B04AC404004C00A5E903408019308880098045EA2B53701AB582F0260154F';
wwv_flow_imp.g_varchar2_table(59) := '483A8480090444004C802E510A01AB101001B08A27241D42C00402220026409728ED4DC04AD68B0018ED0DF937D77A880B9C7AE0E8724A044017AC75079A5F5080B23257DD17D8F40C0F26C28386DAD47CD3CC160130183D67F4BDFB6528ECDAD877EDDD';
wwv_flow_imp.g_varchar2_table(60) := '4FC25856FBB0ECEB4C40044067C0EE823F79E62C0E1C3CEAEE942D8FEDDEFF1DCEDA646E04AB395804C0248F1C397E023C861F8FD36752124C8F960B3DCF87907AF28CE969B16B0244004CF43C8FE1C7E3F4AD5ABF193C10A78949312C6AEEFF38967A1A';
wwv_flow_imp.g_varchar2_table(61) := '2BD66CC0373BF780E743302C7289E81A022200D720D1F7008FDEC34374558F252727173C10E7172B5663F7BEEF9096E17B13875EBC9CA64D85C6C39AEF3B701079F905D51168C396319B1A07654777022200BA23AE19819F9F133C44178F985B7B2AAC92';
wwv_flow_imp.g_varchar2_table(62) := 'E252A49E3A838D5BB6E3AB556B4914BED3C6FE2F2E29A9198817EC151615697306F0B4675F2C5F8D2DDB776A93A1D69E049419F05886CCC4CFE9F402CB9A9E442BDE290260925778C45C1E32BBFBCD5DE0EEC95754584CCD8233DAD8FF5F2E5FA3CDB0B3';
wwv_flow_imp.g_varchar2_table(63) := 'F5DB5DDA18FF39B95573EA9994FC6BA2CDCCCAC6E16327B069DB0EF0537ED9CA75DA9C01E7A873AFA4E4DA61C4D9661E49F88EB123C063195E13A01C30848008802198DD47C2A3FC76EE700378545F1E8033BE554B38EB780A161616E1C2C5CBDAAC3BAB';
wwv_flow_imp.g_varchar2_table(64) := 'D66DC217F454E5893A780290838779F28FD3DA139627E8C8CACE467E4121CA4A9BFF5A8D0B6F5E5E3EB8807387254F3072ECC449ED2D063FDD79B6A2FF2C5B89759BB6E2BB4347C1F307F0E425EE2C66DB125AC56120CF86346A187824614551DC5D2AC7';
wwv_flow_imp.g_varchar2_table(65) := '0C2220026004E806E4711E82FBD67E7D70CFED6330A06F6FB46D9380FAC6D4E78299454F5D9E00E4D0D1E3240C07B536364FD1B576C3566DC6A0FF7EBD0A3C6B103F9179461F168C4DDBBED5A616E3B9FBF67D77187B0F1CD2E6F1E3DA054F4ABA66C316';
wwv_flow_imp.g_varchar2_table(66) := '6DA662EE8FE07B596856ACDDA81570EEB0E40946F83E7E8BC14F779EAFD055CF0F9BF849DF2EB10D06F5BF45B36D60BFDE4870331FE2356E6800B36BEE91038D262002D068644DB8A191BF706D1D1F877EBD7B809B08B78F1D096E2377689F88A8C81670';
wwv_flow_imp.g_varchar2_table(67) := '381B5F32F8899C9757A0CDEC73392D439B5A8CE7EEE327F9F1D453DA3C7E5CBBE04949AF64E7807BE6B93FA2B1963AA9F6C2F30F74A45ACD80BEBD7027A59D6B37B7F4EC865671B18D0BAE91CC1A17B8F1575B35461100AB7AA63C5D4181015A1BB957B7';
wwv_flow_imp.g_varchar2_table(68) := 'AE18316420BE77FBB8AB33EFF4E88A766D5B233232A2DE9A4279301EFD729008F1939D05E986C4B6E84D057CE4B041E0DA0BCF3FD093FA355AC7B74200A5DDA3114B601E272002E071A4FA07A8CDBDD72E11B7F4EA8E91436ED56A0A5727F81885D1C306';
wwv_flow_imp.g_varchar2_table(69) := '63F0C0BE5A3382CFF36C3E37DFD4193CB3CF8D1D3BA0416BE70EB8F9A61BAF4E2E42359101D424193CB01FC68C18AC4D28C222349EDAF02C487D7ADE8CF654C58F8C08D7DF7089C1E30444003C8ED4BC00FDFDFD11111186B8D818B4A66604D7103A51D3';
wwv_flow_imp.g_varchar2_table(70) := 'A14BA70EE0997DBA75ED8C06AD5D3AA34BA7F657A7176B93A08515171B8DF0B0B01A538A9967A9C4EC29020E4F0524E1080121E09E80958F8A0058D93B923621A0330111009D014BF042C0CA044400ACEC1D499B10D099800880CE8025787B13B0BAF522';
wwv_flow_imp.g_varchar2_table(71) := '0056F790A44F08E84840044047B812B410B03A011100AB7B48D2270474242002A0235C09DADE04BCC17A11006FF092A45108E84440044027B012AC10F0060222000678A9FA98172E97FC9F6B5DC85D6A159BEACCEABA5E8E379F800840F3195E370487D3';
wwv_flow_imp.g_varchar2_table(72) := 'AFF21A1E095866C0A9C451B9919B9B0F665371C0E9E75FB1E995DFDE92681100033CE51F1008C551857ACB373B505C546C40CCDE11050F77C64C2A52EB2056CCAC625FBEF52350952BF58BC3F6212B8A82D0B0884A0EFCA45BB7653B78DCBECA8336DDC8';
wwv_flow_imp.g_varchar2_table(73) := 'A127FFBACDDB6A0C131E12DEC2A6348C375B04C020E621E111080C0EAE8C2D2F2F1F2BD7AC078FAF5754EC7DC37E571AD2C40D7EEAF39460ABD66D4441416165284121A108090BAFDC970D7D098800E8CBB746E82DA25B223834B4F218F707F2B87C5FAF';
wwv_flow_imp.g_varchar2_table(74) := '5EAB0DCC99959D5379CE57372EA56760DBCE3DDA30E7B5A704E3821F1115E3F5A67B93012200067B2B3C3206E151D1501C55837BBACA546D60CEB51BB660D5FA4D3878E41872A9866070D2748B2EF34A36F61F3CAC8D54BC79EBB7387FFE628DB8B87FA4';
wwv_flow_imp.g_varchar2_table(75) := '45742CC25A44D5382E3BFA131001D09FF1353104878421BA6502B8BA5BFB644E4E1E0E1D398E956B376A938772138187FEE62643ED6BADBA9F9D930B9E3F60CFFE83DA937EDDC6AD387AFCA4DB3E8FE0B030C4C42550F328C4AAE6F874BA44004C72AFD3';
wwv_flow_imp.g_varchar2_table(76) := 'CF0F5CDD8D896F0D2E04D56B041549E2CE426E227CBB6B2F5690207CB9623578FCFEE3A9A791454FD58AEBCCFC2E2D2D437A66160E1F4BD56605FAEFB25558BD7E3378FE8013274F83DBFAB5D3E7703A104A7D22B1F16D10DE221A0EA7B3F625B26F1001';
wwv_flow_imp.g_varchar2_table(77) := '11008340D7158DD3E9A71582D8F8B688888ED16A050E7A0DE6EEFAE2E2526D76A0BD070E622D3D5579E20E9E5E7BC3D66FB06DC76EECDC7B80AADA47E9699B0A9E6DF8FC854BE0B1FEF989CC73F5B90BB3F6319E4D88DF4E707F441AB5D7CF5DB888D453';
wwv_flow_imp.g_varchar2_table(78) := '67A9809FC03EAAC6F384222C42EB366FC7572BD7E2F3AF5761036D7F77E888362B50EDB9FF2AC277389DD4FF118616312DC1B6864644FA64C1AFB0D75BBE1DDE92505F4FA7A228080A0ED56A05B1096D111D174F6DE248040405D56B3A4FE2919E9EA94D';
wwv_flow_imp.g_varchar2_table(79) := 'F671EAF4592AFC2748048E601789018B02CFF6C34FE4652BD769B304B168D4B7F26C42CB57AF07F7476CA4F6FAF61D7BB07BDF016DDAAF63C74F822714E1494432E9A95F54CF6F1914EAE3E0B71EE19151886E9540859E9EF691D1080CAA7A1352AF6172';
wwv_flow_imp.g_varchar2_table(80) := 'D21002220086606E7C247EFE01F43A2C02913171886BD30E512D5B698210141202BF8000284A552762E343F7EC1DDC89E71F1080207AC3A1157812AF96098968A1BDF508879FFCAACFB3C03D189AC3836149503A12F00F08D40421222A963A10E3D1B275';
wwv_flow_imp.g_varchar2_table(81) := '2262A80D1D191B072E74FC3B037EC5C84F5DFFC040F8F9FBC3E174362B458AA268617058018141080C0ED1AAF1DC7E0FA737192C4AB1096DD0926A2C512DE311416F388243A9C09378413E5E41C0E115A99444BA25E0A402CE05930B5D58442409418CF6';
wwv_flow_imp.g_varchar2_table(82) := 'D48D8A6D8568EA59E74EB638AA3D5C158BD6742C1E5124182C1AEE562ED0B5EFE330F8185FDF825ED58553359EDBEFFC268345C9E1689EC8B835CC4B0F7A63B20D118012A77F9937C2F195342B8A02A7D38F6A0501F0A727398B86BB950B343FED1D4E29';
wwv_flow_imp.g_varchar2_table(83) := 'D430F953063F43FE59C410017094A9220026672889DEBB0838FD5C8694194304C02863BCCBC5925A21503781E2A491FE740000074A49444154321F1200A38CA91BA79C1102FA12F074E8018A5FA9A7C374179E213500A38C7167A01C1302DE48C02FC087';
wwv_flow_imp.g_varchar2_table(84) := '6A0028C92FF04627489A858059044AF30A7DA71330126DF2CD0229F10A016F2460549931A409909CFC1356B3226F7484A459085C8F800EE78BCACB8C0E41D70CD21001B81AA572E1EAB7FC150242A07E02C695150305401501A8DFEB725608941370A596';
wwv_flow_imp.g_varchar2_table(85) := '6FE8FE65A00040044077774A04BE4040557CB006A000077DC139628310A84E408F6D870ADFAB01A85077413E4240085C97809165C5B026804B7188005CD7F5728110008C2C2B0EA380C7169F3F4C71B9689545080881BA09E4979795BAAFF0E019C30420';
wwv_flow_imp.g_varchar2_table(86) := '3939990BFF110FA65D821202A612D029F2BDE56545A7E06B066B980070B4AA026906403E42A06E020A1443CB88A102A0B8B006F2110242A04E02AAAAFAAE00A8FECEFF92E52AADB2080121702D01D5E55FF2EF6B0FEB77C4D01AC082698F9C818A3DFA99';
wwv_flow_imp.g_varchar2_table(87) := '23210B016308E8120B958DB7A74D3EA74BD875046AA800701A14055FF1B7AC424008D4246046D9305E005CAA08404DBFCB9E10D008B854D7A7DA86817F0C1780FC38C746403909F9080121509DC0A998D24BDF543F60C4B6E102F0CE84092580EBCF4618';
wwv_flow_imp.g_varchar2_table(88) := '277108013D08E813A6FA5E7272B221E300564FBFE102C09197A965EFD1B7BC0D2008B2080122500AA7E35DFA367C31450016CE7CFC2495FEAF0DB756221402D624F0F9FCE7269C322369A608001BEA74A973F95B56216077020E97FA96590C4C1380B75E';
wwv_flow_imp.g_varchar2_table(89) := '98B84605969965B8C42B049A42C0D3F77019E0B2E0E9701B1A9E6902A025D08969DAB7FC11023625A09629BF35D374530560C17349BBC9F8CF68954508D891C0676FBF3861AF99869B2A006CB8D351F60C7DE7D22A8B10B013813CD5A53C6DB6C1A60BC0';
wwv_flow_imp.g_varchar2_table(90) := '9BCF4F3AAAAACA0B668390F885C0F50878F4BC8A6716BC30E19847C36C4260A60B00A7F94297A805F4BD8156598480CF1350808DF367262DB182A19610807FFEE42765D414F8150191A6004190C5A709E4B95CCA4356B1D01202C030B829A0A8EA2F69DB';
wwv_flow_imp.g_varchar2_table(91) := '45AB2C42C01709B8A0AABFB042D5BF02AE65048013346FE6C48FA12833785B56216025029E480BF5753D3D7FE6C47F79222C4F8561290160A3E64F9F30172AF87F0578575621E02B04E62D9839C1B45FFCD505D17202C0092D6CA94CA0EFE5B4CA22047C';
wwv_flow_imp.g_varchar2_table(92) := '81C0BFA24B2E3C6545432C2900FC2FC38525CA7D0AF08915A1499A844023087C4679F981E4646D58FC46DC66CCA596140036FD9DE409F9F3A64FF891A26236EFCB2A04CC22D08C785FA526ED0F382F37230C5D6FB5AC0068562B8A3A6F66D20B5413E0D7';
wwv_flow_imp.g_varchar2_table(93) := '2665DA31F92304AC4FA05855D507E6CF489A4E9DDAAA95936B6D012827376F46D25F1445194ABB876895450858978082BD2E154317CC9CF8A17513599532AF10004E2E3507B6669704F601D49769BF84565984809508509E546715C628FDDE9E9964F8D8';
wwv_flow_imp.g_varchar2_table(94) := '7E4D05E13502C006FE39F95785F3674C4C2E531C3D68FF3FB4CA22047425D080C0B98AFF91D351D68DF2E68BDC81DD807B2C738957094005B585D31F3D3C7F46D2F75D8A3A8CFA0736561C976F2160240155C11AD5A1F6A3BCF863FE25AB91717B2A2EAF';
wwv_flow_imp.g_varchar2_table(95) := '14800AE3DF9E3E7123F50F0C5355D760A8CA0774BC88565984809E048AA0E0437EF82C989E347AC1F31377EA1999DE617BB50054C05930F3B12DF3674E78D0BF44694BCEE111564CFF37CB8AB4C9B7CF10380E459DC6796CFEF4A407F8E1E30B96F98400';
wwv_flow_imp.g_varchar2_table(96) := '5438E28DE40969E49CD7A94AD659817A071D5F440DB4D3F42D8B10683401CE3B948F165333F336CA539DE64F9FF81AE7B1460764E11B7C4A00AA739E3763E23272DAA4053392DAA94EF4A1F61A0F3AB28EAEC9A3551621E08E00E70DCA23CA8B0E386EE1';
wwv_flow_imp.g_varchar2_table(97) := 'BC43F9E8B17933927CF667E93E2B00D5BDCB630F527B6D3609C2485AC39C0E57271284FB1515AFD0753C26E12E40357456568A5716D30868BE269FE333CE039C175497D299F306AD944726CC7A6BC6A37CDEB4141A15B12D04A036CC379F7FEC3809C227';
wwv_flow_imp.g_varchar2_table(98) := 'F36626BD440EBF8FD65BE6CF98D866FE8C24450D2F0E7294144495969425F8A901ED5C2E6747F8A30B6592EE0A5CBDCBA0F483C3D55F56EB3160DFB08FD857EC33F61DFB907DC93E65DFB28FE75FF535F93CE93ECE039C17ACF43FFAB5F3AB9EFBB61480';
wwv_flow_imp.g_varchar2_table(99) := 'FA802E9832A5E8ADE427B316254FBAF087990F9F7EFB85474ECC7F36E908659203F3663CB667E18C093BE63FFFD8B7B25A8F01FB867DC4BE629FB1EFD887EC4BF629FBB63EDF573F67976D1100BB785AEC14026E088800B881228784805D088800D8C5D3';
wwv_flow_imp.g_varchar2_table(100) := '62A71070434004C00D1439646F0276B25E04C04EDE165B85402D022200B580C8AE10B0130111003B795B6C1502B5088800D40222BBF6266037EB4500ECE671B1570854232002500D866C0A01BB111001B09BC7C55E21508D8008403518B2696F0276B45E';
wwv_flow_imp.g_varchar2_table(101) := '04C08E5E179B8540390111807210F22504EC484004C08E5E179B8540390111807210F2656F0276B55E04C0AE9E17BB85001110012008B20801BB121001B0ABE7C56E214004440008822CF6266067EB4500ECEC7DB1DDF60444006C9F0504809D098800D8';
wwv_flow_imp.g_varchar2_table(102) := 'D9FB62BBED098800D83E0BD81B80DDADFF7F000000FFFFED65B97B000000064944415403006D52F9D3CAB267F40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7554793765239110)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001BB494441547801EC94CB4B026114C58FD6948D46A983455258588BFA1BDA468B7605B50BFC0372D3BE4D6D6A5D448B3611418B08DAB4691314F4201FBD44C50C';
wwv_flow_imp.g_varchar2_table(2) := '73233E214D72B2BE3BE036EFAC049981C37CDC7B38F3E3F2DD31AF6CECFEB65266B4F831008C091813D035816AA58CCF621E5609703BAC98F2B834B91DB256A35EF5ABAC6BB1D900126A989F9DC6CEFA2AD6FC3EF87D8B585E98D3E4F72D6935EACDCF4C';
wwv_flow_imp.g_varchar2_table(3) := 'A3CBA4B221D8003F6A8D1DAAD6BED95E3640AFB517D1C40736F78EB07D7082FDE3331C9E9E6BA233D5B6442FF69E0679B9046C000A549C768C8F8E6068700076BB03B28022D1996A5ED173DAFBC9CA962E0076AA0E231B2093CB225F28358DCE158AC864';
wwv_flow_imp.g_varchar2_table(4) := 'B34D7D0D031BC0E55450AFD7914CA5F1964C219648E2251AD7141767AA518F825D8A422F96D80094A6883BE0197663D4338CF1310F2627BC9ABCE24C35EA1977C0B803ED7B07B2C5120A42B40DFF292FFE033986AF91C15E43A9C786E06B1C973701DC3C';
wwv_flow_imp.g_varchar2_table(5) := '3CE12E1046F8398290D05DF011D7F7415C5CDD221449A053781B1F68F66603509045B641B2C8A8774850CDDD28AB2654845453174C520F645B1F2CB295AC6CE90260A7EA301A00C604DA7F02CD16E20F0000FFFFAECC59FE00000006494441540300C077';
wwv_flow_imp.g_varchar2_table(6) := '029053A80A7B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7553913679239073)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713051440Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051440Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD077C5C597D2FF0DF9DA2DE25CB6DDD2D37D9966559C596DB2EBB94F708ED9110121202A1930592D0971778F4127A595A20106A02011208';
wwv_flow_imp.g_varchar2_table(2) := '7D8B8B6C7559B22D59B6DC6DF5DECB48EFFFBFDEEAB5A41969CABD737FFA782C79E6DE73CFFF7BAEE7FCCF3977AE5C6FF9C85767F8A001CF019E033C07780EF01C70D639E002BF2840010A50800214709800C004C0714DCE802940010A5080024C00780E';
wwv_flow_imp.g_varchar2_table(3) := '50800214A000051C27A00173064015F8A000052840010A384C800980C31A9CE152800214A080D3056EC5CF04E09603FFA600052840010A384A800980A39A9BC152800214A080D3051E8F9F09C0E312FC4E010A50800214709000130007353643A5000528';
wwv_flow_imp.g_varchar2_table(4) := '4001A70B3C193F1380272DF813052840010A50C031024C001CD3D40C940214A000059C2EF0D4F899003C55833F53800214A000051C22C004C0210DCD302940010A50C0E9024F8F9F09C0D33DF82F0A50800214A0802304980038A2991924052840010A38';
wwv_flow_imp.g_varchar2_table(5) := '5DE0F6F89900DC2EC27F53800214A000051C20C004C0018DCC102940010A50C0E902CF8C9F09C0334DF80C052840010A5020EA059800447D1333400A5080021470BAC09DE267027027153E47010A50800214887201260051DEC00C8F0214A000059C2E70';
wwv_flow_imp.g_varchar2_table(6) := 'E7F89900DCD985CF52800214A00005A25A80094054372F83A30005284001A70BCC163F1380D964F83C052840010A50208A0598004471E332340A5080021470BAC0ECF1330198DD86AF50800214A00005A256800940D4362D03A30005284001A70BCC153F';
wwv_flow_imp.g_varchar2_table(7) := '1380B974F81A052840010A50204A0598004469C3322C0A5080021470BAC0DCF1330198DB87AF52800214A00005A25280094054362B83A20005284001A70BCC173F1380F984F83A052840010A50200A0598004461A332240A5080021470BAC0FCF1330198';
wwv_flow_imp.g_varchar2_table(8) := 'DF885B50800214A00005A24E800940D4352903A20005284001A70BF8133F13007F94B80D052840010A5020CA049800445983321C0A5080021470BA807FF13301F0CF895B51800214A00005A24A80094054352783A10005284001A70BF81B3F13007FA5B8';
wwv_flow_imp.g_varchar2_table(9) := '1D052840010A50208A04980044516332140A5080021470BA80FFF13301F0DF8A5B52800214A00005A246800940D4342503A10005284001A70B04123F138040B4B82D052840010A50204A049800444943320C0A5080021470BA4060F1330108CC8B5B5380';
wwv_flow_imp.g_varchar2_table(10) := '0214A00005A24280094054342383A00005284001A70B041A3F138040C5B83D052840010A50200A04980044412332040A5080021470BA40E0F1330108DC8C7B50800214A000056C2FC004C0F64DC8002840010A50C0E9020B899F09C042D4B80F05284001';
wwv_flow_imp.g_varchar2_table(11) := '0A50C0E6024C006CDE80AC3E052840010A385D6061F1330158981BF7A200052840010AD85A800980AD9B8F95A70005284001A70B2C347E26000B95E37E14A000052840011B0B3001B071E3B1EA14A0000528E0748185C7CF0460E176DC930214A0000528';
wwv_flow_imp.g_varchar2_table(12) := '605B012600B66D3A569C0214A000059C2EB098F899002C468FFB52800214A000056C2AC004C0A60DC76A53800214A080D30516173F1380C5F9716F0A50800214A0802D059800D8B2D958690A5080021470BAC062E36702B05841EE4F010A50800214B0A1';
wwv_flow_imp.g_varchar2_table(13) := '0013001B361AAB4C010A5080024E17587CFC4C00166FC8122840010A508002B613600260BB2663852940010A50C0E902C1889F094030145906052840010A50C066024C006CD660AC2E052840010A385D2038F13301088E234BA100052840010AD84A8009';
wwv_flow_imp.g_varchar2_table(14) := '80AD9A8B95A50005284001A70B042B7E2600C192643914A000052840011B093001B05163B1AA14A0000528E07481E0C5CF042078962C890214A0000528601B012600B6692A56940214A000059C2E10CCF899000453936551800214A000056C22C004C026';
wwv_flow_imp.g_varchar2_table(15) := '0DC56A52800214A080D305821B3F1380E07AB2340A50800214A0802D049800D8A29958490A5080021470BA40B0E36702106C519647010A50800214B0810013001B3412AB48010A5080024E17087EFC4C00826FCA122940010A5080029617600260F92662';
wwv_flow_imp.g_varchar2_table(16) := '052940010A50C0E902A1889F094028545926052840010A50C0E2024C002CDE40AC1E052840010A385D2034F13301088D2B4BA500052840010A585A800980A59B8795A30005284001A70B842A7E2600A19265B914A000052840010B0B3001B070E3B06A14';
wwv_flow_imp.g_varchar2_table(17) := 'A0000528E07481D0C5CF042074B62C990214A00005286059012600966D1A568C0214A000059C2E10CAF899008452976553800214A000052C2AC004C0A20DC36A51800214A080D305421B3F1380D0FAB2740A50800214A0802505980058B25958290A5080';
wwv_flow_imp.g_varchar2_table(18) := '021470BA40A8E36702106A61964F010A50800214B0A00013000B360AAB44010A5080024E17087DFC4C00426FCC2350800214A000052C27C004C0724DC20A51800214A080D305C2113F13807028F31814A000052840018B093001B05883B03A14A0000528';
wwv_flow_imp.g_varchar2_table(19) := 'E07481F0C4CF04203CCE3C0A052840010A50C052024C002CD51CAC0C052840010A385D205CF133010897348F43010A50800214B0900013000B3506AB42010A5080024E17085FFC4C00C267CD2351800214A000052C23C004C0324DC18A50800214A080D3';
wwv_flow_imp.g_varchar2_table(20) := '05C2193F1380706AF35814A000052840018B083001B04843B01A14A0000528E07481F0C6CF0420BCDE3C1A052840010A50C012024C002CD10CAC04052840010A385D20DCF1330108B7388F47010A50800214B0800013000B3402AB40010A5080024E1708';
wwv_flow_imp.g_varchar2_table(21) := '7FFC4C00C26FCE2352800214A00005222EC00420E24DC00A50800214A080D30522113F138048A8F39814A00005284081080B3001887003F0F014A0000528E07481C8C4CF042032EE3C2A052840010A5020A2024C0022CACF8353800214A080D30522153F';
wwv_flow_imp.g_varchar2_table(22) := '138048C9F3B814A00005284081080A300188203E0F4D010A5080024E17885CFC4C002267CF2353800214A000052226C0042062F43C30052840010A385D2092F1330188A43E8F4D010A50800214889000138008C1F3B014A0000528E07481C8C6CF0420B2';
wwv_flow_imp.g_varchar2_table(23) := 'FE3C3A052840010A502022024C0022C2CE835220C80233339809D3430E14E4CAB3380A385320D251330188740BF0F814984D403A74DFD41426C6C730363A8C91A1410C0DF461A0AF1BFD3D9DE8EBEA406F573B7A3ADBD0DDD18A9E8E9BE86EBF89AEB61B';
wwv_flow_imp.g_varchar2_table(24) := 'F2B88EAED6203DDAA41C2953CB368FA1C79263EAB1B50E5A17AD93D64DEBA875D53A6BDD992CCCD6B87C9E029117600210F936600D1C20A0A3F3E9E969F87C53989A9CC4E4C4F8131DFBE8F0208607FBCDCE7DB0AF0703BD5DE8EB96CE5D1EDAB9EA7343';
wwv_flow_imp.g_varchar2_table(25) := 'FDBDD0C7C8E000C68687313E3A6AEE3F393E8EA989096867EB9BF261DAE7C38C1C67667A067ACCA03CB42C2953CBD663F82429D163EAB1B5A3D7BA689DB46E5A477D0C4A1C5AF75E894163D198F4394D1234568D794C921ADD5F2DD4446D66E4385A6707';
wwv_flow_imp.g_varchar2_table(26) := '9C120CD1F1029107600210F936600DA250403BB2A9A949B393D6CE6E68A01703326AEFED6C47AF8E9EE5BB8E9E077ABA31D8D78BE1817E68073A3A3C84B191114C8C8D413B58B363940E77DA376D1B25ADAB992468A223098AC6A231696C1AA3C6AA316B';
wwv_flow_imp.g_varchar2_table(27) := 'EC6AD02B16BD8F99F44BF2732B4118822607665230639FD86DD348AC28054480098020F00F05162AA01D947654DAC90FCAA857A7C5BBDB650A5E1EBD1D6DE6487E5046EFA343DAA18DDF1AA1CBD4FE428F17ADFBE9A85F67183459D02461B0BFC7B4EB69';
wwv_flow_imp.g_varchar2_table(28) := '6F95E58C1BE6D286CE240CAAA5CC98A8B96E1FAD1E8C2BFA05AC102113002BB402EB607901B38392E9691DD98E8F8D4247A93AAD3DD0D38581DE5BA3781DE1EAA8DD2753F1333A6DAE1DFD8C84A60FF9C63F0108A8993CD45D2D7D320BA2C9C1E8D0A039';
wwv_flow_imp.g_varchar2_table(29) := '63A2E603325BA049D7C8D0C013B305BACCA2FB0470246E4A01C70A3001706CD333F0F9047484A99DBDAE5BF7CB5AB679015CFB4DF4777742A7B1755A7B52D6DF75BBF9CAE2EBC11550F309595ED0A46BA8BF0FBA94F0F8458AFDB2D4A2099A5E5B30C3E5';
wwv_flow_imp.g_varchar2_table(30) := '83E0C2B3B4200958A3182600D66807D622C2023A72D40E43A7F27564D9635EE9DE8A0119E1DF1A61EAF43DD7A223DC4C731F5E660CF4FA039D29D004E0F1A4A0BBE326066496666C640853931360523037235F758E001300E7B43523BD4D607ADA674E1D';
wwv_flow_imp.g_varchar2_table(31) := '6B673120D3C9E61A735FAF7911DED4E4A4ACD74F4B6721BD8AFCB96DD7C8FFD3902A3CF630E4BB6118305CB71E2EB71B2E77F01FC663E51B861CC778F2F8D09FE59F96FA236D36234B309A10F826A7A44D872509B8755DC180240323B29430652603B2A1';
wwv_flow_imp.g_varchar2_table(32) := 'A52ACECA3841C02A31BAAC5211D68302E110F04D4D6244D68CFBBADACD8BCB7494A8D3F93A6A9C9175FB70D461AE6348DF0AC330A09DADCBE5825B3A72B7D783B8F8786464A463D5AA95D89CB31EBB76E4627F5101EE3BB41F2F78EEB3F0672F7A1EFEE6';
wwv_flow_imp.g_varchar2_table(33) := 'CF5E8437BCF26578CB6BFE126F7FE32BF1DEB7FC2D3EF69EFBF1C907DE8A4FFFD3DFE3731FF8477CF143EFC0573EF22E7CEDE3EFC5373FF93EF3A13FEB73FA9A6EA3DBEA3EBAAF96A16569995AB61E438FA5C7D463EF2FDA837CA98BD669B5D42D53EAA8';
wwv_flow_imp.g_varchar2_table(34) := '75D53A6BDD35068DC5300C40FE20C25F9A108C8F8E9A1FA9ECE9684377DB0D68E2A7333FBAAC10E1EAF1F01408AB001380B072F360E116989651BE4EEDEB285FAFD0EFEDEA303F6FAFEBC708F3E04F3B43B7C7034F4C8CD9A12FC9CE42CEC67528CCDF89';
wwv_flow_imp.g_varchar2_table(35) := 'BB0F94E045CFBB07AF78E99FE0F57FFD52FCC3EBFE0AEF7BEB6BA4B37E271EFCF03BF1850FFC3D3EF1EE37E1036F7D35DEF58657E06DAFFA53BCE6CFFF047FF9C27BF1E2671FC0F30E16E150711E8A776EC1AE2DEBB16DC36A6C5CBD024B33D390959E82';
wwv_flow_imp.g_varchar2_table(36) := 'F49424A4242520313E0E71B131F07ADC70C9885E1FFAB33EA7AFE936BAADEEA3FB6A195A9696592C65EB31F4587A4C3DF66BFEFCF978ABD445EBF47EA9DBC7A58E5A57ADF3573EF24E33068DE5F57FF552BCE2FF3C1F2F7CEE3D66AC0579DBB171FD1AA8';
wwv_flow_imp.g_varchar2_table(37) := '81260C1E31511B350AE739A24B3F9AFCE9A70BF4A3889A0CE8A710F4DA8E99692EF984B32D9C732CEB44EAB24E5558130A044F4047FA4F74FA9DEDE6457B7A85BE39CA0B47C72FA3DDD8B818AC5EB90C45F9DBF1C2E71CC6EB5FF112BCFB4DAFC4A7DFF7';
wwv_flow_imp.g_varchar2_table(38) := '567CF5A3EFC2A7DEF37778E0CDAFC49BFFFA2578E54B9E8B173DFB209EB5AF0025BB72B163F37AAC970E3C36361631D239EAC3EBF59A3302E1EE24FD6915AD938EF8B58E5A577D68DD35068DA5243F17F796EEC18B9F73D08CF5FEBF7929DE77FFAB4C03';
wwv_flow_imp.g_varchar2_table(39) := 'B55013B55123B55233B553C3B0CC1CC839E1F3F9A0C9805EF4D9D7DD6EDE6D512F329C9624D21F036E4301BB093001B05B8BB1BEB30AF87C53D0A95C1DC975B7B79A9DBEAEFFCEBA43105ED0996DAF74D22B964B475F908797FCEFFBF0D6D7FE253E2BD3';
wwv_flow_imp.g_varchar2_table(40) := 'ED5FFDE87BF0C1B7BF016F9211FD8B9F7B18C59208E4AC5B85D4E4C4201C39BA8A5013B55123B55233B55343B55453B52D2AD889E562ADE66A1F2A8519590E9A181FC7605F0FBA5A6F98CB04E3A323D01983501D93E53A43C04A513201B0526BB02E0B12';
wwv_flow_imp.g_varchar2_table(41) := 'D037E591E141E87ABE4EE5EAF4ED820A9A6B2719D11B3265EE96A9F3EC259928C8CBC54BFED73D789BACB77FF983FF880FBFFD7578D32B5E8C17DC5B8AFC6D3932E59E0CC3909DE62A93AFCD2B60188669A9A66AFB269945F98858ABB9DA6B1B685B689B';
wwv_flow_imp.g_varchar2_table(42) := 'B8DC6E681B2104EC3A33A0170FEA12C1D8C83066F8F1C279DB8E1B585FC065FD2AB28614B89F79A6160000100049444154B3C0CCCC8C793197DE796FA8AFD7BC1F7EB0D7F563636390236BD5CF39BC0F7FF7372F332F9AFBE47BEFC7FD7FF3A778C17D07';
wwv_flow_imp.g_varchar2_table(43) := '91279DBD4E77EB14F89D6BC967832DA0D66AAEF6DA06DA16DA26DFFCE40378F32B5F86671FDA8B8D6B57C9D28937A887D6F34D7F078226023AC334323418D4F259981304AC152313006BB5076BE387804EF58F0C0DA0BBFD2646E44D58A76BFDD86DDE4D';
wwv_flow_imp.g_varchar2_table(44) := 'B463494D4D41FE8EADF8D33F7936DEF7B6D7E2C18FBE1BEFFDBBBFC1CB5FF06C14ECD802C308C1F072DE9A71037F04B4FDF6ECDC82BF78E173F0C05B5E6DB6DDFBDEFA1ABCF4F9F762D7F62D484949866EE34F59F36DA3D792E82F3DD273903302F369F1';
wwv_flow_imp.g_varchar2_table(45) := '75AB0A3001B06ACBB05E7714D037DBFEEE4E19F9F741DF84EFB891BF4F4A5FAE23C96D9BD6E345B246FFC0FDAFC23F3F703FDEFAEA97E17FDFB30F1BD7AC343B0CC3900DFD2D93DB5942C0300CF382C98D6BEFC2F39FB51F6FFBDB3F37DBF60149E65EF8';
wwv_flow_imp.g_varchar2_table(46) := '9C43D89AB34E660862804536ADDEA278407F3DB39C931363A3E01705E612B0DA6B4C00ACD622ACCF1D05745D5F3FC6A7D3AF53939377DCC6DF27E3E262B1B7300F7FFFDABFC4D73EFE1EBCF38D7F8D173DE73036C8B4B15EC5EE6F39DCCE5E029AEC6D58';
wwv_flow_imp.g_varchar2_table(47) := 'B71A2F7EEEDD78D79B5E296DFF6EBCF56F5F8E92821D888DF52E3C9819402F18EC9324A0BFA76BF189E9C26BC23D29109000138080B8B871B8057C3E1FF48DB5B7ABCDFCF5B80B3ABE8CF2F433E63AD27FF55FBC085FFAD03BF0FABF7831F2B6E6C030E4';
wwv_flow_imp.g_varchar2_table(48) := 'C50515CA9DEC2E60182EE4E76EC61B5EF17FF0E50FBF0BAF7EF90BB175D33AB8DCEE0587A69F14E8ED6A373F8DA2D70C2CB820EE188502D60B890980F5DA84357A4C40A757FBBB3B604EADCA28EBB1A7FDFE66B80C64A4A7E379F7ECC767FFE96DE648FF';
wwv_flow_imp.g_varchar2_table(49) := '60E12E783C1EBFCBE086CE10D073E260513EDEF5C657E233FFF72DE68584696929308CC013443D6F07FB7A31284B0333BC9990334E209B46C904C0A60D17EDD59E181F837E9E3FE0E97E79BF8E8D8FC7F6DCAD78F3AB5E8ECFFCD35BF1B2E7DF8B94E4A4';
wwv_flow_imp.g_varchar2_table(50) := '6827637C4112484B4DC55FBCE839F8DCFBFF016F92732877DB66E87D07022D5E7F5B64AFCC5C4DF3464281D245E5F6560C8A0980155BC5E175D23BF6F5F7740674D315C330CC37E97D457BF08FAF7B05DEFE9A9761CFF64D0E9764F88B1528DCB109EF78';
wwv_flow_imp.g_varchar2_table(51) := 'EDCBF18ED7FF15F616ED863726466605FC2F756A724A12D9F65B1F51F57F376E4981B0083001080B330FE2AF8039F2EF6EC7CCB4FF73FE31B171387CA0041FF8FBD7E1757FFE7C6C5ABBD2DFC3713B0AF825B069DD5D78FDCB5F800FFCE3EB71705F313C';
wwv_flow_imp.g_varchar2_table(52) := '5EFF2F1AD42581DE2E26017E4147ED46D60C8C098035DBC591B5D2CE5F47FEFEDECC472FEC2B9551D967647DFF952F7E0E562ECD74A41B830E9FC0CAEC4CBCEAA5CF337FB36271411E0C977F6FA1FA91D5BEEE0E496CF90B86C2D75A3CD27C02FE9DBDF3';
wwv_flow_imp.g_varchar2_table(53) := '95C2D729B048011D25E947A8FC1AF91B40CEFAD5322DFB0ABC5646654909718B3C3A77A74060027ACEBDF1152FC63FC8F280FEC2237FF6D673DC4C02781B617FB8A26A1BAB06C304C0AA2DE3A07AE9BDFC077ABBFC1B1D49E7FF92E7DD8D07EE7F35B66C';
wwv_flow_imp.g_varchar2_table(54) := '5CEB2025866A45811D5B72F0C05BFE16FFEBEE12BFAAA7F7B3D03B08FAB53137A24088059800841898C5CF2FA09F9D9E9C9C9877C3B4D464BCFD0D7F8D17DC7768DE6DB90105C225A0BF06F9CF5EF05CBCEDB57F8194A484790F3B3E3686293FCEF7790B';
wwv_flow_imp.g_varchar2_table(55) := 'E2063611B06E35990058B76D1C53B3B1D161CCB7EE9F9D996EDEBD6DFBA6F58E7161A0F612D8B56D13FEE1F5AF40567ACA9C15D7EB014647E49C9F732BBE4881D00B300108BD318F3087805EF83739313EC71640AA8CFCDFF6DABFC4F2ECAC39B7E38B14';
wwv_flow_imp.g_varchar2_table(56) := '88B4C0DABB56E0FE57FD399212E3E7ACCAD8C81078A7C03989A2E6452B07C204C0CAADE380BA690230E7E85FD6FC5FF9A77F82154BD9F93BE074888A10D7AC5A8197BDE0BE3963D1CE9FCB007312F1C5300830010803320F716701BDF86FBE37C1DDDBB7';
wwv_flow_imp.g_varchar2_table(57) := '60772E6FE87367413E6B55817D0579C8CD99E322D51960BE992FABC6C67A052260ED6D990058BB7DA2BA763333D373DE214DEFE5BFBF6857541B30B8E814D00B03F7EDC99B3338FD44C0CC8C6402736EC51729103A012600A1B365C9F308E89B9FCE02CC';
wwv_flow_imp.g_varchar2_table(58) := 'B69961B8B079DDAAD95EE6F314B0B440EEA67573DE284867BF66F8CB822CDD868BAD9CD5F7670260F5168AE6FAE9E8471FB3C46818B3BCC0A729600301FD0D83AE39EE14A89F06982B01B64188ACA2CD059800D8BC01A3B9FA3E9F0F672F5C8EE610195B';
wwv_flow_imp.g_varchar2_table(59) := '140B345EB88269DFD43C117209601E201BBF6CFDAA3301B07E1B39B786F2DE78B4BC861F9772EE1960DBC87579EBD6B96BDB10587107083001704023DB39C4FAC61654D49DB17308ACBB03054ED636A0BEA9C5819133E4C705ECF09D09801D5AC9E175FC';
wwv_flow_imp.g_varchar2_table(60) := 'FECF7E8D2BD75B1DAEC0F0ED2270E9CA75FCE067BFB14B75594F070B30017070E3DB25F481C1617CE5BB3F416B67B75DAACC7A3A54E05A6B3B1EFCDE4F313834E25001867D4BC01E7F3301B0473B39BE96EDD2F97FFC4BDF46DDD966C75B10C09A02350D';
wwv_flow_imp.g_varchar2_table(61) := '8DF8D457BE838EAE5E6B5690B5A2C06D024C006E03E13FAD2BD03F3084CF7FF307F8E9AF7E0FFD8480756BCA9A3949606A6A0A3FF9E5EFF0856FFF18031CF93BA9E9678DD52E2F3001B04B4BB19EA680DE36E0BFFF701C1FFDE2B7D078FE92F91CFFA240';
wwv_flow_imp.g_varchar2_table(62) := 'A404CE9C6B31CFC55FFEB16CDEDF6819A93AF2B814984D8009C06C327CDED2022D576EE0130F7E079F9319810E591EB0746559B9A813686BEFC467BFFE3D7CEA6BFF868B576F465D7C0C683102F6D99709807DDA8A35BD5D6006A83BD38C777FFCCBF8DA';
wwv_flow_imp.g_varchar2_table(63) := '0F7E86ABAD1DB76FC17F5320A802576EB4E3ABDFFF4FBCE7935FC1A9C60B1CF507559785855B800940B8C579BCA00BE8ED544F549EC2FB3FF5A0ACC3FE3B9A2F5D0FFA3158A0B3054E375FC267BFF943BCFFD30FE264553D66A625FB743609A39F45C04E';
wwv_flow_imp.g_varchar2_table(64) := '4F3301B0536BB1AE730AE8DDD76AEACFE2E35FFA163EFAA57FC5A3276BA11768CDB9135FA4C02C02131313F8C3B10A7CE0335FC7A7BFFA5D9C3A738E23FE59ACF8B43D059800D8B3DD1C53EBF8B8988063D51981E696CBF8F68F7F81777EF44BF8F12FFF';
wwv_flow_imp.g_varchar2_table(65) := '88C1A1E180CBE10ECE1418181CC20FFFEB77E6B9F3BD9FFE0F2E5FBB094D2E03D1701940427C6C20BB70DBA810B057104C00ECD55E8EAA6D5CAC17DB366F42EEA67588F17A16147B4F6F1F7EFDC7A3B8FF9F3E854F7CE53B385A5117F09BF9820ECC9D6C';
wwv_flow_imp.g_varchar2_table(66) := '25A049E3436555F8D897BE8DB7BCFF9FF1DB87CBD0D73FB0A018F45CDD92B31EC5BBF3E072BB17540677A24038049800844399C7589080D71B83A4A444AC5DB316C50579589E9D81057FC992AD7E6CF05B3FFA05DEFC7F3F85AF7FFF67A86968824EF306';
wwv_flow_imp.g_varchar2_table(67) := '3ABA5B701DB8A36504B4C31F1F1F4745DD697CE9DB3FC69B1EF804BEFB935FE25CCB95054FF3EBA87FD9920CEC2DCCC7FAB56B101B1B07B79B6FB19669F43054C46E87E0D969B71673507D5DF2E6191F170B8F8CFE333232B03B2F0FBB72372339290186';
wwv_flow_imp.g_varchar2_table(68) := '4CB12E84423BFB91E11194559DC217BEFD23BCE5039FC567BEF103FC8F8CF86EB4752EA448EE632381EB37DBF1CB3F1EC367BEFE0369FBCFE02BDFF909AAEA1B313636BEE08E5FCFC5B49424E4EFD886825D79484B4B83DBE391D1BF0B2E17DF626D747A';
wwv_flow_imp.g_varchar2_table(69) := '38AEAA3C3B1DD7E4F60AD8ED7E72EA5F1381356B56E3C0BE126CD9B801F1B2C6AA6FBE58E897CC0A8C8D8EA2A1F13CFE5DD67C1FF8E497F177323BF0996F7C1FFFFD87A3E6687046EF3CB4D0F2B95F440574947FF6FC25FCEC370FE3535FFD2EDE2CA3FC';
wwv_flow_imp.g_varchar2_table(70) := 'F77DEA41FCE4977FC0E9731730AE9DFE226AA8E75E62423CB66CDA20E76431EEBA6BA599AC3E59E402B3D4270BE04FB612B05F659900D8AFCD1C5563C378E69BA8D7E3C62659633D5852842D391BA16FC24141918460686818F567CFE33FFFE7217CF241';
wwv_flow_imp.g_varchar2_table(71) := 'E9342421F8D897BF837FFFD51F51DD70CE5C32D08E2528C763214113D05B43EB724E557D137E2C1DBC7E0A44977AFEF96BFF865FFCEE519C397711C323A341399E9E92C9B23495BB65130EEE2BC2A60DEBEF38D2378C679EBB41A9000BA1409004980004';
wwv_flow_imp.g_varchar2_table(72) := '0992C5845F202E3E0E9B36AEC3DDFB4B90B76D135292138356091DF96BA7A2CB05E72E5CC2FFC88CC017BFF543BC514691EFFDE48378F07B3FC36F8E94F39E0341130FBCA0C60B57F0AB878EE38BDFF90FBCE7135FC11BDEFB7159CFFF117E2D53FCFA29';
wwv_flow_imp.g_varchar2_table(73) := '9051E9F0A77DD30B9EDABFBD46DA9FA7A42462D7F62D38545A8C0DEBD6202626F04FA9DC5E2EFF1D1D02768C8209801D5B8D757E9A80AEB7AE5DBB0687F7EFC5FE9202AC5DBD12B1B1A17963F64DF9A0B7812DAF3E851FFDFCD7F8D897FE057FFB8E0FE1';
wwv_flow_imp.g_varchar2_table(74) := '9D1FFB12BEF0ED7FC74F7FFD30CA6BCFA0ABA7EF6975E43F1626A0F77168EBECC6899A06FC4466653EFFAD1FE31D1FF9225EFDF60FE2935FF936FEE397BF4775DD19E8EDA0CDCE7E61879973AFC4C404E9EC57E3D0BE621C2EDD8BD5AB56C1ED76CFB90F';
wwv_flow_imp.g_varchar2_table(75) := '5FA4801D049800D8A1955847BF040CC340664606766CDB8AFDC585C8DBBE15D9D999920C78FDDA3FE08D64C940EF08A74941474717F42644BFFCC3117CFD07FF698E48EF7FFFA7F1A12F7C0BDFF8E17FE1570F9F40CDE97368B9721DDD921C4C4E4E9837';
wwv_flow_imp.g_varchar2_table(76) := '29D259065D52D01987808F6FC31D344E8D57E3D6CE7D7272D25C56D184E9C2E5EBE60579FACB9EBEFEFD9FE3839FFF17BCED839FC3FB3EF5557CFD7B3FC52F7F7F04B50D8DE8ECEA8676F6E6E519D206A160888DF562F9B26CECDA998B7D4505D8BE7533';
wwv_flow_imp.g_varchar2_table(77) := '525353601846280EC7326D2F60CF009800D8B3DD58EB39045C2E03494909321370178A77E7636F6101366F5C8BF4D424F37E02AE109EF58F2704931313181C1844CBA5AB385E5183FFF8AFDFE20BFFF2437CE873DFC4DB3FFC39BCE13D9F90EF9FC7FFFB';
wwv_flow_imp.g_varchar2_table(78) := 'ECD7F1E9AF7F5F92869FE3C7FFF53BFC5A12856355A750DFD482CBD7DBA01DA5769A73846BC997B493D70E5E63D0588E559E824ED7FFE817BFC5D7BEFF3389F97BE61DF6DEFEE1CFE38DEFF9B8587C0E1FFEFC37650AFFC7F8E9AF7E8FB2AA3A5CBC7C0D';
wwv_flow_imp.g_varchar2_table(79) := '438343989224C1ECEC4318A94BCE99D8188F798E6CC959877D857B50B43B0F6BEE5A8104596A0AE1A1593405222610C2B7C288C5C40353E009017D634F4D49C6964D39282D2984DE4F606BCE062C5BBA04F1F2C61E89019D7666DAB1F7F50FE2EA8D76E8';
wwv_flow_imp.g_varchar2_table(80) := 'AF943D219DFE6F1E29C3BFFFF277F8971FFE1C9FFBC6F7F1C1CF7D03AF7BF7C7F0DA777D44D6B73F817FF8E067F1C0271FC4076564FCA9AFFE1BBEF8ED1F43EF67F0DD9FFE0A3FFEEFDFE1E7BF79581288E378B8AC12C72BEB5079EA34F4FA8516E948AF';
wwv_flow_imp.g_varchar2_table(81) := 'DE68C5CDB676992AEF9219885EF44B72323C3C02BDE8B17F60C07CAEA3B30B375ADB71E5DA0D3371D17DB58CE395B578E87825B47EBFF8ED23E6B1F4985FFFC1CFCC3AE8C5921F94C4E6BD9FFC0AFE5EEAF806E9D05FFBAE8FE2F5EFF91834068DE55F7E';
wwv_flow_imp.g_varchar2_table(82) := 'F473FC44A6EB7F7BE424CA653AFF6CF3255C6FED907A0CC1371DBC75FA271ADE8F1F5CD2F80909F158B13C1BDBB7E448A7BF5BCE91226CCED988949424F08B02FE0AD8753B2600766D39D63B6001B7DB03BD9FC0C60DEB5198BF1387F71661EF9E7C6C58';
wwv_flow_imp.g_varchar2_table(83) := 'BB1AA9F286EF7647F6BF8326063A83A00F1D414FFB7CF04D4DC908780AFA71C59EDE7EB383D691B1260DD5F58DCC156852000010004944415432523E85878E55E2D70F95E1E7BF7D143FFEAFDFE33BFFF12B7CE3073FC797FFF527D04F307C4812867FFA';
wwv_flow_imp.g_varchar2_table(84) := 'F4D7F05E491EDEF9B12FC968FB0B78DBFFFB2CEE7FFF3FE32DEFFFB4F9F3DB3FFC05F33A86073EF520DEFF996F984B17BAAF96F18D1FFC02DFFDC9AFF0A35FFC0E3FFBCD23E6B1F4986532AAD73A9C6DBE888BB2B471533AF45EA9E3D8D898596FDF944F';
wwv_flow_imp.g_varchar2_table(85) := 'A6EAE5211DBCC6A4F16126E0660BEA0E1E8F1B699210E66C582B53FBF9B2AE5F8882BC1D58B7760D525253E1E6DA7E50BD5998B50522FB8E676D1BD62E8A055C2E1762E262B1644916B66FDB8C43A57BF1ECBB0FA2B4683774B9203B2B5DA67E6365CD37';
wwv_flow_imp.g_varchar2_table(86) := '4A10B4E37DECA14B0A33D229EB3ABA261A33D333B76E8FFCD8EB5112315C2E0389097158B62413DB36ADC72149F8B48D0F969660DBE61C64666622262656B673454BC88C232202F63D28CF7CFBB61D6B1E4401990D96CEC08BACAC4CE814F0EEBC9D2829';
wwv_flow_imp.g_varchar2_table(87) := 'D86D2E19E46EDE80352B976149469AD9A1783CFC6F038B7D69679F94188FECCC74E8A740766CCB81DE8BBFB8201F05F93BB051667DD2D253E1F57AA227A9B3581BB03AF61370D9AFCAAC3105422B601806F46384C9B22CB0343BDBEC3C76C9347161411E';
wwv_flow_imp.g_varchar2_table(88) := '76EFDC8E5C592F5EB77A259664A62129214E12070F3C4C0A42DB284F295DAD63633D48960E7F59762636AE5B855DB95B652A7F278AF6EC46DEF66D58BF762DB2B39720393949DAC62B9DBEF19412F82305822760E7925C76AE3CEB4E81700A78BD31C8C8';
wwv_flow_imp.g_varchar2_table(89) := '48C7DAD5ABB1533A997DC585B8FBC03E5936D883FC1DDBB175D346AC5EB50299B28D26106E490A74642A33D1D20185B3A6F63E96E45F322D0F7918F0C89A7C426202B2651A7F8D245D5B376FC46E49C674C9E6B0D8174B879FBB750B56AD5A89B4B41459';
wwv_flow_imp.g_varchar2_table(90) := 'C3E75B9ABD5B9FB50FA700FFB784539BC78A3A0197DB8D949464AC58BED4BC2BE1AEED5B51B26717EED95F623EF49A825D3B72A1B78B5D75D7724920D2A01D9A3726066E8F5B3A3997240706207FE0902FEDE00DC98A5C6E976910131B83A4A444646566';
wwv_flow_imp.g_varchar2_table(91) := '608D74E49A48EDD9B513074BF6E05987F6CADA7D218AF277222F778B38AEC3F2A5D9888F8B83CBE502BF281059017B1F9DFF83ECDD7EACBDC5040CC3058FC78398D8582424244A879F815577ADC0964D1BCC5982D2E23D9218ECC57D874A71EFC1529496';
wwv_flow_imp.g_varchar2_table(92) := '1460F7CE5C6C93D983F56B5761E58A6C2CC94A47868C66F5F3E731DE5BCB0B2EE930B5E384C5BFA49A70B90D31702336C62B1D75ACF9098BECAC0CAC5AB10C39EBD760FBD6CD28940EFEC0DE42DC7778BF58ECC7DDFBF7625FD1ADE9FB9C0DD2C92F5B8A';
wwv_flow_imp.g_varchar2_table(93) := 'D4B434C4C5C523C64C963C300C17F845010A044F80FFA38267C9922830A78076E02EF9CBED769917A3C5C5C54A479F86BB562E87767ADA3116C8F476C1AE3C14EEDE25C9C11E1CDC578243F2D0EFFA38B0AF087B8B0AA037A9D99DB7DDEC4C376D5C8FF5';
wwv_flow_imp.g_varchar2_table(94) := 'EB5663EDEA55E6087AF5CAE56667BB727936562C5D623E96CA14BA2615A9C90948494A30D7CF1313E2CC8B1A752D5D9FD7876EB32C3B0B2B962DC1CA65D9B84B3AED552B9741CBD4D1B91E438FB5396703766CDB82825D3B50549007AD93D64DAFB0D7DB';
wwv_flow_imp.g_varchar2_table(95) := 'E5EAF783A5C5D8BFB70825324D5F201DFEAE9DDBB16D4B0ED6AF5D6DDE652F2D25459284183359B895E018101EF08B027611B07B3D9900D8BD0559FFA811300CED005DD2297A65E41B8B84F8782426C69BD3E37A9F82B4D464491852A1A369BD4DEDAA95';
wwv_flow_imp.g_varchar2_table(96) := 'CBB1413AFEAD32BBB04346D579DBB760D78E6DC897C460B774CC3A8DAEB7B2DD2953E7BB766C95A462274A0A7763AF8CB4F74912B1BFB800FAD09FF5797D14EEDE092DC7DC476626B483DF2D498996A965EB6B7AAC2D39EBA5235F6526083A25AF75CA48';
wwv_flow_imp.g_varchar2_table(97) := '4B95D17E32F437E525272698F54F888F33638991D900EDE40103FCA20005AC21E0B24635580B0A5020E802925078BD5EC4CA7AB94EA53FED21C9455C7C026E3DE2F1B4D764DA3D36364E46E69EA057890552207A04EC1F091300FBB72123A00005284001';
wwv_flow_imp.g_varchar2_table(98) := '0A042CC004206032EE40010A5080024E178886F8990044432B32060A50800214A04080024C000204E3E614A0000528E07481E8889F094074B423A3A000052840010A0424C00420202E6E4C010A5080024E178896F89900444B4B320E0A50800214A04000';
wwv_flow_imp.g_varchar2_table(99) := '024C0002C0E2A614A0000528E07481E8899F0940F4B42523A100052840010AF82DC004C06F2A6E48010A5080024E1788A6F8990044536B32160A50800214A0809F024C00FC84E26614A0000528E07481E88A9F094074B527A3A100052840010AF825C004';
wwv_flow_imp.g_varchar2_table(100) := 'C02F266E44010A5080024E1788B6F89900445B8B321E0A50800214A0801F024C00FC40E22614A0000528E07481E88B9F0940F4B52923A200052840010ACC2BC004605E226E40010A5080024E1788C6F899004463AB32260A50800214A0C03C024C00E601';
wwv_flow_imp.g_varchar2_table(101) := 'E2CB14A0000528E07481E88C9F094074B62BA3A200052840010ACC29C004604E1EBE48010A5080024E1788D6F89900446BCB322E0A50800214A0C01C024C00E6C0E14B14A0000528E07481E88D9F0940F4B62D23A300052840010ACC2AC00460561ABE40';
wwv_flow_imp.g_varchar2_table(102) := '010A5080024E1788E6F899004473EB32360A50800214A0C02C024C006681E1D314A0000528E07481E88E9F094074B7AFBDA39BB177F5597B870B18004F61879F03160F9F0980C51BC8C9D59B9E99C18C3C9C6CC0D8ED2DC0D3D7DEED17EDB5670210ED2D';
wwv_flow_imp.g_varchar2_table(103) := '6CE3F82626263038346CE3085875270B8C8F8DC33735E56402C66E71012600166F2027576F627212DDBD7D4E2660EC3616E8ECEAC6F4B4CFC61138BDEAD11F3F1380E86F63DB4638333D832BD76F7019C0B62DE8DC8A4F4EF970F9FA4D5E04E0DC53C016';
wwv_flow_imp.g_varchar2_table(104) := '913301B0453339B792434343B8744DDE489D4BC0C86D26A0EBFE57AE5E477FFF80CD6ACEEA3E55C0093F330170422BDB39C619E06C53B32C05F4DB390AD6DD41026D9D5D683CDFE2A08819AA5D059800D8B5E51C546FBD90AAB2A616BDFD830E8A9AA1DA';
wwv_flow_imp.g_varchar2_table(105) := '51A0B3A71735750D98F671EDDF8EEDF7649D9DF113130067B4B3EDA31C1F9FC4C9AA1ADC68EDB07D2C0C203A05AEB7B6A3A2AA1653BCF23F3A1B380AA3620210858D1AAD214D8C4FA0B6BE5E9604CEC3373D1DAD61322E9B09E8057FA71BCFC9C8BF5E3A';
wwv_flow_imp.g_varchar2_table(106) := '7F8EFC6DD67C77ACAE539E6402E094968E92387DBE199CBF781965E555D08F59E9055751121AC3B099809E7B37DBDA71A2A20A2D97AE42FF6DB310585D870B300170F80960D7F07B7AFB6549A00EA7CE9CC5C8C8A85DC360BD6D2A3030388C9AFAD3A8AA';
wwv_flow_imp.g_varchar2_table(107) := 'AD476F1FAFF6B76933CE526DE73CCD04C0396D1D75914ECB32C095AB37F0D09132591A3883C161DE3530EA1AD96201F5F6F5A3A2BA0E8F1C2BC3F51BAD1CF55BAC7D589DC004980004E6C5AD2D28A0D7035CBD7E138F1E3B89AA53A7D1D9DD2BB59C9107';
wwv_flow_imp.g_varchar2_table(108) := 'FF5060F102D3D33368EBE8C4B1F26A1C3D5989D6F64E76FC8B67B56C094EAA18130027B57694C7EAF34DE3868CCA2AAA6B515E5D8FB6CE6E4CF1E35851DEEAA10B6F62720AD7E47C3A565E854A99EAEFEEEE81DE9D32744764C91408AF001380F07AF368';
wwv_flow_imp.g_varchar2_table(109) := '010AC4783D308CC0769A9AF2A1ADBD03959208949557E2DAB51B181919017FB360608E4EDC5A2FE41B1C1A42F3F9161C2D3B811A9951EAEDEDC3B424978178B8E49D353E2E26905DB8AD25049C5509394D9D1530A3B58F8076FE391BD662CD5DCBE07205';
wwv_flow_imp.g_varchar2_table(110) := '980548983A75DBDB37889A86B332755B853AF9DED6D985A9A92949066403FEA1800868A73F3A368E1BADEDA8AEAB4759450D1ACF5FC4D0F098BC1AF81F3D6FD7DEB502DBB7E42CE8BC0DFC88DC83020B136002B03037EE150681D8B85864676561476E2E';
wwv_flow_imp.g_varchar2_table(111) := '4A8B76232D2569C1471D933778BD4EA0BCB216BF7DF8284E569FC2A56BAD1891E7175C2877B4B5C0E0F0282E5CBE66AEEDFFE1D163E615FD9A04E8B9B2D0C032D25370A0A410DB73B7222B33136E8F77A14571BF080838ED902EA705CC78ED23E092B9FF';
wwv_flow_imp.g_varchar2_table(112) := 'D898181945B99091918183A525C8DF998BE4A484450531256BBB1D1D1DA83F7D1A0F1F2DC3C3C7CB51DF780EAD1D5DD0DB0E2FAA70EE6C5981B1B1315CBFD986BAD34D78E8D8493C7AFC04CE3436A1A7A727E029FEDB83D473B240CECDFD25C5484A4E92';
wwv_flow_imp.g_varchar2_table(113) := '652B7D6B35E4BB71FBA6FC37052C23A067A9652AC38A50E069029200B8DCEE279E320C03AB656AB564CF6E6C5CBF16F13243F0C48B0BF96106D06460A07F00972E5D45EDA9061C2DAF46AD2C155CB97ED3FC7CF7D8F8C4424AE63E1116D0EB3D7476A7AB';
wwv_flow_imp.g_varchar2_table(114) := 'A74F46F957515E730AC72B6AA5F33F8B2B57AF61706050923DDFA27F5D6F7C7C2C366D58877D8505B84BCE4D39459F8C5CFE217F9EFC377FB2B880F3AAC704C0796D6EAB885DAE679EA20909F1C895F5D5FD7B8BB161ED6AC4C5C62018E3AC499919E897';
wwv_flow_imp.g_varchar2_table(115) := '64E0EAB51BA8AB3F839395D5E65DDEAAEA1AD072E90A7AFAFA313A3601BDF5AB5E5F602BC828AFECE4A40FC3A363E8ECEAC1B90B2DA8A8A943D9C90A9C28AFC499B3E7D0D6D681A1A1A15B9DFE222DB4538F95736ED386B53828E7E0D6CD1B11171FF78C';
wwv_flow_imp.g_varchar2_table(116) := '52EF74EE3E63233E4181080A3CF3DD358295E1A129108840828CBEB66FDB8C7B0E9662EBD61CA4242542DF9C032963AE6DF563607AC7B71B326D7CBAA919C74E56E11199362EAFAEC3E9A6F3B82C8942B78C30C72726E0F34D43479D7A41D95C65F2B585';
wwv_flow_imp.g_varchar2_table(117) := '0BA8EDB4FCA5D62323A36893259B0B3273537DEA344E5455E36859B97CAF41D3F98B686BEFC2F0C818A6659667E1477CFA9E7A6E99C9E7563DE7F661EBE61CC42D7616EAE987E0BF2228E0C44333017062AB4759CC5EAF0739EB6434B6AF0845BBF390BD';
wwv_flow_imp.g_varchar2_table(118) := '2403AE604C093CD5493A9299E969E82F24D2CF835FBA7C05A764A9E0784595AC2797E348450DAAEA9BD0D47205D7DBBAD037308CF189A9A796C09F0314D0CE5E675C7AFA8770B5B503679A2FA2A2EE0C1E39518987CB2A505E5D8B338DE7CC3BF2F5F6F6';
wwv_flow_imp.g_varchar2_table(119) := '635C966B66B4C797B60AF050736EEE929369697696796EDDB3BFC49C758AF1F2E2BE39D1F8A22D049800D8A29958497F04DC1E0F962DCDC65E598FBDEF9E43D891BB0599196940B093013CF9A51DCEC4D818067A7B71F3C675343737A3A6B65646A327F0';
wwv_flow_imp.g_varchar2_table(120) := 'D091E3F8FDA3C7F1A8CC1C54D79F45E3F94B326BD08AF6EE5E0CC9E85447B2087267F564CDACFF93CE98E82C4BEFC0105A3BBA65ADFE1A4E9FBB808ADAD36652F5FB478E9B17691E3B7112B5B5A7D0D2D282F6D6560C0D0C604A665D4269A79D7EB674FA';
wwv_flow_imp.g_varchar2_table(121) := 'F93B72F1DC7B0FA3644FBE796EE939667D59D630700167EEC104C099ED1EF551EB7501EBD7AC424941BEACD31641D76BD35393E1F5BA43990F98AE324B0DBD4660423AA991E111F4F5F4CA28F5062E5CBC88334D4DA8AB9729EBCA6A1C9191ECB1F26A9C';
wwv_flow_imp.g_varchar2_table(122) := 'A8AC45655D034E9D6932938496CBD7A01F59BCD9D609BDAD71BF7490C3528E7E4261DAE793B2A7CDE358E9AFE9699F2C83F830393989C1A161F302CACEAE5EDC9091BB2E95345FBC8233E7CE9B175856D4D6E378650D8E486274EC6425AA6A4EC96CCA19';
wwv_flow_imp.g_varchar2_table(123) := '34CAEB172F5D41AB74F283D2C98F8D8E9AE5CDE8A83E0CC1C6C478909196826D9BD6E3C0DE2214EEDA89D5AB56C02B8965180ECF435020EC024C00C24ECE038653C023CB03E969A9E67A6D69C91EECDEB91DEBD7AD429A240331F29A2B5CFF0364A4AF77';
wwv_flow_imp.g_varchar2_table(124) := '93D34F1D8C8D8E41138301E9E4BA7B7AD0D1D9859B37DB70F9CA35349FBF80D3679B505B7F069535753859254B0BF2BDAAAE5E9284028FAB3700001000494441547AD44992D020D3DE679A9AD1D87C01CD2D97A0BF8AF6E295EB32BB70C3BC75EDCDB60E';
wwv_flow_imp.g_varchar2_table(125) := '591FEF9672A56C996DE892E9F1DEBE41E848BB5F9626068646A09F81D759087D0C4A72D12FCFF54BA2D13B30886ED95EAF9EEFE8EE417B678F8CCEA57E52E635ADE3B51BB828F5BC201DF5B9968B661D4E3736A3411EA74E9F45A58CD4ABE45151538BB2';
wwv_flow_imp.g_varchar2_table(126) := 'CA2AE8CFBA54D228F5BDD072197A81656B6B3BBA3ABBD1D7DB87C1C121F32E8DE3E3E3D0E466469659C2757EB8646A3F56CE81ACCC3433412CC8DB8112993DCAD9B841CE8F14783CEE705585C789B080530F1FAEB73FA7FA326E0B09B8DDB79608B66FDD';
wwv_flow_imp.g_varchar2_table(127) := '8243A525E6C583BBF37494B70A29921078DC6EE8855E16AAB2748AD3B25C308ABEFE41B4CB34F9B5EB372551B82EB30957D07CE1D2AD0EB8E91C1ACE36423BE01A995DD04E587F1FC2C9EA1AF3930C7A3BE4A3272B70ACAC1C47CA4EE2D16327E45106FD';
wwv_flow_imp.g_varchar2_table(128) := '8D76B71E2770449E3B22AF1F95B5F5E3E59528ABA8927D6B649DBD0695D57566C75E734A6629A4936F9004451390A6E616B30E2D920C5C9604E4DA8D36E8A85F2F9C1C1B9B58F447EC82DD0EDAB66EE9D4939393B16EED1AECC9CFC3B30E1F406971A199';
wwv_flow_imp.g_varchar2_table(129) := '20662FC9825E4F12ECE3B23C0A5855800980555B86F50AB9807E946BE5F2A5C8DFB105074B0A71B8B4587EDE8635772D474A72A274066EC080B5BF6466C15C0BBFEDBBAEAFCFC8D4F9938F6973E9605A46D8FAD0EB0F7C533EE8436726F4397DCCC8EB33';
wwv_flow_imp.g_varchar2_table(130) := '4FDB6FC6FC74C39D8E613E67651D693B9DBED73B48AE5FBB0A85F93B71EF81BDD2CE45D8B96D13962F5D226DECB17204AC5B58049C7B102600CE6D7B46FE1401B78CFE139312B1EAAE95D825CB043A43705866098A77EFC4969C7558BE241389F1B1D051';
wwv_flow_imp.g_varchar2_table(131) := 'E45376E38F161270B90D2427C663E5B22C59C7DF807D85F9B8473A7CBD83E48E6D5BB07CD952C4C5C79B7796B450B559150A444C800940C4E879602B0BE84D5C121212B06CE9526C9635E182DD79282D29C6A17D25D82323C99C0D6BE4B525484D4E428C';
wwv_flow_imp.g_varchar2_table(132) := 'D76BE550A2B26E71B15EE8751C3A83B3256783B4C90E99C529C65E99CECFCFCB43CEC6F5589295251D7E9C246D46541A30A8E00838B91426004E6E7DC6EE9F800CFBDD3243102F3300A9A9C9D04E67DBE64D289244A0207F0776EDD88A6D9B3762DDEA95';
wwv_flow_imp.g_varchar2_table(133) := '589A9D8994942424C4C7419718CC0BC9B4FFD107F8E5978058E9057A5EAFDB344C4C88373BFB654BB3A053F93BB66D46BECCD2144A5256B06B0736E7AC973659066D1BBD3DB4DBCDB735F08B027E08F07F8A1F48DC84027712305C2E24272541A7967336';
wwv_flow_imp.g_varchar2_table(134) := 'ACC3CEEDDBA0BFA7E0EEFD7B71EFA1FDD85F528482FC3CE46EDD82756B64C640A6A01365FB98D8187824A170C9FE2E03324285A3BE246433668D5D0D34498A8D8B455A5A1A56AC588E9C0DEBB123771B0A77EFC661B53CBC1FBA24535C900F9DCA5FBF76';
wwv_flow_imp.g_varchar2_table(135) := '35F482BD0499CE370C2DCD517C0C36A802CE2E8C0980B3DB9FD18748C090DE2D49D6A3972DC9C4C6B5ABCC8BCE8A64B6E09EFD45B8F7E03E1C3E5082D2E202EC9151AC26081BD6AFC35D2B57206B491652D3529194948C7819F9C6C6C6C21B230983C703';
wwv_flow_imp.g_varchar2_table(136) := 'BD825D938E105579D1C56ADDDC524F4F8CD7AC739CCC82C4272620393909DAB92F5DBA046B56AFC2A64D1BCD6469CFEE5DD82F06DAC9DF77A814074AC4232F17DB366DC0DA552BB02433CDFC3D0F8BAE180BA00005EE28C004E08E2C7C9202C117300C03';
wwv_flow_imp.g_varchar2_table(137) := '2E971B5EAF17890909C8484FC3F2A5D9D8200942EEE60DE627104A2421D85FBC0787F615422F42BCFBC05EDC5D5A62768EA58505D8BB67978C8C77226FBB2C3B4847BA71DD1AACBA6BB9793D42B6241B4B32D39199912A65A7203D2D1969A9D2F9262722';
wwv_flow_imp.g_varchar2_table(138) := '2E2E06315E0F3C5E375C6E175C32FB6018065CFA909FDD6E173C1EB7B94D62421CD25212CD47869491999E6296A9652F95632C978E5C6F90B371FD1AE9AC3742EB52B47B274A0BA5432FCAC701A9BFDE32576742B4EE07F71699C94EA12C99ECCCDD8CCD';
wwv_flow_imp.g_varchar2_table(139) := '325BB276D54A897D09D2D3D3C4221E6EB7D44BEA611806F84581700938FD382EA703307E0A5841C0300CE9940DE9085DF03CA5338E95D1747C7C2C525252A4B34CC592AC4CAC90A584B5ABEF42CEC675B2BCB0C9BCB95171C12EEC2DDC8D7DD2F9EAD2C3';
wwv_flow_imp.g_varchar2_table(140) := '81BDC5923414A3784F018A8BF6E0E0BEBD387CA01477EF2FC53DFAFD60290E1DD8673EEE96EF77EB73F2D06DF4B72C161716626F7111B41CFDB796A96597C8318AE458F93B7291BB65935907AD8B2E83646666222D2D0D2932E28F93297D4D38BC925468';
wwv_flow_imp.g_varchar2_table(141) := '62A131B95D2E33E19050C12F0A5020F2024C0022DF06AC0105422260B80C730A3D2E3606F13203A08F04492674849F941087D4A404A4C843972AF4397D2D5EB6D3EDF52A7BEDC0CDC5FA90D48E855220D2023CBE8B0414A000052840010A384F800980F3';
wwv_flow_imp.g_varchar2_table(142) := 'DA9C115380021470BC00010026003C0B2840010A5080020E146002E0C04667C814A000059C2DC0E8558009802AF041010A508002147098001300873538C3A5000528E07401C67F4B8009C02D07FE4D010A50800214709400130047353783A5000528E074';
wwv_flow_imp.g_varchar2_table(143) := '01C6FFB8001380C725F89D0214A0000528E0200126000E6A6C864A010A50C0E9028CFF490126004F5AF0270A50800214A0806304980038A6A9192805284001A70B30FEA70A300178AA067FA600052840010A3844800980431A9A615280021470BA00E37F';
wwv_flow_imp.g_varchar2_table(144) := 'BA001380A77BF05F14A000052840014708300170443333480A5080024E1760FCB70B3001B85D84FFA600052840010A3840800980031A99215280021470BA00E37FA6001380679AF0190A50800214A040D40B300188FA26668014A000059C2EC0F8EF24C0';
wwv_flow_imp.g_varchar2_table(145) := '04E04E2A7C8E0214A000052810E5024C00A2BC81191E05284001A70B30FE3B0B3001B8B30B9FA500052840010A44B5001380A86E5E0647010A50C0E9028C7F36012600B3C9F0790A50800214A040140B300188E2C6656814A000059C2EC0F86717600230';
wwv_flow_imp.g_varchar2_table(146) := 'BB0D5FA100052840010A44AD001380A86D5A0646010A50C0E9028C7F2E01260073E9F0350A50800214A040940A300188D2868D86B07CD3D3989A9A8A865018830305F4FC9D9E9E7160E4D6099935995B8009C0DC3E7C358202539353181A1E89600D7868';
wwv_flow_imp.g_varchar2_table(147) := '0A2C5C6062621CD3D3BE8517C03D291062012600210666F10B1798989840FFC0E0C20BE09E1488A0405FFF007C3E2600916B021E793E012600F309F1F58809E8F4E995EBD76514C569D48835020FBC20019DFE6FB97415E0A9BB203FEE141E012600E171';
wwv_flow_imp.g_varchar2_table(148) := 'E651162830303084CBD76E2C706FEE4681C8085CBE7A9DB35791A17FE2A8FC617E012600F31B718B080B34355F804EA746B81A3C3C05FC12B8D1DA81A6E616BFB6E5461488A400138048EAF3D87E094C4E4EA2A2A61EC323A37E6DCF8D28102981EE9E3E';
wwv_flow_imp.g_varchar2_table(149) := '349C6DE4A75722D5004F1C973FF823C004C01F256E137181D1D1511C3D51818ECEAE88D78515A0C09D045ADB3B70A2AA1AE3E313777A99CF51C072024C002CD724ACD06C02FAC65A595B2FD3AB17303D3D3DDB667C9E02611598F6F9D078AE5966A94EC1';
wwv_flow_imp.g_varchar2_table(150) := '37C5F332ACF8B31C8C4FFB27C004C03F276E651181A9291FCE5FBC84F2AA3AF4F4F55BA456AC8653057A7A7B51595B87E6962BBCE2DFA927818DE3660260E3C6736AD575F0DFD1D58D9395D5A83F7D168383434EA560DC1112181C1C444D5D3D4E56D5A2';
wwv_flow_imp.g_varchar2_table(151) := 'ADA32742B5E061EF2CC067FD156002E0AF14B7B39CC0E4A40F97AEDE4059650D9ACE5FC4C4E4A4E5EAC80A4597802E439D6E6CC6B1F26A5CBBD90E3D07A32B4246E3240126004E6AED288D756C6C1CE7CEB7E0770F1DC1A9D34D181B1F8FD2481956A404';
wwv_flow_imp.g_varchar2_table(152) := '0687865055D780DF3F7C142D97AE606282C966A4DA62BEE3F275FF059800F86FC52D2D2EE0F34DE3F2D56BF8E3913254D4D6A3ADBD0B7ACD80C5ABCDEA5954606A6A0A57AFDFC47119ED3F7ABC1C376EB641EFF067D1EAB25A140858800940C064DC219C';
wwv_flow_imp.g_varchar2_table(153) := '023131DE800FA7BF44A8B5B55D466C7538512953B5F226AEB3040117C41D1C293032328A8B97AFA2ACA25A6694CEA2ABBB079A5C0682611840627C6C20BB70DBA008B0904004980004A2C56DC32AE0F57AB169E33AAC5DB5026E77E0A7AACF37839EDE7E';
wwv_flow_imp.g_varchar2_table(154) := 'D4369C91515C05EAE4FBCDB64E59B79DC2CC0C6FD21ED6C6B4F0C1A6A767CCCFEEB7B6B5A3F6548379AE349C3D87DEBE01E86B8156DDEB71CB39BB123B72B7C2B580F336D0E3717B0A2C5420F077D5851E89FB512040815819FD2FC9C840EED6CD28CCDF';
wwv_flow_imp.g_varchar2_table(155) := '89F8F8B8004BB8B5B9F6F543C363B872ED26AA6A4FE191B272D49D6EC40D992518191D6332708BC9517FCF48A73F323C2AE7C40D5454D7E1A1A327CC65A3AB37DA3032BAF01BF9A42427A260D70EE46ED984F4D414495C3D8E728D74B03C7E60024C0002';
wwv_flow_imp.g_varchar2_table(156) := 'F3E2D6611470CB484A3B7D8FC783A5D94B70CFFE126CC9D900AF77E16FAA3AF21F191EC1D56B376489A01E8FC8DA6E59651D5A2E5FC3F0C85818A3E3A122213030388473172EE3A84CEF3F74FCA4CC0A9D457B67172626A4D35FC4A4902E556DDBBC1107';
wwv_flow_imp.g_varchar2_table(157) := 'F71699E7AA5BCE59C83A80CB256B01910894C7A4801F024C00FC40E2269113308C274F518F2C096CCE598FFB0E1FC09A552B17950840BFE40D7F52DEF8BBBABA70FA6C131E3A72CCBC80B0F6D4695CB97ADDFC05449A30E8A67CD84F60DA378DEE9E5EF3';
wwv_flow_imp.g_varchar2_table(158) := 'C6519532F3F3DB871EC5A3C74FA0A9F93C7AE579DFD4D4A2838A8989C16659A67ACE3D8790B3611DCC8EFFB1529F7AEE3EF614BF85548085072AF0E4BB6BA07B727B0A8441C0309E3982D21980BCEDDBB0BFA4101BD6AD415C5C6C506AA2EBBD4343C3B8';
wwv_flow_imp.g_varchar2_table(159) := '7AA3150D8DE75051730AC74E56A2B6FE0C2E4942D0DDDB67CE123029080A77500B999E9E96B6194167578F79019FB6DD919315E62C4FE3B916DC6CEDC0D8D884ACE907E7B03A3395231DFFBEA2026CD9B411771AE91BC633CFDDE01C9DA5502038024C00';
wwv_flow_imp.g_varchar2_table(160) := '82E3C852C22CA0EFAD29C949D8BE7513F615EF91446035741A569F0F46557C327A1C1D1D332F22D48F82D59F6E4445652D2A6B6A515DD720D3C897D0DAD189A191518C8D4F6272CAC78F8805037E8E32F45A0E6D97C9C929319F40FFC09099ACE98D792A';
wwv_flow_imp.g_varchar2_table(161) := '25592B97F629AFAE855EC0D7DAD681FEFE4168A71FAC844DCFAD84F838F3C2D45239E7B649C79F9A9234478DF952380578ACC0059800046EC63D2C26909C982089C066736960D7CEEDC8CCCA806711D709CC16DE844C196BA7A3170F36355FB875F1D891';
wwv_flow_imp.g_varchar2_table(162) := 'E3B26C70CCBC25ECE9B3CD68B97C156D1D5D92188C980981763EDA7141961B662B97CF3F5D40BD6E3D66CCABF3FB0606714346F0E75B2EA1EEF4591C2DAFC21F1E3D664EE7D7D69F366FCCA3E683C3622E89DBD34B5BFCBF3CB2F4B4247B09F2F376E09E';
wwv_flow_imp.g_varchar2_table(163) := '43A5D82A1D7F6242FCE20B66091488B00013800837000F1F3C018FC78DD52B97A3B470370E141762E386F5489659021DB905EF284F29493A75BD9A5CEF3BD0236BCA7A13A2334DCDE6B4F391B24A490C4EE2C8896A549D3A8DA68B9765B4DA8EAE9E3E0C';
wwv_flow_imp.g_varchar2_table(164) := 'CA3283DE97604A660D74EA7A46A6AF3551784AC951FBA3C6A90F8DDBE7F361726212A36363329A1F445B67372E5EB98E33E72EA0BCA61E0F1FAFC4C3E2A837E2A9AE3B854649BAAECBF2CCA024043EB1D324215489959E334972EE6C96CE5E2FECDBB767';
wwv_flow_imp.g_varchar2_table(165) := '1756AD5806B78B6F99D63C3959AB8508F06C5E881AF7B1B48061184891A9D9DCCD1B70B8B404A5C54558B766159212E2202F85B4EE33D333D0CE697262F6E4B940000010004944415402A323C3E8EBEBC5CD9BAD683E771EA7EAEB71A2A20A478E97E3E1';
wwv_flow_imp.g_varchar2_table(166) := '6327F0D0D1323C72AC1CC72A6BCC24A1A1B119CD92285CBBD986F6CE1E734D5B3B49ED30435AE91014AE75D6A9FA7EE9ACDB3ABA71F9DA0D349DBF2423F826F3DA8AA327ABF0F0D113F8A318E8F7A327CA51595D83D3671BD172F112DADBDB3138D08FF1';
wwv_flow_imp.g_varchar2_table(167) := 'D1114C4D4EC2ECEC4350CFDB8B4C4E8CC7C6F56B7048CE9BBBE5B145D6F9939312C02F0A44A3001380686C55C6F48480CB65203323153B73B7A0746F110AF3F3CC64202B3363C1F71578A2F0007E90C902486E8069F96B4A46BE133AF21D1D93D98021F4';
wwv_flow_imp.g_varchar2_table(168) := '74F74A92D0864B97AF4097161ACE34A256928532F316B4328B50568E63272A714212055DEBAE39D580530D67502FDB9D6E3C87B3E79ACDFDCE9DBF88F32D97715196217436E28A74BAD764C47CA3B50D6D1D9D68978E582F92EB965988DEBE7EF4F60F98';
wwv_flow_imp.g_varchar2_table(169) := 'D738E8C58D3A33D1D9DD23DB74E1A6AC9F5F972444AF7DD08EFBD2956BB2B471C5BC9AFEDC858BE6B1CECA4C47C3D973661D6AEBCFA0BAB61E5AB71315D532EB518E478F9D8476EABA265FD7D0606ED77CE102AE5EBF8EB6F64E498CFA25C11935A7F835';
wwv_flow_imp.g_varchar2_table(170) := '51F0F966C40661EBE8B5E93419D48BF99664659857F0EF2DCC47694991F919FED494E43B5ED8077E595280955A9800138085B9712F1B0AC4C5C662F9B26C3319289629DD3DF93BA137195AB66C29F4E22E8FC715F21982B9D87494AB3308DA218E8F4F42';
wwv_flow_imp.g_varchar2_table(171) := '6F5234383482BEFE416827DD2153E4DA395FBBD12623EA9BB824D3E52D97AE4AA77FC5BC28B1E97C8B2403E7CD8BE0F49722D5359C458D2C3F54D536A0BCBA4EA6D56B70A2AA06659555D0DBDC9EA8A8917F57C3FC2E33132724C13859AD173A9E322F74';
wwv_flow_imp.g_varchar2_table(172) := 'D48EFD9494517FA64946E6CD38DB74413AFF16F358E72F5E31130DAD83260AD75BDBCDC4A1A3AB07BDBD03E81F1C92E46604A3A3E3D2C9CB085E121F8D2F5453F673B93EFE9ACB0578649948D7EFB397662377DB16E83950B2271FFA19FEEC2559888D8D';
wwv_flow_imp.g_varchar2_table(173) := '797C737EA740D40BB8A23E420648813B0878DC6E64A4A562E3BAD528DEBD13F71E3E80FD7B4B2421D88265D239E8C850260FEEB0A74D9F922988996919614B473C2DA36DBDFE6052A6D6A7267DD065069D99D0E423921D74B0657584EF92464C4888C75D';
wwv_flow_imp.g_varchar2_table(174) := '2B9763476E2E0EEFDF276DBD1F7B0BF2B0419685F41C70B9F836186CFBF096C7A32D548067FE42E5B85F54096867919A9C880D6B57A1481282BBF797E0EE037BB167D70E6C90242133231D31323A646761D166370097DB85B8F838646765CA94FE1A144A';
wwv_flow_imp.g_varchar2_table(175) := 'DBDDBD7F2FEEDE5F8CDD3B73A1BF53223121CEA201B05A1408BF001380F09BF3881617300C035EAF1749494958B96299F91143BDE1CBE1D262EC9375E21DDB72B07AE532A4A7262326C663F168A2B77AF171B1E6F51D6B57AFC4AEDC2DD85FBC473AFB12';
wwv_flow_imp.g_varchar2_table(176) := '149B53FA9BB07CF93269C34499F6F7CAD28E11BD100E8F8CE12F5C8009C0C2EDB8A783045C32951C1F1787CCCC0CAC5FBBD6FC4CF8BEE2421C946583BD4505D82523CC9C0DEBB052A69A75B62051A69DBD5EB783844213AA21EE7A15BE5EA8B772C5726C';
wwv_flow_imp.g_varchar2_table(177) := '5CBFD6B4DEBFAF58966C8AB1B7700FF4AE906B56AF42BA2CE9C448E2A66D159ADAB0540A4497001380E86A4F46134601F382B2C4789972CEC09ABB5698179215ECDC8692825D28D8B513BB76EC9075E72DD2696962B0025932359D92928C84C404C4CAE8';
wwv_flow_imp.g_varchar2_table(178) := '55EF1BEF72B96E8D4E8D30563CC28792091668C7AE53F6DE182FE264DA3E312911A9A9A9C8CE5E82D5ABEE82DE5E376F472E8A77E7A3206FA73C76C8631B72B7E498D699692948888F85DBED8A70343C7C640578F4C508F07FCF62F4B82F056E13300C17';
wwv_flow_imp.g_varchar2_table(179) := '3C5E8F8C4653B062D912AC5FB34A3AAD8DD893978BD2A2DDD0FB12E88D658A0A76A3207F27B66DDD82B56BD760F9B265C8C8C840527212626363A11DA3C7E3363B38978C82E50FF46118C0E30F58E4EBF1FAE877ADA3595FB701B7D45F2D349638E9E435';
wwv_flow_imp.g_varchar2_table(180) := 'F9C95A9225B3242BB161FD7A595AD9263329793265BF1B8764447FB8B4087BF7EC42FE8EADE62FD859BB6A059666674A62902C263112B70BFCA200058227C0FF51C1B36449149857403BC9D8182F325293B07C492636AC59899D5B735094BF43D6B077E3';
wwv_flow_imp.g_varchar2_table(181) := '9EFDC578F6DDFBF19CC3FB719F7CBFF7D07E3CEB60290EEFDF8B037B8BB157D6B9F7E4E761FBB66DD89CB3116B56AF46F6D26548CFCC426A7A3A52D2D2909C92228944327454ADB30D090909D0476C6C0C62BC9E391FBA8D6EABFBE9FE9A9024CBAC8596';
wwv_flow_imp.g_varchar2_table(182) := 'A965A7A56720232B0BCB962DC79A35ABA177CAD3BA689DF6E992486909EE3EB04FEABC1FF7690C527F339643A5385C5A8CD242991D915992DC4DEBB16EF5723148475A7222BC922C805F140850809B2F4EC0B5B8DDB9370528102C01C330CC51AECBE592';
wwv_flow_imp.g_varchar2_table(183) := 'D1B376D4318893A502FD189BDED2382D2D054B32D26566215B3ACF15D8B4712DF482C4C25DDBB0B76027F476B5A585F9924814E040C91E1C2C29940E77B72C49E4998FD2A202E86F509CEBA1DB9414E44979BBCC7D0F48197A71DDFEE202F977BE8CD0F3';
wwv_flow_imp.g_varchar2_table(184) := '50B25BA7E4B79989CBA60D6B659663A559A7AC8C34E80D7492648943EFAB101B230987243B4F5BEA80112C2E9643010A2C52C0B5C8FDB93B0528100101C3306449C080DBE582C7ED3647D0CF18DD4BE7FB78F2A00944208F245993D77B213CA34C9941D0';
wwv_flow_imp.g_varchar2_table(185) := 'D1BAC7ED824B8EED927A805F148888000FBA580126008B15E4FE14A000052840011B0A3001B061A3B1CA14A000059C2EC0F8172FC00460F1862C810214A0000528603B012600B66B3256980214A080D305187F300498000443916550800214A000056C26';
wwv_flow_imp.g_varchar2_table(186) := 'C004C0660DC6EA5280021470BA00E30F8E001380E038B2140A50800214A080AD049800D8AAB958590A5080024E1760FCC1126002102C499643010A50800214B0910013001B3516AB4A010A50C0E9028C3F78024C008267C9922840010A508002B6116002';
wwv_flow_imp.g_varchar2_table(187) := '609BA662452940010A385D80F1075380094030355916052840010A50C026024C006CD250AC2605284001A70B30FEE00A300108AE274BA300052840010AD8428009802D9A8995A4000528E07401C61F6C012600C116657914A000052840011B083001B041';
wwv_flow_imp.g_varchar2_table(188) := '23B18A14A000059C2EC0F8832FC00420F8A62C910214A00005286079012600966F2256900214A080D305187F280498008442956552800214A000052C2EC004C0E20DC4EA5180021470BA00E30F8D001380D0B8B2540A50800214A080A505980058BA7958';
wwv_flow_imp.g_varchar2_table(189) := '390A5080024E1760FCA1126002102A59964B010A50800214B0B00013000B370EAB46010A50C0E9028C3F74024C004267CB922940010A5080029615600260D9A661C52840010A385D80F18752800940287559360528E06881194747CFE0AD2EC004C0EA2D';
wwv_flow_imp.g_varchar2_table(190) := '14D5F533E68C6E667A063E9F6FCE6DF822052C2B20A7F7CCBC19806C64D900225F31D620B4024C0042EBCBD2E710305C06F431DB26939393181E199DED653E4F014B0B4C8C4DC03735356B1D0D976BCEF37FD61DF902058224E00A52392C8602010B1886';
wwv_flow_imp.g_varchar2_table(191) := '0B2E977BD6FDC62626D03FD03FEBEB7C81025616E8EEEDC5F4F4EC33586EB70786C1B7E0D9DB90AF845A80675FA88559FEAC028661C0E38D99F5F5195902B8D9D631EBEB7C81025615D0A9FF1BAD6DC01C4B006EAF260086554360BD1C20C004C0018D6C';
wwv_flow_imp.g_varchar2_table(192) := 'D5100DC380372676CEEA7575F7421F736EC417296031819B6D6D68EFEC9EB3565E6F2C0C8309C06C487C3EF4024C00426FCC23CC211013AB6F82B36F302343A99AFAD3181A1E997D23BE42010B09F4F50FE2ECB9E6396BA4FDBE9EFB736EC41729106201';
wwv_flow_imp.g_varchar2_table(193) := '2600210666F1730BB83D5E7863E3E7DC6874740C27AB6A3138343CE7767C91029116E81B1844CDA97A8C8C8CCF599598B878E8B93FE7468E7E91C187438009403894798C3905E21313E79D0A1D9619801315D5E8EBE345817362F2C58809E852558599A8';
wwv_flow_imp.g_varchar2_table(194) := 'CE3D5B65B80CC4272445AC9E3C30051E176002F0B804BF474C20466600BCB214305F0546C7C671EC64252E5DB93ADFA67C9D026113D065AA968B9770A2B20A7A8ECE77E098D83899F58A9B6F3347BFCEE0C323C004203CCE3CCA1C02866120252D132EB7';
wwv_flow_imp.g_varchar2_table(195) := '7B8EAD6EBDE49B9EC1E9C673A8ACA9436F6FEFAD27F937052224D0D5D58DF2AA1A9C397701D3D3F357C2ED7123392D63DE19AFF94BE2161458BC001380C51BB2842008B8DC6EA4652E81CB35FF29A96FB437DB3A515E7D0A8DF2C63B2E330341A8028BA0';
wwv_flow_imp.g_varchar2_table(196) := '80DF0223A3A36838DB84EA530D68EFECC1CC1C1FF77BBC5097DB25E778B69CE3F327BA8FEFE3CCEF8C3A5C02F3BFDB86AB263C8EE305F49E00A9194B6474E41FC5F8C4249A5B2EE1E8C90A34359FC7D8D8987F3B722B0A2C5060686818679BCEE1D8890A';
wwv_flow_imp.g_varchar2_table(197) := '5CBC7C0D63E3937E9564C8BABF9EDBBCF0CF2F2E6E14260126006182E661FC13D06B01D2B296C2E5C74CC0E3250E8F8CE1DC85CB78B4AC02E72521181BD744C08F21D9E305F03B05E610989129A7C1A1219C3D775E92CD4A9CBF7855D6FA27E6D8E3E92F';
wwv_flow_imp.g_varchar2_table(198) := 'B9DC6EA4CB393DDF3D2F9EBE9773FFC5C8C327C004207CD63C929F02FA4699AACB01EEC04ECF31590A382B4B020F1D3981BA86460C0C0CC9D42C13013FD9B9D96D027A715F774FAF4CF39FC6A3C7CB25B9BC8C099975BA6DB339FFA96BFE6959D9D0D9AD';
wwv_flow_imp.g_varchar2_table(199) := '3937E48B1488804060EFB011A8200FE94C014D02D2972C833726266080C9C9295CB97603474E94433F3A78F3662B2627FC1FB1057C40EE10550213E3E3B872F51A8E969D445979156EB4B6C3E7F3E30ABFDB14F46AFFF4AC65F078BCB7BDC27FCE2EC057';
wwv_flow_imp.g_varchar2_table(200) := 'C229C004209CDA3C564002FACB527426203E2909FA9BD302DA5936D637EDCEEE5ED49E6EC489CA6A9C3EDB84CEAE1E8C3319101DFE79AA807E7CAFBDA30B671A9B5056598386C666F4F60F617A0113482EB71B89C9A948CDC882CBCD0BFE9EEACC9FAD25';
wwv_flow_imp.g_varchar2_table(201) := 'C004C05AEDC1DADC26E072B9919C9A615E3DADD707DCF6B25FFF9C9AF2996FE62D97AFA1BCBA166515D568387B0E9DDD3D9890D9029DEAF5AB206E143502DAE63A9DAF9F26A96B388BE3272B5021E7C6854BD7D02F4B479A3C2E24D898B83873BD3F3125';
wwv_flow_imp.g_varchar2_table(202) := '7541492B1CFEC5F0C32BC00420BCDE3CDA0205BC3131E61B6B4A7A263C5EEF024B813995ABD7065CBC7CD54C04FEF8E83154D5D6CB94EF750C0F0D63DAE75B70D9DCD1DA02535393D2B90FA0E5D215F3D6D20F1D2D43656D1D74B9482F245DC868DF8CD8';
wwv_flow_imp.g_varchar2_table(203) := '80B954959A996526AA6E8FC77C9A7F51C0EA022EAB5790F5A3C05305E21212919AB90449A9698B9F5E95E9DD5BA3C00ED4C932C1A3272A5056598B73E75BD0A5B303B254303D1DF8DAEF53EBCB9F2323A0237C6D3BBD47446B5B3BF4E651474F56E3E889';
wwv_flow_imp.g_varchar2_table(204) := '2AF9B9191D9DDD181F9F98F3D7F5FA5373EDEC9353D3E59CCC466C5C823FBB709B5905F842B8059800845B9CC75BB4805E1B90909482CCA52B9090942C53AD32045B74A9805E3CA8577D9F3B7F1127AA6AF0FB478E49875181530D67CC51A27E065C3B96';
wwv_flow_imp.g_varchar2_table(205) := '201C8A458440403BFCDEBE3E5C94D99DDAFA33785846F87F38721C55750D32EABF8A81814199010ACE0C8FCBE53293D0CCECE5884F4C86FE3B0421B1480A84548009404879597828050CC39037E17449045622392DFDD6D240107201991890A58019E8B5';
wwv_flow_imp.g_varchar2_table(206) := '03FAAB5D2F5FBB8986B34DE68584476596A05A3A149D25B87EB315DD3D7DD0BBC2313108654B3FBDEC1999ABD764ACA3AB0757AE5E47C39926E8ED788F9495A3A2E614CE9E536C5E9700001000494441546BC6B51BAD181A1E35DB705AB67F7A090BFB97';
wwv_flow_imp.g_varchar2_table(207) := '9C6EF0C478919C9E21E79C269F29F0FBAE55E0D77C027C3DFC024C00C26FCE23065940475F3A0A4BCBCC362F18F4C6C404F908B7AE1D18191D476FDF00AEDF6C4393CC1254D79D86FE4E02FD5E77BA09E72F5E416B7B27060687CD1BC5E805867A311993';
wwv_flow_imp.g_varchar2_table(208) := '83C09B43CDA67C3E4C4C4E4A82352EEE83B826EE8DE25E557FDA1CD5ABBD2EDD5CBC720D6D1DDDB2BE3F84B1B10919E56B0A17F831E7DA232636563AFE4C59E35F0AFD4D7E0BF954CA5CE5F3350A444280094024D479CC9008B8DC6EC4272641EF1F90B9';
wwv_flow_imp.g_varchar2_table(209) := '7439125352A16BB42139D863858E4F4CA2A7B70F57AF5DC7D9A6665454D79953CFBF7FF851E845666595D53875BAD19C966E93E4A05FA6A1F5BA031D956A2767DE433EF8FDD563B5B3EE378DFB56FC33D2614F634C922B9D4DD1CFDCEBDD1C750AFF4445';
wwv_flow_imp.g_varchar2_table(210) := '0D1E3A52264B314770A4EC246A64E6A5F97C0B6E4A22A08E3A4313AA0875B4EF8D899119A634642E5B81B4ACA5888B4FE4543F42F5C5722321C0042012EA3C66C805DC1EAFF959ECF4254B9196952D3FA7403F46E872BB010321FFD20E6E7C6C1C3DB244';
wwv_flow_imp.g_varchar2_table(211) := '70E5DA0D34E86F30ACABC7B19355F883D9A91DC7C3C7CA5156518D0A79BE5EA6B1B5E3BB7AFD26BABBBB31D0DF8FE191618C8F8D6162621C933212F64D4DC9D2840FD316BC30717ADA271DB94FA6DC2731393181F1F131198D8F627878187DB22EDFD6DE';
wwv_flow_imp.g_varchar2_table(212) := '814B57AE42EFD458D77056A6EAEB70C4B43881DF3D720C7F3C7E4296586ACCBBEEE9363A85AF8955302ED4F3ABB1E59C70CBB911131767268E69D2E1A7CA8C925E6BA2D79CF8550637A280CD049800D8ACC158DDC0045C2E37F48E6C892969D0FBB1EB23';
wwv_flow_imp.g_varchar2_table(213) := '29390DDE18592690377D84EB4B46F9D3BE69E920A7CC0E726C6C14838383E6A70D5A5BDBA573BC26CB0A1770EACC599CAC3E8563E5D53872BC028F1C3F29A3DF0AE81D0DAB4E35401385D38DCDD0D986A6E60B68BE78092D97AFE1B224195765DD5B47D0';
wwv_flow_imp.g_varchar2_table(214) := '6D1D9D68EFEC464F6FBFAC830F4B22312AD3E863B22C312E9DB23CC627CC9B21E9ECC5ADC704C6E439BD95F2A8241C2323A3D2718F606068081D5DBD6659BAB4A14B1F9AA05C9275F7964B57CD5FC4D428753823331F679ACE4BDD1B654944929CF22AA9';
wwv_flow_imp.g_varchar2_table(215) := '73391E9104E7485985243935D0BA6BBD5BA4BE9A10B5C96C489FCC9C8C4882A077DE9B9299149F4CF9CF8439B971B95CD04E5FAFE4D799235D464A4C4E95F32396A3FD70FDDF00C043454680094064DC79D40809B83D1E2424A740DFECB396ADBC353B20';
wwv_flow_imp.g_varchar2_table(216) := '4B05BAC66BB88C08D5EAD661B5EF9BF6CD4892E0C3E4940F7A0DC1D8F8A474E063E8ED1F445B7B17AEC80CC12559F3D6EB0DCE5DB884C6731770BAB109A74E9F45ADB9365E8F6A992AAFAB6F90CEB80EC76594AD37B93976A21C47CBCACD8EF98824158F';
wwv_flow_imp.g_varchar2_table(217) := '1E3B894765D46D3EE4677DEE88BCAEDB1C3B598163272B71429290DA53F530CBAA3D856A49406A1BCE4812D288D34DE7A09D7FB3D4E1C2C52BB2C4710DD7AEB74AC2D0635E0331323A2149C6A41983C6E29B9A96998B1904E97ABC5B600BF85B3BFCD8F8';
wwv_flow_imp.g_varchar2_table(218) := '7899DA4F4746F63299DE97734046FAF17A25BFCC002CA048EE4201DB0A3001B06DD3B1E28B15703D3E3B2023BE948C25D0D19F7E9A202E21019A28B8DC2EE85AF0628F13D2FD656601B73DA62479D0C4614C47F5F2181D9B90D1BF3EC6E5FB531EB2EE3E';
wwv_flow_imp.g_varchar2_table(219) := 'AA0F59AA187DE2A1DB4DDC9A11907D6F95318919EDB96F3B8E79DC9006B788C22597330C03DA866EAF077109894849CF303FAF9F929609FDF8A8FE821EC3900DC1AFC80AF0E891127045EAC03C2E05AC24E092A9606F4C2C742498929E657ECC2B63C972';
wwv_flow_imp.g_varchar2_table(220) := '6862A033063A43A09D8995EACCBADC26207DB9DBE3868EF0751A3F2D2BDB6CC7CCEC15D2F9674A12902453FB31E015FCE017054C0126002603FFA2C033055C6E3762E364BA3825CD1C3966642F47C6D2E5F2739679A1589CCC147862D8A120025FDAD1EB';
wwv_flow_imp.g_varchar2_table(221) := 'DA7D7C62924CE7A7E1F1CE5EDB487F098F26005E49E80C836F7111689E800EC98D2327C0FF1D91B3E7916D246018065C2E373C1EAF240509D00E46670A5265B620253DD3EC84E21213E18D8D85CBED86E132601806207FC0AFC005D44D1E8661402D7549';
wwv_flow_imp.g_varchar2_table(222) := 'C6ECF09392919C962123FA2CE854BEFEAC57EAEB859E7AB5BE61E85B9A11F8F1B807051C28A0FF5B1C183643A6407004B463D25902ED84B443D24F19E8C585994B57223D7B1952339698C9818E54CDE440961AC0FEE919F88661C0E5769B57E4EB924BF2';
wwv_flow_imp.g_varchar2_table(223) := '63BF013243665C6E79AE80798D466ABA2CD3244147F72EB71BFCB2BB00EB1F4901260091D4E7B1A356C0251DFDADD98278687290241D972603FAE9838C25CBCC296BFDA5463A7BA0171EEA4D8BE265741B979088D8F804B323F4C6C4C0E3F542930C97DB';
wwv_flow_imp.g_varchar2_table(224) := '3EFF55B5AE5A67ADBB263D3A728F93E5124D82B473D75835E6948C4CD341EFD5A02EFA5D6754129353CD4EFEE9A3FAA83D551818052226609F77958811F1C01458BC80611870495270AB638C31EF4DA0330771D2E1C727269B4B0AFA59744D085233B2A0';
wwv_flow_imp.g_varchar2_table(225) := 'A3DD34BD198DFC9C2C53DE9A40E8433B505D6AD00BDDB483F4C6C43C9124B83D6EB8DC6EE8456EC6634B108661C03016F9D0B2A4EE2EB75B921179783DD06B1FF4C248AD87262C5A27AD9BD6511FC952E75499FD48CFCC3663D1E5127D2E2925CD8C5563';
wwv_flow_imp.g_varchar2_table(226) := 'D63BEBDD8A21169A2C9853F8721CC330C02F670830CAC80AB8227B781E9D0214984DC0300CE970BD66B2A09DA57E744D3B505D6AD0CE352D2BDBBC9F815EF8A6BF952E237B8579D5BB4E99672DBB0B59CB83F4D0B296AD34CBCE5C2AC790E3DC9AC5586A';
wwv_flow_imp.g_varchar2_table(227) := '2E71A44A92A275D2BA691DB5AEDAB16BB223D907F845010A585380098035DB85B5A2406002922C188621FD6D681F80017E512038022C25D2024C0022DD023C3E052840010A502002024C002280CE435280021470BA00E38FBC001380C8B7016B40010A50';
wwv_flow_imp.g_varchar2_table(228) := '80021408BB001380B093F38014A000059C2EC0F8AD20C004C00AADC03A50800214A00005C22CC00420CCE03C1C05284001A70B307E6B083001B0463BB01614A00005284081B00A3001082B370F46010A50C0E9028CDF2A024C00ACD212AC07052840010A';
wwv_flow_imp.g_varchar2_table(229) := '50208C024C00C288CD435180021470BA00E3B78E001300EBB4056B42010A50800214089B001380B051F34014A000059C2EC0F8AD24C004C04AADC1BA50800214A00005C224C004204CD03C0C05284001A70B307E6B093001B0567BB03614A00005284081';
wwv_flow_imp.g_varchar2_table(230) := 'B0083001080B330F42010A50C0E9028CDF6A024C00ACD622AC0F052840010A50200C024C00C280CC435080021470BA00E3B79E001300EBB5096B44010A5080021408B90013809013F30014A000059C2EC0F8AD28C004C08AADC23A51800214A00005422C';
wwv_flow_imp.g_varchar2_table(231) := 'C00420C4C02C9E0214A080D30518BF3505980058B35D582B0A50800214A04048059800849497855380021470BA00E3B7AA001300ABB60CEB45010A5080021408A100138010E2B2680A5080024E1760FCD615600260DDB661CD2840010A50800221136002';
wwv_flow_imp.g_varchar2_table(232) := '10325A164C010A50C0E9028CDFCA024C00ACDC3AAC1B052840010A502044024C004204CB622940010A385D80F15B5B800980B5DB87B5A300052840010A84448009404858592805284001A70B307EAB0B3001B07A0BB17E14A00005284081100830010801';
wwv_flow_imp.g_varchar2_table(233) := '2A8BA4000528E07401C66F7D012600D66F23D6900214A000052810740126004127658114A000059C2EC0F8ED20C004C00EADC43A52800214A00005822CC00420C8A02C8E0214A080D30518BF3D049800D8A39D584B0A50800214A0405005980004959385';
wwv_flow_imp.g_varchar2_table(234) := '5180021470BA00E3B78B001300BBB414EB49010A5080021408A20013802062B2280A5080024E1760FCF6116002609FB6624D2940010A5080024113600210344A1644010A50C0E9028CDF4E024C00ECD45AAC2B052840010A502048024C008204C9622840';
wwv_flow_imp.g_varchar2_table(235) := '010A385D80F1DB4B800980BDDA8BB5A500052840010A04458009405018590805284001A70B307EBB093001B05B8BB1BE14A00005284081200830010802228BA0000528E07401C66F3F012600F66B33D6980214A0000528B0680126008B26640114A00005';
wwv_flow_imp.g_varchar2_table(236) := '9C2EC0F8ED28C004C08EADC63A53800214A000051629C004609180DC9D0214A080D30518BF3D059800D8B3DD586B0A50800214A0C0A20498002C8A8F3B5380021470BA00E3B7AB001300BBB61CEB4D010A50800214588400138045E071570A5080024E17';
wwv_flow_imp.g_varchar2_table(237) := '60FCF615600260DFB663CD2940010A5080020B166002B0603AEE48010A50C0E9028CDFCE024C00ECDC7AAC3B052840010A506081024C001608C7DD2840010A385D80F1DB5B800980BDDB8FB5A700052840010A2C488009C082D8B81305284001A70B307E';
wwv_flow_imp.g_varchar2_table(238) := 'BB0B3001B07B0BB2FE14A000052840810508300158001A77A1000528E07401C66F7F012600F66F434640010A508002140858800940C064DC810214A080D305187F34083001888656640C14A00005284081000598000408C6CD2940010A385D80F1478700';
wwv_flow_imp.g_varchar2_table(239) := '1380E868474641010A508002140848800940405CDC980214A080D305187FB4083001889696641C14A00005284081000498000480C54D2940010A385D80F1478F001380E8694B4642010A50800214F05B800980DF54DC900214A080D305187F3409300188';
wwv_flow_imp.g_varchar2_table(240) := 'A6D6642C14A000052840013F059800F809C5CD2840010A385D80F14797001380E86A4F4643010A50800214F04B8009805F4CDC880214A080D305187FB409300188B616653C14A000052840013F049800F881C44D2840010A385D80F1479F001380E86B53';
wwv_flow_imp.g_varchar2_table(241) := '4644010A5080021498578009C0BC44DC800214A080D305187F340A300188C656654C14A0000528408179049800CC03C4972940010A385D80F147A7001380E86C574645010A5080021498538009C09C3C7C910214A080D305187FB40A300188D696655C14';
wwv_flow_imp.g_varchar2_table(242) := 'A0000528408139049800CC81C3972840010A385D80F147AF001380E86D5B4646010A5080021498558009C0AC347C810214A080D305187F340B300188E6D6656C14A0000528408159049800CC02C3A72940010A385D80F147B7001380E86E5F4647010A50';
wwv_flow_imp.g_varchar2_table(243) := '800214B8A30013803BB2F0490A5080024E1760FCD12EC00420DA5B98F151800214A00005EE20C004E00E287C8A0214A080D305187FF40B300188FE36668414A00005284081670830017806099FA0000528E07401C6EF040126004E6865C648010A508002';
wwv_flow_imp.g_varchar2_table(244) := '14B84D8009C06D20FC2705284001A70B307E6708300170463B334A0A50800214A0C0D30498003C8D83FFA0000528E07401C6EF140126004E6969C649010A50800214788A001380A760F0470A5080024E1760FCCE116002E09CB666A414A0000528408127';
wwv_flow_imp.g_varchar2_table(245) := '0498003C41C11F2840010A385D80F13B49800980935A9BB152800214A000051E136002F01804BF5180021470BA00E3779600130067B537A3A500052840010A98024C004C06FE45010A50C0E9028CDF69024C009CD6E28C970214A000052820024C000481';
wwv_flow_imp.g_varchar2_table(246) := '7F2840010A385D80F13B4F800980F3DA9C1153800214A00005C00480270105284001C70B10C089024C009CD8EA8C990214A000051C2FC004C0F1A70001284001A70B307E670A30017066BB336A0A5080021470B8001300879F000C9F021470BA00E377AA';
wwv_flow_imp.g_varchar2_table(247) := '001300A7B63CE3A60005284001470B30017074F333780A50C0E9028CDFB9024C009CDBF68C9C0214A000051C2CC004C0C18DCFD0294001A70B307E270B30017072EB33760A5080021470AC00136523824E000000154944415400C7363D03A700059C2EC0';
wwv_flow_imp.g_varchar2_table(248) := 'F89D2DF0FF010000FFFF44B2214C0000000649444154030050FBF4E163230EAA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7555065852239111)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7556311316239112)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/appointment_statuses_status_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9178545159982675)
,p_lov_name=>'APPOINTMENT_STATUSES.STATUS_NAME'
,p_static_id=>'appointment-statuses-status-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'APPOINTMENT_STATUSES'
,p_return_column_name=>'STATUS_ID'
,p_display_column_name=>'STATUS_NAME'
,p_default_sort_column_name=>'STATUS_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:kzmN57RKEuUsSd1xrzNLFoW-xAoprn6vwchQts3wkN8'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/appointments_appointment_time
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9624822734388375)
,p_lov_name=>'APPOINTMENTS.APPOINTMENT_TIME'
,p_static_id=>'appointments-appointment-time'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'APPOINTMENTS'
,p_return_column_name=>'APPOINTMENT_ID'
,p_display_column_name=>'APPOINTMENT_TIME'
,p_default_sort_column_name=>'APPOINTMENT_TIME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:a7GKWmIkIq-k9ZXPKfcO6DzpNGhnsRJH1DXR0cCO4P4'
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7564858453239180)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(7564858453239180)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7565565128239190)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7565185673239187)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/departments_department_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8788903292558821)
,p_lov_name=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_static_id=>'departments-department-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPARTMENTS'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT_NAME'
,p_default_sort_column_name=>'DEPARTMENT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:RPc8ogA7lnaGdLsQznui4PZjD0Ro1LeRcef11Ek1ZvU'
,p_created_on=>wwv_flow_imp.dz('20260714094603Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094603Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8789116067558828)
,p_lov_name=>'DOCTOR_SPECIALTIES.SPECIALTY_NAME'
,p_static_id=>'doctor-specialties-specialty-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DOCTOR_SPECIALTIES'
,p_return_column_name=>'SPECIALTY_ID'
,p_display_column_name=>'SPECIALTY_NAME'
,p_default_sort_column_name=>'SPECIALTY_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:NY8LRuRIpTqVoe_4Alf_2alWDMv0TLNI2WfeaFfUixc'
,p_created_on=>wwv_flow_imp.dz('20260714094603Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094603Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9178237503982675)
,p_lov_name=>'DOCTORS.FULL_NAME'
,p_static_id=>'doctors-full-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DOCTORS'
,p_return_column_name=>'DOCTOR_ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:4H_cNBbjebt1UeD06ZKvN4AErT0Vjkrya69khbB3JA4'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9149231737341756)
,p_lov_name=>'MEDICINE_CATEGORIES.CATEGORY_NAME'
,p_static_id=>'medicine-categories-category-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'MEDICINE_CATEGORIES'
,p_return_column_name=>'CATEGORY_ID'
,p_display_column_name=>'CATEGORY_NAME'
,p_default_sort_column_name=>'CATEGORY_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:gQfH9qbHeBOn5Dko3UmjL05j3-a-GzpDRvUa_b1D5G8'
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9178001828982668)
,p_lov_name=>'PATIENTS.CIVIL_ID'
,p_static_id=>'patients-civil-id'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PATIENTS'
,p_return_column_name=>'PATIENT_ID'
,p_display_column_name=>'CIVIL_ID'
,p_default_sort_column_name=>'CIVIL_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:qQ8HclmYsb9xAXu9I4H6JkDWHsU21ZKGk9_Y_KaerJc'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9658448727326554)
,p_lov_name=>'ROOMS.ROOM_NO'
,p_static_id=>'rooms-room-no'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ROOMS'
,p_return_column_name=>'ROOM_ID'
,p_display_column_name=>'ROOM_NO'
,p_default_sort_column_name=>'ROOM_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:TU3uzxf7qjmR_y8rqi3XzC3GxF734WUkVleBCpvy-iU'
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(7556628328239119)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7551579715238950)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9693129641597653)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20260716115551Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9191957020002656)
,p_short_name=>'Appointments form'
,p_static_id=>'appointments-form'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9177604568982535)
,p_short_name=>'Appointments list'
,p_static_id=>'appointments-list'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20260715072315Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072315Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9605435777883437)
,p_short_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260716064356Z')
,p_updated_on=>wwv_flow_imp.dz('20260716064356Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9672429690496038)
,p_short_name=>'Current Admissions'
,p_static_id=>'current-admissions'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
,p_created_on=>wwv_flow_imp.dz('20260716113855Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7593511654559335)
,p_short_name=>'DEPARTMENT'
,p_static_id=>'department'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20260713062427Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7597830891630363)
,p_short_name=>'Department From'
,p_static_id=>'department-from'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8816438483056823)
,p_short_name=>'DOCTER'
,p_static_id=>'docter'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
,p_created_on=>wwv_flow_imp.dz('20260714110950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8795350009563589)
,p_short_name=>'DOCTORS'
,p_static_id=>'doctors-2'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7551743082238953)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8691417221483300)
,p_short_name=>'home'
,p_static_id=>'home-3'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260713102943Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102943Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9169524676887306)
,p_short_name=>'Low Stock Medicines Report'
,p_static_id=>'low-stock-medicines-report'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260715070722Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070722Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9155587253399153)
,p_short_name=>'MEDICINE form'
,p_static_id=>'medicine-form'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9148841240341616)
,p_short_name=>'MEDICINES'
,p_static_id=>'medicines'
,p_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>19
,p_created_on=>wwv_flow_imp.dz('20260715053621Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9656624377326530)
,p_short_name=>'Patient Admission Form'
,p_static_id=>'patient-admission-form'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260716111040Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111040Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9215433120682963)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260715122734Z')
,p_updated_on=>wwv_flow_imp.dz('20260715122734Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9702316040656338)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20260716120538Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9623701546388362)
,p_short_name=>'PATIENT_VISITS'
,p_static_id=>'patient-visits'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8764872694801477)
,p_short_name=>'PATIENTS'
,p_static_id=>'patients'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260714065520Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065520Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8772572223854270)
,p_short_name=>'Patients'
,p_static_id=>'patients-2'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260714070407Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9568564869526651)
,p_short_name=>'Prescription'
,p_static_id=>'prescription'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(7552425701238973)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051440Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
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
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7550879807238931)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
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
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7551168175238943)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260713051439Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260713051440Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713051440Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Hospital Management System'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7564242328239167)
,p_plug_name=>'Hospital Management System'
,p_static_id=>'hospital-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'PATIENTS'
,p_alias=>'PATIENTS'
,p_step_title=>'PATIENTS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714065519Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714070759Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8764316294801472)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714065520Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065520Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8765010144801606)
,p_plug_name=>'PATIENTS'
,p_static_id=>'patients'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070759Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8765199305801606)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8765199305801606
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070759Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8769595374801657)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8769188976801655)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8766712190801646)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8770736530801661)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8767977622801651)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8768775540801654)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8769914388801658)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8770383390801660)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8767114626801648)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8767575987801649)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8768349220801652)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8766312533801635)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260714065521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8784372217877473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260714070759Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070759Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Low Stock Medicines Report'
,p_alias=>'LOW-STOCK-MEDICINES-REPORT'
,p_step_title=>'Low Stock Medicines Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715070722Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715070839Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9168962320887304)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715070722Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070722Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9169797062887434)
,p_plug_name=>'Low Stock Medicines Report'
,p_static_id=>'low-stock-medicines-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    m.MEDICINE_ID,',
'    m.MEDICINE_NAME,',
'    c.CATEGORY_NAME,',
'    m.UNIT,',
'    m.CURRENT_STOCK,',
'    m.REORDER_LEVEL,',
'    m.STATUS',
'from MEDICINES m',
'left join MEDICINE_CATEGORIES c on c.CATEGORY_ID = m.CATEGORY_ID',
'where m.CURRENT_STOCK < m.REORDER_LEVEL'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9169841482887434)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9169841482887434
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8706862548086349)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070834Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070834Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9172687742887465)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070724Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9171023203887458)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070724Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9171426922887461)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070724Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9173036145887467)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070724Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9173467481887468)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070724Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9172201011887464)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070724Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070724Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9174632644894997)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS:CATEGORY_NAME'
,p_created_on=>wwv_flow_imp.dz('20260715070839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Patients'
,p_alias=>'PATIENTS1'
,p_step_title=>'Patients'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714070407Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714081542Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8771910033854266)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714070407Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8772745177854282)
,p_plug_name=>'Patients'
,p_static_id=>'patients'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8781428792854301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8782771740854306)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8781990858854305)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8782342861854305)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8783147874854306)
,p_branch_action=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8776233960854297)
,p_name=>'P4_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8774645135854294)
,p_name=>'P4_AGE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Age'
,p_source=>'DATE_OF_BIRTH'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081542Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8775800175854297)
,p_name=>'P4_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8773410790854292)
,p_name=>'P4_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Civil Id'
,p_source=>'CIVIL_ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714071617Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8777494600854298)
,p_name=>'P4_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8775471277854296)
,p_name=>'P4_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8776656303854297)
,p_name=>'P4_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Emergency Contact Name'
,p_source=>'EMERGENCY_CONTACT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8777046408854297)
,p_name=>'P4_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Emergency Contact No'
,p_source=>'EMERGENCY_CONTACT_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8773877640854293)
,p_name=>'P4_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8774227944854293)
,p_name=>'P4_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8775041323854296)
,p_name=>'P4_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_prompt=>'Mobile No'
,p_source=>'MOBILE_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8773092918854284)
,p_name=>'P4_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_item_source_plug_id=>wwv_flow_imp.id(8772745177854282)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8704809871086329)
,p_validation_name=>'Civil ID Must Be Unique'
,p_static_id=>'civil-id-must-be-unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM patients',
'   WHERE civil_id = :P4_CIVIL_ID',
'   AND patient_id != NVL(:P4_PATIENT_ID, -1)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This Civil ID already belongs to another patient'
,p_associated_item=>wwv_flow_imp.id(8773410790854292)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260714073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8705155020086332)
,p_name=>'Calculate Age'
,p_static_id=>'calculate-age'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_DATE_OF_BIRTH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260714081542Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081542Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8705292843086333)
,p_event_id=>wwv_flow_imp.id(8705155020086332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_AGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P4_AGE',
  'plsql_expression', 'TRUNC(MONTHS_BETWEEN(SYSDATE, TO_DATE(:P4_DATE_OF_BIRTH,''YYYY-MM-DD''))/12)',
  'suppress_change_event', 'N',
  'type', 'PLSQL_EXPRESSION')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260714081542Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081542Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8783520129854308)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8772745177854282)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patients'
,p_static_id=>'initialize-form-patients'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8783520129854308
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8783949735854311)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8772745177854282)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patients'
,p_static_id=>'process-form-patients'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8783949735854311
,p_created_on=>wwv_flow_imp.dz('20260714070408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715122733Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716052748Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9348624425037408)
,p_plug_name=>'Admission History'
,p_static_id=>'admission-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select admission_date, discharge_date, doctor_id, room_id, admission_reason, status',
'from admissions',
'where patient_id = :P6_PATIENT_ID',
'order by admission_date desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9348720826037409)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9348720826037409
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9348883013037410)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052743Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9349210624037414)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052743Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9348903503037411)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052743Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9349002806037412)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052743Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9349129140037413)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Room Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052743Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9349376054037415)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716052743Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052743Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9555300805426589)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_DATE:DISCHARGE_DATE:DOCTOR_ID:ROOM_ID:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716052748Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9186959291984638)
,p_plug_name=>'Appointment History'
,p_static_id=>'appointment-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select appointment_date, appointment_time, ',
'          doctor_id, status_id, reason_for_visit',
'   from appointments',
'   where patient_id = :P6_PATIENT_ID',
'   order by appointment_date desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716045248Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9187014834984639)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9187014834984639
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716045248Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9187113851984640)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9187269094984641)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9187360564984642)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9187594725984644)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9187492420984643)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042155Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9358189732216566)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_DATE:APPOINTMENT_TIME:DOCTOR_ID:STATUS_ID:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260716045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260716045248Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9214918610682948)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715122734Z')
,p_updated_on=>wwv_flow_imp.dz('20260715122734Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9185038324984619)
,p_plug_name=>'Patient Details'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123414Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9186496747984633)
,p_plug_name=>' Select Patient'
,p_static_id=>'select-patient'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715124045Z')
,p_updated_on=>wwv_flow_imp.dz('20260715124045Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9187625372984645)
,p_plug_name=>'Visit History'
,p_static_id=>'visit-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select visit_date, doctor_id, symptoms, diagnosis, notes, follow_up_date',
'from patient_visits',
'where patient_id = :P6_PATIENT_ID',
'order by visit_date desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052655Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9187795662984646)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9187795662984646
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052655Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9348119251037403)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042259Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9188111073984650)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042259Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9348322554037405)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042259Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9348208744037404)
,p_db_column_name=>'NOTES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042259Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9348015015037402)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042259Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9347917338037401)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716042259Z')
,p_updated_on=>wwv_flow_imp.dz('20260716042259Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9358594219216593)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:VISIT_DATE:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260716045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052655Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9186007286984629)
,p_name=>'P6_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Address'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123206Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051002Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185939706984628)
,p_name=>'P6_BLOOD_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Blood Group'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051002Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185319075984622)
,p_name=>'P6_CIVIL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Civil Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051002Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9186373475984632)
,p_name=>'P6_CREATED_AT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Created At'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123206Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051003Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185688338984625)
,p_name=>'P6_DATE_OF_BIRTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Date Of Birth'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716050858Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185849517984627)
,p_name=>'P6_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Email'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051002Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9186192796984630)
,p_name=>'P6_EMERGENCY_CONTACT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Emergency Contact Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123206Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051002Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9186287404984631)
,p_name=>'P6_EMERGENCY_CONTACT_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Emergency Contact No'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123206Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051003Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185428117984623)
,p_name=>'P6_FULL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Full Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716051002Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185546594984624)
,p_name=>'P6_GENDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Gender'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716050858Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185750138984626)
,p_name=>'P6_MOBILE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9185038324984619)
,p_prompt=>'Mobile No'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052228Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9185284734984621)
,p_name=>'P6_PATIENT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9186496747984633)
,p_prompt=>'Patient'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name || '' ('' || civil_id || '')'' d, patient_id r',
'   from patients',
'   order by full_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715123205Z')
,p_updated_on=>wwv_flow_imp.dz('20260716050109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9186642780984635)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_PATIENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260715130513Z')
,p_updated_on=>wwv_flow_imp.dz('20260715130513Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9186770513984636)
,p_event_id=>wwv_flow_imp.id(9186642780984635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_PATIENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'plsql_expression', ':P6_PATIENT',
  'suppress_change_event', 'N',
  'type', 'PLSQL_EXPRESSION')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715130513Z')
,p_updated_on=>wwv_flow_imp.dz('20260715130513Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9186836463984637)
,p_event_id=>wwv_flow_imp.id(9186642780984635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-submit-page'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_processing', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715130513Z')
,p_updated_on=>wwv_flow_imp.dz('20260715130513Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9348544521037407)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Patient Details'
,p_static_id=>'load-patient-details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P6_PATIENT_ID is not null then',
'    select civil_id, full_name, gender, date_of_birth, mobile_no, email,',
'           blood_group, address, emergency_contact_name, emergency_contact_no',
'    into   :P6_CIVIL_ID, :P6_FULL_NAME, :P6_GENDER, :P6_DATE_OF_BIRTH, :P6_MOBILE_NO, :P6_EMAIL,',
'           :P6_BLOOD_GROUP, :P6_ADDRESS, :P6_EMERGENCY_CONTACT_NAME, :P6_EMERGENCY_CONTACT_NO',
'    from   patients',
'    where  patient_id = :P6_PATIENT_ID;',
'else',
'    :P6_CIVIL_ID := null;',
'    :P6_FULL_NAME := null;',
'    :P6_GENDER := null;',
'    :P6_DATE_OF_BIRTH := null;',
'    :P6_MOBILE_NO := null;',
'    :P6_EMAIL := null;',
'    :P6_BLOOD_GROUP := null;',
'    :P6_ADDRESS := null;',
'    :P6_EMERGENCY_CONTACT_NAME := null;',
'    :P6_EMERGENCY_CONTACT_NO := null;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9348544521037407
,p_created_on=>wwv_flow_imp.dz('20260716050239Z')
,p_updated_on=>wwv_flow_imp.dz('20260716052357Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'DEPARTMENT'
,p_alias=>'DEPARTMENT'
,p_step_title=>'DEPARTMENT'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713062427Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713064050Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7592957303559328)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713062427Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7593701865559490)
,p_plug_name=>'DEPARTMENT'
,p_static_id=>'department'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260713062429Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7593845024559490)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>7593845024559490
,p_created_on=>wwv_flow_imp.dz('20260713062429Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7595010380559525)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713062429Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062429Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7595434686559535)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062429Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062429Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7595841321559537)
,p_db_column_name=>'LOCATION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062429Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062429Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7603439600656916)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_ID:DEPARTMENT_NAME:LOCATION'
,p_created_on=>wwv_flow_imp.dz('20260713064050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Department From'
,p_alias=>'DEPARTMENT-FROM'
,p_step_title=>'Department From'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7597229191630361)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7598097909630372)
,p_plug_name=>'Department From'
,p_static_id=>'department-from'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7600560751630382)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7601887177630388)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P9_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7601006678630387)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7601495219630388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P9_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7602209360630388)
,p_branch_action=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7598491771630373)
,p_name=>'P9_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_item_source_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7598869064630379)
,p_name=>'P9_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_item_source_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_prompt=>'Department Name'
,p_source=>'DEPARTMENT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7599212119630380)
,p_name=>'P9_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_item_source_plug_id=>wwv_flow_imp.id(7598097909630372)
,p_prompt=>'Location'
,p_source=>'LOCATION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7602676245630390)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7598097909630372)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department From'
,p_static_id=>'initialize-form-department-from'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7602676245630390
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7603074452630391)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7598097909630372)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Department From'
,p_static_id=>'process-form-department-from'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7603074452630391
,p_created_on=>wwv_flow_imp.dz('20260713063624Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063624Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Prescription'
,p_alias=>'PRESCRIPTION'
,p_step_title=>'Prescription'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>2528119710305719084
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716062501Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9567985821526646)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9570347221526657)
,p_name=>'Master Records'
,p_static_id=>'master-records'
,p_template=>3372714138756020509
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PRESCRIPTION_ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P10_PRESCRIPTION_ID'', p_values => "PRESCRIPTION_ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P10_PRESCRIPTION_ID,''0'') = "PRESCRIPTION_ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr("PRESCRIPTION_DATE", 1, 50)||( case when length("PRESCRIPTION_DATE") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("NOTES", 1, 50)||( case when length("NOTES") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from "PRESCRIPTIONS" x',
'where (:P10_SEARCH is null',
'        or upper(x."PRESCRIPTION_DATE") like ''%''||upper(:P10_SEARCH)||''%''',
'        or upper(x."NOTES") like ''%''||upper(:P10_SEARCH)||''%''',
'    )',
'order by "PRESCRIPTION_DATE"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2095080600153409441
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716054429Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9572095675526802)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9572876973526804)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9571654982526801)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9572400755526803)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9571258658526798)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9574406617526809)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9573286576526805)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9574060074526808)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9573680657526807)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9570811667526793)
,p_query_column_id=>1
,p_column_alias=>'PRESCRIPTION_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Prescription Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9597002544526889)
,p_plug_name=>'No Record Selected'
,p_static_id=>'no-record-selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P10_PRESCRIPTION_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9580892284526856)
,p_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_query_where=>'"PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'
,p_include_rowid_column=>true
,p_display_when_condition=>'P10_PRESCRIPTION_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>5000
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9582893182526869)
,p_query_column_id=>4
,p_column_alias=>'DOSAGE'
,p_column_display_sequence=>4
,p_column_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9583691624526871)
,p_query_column_id=>6
,p_column_alias=>'DURATION_DAYS'
,p_column_display_sequence=>6
,p_column_heading=>'Duration Days'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9583218669526870)
,p_query_column_id=>5
,p_column_alias=>'FREQUENCY'
,p_column_display_sequence=>5
,p_column_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9584064431526873)
,p_query_column_id=>7
,p_column_alias=>'INSTRUCTIONS'
,p_column_display_sequence=>7
,p_column_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9582458096526868)
,p_query_column_id=>3
,p_column_alias=>'MEDICINE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Medicine Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9582064871526867)
,p_query_column_id=>2
,p_column_alias=>'PRESCRIPTION_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Prescription Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9581684531526865)
,p_query_column_id=>1
,p_column_alias=>'PRESCRIPTION_ITEM_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9574861081526811)
,p_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_query_where=>'"PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P10_PRESCRIPTION_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991776017792140
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9576708320526845)
,p_query_column_id=>4
,p_column_alias=>'DOCTOR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Doctor Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESCRIPTIONS"',
'where "DOCTOR_ID" is not null',
'and "PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9577537439526847)
,p_query_column_id=>6
,p_column_alias=>'NOTES'
,p_column_display_sequence=>6
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESCRIPTIONS"',
'where "NOTES" is not null',
'and "PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9576328068526844)
,p_query_column_id=>3
,p_column_alias=>'PATIENT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Patient Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESCRIPTIONS"',
'where "PATIENT_ID" is not null',
'and "PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9577139756526846)
,p_query_column_id=>5
,p_column_alias=>'PRESCRIPTION_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Prescription Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESCRIPTIONS"',
'where "PRESCRIPTION_DATE" is not null',
'and "PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9575588604526842)
,p_query_column_id=>1
,p_column_alias=>'PRESCRIPTION_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESCRIPTIONS"',
'where "PRESCRIPTION_ID" is not null',
'and "PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'))
,p_derived_column=>'N'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9575955427526843)
,p_query_column_id=>2
,p_column_alias=>'VISIT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Visit Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESCRIPTIONS"',
'where "VISIT_ID" is not null',
'and "PRESCRIPTION_ID" = :P10_PRESCRIPTION_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9580457363526854)
,p_plug_name=>'Region Display Selector'
,p_static_id=>'region-display-selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P10_PRESCRIPTION_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9569578284526654)
,p_plug_name=>'Search'
,p_static_id=>'search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9569144120526654)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9567985821526646)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'fa-plus'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9597463729526890)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9574861081526811)
,p_button_name=>'EDIT'
,p_static_id=>'edit'
,p_button_static_id=>'edit_master_btn'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_PRESCRIPTION_ID:&P10_PRESCRIPTION_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716062501Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9584777711526875)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9580892284526856)
,p_button_name=>'POP_PRESCRIPTION_ITEMS'
,p_static_id=>'pop-prescription-items'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Add Prescription Items'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP,14:P14_PRESCRIPTION_ID:&P10_PRESCRIPTION_ID.'
,p_icon_css_classes=>'fa-plus'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568731121526654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9567985821526646)
,p_button_name=>'RESET'
,p_static_id=>'reset'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.:RESET:&DEBUG.:RP,10::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9580147186526853)
,p_name=>'P10_PRESCRIPTION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9574861081526811)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9570041899526657)
,p_name=>'P10_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9569578284526654)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9580965521526856)
,p_name=>'Dialog Closed'
,p_static_id=>'dialog-closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9580892284526856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9585467557526877)
,p_event_id=>wwv_flow_imp.id(9580965521526856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9580892284526856)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9597870932526890)
,p_name=>'Dialog Closed'
,p_static_id=>'dialog-closed-2'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9574861081526811)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9598332299526890)
,p_event_id=>wwv_flow_imp.id(9597870932526890)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9574861081526811)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9597915048526890)
,p_name=>'Perform Search'
,p_static_id=>'perform-search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SEARCH'
,p_condition_element=>'JAVASCRIPT_EXPRESSION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9599677631526891)
,p_event_id=>wwv_flow_imp.id(9597915048526890)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-cancel-event'
,p_action=>'NATIVE_CANCEL_EVENT'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9599156427526891)
,p_event_id=>wwv_flow_imp.id(9597915048526890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9570347221526657)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'home'
,p_alias=>'HOME2'
,p_step_title=>'home'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
,p_created_on=>wwv_flow_imp.dz('20260713102943Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714064851Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8690834905483299)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713102943Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102943Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8702511960086306)
,p_plug_name=>'char4'
,p_static_id=>'char4'
,p_title=>'Admissions by Room Type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS label, COUNT(*) AS value',
'FROM admissions ad',
'JOIN rooms r ON ad.room_id = r.room_id',
'GROUP BY r.room_type'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713124706Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8702670018086307)
,p_region_id=>wwv_flow_imp.id(8702511960086306)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260713124706Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8702777955086308)
,p_chart_id=>wwv_flow_imp.id(8702670018086307)
,p_static_id=>'admissions-by-room-type'
,p_seq=>10
,p_name=>'Admissions by Room Type'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS label, COUNT(*) AS value',
'FROM admissions ad',
'JOIN rooms r ON ad.room_id = r.room_id',
'GROUP BY r.room_type'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260713124706Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8702859258086309)
,p_chart_id=>wwv_flow_imp.id(8702670018086307)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260713124706Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8702934195086310)
,p_chart_id=>wwv_flow_imp.id(8702670018086307)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260713124706Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8691691936483433)
,p_plug_name=>'Chart 1'
,p_static_id=>'chart-1'
,p_title=>'Appointments by Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.department_name AS label, COUNT(*) AS value',
'FROM appointments a',
'JOIN doctors doc ON a.doctor_id = doc.doctor_id',
'JOIN departments d ON doc.department_id = d.department_id',
'GROUP BY d.department_name'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713102945Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8691986178483436)
,p_region_id=>wwv_flow_imp.id(8691691936483433)
,p_chart_type=>'area'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260713102945Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8693699907483439)
,p_chart_id=>wwv_flow_imp.id(8691986178483436)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Appointments by Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.department_name AS label, COUNT(*) AS value',
'FROM appointments a',
'JOIN doctors doc ON a.doctor_id = doc.doctor_id',
'JOIN departments d ON doc.department_id = d.department_id',
'GROUP BY d.department_name'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260713102945Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8692455128483437)
,p_chart_id=>wwv_flow_imp.id(8691986178483436)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260713102945Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8693058579483438)
,p_chart_id=>wwv_flow_imp.id(8691986178483436)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260713102945Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8694267299483556)
,p_plug_name=>'Chart 2'
,p_static_id=>'chart-2'
,p_title=>'Patients by Gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS label, COUNT(*) AS value',
'FROM patients',
'GROUP BY gender'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713102946Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8694584052483558)
,p_region_id=>wwv_flow_imp.id(8694267299483556)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260713102946Z')
,p_updated_on=>wwv_flow_imp.dz('20260713114329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8695050751483559)
,p_chart_id=>wwv_flow_imp.id(8694584052483558)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Patients by Gender'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS label, COUNT(*) AS value',
'FROM patients',
'GROUP BY gender'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260713102946Z')
,p_updated_on=>wwv_flow_imp.dz('20260713114329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8695648137483674)
,p_plug_name=>'Chart 3'
,p_static_id=>'chart-3'
,p_title=>'Medicine Stock Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713102947Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8695994336483677)
,p_region_id=>wwv_flow_imp.id(8695648137483674)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260713102947Z')
,p_updated_on=>wwv_flow_imp.dz('20260713121839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8697646629483679)
,p_chart_id=>wwv_flow_imp.id(8695994336483677)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Medicine Stock Status'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN current_stock < reorder_level THEN ''Low Stock'' ELSE ''Normal'' END AS label,',
'       COUNT(*) AS value',
'FROM medicines',
'GROUP BY CASE WHEN current_stock < reorder_level THEN ''Low Stock'' ELSE ''Normal'' END'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260713102947Z')
,p_updated_on=>wwv_flow_imp.dz('20260713121839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8696414973483678)
,p_chart_id=>wwv_flow_imp.id(8695994336483677)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260713102947Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102947Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8697048046483679)
,p_chart_id=>wwv_flow_imp.id(8695994336483677)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260713102947Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102947Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8703000067086311)
,p_plug_name=>'char 5'
,p_static_id=>'new'
,p_title=>'Monthly Patient Visits'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260714055006Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8703161203086312)
,p_region_id=>wwv_flow_imp.id(8703000067086311)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260714055007Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8703244215086313)
,p_chart_id=>wwv_flow_imp.id(8703161203086312)
,p_static_id=>'monthly-patient-visits'
,p_seq=>10
,p_name=>'Monthly Patient Visits'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(visit_date, ''YYYY-MM'') AS label, COUNT(*) AS value',
'FROM patient_visits',
'GROUP BY TO_CHAR(visit_date, ''YYYY-MM'')',
'ORDER BY 1'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260714055007Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8703376183086314)
,p_chart_id=>wwv_flow_imp.id(8703161203086312)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260714055007Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8703416392086315)
,p_chart_id=>wwv_flow_imp.id(8703161203086312)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260714055007Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8703521601086316)
,p_plug_name=>'New'
,p_static_id=>'new_1'
,p_title=>'Total Patients'
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS value FROM patients'
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&VALUE.',
  'TITLE', 'Total Patients')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714062109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8703837678086319)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260714063748Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8703984622086320)
,p_plug_name=>'New'
,p_static_id=>'new_2'
,p_title=>'Today''s Appointments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS value FROM appointments WHERE appointment_date = TRUNC(SYSDATE)'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>50
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&VALUE.',
  'TITLE', 'Today''s Appointments')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714064302Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8704092146086321)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260714064302Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8704166542086322)
,p_plug_name=>'New'
,p_static_id=>'new_3'
,p_title=>'Active Doctors'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS value FROM doctors WHERE status = ''Active'''
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>50
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&VALUE.',
  'TITLE', 'Active Doctors')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714064457Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8704212631086323)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260714064457Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8704377267086324)
,p_plug_name=>'New'
,p_static_id=>'new_4'
,p_title=>'Current Admissions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS value FROM admissions WHERE status = ''Admitted'''
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>50
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&VALUE.',
  'TITLE', 'Current Admissions')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714064644Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064645Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8704436955086325)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260714064645Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8704670430086327)
,p_plug_name=>'New'
,p_static_id=>'new_5'
,p_title=>'Low Stock Medicines'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS value FROM medicines WHERE current_stock < reorder_level'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>50
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&VALUE.',
  'TITLE', 'Low Stock Medicines')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714064850Z')
,p_updated_on=>wwv_flow_imp.dz('20260714064851Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8704774845086328)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260714064851Z')
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Prescriptions'
,p_alias=>'PRESCRIPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Prescriptions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260716054426Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716063304Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9562153611526588)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9557659729526567)
,p_plug_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9562500325526589)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9562153611526588)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9563055101526592)
,p_button_id=>wwv_flow_imp.id(9562500325526589)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9564208659526594)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9562153611526588)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9563418493526593)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9562153611526588)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9563849968526594)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9562153611526588)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9565902562526597)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP:P10_PRESCRIPTION_ID:&P13_PRESCRIPTION_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(9564208659526594)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9566386624526598)
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9559118952526585)
,p_name=>'P13_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_item_source_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716063304Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9349687068037418)
,p_name=>'P13_DOCTOR_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_prompt=>'Doctor Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716055412Z')
,p_updated_on=>wwv_flow_imp.dz('20260716055412Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9559964143526585)
,p_name=>'P13_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_item_source_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9558703021526585)
,p_name=>'P13_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_item_source_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716063304Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9349477830037416)
,p_name=>'P13_PATIENT_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_prompt=>'Patient Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716055336Z')
,p_updated_on=>wwv_flow_imp.dz('20260716055336Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9559589425526585)
,p_name=>'P13_PRESCRIPTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_item_source_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_prompt=>'Prescription Date'
,p_source=>'PRESCRIPTION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9557907588526575)
,p_name=>'P13_PRESCRIPTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_item_source_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9558375387526582)
,p_name=>'P13_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_item_source_plug_id=>wwv_flow_imp.id(9557659729526567)
,p_prompt=>'Visit '
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.full_name || '' - '' || to_char(v.visit_date, ''DD-MON-YYYY'') d,',
'       v.visit_id r',
'from patient_visits v',
'join patients p on p.patient_id = v.patient_id',
'order by v.visit_date desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054427Z')
,p_updated_on=>wwv_flow_imp.dz('20260716061149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9349768680037419)
,p_name=>'Load Visit Details'
,p_static_id=>'load-visit-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_VISIT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260716055817Z')
,p_updated_on=>wwv_flow_imp.dz('20260716055817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9349825636037420)
,p_event_id=>wwv_flow_imp.id(9349768680037419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'execute-server-side-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P13_PATIENT_ID,P13_DOCTOR_ID,P13_PATIENT_NAME,P13_DOCTOR_NAME',
  'items_to_submit', 'P13_VISIT_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if :P13_VISIT_ID is not null then',
    '    select v.patient_id, v.doctor_id, p.full_name, d.full_name',
    '    into   :P13_PATIENT_ID, :P13_DOCTOR_ID, :P13_PATIENT_NAME, :P13_DOCTOR_NAME',
    '    from   patient_visits v',
    '    join   patients p on p.patient_id = v.patient_id',
    '    join   doctors d on d.doctor_id = v.doctor_id',
    '    where  v.visit_id = :P13_VISIT_ID;',
    'else',
    '    :P13_PATIENT_ID := null;',
    '    :P13_DOCTOR_ID := null;',
    '    :P13_PATIENT_NAME := null;',
    '    :P13_DOCTOR_NAME := null;',
    'end if;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716055817Z')
,p_updated_on=>wwv_flow_imp.dz('20260716055817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9349943317037421)
,p_name=>'Load Visit Details On Open'
,p_static_id=>'load-visit-details-on-open'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_created_on=>wwv_flow_imp.dz('20260716061439Z')
,p_updated_on=>wwv_flow_imp.dz('20260716061809Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9350023175037422)
,p_event_id=>wwv_flow_imp.id(9349943317037421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P13_PATIENT_ID,P13_DOCTOR_ID,P13_PATIENT_NAME,P13_DOCTOR_NAME',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if :P13_VISIT_ID is not null then',
    '    select v.patient_id, v.doctor_id, p.full_name, d.full_name',
    '    into   :P13_PATIENT_ID, :P13_DOCTOR_ID, :P13_PATIENT_NAME, :P13_DOCTOR_NAME',
    '    from   patient_visits v',
    '    join   patients p on p.patient_id = v.patient_id',
    '    join   doctors d on d.doctor_id = v.doctor_id',
    '    where  v.visit_id = :P13_VISIT_ID;',
    'else',
    '    :P13_PATIENT_ID := null;',
    '    :P13_DOCTOR_ID := null;',
    '    :P13_PATIENT_NAME := null;',
    '    :P13_DOCTOR_NAME := null;',
    'end if;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716061439Z')
,p_updated_on=>wwv_flow_imp.dz('20260716061809Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9564629073526595)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9557659729526567)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Prescriptions'
,p_static_id=>'initialize-form-prescriptions'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9564629073526595
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9565048173526596)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9557659729526567)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Prescriptions'
,p_static_id=>'process-form-prescriptions'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9565048173526596
,p_created_on=>wwv_flow_imp.dz('20260716054428Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Prescription Items'
,p_alias=>'PRESCRIPTION-ITEMS'
,p_page_mode=>'MODAL'
,p_step_title=>'Prescription Items'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721064544Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9592295044526884)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9586244378526881)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9592653393526885)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9592295044526884)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9593141595526885)
,p_button_id=>wwv_flow_imp.id(9592653393526885)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9594497713526886)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9592295044526884)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9593626187526885)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9592295044526884)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9594061717526886)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9592295044526884)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9596172122526888)
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9588276413526882)
,p_name=>'P14_DOSAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Dosage'
,p_source=>'DOSAGE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9589015401526883)
,p_name=>'P14_DURATION_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Duration Days'
,p_source=>'DURATION_DAYS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9588676743526883)
,p_name=>'P14_FREQUENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Frequency'
,p_source=>'FREQUENCY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9589441046526883)
,p_name=>'P14_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Instructions'
,p_source=>'INSTRUCTIONS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9587830037526882)
,p_name=>'P14_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Medicine Id'
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'MEDICINE_CATEGORIES.CATEGORY_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064544Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9587416429526882)
,p_name=>'P14_PRESCRIPTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Prescription Id'
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9587085006526881)
,p_name=>'P14_PRESCRIPTION_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_prompt=>'Prescription Item Id'
,p_source=>'PRESCRIPTION_ITEM_ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9586680677526881)
,p_name=>'P14_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_item_source_plug_id=>wwv_flow_imp.id(9586244378526881)
,p_source=>'ROWID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9594860002526887)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9586244378526881)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Prescription Items'
,p_static_id=>'initialize-form-prescription-items'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9594860002526887
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9595291306526887)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9586244378526881)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Prescription Items'
,p_static_id=>'process-form-prescription-items'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9595291306526887
,p_created_on=>wwv_flow_imp.dz('20260716054430Z')
,p_updated_on=>wwv_flow_imp.dz('20260716054430Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'DOCTORS'
,p_alias=>'DOCTORS1'
,p_step_title=>'DOCTORS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721063828Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8794726512563589)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8795598664563596)
,p_plug_name=>'DOCTORS'
,p_static_id=>'doctors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTORS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8801515947563605)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8802818827563609)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P15_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8802003328563608)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8802426752563608)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P15_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8803202714563609)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260715052125Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8798367734563603)
,p_name=>'P15_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Consultation Fee'
,p_source=>'CONSULTATION_FEE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8796722964563599)
,p_name=>'P15_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Department '
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Department -'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260721063745Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8795933223563597)
,p_name=>'P15_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8797966726563602)
,p_name=>'P15_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8796349628563598)
,p_name=>'P15_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101954Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8797548129563602)
,p_name=>'P15_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Mobile No'
,p_source=>'MOBILE_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8797125756563602)
,p_name=>'P15_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Specialty'
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DOCTOR_SPECIALTIES.SPECIALTY_NAME'
,p_lov_display_null=>'YES'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260721063828Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8798744063563603)
,p_name=>'P15_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_item_source_plug_id=>wwv_flow_imp.id(8795598664563596)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Status -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103534Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8803660190563610)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8795598664563596)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DOCTORS'
,p_static_id=>'initialize-form-doctors'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8803660190563610
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8804031022563611)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8795598664563596)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form DOCTORS'
,p_static_id=>'process-form-doctors'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8804031022563611
,p_created_on=>wwv_flow_imp.dz('20260714094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716064355Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716105849Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9351434794037436)
,p_plug_name=>'Appointment Summary'
,p_static_id=>'appointment-summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716070010Z')
,p_updated_on=>wwv_flow_imp.dz('20260716070010Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9604970837883433)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716064356Z')
,p_updated_on=>wwv_flow_imp.dz('20260716064356Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9352219967037444)
,p_plug_name=>' Doctor Summary'
,p_static_id=>'doctor-summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716072325Z')
,p_updated_on=>wwv_flow_imp.dz('20260716072325Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9350321681037425)
,p_plug_name=>'Patient Summary'
,p_static_id=>'patient-summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716064646Z')
,p_updated_on=>wwv_flow_imp.dz('20260716064646Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9619887122316327)
,p_plug_name=>'PRESCRIPTION_REGION'
,p_static_id=>'prescription-region'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_query_where=>'prescription_id = :P16_PRESCRIPTION_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P16_APPOINTMENT_DATE'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P16_PATIENT_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620358171316332)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620587024316334)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620425571316333)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620608880316335)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620238480316331)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620167828316330)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Prescription Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9620020715316329)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9619927283316328)
,p_internal_uid=>9619927283316328
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9638820416804152)
,p_interactive_grid_id=>wwv_flow_imp.id(9619927283316328)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260716091722Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9638934048804154)
,p_report_id=>wwv_flow_imp.id(9638820416804152)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9639486882804163)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9620020715316329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9640376364804167)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9620167828316330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9641296772804169)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9620238480316331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9642186188804171)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9620358171316332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9643014010804173)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9620425571316333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9643956159804174)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9620587024316334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9644893410804176)
,p_view_id=>wwv_flow_imp.id(9638934048804154)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9620608880316335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9350139871037423)
,p_plug_name=>'Select Appointment'
,p_static_id=>'select-appointment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716064530Z')
,p_updated_on=>wwv_flow_imp.dz('20260716064531Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9618739499316316)
,p_plug_name=>'VISIT_DETAILS'
,p_static_id=>'visit-details'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VISIT_ID,',
'       SYMPTOMS,',
'       DIAGNOSIS,',
'       NOTES,',
'       FOLLOW_UP_DATE',
'FROM PATIENT_VISITS',
'WHERE APPOINTMENT_ID = :P16_APPOINTMENT_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P16_APPOINTMENT_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9618859411316317)
,p_report_id_item=>'P16_APPOINTMENT_DATE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9618859411316317
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9619515590316324)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716085246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9619737424316326)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716085246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9619673926316325)
,p_db_column_name=>'NOTES'
,p_display_order=>80
,p_column_identifier=>'D'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716085246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9619451506316323)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>60
,p_column_identifier=>'B'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716085246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9618937146316318)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716085246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716085246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9637702602768591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260716091126Z')
,p_updated_on=>wwv_flow_imp.dz('20260716091126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9617541726316304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9604970837883433)
,p_button_name=>'ADD_VISIT_DETAILS'
,p_static_id=>'add-visit-details_1'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Visit Details'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260716084101Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084101Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9620827779316337)
,p_button_sequence=>50
,p_button_name=>'CREATE_PRESCRIPTION'
,p_static_id=>'create-prescription'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Start Prescription'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P16_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716094138Z')
,p_updated_on=>wwv_flow_imp.dz('20260716094138Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9351004283037432)
,p_name=>'P16_AGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_prompt=>'Age'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065825Z')
,p_updated_on=>wwv_flow_imp.dz('20260716065825Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350753107037429)
,p_name=>'P16_APPOINTMENT_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9351434794037436)
,p_prompt=>' Appoinment Date'
,p_source=>'P16_APPOINTMENT_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065532Z')
,p_updated_on=>wwv_flow_imp.dz('20260716105849Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350246964037424)
,p_name=>'P16_APPOINTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9350139871037423)
,p_prompt=>'Appointment '
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.full_name || '' - '' || to_char(a.appointment_date,''DD-MON-YYYY'') || '' '' || a.appointment_time d,',
'       a.appointment_id r',
'from appointments a',
'join patients p on p.patient_id = a.patient_id',
'order by a.appointment_date desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P16_APPOINTMENT_DATE'
,p_ajax_items_to_submit=>'P16_APPOINTMENT_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716064530Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350824159037430)
,p_name=>'P16_APPOINTMENT_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9351434794037436)
,p_prompt=>'Appointment Time'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065602Z')
,p_updated_on=>wwv_flow_imp.dz('20260716070308Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9351233374037434)
,p_name=>'P16_BLOOD_GROUP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_prompt=>'Blood Group'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065916Z')
,p_updated_on=>wwv_flow_imp.dz('20260716065916Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350660230037428)
,p_name=>'P16_CIVIL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_prompt=>'Civil Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065532Z')
,p_updated_on=>wwv_flow_imp.dz('20260716065532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9352435432037446)
,p_name=>'P16_DEPARTMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9352219967037444)
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716072350Z')
,p_updated_on=>wwv_flow_imp.dz('20260716072350Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9621350358316342)
,p_name=>'P16_DOCTOR_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716102712Z')
,p_updated_on=>wwv_flow_imp.dz('20260716102712Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9352362735037445)
,p_name=>'P16_DOCTOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9352219967037444)
,p_prompt=>'Doctor Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716072325Z')
,p_updated_on=>wwv_flow_imp.dz('20260716072325Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9351170656037433)
,p_name=>'P16_GENDER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_prompt=>'Gender'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065854Z')
,p_updated_on=>wwv_flow_imp.dz('20260716065854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9351395593037435)
,p_name=>'P16_MOBILE_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_prompt=>'Mobile No'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260716065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9621225503316341)
,p_name=>'P16_PATIENT_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716102652Z')
,p_updated_on=>wwv_flow_imp.dz('20260716102652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350498048037426)
,p_name=>'P16_PATIENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9350321681037425)
,p_prompt=>'Patient Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716064646Z')
,p_updated_on=>wwv_flow_imp.dz('20260716065532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9620731088316336)
,p_name=>'P16_PRESCRIPTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9619887122316327)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716093535Z')
,p_updated_on=>wwv_flow_imp.dz('20260716093535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350960191037431)
,p_name=>'P16_REASON_FOR_VISIT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9351434794037436)
,p_prompt=>'Reason For Visit'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716065625Z')
,p_updated_on=>wwv_flow_imp.dz('20260716070308Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9352507059037447)
,p_name=>'P16_SPECIALITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9352219967037444)
,p_prompt=>'Speciality'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716072414Z')
,p_updated_on=>wwv_flow_imp.dz('20260716072414Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9351864083037440)
,p_name=>'P16_STATUS_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9351434794037436)
,p_prompt=>'Status Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716070308Z')
,p_updated_on=>wwv_flow_imp.dz('20260716070308Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9620967340316338)
,p_name=>'Create Prescription'
,p_static_id=>'create-prescription'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9619887122316327)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260716094500Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9621065614316339)
,p_event_id=>wwv_flow_imp.id(9620967340316338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P16_PRESCRIPTION_ID',
  'items_to_submit', 'INSERT INTO PRESCRIPTIONS (VISIT_ID,P16_APPOINTMENT_DATE PATIENT_ID, DOCTOR_ID, PRESCRIPTION_DATE) VALUES (:P16_VISIT_ID, :P16_PATIENT_ID, :P16_DOCTOR_ID, SYSDATE) RETURNING PRESCRIPTION_ID INTO :P16_PRESCRIPTION_ID;',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'insert into prescriptions (visit_id, patient_id, doctor_id, prescription_date)',
    'values (:P16_VISIT_ID, :P16_PATIENT_ID, :P16_DOCTOR_ID, sysdate)',
    'returning prescription_id into :P16_PRESCRIPTION_ID;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716094500Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9351935929037441)
,p_name=>'Load Appointment Details'
,p_static_id=>'load-appointment-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_APPOINTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260716070606Z')
,p_updated_on=>wwv_flow_imp.dz('20260716105117Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9352097536037442)
,p_event_id=>wwv_flow_imp.id(9351935929037441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P16_PATIENT_NAME,P16_CIVIL_ID,P16_AGE,P16_GENDER,P16_BLOOD_GROUP,P16_MOBILE_NO,P16_APPOINTMENT_DATE,P16_APPOINTMENT_TIME,P16_STATUS_NAME,P16_REASON_FOR_VISIT,P16_VISIT_ID,P16_PRESCRIPTION_ID,P16_PATIENT_ID,P16_DOCTOR_ID',
  'items_to_submit', 'P16_APPOINTMENT_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if :P16_APPOINTMENT_ID is not null then',
    '    select p.full_name, p.civil_id,',
    '           trunc(months_between(sysdate, p.date_of_birth)/12),',
    '           p.gender, p.blood_group, p.mobile_no,',
    '           to_char(a.appointment_date, ''DD-MON-YYYY''), a.appointment_time,',
    '           s.status_name, a.reason_for_visit,',
    '           a.patient_id, a.doctor_id',
    '    into   :P16_PATIENT_NAME, :P16_CIVIL_ID,',
    '           :P16_AGE,',
    '           :P16_GENDER, :P16_BLOOD_GROUP, :P16_MOBILE_NO,',
    '           :P16_APPOINTMENT_DATE, :P16_APPOINTMENT_TIME,',
    '           :P16_STATUS_NAME, :P16_REASON_FOR_VISIT,',
    '           :P16_PATIENT_ID, :P16_DOCTOR_ID',
    '    from   appointments a',
    '    join   patients p on p.patient_id = a.patient_id',
    '    join   appointment_statuses s on s.status_id = a.status_id',
    '    where  a.appointment_id = :P16_APPOINTMENT_ID;',
    '',
    '    begin',
    '        select visit_id into :P16_VISIT_ID',
    '        from patient_visits',
    '        where appointment_id = :P16_APPOINTMENT_ID;',
    '    exception',
    '        when no_data_found then',
    '            :P16_VISIT_ID := null;',
    '    end;',
    '',
    '    if :P16_VISIT_ID is not null then',
    '        begin',
    '            select prescription_id into :P16_PRESCRIPTION_ID',
    '            from prescriptions',
    '            where visit_id = :P16_VISIT_ID;',
    '        exception',
    '            when no_data_found then',
    '                :P16_PRESCRIPTION_ID := null;',
    '        end;',
    '    else',
    '        :P16_PRESCRIPTION_ID := null;',
    '    end if;',
    'else',
    '    :P16_PATIENT_NAME := null; :P16_CIVIL_ID := null; :P16_AGE := null;',
    '    :P16_GENDER := null; :P16_BLOOD_GROUP := null; :P16_MOBILE_NO := null;',
    '    :P16_APPOINTMENT_DATE := null; :P16_APPOINTMENT_TIME := null;',
    '    :P16_STATUS_NAME := null; :P16_REASON_FOR_VISIT := null;',
    '    :P16_VISIT_ID := null;',
    '    :P16_PRESCRIPTION_ID := null;',
    '    :P16_PATIENT_ID := null;',
    '    :P16_DOCTOR_ID := null;',
    'end if;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716070606Z')
,p_updated_on=>wwv_flow_imp.dz('20260716105117Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9352602125037448)
,p_name=>'Load Doctor Details'
,p_static_id=>'load-doctor-details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'LOAD DOCTOR DETAILS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260716072720Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9352708319037449)
,p_event_id=>wwv_flow_imp.id(9352602125037448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P16_APPOINTMENT_DATE',
  'items_to_submit', 'P16_APPOINTMENT_DATE',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if :P16_APPOINTMENT_ID is not null then',
    '    select p.full_name,',
    '           p.civil_id,',
    '           trunc(months_between(sysdate, p.date_of_birth)/12),',
    '           p.gender,',
    '           p.blood_group,',
    '           p.mobile_no,',
    '           a.appointment_date,',
    '           a.appointment_time,',
    '           s.status_name,',
    '           a.reason_for_visit,',
    '           d.doctor_name,',
    '           dept.department_name,',
    '           spec.specialty_name',
    '    into   :P16_PATIENT_NAME,',
    '           :P16_CIVIL_ID,',
    '           :P16_AGE,',
    '           :P16_GENDER,',
    '           :P16_BLOOD_GROUP,',
    '           :P16_MOBILE_NO,',
    '           :P16_APPOINTMENT_DATE,',
    '           :P16_APPOINTMENT_TIME,',
    '           :P16_STATUS_NAME,',
    '           :P16_REASON_FOR_VISIT,',
    '           :P16_DOCTOR_NAME,',
    '           :P16_DEPARTMENT,',
    '           :P16_SPECIALTY',
    '    from   appointments a',
    '    join   patients p on p.patient_id = a.patient_id',
    '    join   appointment_statuses s on s.status_id = a.status_id',
    '    join   doctors d on d.doctor_id = a.doctor_id',
    '    join   departments dept on dept.department_id = d.department_id',
    '    join   doctor_specialties spec on spec.specialty_id = d.specialty_id',
    '    where  a.appointment_id = :P16_APPOINTMENT_ID;',
    'else',
    '    :P16_PATIENT_NAME     := null;',
    '    :P16_CIVIL_ID         := null;',
    '    :P16_AGE              := null;',
    '    :P16_GENDER           := null;',
    '    :P16_BLOOD_GROUP      := null;',
    '    :P16_MOBILE_NO        := null;',
    '    :P16_APPOINTMENT_DATE := null;',
    '    :P16_APPOINTMENT_TIME := null;',
    '    :P16_STATUS_NAME      := null;',
    '    :P16_REASON_FOR_VISIT := null;',
    '    :P16_DOCTOR_NAME      := null;',
    '    :P16_DEPARTMENT       := null;',
    '    :P16_SPECIALTY        := null;',
    'end if;',
    '')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716072720Z')
,p_updated_on=>wwv_flow_imp.dz('20260716104126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'DOCTER'
,p_alias=>'DOCTER'
,p_step_title=>'DOCTER'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714110950Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715051416Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8815899087056823)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714110950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8816635795056953)
,p_plug_name=>'DOCTER List'
,p_static_id=>'docter'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    d.DOCTOR_ID,',
'    d.FULL_NAME,',
'    dept.DEPARTMENT_NAME,',
'    spec.SPECIALTY_NAME,',
'    d.MOBILE_NO,',
'    d.EMAIL,',
'    d.CONSULTATION_FEE,',
'    d.STATUS',
'from DOCTORS d',
'left join DEPARTMENTS dept on dept.DEPARTMENT_ID = d.DEPARTMENT_ID',
'left join DOCTOR_SPECIALTIES spec on spec.SPECIALTY_ID = d.SPECIALTY_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714125513Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8816736079056953)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8816736079056953
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714125513Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820356711056983)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110951Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8705631369086337)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714111851Z')
,p_updated_on=>wwv_flow_imp.dz('20260714111851Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8817964305056967)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_DOCTOR_ID:#DOCTOR_ID#'
,p_column_linktext=>'#DOCTOR_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714111851Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8819968379056981)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110951Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8818353712056975)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110951Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8819522296056980)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110951Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8705750227086338)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714111851Z')
,p_updated_on=>wwv_flow_imp.dz('20260714111851Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8820779156056985)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714110951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110951Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8823392215379753)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS:DEPARTMENT_NAME:SPECIALTY_NAME'
,p_created_on=>wwv_flow_imp.dz('20260714125513Z')
,p_updated_on=>wwv_flow_imp.dz('20260714125513Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8706087612086341)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8816635795056953)
,p_button_name=>'CREATE_DOCTOR'
,p_static_id=>'create-doctor'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Create Doctor'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260714130351Z')
,p_updated_on=>wwv_flow_imp.dz('20260715051416Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'MEDICINES'
,p_alias=>'MEDICINES'
,p_step_title=>'MEDICINES'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715053620Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715065843Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9148298614341611)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715053621Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9149022435341736)
,p_plug_name=>'MEDICINES'
,p_static_id=>'medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    m.MEDICINE_ID,',
'    m.MEDICINE_NAME,',
'    c.CATEGORY_NAME,',
'    m.UNIT,',
'    m.CURRENT_STOCK,',
'    m.REORDER_LEVEL,',
'    m.STATUS,',
'    case when m.CURRENT_STOCK < m.REORDER_LEVEL then ''Y'' else ''N'' end as LOW_STOCK',
'from MEDICINES m',
'left join MEDICINE_CATEGORIES c on c.CATEGORY_ID = m.CATEGORY_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065843Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9149159602341736)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9149159602341736
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065843Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8706180298086342)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053830Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053830Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9152267230341789)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8706670663086347)
,p_db_column_name=>'LOW_STOCK'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Low Stock'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715065843Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065843Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9150660420341773)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_MEDICINE_ID:#MEDICINE_ID#'
,p_column_linktext=>'#MEDICINE_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9151038600341784)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9152662382341791)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9153082684341793)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053623Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053623Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9151873984341788)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715053622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9166204688645244)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS:CATEGORY_NAME'
,p_created_on=>wwv_flow_imp.dz('20260715062657Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062657Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8706501178086346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9149022435341736)
,p_button_name=>'CREATE_MEDICINE'
,p_static_id=>'create-medicine'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Medicine'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715062212Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062212Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'PATIENT_VISITS'
,p_alias=>'PATIENT-VISITS'
,p_step_title=>'PATIENT_VISITS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721064453Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9623107826388358)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9623900824388371)
,p_plug_name=>'PATIENT_VISITS'
,p_static_id=>'patient-visits'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9630855915388386)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716082449Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9632181782388388)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P20_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9631307472388388)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P20_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716082543Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9631731851388388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P20_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9632567671388388)
,p_branch_action=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9624725827388373)
,p_name=>'P20_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Appointment Id'
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'APPOINTMENTS.APPOINTMENT_TIME'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064453Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9626927552388384)
,p_name=>'P20_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Diagnosis'
,p_source=>'DIAGNOSIS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9625735980388383)
,p_name=>'P20_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DOCTORS.FULL_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9627751171388384)
,p_name=>'P20_FOLLOW_UP_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Follow Up Date'
,p_source=>'FOLLOW_UP_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083137Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9627315782388384)
,p_name=>'P20_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9625320731388383)
,p_name=>'P20_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PATIENTS.CIVIL_ID'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9626505490388384)
,p_name=>'P20_SYMPTOMS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Symptoms'
,p_source=>'SYMPTOMS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716082716Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9626151430388383)
,p_name=>'P20_VISIT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_prompt=>'Visit Date'
,p_source=>'VISIT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9624311776388372)
,p_name=>'P20_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_item_source_plug_id=>wwv_flow_imp.id(9623900824388371)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9617461299316303)
,p_validation_name=>'New'
,p_static_id=>'new'
,p_validation_sequence=>10
,p_validation=>':P20_FOLLOW_UP_DATE IS NOT NULL AND :P20_FOLLOW_UP_DATE >= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Follow\2011up date must be today or later')
,p_associated_item=>wwv_flow_imp.id(9627315782388384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260716083137Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083137Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9632935085388389)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9623900824388371)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form PATIENT_VISITS'
,p_static_id=>'initialize-form-patient-visits'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9632935085388389
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9633374777388389)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9623900824388371)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form PATIENT_VISITS'
,p_static_id=>'process-form-patient-visits'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9633374777388389
,p_created_on=>wwv_flow_imp.dz('20260716080805Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Patient Admission Form'
,p_alias=>'PATIENT-ADMISSION-FORM'
,p_step_title=>'Patient Admission Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260716111040Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721101737Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9656060666326525)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716111040Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111040Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9656797566326549)
,p_plug_name=>'Patient Admission Form'
,p_static_id=>'patient-admission-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ADMISSIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P22_OLD_ROOM_ID'
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716112710Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9663028365326562)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9664377555326564)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P22_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9663500714326564)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P22_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9663969298326564)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P22_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9664754065326564)
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9659054318326559)
,p_name=>'P22_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Admission Date'
,p_source=>'ADMISSION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9657130171326551)
,p_name=>'P22_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260721052506Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9659835048326560)
,p_name=>'P22_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_prompt=>'Admission Reason'
,p_source=>'ADMISSION_REASON'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716112007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9659458168326560)
,p_name=>'P22_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_prompt=>'Discharge Date'
,p_source=>'DISCHARGE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9657957658326553)
,p_name=>'P22_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DOCTORS.FULL_NAME'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P22_OLD_ROOM_ID'
,p_ajax_items_to_submit=>'P22_OLD_ROOM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9621813213316347)
,p_name=>'P22_OLD_ROOM_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716112710Z')
,p_updated_on=>wwv_flow_imp.dz('20260716112710Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9657519269326552)
,p_name=>'P22_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PATIENTS.CIVIL_ID'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P22_OLD_ROOM_ID'
,p_ajax_items_to_submit=>'P22_OLD_ROOM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9658319746326553)
,p_name=>'P22_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROOMS.ROOM_NO'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P22_OLD_ROOM_ID'
,p_ajax_items_to_submit=>'P22_OLD_ROOM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064713Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9660291569326560)
,p_name=>'P22_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_source_plug_id=>wwv_flow_imp.id(9656797566326549)
,p_item_default=>'Admitted'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted ;Admitted ,Discharged ;Discharged '
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111812Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9681359744519425)
,p_validation_name=>'Discharge Date Required'
,p_static_id=>'discharge-date-required'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'         if :P22_STATUS = ''Discharged'' and :P22_DISCHARGE_DATE is null then',
'             return false;',
'         end if;',
'         return true;',
'     end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'A discharge date is required when status is set to Discharged.'
,p_when_button_pressed=>wwv_flow_imp.id(9664377555326564)
,p_associated_item=>wwv_flow_imp.id(9659458168326560)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260721070125Z')
,p_updated_on=>wwv_flow_imp.dz('20260721070125Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9621591113316344)
,p_validation_name=>'Room Must Be Available'
,p_static_id=>'room-must-be-available'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'       l_count number;',
'   begin',
'       select count(*) into l_count',
'       from admissions a',
'       where a.room_id = :P22_ROOM_ID',
'         and a.status = ''Admitted''',
'         and a.admission_id != nvl(:P22_ADMISSION_ID, -1);',
'',
'       return l_count = 0;',
'   end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This room is currently occupied by another admitted patient. Please choose a different room.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260716112220Z')
,p_updated_on=>wwv_flow_imp.dz('20260721055340Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9621632845316345)
,p_validation_name=>'Room Status Check'
,p_static_id=>'room-status-check'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'       l_status varchar2(20);',
'       l_same_room number;',
'   begin',
'       select nvl(status,''Available'') into l_status',
'       from rooms',
'       where room_id = :P22_ROOM_ID;',
'',
'       select count(*) into l_same_room',
'       from admissions',
'       where admission_id = nvl(:P22_ADMISSION_ID, -1)',
'         and room_id = :P22_ROOM_ID;',
'',
'       return (l_status != ''Occupied'') or (l_same_room > 0);',
'   end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The selected room is marked Occupied. Please refresh and choose an available room.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260716112249Z')
,p_updated_on=>wwv_flow_imp.dz('20260721055357Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9621939717316348)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Capture Old Room'
,p_static_id=>'capture-old-room'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'         if :P22_ADMISSION_ID is not null then',
'             select room_id into :P22_OLD_ROOM_ID',
'             from admissions',
'             where admission_id = :P22_ADMISSION_ID;',
'         else',
'             :P22_OLD_ROOM_ID := null;',
'         end if;',
'     exception',
'         when no_data_found then',
'             :P22_OLD_ROOM_ID := null;',
'     end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9664377555326564)
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9621939717316348
,p_created_on=>wwv_flow_imp.dz('20260716113016Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113016Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9665168838326565)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9656797566326549)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Admission Form'
,p_static_id=>'initialize-form-patient-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P22_OLD_ROOM_ID',
  'next_primary_key_items', 'P22_OLD_ROOM_ID',
  'previous_primary_key_items', 'P22_OLD_ROOM_ID')).to_clob
,p_internal_uid=>9665168838326565
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716112710Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9665514527326565)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9656797566326549)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Admission Form'
,p_static_id=>'process-form-patient-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9665514527326565
,p_created_on=>wwv_flow_imp.dz('20260716111041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9622038422316349)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Room Status'
,p_static_id=>'update-room-status_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'         if :P22_OLD_ROOM_ID is not null and :P22_OLD_ROOM_ID != :P22_ROOM_ID then',
'             update rooms set status = ''Available'' where room_id = :P22_OLD_ROOM_ID;',
'         end if;',
'',
'         if :P22_STATUS = ''Admitted'' then',
'             update rooms set status = ''Occupied'' where room_id = :P22_ROOM_ID;',
'         end if;',
'',
'         if :P22_STATUS = ''Discharged'' and :P22_DISCHARGE_DATE is not null then',
'             update rooms set status = ''Available'' where room_id = :P22_ROOM_ID;',
'         end if;',
'     end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9664377555326564)
,p_internal_uid=>9622038422316349
,p_created_on=>wwv_flow_imp.dz('20260716113124Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'MEDICINE form'
,p_alias=>'MEDICINE-FORM'
,p_step_title=>'MEDICINE form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721064016Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9154926230399152)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9155738713399162)
,p_plug_name=>'MEDICINE form'
,p_static_id=>'medicine-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9161023356399175)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9162352553399179)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P24_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9161522635399178)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P24_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9161902228399179)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P24_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9162752938399179)
,p_branch_action=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9156970670399169)
,p_name=>'P24_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_prompt=>'Category '
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'MEDICINE_CATEGORIES.CATEGORY_NAME'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Category -'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064016Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9157756235399172)
,p_name=>'P24_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_prompt=>'Current Stock'
,p_source=>'CURRENT_STOCK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061511Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9156151130399164)
,p_name=>'P24_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9156528547399169)
,p_name=>'P24_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_prompt=>'Medicine Name'
,p_source=>'MEDICINE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9158140656399172)
,p_name=>'P24_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_prompt=>'Reorder Level'
,p_source=>'REORDER_LEVEL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9158543912399173)
,p_name=>'P24_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Status -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061358Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9157364590399172)
,p_name=>'P24_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_item_source_plug_id=>wwv_flow_imp.id(9155738713399162)
,p_prompt=>'Unit'
,p_source=>'UNIT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8706240636086343)
,p_validation_name=>'New'
,p_static_id=>'new'
,p_validation_sequence=>10
,p_validation=>'P24_CURRENT_STOCK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Current Stock must have some value'
,p_associated_item=>wwv_flow_imp.id(9157756235399172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715060739Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060739Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8706314587086344)
,p_validation_name=>'New'
,p_static_id=>'new_1'
,p_validation_sequence=>20
,p_validation=>'P24_REORDER_LEVEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reorder Level must have some value.'
,p_associated_item=>wwv_flow_imp.id(9158140656399172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715060918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060938Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9163164143399181)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9155738713399162)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form MEDICINE form'
,p_static_id=>'initialize-form-medicine-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9163164143399181
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9163561237399183)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9155738713399162)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form MEDICINE form'
,p_static_id=>'process-form-medicine-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9163561237399183
,p_created_on=>wwv_flow_imp.dz('20260715054556Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Appointments list'
,p_alias=>'APPOINTMENTS-LIST'
,p_step_title=>'Appointments list'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715072315Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715080706Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9177873921982660)
,p_plug_name=>'Appointments list'
,p_static_id=>'appointments-list'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    a.APPOINTMENT_ID,',
'    p.FULL_NAME as PATIENT_NAME,',
'    d.FULL_NAME as DOCTOR_NAME,',
'    a.APPOINTMENT_DATE,',
'    a.APPOINTMENT_TIME,',
'    s.STATUS_NAME,',
'    a.REASON_FOR_VISIT',
'from APPOINTMENTS a',
'left join PATIENTS p on p.PATIENT_ID = a.PATIENT_ID',
'left join DOCTORS d on d.DOCTOR_ID = a.DOCTOR_ID',
'left join APPOINTMENT_STATUSES s on s.STATUS_ID = a.STATUS_ID',
'order by a.APPOINTMENT_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9177985480982660)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9177985480982660
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9181222591982686)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9180059853982680)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_APPOINTMENT_ID: #APPOINTMENT_ID#'
,p_column_linktext=>'#APPOINTMENT_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080411Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9181624303982688)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9183558256984604)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>27
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072403Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072403Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9183431616984603)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072403Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072403Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9182434323982691)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9183641741984605)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>37
,p_column_identifier=>'K'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072403Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072403Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9208493187238962)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:REASON_FOR_VISIT:PATIENT_NAME:DOCTOR_NAME:STATUS_NAME'
,p_created_on=>wwv_flow_imp.dz('20260715080706Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080706Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9177030482982533)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072315Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072315Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9184225534984611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9177873921982660)
,p_button_name=>'BOOK_APPOINTMENT'
,p_static_id=>'book-appointment'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Book Appointment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715080703Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080703Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Current Admissions'
,p_alias=>'CURRENT-ADMISSIONS'
,p_step_title=>'Current Admissions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716113855Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716114504Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9671884657496035)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716113855Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9672624661496164)
,p_plug_name=>'Current Admissions'
,p_static_id=>'current-admissions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       a.admission_id,',
'       p.full_name        as patient_name,',
'       d.full_name         as doctor_name,',
'       r.room_no,',
'       r.room_type,',
'       a.admission_date,',
'       a.discharge_date,',
'       a.admission_reason,',
'       a.status',
'   from admissions a',
'   join patients p on p.patient_id = a.patient_id',
'   join doctors  d on d.doctor_id  = a.doctor_id',
'   join rooms    r on r.room_id    = a.room_id',
'   where a.status = ''Admitted''',
'   order by a.admission_date desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716113857Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114504Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9672762791496164)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9672762791496164
,p_created_on=>wwv_flow_imp.dz('20260716113857Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114504Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679485084519406)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>60
,p_column_identifier=>'R'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9678945755519401)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'Admission Id'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ADMISSION_ID:#ADMISSION_ID#'
,p_column_linktext=>'#ADMISSION_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114434Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679605601519408)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>80
,p_column_identifier=>'T'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679524720519407)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>70
,p_column_identifier=>'S'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679142939519403)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>30
,p_column_identifier=>'O'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679096175519402)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679271041519404)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>40
,p_column_identifier=>'P'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679339927519405)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9679788075519409)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'U'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716114251Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114251Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9690505953532942)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716114504Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114504Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9622134156316350)
,p_button_sequence=>20
,p_button_name=>'CREATE_ADMISSION'
,p_static_id=>'create-admission'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Admit New Patient'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260716114041Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114041Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Appointments form'
,p_alias=>'APPOINTMENTS-FORM'
,p_step_title=>'Appointments form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721064241Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9192194926002663)
,p_plug_name=>'Appointments form'
,p_static_id=>'appointments-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P28_DOCTOR_SPECIALTY'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9191391109002656)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9198158693002676)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9199401374002681)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P28_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9198646007002680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P28_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9199014451002681)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P28_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9199803719002681)
,p_branch_action=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9193749954002672)
,p_name=>'P28_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>'Appointment Date'
,p_source=>'APPOINTMENT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9192515223002664)
,p_name=>'P28_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9194191987002673)
,p_name=>'P28_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>'Appointment Time'
,p_format_mask=>'HH24:MI'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9195353360002673)
,p_name=>'P28_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9183712458984606)
,p_name=>'P28_DOCTOR_DEPARTMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>' Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dept.department_name, dept.department_id',
'from doctors d',
'join departments dept on dept.department_id = d.department_id',
'where d.doctor_id = :P28_DOCTOR_ID'))
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715074734Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114352Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9193329948002672)
,p_name=>'P28_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>'Doctor '
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DOCTORS.FULL_NAME'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Doctor -'
,p_lov_null_value=>'%null%'
,p_lov_cascade_parent_items=>'P28_DOCTOR_SPECIALTY'
,p_ajax_items_to_submit=>'P28_DOCTOR_SPECIALTY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9183875013984607)
,p_name=>'P28_DOCTOR_SPECIALTY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>' Specialty'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ds.specialty_name, ds.specialty_id',
'from doctors d',
'join doctor_specialties ds on ds.specialty_id = d.specialty_id',
'where d.doctor_id = :P28_DOCTOR_ID'))
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715074817Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114352Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9192975372002668)
,p_name=>'P28_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>'Patient '
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PATIENTS.CIVIL_ID'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Patient -'
,p_lov_null_value=>'%null%'
,p_lov_cascade_parent_items=>'P28_DOCTOR_SPECIALTY'
,p_ajax_items_to_submit=>'P28_DOCTOR_SPECIALTY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064202Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9194981717002673)
,p_name=>'P28_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_prompt=>'Reason For Visit'
,p_source=>'REASON_FOR_VISIT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9194573042002673)
,p_name=>'P28_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_source_plug_id=>wwv_flow_imp.id(9192194926002663)
,p_item_default=>'1'
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPOINTMENT_STATUSES.STATUS_NAME'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Status -'
,p_lov_null_value=>'%null%'
,p_lov_cascade_parent_items=>'P28_DOCTOR_SPECIALTY'
,p_ajax_items_to_submit=>'P28_DOCTOR_SPECIALTY'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260721064241Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9183971898984608)
,p_validation_name=>'Appointment date must not be in the past'
,p_static_id=>'appointment-date-must-not-be-in-the-past'
,p_validation_sequence=>10
,p_validation=>':P28_APPOINTMENT_DATE >= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Appointment date cannot be in the past.'
,p_associated_item=>wwv_flow_imp.id(9193749954002672)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715075721Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075721Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9184000223984609)
,p_name=>'Refresh Doctor Details'
,p_static_id=>'refresh-doctor-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_DOCTOR_ID'
,p_condition_element=>'P28_DOCTOR_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260715080032Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100037Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9184167345984610)
,p_event_id=>wwv_flow_imp.id(9184000223984609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P28_DOCTOR_DEPARTMENT,P28_DOCTOR_SPECIALTY',
  'items_to_submit', 'P28_DOCTOR_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if :P28_DOCTOR_ID is not null then',
    '    select DEPARTMENT_NAME, SPECIALTY_NAME',
    '    into :P28_DOCTOR_DEPARTMENT, :P28_DOCTOR_SPECIALTY',
    '    from DOCTORS d',
    '    left join DEPARTMENTS dept on dept.DEPARTMENT_ID = d.DEPARTMENT_ID',
    '    left join DOCTOR_SPECIALTIES spec on spec.SPECIALTY_ID = d.SPECIALTY_ID',
    '    where d.DOCTOR_ID = :P28_DOCTOR_ID;',
    'else',
    '    :P28_DOCTOR_DEPARTMENT := null;',
    '    :P28_DOCTOR_SPECIALTY := null;',
    'end if;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715080032Z')
,p_updated_on=>wwv_flow_imp.dz('20260715095620Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9200250801002683)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9192194926002663)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointments form'
,p_static_id=>'initialize-form-appointments-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P28_DOCTOR_SPECIALTY',
  'next_primary_key_items', 'P28_DOCTOR_SPECIALTY',
  'previous_primary_key_items', 'P28_DOCTOR_SPECIALTY')).to_clob
,p_internal_uid=>9200250801002683
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074818Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9200682510002686)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9192194926002663)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointments form'
,p_static_id=>'process-form-appointments-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9200682510002686
,p_created_on=>wwv_flow_imp.dz('20260715072636Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716115551Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721074406Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9693360975597778)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       ap.appointment_id,',
'       p.full_name        as patient_name,',
'       d.full_name         as doctor_name,',
'       dep.department_name,',
'       ap.appointment_date,',
'       ap.appointment_time,',
'       s.status_name,',
'       ap.reason_for_visit',
'   from appointments ap',
'   join patients p              on p.patient_id  = ap.patient_id',
'   join doctors  d               on d.doctor_id   = ap.doctor_id',
'   join departments dep          on dep.department_id = d.department_id',
'   join appointment_statuses s   on s.status_id   = ap.status_id',
'   where ap.appointment_date between nvl(:P_DATE_FROM, ap.appointment_date) ',
'                                  and nvl(:P_DATE_TO, ap.appointment_date)',
'     and ap.doctor_id = nvl(:P_DOCTOR_ID, ap.doctor_id)',
'     and dep.department_id = nvl(:P_DEPARTMENT_ID, dep.department_id)',
'     and ap.status_id = nvl(:P_STATUS_ID, ap.status_id)',
'   order by ap.appointment_date desc, ap.appointment_time'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716115553Z')
,p_updated_on=>wwv_flow_imp.dz('20260721074406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9693400835597778)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9693400835597778
,p_created_on=>wwv_flow_imp.dz('20260716115553Z')
,p_updated_on=>wwv_flow_imp.dz('20260721074406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9695814805597800)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115553Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115553Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9694674852597793)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260716115553Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115553Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9696226656597802)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115553Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115553Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9680378591519415)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>37
,p_column_identifier=>'K'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115629Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115629Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9680299787519414)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>27
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115629Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115629Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9680107707519413)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115629Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115629Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9697028844597805)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115553Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115553Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9680431897519416)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>47
,p_column_identifier=>'L'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716115630Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115630Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10554287896054397)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:REASON_FOR_VISIT:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:STATUS_NAME'
,p_created_on=>wwv_flow_imp.dz('20260721074406Z')
,p_updated_on=>wwv_flow_imp.dz('20260721074406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9692541771597653)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716115551Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9680558196519417)
,p_name=>'P30_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9693360975597778)
,p_prompt=>'Date From'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716115921Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115921Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9680661069519418)
,p_name=>'P30_DATE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9693360975597778)
,p_prompt=>'Date To'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716115957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716115957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9680746017519419)
,p_name=>'P30_DEPARTMENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9693360975597778)
,p_prompt=>'Department Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select department_name as d,',
'       department_id   as r',
'from departments',
'order by department_name',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716120139Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120139Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716120538Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721102751Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9701790777656337)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7551579715238950)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716120538Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9702566324656475)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260721074410Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9702624693656475)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9702624693656475
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260721074410Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9704232228656489)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Appointment'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9624822734388375)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9706253861656497)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9705048097656492)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9178237503982675)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9707031653656500)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9706682103656498)
,p_db_column_name=>'NOTES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9704659913656490)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9178001828982668)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9705823687656495)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9705445984656493)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9703844236656485)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Visit ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260716120540Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10554781956054797)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:VISIT_DATE:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260721074410Z')
,p_updated_on=>wwv_flow_imp.dz('20260721074410Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9680845975519420)
,p_name=>'P32_DATE_FROM'
,p_item_sequence=>20
,p_prompt=>'Date From'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716120618Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120618Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9680992378519421)
,p_name=>'P32_DATE_TO'
,p_item_sequence=>30
,p_prompt=>'Date To'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716120658Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120658Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9681097707519422)
,p_name=>'P32_DOCTOR_ID'
,p_item_sequence=>40
,p_prompt=>'Doctor Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as d, doctor_id as r',
'   from doctors',
'   order by full_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716120739Z')
,p_updated_on=>wwv_flow_imp.dz('20260721102751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Hospital Management System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7557274921239131)
,p_plug_name=>'Hospital Management System'
,p_static_id=>'hospital-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7558817000239151)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7557274921239131)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7558106025239147)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7557274921239131)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7558530357239150)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7557274921239131)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7557789154239144)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7557274921239131)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7562904925239159)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7562904925239159
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7562502360239159)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7562502360239159
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7559220174239153)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7559220174239153
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7560243660239157)
,p_page_process_id=>wwv_flow_imp.id(7559220174239153)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7560732895239157)
,p_page_process_id=>wwv_flow_imp.id(7559220174239153)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7559758098239156)
,p_page_process_id=>wwv_flow_imp.id(7559220174239153)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7561155366239158)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7561155366239158
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7562157311239159)
,p_page_process_id=>wwv_flow_imp.id(7561155366239158)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7561600796239158)
,p_page_process_id=>wwv_flow_imp.id(7561155366239158)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260713051441Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/deployment/definition
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
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
