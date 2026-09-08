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
,p_release=>'26.1.2'
,p_default_workspace_id=>18815621715562667591
,p_default_application_id=>86099
,p_default_id_offset=>18817568731888419105
,p_default_owner=>'WKSP_ALHARITHALK'
);
end;
/
 
prompt APPLICATION 86099 - Hospital
--
-- Application Export:
--   Application:     86099
--   Name:            Hospital
--   Date and Time:   10:32 Tuesday July 21, 2026
--   Exported By:     ALHARITH.ALKINDI99@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     33
--       Items:                   99
--       Validations:              3
--       Processes:               41
--       Regions:                 73
--       Buttons:                 72
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             24
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   8
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.2
--   Instance ID:     63113759365424
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_ALHARITHALK')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Hospital')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'HOSPITAL')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'2576DC6371CBF45C11FDB863F81A098C4B92FCEBCC47AD0B127912BEFF7673CF'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(18825674902042584980)
,p_application_tab_set=>0
,p_logo_type=>'C'
,p_logo=>'<span class="fa fa-hospital-o" aria-hidden="true"></span> Hospital'
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
,p_substitution_value_01=>'Hospital'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721085502Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461238122523
,p_version_scn=>'15790484798506'
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
,p_navigation_list_id=>wwv_flow_imp.id(18825675780913584994)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(18825676592716585057)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825670827101584968)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825673739342584972)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825671107711584968)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825671427578584969)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825673453385584971)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825672904537584970)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825674081528584972)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825674340053584972)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825672606757584970)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825670476596584954)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825673206093584971)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825671638311584969)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825672304402584970)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18825671998555584969)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18825676592716585057)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18825689653166585146)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18825690300217585147)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(18825689653166585146)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18825690791604585150)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(18825689653166585146)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18825675780913584994)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:YrjwqEFoIcTwxsXwp8RNaqp6okrGYX90TzaedgN9Cvo'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827680008712055081)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Admissions'
,p_static_id=>'admissions'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-medical'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,27'
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121922Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827896793077988067)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admissions-summary'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-hospital-o'
,p_parent_list_item_id=>wwv_flow_imp.id(18821718768946561973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
,p_created_on=>wwv_flow_imp.dz('20260716080035Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827501103584668267)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-medical'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121857Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18826902188144443771)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Appointments'
,p_static_id=>'appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-medical'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121254Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827883099019977366)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointments-by-doctor'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stethoscope'
,p_parent_list_item_id=>wwv_flow_imp.id(18821718768946561973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20260716075848Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084556Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18826919585604580307)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Departments'
,p_static_id=>'departments'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
,p_created_on=>wwv_flow_imp.dz('20260714105637Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18826695474019869346)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Doctors'
,p_static_id=>'doctors'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stethoscope'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18825687105180585119)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827891644861985510)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'low-stock-medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-medication-pills'
,p_parent_list_item_id=>wwv_flow_imp.id(18821718768946561973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
,p_created_on=>wwv_flow_imp.dz('20260716080009Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084808Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827489710127662669)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-vial'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121827Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18826884095731348768)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Medicines'
,p_static_id=>'medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-medication-pills'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121226Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827538249175860479)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827917112556044232)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Clinical Visits'
,p_static_id=>'patient-visits'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34,35'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122037Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18826283095520963161)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wheelchair'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121117Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827573119392104314)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24,25'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827887777688982053)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'prescriptions-per-patient'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wheelchair'
,p_parent_list_item_id=>wwv_flow_imp.id(18821718768946561973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
,p_created_on=>wwv_flow_imp.dz('20260716075935Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084657Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18821718768946561973)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Reports'
,p_static_id=>'reports'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260716120538Z')
,p_updated_on=>wwv_flow_imp.dz('20260716120538Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827514168697673881)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Rooms'
,p_static_id=>'rooms'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-hospital-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18827477446792654180)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Specialties'
,p_static_id=>'specialties'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-md'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,15'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260716121802Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801ECDD07B0344D5506E00573CEBFA21851CCA5A56522296240455031630EA0820163190B3047CC82A114C580825A5298154B14A40ACC8A395B8A';
wwv_flow_imp.g_varchar2_table(2) := '98B312DF67BFEDFAE6CEBFD33BB3337B7777766EF5B9DDD37DCEE9D3EFE9493DDDBDB75D2D7F0B022310583AD008F016D1D56AE9404B2F1885C0D28146C1B7082F1D68E903A310583AD028F816E1A5032D7D6014027B77A051B52EC2B34160E940B371E5';
wwv_flow_imp.g_varchar2_table(3) := '711AB274A0E3E03E9B5A970E341B571EA7214B073A0EEEB3A975E940B371E5711AB274A0E3E03E9B5AAFBF031D1EBA974C156F19BA7BE81E27426C61D34BC49E5985B975A0978F777E20F4F8D063423F7822C41636B1878D316B1E616E1DE893E296770F';
wwv_flow_imp.g_varchar2_table(4) := 'DD3EF42A27466C62DB27C6AED984B975A07BC5332F167A7EE8DF437F1EFAD323131BD8C226B6BD77EC994D985B077AE978E636A1E7859E14FA94D0FD8F4C6C600B9BD8C6C698348F30B70E54BCE26CFFBB1CFC72E889472636B0854D31655E61AE1DA878';
wwv_flow_imp.g_varchar2_table(5) := '89D3F6A122EF8A81CAF13EBAC814F9D9C567D481AE057B78BC416A7ADFD0C7863E6E43D2F294E149F61220B08001851B048B774EF25B43DF1E7A44E8DB36242D4F191EBC295AC202C4CD3EF0CA497E51480779A5C42F14820F9296A70C0FDE142F01380B';
wwv_flow_imp.g_varchar2_table(6) := '0A3710789F446F1682C9FF27FE9BD01F6F485A9EB2374DDEBD434B08020049B48420F05AA1970A79E83576F39949EB54E8B392FE8B90323CAF9DF41282C02577206DF76DCAA785570816C667E425B932F0F74749FCFE86A4FF2369010F5E3264E990A7EC';
wwv_flow_imp.g_varchar2_table(7) := 'E2E8521BEE99E68DE26D0FC93F9BF817431F1C929FA81A5E38A51F122243960EBAFAC8466C5EE1123A50DB63DAFCB6C97C54E823426F13F2A5FC551397311FB72A23C7C95A87E6311EBC64C8D2419734DD6B814BF977710D8E633DC37C68E2B708E90C3A';
wwv_flow_imp.g_varchar2_table(8) := 'C773922EF43F49BB653D2B7109FF9084076A65854F4C960EBAEE171EBA135D4EB8C40EE4F9E5CDE3E217093D37F453210FCC9F91187D7AE26F083D3354C2DF27F1F090323C880C593AE8F2064777D82E275C6207E2EC17DFB898F37F3E69CF310609D177';
wwv_flow_imp.g_varchar2_table(9) := 'E6F8E9216589D6415A9E323C88CCCFA55459A2958769BAA52F862EB103B9E5A0E2E46727E176544887706B4AF695204F59E113932D4C74A2727C11F12576201D017130877BAB7AD11C98AB237615D9868B3C65789ABC74447C452792BE1802CAC53476D3';
wwv_flow_imp.g_varchar2_table(10) := '50578EFFDBA4BD7ADF27E9876CE8A1893F3BE4A1B8898DB4B72E65780A3F593A22B2A2936EE98B21C09C5A639DD1ECE298A1D4A72D0604BD65B91DA9E7AE117A70C80332FABC4DFA96C425786D6F964993214B075D7F1866BA13ED0C43DB855F3DB0D9A9';
wwv_flow_imp.g_varchar2_table(11) := 'FC3A1918759DF5D5EA02CECB85C1B4892F4EFCB5A1AF1B48AF1EFE5DE1BFC26072FBEF25E678CE715B2AE461F80D53F66AA112A4E5292B7C62B274FC6E187F284477A26A60E3D076C10226EF17CD30825592C70FA7D28100724BE000D4F727F6EDE98189';
wwv_flow_imp.g_varchar2_table(12) := '4D921F42AF18995DC100E1AF86E97343DF15F226F54B89FF2AD47C866153B2D6411A39C083970C593AE8A2936E3C3562E39036E185054C1E1DC55F13B260A0D893C3E38553E940CEE47B06066798576C0FAB1E6E87525F503DAFFC4CEA732B3259CCC4B1';
wwv_flow_imp.g_varchar2_table(13) := '32A693EC6AF09CF393E12043960E9F34E84CF6CEC0C6A1EDC20F13D8DC3735C00A66491E379C5207728B2823B9467E39F8C702CF10FAB7F0F70D6E3D6E397F1D813F0BFD4BA85C4138CA87D22679F30ACBFA6DEB9F932043960EBA92D52BB071489BF0C2';
wwv_flow_imp.g_varchar2_table(14) := 'A28C8C5B3809ABA503B5E06E02E299E24129F7C9610899B713B1C1C16D4967F8EF48BA4270D07724FD0B1B321BF18E492BD361F09249D6E0C0C6216DC26B65074C54C6862656F28E46A772056A03E04A6002D7FFA66008918BC85EC1596EFA061D1E90EF';
wwv_flow_imp.g_varchar2_table(15) := '102D6FB5216979CA9E913CB7AC447B053A86B409AFDB23B9BD2A3CA4D0A976A043B6B94BB709635F9AC25F0B1961E6B026C97B4ACAF0FC65E2EE7041254B07BAE96CCF31AE2C1F942C73838C0799FF8CA4E5213C78C3B684A5035DED03DEB03CA3FC78B2';
wwv_flow_imp.g_varchar2_table(16) := '0D297C6562242D4F199E642F01024B0782C2ADC9AD4B476992BC5B735E78CEA97620AFCF6F17DFBC63E86E03A80C037853317A7CE701B2A51E9F27DE24725EE5135D091EA4ADCA28BC7D6236B0854D94B1B18F5CE18181199430217F52742A1DC82BB137';
wwv_flow_imp.g_varchar2_table(17) := '0D31804CF8FAA6247C721842AF191941BBACE1FAEE1C0C912FBC3E4BD845A3F9BA2CFD5ED1F7D850E1EB13B3812D6C8AE88A8D7DE49A3CB030618D3C8C9A58C93B1A95461DCD804DC51E4A9F9AF43F860064D0CE07CCDBE5D8B7A3BE64B436222B67BB01';
wwv_flow_imp.g_varchar2_table(18) := '37677E5FD9C2F71A516092BC39CEAE38395C07BA8D941B232ABC7D6236B0854D14D1D347AEF0C0001630810D8C600533FA8E4AA7D481CC0CFCFAA0F11B212019074A721DBC421BC1FDD71C1D9A8C485B17664CC83350AA5C07E92727E575FF4036AC8A5E';
wwv_flow_imp.g_varchar2_table(19) := '6DD5E6D5E60F1630818DA9B50638970EB401A7442ECB2ED50F48868F87B645F1E08A8CBF188DF5FDE9D0F4F1A9DF2E623F91B8E9441DC8F679CA0F6D83B66AB3B62358C00436DF1CBB6095E8F8E154AE400509C03C2D074F08B90AB8642303771CFAB8E4';
wwv_flow_imp.g_varchar2_table(20) := '5F0759F3E57B57AABB125C199CFD87B6415BB559DB112C60021B185D31EA9807A7D6816A5800B2563EA7B2B369EB3975A0397590D9B4656C07F26A6B8294CD065E27A84C45363A7899E85BC20D04600193A9F0A587CFF8CE5CA31BB5ECF17F4C0752B141';
wwv_flow_imp.g_varchar2_table(21) := '37F76693B17E3AF54F459E01DE23FAC6D817F1590418C0022653E14B0F9FF1DD5D82125F261A1E18375CEA86C43B24FADED0DB87DE38647C642A7AFDE8DB77EEAFF1965D14F59DE190B2747756DC5140061630E9C2779F7C3EE33B3EE4CB8EEAEBD9633A';
wwv_flow_imp.g_varchar2_table(22) := '90699506B84A0D1EFCBC724E417415BD7D63DBADBC5B983F3C64C3832EFAC0941BD56D0E1272924BBABD80BAE44A3E1EB7133251B50E74D14977E1DB16B38D8D6C5D0B0EF8079329B0A583AE52351FDA00BD1C0F8AC774205BBE018E31BF935A4D793001';
wwv_flow_imp.g_varchar2_table(23) := '7C0AFAD4E8FB9590C626DA198CF41A9F796438CD24B404B94626A65BE7553A81D15E6BBEFAC89A9D88974CAA5B8F7AD34567AD4E65F4B3D138129BC9EF2218C0022653604B075FF119DFF1215FEEB2636BF9980E54C06784310B836C009A82BE27D6FE41';
wwv_flow_imp.g_varchar2_table(24) := '88EE44D5C00E33065D195C4500E29EDE45364070DFE7F4D2FEB74E0D1F100264975CC9B73F225EB31523B2A2832E3AE92E7CDB62B6B1D1D22536B39D8E1AC100163099025B3AF88ACFE856771F3BF0DD8A34FE56997B663853A6A4D2B83EE6701C02041B';
wwv_flow_imp.g_varchar2_table(25) := '0CFBFBE460E27B2180991E4A9FEF51BE6E7B8B74FCB2F9E73983BCD1671B8317B912CB5386872C9988ADE8704CA76375A8ABC889D9C226B691672BC2DF876041764AEA53EF4E9E293BD0CECAAE89C148ADB3CC55E2FD5367A18F4C9A2313AD0347AE13AD';
wwv_flow_imp.g_varchar2_table(26) := '7FFF94E32F0815B9127F61F2B68D4E277B7D1B132375A8ABC889D9C226B6E1990DCDB103F9C868D5C46FC64B3E3E16FAED1C5B7591A81A7CB8B49954912BB1BC3E1D401DEA2A7262B6B0896DD5CACFAD708E1DE8DC7C70547BC7563E4507722B307BCFEB';
wwv_flow_imp.g_varchar2_table(27) := '6099C33236F686D3F72D652C06E7200F0B988CC5B5C8F3159FF1DDA8F64FD5814CB9FCBE5862C9EF146435A6D1D77DEC23E3A11658268715E2006F4131B31A3C147BD32A722596E7CDAA2A9C4275A8ABC889D9C226B685655020030B984C812D1D7CC567';
wwv_flow_imp.g_varchar2_table(28) := '27D181A0E15B8D597CA6A24E41E61D1B6CDBA78166EED986B76C43672B3A646585E9A4EC45DE6CC46DF27DC8FE87649A645F4436B5F91D3775A9435D4D59B6B0896DF887100CD40B9329B0A583AFF86C881D5B79F5EEAD050333359288780A2ABAC47DC8';
wwv_flow_imp.g_varchar2_table(29) := 'EEA95E9FF1BA8218157ECF1C98C35CC868AB57F564AF3CCCFE67125E8B13AD3CF85AB22C6D0B1743FB45AEC4F294E1C14B469A0EBAE874AC0E751539315BD8C4363CEC2DF28E77114CF188A7A0A24B3C8AA6E840CE3EEBB62DC033936E0A7205307D9473';
wwv_flow_imp.g_varchar2_table(30) := '763550FD7ED6D22430D351BD29799342C66D0A3956C679A6AB96FD81E8FFF5FC3351CC065178F016B912CB5386C7B62EDEAE22B6EE8C74D149371EBC454EEC18293314C05636B39D8E1AC100163099025B3AF88ACFFAD45FB36D3D8A5A65E851C808631F';
wwv_flow_imp.g_varchar2_table(31) := '464A4DB79C820CF7730ADD3D4C5871AAF9D49F1FE6AF0EF9ACD0455F96727BED98325AF47BC5B681D3C352D62557F2F158DE4C26ECEBDD3AE8A293EEC2B72D669B3126DB08BB6A91DF456C84054CA6C0960EBEE233BA77D55F2D9FE20A54ADE01A0BEDE5';
wwv_flow_imp.g_varchar2_table(32) := '0C640EAED157C4269B43B92224B90ECE72633726ACD76495E1C14B662D9C7F74D149379E1AB191AD113BE3B0317D4E1D489338B579CBE0D836991CDF75E6798E69F3B78FF1A8AB4D74D2DDE66F1EB38D8D6DD9B33D9E5307D216DF976CFF56236F59DE86';
wwv_flow_imp.g_varchar2_table(33) := '3C8C361DE715DDAB764D56191EBC4D59BAE8A41B4F8DD8C8D6A6FCD9A6E7D210EDF096E4B9C326088F8F47BAC88ACF4F48B9057F89D6C1DB9595A8BE5799F9D725AB0C0F5E326BE1FCA38B4EBABB64E5B3CD7390895C6C8EE879875934222E307067BECC';
wwv_flow_imp.g_varchar2_table(34) := '4727CD39569576D13DC2E381F74E894BFB8D8D78B83525C4005B97AC323C1ED6BD9647C5FA45C4FA773AE9EE9295CFB68F89D0A785D89CE8BC430170EA56B8A43B435DEE0D82D5080FDE7D6D5197D15EBFA86C14981E79DBDA24DF588C5165F372A4F1BD';
wwv_flow_imp.g_varchar2_table(35) := '6EFE195C736BEA9227AB0C8FE9A06422B6A2C30C453AA5F1C96F937CF26C642B9BE5B5F9FA1CD3E3F306EC6AD82AC303DF7DEBAADAC3902AC39E85AF1739AFAA5654DAFEB6464F0AAF915A0EDCB7911C87A26AE541D5988ED7FAE67ECCEAB079271EF598';
wwv_flow_imp.g_varchar2_table(36) := 'BF2376AC532069BF56F898249AB2D23F9C3C6589567891341D4D5DEA501799426C6113DBC8B015490F25F5E9C0DF1241D8D5B055C6077CC1271199361CA203D1F94E31D3FC5FB7068DAD915B815DC1DE3532C52949EE1D0CD6FD68A43F27E4B652C8E0D9';
wwv_flow_imp.g_varchar2_table(37) := 'DF266F57B03E5D0728722596A76C97BC3AD455E4C46C6113DB76C9EF2A87D1BB840966B0AB61AB8C0FF8824FF826A2D385E10AFBD56D44187965ED433E0D700EDE7E355C2E178C600533E93EC41746C02747ED101D4883EC78FA51B1D626DC26A0D7C847';
wwv_flow_imp.g_varchar2_table(38) := '4A2B187C6DEE1A6389AA256C108011AC6006BB1AB6CAF8802FECEDC8371B35D34487E8402C7376D8AEC57DDAFDB74686D675B8F27C417E2C6997678C36797EE8A37B9BBCBC3EF278DAF53A26DFA7EE3E3CB08219EC6AD82AE303BEE0933EBA07F14CD9A8';
wwv_flow_imp.g_varchar2_table(39) := '76C57ABB91D93E84B72DBFEFB1075AAFDB36E8FEB02829645EB281BE645583813E6BB78A5C89E5D99EAE2A9C4275A8ABC889D9C226B685659200B33ED8E2C13B49A56D2587EC40EDBA0E79ECB28ED4E1359903BDF938030BD96DD5AB331E9F1D7C62103B';
wwv_flow_imp.g_varchar2_table(40) := '268BA4BDF61A532A7225F6155B191E4E29FC743475A9435D454ECC1636B18D3C59247DD634870EC48196DCF83AEE4C730B31EE61D98DB939854CA0F206C3616E013E6816275A8653A657C0C495A6C895589E32F5E12543171D74D1E9581DEA2A7262B6B0';
wwv_flow_imp.g_varchar2_table(41) := '896DF8D9CA66BAC89C2D01E46C8D6F186EFF6667BA71118BF0FCF85B179907633DB871191D8E1A737B6C8629AEC92BC383D74A0BB274D04527DD5DF5CA276F95A92B129BC99F355D63073A284ECE644EB409A6F9C366007691729F2D0CF815A3CC66FCC6';
wwv_flow_imp.g_varchar2_table(42) := '1C74C9B4F36DC5472622EB40179D74B7799BC7CAD96842199BD7C2E7FCEF901DC8A5DC03A9CF47BEDA0000088349444154CB798DF04CF57069ACC34429AB41BBC899DF747EF19FE79A67E6C076725DB2CAF0E00DEB954027DD5DB2F2D9C6C62B827B1EC0';
wwv_flow_imp.g_varchar2_table(43) := '0C76356C95E1E18B3DABA98B1DAA03D9C0C826047EB8A40FB925D8A2A46EED520A01CF51B082591F6CF1F0856F7FE427A5437420631EBE4A5B856025815DDF6B84C766032EEFCEAA491B384365AE26B08219EC6AD82AC3C3177CC237934272880EE4DEEE';
wwv_flow_imp.g_varchar2_table(44) := '8DC4F0B96F3F5E7177117E3BA0929DB4813354062358C16C17AECAF9802FCC1B273B292487E840DE4A7C01F643B4264F592355233C362EB0D2C12BEEA40D9CA13218C10A66B0AB61AB0C0F5FF009DF4C0AC9213A10033D68FAF565AB17AC76A8119E4745';
wwv_flow_imp.g_varchar2_table(45) := 'C857EC72868851B2D7A1995E675CF03F58C00A66B0AB61AB0C0F5FF0C9E4B01DAA0331D49B8A37136BA5769179328021879C651AECFB8D05785E935D8E952DB45A2F2582D92E5C95F3015F1C04B74376A03106BB6F5BBF6D8EF35745D12342C048B48453';
wwv_flow_imp.g_varchar2_table(46) := '42E0543B108CECC7F32549B804FB7490E4124E0D8153EE40B0725B43D20B9D2002A7DE81F685CCDE37E6009B8271DF28392699AACB1636C5947985437520A3A5BE5EDBF5B40F196E6FDB62C0CC4A0724DD17795FBD4D9DB013A989F0DE568E493F12C3BD';
wwv_flow_imp.g_varchar2_table(47) := '05D92B71AA4E042B98F5C1160F5FF0494C993630645A8D37B4DD3E91C9E466CC998C5E2333E67C88B4137B6924BBFC56A8AFD6C884F05216D5D56033A70787C33A2C532980774C6283C9646C325728A68D0A70B02C0866B0AB61AB8C0FF8824F4655BC4D';
wwv_flow_imp.g_varchar2_table(48) := '98A3B6E58FC9335C6ED8DC5C5C3BB73BF36AE46AE107DE5CEACB95C6C42BFBEA9053EE16641D541FBB808B6E1B66036786010C070C2132CD575F69794374E025C30638DF31F6D81B3AD1A8002358D9301C3630AA111FF0059FF0CDA8CADBC21AD6CE9BF2';
wwv_flow_imp.g_varchar2_table(49) := 'D8D9D287D4894F8C34D4251A58D2AE20D2CA7691C95B64F0D9B2D79548871A4296C2B8F5703E92963744075E571E36B0854D6C931E4BB0F27221EE4363EBEB941FD3817C5FD9A6D820A049DC5F9E4293AC1E9DB846C67BDCA64C12373816F6C9025B0C48';
wwv_flow_imp.g_varchar2_table(50) := '9A313884C834072EA5E50DD181970C1B266B5014C1C8AFEDC00C76356C95F1015FF049972D960945F5F030A603D52A35D4EE1BCCFD6392DF85A891DFB830E4FE27E13D5470B60EA12E3B86E8C0DBA5676C3EAC6006BB1AB6CAF8802FF8A4ABDE9A2FBB64';
wwv_flow_imp.g_varchar2_table(51) := 'D6F987EA40C0F3DCE0CCED4378C9AC8D5AFEED44005630EB832D1EBC64BA149F5C07EA3274C93F4D04960E749A7E391BAB960E34A9AB2E4FD9D2812ECFE793B6F8281DC80A03734DBA5A62DCC6BE817D08AFF18C2E5D4BFE55046005B33ED8E2C17B55C3';
wwv_flow_imp.g_varchar2_table(52) := 'CD233EE4CB9B39035263DEC254FCD48EBAFC98C7FD526608DD0E1135C2636B3ABB7C012662D712D465C4FB96D4E61B95E3247B05BC46C67D9AA0C3712FC10998D4052B98C1AE86AD323C7CC127DBAAE743BEDC56B6336F4C07A2DCDEC8E2261971F5EDCA';
wwv_flow_imp.g_varchar2_table(53) := '9EC9E6EDFA6653233C36E8F6E59C6C53D721D33A80EF53BE27F92CE0A36DDFFA743A6BE57D6BB2833C5D7D65C7F2C1085630835D0D5B6578F8824FC8B6EBDFE6C3364FE7F1213A90CA7C7A306CEFECEC43F87D457776913F34A9C7967A0F4C45568A8AFD';
wwv_flow_imp.g_varchar2_table(54) := '06AAFC645503CCF03E205CF70AD99DD53AAD3EB2611F1DD4032B98F5C1160F5F7475F2A376208BD6DA973FC3E54F0C4CB6C3B5DC58BA4696F91A92C76BC02BA2070F3A816D58802AEDBB1BE29C3E95731E224B87CD2CFBCAF6D15FE38111AC6006BB1AB6';
wwv_flow_imp.g_varchar2_table(55) := 'CAF0F2858EC2374DDD7CC787CDBC4169000C12683133C0DEC9ADEC9525C0EEBFB6C4BD4F0A77D12787C78F95D4464BC372D2E136ABD5B5D8072358C16C17AECAF9802FF8A46D20DFF1613BBFF7F1D80EA422BB6288DB6408DD0F8A58D056233C7801D3D6';
wwv_flow_imp.g_varchar2_table(56) := 'B11C6F47005630835D0D5B6578F06ED3D4E5BB6DBC5BF3A6E8402E81B62ED95AC19279B208F019DF8D32708A0EC4009742F1B99033D8642FCF136C3645A2EB2C55DE26CB8E0A3F59BAE86CF39DF2F1243E9BAA03D9D0BAFD8076CAE09924663328BB9D3E';
wwv_flow_imp.g_varchar2_table(57) := '2D863E2EE4279CFA74023CBF15FEC7868CA188FD9E179DC93A8BC0577C36DAD8A93A1083F61E0E1FDD8AFD14783EB021B83933D69ED9764EE7D8A50D8F7D80C8907D48043C67243A9B6032209F8D3678AA0EC490735B39EA8AF1AC18EECA63E9B4E31CF6';
wwv_flow_imp.g_varchar2_table(58) := '0A78C9BAF298B2EAB897E089308D7AF36AB661CA0ED4D47B4E6957947DED1D23DBACF36CD34B073A5BD79D86E14B073A0D3F9CAD154B073A5BD79D86E1D7D1817C23DA87DA080DD1516487C86CE33DA69E527789B7D9D727AFC81F24BE8E0EE441D37263';
wwv_flow_imp.g_varchar2_table(59) := 'D309EE9E56F4A1BB858F4C01C86F92CAEB236B53C9326DC197E8BB44571FB9268FBAD4B94FFD4D3DEA66434C58FFB221DB9AE55DE976FDB090D7C5DFCEB72CDC9413D8ABFB60741D1D88F1D624F90008C08726C3B6B335B29EFBAEE1631FF25BA316D2D5';
wwv_flow_imp.g_varchar2_table(60) := '644A99755065B757FB243F3C7A4A59DF58FD7EC4B7742069797DE50B9F5F2C64434C58B1C9D48F52568BB5559BB51DC1A24FFD0F4B457E84EE19892D6A4C74D8C0B8C3D67053BB06D9E1DD95C82C398BE36C7B62BD789BFC1EA9392C459A13E4B5F9B61D';
wwv_flow_imp.g_varchar2_table(61) := '9B79C7F1644DE5B467F536BE5A9EBAD4490792965793D956A66E36D0C126B66DE36BE7A94B9DE4102CE4B5F9EE9042753839FD408C2B8F1DF7619DA2C387EBEC40A53546407D42B86732FCFACD9D129B9CE50CB393A825C106E9165AADDA18C006466651';
wwv_flow_imp.g_varchar2_table(62) := 'BA9ADD39D8C1F0DE899F10826DA2EB0BC7E840CDD6D9EBF829C9703937BFC51974BB1C3BDBDCEE6C8C20CFC6DA660EDA30FB12485BB559DB61000B98C046DE8382D123434F0E1DF533CAB13B50DABF35D81AC5D9E72795DCCF9F1E2EBF726376DD2590B6';
wwv_flow_imp.g_varchar2_table(63) := '6AB3B6C3001630090CA7154EB5039D164A8B359D082C1DA8139AA5A00F024B07EA83D2C2D389C0D2813AA19979C144CD5B3AD044405EAA9AA5035DAAE7276AF7D2812602F252D52C1DE8523D3F51BB970E34119097AA66E94097EAF989DABD74A08980BC';
wwv_flow_imp.g_varchar2_table(64) := '1C35575BBA74A0AB782C470311583AD040C016F6AB08BC000000FFFF451E54BD0000000649444154030082DDFB990AF8A02B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18825677953512585075)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122522Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC9D07D02C4511C7CF00661023628E6040308B3947143388B94C18D032813E030AE62C0614C18059142382B1504145294BAC42287210100401';
wwv_flow_imp.g_varchar2_table(2) := '415082FAFFBDF7DDFB6EF766F776C2DE86E957DD6F762774F774B86FC34CEF952779FFDB40D3BFB9F03EC26D854FCC0499EBBD3557E68E0E749827E41C00D792C97711FE587898F007C2EF6582CCF5379AEBC1C23708D1858AFC20D70060DEEF91B9DF26';
wwv_flow_imp.g_varchar2_table(3) := 'BCA3F02AC2DC8039DF4993DE4DF86E213A51911764396999781BE133841B0A730774B0BD94804E54E405B906C0DD65E64D8406EB34802ED0C9BAB38CFECF350036994C2659DFFC957C9CBF020441A97AFCA7B90600F3BE52C9BCE7EB9C1BC2C7A81C3372';
wwv_flow_imp.g_varchar2_table(4) := 'E37F81E658067452AE1BFD799693AEB0EAA5AAFF8390A74263C6DF6B8EFF111A48031600528241BE1AB000C8D7F6367369C002404AC80E6CC2EB356001B05E154B3BE005D446E2E642DAD464B02C0D58002C47D31B8B0DEB6F587A70A18E790AE342DA0E';
wwv_flow_imp.g_varchar2_table(5) := '52FBE3858C5161D0A6062C00DAD4EE3ADAB751F171E101C2470BAF21AC02DA7804FB1D75D853C85815066D69C002A02DCDAEA3CB65CE5B75B8A3D0E7C51B7D9FA5316F165E4768D092062C005A52EC0A59961C3F53C721D7F68C2108EEA5F10689345026';
wwv_flow_imp.g_varchar2_table(6) := '630150D648DAF39788DCD584A1C0D817850EB6718B356001B05847313D1EE418CC928B0FAA9EE5D8B3481D37C66A2A808B46A1839D846BC002205C774D46BA16987D5B035973B446E52C52C7CDAFAA0B70FDC2999D24D58005405275CE1173E9F78AB95E';
wwv_flow_imp.g_varchar2_table(7) := 'AB15AEB6F2A2BDD5DE7614AD019781A2891A01D3C05034905100B466926B8AF25D856F127E4BC8CBAE29F224475551C023D1293D4A78C00B9EF08E229EFB600B80380FB8B586BF5F7888907DB54F55C9CBAE29A6B87CC146537A94F080173CDF277EC8A0';
wwv_flow_imp.g_varchar2_table(8) := 'C22044032837649C8D994CB8C17DAF14F15221C72A960AF0DC491C7992C4B10E0D7C356001E0ABB1D5FE4FD7217855953E704E4DE7736BDA5C4DF06673FFD35C8D56B7580316008B75E4EAC10BAA5DD5E07B897386C69093478513BEAFDA33853E800CC8';
wwv_flow_imp.g_varchar2_table(9) := '824C3EE3ACAF346001202504C05D34C675EDCD56C3E3D5E6C29FAA9E37C347A8AC02B62BD2E767EAE0A2411D3CD45C0016CDDDB950337B62C7951AB000A8544D6D032905F9E52D777ABE2A6E5F818F52FD81C2CB855570991A7E287CA4B08A0E3CD45C00';
wwv_flow_imp.g_varchar2_table(10) := '6441A642A59D2CD68005C0621DB97A54E9ED6C57E7C4756755D04BF1C8B582F478ABAB0C39DE19DBCC4C03331AB0009851861DE6A7010B80FC6C9ED58C174DD602609186FCDAB919F51BE1DF7B193CFCA51AE8080B8030C3FDB362D82B54FF6C07B2B3EB';
wwv_flow_imp.g_varchar2_table(11) := 'C1AA6769739D03D37603F57B8890312E5AAF549B0BAA6472F5B5BA150D5800AC28C2B3F8B3FA5F222CC39355F125077E5975BC07D847E58D8555B0A91AF615FE44C818172D78A8B90017EB0C995418F868C002C0475BAB7D79DCF9DDD5D34647ACEA7C82';
wwv_flow_imp.g_varchar2_table(12) := '7ABA1C58D56B81856EA444A1EFDA8A86FF210B3235EC6EDDA61AE863005C57C2F1D59687AB6CEB9B5D7710ED5878A7089C22F4019ED5B38CB96ACC966AA08F8AC6800CEF6ADCBBBAE3E66A6A4BDFD8720BD1EFDDA2BD3E0500867FAC94F40521DFEC6239';
wwv_flow_imp.g_varchar2_table(13) := '40C437BB267563C9D420365170AC46B38DF144953E50A77374E0430BDEAFD700645111053B68749DCE62DAB025DF24FBA27890F7A84E07EAB23CE88D209A32CEFF1995DB097BF74B2199CAC09206F6F022F7DE6A64B3BB8AA500BCE0893371F9832C4B61';
wwv_flow_imp.g_varchar2_table(14) := '1CC1049B720988DC8F8BA09374685F0280271FAFD2CC86B69E05C7E3D7973D01C8BEB5E670BF1974EDF155B317F0DD82599A5B69F4CD84F03C4E2532A8180CA0A79D252D4FC454740B7D09005656DEBF5B554473BF48148E14FE7606FFA7E35880C62C4D';
wwv_flow_imp.g_varchar2_table(15) := '9EF6FC2B9668C7E3B1F5AD3A96612DFBBE04003760B6BF75AD49B2F88FEF12B3DAB5F3C9F62500AE5DA109FECC739D9B1A79C65EC13269B56BEDFEEDC4E1B642D6F0CF2275B4A9A9002E1A850E73276115E824B59EA1F7F20A717A91F3B42F0150A1A309';
wwv_flow_imp.g_varchar2_table(16) := '4F0EDAF85ED709550C13D71FE3A0F730D531AF5FAB9C45EA785BACEA021C5D386BEF049DB4A16BE6D59ED49194FB1E0091D3EB7CF8FE1512DC48F59B95903A55CD41158DB98E56E1AF010B007F9DF98CF89A3AFF45180A4769E03785062D69C002A025C5';
wwv_flow_imp.g_varchar2_table(17) := 'AE903D5DE5DB856C8657E1058CDD4D2342C66A9841130D580034D152781FDE03F0A28AF53F5C0BF348731135FA1CAA4E8C214B0434746AD04403BE7D2C007C35E6DF9F8DEE647B608933C85F844F88CC274B481D6DDC0873A3FC07B5335685415B1AB000';
wwv_flow_imp.g_varchar2_table(18) := '684BB3F37471E65FA9FA1D42DE84B2AE7F16A9A38D2743F4553783B6356001D0B6868D7EAF356001D06BF398706D6BC002A06D0D1BFD5E6B604401D06B3D9B703DD5405F02A06A492FEB53787C981A5FE8B007EBD57932939AD72CBDE923D126896CC9F5';
wwv_flow_imp.g_varchar2_table(19) := '893CDC14CFD2883DFE94E6CE5C5514009DC4D2768DDFAFC065F5A4178F77FB1200A7492FFF159681B5EFDBA83235B29E5E640BC03E5C9C2E35AF597A6CF6E1EDF08B0B9CE74F58247780AA5948F60095B334628FEF247ACC554501D0492C6DD778D71650';
wwv_flow_imp.g_varchar2_table(20) := '6C7D6A817B47277D09003676B0B7B523352C952DBFFE04004B82AB18F3DD8114FB96ABE8775D7FB20460F19D8A6EA12F01C06BFFAF4815EC7E52317A20FF0F5835D1BED8A54ABE987A6C8CADB1790C9D2463FBA268D6BC736DCA9EE0A1EF765A64185E72';
wwv_flow_imp.g_varchar2_table(21) := 'B1F19F1D64557DF910DE49558D73F5C3A9C0B69F96B8D89A40D061B7D09700400B7C1985AF1FF221B8BD54C10D15AB215D374B7F53FB1F078824BC7A9EE4C60154540297844F512B5914F8A0C610E68A4D247201B01D36C496CC19DBAE510F575F552F1F';
wwv_flow_imp.g_varchar2_table(22) := 'FA1400CC9E5F0852A270F3C7BE511684B952FE7D4E9DEF3140C401B809FEB7645F047F52073E86712F9543982B3691A805C076D8105B923612DB62E342A72E4FFA16005DEAC27867A8010B800C8D6E535ED58005C0AA2EEC68801A8815D902205683367E';
wwv_flow_imp.g_varchar2_table(23) := 'D01AB00018B4F94CF8580D5800C46AD0C60F5A03E500B8A966C3DA9347A8EC039213D3B56E45E2190C4003D80E1BF6C1979001DFC6C7D7AB6E1A00E4E47F8F6AD9B2C75B489E55F7013F2299EAD6CCA8D9A0C71AC076D8B00FBE840CF8363EFE3EE96C63';
wwv_flow_imp.g_varchar2_table(24) := 'E18400E0E0A33AD945C82A443EE143B6E63E20CB762BD6CC485A83BE6B00DB61C33EF81232E0DBF838DF54D853CADB980060892E1F47E0587506A681D16B005F7F8666B91D072FD3014B7455189806B2D1C0D535D39D0800D786059233B169A16B440EC9';
wwv_flow_imp.g_varchar2_table(25) := '9914C8C1F9465164C1195F7A645D8E0F9EA7B17CF2E7512A51A20A2790F19ACF9C92DF87959F3E3CE8CB18F20941035A4E26AA44066441266463AC0FA2033EF2B1AB68A11B1549011B76ED47F0478EF2C4B622005C79F951FCDBD4BB6BE4DE0403499424';
wwv_flow_imp.g_varchar2_table(26) := 'B091A8B0D2940FDC918A1CE7E1AF9F0FF2C0808FBE7D43B49E23E449878A0270F3B7876A58F67C4F959CFBF0A02F635808078DDD45C36527782303B22013B231D607D101B9FAF9D01EBA4999B61CDB61C3AEFD08FEF8B4D458806B1200859A951396E0A2';
wwv_flow_imp.g_varchar2_table(27) := '90AE1183F06BB6225674F15C517892D0F763741A3207381BAB565DBF9A0F526F1C33051F6840EB81A2B90E56FF87373220CB6A6DD8117CD00DCBB5C328CC8FC276D8B06B3F823F3E3D27615500CC751C49C5B69A47CA396F297AD7139681BDCC299C724A';
wwv_flow_imp.g_varchar2_table(28) := '972729AE4B557823C3B45F6C896ED0512C9DC18C67C283113681A038520232EB49F0AB59BE64E0D1DF35D483361549005A5C129589C19BB6727DCC796A1DC5C8D2FAD8DC02C0A5D0B355F955E1BE0BF010B5BB00872FD7BBEAB81E3E501D17F1A10F7DD5';
wwv_flow_imp.g_varchar2_table(29) := '7521B8F830085917F161CECC9DFED9A205C06472BCACFF3AE18B16E067D51E03176A306F2017F1F980FAD157453020EB223ECC99B9073319C3400B80315831A339A49EAA05406A8D1ABD4169C0026050E63261536BC00220B5468DDEA034600130287399';
wwv_flow_imp.g_varchar2_table(30) := 'B0A9355015000F15A37D7A80BCC1732D0190680603D000B6C3867DF0257C7A4E655501400661D265778D2489655DCB643299933D5505CFD27999745511AC43FAA84B1440A38E076DF441A61846D080561DD22796CF2219B11D36ECDA8FE08F4FCFC95B15';
wwv_flow_imp.g_varchar2_table(31) := '00731D475CB1B5E6F60BE19F17203BE6D4251858B6F0798D5EC4870C6BB16F639175111FE6CCDC2552BE905B00B896C4B26C8154E477941BD461612FA9FA4E81A5B6D3E369E9E2C3AFF1ADD4A18E076DB7541FFAAA28808BA68B378390155A75C89C993B';
wwv_flow_imp.g_varchar2_table(32) := 'FD67D1C567B67D54C7B90540EAA4AC2C5928BFB5C5812E9097547DF5464DDE404669689607C21B19CAF531E724298E193FA8B1550140565F5296778DA95368B3293AA58148607B8E8320D99CD99CE2680AAA821634CB83E17D64B932F23CB58EB061D77E';
wwv_flow_imp.g_varchar2_table(33) := '047F7C7A4E355501400E77364A748D7791C4185F4512E0C30C5F17A514BF9A67880E5F773F4B6519C83CC0F53EBFD0E536DFF30B279309F705873A06C21B1990C5D1EC55854EC89CC02239AF81359DB11D36ECDA8FE08F4FCF895A1500731D4752C1E509';
wwv_flow_imp.g_varchar2_table(34) := '7BA0C980B1BFE6C436425F3C48E350264F16BEA96368AA2800D7E66F510DBCC8F1CF77017CF93086B1D06047133445B200F0663718B22013B2F9F2A13FF340276CAE816681C9984F720B006C79BEFE639712AB259FA9635F648FEE6B34EE6061DD753ED7';
wwv_flow_imp.g_varchar2_table(35) := 'EDFC9A92177F47F5F5E5C318C642035A22E1046440166442365F3EF4E79B657CC002DD38998CB532C700C0965C0FF2F106AEA17DF11F22C0563F150B815F533E0871AE7AFAF2610C63A1A1E10B019990CD970FFDD185EB2FCC42A643EF906B000CDD6E26';
wwv_flow_imp.g_varchar2_table(36) := '7F220D58002452A4916947036D53B500685BC346BFD71AC83500C8874AD6623220F8221FBADBA2A155C9DB7337F57D9CD0970F63180B0D0D5F08C8846CBE7CE88F2EC899B490C9D83AE4180038CAB765C80384FB0520EF12784449C227B23288841358FB';
wwv_flow_imp.g_varchar2_table(37) := 'C373F51FAAF54B425F5E8C612CFCEAD6062103B220137D7DF9D01F5DA093CD256756905B009021F807B23059D4C8148C63F9E2F535FEE6429E99936271431D97819C403C5B7FAA1A3613120CBE7C18C3585653F27696BF5A225500565BF26D6564412664';
wwv_flow_imp.g_varchar2_table(38) := 'F3E5437F7441FE7C74038D0293319FE416003BCB98A44454110D5C9A6C2F2A371196815C9DA4352CD7879EF39DE0473A066FAA3AB21C238B0EA3811489E8289AD05008F438005A51A12BBD600CA35B6BB0EB171347AA4B68AB615EC0650E34CB83E08D0C';
wwv_flow_imp.g_varchar2_table(39) := 'E5FA9873D23AC68C1FD4D89000600C9712B7D54C314A0CDE4234F833AE6229E0CAAEC68B26DEA62E425E9E95854417E525C56C32614EB495FB4323940F34CBF4E01DCA0739987B99A64B47E53EA9CE99133E10E3438CC517F149972E6A65F51E206AFC42';
wwv_flow_imp.g_varchar2_table(40) := '7073F71B1D1F1E81BFD3586EDCDEAE1243AAE8044E1157B245931EBC0E5944A7AEC140BA73D6EBD4F1A0ED33E2405F15C180ACD0AA43E6CCDC8399440E64BBE43B44031FC017627C095FC427BDFFC2FB0600DBE83010374C6426E6062A14B9C9E3A9039F';
wwv_flow_imp.g_varchar2_table(41) := 'AB216BB374D109B09292397D58DCEBF0476A8F818B3598856B753C68E3E699BEEA1E0CC80AAD3A64CECC3D9849E4406C4E763A7C005F08F523C6E18BF8E4DE92C9B59948D56EF00D00FEDCB093C84D2DAC16815D377861D46CD4503480CDB17D4A79F14D';
wwv_flow_imp.g_varchar2_table(42) := '2E871AD3F40D00D69FB3C6BB3183861D8F69D82F8F6E79CCB20D9BE39B5E097F7D0300066F23580B0300000B1449444154967D5879A82209B0ABEA63492819912169809777D83E95CCF824BE898F36A6E91B0010E63A8BEB2D6E5EC93E108AEF1631D6E4';
wwv_flow_imp.g_varchar2_table(43) := '3F58E5DF85067969009B637B7C005F08F523C6E18BF824BEE9A5C59000E051DE61E2C21DFC1A95A148B492C39EB5E8226390A106B03D3E802F84FA11E3F0457C12DFF4526348007831B0CEA6813E6BC0026032E1650CCB19584B53873CAA8BB125BAE671';
wwv_flow_imp.g_varchar2_table(44) := '5D1D0FDA6E28265711C600B242AB0E9933738FE1937CECB209629465F3EC1B3F9247F112850DE575C84BA518D95920C7D75FEA78D0461FD7C2371FDEC80AAD3A64CECCDD87EEE8FAE61600AE7DAFBC91E465CC9D65DD3ABC99DA5DE0BAEE74F1E19937EB';
wwv_flow_imp.g_varchar2_table(45) := '76EA78D046F638FA9679B968BA78330E59A15587CC99B9D37F165D7C66DB47759C5B009C94D87AE4FD293F76637D0D1BCD4908958A1D899DA059A607EFD86513659A27962BC67C9E5B0090A63B7699C1D41F707412CCBA5EBC9018EBAFD38E094A6841B3';
wwv_flow_imp.g_varchar2_table(46) := '4C0ADE3F5725B2A8880674C307F6A2090D85406E01F04B19E60D42D28DA88802BEB0C88232572E9DA344F9D5421EF3A988027282BE4A14FE222C03BC910159CA6DBEE7FC25615DD6AF7D070EB97F8F0260296AE49A991599EC08DB531CBF2BFC9E27B2D2';
wwv_flow_imp.g_varchar2_table(47) := '124761C3CB111AEBFAF5850FDB19B754FB1E42B61BFAF261CCEE1A0B0D16B7B9AECDE18D0CC8824CC8E6CB071DA00B74C202396417DB3C20B700C0AA38124B6FF9857EB22A9EE4896452FB90C6F0CBACA2164E552B690D9FA6D2970F6376D3B8D3848B00';
wwv_flow_imp.g_varchar2_table(48) := '599009D97CF9A00374F17B3141372AF2811C03201FEBDA4C176A203400A6BB9ED8C8128A64EC753DEE5B28B475189506F0017C21D48F18C70B3D7CD25B312101C04B9A9788137F7259D11783FC89E7FA55E40C32D400B6C707627C88B1F822097EF14D2F';
wwv_flow_imp.g_varchar2_table(49) := '3586040037661F111732171308A1F852D16021133969C8D5A3D34C21CF69F3161ADBE303F842A81F310E5FC4275914E7A54DDF00609D0ACCF8B3E3C5A8A233FC796BC94D584517AB1EA906B039B6C707524C91B7DAAF142136C7AB6806BECCC918E03BA6';
wwv_flow_imp.g_varchar2_table(50) := '8924A4FD68D2CFFA8C470329D3C64CB5826F7AD165C0747093924772AE4FF534195BD58767D92CCCAA6AB7FA716A009B63FB94B3E3251E3EDA98A66F00F092E479A27EA0F06421CFB96390B79B5C52414FE40C32D20036E792E568CD39C687188B2F42EF';
wwv_flow_imp.g_varchar2_table(51) := 'F9A2858FAA6806BE0100551694F192E6613A61677F28B2858D1C43BC991529830C35B097E68C0FE00BA17EC4387C119FC43745B239840400D4D9800CB36375128AC7692C9F014AFD6750640D06A2016CCF2A577C21D48F18872FE293DED30E0D006F4681';
wwv_flow_imp.g_varchar2_table(52) := '03F873E69A18AFFE0349DA30D3C0AA06FA1E007CF48D9BEED9352AE426228DF7EA2CECC83410A881BE0700BFF4640CE089017F2AB9CBDF41736D23A992C81AE4A681BE0700D7885C1FF2FD5B5EC271C374888C44BD0A03D3409C063A0C8038C16DB46920';
wwv_flow_imp.g_varchar2_table(53) := '85062C005268D1680C5603160083359D099E42031600452DA28F2649A5EA124EF5B98DB931C7E2AC333E3365AC1A9FAF8BB03CF7B7AA62F3FC1891B931C707688E06D28005C064C20A57B20BE3F0DB49277C64810456EDE164D2156DE6C61C49B1C25E65';
wwv_flow_imp.g_varchar2_table(54) := '96106BCAF9424800B0F56C33A98CD4D6ACE10845B2106C253A1B08EB6043353E44F832211BB8532E9D663BDE0B44978C0ACC4B87590073DD453365F1183AD0612780EDF1017C21D48F18872FE293CCCB6B222101705F71204D07DFB2E205552892C28315';
wwv_flow_imp.g_varchar2_table(55) := '7C7C1CA34A7092C4923FFE2BE2C9F7AE3EA792C44D55FDD5EC0524AB65752B7F05BC068EA0337366EEBC5FE9623AD890742CF800BE10EA478CC317F1497CD36B2EBE0140C4EE270E442DCEC3EE9B18BCA968F1CB8E93EB700E36550D7B3D896E364E5F57';
wwv_flow_imp.g_varchar2_table(56) := 'E7DB0BF933AE221AA0BF753495E112B89B44BFB1B00BC0AE3B89313E10E3438CC517F1C92F8A1E3EAAA219F806C02D45F676C2D4C09F31174DB65EF254A5DC86E1CA7521E70480EB12E0672246A0B785AC5E148B029093B32D7ED0258D6381A14E701674';
wwv_flow_imp.g_varchar2_table(57) := 'A0C3A503973DA999F211477CB4315DDF0060211AF9231B3368D8D1E5100CE5CFA44B4697D3D2DF17ABE87C42845EDE229E2EDA65E093A56DF2FC6499E1CA3997992B87ED17331CD8C432739AE410DFC4471B13733957DD60B221B3388D75FC2C55669566';
wwv_flow_imp.g_varchar2_table(58) := '0C5E2266470A496BA1A237C0126CF287B685E4B1294F96BAB6F8419739957976798ECDB13D3E10E3438CC517F149324CE0A38DE7E51B0010DE4BFFB1380D663C4A0BC5B78A0E99019EA0920FA6A930C8480364B6C6F6F800BE10EA478CC317F149EFDD85';
wwv_flow_imp.g_varchar2_table(59) := '210140AEFA8365A8F70BDF15817C1990273A5E9B98C5CF603C1AC0F6F800BE10E34BF8223E896F7A69272400BC185867D3409F356001D067EB986CAD6B608901D0FA5C8C8169C05B031600DE2AB30163D28005C098AC6973F1D6800580B7CA6CC0983460';
wwv_flow_imp.g_varchar2_table(60) := '0130266BDA5CBC356001E0ADB2800136A4B71AB000E8AD694CB06568C00260195A361EBDD58005406F4D63822D43032101C01A7DBEE9C40796597F118A0769829F12B2865B8541861AC0F6F800BE10EA478CC317F1497CD34B8DBE01C0FA7C3E44C68A50';
wwv_flow_imp.g_varchar2_table(61) := '76653D5ADC42F1311ACB6EB0C354B6B1C946649706EC5663930E39EAEF2EAE5E9FE951FF26B0913A91B9E2852AB7117A1B5B63960E350C717E6C8F0FE00BA17EC4387C119FC437F1D11AB6C526DF0060EBD9CE22E1C544FDEB803DA92C89ADEBD3F7B65D';
wwv_flow_imp.g_varchar2_table(62) := '2520BBC8F657497609369CB3E756A749804400BB89D24F84FB08F9C57C8BCA210336C7F6A9E6804FE29BF868639ABE01C02F1BBF768D1934ECC8BECE865D7BD76D7349F4462149A7544CD0119FFEE10B889CA7C05B8808FBA6A7BADF58E7AF156E211C2A';
wwv_flow_imp.g_varchar2_table(63) := 'B46173F4E3F5C3E31B002748DBFCD962178E0E9300DBD8F8E54C42AC032238218A9F65BD894ED8C8AF2209408B4BA05962F01CF2A52336C7F6B3738A39C627F14DF65637A6E31B00106637FF17747084902D6DA1F8278DFFA9909C3CDCC4E8709050B5A7';
wwv_flow_imp.g_varchar2_table(64) := '3644B7550AE0CFBBAB2D250F17FD36EBBE23E2D81E1FC01742FD8871F8223EC947B345B6398428908F5370FDF644B1797C046EABB13B0AF71612BD2A0C32D20036C7F6F800BE10E34BF8223EC91727BD541812007C9CE2227139534876830A9C34A9E7AB';
wwv_flow_imp.g_varchar2_table(65) := '2F6C681629830C3580EDF18126BE52D7075FC427F14D2F358604801703EB6C1AE8B3062C00FA6C1D93AD750D5800B4AE6263D0670D5800C45BA7EABAB3AA3E846315ADAAFA101E598EB1008837FB7C2ABEC9E432913D4F980AC87A06CD323DD22996EBEC';
wwv_flow_imp.g_varchar2_table(66) := 'DC430316001ECAAAE8FA3BD5B3FCE17295004F3678B64DD227CE53E0A922C2A22F68EB706D80B11CE28F9C18866BC002205C77D3913CCFE64313EF550579EE3FA892B540FC6AEB3009400B9A64502305385FB4E185A45D0245AAD7022052812BC3C974BC';
wwv_flow_imp.g_varchar2_table(67) := 'BB8E791349AECAA3749CD239A1C50B4878BC42B44905C873711D1AC468C00220467BC5B15CA39399F8D26275D2332EB3C8F44C999470AEC42C0072B57C4BF31E1A590B80A159CCE44DAA010B80A4EA346243D38005C0D02C66F226D580054052751AB1A1';
wwv_flow_imp.g_varchar2_table(68) := '69C0026068163379936A2061002495CB88990696A2010B80A5A8D998F4550316007DB58CC9B5140D58002C45CDC6A4AF1AA80A00F2D09071AB6B2413DA060EE5DD46752964239B9B48CD01D9DD52D0AFA2514E718200D455F54F51CF9CE05346EA53D0C7';
wwv_flow_imp.g_varchar2_table(69) := '2665DAD80E1BA6A01F4B039F2ECB37A90A003E60CCF2DBAE715F494CA2291505D8416729646355A548CD01AB2E9BD39F4C7CFB924CABCC943A5F3A3EFDF728335C3967819D0F9DAABED86485E4FA02DB61C3AA31CBACC7A7D70B363DA80A8069BB95A681';
wwv_flow_imp.g_varchar2_table(70) := '516B8000986EB218F5446D72A6018706AE20000E773458956920070D1C4E00ACD14C492FC7CE261D1A980646AF017C9D748C6B088043355D52D33D5C2579D60D2713D341431D0CD467F0756E8A0FFD3F000000FFFFA7FA7C2E0000000649444154030036';
wwv_flow_imp.g_varchar2_table(71) := '90FB72D7725C850000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18825678265144585078)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122522Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D07D8354575C76F6254400503A26244C1DED04751449F68B097888A5D41D1C702B1067BEF256A34C66007BBB177C5822DB10BD6408CD890';
wwv_flow_imp.g_varchar2_table(2) := '18234D4444624093FF8FEFBB7CEFEEBBBB77EFCEECEEECCEFF7DCE79677776E694FF9C3D77EFDD9DD93F5DF8CF0818816C117002C876E8EDB811582C9C001C05462063049C00321E7CBB9E370278EF04000A66239029024E00990EBCDD360220E004000A';
wwv_flow_imp.g_varchar2_table(3) := '66239029024E00990EBCDDCE1B81A5F74E004B245C1A810C117002C870D0EDB2115822E004B044C2A511C8100127800C07DD2EE78DC046EF9D0036A2E16D239019024E00990DB8DD35021B117002D88886B78D40660838016436E076376F04CADE3B0194';
wwv_flow_imp.g_varchar2_table(4) := '11F1BE11C8080127808C06DBAE1A8132024E006544BC6F043242C00920A3C1B6AB792350E5BD1340152AAE33029920E00490C940DB4D235085801340152AAE33029920E00490C940DBCDBC11A8F3DE09A00E19D71B810C107002C86090EDA211A843C009';
wwv_flow_imp.g_varchar2_table(5) := 'A00E99FEEAFF44A2F7143F5EFC36F107C41FCC94F11D0C1E27FFF710838D0AD3500838010C85F4363DD7D6E6FBC4CF151F283E407CD74C19DFC1E079F21F4CAEA5D214198126714E004DE8C43FB6934412E83750B9BDD89F788B051880C5DE8BC5E2FDE2';
wwv_flow_imp.g_varchar2_table(6) := '1DC5A6811070021808E8AD6AFE46E5D5C5A66A04C0E6E1D5875CDB07024E007DA05A2FF3AFEB0FF9C856048CD1562086289C008640799B8ECB6DDBF4560D02C6A806982ED5ABFA3801AC4228EEF12ABCCF960A7E04E3932F277EBEFCC6771505AAC2A8D0';
wwv_flow_imp.g_varchar2_table(7) := 'C03BF11030D8F1B0EC2AE95C75FCA6F8A8CCF858F98BEF2A4C6321E0043016F2D66B041240C009208141B00946A00F04DAC87402688392DB18819922E00430D3816D708B31BF888E5731C774C8940B021EF03C469A937D5FB9FA0CF191E237D730C79EAE';
wwv_flow_imp.g_varchar2_table(8) := '63B4BDB04AD3CC11700298F900CBBD8B8B5F2066E2CDD3543E507CDF1AE6180980B6DCA6BB98DA992688405B939D00DA2235CD769CC0AF93E9CC3CDC4DE545C5AB8836B47DA21ABE5EBC83D83453049C00663AB072EBCFC44F15DF4FDC95E8FB64754696';
wwv_flow_imp.g_varchar2_table(9) := '0AD3DC10700298DB886EF3672F6D1E2C0EA5074980A7E90A84399213C01C47758B4FFBA9D8591C4AC8B845A810F71F0E8175343901AC83D6B4DA5E49E6F27D5E4581BEA5BD878AF964DFC8D47D47F5654206B2CAF5DE9F01024E003318C41A17B6533D8B';
wwv_flow_imp.g_varchar2_table(10) := '6DA828D0BBB57784B87C2B90BAF7AABE4CC408B2CAF5DE9F01020CEE0CDCB00B1508549DFC34FB03FF6AB8EE589DAC1A31AE9E0A024E00531929DB69045A20B06E13278075114BAB3D97E65796498F10BF55FC31F1C7B7F26D55C6F8E446C6ED246B2917';
wwv_flow_imp.g_varchar2_table(11) := '1DE84227BAB141874D5344C009608AA3B6C5E62BAAE03EFF57541E2EBEBF980545EEA812DE5D652CBA820421134607BAD089EEA7E818B6A8304D0D012780A98DD8167B39B99FA3CD27892F2D1E8BD0CD8342CF9601D8A4C23425049C00A6345A5B6C6592';
wwv_flow_imp.g_varchar2_table(12) := 'CEBDB5791F31937C54AC45E734B4FE9F86637587B081B905F752036C53611A03812E3A9D00BAA0366E9F4B493D9376B83FAFCDB5E8B76AFD79711D7D5607AAD6E9537523610B36615B63431F4C0B012780B4C6A38D35AC9D7FCD8A867F54DD99E25F57F0';
wwv_flow_imp.g_varchar2_table(13) := '69AAFBAE98CBF5EFABACA3E37480DF15BEA7923E55B2D0812E3529108F0B5FAD50E39DE4117002487E883619C8ABC5AAC6EDA36AF930319FC4655E3EF1C7EC3E3569A4D7E8E8B27D590EFBE840979A15089BB0AD50E99DB41160D0D2B6D0D69511608A6F';
wwv_flow_imp.g_varchar2_table(14) := 'B98EFD2FE91FF3F83FACB2CCDCBAFBB6EADBACC24B1B1E17A64F590EFBE8F8A26455116B0F54D5BBAE6704BA8A7702E88A5C7AFD788AEFFF06300B1DE81A409555F48D801340DF085BBE1148180127808407C7A61981BE117002E81B61CB37023D231022';
wwv_flow_imp.g_varchar2_table(15) := 'DE092004BD71FAF21DBC4AF3F6AA84B9275F661ED6E1997E356945C4057DCA72D84747DD3A8175B6B552EA46C323C0400FAFD51A4310E0FE7C557F9E0E7C960EB0F47799B9FFCF93836D1ED4D95532684B9FB21CF6D1812E35DB44A76EAA7145D2083801';
wwv_flow_imp.g_varchar2_table(16) := '243D3C95C6B16A4FD5E3BCD7556B56FF65E9EF32336FE0B53AFE5271D3029F3CCAFB32B5A12D7DCA72D84707BAD4AC40D8846D854AEFA48D801340DAE35365DDCF5459771F5E876A69471D3948DCB4BEDFAD759CE7FA2FA1725DC2A693D6EDE4F6610884';
wwv_flow_imp.g_varchar2_table(17) := 'F67602582C787885996C3714989C00B751D917F3FD59E283E80CF5E689BE2E97DB7CFA5F47FDEB8827F9685377BCAE1E5BB009DBEADAB4AD07A3BEF0472E63CC5833E68C7D5BBB66D92EE70470218DE84DC52F177F4DFC0DF1D1E24FF7C89791EC50E287';
wwv_flow_imp.g_varchar2_table(18) := 'B64F490897F327AB5C979AC61C4CD695870DD8824DD8B66EFF727B30EA730C1863C69A317F8594DF44DC84890ECF97B2755C43CA8A39BC3587D5702FA7FD757E2557F35189597DAF96058788793C97093ADA1C94D0F92169646E00B660937627418C3563';
wwv_flow_imp.g_varchar2_table(19) := 'FE60594B0C100BDACC8F724D007B68A80F1373C9AB6292C4B4DD8FC87226E8ECA3F24E62BEE32FF90BDA8F417CAA3385782997925581D0C9A4212606614B0C5D63C8E02B11B1404C8CA1BFB3CE181D734C0064FF1B09BC7DC56CAB982C71723265F70479';
wwv_flow_imp.g_varchar2_table(20) := 'C09A7DEF50B9E41F6B9BE32A82E94792B0944B7994F6D189EE583A24721422068885BD47D13EB2D21C1300B7BA9853DFE597EE9187CBEA7B42803B24AC65406CF4A4224DB13926007EE8DAA96638F864E3FB6C5F7C568DDE3EAAEB3E992FD9A0AC0E97AA';
wwv_flow_imp.g_varchar2_table(21) := '05401AC4041D02A3BEF047EE276BAC031762A3E6F03CAB734C008C649DDF6FD1415E8BDD17FF4AF287227EA4AB9AB67BA80CF88498DF0F363275FCA0A7430542C66F0A35FDEE80515FF8239725CDAB3C2026F83A50752CB9BA5806E1742C597390C3A298';
wwv_flow_imp.g_varchar2_table(22) := 'FCA0D517D77D2AF781DDF112CAD3792A0AC4E3C0B757CDFE25A66E17D59509192C1556AEEF6B1F8CFAC21FB9BFEFCBF029CA750298E2A8B5B399053E796AB05DEBFA5627EAD0E7C4A61922E00430C341DDEA128FE5BE40DB5CD5A8E8447CFA3F5F3D7F2E';
wwv_flow_imp.g_varchar2_table(23) := '36CD10012780190EEA0697DEA7ED47897F275E97B85CA62F6B00AEDBD7ED7B4420A66827809868A627EB3C99F426F1DDC4BCC6EB74953CB14742A8628ED1E6CB6A479F37AB44860AD31C11700298E3A8167DE2577C9ED3BF83AAEF297EAC98B5FFAB9863';
wwv_flow_imp.g_varchar2_table(24) := 'F7D071DAF23C3E7DB56B9A2B024E00731DD9CD7E712B8F477ADFA043FF58C31CE31162EEC5AB8969EE083801CC7D84EDDFAC1088ED8C13406C442DCF084C08012780090D964D3502B1117002888DA8E519810921E004501C2C7E057FBBAAFA6256DC95F8';
wwv_flow_imp.g_varchar2_table(25) := '02B1C436F3D1FBD2B994CB2D3D56F565C59D8201353B3C177F2B1D3B5CFC36F1524EAC129FF15DA20B0446B17454C9794C41DB8476FA3035C704C0AD2D26CA54E1F957AA3CB047BE986497E922AAE85B2F3E1D2C3DCF15738F7F2F954DC4BA809CA04C16';
wwv_flow_imp.g_varchar2_table(26) := '7A841AB208083262323EE3BBC417088C62EA29CBBA7941DBB61D6282D8D85693C1568E09E05C8DEB0FC53CF4A2223BBAA23C66292C4E726D56D255557B2F71D527B4AA6747DCF62426888DD939D7E4508E0980D966C708946F8973244E7CD6C3E32D3F75';
wwv_flow_imp.g_varchar2_table(27) := 'FEEFAC03B08AD913F1F04D7979AC986D15F9508E0980D1FD89FEB1922D8FBD6A332BE2538E197E3C0A5CE7382BFDC275C7E754CFFA03C4C24F5376AA2FDB724D00AC70F331817A57F1B7C5AC67CFCC3766CE557D0A50F7BF6AC7F129335F7BF8A47B8D7C';
wwv_flow_imp.g_varchar2_table(28) := 'C1271595C47A826FD41166142E719992DF8C55957FD4E1073E31E65C05DE457EB2121431A1CDBC28D704B01CE52F69831FA3EEAF9267E3F9918C4766B55B203E25F815FD79AA9D2AE3DBA3653F01BFEAD38E13057FF91DE0E9EA33359FB19D3193E90562';
wwv_flow_imp.g_varchar2_table(29) := '6CC181B166CCF7D3517E14559127E59E0018757E0062455D5E12F1225510242A0AC4A705B7C25EA8DAA932BE313390B7F8C88D954412F8BA5AF1E294A9F9CC58316632BF408C2D3830D68C39635F6890DB8E13406E236E7F2787409F063B01F489AE651B';
wwv_flow_imp.g_varchar2_table(30) := '81C4117002487C806C9E11E8130127803ED1B56C239038024E00890F90CDCB1B81BEBD7702E81B61CB3702092330460240E76EC2E4BA625EC8981A574D5091A9A61920C0D8A6166FD8C3B9C039C1B93128CC432B64AAE7D3E4210F6AC0DC974E8D737906';
wwv_flow_imp.g_varchar2_table(31) := '5EC3901D31B6A9C5DBD21ECE071EBAE2CD4D830DCC9009E02FE4D57BC52480DBAABCBE9869A9A971766F88D538E4428C6D6AF1863D37D000704EF08422EF72B8BCF61743F09009E09972E82FC54DB3D074D86404B24580738373842B814140183201B010';
wwv_flow_imp.g_varchar2_table(32) := 'C38506F1CA4A8CC07411E01C617ECA201E0C9900761FC4A37495EC28D3985CF33295AF13BFBE03FF83FA308985EFB2DA6CA44BEAE8FDC43CCBDF451F7DE88B0C644954236113B6616317DFD00736607489464DF33F38D8B9326402A85A5D86D74E313D33';
wwv_flow_imp.g_varchar2_table(33) := '2566124CEC10BBAC04F2320E829C19790FD5FE433A30EFEA638D3E4EB03DD4BF8EF80EF96A1D84BBEAC346F42183E9C3C894C84A6295217CC336FA74F10D7DD88A9C574A0B98A9884A8C6D4AB1862D9C036527772857F4B53F64026091C9B21F04CCF6AA';
wwv_flow_imp.g_varchar2_table(34) := '4C897F2E7B6212B79E1E2481ACABC727292BF2804517E6F2902B09DEDBF770C904371505DA4E7B8788EF2DDE494C9F2EBAE883ADC8E095629CA07C4795C80261C32355737731B685EA0323B00233B093D868C4D8626F4ACC39507610ECCB75BDEC0F9900';
wwv_flow_imp.g_varchar2_table(35) := '7A716002420968DEB7C7C914CB5C02844BE53FAF10883E4ED89863CB498D0F55FAA8431F365598D3A90AACD0872F9D04B8533B046206493B8DF9B5E253F3CA3DB8CDF7443E9DCBA2F974BB52B932C2FE5524035F5414081BB0A550196107CCAAF445106D';
wwv_flow_imp.g_varchar2_table(36) := '114B049C009648F457F2C9D8472033765572F9B4E67E776C8FB81C4767592E3654D597DBADBB8F5CB05BB7DFE4DB0FE9401F0337A4FD53D6F50319FF1CF19357F0B3749C750B5504D171EAFD6CF12A7DB4395EED42099BB17D953E30008B507DEEDF0101';
wwv_flow_imp.g_varchar2_table(37) := '27800EA045EAC2BA7CDC1978B1E43531B7D5629C909C642C85D5A48B63D874826C0A256CC676643631FAC022549FFB7740C009A00368EE6204E6828013C05C46D27ECC0281A19D7002181A71EB33020921E00490D060D814233034024E0043236E7D4620';
wwv_flow_imp.g_varchar2_table(38) := '2104C64E003714164F4A8C739F88A2E1982D31B6A9C51BE7C0F9808FF16FEC04C0DCE7BF93E329F1908F9FF2A04B5B164CC1D45617ED429521A32D87EA6ADB9FB14D29D6B08573A0ADFDD1DB8D9D00A23B342181CCAE63FAECAA997307CB271EC3551144';
wwv_flow_imp.g_varchar2_table(39) := '7BAAF703C4ABF46113B3FBD43488B019DBDBE8038B2065EEDC0D0127806EB8C5E8751D09E1C11CA6F6363153636FACB6A1C4B2533C74D3A48B63B461B9B6507DD88CEDC86C6230008B507DEEDF010127800EA0ADD98539E8E7AED9A74D73E4FEBEA2E11F';
wwv_flow_imp.g_varchar2_table(40) := '5407AB884AF850F50A6D6CC096A8CA24ACEE15DF3A343F1ACBA3B1130081931AC71E0B4E901FC7162A79CC6D3F536599CE51C54FC4B1091FF0A52C171BFEAB5C1961BF4E5FA8E8D4E20D7B427DEADC7FEC04C0049523647D4A7CB6EC89499C20ACF4FABB';
wwv_flow_imp.g_varchar2_table(41) := '88423911DF2D79BF1697097DEF5125ABCDA88842241556744676592036600B36958F75DD670CC0AC4A5F5799F4436E4AB1862D9C03D8360A8F9D003E2BAF1F9618FF4AF6C4244E8CB748E01BC5319200F2DE2959AF1557C9E3647D838EBD551C23092003';
wwv_flow_imp.g_varchar2_table(42) := '59474A1EB25514081B58320C9BB0AD70B0C30EF2C00A9D31E46D3481B14D2DDE380736DA38AE38A0670000100049444154E8F6D8096050674754C6E5FA53A47F3F31F7A1B9FDD33443AEEE18EBC6DF5A321E236EBACC3F49C71F2FBE8518BD5DF4D187BE';
wwv_flow_imp.g_varchar2_table(43) := 'D8FC04C941A68A4AC2166CC2366CACB3BFA91E7D60C38AB8C800B34A6573AB1CD31F2780E1D0FFAD541D237E8998136BD53CF9AAE32F52DF2F897F236EFAEEC8B1B3D4E66B624EAC2EFAE843DFAF4B06B290A9CD4AE21836611B3656D9BEAA0E7D6073AC';
wwv_flow_imp.g_varchar2_table(44) := '3480950A53DF083801F48DB0E51B81841170024878706C9A11E81B012780BE11B67C23D080C0D8879C00C61E01EB37022322E004302CF897923A1EB3BD89CA2ECCE3BC9751DFB6B4AB1AD2A78B2EFAD0171912D38AB08D3EF4EDC260B34B2B4D6E140501';
wwv_flow_imp.g_varchar2_table(45) := '27802830AE14C232DDFBAB15CFC4BF4925FC66955D987BFCBC148465B325A29258C29BB707D1165DF0BABAE80363F301D2824C1595842DBC89087DEBEA59B647178CBE3B490B2F075161EA130127803ED1DD229B29B1B7D426935EEEAAF27AE2AB8BAFD6';
wwv_flow_imp.g_varchar2_table(46) := '81F7521F4E0E56DB25A1548D1FFA6EAF76E8BBB3CAEB8ABBE8A30F7DEFA2FE4C10BA9D4A64AB281036A0079BB00D1BBBF8863EB021D9A00FCCAAF415944F792705DB19BC14EC98B30DBC2F8F29B1BCAD27464023E37202EC11625ECBA5A240CC793F5435';
wwv_flow_imp.g_varchar2_table(47) := 'BCAD87B6DA0C2264200B99C82E0BC306DE53B89B0ED05645102103AC781721D8050973E766049C009AF18971F4E212C2F7611551691F49AB3A41FAD2B7AFF45D4C5C265E0DC6D4DF727DE83E9855E90B95EBFE1B107002D800464F9BBCAA8B4FC9D8E277';
wwv_flow_imp.g_varchar2_table(48) := '904096B8525120BEAB7352162A23ECF0E95FF5BD9C84C3FB0823A8288800B32A7D8546DE094320F504C0AFC2FC48F479B9F92F817CB4FABF404C60A91894AA7066A2CBA9B2E2E4157C8A8E332147C526AA92CB25345C6E8C8C36FA68836DE5FEE8AA924B';
wwv_flow_imp.g_varchar2_table(49) := '7DB92DFBE8C3F655FE35E943CE90BCB394BD504CAC84C61B314BEC12C31259A454F6EA062F05FB6E25233E2566592926A4DC5CDB21BC9CA8F269C9E176958A518900E187AFCBCA8A2666692DA6C6AA59107D5CBDAF2A6ED2C5317EC03B4AED42099BB11D';
wwv_flow_imp.g_varchar2_table(50) := '994D0C066011AA2FB43F36121BCC49205642628DBEC42CB14B0C13CBA1F6F5D23FD504B09DBC3D48DCC73DE16B4A2EB7C854988CC005081013D7B8602FDE06314C2C13D3F1A44692947202E052BD0FFBF85EB9CEC32D91A0B698C4112026785E23B699C4';
wwv_flow_imp.g_varchar2_table(51) := '30BF9F3801AC812C534B7FA8F6E78963138B5AFC5B6CA196377904BE270F588C444554622D456299983E5F704AFFC84E29D9B3B485C5277918E45F55C19253CC0F0F65E6B49F2679FC30F351952623B011818F6887D8204642636DD99FD8FDA2E4B23A32';
wwv_flow_imp.g_varchar2_table(52) := '31ADCDB428D504004AAC08C39373FC9072982A1E1BC8AC58833CE4F4716521F34C1346809594890D62E4D1F283ED102666895D9EA4249625323D4A390180169FDA6466164FE439F310E639F32F4B28ABD7A83019814D08101BC408B112126BF42566895D';
wwv_flow_imp.g_varchar2_table(53) := 'AE0636294AA522F504900A4EB6C30844412035214E00E38D084FEC313D985F9F57718C5F9099B1D7461F6D681B8A0C36AFF28BE3E8038B507DEEDF010127800EA045EAB2B7E4BC4BCC033A4DCC7AFCACEEABA6417453F5E67D014DBA38C61AFF3C87AFE6';
wwv_flow_imp.g_varchar2_table(54) := '4184CDD88ECC260603B00852E6CEDD107002E886DBBABDF86E59EEC3F3FA2C9E71231D6862DAF030899A6DA2AA5F96D105971BF3982BB29A74718C363C8351EE8F4CB85C5F65036DB01959C86C62DA80057D367295AE8DC7BD1D010127800820AE10C1AF';
wwv_flow_imp.g_varchar2_table(55) := 'CBDC0E5AD16CEDC33CAF5F756F9977EAF1E3E9DA025774C0077C2937C3066C29D787EED7E90B953B5AFF14153B01F43F2AFC0ACC2FCB313FD19085CCAA131D7DACCF4F9B58DE210B7DC82ECBC486AFA892362AA210B2F0A14A5F140516B2050127802D38';
wwv_flow_imp.g_varchar2_table(56) := 'F4F99F138465AEFE434A086C1541848C9F49C2ABC47C4AAA2810EFD3E3555DBC5C93B685831D7690F123F5E35564C8D66681B0E170D59C28A6AD8A20420658712B0DEC8284B97333024E00CDF8C438CA77649E687CA484F1BEBBEFABE4C110DEA8BB2E9F';
wwv_flow_imp.g_varchar2_table(57) := 'A0BEFC48C76A409FD476D52539FA3EA363E87B874A4EA675F52CDBD31719E8E31D76C896C8026103B6A00FDBB071D97F9D124CC086F728A20FCCAAF415947B270C01278030FCDAF6E63B32535E1FA50EAC75C70A3AACE8B32EF3DEBC43248313AEE9B975';
wwv_flow_imp.g_varchar2_table(58) := 'E6E233B59513895FE3D7D5B36C4F5F6490509029D595842DD8846DD8B8ECBF4E092660C353785F90163053310F4AD50B2780E146864B5B2E697F2995BFE8C8F4E547B7369F8CE8A32D7D42F5214B26371236C5D007466DF4351AE383ED1070026887935B';
wwv_flow_imp.g_varchar2_table(59) := '19815922308504C0C2905714FA7B04F2E5D59FB50054988C402D02C408B1121A6F579006625745BA94720260314D666331779FDB4CDC860A615E73FD550DC5CDC426235085004B791123C44A48ACD11739AC3170981411CB2AD2A35413008B4FB296FE73';
wwv_flow_imp.g_varchar2_table(60) := '05D99E62D6C18FC137942C1E3DE5E515DA3419810B10E02528EFD41E311223D690C1FB0D88E1074B2E31AD222D4A350170E9C4428A94B111E391D83BC4166A79934780982036623BC2B2E97DC572B0ADA92600B2251CEC608D80642FC96AEC7575FF08F4';
wwv_flow_imp.g_varchar2_table(61) := '792E20BBCF78EE8C0E8675EEDC63471E01E57B14F79763ABE156150FB5C4966B79D34680982036A27A2161C430B14C4C6B372D4A3501701F98C75959179027C478B9042F99086164FC40F0F3CEB96FA83419818D0810130F53053142AC84C41A7D9141EC';
wwv_flow_imp.g_varchar2_table(62) := 'BE42328965625A9B6951AA0900947812ECA9DA602AE96D558632DFC3F88187659A24CE64043621F061D51023BC182434DEE84FEC3E4D32896515E951CA096089164FB2713BE5BBAA08E1E3D53FC9CB30D9654A070162E4389913126BF42566895D894A97';
wwv_flow_imp.g_varchar2_table(63) := 'A6900086468FF9F4659D3CE6CAA49772BDF78D402D025338E004B0799498B4C309BF3CC27737A6DFF23CFDB2CEA5119805024E009B87F1A5AA3A5A7C8698CBC163553217FE24952623302B049C00360F278B5F1CAAEA078A1F24E6AE013F0E7125A05D93';
wwv_flow_imp.g_varchar2_table(64) := '11980F024E009BC792CB7F56B7E16E01AFB8E6071D7FFFDF8C936B1A1098CA212780A98C94ED34023D20E004D003A8166904A6828013C05446CA761A811E107002E801D40E22999CC4F4515E92C1936873667CDC4D18E1B38AF9D1943C72021877B47694';
wwv_flow_imp.g_varchar2_table(65) := 'FA03C5DF12739BF19B2A8F9939E3E37FCA474A7C0703ED9AC640C009600CD4B7E86499B3576AF36D6216A3C8E913115FAF27BFF19DC932BB6BDB340202A927800B0B139669BA87CA7B06F201EA7F1DF12A0213DA3D410D9F2566121175DA8C462C12C1F2';
wwv_flow_imp.g_varchar2_table(66) := 'D7F795C424E789CBAE2108DFB90A008B3E167FE9E203634FAC84C61B314BEC12C35DEC18A44FECC08E6934AF8DE6EDB21F90D023C4BC292684DF2819AC6FFF0C95049E8A4ABAA66AB9FFCF524ECC46E4651E2C4FD6D4475DD6223EFDF6570FBF167BB100';
wwv_flow_imp.g_varchar2_table(67) := '833B0B0BAE82548C468CEF33A59D1821563AC59AFA2FFB11B3C42E314C2CEB507A946A02C0AEC30417CB34EDA272A7087C49C9B88C18B9B75759472488ABEBE0766282931FE70ED236EBBBA90826020DF9B1E4051B948000B00013B019CB1C62ED6FA59C';
wwv_flow_imp.g_varchar2_table(68) := '18215662C41CB18BDCC7482E31AD222D4AD22841C40F43D752C909A8222AED2069CCD356514955C7088A4B57B65EBF9265A77755B70B89CBC4ABB178A34F9FCC64A7D3CB8AB54F1DC7FAD48D6C5E3726750502133E25AB302934EC71873B2FC4466C15C4';
wwv_flow_imp.g_varchar2_table(69) := '305F2B2E115B700C79A92600165060224E1FCFDFF3582F2FB4ACC3AFEA3B1B38C50CCE3A59FC28C61C843E994F23DED957F69FD56B38D6A76E64F3AEC1B26EF64902635E011013C406B6C464629858AE9A661E534F27590476A78E3D773A47F2F9EE54F5';
wwv_flow_imp.g_varchar2_table(70) := '365A1D0A22A6F67E3048427F9DF1F7BF25BE4F3E55F2F954525120EA38D6A76E64F7B1EE5EC1918E3B1F523F62434537AAE94562798F8E11D32AD2A2541300283119E7EEDAF884F8DFC55C3A86302BB4F0C3CC6D248BFBD02A4C1B1018F3D3778319A36D';
wwv_flow_imp.g_varchar2_table(71) := 'F21C06CB781D290B88959058A32F314BEC7237E0A3929924A59C0000EC73FA7747F1B5C5FC3A1FC2FCF2CED4DEAACB5F89371981055F83B8E343AC84C41A7D89596297184E16DAD41340B2C0D930233007049C00E6308AF6617404A66A8013C05447CE76';
wwv_flow_imp.g_varchar2_table(72) := '1B81080838014400D1228CC05411700298EAC8D96E23100101278008205A44DE084CD9FB2113401F0F594C197BDB6E04EA1018EC5C193201F070449DC3AE370246601B02839D2B4E00DB40F79611480581EF0C658813C050485BCF2C11E8C9A9595E010C';
wwv_flow_imp.g_varchar2_table(73) := '96D57A1A148B3502432130CB04309853438D92F518819E1018EC5C19F22B00D3224F5E13B0ABAAFDE3C52F16BF24905FA4FEBCEB2FC98519649B697C04880D628458098D376296D8BDCA9A6E718E70AEACD9AD5BF321130016AE93D9583F9E35D5589BEF';
wwv_flow_imp.g_varchar2_table(74) := 'B1EACC525E21FC38C96015DEB7AB64A055CC8658C98625B5761EC0A33DA4631F314B66A9980D11132C56428C102B2B634D9E37B52166895DD69EB8BEDAB6A541BF2AA79A00581DE61021C6B260DBAB643F9459E987D5786F2179AC33A06216743379C11A';
wwv_flow_imp.g_varchar2_table(75) := 'FB24D75F6A9B4FAF3E56D86599B6D749FE4FC45F1713A8B756391762DEFE7E728618215642E38DFEC42E317CA8E4B2AF6225318E2B1BC56A307402F8424BC3C9C6ACC3D7877D17950D7C8AA9983CB1E8E45BE4C535C41081FB286D1C2C8E492C16C23CF9';
wwv_flow_imp.g_varchar2_table(76) := 'FB4B28DB2A1660C8E219D8B098C11FFE101BB15D2186896562BA8DECAFB56914AB0DC6C592D546CE516AD4666DB4B3D58E853BFA58A38DF5067F24F9732016B2DCB3E4085F07F6555DCC6046D6DE92C9279A8A0BE80ADA5AE7F256CD93256282D8886D20';
wwv_flow_imp.g_varchar2_table(77) := '31CC4223AC0BB84A36E7C6C757358A797CE804C07A702C93B4CA078078B51A31282AA2D227258DF5DF544C9EB82C2F3BC127344B9AB7BDE42CF7AFDA471649A0EA58950D55ED52AFE3BB3AB1D1CACE351A11C3AF55FB73C5AB8873E3AC558D621E1F3A01';
wwv_flow_imp.g_varchar2_table(78) := '60FBBBF8D7828F571B3EC9B8A4FD7B6DBF3C90F96E7C37C9B88FB84D3656B3E489933D792327622031416C1023C44A68BC11B38F94EFC4F0712ADB50DB73A38DAC566DC648006DBF06E000B7430ED706AFE9E297D910E62D3F64F93F4A9EC9085421406C';
wwv_flow_imp.g_varchar2_table(79) := '1023C44A48ACD197987D959410C32A561257BD835EFE63D1180980AF01BC8002FD66236004B620C03931E8E53F6AC74800E89DCB77707C316786404FEE0E7EF98F1F6325800F4B396F4C51613202D923C0E5FFFBC74061AC04C01B62DE3A86C3D6690412';
wwv_flow_imp.g_varchar2_table(80) := '44E09DB269F0CB7FE95C8C9500D0FD1CFD3B4F6CEA8E40D35554D3B12E1AEBE4D5D577D191631FCE81678FE5F89809E0A772FA2B625377047E51D19513921F5A633ED4C27BED9089ECB24A1E7229D7CD76BF07C738074EEC416E2B916326000CFC0CFFCC';
wwv_flow_imp.g_varchar2_table(81) := '9D11F8AA7A7E59CCA7888AF389AF571FD3164FA0A98842C8E2779B8D0987075B8E96F463C5A6EE088061F7DE813DC74E00A37CEF09C42CA5EEDCB7E6B9FF37C828922927E913B5DDC7CB28492ACC7E7B9FE4F32CC73FA97CB0B8EAAA40D5A69608F00052';
wwv_flow_imp.g_varchar2_table(82) := 'CBA6F19B8D9D00E27B949FC41FCB651E3C611E3BCC94563EB1551D954836EF954474C04FD1B6DFB22C10A64C4E00531EBD6DB6F31D9DEFE2676CABEA6D8B4FAC53249D5B572AF2A1397AEA0430C751B54F46A025024E002D817233233047049C00E638AA';
wwv_flow_imp.g_varchar2_table(83) := 'F6C908B444C009A025506E96370273F5DE0960AE236BBF8C400B049C005A80E4264660AE083801CC7564ED9711A357432D000003014944415468818013400B90DC246F04E6ECBD13C09C47D7BE198115083801AC00C8878DC09C11700298F3E8DA3723B0';
wwv_flow_imp.g_varchar2_table(84) := '0281A9260096C3DE5DBEDD527CC7C85C7EF985C42F78D5D64DB41143D71D2487F7F8A9D844D7564D0C1D4D326E251DF8A3A240D471ACA96F8C63BC2AABA078EB0E98804D0C1D8C15FE6C157D41C1D8AE255F3D57B507335E90424CAAF9B468AA098029A8';
wwv_flow_imp.g_varchar2_table(85) := 'CC44633E3C27CDDB053B4B2AC7E04B4956997653C54BC431E43365F7019255450F57650C1D4D32C08AE4295505A28E634D7D631CE39D8F05C55B771EA8126C62E860AC1833892C10631B433E32C06A2F4967418F935412932AA645534D004B949905F752';
wwv_flow_imp.g_varchar2_table(86) := 'ED5C59CCCB1CD8D7A6C908F4860031F6624927E628D9D7EE3469EA0960893AD36079990359FF4055326F9D69ABDA3419816004882516423948922E2B7EB2989853316D9A4B02588EC299DAF867F1BDC45CEEDD49E51162E6AFAB301981D6089CA296478A';
wwv_flow_imp.g_varchar2_table(87) := 'F717EF22BEA798C556581B519BF3A0B925808DA3C2A2987C577BA82AB932B89ACA7B8BB96CFBB4CA53C526230002C40231416CF07E407E9024661EA2832C8536DBC54FE69C0034761710CB59FD507BEF1173F9763B9597167395B08F4A069DAF105C2DF0';
wwv_flow_imp.g_varchar2_table(88) := 'D622F36231570C1863C6FA3E8BC5E2C6E25DC5C40231416CBC5BFB2788891915F3A65C1240DD289EAE03C78819747E44E46AE100ED9B178BB962C01833D68CF93734D6A789B3A5DC1340B6036FC79B11C8E5A813402E236D3F8D4005024E0015A0B8CA08';
wwv_flow_imp.g_varchar2_table(89) := 'E4828013402E236D3F8D4005024E0015A0B82A6F0472F2DE0920A7D1B6AF46A0848013400910EF1A819C107002C869B4EDAB112821E0045002C4BB7923909BF74E00B98DB8FD35021B107002D80086378D406E083801E436E2F6D7086C40C009600318DE';
wwv_flow_imp.g_varchar2_table(90) := 'CC1B811CBD7702C871D4EDB311D88A8013C056205C18811C117002C871D4EDB311D88A8013C056205CE48D40AEDE3B01E43AF2F6DB080801270081603202B922E00490EBC8DB6F2320049C000482296F0472F6DE0920E7D1B7EFD923E004907D0818809C';
wwv_flow_imp.g_varchar2_table(91) := '117002C879F4ED7BF6083801641F02790390BBF7FF0F0000FFFFD645F8BA000000064944415403001215D2A6DA2434A10000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18825678579908585078)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122523Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000003FD494441547801AC9749E84D6D1CC7EFFBF64EBD2224194211362C94211694322492716558907163D81816CA4A16868590C80625241B43511425B62285322F44';
wwv_flow_imp.g_varchar2_table(2) := 'C83C7E3EC7F99D9E7BEEFFDEFFBDFFE8F73DBFE9FB7C9FE77FCE739E7BFC5969FEDF36A88F9B845CA8ED5B2B0B1883DC5C3024C1506291D6E4C8A5D5BEB5B200D53E70799F6302FE518EF1F8A8CB216DCE5A5D40A84E225803B6E630B646DA9A756401FF';
wwv_flow_imp.g_varchar2_table(3) := '32C53170199CCF71056FCD1E61F3D69105FC91CBBFC07BBB3FE28D7195E81937857A0B7013DD4721DDF563C935275C45B010CCCCB1006FCD1E61456E3A562D35ED55A1DE0246C03A09D2DD7D9D3CEC38C12EB0096C04C6D60833939B8E554BCDAC995EEA';
wwv_flow_imp.g_varchar2_table(4) := '2D40CE172EB1B3F5DFC95353342639953688E53A26A016E55AABB780DB50BDA56FF1AF728CC6BBF122D7AFA3E66D7F88371772E41A0B35D452135AB5D55B8022ABA11E06DD7274C2770591EBB7907F02FD81B99023D758A8A1969AD0AACD056CA774BA0D';
wwv_flow_imp.g_varchar2_table(5) := 'ACA5F6BB4CADB6E6D8EE025630CB8E3670965A987FC94B12F10E3F0D1C01AF73185BB32747388676666AB535C70A17F00D8A07491977A8877526F03977C7EF03BD401FE0112C8CADD99323D731503253ABAC6FFECD057481E28ACBD84F3DEC2B413FE0F3';
wwv_flow_imp.g_varchar2_table(6) := '9C823777E171149B0B7B72E49A43CD4CADB2BE791717F0068AAB2E6339F5B0A704F380AFDB06FC09B0121CCCE12EB7664F8E5CC7D0CE4CADB2BEF91B179031DAB9FC477F09589A63207E2A88DCBF7C5092CB750CA5C6160BF00CBF09F56E0E772D61613D';
wwv_flow_imp.g_varchar2_table(7) := '897CB77D637CEF8D6753F3AF15738847017B72EC3B8652616A86BE7339672516F003DA44302EC71E7CD9FEA6D01BF88ECB27ACF4E02270156BF6E4C8B59642CDD0772EF9C50224BA17FC55139F2D247846ECD1EB6FFE136277F0017C1CC5C6D6ECC991EB';
wwv_flow_imp.g_varchar2_table(8) := '182885A9A9B670AEAC1177C0DB7181CAD51C9E0D84857996AF275B06ECDDC31F05E6C2D89A3D73B98E815298BDD0772EE72CEE80B7C39D1A9BCA8F0BCFF062A5854CC7033543DFB99CB35880B20FB8F883213CE1CE906F06A90D20F123B411E440AB3135';
wwv_flow_imp.g_varchar2_table(9) := 'D516CE9511D247E06D8CF3DA8F0D77F2E28CF5EB321D770D78D004E2932C72BD1CB950AB4CCDD077AE9A47B0137A9CD7178907839120CCA3D633DFAF9DC05E9A2272BD1CB9B4AA4CCDD077AE9A477003BA3B59A4A718E5DF626AAA2D9C2B134D1FC16E2A';
wwv_flow_imp.g_varchar2_table(10) := 'BE4E621671231B46B32F08F3EC1F1E491DAFA6DAC2B96A1EC13906066E113732F78647717026132C028D4CCDD0D7D73C027FB33D4084476623B1AA9D0CD15DED0484754D4DB5857365C4780459D2C2E510DC4B20CCD83720F2A67D2CE07F4694E1FF72FE';
wwv_flow_imp.g_varchar2_table(11) := '4AEAE55CFE3FF48571C0DF81B4A68663A39FFAEC207A8E88B7A70C3F3666243DBFFFE727B97C4F34611CF05BC0FF2F64397C35D48A3CF5CF7F020000FFFFA238B8CA00000006494441540300CC9033B6A183F1A90000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18825677727860585073)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122521Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801EC9D07BC2445B5C6671F49404014549228A008022A283E45454514254A5231A0A228A0604040518C4836004AE6A98020391B00455082E41C24';
wwv_flow_imp.g_varchar2_table(2) := '4B4E82E4B0ECFBBE5DEE7277F78699EA54E1BFBFF36DF5CC74559DF3AFBE5D677A3AFC4F8F7F108000042000010814478004A0B821CF22E0098A62416905694D6903D48341AF75066B68BB5B5E5A40F236A90283402A047A3D128074C60A4F7BBD950461';
wwv_flow_imp.g_varchar2_table(3) := '1FE976E90EE942E944E948D48341AF75062769BBBB48BA53BA55DA5BFA5F098340120448009218A6E29D5C5A044E96FE2E7D49F2B77F151804A221B0883CD9423A573A5E5A52C220102D013B4602600A286602EBCBB90BA4D5250C022910585B4EFAC8C0';
wwv_flow_imp.g_varchar2_table(4) := '7A2A3108444B800420DAA1C13111F88AE443DB73A8C42090128139E5EC51D2E6120681C8084C718704600A07FE8F8FC007E5D2CFA409120681140978DBDD538E73F44A10B0F8089000C4372678D4EBCD27084748334918045226E06DF8B70AE065120681';
wwv_flow_imp.g_varchar2_table(5) := '28080C394102304482322602DF95332F913008E440E0A50A627B09834054044800A21A0E9C1181F9259FE9AF02834036047C2E808F6C65131081A44AE005BF49005E60C1521C04D6921BB34A18047222309B82F14DAB54601088830009401CE380172F10';
wwv_flow_imp.g_varchar2_table(6) := 'E084A91758B0941701DF3930AF8888263902C31D2601184E83E518087003951846011F9A20C0B6DD0455DA0C264002108C8E8A0D11F07DD51B6A9A6621D02901EE60D9297E3AEFF5A6654002302D0F5E754F80B3FFBB1F033C6886C0BC6AD6F706508141';
wwv_flow_imp.g_varchar2_table(7) := 'A07B022400DD8F011E4C4B801DE4B43C7805010840A01602D3374202303D115EA74CC0B75E45BD1E0C9A6590F2DF08BE43602A011280A92858489CC024F9BF21EAC1A0D738036D661804522330A3BF24003332E11D08400002108040F6044800B21F6202';
wwv_flow_imp.g_varchar2_table(8) := '840004200081D2098C143F09C04854780F0210800004209039011280CC0798F02000010840A0740223C74F02303217DE85000420000108644D800420EBE125380840000210289DC068F193008C4686F72100010840000219132001C87870090D02108000';
wwv_flow_imp.g_varchar2_table(9) := '044A27307AFC2400A3B3E11308400002108040B6044800B21D5A02830004200081D2098C153F09C05874F80C02108000042090290112804C0796B02000010840A0740263C74F0230361F3E850004200001086449800420CB612528084C2630AFFE5FACA2';
wwv_flow_imp.g_varchar2_table(10) := 'DC869AC0200081D4088CE72F09C07884F81C02E9105851AEEE28FD437A587A50BAB1A2DCC6436AE3EFD28FA5B74818042090010112800C0691108A2630B3A2DF58BA523A5FFAB6F40E696EA92E9B470DAD246D2F5D205D2E7D429A49C220008128098CEF';
wwv_flow_imp.g_varchar2_table(11) := '1409C0F88C580302B11278BB1CBB48FAB5F406A92D5B561D1D2AFD537AAB84410002091220014870D070B978021344603BE92C6939A92B5B5E1DFBE786AFABC42000818808F4E30A09403F94580702F110F0DFECBE726727C987FF55746AB3A8F73DA4BD';
wwv_flow_imp.g_varchar2_table(12) := '2427262A300840200502DE99A4E0273E4200025308FC54C5A6526CF66539E4244005060108744BA0BFDE4900FAE3C45A1088818027D9AD627064141FB6D0FB9B481804209000011280040609172120023EC96F7795B19B8F02BC367627F10F023913E837';
wwv_flow_imp.g_varchar2_table(13) := '3612807E49B11E04BA25F04B753F9B14BBCD2E07F7943008402072022400910F10EE4140045695569652B1D5E4E8BB240C0210689D40FF1D9200F4CF8A3521D01581142FB34BD1E7AEC6977E21D0090112804EB0D32904FA26B080D6F411001549D987E5';
wwv_flow_imp.g_varchar2_table(14) := 'EDCB240C02106891C0205D91000C428B7521D03E011F4E4FF196BBB30A558A898BDCC620500601128032C69928D32590F26FE9EF4E173B9E4320450283F94C0230182FD68640DB0496AAD8E123AA7F53A05C575583ADAAEFC11D53110210189F0009C0F8';
wwv_flow_imp.g_varchar2_table(15) := '8C5803025D1258A442E787A9EEFCD2E2817AB9EA1D25855A15DF43FBA41E048A253068E024008312637D08B44BE0C515BAFB96EA3E2585DA93AAB8BD146A738556A41E0420D03C011280E619D30304AA10F0C37642EB3F105A7158BDFB872D0FBA58C5F7';
wwv_flow_imp.g_varchar2_table(16) := '41FB627D08144E60F0F049000667460D08400002108040F2044800921F4202800004200081D20984C44F0210428D3A10800004200081C4099000243E80B80F0108400002A513088B9F04208C1BB52000010840000249132001487AF8701E02108000044A';
wwv_flow_imp.g_varchar2_table(17) := '27101A3F09402839EA41209CC02B55D5B7F85D5DE506E328C5E70028A4C9E6E7018C179F1998C52B26D7E03F0840A035022400ADA1A6A38209CCA6D8D7950E97EE96EE92CE924E968E1C47AEAB5592B439E5F578F19981590C71F99DEA7C4472F2A00283';
wwv_flow_imp.g_varchar2_table(18) := '0004C62610FE290940383B6A42603C02B36B856F4AB74AC7481F93F8A62B08A3988F8C7C5C9F1D2B99D9D62A5F2461108040030448001A804A93101081F74B5749BB4A4CFA8230A03919D84D75AE94569130084060040255DE2201A8428FBA109891C004';
wwv_flow_imp.g_varchar2_table(19) := 'BDF57DE94FD26B24AC1A013FC8E8CF6A6207C96C55601080401D044800EAA0481B109842C07F4FFB6BF17B92975560351030CB1FA89D7D25920041C020308540B5FFFD8755AD056A43000243047EA685CF4B5833043655B3BB4B18042050030112801A20';
wwv_flow_imp.g_varchar2_table(20) := 'D2040444E0B3D29612D62C81AFABF94F4B18048A2750150009405582D48740AFB7A820EC25C56413E5CCD352557BB26A030DD4FFA5DA5C58C22000810A0448002AC0A32A049E27B0874A5FF3AE221AF3BD069EADC19B27D4C603524CF6623963E62A3008';
wwv_flow_imp.g_varchar2_table(21) := '944AA07ADC2400D519D242D9049653F8BEC98F8AA8ECF41ABD39A3C6B6EA6ACA77185CB6AEC6680702251220012871D489B94E025F5163B19D993E493EED27D5653EFBBEAEB6EA6AC7CCB7A8AB31DA81406A04EAF09704A00E8AB4512A01DFA6D7DF4463';
wwv_flow_imp.g_varchar2_table(22) := '8BFFD772E83CA92EFBAB1A3A428ACD369443DC32581030088410200108A1461D084C21F03615F34831996F9AB379030EF9F2C6BF35D06E9526E755E515250C028511A8275C12807A38D24A9904568A28ECC7E48B6F40E4A7EB3571E6BEDBFF80FAD851F2';
wwv_flow_imp.g_varchar2_table(23) := '89812AA2B07744E1054E402041022400090E1A2E474360C98A9E5CAFFA474B4705EAF7AAB7A7F419E955D20FA53ACEFC5733239A2F2BFC8E3E715F9BA874DFF621D47FC7FE2FB553C55E5FA5327521902281BA7C2601A88B24ED9448C00FAC098DDB93DF';
wwv_flow_imp.g_varchar2_table(24) := '1B54D9E710F8B7EC10F9E9825BA98DDF480F4A6DD9FDEAE860C97DDB8710DF5DC7B12FAD76CC4245902D10548B4A1080408F04808D0002E1047C3D7A686D9FA5DFE4B7F550BFDAAE670655AE3298AB6D87E90F02DD12A8AF771280FA58D252790466AA10';
wwv_flow_imp.g_varchar2_table(25) := 'F2A315EAE656B50A8B2A63901B47E281C04004480006C2C5CA10800004200081EE08D4D93309409D34690B021080000420900801128044060A372100010840A07402F5C64F02502F4F5A8300042000010824418004208961C2490840000210289D40DDF1';
wwv_flow_imp.g_varchar2_table(26) := '9300D44D94F62000010840000209102001486090701102108000044A27507FFC2400F533A54508400002108040F4044800A21F221C840004200081D20934113F0940135469130210800004201039011280C80708F72000010840A07402CDC44F02D00C57';
wwv_flow_imp.g_varchar2_table(27) := '5A85000420000108444D800420EAE1C1B9C8094CAAE0DF2C15EAE656B50A8B2A63901B47E2C9944053619100344596764B20F05885203F54A16E6E553F5C21A02A4F12ACD02D5521903E011280F4C79008BA23F04085AEB753DD43A56D2BE86BAABB91F4';
wwv_flow_imp.g_varchar2_table(28) := '3AA96D5B4A1D7E42B20F5562384C6D98858A20BB3FA8169520900C81E61C2501688E2D2DE74FE0FA0A214E505D4FA03BAB0CD54F55D713E8752A2F9656939AB635D5C1E5D2D5921318FB10EABFEB3981310B35176455C620A8432A412017022400B98C24';
wwv_flow_imp.g_varchar2_table(29) := '717441E09F5D743A4A9F6FD6FBA74A3B4A4D9827694FF627AAF165A5582CA6318885097E6444A0C95048009AA44BDBB913384B013E2DC5629EA4BF2D67BE21D56DDF51833EDCAF221A7B4A9E9C2D611080400001128000685481C0F304FEABD2DFBA5544';
wwv_flow_imp.g_varchar2_table(30) := '653F91378B4B7599CF31D8A1AEC66A6CE764B5F5888441205302CD864502D02C5F5ACF9FC0BE118638AB7CDA42AACBFCCD7FE6BA1AABB19D18D9D7181E4D41A059022400CDF2A5F5FC09FC4921C6F83B74954BEB14D23456675BD3345CE1C5B9AA7BBA84';
wwv_flow_imp.g_varchar2_table(31) := '41205B024D074602D03461DA2F81C09715E473524CB6989CA9E3EFDB37E959586DC56466EDA31231F9842F10488E401D3B88E4828EDC61EF7017928F6F93D69236284C0A3739BB401EEF21C564DE8E5E5483432F561BB1ED2776914FE74B295A697FCFDE';
wwv_flow_imp.g_varchar2_table(32) := '87ADA881F23E2DC69F91E45AACD6BC5FB1FD61371F719C3DCC2EB77C3DF4EF55FAC626B7AB3C4F3A413AB23029DC246D7B797D8684354BE034351FE3098972AB2FF3DF78497FD3DE873959F33ECD37CE3A42943E26D5919CAA19AC0A0112802AF4AAD735';
wwv_flow_imp.g_varchar2_table(33) := '7F7F23B84A4DF9862E1BAA9C5BC2D223F08C5CFE88E49D9D0AAC01024E8AD753BBCF4A587A04BC6FFBA8DC3E5CFA97B4A93493848D40A08DB73C01B5D10F7DCC48E0157ACBD791FBDBC06BB48CA54FC097A4BD5F619C2261F5123849CD99AD196B114B9C';
wwv_flow_imp.g_varchar2_table(34) := '80CF2BD94F31F8A8D97C2AB10E08900074005D5D2E27F9CCF19554627911F0C369FCBBE7B714966F54A302AB40E049D5F5B306D65659E5E14BAA8E45486065F9E47DE11B54625309B4B34002D00EE7E1BD2CA817BE79CCAB54627912F059EABECFBD6F99';
wwv_flow_imp.g_varchar2_table(35) := '7B8C42F46B15D80004CCEC28ADBF8CB4AB3449C2F224E023A03EB7C3270AE61961A4519100B43B3073A83BDFBD8C0D5D200A30FFCEB9BEE2F4B79BDD54DE2C616313B8491FFB2CFFA555FA9C981B5562F9135840213A59E6E4C05EAF2716AD1809402B98';
wwv_flow_imp.g_varchar2_table(36) := 'A776B29D96FCD01615584104AE55ACDB48BE36DFDF76D6D5B2EFD7BF934A4F7663C927176AB524CD87EFC78ACD9FF9B6C566E113285FAD287D0B63FF9DF809877A891544C0973E737F8716079C04A03DD82F57575F95B0B209DCA2F08F93FC643D3FB8C7';
wwv_flow_imp.g_varchar2_table(37) := '93DD584A39017842718E159B3FF3E5936671BCD6BD55C2CA26E07367BCAF2C98427BA19300B4C7FAEBEA6A2E098300042000819109781FB9F9C81FF16EDD044800EA263A7A7B3EC439FAA77C0201084000022650F4BED200DA1209403BA4975237AF9330';
wwv_flow_imp.g_varchar2_table(38) := '0840000210189B802F93F6F93263AFC5A7950990005446D85703CBF7B5162B41000210808009BCC9FF95A7762326016887B7AFFD6FA7277A81000420903E01F6992D8C2109400B90D5856FFBAB028300042000813E08F8BE007DAC96D72A6D474302D00E';
wwv_flow_imp.g_varchar2_table(39) := 'F1D92A747389EAFA8E68A548E162C308F88E78C35E0EB4E8A74C0E546184957DF3AA11DEEEEBAD2ABEF7D541822B95F277EC382FAB303E55F69915BA2DAB2A0940FCE37D905CF41DD14A909F14A670B16104FC6C81612F075ADC78A0B5475EF95323BFDD';
wwv_flow_imp.g_varchar2_table(40) := 'D7BB557CEFAB8304572AE1EF7828C643121C9F0E5D6EBF6B1280F699D32304062170CF202B4FB7EEEE7AFD27C94F5D0BD19F55D7772B5411647707D5A2120420D00A0112805630D30904820954B925EE04F5FA0169D340ADAA7A55AC8AEF55FAA52E0492';
wwv_flow_imp.g_varchar2_table(41) := '23D085C324005D50A74F08F44FE0BCFE578D6ECD73A3F30887200081A9044800A6A26001025112F061F8281D1BC7293FBE3755DFC7098D8F215037816EDA2301E8863BBD42A05F025769C54BA5D4CC472E6E4ACD69FC8540490448004A1A6D624D95C0DE';
wwv_flow_imp.g_varchar2_table(42) := '093A9EA2CF0962C6E51C08741503094057E4E91702FD13F0E554297D9BBE56A1FD5EC220007496F86F00001000494441548188099000443C38B80681E7093CAD722B2915FB8A1C9D28611080C0B804BA5B8104A03BF6F40C8141089CAC950F9462B73DE5';
wwv_flow_imp.g_varchar2_table(43) := 'E0E912060108444E800420F201C23D080C23B0A596CF9162B533E5D83612060108F449A0CBD54800BAA44FDF10188CC0135A7D4DE9422936F359FFEBC8A9A7240C021048800009400283848B101846E0412DBF4F3A458AC58E9323EF971E96300840A06F';
wwv_flow_imp.g_varchar2_table(44) := '02DDAE4802D02D7F7A874008814754C94702BEA1F231A92BB31FFE59623D39D0A51FEA1E83000406254002302831D687401C047CA7BD9FCA95A5A583A567A4B6CC5725ECAFCE9692F692EC8B0A0C0210188440D7EB9200743D02F40F816A046E53F54DA4';
wwv_flow_imp.g_varchar2_table(45) := '574BDF94FE2135910C78D23F5B6DFBA8C3A22ABF28DD2161108040A2044800121D38DC86C07404EED46B3FFEF79D2A5F222D2FAD2B3939F0641D22D7751B6ECB6DBE5BEDF9A8038FF915080C02D508745F9B04A0FB31C00308D44DE071357889E493F3FC';
wwv_flow_imp.g_varchar2_table(46) := 'F3800FD787C875DD86DBF215086A128300047221400290CB4812070420000108244320064749006218057C80000420000108B44C8004A065E074070108400002A51388237E128038C6012F20000108400002AD1220016815379D410002108040E9046289';
wwv_flow_imp.g_varchar2_table(47) := '9F04209691C00F084000021080408B0448005A844D571080000420503A8178E2270188672CF004021080000420D01A011280D650D3110420000108944E20A6F84900621A0D7C81000420000108B4448004A025D074030108400002A513882B7E1280B8C6';
wwv_flow_imp.g_varchar2_table(48) := '036F20000108400002AD1020016805339D400002108040E904628B9F0420B61199D19F55F5D6B60549A1065B499CA68F751B51FB8CF42E6926A90B73BFEF56C7F6C3FE4CEF632EAF1562B0E5C2A09F38DE1B4C898AAD1020016805736F62856ED656DD9D';
wwv_flow_imp.g_varchar2_table(49) := '0BD14E8A33D426A862299C468A7317C5FF7FD259D25DD2D6D2AC521BE67E3CE1BBDFBFA943FB617F46F23387F71462B0E5107FBF31AC1E4CA957699F59A1DB26ABC6D73609403B63724F3BDDD00B042613985FFFEF269D26CD2B35692F55E3A74B9EF0DD';
wwv_flow_imp.g_varchar2_table(50) := 'AF1631085426C03EB332C2F11B2001189F511D6BF89B511DEDD006040621E0C3F147A9C2CC5213E6768F51C3FED941050681DA08DC595B4B913414A31B2400ED8CCA75ED74432F109881C02A7AE7735213F60535FA1E098340DD04D867D64D7484F64800';
wwv_flow_imp.g_varchar2_table(51) := '4680D2C05BFF549BF74A1804BA20E0F3019AE8B7A9769BF09536D32170BB5CBD54CAC8E20C8504A09D71F1498027B5D315BD40600602AFD53B968ADAECF56A6931098340DD044E50839324AC610224000D031ED6FC2FB4FC9C8441A00B02754FD675B7D7';
wwv_flow_imp.g_varchar2_table(52) := '0513FA8C8F80BF2CFD2A3EB7AA79146B6D1280F646E60A7575A88441A00B02BE46BFCE7E7DD9659DEDD116044CE020FD77B584B5408004A005C8C3BAD85ECBF7491804DA26704BCD1DDE56737B3407015F2DB5437E18E28D8804A0DDB1F1C92D1F51974F';
wwv_flow_imp.g_varchar2_table(53) := '491804DA2270873ABA46AAD3AE5463DE9E556010A84CE049B5B0AEC4F5FF82D0969100B445FA857EFEA1C5CF4A24018280B542E0E7EAA5EE93AADCDEDE6A17834055029EFC3FA546CE93B2B398032201E866740E57B7BE3E9B6C5720B046095CACD69B9A';
wwv_flow_imp.g_varchar2_table(54) := 'A8F754DB5CAE25085830011FF6F7BD248E0E6E818AC104480082D155AEE823016F562B3EE9C567BE6A118340AD047C98DECF92F037AC5A1B7EBEB12754AE255D2561101884C0B35A797FC9FBC0F355666A71874502D0EDF838FBFDBC5C78A3B4AFC4ED2F';
wwv_flow_imp.g_varchar2_table(55) := '0501AB4CC03F2FFD54ADBC436AFA77FA7FAB0FF7E39F19DCAF5E6210189580CF47D9479F2E277D51E228A820746524005D919FB65F7F83DA4C6F2D2CAD207D42FA86E407AC0CE956BD0EB5235471A81DCA5E2F57063E837A438DF52B246F3F8FA86CC3FE';
wwv_flow_imp.g_varchar2_table(56) := 'AB4EBE26BD52FAA8643F72655C4A5CDE67682883CCFBAAE19CBC2D7A9FB6BC5A5B44DA5CAAFBA45435199FC5EE1109405C23E413ABFC9BEDEFE496BFC16DA77248376A39D40E50C5A176287BBD5C19FC48E3EC87FF3CACB20B7B489D1E29D98F5C199712';
wwv_flow_imp.g_varchar2_table(57) := '97F7191ACA20F3BE6A3827EFCBBC4FBB44AD791FA7028B810009400CA3800F1080000420901981F8C32101887F8CF010021080000420503B011280DA91D2200420000108944E2085F849005218257C84000420000108D44C8004A066A034070108400002';
wwv_flow_imp.g_varchar2_table(58) := 'A51348237E128034C6092F21000108400002B5122001A815278D410002108040E90452899F04209591C24F084000021080408D0448006A8449531080000420503A8174E227014867ACF014021080000420501B011280DA50D2100420000108944E20A5F8';
wwv_flow_imp.g_varchar2_table(59) := '4900521A2D7C85000420000108D4448004A0269034030108400002A513482B7E1280B4C60B6F21000108400002B5102001A805238D400002108040E904528B9F0420B511C35F084000021080400D0448006A8048131080000420503A81F4E22701486FCC';
wwv_flow_imp.g_varchar2_table(60) := 'F0180210800004205099000940658434000108400002A5134831FE90046016053A2FEAB5CDC0DC851D83000420103501EFABDADE3FD25FAF67EE036D18FFD3C7DA6FD63A3F90CE97EE969E961E44BDB619BC4BCC3108400002B113F0BEAAEDFD63C7FDB5';
wwv_flow_imp.g_varchar2_table(61) := '3E1F8C14EF53DA303C477BAEFEBE96DF248D696325002BAAE65FA58BA51D24BF7E854A0C0210800004200081B8084C903B9EA33D577F4FCB9748E748EF9446B49112001F46F8A5D63E4F7A8F844100021080000420300A8188DF7EBB7C3B4BDA4B9A599A';
wwv_flow_imp.g_varchar2_table(62) := 'C6A64F005EA24FFF286D2E399B50814100021080000420902801CFE55F96EF9EDBE75139D586270033E9DDC3A4F749180420000108400002E31248668555E4E951D2D42301C31380DDF5C187250C0210800004200081FC08ACAA90769626DB5002B09C5E';
wwv_flow_imp.g_varchar2_table(63) := '6D29611080000420000108F44920C1D5BE269F275F21309400ECA2378696B5884100021080000420902101CFF53B3A2E2F2CAE85D5240C0210800004200081BE0924BBA27FEE7F8D138075920D01C721000108400002100821B0B613009F141052993A10';
wwv_flow_imp.g_varchar2_table(64) := '8000042000816209241EF8079C002C9A7810B89F178197299CCF49474B974BBEB5E548B7BDECE2BDFBE5CF5592AFA7FD86CAC5A4B66C2175B4857492748574AFD4058391FAB42FF6E944F9E47B882CA8B22DF3186CADCE3C261E1B8FD1483E76F19EB7DD';
wwv_flow_imp.g_varchar2_table(65) := 'CBE4DB91D2C6D24B250C02B11058D409409B7FACB1048E1FF11198532EF99913B7A83C485A4F5A56F2AD2D6379D0879393A5E5D307255F36FB2F95FF272D2C3565F3A9E13DA59BA4BDA535A465A4F9A558B8D817FBB4A67CF25D446F56F953A9C9096F11';
wwv_flow_imp.g_varchar2_table(66) := 'B5FF1BC963B09B4A8F89C7C663140B176FBBBEC26A03F9F76BC9DBF67755CE2161C913483E80859C00CC9D7C1804903A014FA0672B083F73E2C52A5331FFFD7C46CEFA5B5E1337D07AA3DABE50FA8A34AB948AD9575F6A642ECB37E0B41F367391DAFDB4';
wwv_flow_imp.g_varchar2_table(67) := 'E431509184CD252F7F289D2BBD5AC220D0258179AAFEF1FC47DEA35EAF0D06CF8A758EE61DA127393F7532D5F8FC4DD787A0EBBC9AE6AD82F10F29E59FE89CD89DA918265F73ACB20EF3D9CB7F51433EEAA02249F351013FA4E555497A3FBED3DE57B5B1';
wwv_flow_imp.g_varchar2_table(68) := '4FECB40F6188A57FB91266551300EFF850AFD706033FD0216C94E3ADE543A127C83D1F2A5591B4F9215A47288225A5AAF64A3570BCE49F4554246DFED6EB31AE63C27EBD481C2E4DBD95A99653B505E4B8B9CCAE3237F3BEAA8D7D227DF426CF3DC1DB4F';
wwv_flow_imp.g_varchar2_table(69) := 'D50420B8632A4240047C229DBF0D69310BF383367E5E43243F511B399D9BE36FBA7E3EB9C2AA643E1722A79F2C7D6464AB4A44A8DC11813CBA2501C8631C538CC293A5CFDE4ED1F7B17CF6CF00FE8D7AAC75C6FAEC75FAD0BF6DABC8CABEA068FC738F8A';
wwv_flow_imp.g_varchar2_table(70) := '205B59B572BC64795BC5955352A370B054089000A43252F9F9E9B3D973DDF17DBCC2707D4C75FD644E1559997F2259BF42441B55A81B73553F82DDE735C4EC23BE4D472097972400B98C647A717C283D97FBF678F5BED79C71C59CB95499E8AAD49D9172';
wwv_flow_imp.g_varchar2_table(71) := '5CEFE41C5B5CA4F1661A022400D3E0E0458B049668B1AFB6BBF235EAB305769A33173F7724048B59FA4648217553A813CA2585D832F4319F904800F219CBD422C9E1CCFFD1984FD0073E935FC540E6C3E43EB379A04A09ADEC33DFCD665097CD32A4DEA0';
wwv_flow_imp.g_varchar2_table(72) := 'FD74B57E4E277C76C5907E030890000440A34A2D04FCADAE9686226D24243E270039FF4D86C617C232D2CD6244B7728F6FC4A0537D3327BF73DED9E4344EC402010840000210A895000940AD38690C0210800004F2259057642400798D27D14000021080';
wwv_flow_imp.g_varchar2_table(73) := '0004FA224002D01726568A8CC052F2C727CB35AD1BD54F2AF6841C6D9AC750FB13D5572AE6311CF2BBC9D2DB642A4CF03390406ED54800721BD132E2795861B6F1208E9426BA492D31317775958C790CED73D3F236990C141C8580099000980282000420';
wwv_flow_imp.g_varchar2_table(74) := '0001088C4920BF0F4900F21B5322820004200001088C4B8004605C44AC000108400002A513C8317E12801C47959820000108400002E31020011807101F430002108040E904F28C9F0420CF71252A084000021080C098044800C6C4C3871080000420503A';
wwv_flow_imp.g_varchar2_table(75) := '815CE32701C87564890B021080000420300601128031E0F0110420000108944E20DFF84900F21D5B22830004200001088C4A80046054347C000108400002A513C8397E12809C4797D820000108400002A310200118050C6F430002108040E904F28E9F04';
wwv_flow_imp.g_varchar2_table(76) := '20EFF1253A084000021080C08804480046C4C29B1080000420503A81DCE3AF9A00CC2B40A8D76B83C12C628D41000210889D80F7556DEC13E963CADC13BC3D544D001E54CFA8D76B83C1BBC41A83000420103B01EFABDAD82736DC472BFBF53A6208DE1E';
wwv_flow_imp.g_varchar2_table(77) := 'AA2600C11D53110210800004200081EE08900074C79E9E210001084020520225B8450250C2281323042000010840603A022400D301E1651204E691976D9C003493FA49C526C8D13698B80F75958C790CED73D3F236990C141C1D8F40199F93009431CEB9';
wwv_flow_imp.g_varchar2_table(78) := '45798D02AAE3E499F1DA585CFDA462B3CBD1F1E2A9EB734FAAEA2E09F318D615F758ED789B4C02084E4260880009C010094A08400002108040AFD72B0502094029234D9C108000042000816104480086C1601102108000044A27504EFC2400E58C756C91';
wwv_flow_imp.g_varchar2_table(79) := '3E159B4335FB1312DF33F2619294AB39BEE702820B6119D04D6755728FAF33B0743C36011280B1F9F0697304EE6EAEE9CE5BF6241E129F27C8FB3BF7BE3907EE52D366A3622033CB907A0375D2E1CA7776D8375D4F47A0A4972400258D765CB1DE18973B';
wwv_flow_imp.g_varchar2_table(80) := 'B57AF36FB516FAAD2E672EA1B199E51D629AAB8572C9950771B5448004A025D074330381536778279F374EAE104ACE5C4EA9C0A54ADD0ADDB65235E7D85A01585F2765B5440250D678C714AD777AFF8DC9A11A7D39A2425B47AAEE442937F3CF1BC75408';
wwv_flow_imp.g_varchar2_table(81) := 'AA0AD30ADD365EF561F5F007098340EB04AA2600FF91C7A8D76B83C1B3629D9379C7B76B4E013D1F8B77E6673FBF1C525CA74ABF9572B30314D02D52A89DA98AA749B9D94E0A28B744D8FBAA36F689B5F7A1B148B14DB91D6655138097AA5BD4EBB5C1E0';
wwv_flow_imp.g_varchar2_table(82) := '2CB1CECD7EA6802E97723127355FAD21986FAB8D9C4E0CBB4DF17C4FAA6A5BAA819C26CB4B15CF9E526EE67D551BFB44FA9832F7046F3F551380E08EA9080111785C5A5BBA574ADDFCADE7E30AE27AA9AAF9ACF775D488F9A848DA1E95F71EE33AAE6EB8';
wwv_flow_imp.g_varchar2_table(83) := '566D6D2499B58AA4CD636C2E4F241D4556CE97170C094079631E5BC43E2CFC763975A594AAF91EF1ABC9791FFED80DB617000010004944415457518B5DA056DE21DD2AA56AB7CBF1F748FEA6ABA216F3B923ABA8A5FBA454CD47BD3CB63E32926A0CF89D';
wwv_flow_imp.g_varchar2_table(84) := '010112800C063183106E520C4E027EA4F2312915F34D6DFC7BFD1BE5F01952DD76991A7C8BB4B7E493E85424614FCBCB5F48E67291CABACD8798CDE51035EC31509184F968887F0AF1B67E73121E17E46489A192009438EA71C6EC9DE30E72EDD5D217A4';
wwv_flow_imp.g_varchar2_table(85) := 'E3A4AB241F3A8EE9C41C1F86F6C968DBC8B7D7491B4BFEA6ABA21173FC5F51CB8B49FE0DDC97095EADE507A458B8D817FBE46FE743BEFA5C081F19919B8D98BF3D7F5A2D2F296D2B9D2E796C6261623F7C94C247B67CF5C326F2CFDBF60F55E6F0D38EC2';
wwv_flow_imp.g_varchar2_table(86) := 'C05227400290FA08E6E7BF27BC0315D6BAD232D2FC524C27FB2C257F3E20ED26B579031727197BA9CFD5A53748F349B170B12FF6690DF9E4A3156DDEB4E706F5E9AB495655E9B1898589FD78B97C5A565A5F3A5872A2A4028B8F40991E91009439EE440D';
wwv_flow_imp.g_varchar2_table(87) := '010840000285132001287C03207C08400002A51328357E128052479EB82100010840A068022400450F3FC143000210289D40B9F19300943BF6440E0108400002051320012878F0091D02108040E9044A8E9F04A0E4D1277608400002102896000940B143';
wwv_flow_imp.g_varchar2_table(88) := '4FE0108000044A275076FC2400658F3FD1430002108040A10448000A1D78C286000420503A81D2E32701287D0B207E0840000210289200094091C34ED0108000044A2740FC24006C0310800004200081020990001438E8840C010840A07402C4DFEB9100';
wwv_flow_imp.g_varchar2_table(89) := 'B015C44C607E39B78CB442247A93FC58409A49EACA26A8E3574ACB49B170B12FF6C9BEC9AD4ECC63E2B1F118C5C2C5DBEE7C9DD0A05308F4418004A00F48ACD22A81D5D5DB61D27FA47BA52BA40B23D125F2E34EE931E954E973D2AC52D3E6BFD38FA993';
wwv_flow_imp.g_varchar2_table(90) := '63A547A4BBA4CBA458B8D817FB64DF8E965F1B4AF65945A366F69BA8078F85C7C463E3318A858BB7DDFBE4DF03D26FA50F4A58140470C204DAF823753F0802E311F0B7C8B3B5D2C9D246D24BA4586D3639F621E920E96A694DA9295B590D7B823D5CE547';
wwv_flow_imp.g_varchar2_table(91) := 'A439A558CDBEAD27E77E2F5D24AD2435656BABE16BA403258F85C7448B51DA4BE5D5A7A43F4A674A4B4B18043A274002D0F910E08008AC23FD437AA7949A2D2E874F90BE27D57D087C33B579BAE443C92A92321F8AFF8B3CFEBC54A799F10FD4E071D262';
wwv_flow_imp.g_varchar2_table(92) := '526AE684EE3C39DD64D2A8E6B1B108F0D9140224005338F07F77045655D747492F9652354F4ADF97F3DB4B75D967D4D0AFA499A554CD87E80F90F33E4CAFA216DB41AD5866AEC5246D2E79ED9F7356518941A0330224009DA1A763115844F2E1E2942739';
wwv_flow_imp.g_varchar2_table(93) := '8530D57EA8251F8E5651C9DEA2DAFB49B9D8DE0AE48D52555B430DF8488B8AE4CDDBFC918A6221096B95009D0D112001182241D905811FA9D379A55CCCDF4A7FA660BC7357116CBBAAA6BF3DABC8C25EA428CC4545B099A9B9987170239155F4B901FE39';
wwv_flow_imp.g_varchar2_table(94) := '2332B770A714022400A58C747C712E2A973E29E5664B2AA00DA450F36FC4EF0DAD1C713DC7F4B60AFE7D547597927233FFD4E32361B9C5156D3C38F6020112801758B0D42E019FF8E76BB7DBEDB59DDED6ADD08DCFA2AF503DEAAABE8A21D4C15CB9F86F';
wwv_flow_imp.g_varchar2_table(95) := 'C057348472A11E048209900004A3A3624502EFAB583FE6EA554EEE82CBC8230B9791B9F0EE4004587938011280E134586E9340CE873D7D5E43E8550D3973098D6D6E6D98F348B95A28975C7910574B0448005A024D373310F06D7E677833A3375E11108B';
wwv_flow_imp.g_varchar2_table(96) := '6F66E3C92EA06A12553CE621FB1CD74B22C0402743B695C0AECAAE46F4D31208F9639CB6055E41208C807FFB0CAB9946AD90F842EAA441638A97DEDF849CC59F3B97DCE39B32FAFC1F1D01FF4146E7140E41000210800004EA25406BD313882D01F0B703';
wwv_flow_imp.g_varchar2_table(97) := '5F2EB49B1CF5DDE14E53998A4E94AFBE739B2F019B43CB180420000108D443C0FB543F646A1F35E77D6D2AF382FDF45CE67B58786EF31CA710E2B0981200DFFDCC4FF1F2FDC3B7169EF5A5F72724DFDBDBF76EF7DDBDFE25BFFD401B155803042E579B7E';
wwv_flow_imp.g_varchar2_table(98) := 'D84CD37A52FDA462CFC9D1A6790CB53F497DA5621EC321BF9B2CBD4DA6C224353F7DBF901BE4B4EF1AFA2595DED70E3C37A85E57753C977D53FD7B6EBB40E50A5214164B02B0BA689C252D2FE5600B2A88C324EEF225080DD86A6AD30963D3BA4DFDA462';
wwv_flow_imp.g_varchar2_table(99) := '9EE89AE631D4BE938D54B8780C87FC6EB2F436990A9394FCF4DD420F91C30B483998277F3FF5F4C33104134302E03BA71D2118B34BB9991F5AF2F1DC82221E084000022D10F037FFEFD4D34F54AD78AEF39CF7DAAEBD8A2101D8451042AF9956D5E86D77';
wwv_flow_imp.g_varchar2_table(100) := '79E8DFAF54601080000420D00701EF33FDBB791FAB26B98A9F08E9B9AF53E7BB4E007CFDAB7FCFE91442C39DFBE780280EF7341C27CD43000210A88B80E785DA0EFBD7E554CDEDF816D0AFACB9CD819AEB3A01F0834FBAF6612060812BFBECCFC0AA5483';
wwv_flow_imp.g_varchar2_table(101) := '000420501C81F71410B1E7BE777619A71DE8B2FFDC33BC21B60B0D2D504200021080C0B8046A9C1BC6EDABCB153A9D1BBA4E001EEF927C8B7D3FDA625F7405010840207502A5CC0D8F7539505D2700D775197C8B7D9712678B48E90A0210C898406DFBCC';
wwv_flow_imp.g_varchar2_table(102) := 'C819751A67D709C0391A9CFBA4DCED84DC03243E08400002351238BEC6B6626DEA1E39E639504537D67502F0ACC2DE59CAD93CF97397B09C4798D8200081BA095CA6064F962A5AD4D577927713A5CEACEB04C081EFA9FFCE9072B4BB14D497250C021080';
wwv_flow_imp.g_varchar2_table(103) := '00040623B0A956BF43CAD14E5750BF943AB51812001F055857144E9172323F0FE07D0AE87609830004200081C108F80BD4AAAAE2E700A818DC22ADE1231B9EF33CF775EA620C098001FC57FFAD257D42BA584AD96E95F3DF95DE2C5D2B61108000042010';
wwv_flow_imp.g_varchar2_table(104) := '46E01A557B93E4DBAAFBB90E5A4CD6FC302A3F24CE73DD233144114B0260167EC0C8EFB4E08725F8EE482B69D9D95F2AF24D8D9690CFAF967E2C757A7987FAC720000108E440C0FB523F14685105E3FBE77B5FDBC7BCD08B651DCF659ED3FC30AAC315C3';
wwv_flow_imp.g_varchar2_table(105) := '24290A8B2901180E64E8EC48FF4E928AFC34C31B8707C1320420000108D44AC03F07785F9BCABC603F7DA6BFE7B45A41D4D158AC09401DB1D1060420000108144A80B0C7274002303E23D6800004200001086447800420BB21252008400002A51320FE7E';
wwv_flow_imp.g_varchar2_table(106) := '089000F44389752000010840000299112001C86C40090702108040E90488BF3F022400FD71622D0840000210804056044800B21A4E8281000420503A01E2EF97000940BFA4582F26026BCA990D5AD05CEA23159B498EB6C1C47D4C505FA998C7D03E372D';
wwv_flow_imp.g_varchar2_table(107) := '6F93A930C14F084C264002301903FF2546603FF97B640B5A407DA462B3C9D13698B88F94F61B1E43FBDCB4BC4D6A08B0AE09D07FFF0452FA43EE3F2AD68400042000010840604C02240063E2E14308400002104887009E0E42800460105AAC0B01084000';
wwv_flow_imp.g_varchar2_table(108) := '0210C88400094026039960188F26E8F3202EFB11D783ACEF759FD47FCF48B9DAE30A6CA234A845F1E8D4419D1E60FD906D6580E6CB5995480723400230182FD6AE8FC09DF535155D4BCFCAA3FBA441ED395588F2A961F2AB0EBB23B0917B552F247150B5';
wwv_flow_imp.g_varchar2_table(109) := '242CE7BF852406A0542749004A1DF9EEE3BEA27B171AF3E02AB51C3A61E5CC253436B3BC5A4C73B5502EB9F2088C8B6A83122001189418EBD745E0C4BA1A8AB09DE32BF8943397132A70A952B742B7AD54CD39B65600D24918011280306ED4AA4EE04C35';
wwv_flow_imp.g_varchar2_table(110) := '7183949B3DAD807E2B859AAF577F28B472C4F5EE976F5512A3DFA87E8EE7475CAFB8CE92B08A04A83E38011280C19951A31E02DE996F5F4F5351B5B2AFBCB9490AB5075571172937DB51015539D9CDC9E2FE6A2337FB9602F239232A3008B44B8004A05D';
wwv_flow_imp.g_varchar2_table(111) := 'DEF4362D017FDB3D78DAB7927EE5DFA9BF5B43047BA88DBF4AB9D8690A646FA9AA79B2CCE9F7721F293AB62A14EA9B000A21400210428D3A7512D8428DFD454ADD6E5100AB4B55BEE5AAFA64F3D1910DB594C36477A9E2F8A854C7B75C5F0EB8B6DABA55';
wwv_flow_imp.g_varchar2_table(112) := '4ADD9C146D9A7A10F89F36011280B4C72F07EF7DEDFB6A0AC487CE5524693E9F614579EE2440452DE6DFCC57524B299F207694FC7FA7F41FA92EBB590D99F5D92A53B449727A2FE9C3D253125603019A0823400210C68D5AF512F037DECDD4E43B244FA6';
wwv_flow_imp.g_varchar2_table(113) := 'DE496A317ABB561E7E4C7A9F1472DDBFAA8D69FEC6BB8ED6F091858B55A66217C85127753E8AF19896EB36DF17606535BA91E4315011BDF91E0F67C8CBFF95B694EA3822A266300884132001086747CDFA099CAB26DF2B2D22F9F0A84F863B44CBFE2619';
wwv_flow_imp.g_varchar2_table(114) := '830E972F3F97BE2A2D232D25FD5E6A3A6139557DAC202D217D59F2390287A98C81897DB02FF6C93FE72C2EBFFC0DFD4F2A9B3433F778780C3C161E138F8DDFB34F31C8DBEECE82F0796961E9FDD23F25AC560234164A800420941CF59A24E03BC61DA00E';
wwv_flow_imp.g_varchar2_table(115) := 'B6933E2DF99B640CF237CEAFC99F5F48BED98F8A56ED46F5F64B696BE993520C4CEC837DB14FBF924F55AE8050F520F358784C3C361E23FB1483BCEDFAC4C58314D55D120681A808900044351C38030108400002831060DD70022400E1ECA80901084000';
wwv_flow_imp.g_varchar2_table(116) := '02104896000940B24387E3108000044A2740FC5508900054A1475D08400002108040A2044800121D38DC86000420503A01E2AF468004A01A3F6A430002108000049224400290E4B0E13404200081D209107F550224005509521F02108000042090208118';
wwv_flow_imp.g_varchar2_table(117) := '138099C4F16D926FE8E1BBC1A522DFF4C377FA9A53BE631080000420502F01EF5BBD8FF5BE7653359DCADCF071F9EA39CD739B16E3B1981280D985657BE96EE93CC9B717DD4F652AFA8D7CF513BE7C4F78DFF96B21BDC62000010840A01A01DF46F96035';
wwv_flow_imp.g_varchar2_table(118) := 'E10764791FEB7D6D2AF382FDFC9D7CF79CE6BB417E5BCB9EEB54746FB124000B0AC5DFA51F4BF349299B07F7730AC08F41F593D0B488410002108040008177AB8EF7A59F55F922E9794BB2985F5EEF289D2D79CE53D1ADC59000F8B0CE29C2B0BC949339';
wwv_flow_imp.g_varchar2_table(119) := '91395901F961252A3008400002101880C0D25AF724E965524EE6077B796E98A3EBA0624800FCB08C37750DA2A1FEE751BB3E04A4028300042000810108ECAF75E79666B00CDE78B362D856EAD4BA4E007C4867CB4E0934DFF9BBD4C5DB250C0210800004';
wwv_flow_imp.g_varchar2_table(120) := 'FA23B09256B354646B5F5564B3499D59D709807FDF99ABB3E8DBEB788DF6BAA22708400002C91318639F997C6C4301F8E886BF200EBD6EBDEC3A0158BCF588BBE9B09438BBA14BAF1080406E044AD9672ED1E5C0759D00CCDC65F02DF63D6B8B7DD11504';
wwv_flow_imp.g_varchar2_table(121) := '200081D4098C3A37A41ED874FECF32DDEB565F769D00FCBBD568BBEBECD6EEBAA66708400002C91128656EB8ADCB91E93A01F8AB827F5ACADDFE9C7B80C407010840A04602BEE1CF08CD65F5D6338AE66F5267D67502F0B022F71DFF54646BD72BB2D325';
wwv_flow_imp.g_varchar2_table(122) := '0C0210800004FA23F047AD76AD94B3F98E860F751960D7098063FF8EFEF3ED7F5564671315D11692333D15180420000108F441E059ADB395E47DA88A2996D1FFBE2DF00E5DC713430270A720AC25F91EFA2AB2316FC05F54347CFB17040C021080C08004';
wwv_flow_imp.g_varchar2_table(123) := 'FCD3E966AAE37DA98A6CEC5E45E239CF498016BBB3181200477F81FE7BAB74AC34494ADD2E5600EF95FC502015180420000108041038407556912EEDF5F47FDAE6B9ED1885E0B9EE42959D5B2C098041F84CF9F5B4E0EB3F7DD87C0F2DFB5690A9684FF9';
wwv_flow_imp.g_varchar2_table(124) := 'EB5B3B7A70DFA2653FDC480506010840000215089CA5BA7E56CC8A2AB793F692529917ECA7E7B2CDE5B3E7B6F555767AE6BFFA9F6A4FE06E8F0000100049444154312500434EDDAC855F495B4B3E849E8AFC7BD5AEF2D9999D333D2D6210800004205003';
wwv_flow_imp.g_varchar2_table(125) := '81496AC3478A7751E9DBC7A7322FD84FCF65FBC86FCF6D2AE2B118138078E8E0090420000108402053022400990E2C6141000210C887009134418004A009AAB409010840000210889C000940E403847B108000044A2740FCCD10200168866B13AD56B916';
wwv_flow_imp.g_varchar2_table(126) := '961B11353122B4090108402061022400E90CDE3D155CCDF54E8B1590501502104883005E36458004A029B2F5B77B6E6093BEEBD48D8175A9060108400002991220014867607D97C4C703DCF5C3969E0BA84715084000029D13C081E608900034C7B6EE96';
wwv_flow_imp.g_varchar2_table(127) := 'FD13806F343448BBF76BE59D240C021080000420300D011280697044FFE2C7F2F024A91F7B422B6D20E5F690258584410002651020CA260990003449B7FEB627AAC97525DF5B7AACAB02AED73AEF96CE9430084000021080C00C044800664012FD1B9EF8';
wwv_flow_imp.g_varchar2_table(128) := '7D6FE937C8531FDE3F47A51FA474B54A3F69EA932AFD999F49A0450C021080409A04F0BA59022400CDF26DB2757FCBFFB63A58497AB5E449DF4F9AF2497F4E12F4160601084000021018990009C0C85C781702108000043A2540E74D132001689A30ED43';
wwv_flow_imp.g_varchar2_table(129) := '0002108000042224400210E1A0E01204200081D209107FF30448009A674C0F10800004200081E80890004437243804010840A07402C4DF060112803628D3070420000108402032022400910D08EE40000210289D00F1B7438004A01DCEF4020108400002';
wwv_flow_imp.g_varchar2_table(130) := '10888A00094054C38133108000044A2740FC6D112001688B34FD400002108000042222400210D160E00A04200081D209107F7B044800DA634D4F108000042000816808900044331438522381D7A9AD0F491B4BDB48DBA21E0C7A0333F0B6E36D68356D3F';
wwv_flow_imp.g_varchar2_table(131) := 'AF95B0C609D0419B044800DAA44D5F4D1258418DFF5CBA49BA4E3A55FAB5B48BB433EAC1A03730036F3BDE86FEA0EDC74FDFBC41E5CFA4374B18049227400290FC10161FC0EB45E048E902692BE93512068126082CAE46BF2A5D24799BF391262D627511';
wwv_flow_imp.g_varchar2_table(132) := 'A09D76099000B4CB9BDEEA25B0A99ABB4CDA409A206110688380B7356F7357A8B32F4818049224400290E4B015EFF4CC2270A0B49F34AB8441A00B02DEF6F657C7BF926692B04A04A8DC36011280B689D35F1D047EA14636913008C440603339B1BB8441';
wwv_flow_imp.g_varchar2_table(133) := '2029022400490D17CE8A807F83DD5C250681980878BBFC524C0EA5E60BFEB64F20E6046036E1983721CD295FDBB4B9D4D927251F0A3F45A54F4AFAA1CA9CCF505E42F1F9CC6C151804A223F05379F42A096B9680F7B529CD0D9ECB9A2512D87A6C09C01B';
wwv_flow_imp.g_varchar2_table(134) := '14C701D2EDD293D28309E951F9FA90749CF461A949F3E1EF1BD5C1219297DD9F4F4AFAAE5E5F2C9D2C2D24E566BE94CDBFBBE61617F1E441607685F113091B98C0B815D6D01AC74B0F4BDED7A63437782EF39CE6F3453CC72984382C9604C07EFC58487C';
wwv_flow_imp.g_varchar2_table(135) := '46F7E755A63A79CD23DFD791FC8DFC24957EADA256F36F8DFED63FFF18ADAEAECFFE292D29E5626F5220EB4918046226B0919C5B4AC2EA21F0123533B43F5D5BCB734B299AE7345F31E239EE470AC05792A8E8D63CF176EBC194DEF752B1BD94D399B4CE';
wwv_flow_imp.g_varchar2_table(136) := '584F574CFE56A0A216F3B7FD6FF4D9D2825AEF44690E2907F3118E1CE22086BC0978C7BE7EDE21D61FDD282D7ADF75863EF3114E155998E7B8EF2812CF792ABAB5181200EFD8733DA9EB2D1ADE5DA53ACCBFF9EF346043BE51894F4E1AB05A94ABAF1BA5';
wwv_flow_imp.g_varchar2_table(137) := '5738058119097C64C6B7782780808F762E1F502F852A5BC8C9CEF7695D2700CE967DE85F2CB2B52F2AB23A4E0CF2E1AFB10EFBAB9B11CD470D46FC20A1371790AFBEE39F0A0C02D113F089B83E741DBDA3713838A2178BEA5D1F325791ADEDD875645D27';
wwv_flow_imp.g_varchar2_table(138) := '00FE5DD7DF52BBE6D064FFB3A8F13A32BDF7A89D105B4C95FCC7A42259F3D9FFC93A8FE34512609BAD36EC3EDFC737FCAAD64ADCB5FDA5E68D5DBA184302D065FC6DF5ED44A76A5FFE4D3FB40D9F80125A37867ABEE427063FF00102FD127869BF2B96BE';
wwv_flow_imp.g_varchar2_table(139) := 'DE28F1D7B1CF1CA5E9A8DEEE34CEAE1380520E93D5B133A8722DE98BA2DAE40777A64AECD7AA3BDF3BA054EDA6F8274A839AEBB86EA9DC1CB79FFE3728B7A1F553FF9B1B8AA3AB92B9A105F25D2700F7B710630C5DDC1B831385FAE007B66CA7D84BD5B1';
wwv_flow_imp.g_varchar2_table(140) := '8ADD671EAB18C85CE768D528959BE3BE46F1638D1218B5F1FB46FD24AF0F3A9D1BBA4E00CECD6B2C478DA694384705C0079D11F00969A19D57A91BDA27F5206002E7FBBF02D4E9DCD07502E0436CB90FB4EF5A7542011B3221C64960BE0A6EBDBC425DAA';
wwv_flow_imp.g_varchar2_table(141) := '42605C0263ACE03BAA3E36C6E7397C748E82B849EACCBA4E001CF836FAEF392957F3B5FBA5FCD491EB18A61C970FE587FA5FA56E689FD4838009F827009F87E1E51CE5736CB6ED3AB0181280B304E19B528EE67B57FBFEF539C6464C108000042A1018B7';
wwv_flow_imp.g_varchar2_table(142) := 'AA9FABE0BB998EBB62822B78CEFB7BD77EC7900098819FA2F5292DFC47CAC19E5510BE8B95EF7298F3D10D858941000210688480BF25FB7E009E1FBC4F6DA493961BF5438CFC14D79FB5DCEF88DDC59200D8B943F5DFE2D2D6D25FA49B252704A9E84EF9';
wwv_flow_imp.g_varchar2_table(143) := 'EB07F0F81BBF9FF8E40C2F978D56A16110800004EA23D0674BDE87FAF927CB687DFF24E07DACF7B5A9CC0BF6D37399E734CF6DBE41D4618A250A8B29013010C3DA430BAB48BE839DAF9F4F45BED9CEDBE4F7B7A4EB250C0210800004EA21709D9AF1A599';
wwv_flow_imp.g_varchar2_table(144) := 'DEC77A5F9BCABC603F3D97794EF3DCE6394EA1C461B125007150C10B08400002106890004DC7408004208651C00708400002108040CB0448005A064E77108000044A2740FC7110200188631CF002021080000420D02A0112805671D31904200081D20910';
wwv_flow_imp.g_varchar2_table(145) := '7F2C044800621909FC80000420000108B4488004A045D87405010840A07402C41F0F01128078C6024F20000108400002AD112001680D351D41000210289D00F1C744800420A6D1C017084000021080404B0448005A024D37108000044A2740FC71112001';
wwv_flow_imp.g_varchar2_table(146) := '886B3CF006021080000420D00A0112805630D30904200081D209107F6C044800621B11FC81000420000108B4408004A005C87401010840A07402C41F1F011280F8C6048F200001084000028D132001681C311D40000210289D00F1C748800420C651C127';
wwv_flow_imp.g_varchar2_table(147) := '08400002108040C30448001A064CF3108000044A2740FC7112200188735CF00A021080000420D02801128046F1D23804200081D209107FAC044800621D19FC8200042000010834488004A041B8340D010840A07402C41F2F01128078C706CF2000010840';
wwv_flow_imp.g_varchar2_table(148) := '00028D112001680C2D0D43000210289D00F1C74C800420E6D1C13708400002108040430448001A024BB3108000044A2740FC71132001887B7CF00E021080000420D00801128046B0D22804200081D209107FEC044800621F21FC83000420000108344080';
wwv_flow_imp.g_varchar2_table(149) := '04A001A83409010840A07402C41F3F011280F8C7080F21000108400002B5132001A81D290D42000210289D00F1A74020B604C0FEAC2670BF904E904E4B48A7CAD703A54F487349180420000108D443C0FBD44FAAA98324EF6B539A1B3C97FD5C7E7F50F2';
wwv_flow_imp.g_varchar2_table(150) := '1CA7220E8BC999FF15924BA53F485B4A6B49EF4F481F92AF9B48874A37481B4B1804200081E208D41CF067D5DE8DD221D2E724EF6B539A1B3C976D25BFFF285D22BD4D8AC2624900D6168D33A565A51CECE50AE2D7D24E1206010840000261047651B583';
wwv_flow_imp.g_varchar2_table(151) := 'A5F9A51C6C3905E1B9CE498116BBB5181280A585E03069362937DB4E017D4AC220304460112D6C247D43FA92F46E6926A9345B4001FB88D91E2A7F297D577A9754220B859D93D516CB67D4D236526EF62205E439EFF52A3BB5181200677873764AA1D9CE';
wwv_flow_imp.g_varchar2_table(152) := '7755F339C7A7F0B03E0838F3F721C05BB5AEFFF87757B98FF437E94EC93F7B9530F9CDA358F7956E937CCECCD7556E2EFD503A4BBA5C5A55C2CA26F06285BFB394AB393ECF7D9DC6D77502B0A0A25F5DCAD95EA9E0728F5121626310D8409F9D2FF924A0';
wwv_flow_imp.g_varchar2_table(153) := '092AA737FF64E4135F4FD20739278B0B29BE73A52F4A334B23998F083A51FACA481FF25EFC046AF2704DB5F30A29675B43C1797E50D18D759D00F890DF483BC46E6834D7EB7B9A6B9A962327E043FCFEC6EFC37EE3B9EA939B7CEEC878EBA5F8F9AC72DA';
wwv_flow_imp.g_varchar2_table(154) := '67432FA5723CF37EC9674D7B0739DEBA7C9E278195F30C6B9AA8BC9D7B0E9CE6CD365FD88136FB9BBE2FFF0E38FD7B39BEF6918E1CE322A6B109F890BE0F77CF32F66AD37CBABE5EF9A458155999CF7758618088BC6FDA53EBE7786E90C2CAD56A8B8BB9';
wwv_flow_imp.g_varchar2_table(155) := 'A13694A337E43FB2D13F6DFE93C79AEF228A1E1E89C20B9C689B807FFAE9E71BEFF47EF904C1E9DF4BFDB57FE71F3486D7A8828F8AA8C00A2350CADCF06897E3DA7502706D97C1B7D8F7752DF64557F110089DBCDEA1107CB29C8A2CCC573E2C19180927';
wwv_flow_imp.g_varchar2_table(156) := '040682EBA25A8D7D963237741A67D709C039DA60EE9172B6490AEE78092B8F80BFC18644ED9F0E5E155231D23A0B57F0CBC94385EA544D94C07189FA3D88DB7769E5F3A4CEACEB0460A222CFFD6639DE90AF549C5879047CA94F68D47387568CB0DE1C15';
wwv_flow_imp.g_varchar2_table(157) := '7CAA52B742B7541D9C40AD35AE506BB97F71FA8962F41CA8A21BEB3A0170D47BEBBF53A41CCDD7777339538E234B4C108040D304365307FF9672B43F2B28DF07444577164302E00CE86342905BB6778D62F2A52C4E02B48841000210C897400391DDAD36';
wwv_flow_imp.g_varchar2_table(158) := '57913AFD9D5CFDD76D3E2ABC9E1AF5DCA7A23B8B210170F43E13725D2DF88629FE4DE4392DA76A7E10906F5FE94B9EBC9C6A1CF80D010840A06B02FF9203CB4BBEADBA1F08A4C524CD739A6F82E5CB7C3DF97BCEEB3C9058120083F0C972476BE1ED92EF';
wwv_flow_imp.g_varchar2_table(159) := '00F516953E033815AD247F7DE2D66B55EE263D2161108000040A20D06888DE97FAB6B94BA8974525EF6B539917ECA7E732DFEDD357F71C23FF3DD7A9E8DE624A0086D3B85F2F2E924E4F48BEA221D7DFAB340C1804200081CE09F81912DED7A63437782E';
wwv_flow_imp.g_varchar2_table(160) := '7BA073722338106B023082ABBC0501084000023112C0A734099000A4396E780D010840000210A8448004A0123E2A43000210289D00F1A74A800420D591C36F084000021080400502240015E0511502108040E904883F5D022400E98E1D9E430002108000';
wwv_flow_imp.g_varchar2_table(161) := '048209900004A3A32204200081D209107FCA044800521E3D7C87000420000108041220010804473508400002A51320FEB4099000A43D7E780F0108400002100822400210848D4A108000044A2740FCA9132001487D04F11F021080000420104080042000';
wwv_flow_imp.g_varchar2_table(162) := '1A5520000108944E80F8D327400290FE18120104200001084060600224000323A30204FA26F064DF6BCEB86295BA33B6D6ED3B8F57E8BE4ADD0ADD52756C027C9A030112801C4691186225706705C76EAF5037B6AAB75570E8D60A75A90A01088C418004';
wwv_flow_imp.g_varchar2_table(163) := '600C387C04818A04FE1A58FF4AD5BB47CAC5EE5020574B21F6E7904AD4699600ADE7418004208F71248A38091C2BB71E9006B50307AD90C0FA7B07F87893EAFC49C2200081060890003400952621F03C8187556E270D629769E57DA4DCCC49CD79030435';
wwv_flow_imp.g_varchar2_table(164) := '51EB6E263D2D615111C0995C089000E43292C4112B014F7CBBF5E9DCCD5A6F1D29C749EF19C5F511E972693C7B562B6C2E71F85F10300834458004A029B2B40B8117086CA3C58DA5BBA5916C92DE3C425A51BA45CAD51CFF4A0AEEE7D26849CE25FA6C15';
wwv_flow_imp.g_varchar2_table(165) := '697F098B90002EE5438004209FB12492B809FC56EE2D217D54FA9574BC7488F42D6969E9E3D2FD52EEF6A802FC9AB4A0F4696947694F695BE9ADD20AD29EA340430000044A494441545912060108344C8004A061C0340F8161041ED3F291D216920F877B';
wwv_flow_imp.g_varchar2_table(166) := '02DC59CBD74AA5994F8E7402F41D05BE95B4AB74A1E4A3212AB03809E0554E044800721A4D6281000420000108F4498004A04F50AC06010840A07402C49F17011280BCC69368200001084000027D112001E80B132B41000210289D00F1E746800420B711';
wwv_flow_imp.g_varchar2_table(167) := '251E084000021080401F044800FA80C42A108000044A2740FCF9112001C86F4C8908021080000420302E0112807111B10204200081D209107F8E044800721C5562820004200001088C438004601C407C0C010840A07402C49F270112803CC795A8200001';
wwv_flow_imp.g_varchar2_table(168) := '084000026312200118130F1F42000210289D00F1E74A800420D791252E084000021080C018044800C680C347108000044A2740FCF9122001C8776C890C021080000420302A01128051D1F00104200081D209107FCE044800721E5D62830004200001088C';
wwv_flow_imp.g_varchar2_table(169) := '428004601430BC0D010840A07402C49F37011280BCC797E8200001084000022312200118110B6F42000210289D00F1E74E800420F711263E084000021080C0080448004680C25B108000044A2740FCF9132001C87F8C8910021080000420300301128019';
wwv_flow_imp.g_varchar2_table(170) := '90F00604200081D209107F090448004A186562840004200001084C478004603A20BC84000420503A01E22F8300094019E34C9410800004200081690890004C838317108000044A2740FCA51020012865A48913021080000420308C0009C030182C420002';
wwv_flow_imp.g_varchar2_table(171) := '10289D00F197438004A09CB12652084000021080C0540224005351B000010840A07402C45F1201128092469B5821000108400002CF13A89A001CA97650AFD7068365C43AD47650C5367C6CAA8FAFC9FF507BBB2A36E5570AED6EA0F843CD755388B1291F';
wwv_flow_imp.g_varchar2_table(172) := '570805A77ADB484DF9D558BBC37CF63E432F83CCFBAA367CA48FDEE4B92768905CA96A02B0811A41BD5E1B0C5E2ED6A1B6B22AB6E163537D7812570841B6B06A35E5570AED2EADF843CD755388B1291F170C05A77A2B494DF9D546BBDE67288420F3BEAA';
wwv_flow_imp.g_varchar2_table(173) := '0D1FE9A33779EE091A2457AA9A00B80D040108400002C9132080D20890009436E2C40B0108400002101001120041C020000108944E80F8CB23400250DE981331042000010840A04702C04600010840A078020028918013804925064ECC10800004200081';
wwv_flow_imp.g_varchar2_table(174) := '82094C7202F050C100081D02108040F10400502481079D005C5764E8040D0108400002102897C0754E004E28377E2287000420503A01E22F94C0094E00F655F00F48180420000108400002F913B85F21EEE704C0E7007C4A2F264A180420000108144480';
wwv_flow_imp.g_varchar2_table(175) := '508B23F09C22DE447AD80980CADE1FF4DFA7A527250C0210800004200081FC083CA1903E299D284D731F80DFE98D65A5C3A4C7250C0210800004B22640708510784C711E2A798E3F5CE5641B3A0230F985FEBB417276309FCA15A4B5A40D510F063D18F0';
wwv_flow_imp.g_varchar2_table(176) := '77C036C036C03690D836E039DC73F9FCF2DB3FF5DFA872AA4D9F000C7DE0C30417EBC549D251A807831E0CF83B601BC86D1B209EECB769CFE19ECB3DA76BB8A7B5FF070000FFFF0587BEC500000006494441540300EFA21F5AA466057A0000000049454E';
wwv_flow_imp.g_varchar2_table(177) := '44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18825678899348585079)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122523Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(18825680222941585079)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071051Z')
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
prompt --application/shared_components/user_interface/lovs/appointments_appointment_time
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18827905251519044206)
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
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18825688598079585137)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(18825688598079585137)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18825689311660585145)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18825688864857585143)
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
 p_id=>wwv_flow_imp.id(18826686067041869295)
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
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18826686743760869331)
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
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18827564063940104303)
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
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patient_visits_symptoms
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18827562666475104282)
,p_lov_name=>'PATIENT_VISITS.SYMPTOMS'
,p_static_id=>'patient-visits-symptoms'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PATIENT_VISITS'
,p_return_column_name=>'VISIT_ID'
,p_display_column_name=>'SYMPTOMS'
,p_default_sort_column_name=>'SYMPTOMS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:NcRWbru1f8w-JiFaULB_QDeufuyQe_NWka5GJHzBjh8'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18827563378268104302)
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
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18827671425379055048)
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
,p_created_on=>wwv_flow_imp.dz('20260715102852Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(18825680493824585083)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(18825675266179584985)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260721085502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827686339833055285)
,p_short_name=>'Admissions'
,p_static_id=>'admissions'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827897794224988069)
,p_short_name=>'Admission Report'
,p_static_id=>'admissions-summary'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20260716080035Z')
,p_updated_on=>wwv_flow_imp.dz('20260721085502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826908647378443971)
,p_parent_id=>wwv_flow_imp.id(18826907354691443954)
,p_short_name=>'Appointment'
,p_static_id=>'appointment'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827505084608668430)
,p_short_name=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260715063748Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826907354691443954)
,p_short_name=>'Appointments'
,p_static_id=>'appointments'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827884034676977414)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointments-by-doctor'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260716075848Z')
,p_updated_on=>wwv_flow_imp.dz('20260721085244Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827924376996044386)
,p_parent_id=>wwv_flow_imp.id(18827923115575044385)
,p_short_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>35
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826924654177580529)
,p_parent_id=>wwv_flow_imp.id(18826923440379580505)
,p_short_name=>'Department'
,p_static_id=>'department'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20260714105639Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105639Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826923440379580505)
,p_short_name=>'Departments'
,p_static_id=>'departments'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826701998123869550)
,p_short_name=>'Doctors'
,p_static_id=>'doctors'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260714061131Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061131Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18825675458114584987)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827892696893985511)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'low-stock-medicines'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20260716080009Z')
,p_updated_on=>wwv_flow_imp.dz('20260721085415Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826890504811349029)
,p_parent_id=>wwv_flow_imp.id(18826889171458349021)
,p_short_name=>'Medicine'
,p_static_id=>'medicine'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827494070691662831)
,p_short_name=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260715063652Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826889171458349021)
,p_short_name=>'Medicines'
,p_static_id=>'medicines'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827545517588860683)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827546789245860690)
,p_parent_id=>wwv_flow_imp.id(18827545517588860683)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile-2'
,p_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>23
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827923115575044385)
,p_short_name=>'PATIENT_VISITS'
,p_static_id=>'patient-visits'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18826291142890963399)
,p_short_name=>'Patients'
,p_static_id=>'patients'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827579035435104488)
,p_parent_id=>wwv_flow_imp.id(18827577791383104469)
,p_short_name=>'Prescription Details'
,p_static_id=>'prescription-details'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827577791383104469)
,p_short_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827888824016982055)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'prescriptions-per-patient'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20260716075935Z')
,p_updated_on=>wwv_flow_imp.dz('20260721085328Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827519424813674049)
,p_short_name=>'Rooms'
,p_static_id=>'rooms'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18827481934222654372)
,p_short_name=>'Specialties'
,p_static_id=>'specialties'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
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
 p_id=>wwv_flow_imp.id(18825676189960585002)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(18827943328494886666)
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
,p_files_version=>2461238103020
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:0cLrCpyA8lm8kgOwfngFGwpVpLL9e-874a8sBs6FRI8'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260716103021Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(18827943328494886666)
,p_theme_id=>42
,p_name=>'Hospital Teal'
,p_static_id=>'hospital-teal'
,p_css_file_urls=>'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Iris.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-Pillar":"teal"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#10374596606467561.css'
,p_theme_roller_read_only=>false
,p_created_on=>wwv_flow_imp.dz('20260716103020Z')
,p_updated_on=>wwv_flow_imp.dz('20260716103020Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032352C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D66616D696C793A20274F726163';
wwv_flow_imp.g_varchar2_table(2) := '6C652053616E73272C202D6170706C652D73797374656D2C20426C696E6B4D616353797374656D466F6E742C20275365676F65205549272C20526F626F746F2C204F787967656E2C205562756E74752C2043616E746172656C6C2C202746697261205361';
wwv_flow_imp.g_varchar2_table(3) := '6E73272C202744726F69642053616E73272C202748656C766574696361204E657565272C2073616E732D73657269663B0D0A20202D2D612D626173652D666F6E742D66616D696C792D73657269663A2047656F726769612C2054696D65732C202754696D';
wwv_flow_imp.g_varchar2_table(4) := '6573204E657720526F6D616E272C2073657269663B0D0A20202D2D612D626173652D666F6E742D66616D696C792D6D6F6E6F3A2053464D6F6E6F2D526567756C61722C204D656E6C6F2C204D6F6E61636F2C20436F6E736F6C61732C20274C6962657261';
wwv_flow_imp.g_varchar2_table(5) := '74696F6E204D6F6E6F272C2027436F7572696572204E6577272C206D6F6E6F73706163653B0D0A20202D2D612D626173652D666F6E742D7765696768742D73656D69626F6C643A203630303B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B';
wwv_flow_imp.g_varchar2_table(6) := '0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E';
wwv_flow_imp.g_varchar2_table(7) := '373572656D3B0D0A20202D2D612D627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D627574746F6E2D6761702D783A20302E323572';
wwv_flow_imp.g_varchar2_table(8) := '656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73706163696E673A20302E33373572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D677269642D6761703A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(9) := '20202D2D612D63762D6974656D2D77696474683A20323072656D3B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D736861646F773A20766172282D2D75742D736861646F772D736D293B';
wwv_flow_imp.g_varchar2_table(10) := '0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D6974656D2D73706163696E672D78';
wwv_flow_imp.g_varchar2_table(11) := '3A20302E373572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464696E673A2030';
wwv_flow_imp.g_varchar2_table(12) := '2E3572656D3B0D0A20202D2D612D63762D69636F6E2D7370616365723A2063616C6328766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A652C203172656D29202B20766172282D2D612D63762D6865616465722D6974656D2D7370';
wwv_flow_imp.g_varchar2_table(13) := '6163696E672D782C20302E373572656D29293B0D0A20202D2D612D63762D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6376';
wwv_flow_imp.g_varchar2_table(14) := '2D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B';
wwv_flow_imp.g_varchar2_table(15) := '0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D62616467652D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(16) := '642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20766172282D2D75742D62616467652D626F726465722D726164697573293B0D0A20202D2D612D6376';
wwv_flow_imp.g_varchar2_table(17) := '2D62616467652D70616464696E673A20302E323572656D20302E33373572656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(18) := '202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F';
wwv_flow_imp.g_varchar2_table(19) := '6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A20317265';
wwv_flow_imp.g_varchar2_table(20) := '6D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A20202D2D612D636865636B626F782D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(21) := '2E373572656D3B0D0A20202D2D612D636865636B626F782D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F78';
wwv_flow_imp.g_varchar2_table(22) := '2D696E64657465726D696E6174652D77696474683A20302E36323572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D6865696768743A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C616265';
wwv_flow_imp.g_varchar2_table(23) := '6C2D73706163696E672D793A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D783A20302E33373572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D793A20302E32357265';
wwv_flow_imp.g_varchar2_table(24) := '6D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D636F6D626F626F782D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D6465762D746F6F6C626172';
wwv_flow_imp.g_varchar2_table(25) := '2D6261636B67726F756E642D636F6C6F723A20233636363B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B64726F702D66696C7465723A206E6F6E653B0D0A20202D2D612D646174657069636B65722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(26) := '723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D626F726465722D7261646975733A20766172282D2D75742D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(27) := '64697573293B0D0A20202D2D612D646174657069636B65722D6865616465722D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D646174657069636B65722D6865616465722D626F726465722D636F6C6F723A207472';
wwv_flow_imp.g_varchar2_table(28) := '616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E';
wwv_flow_imp.g_varchar2_table(29) := '74687069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D73697A653A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(30) := '2D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D612D6461746570';
wwv_flow_imp.g_varchar2_table(31) := '69636B65722D63616C656E646172732D73706163696E673A203070783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B6772';
wwv_flow_imp.g_varchar2_table(32) := '6F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D7061';
wwv_flow_imp.g_varchar2_table(33) := '6464696E672D793A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D646174657069636B65722D63616C656E';
wwv_flow_imp.g_varchar2_table(34) := '6461722D6865616465722D70616464696E672D783A20766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E67293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D6261';
wwv_flow_imp.g_varchar2_table(35) := '636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D75746564';
wwv_flow_imp.g_varchar2_table(36) := '2D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E673A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(37) := '2E38373572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D77696474683A203170783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D726164';
wwv_flow_imp.g_varchar2_table(38) := '6975733A203530253B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(39) := '20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B6572';
wwv_flow_imp.g_varchar2_table(40) := '2D63616C656E6461722D6461792D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D646179';
wwv_flow_imp.g_varchar2_table(41) := '2D73656C65637465642D626F726465722D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(42) := '766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D746578742D636F6C6F723A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(43) := '6F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D666F6F7465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(44) := '2D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069';
wwv_flow_imp.g_varchar2_table(45) := '636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(46) := '2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D66732D636F6E74726F6C2D7365706572';
wwv_flow_imp.g_varchar2_table(47) := '61746F722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D793A20302E373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(48) := '202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D666F6E742D73697A653A203172656D3B0D0A20202D2D612D66732D636F6E7472';
wwv_flow_imp.g_varchar2_table(49) := '6F6C2D6865616465722D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D7061';
wwv_flow_imp.g_varchar2_table(50) := '6464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D783A';
wwv_flow_imp.g_varchar2_table(51) := '203072656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(52) := '656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(53) := '612D66732D66696C7465722D67726F75702D6C6162656C2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66732D6974656D2D7375622D67726F75702D73';
wwv_flow_imp.g_varchar2_table(54) := '706163696E673A20302E3572656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D793A203172656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D783A203172656D3B0D0A20202D2D612D66732D63686172742D626F';
wwv_flow_imp.g_varchar2_table(55) := '726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D612D66732D63686172742D626F';
wwv_flow_imp.g_varchar2_table(56) := '726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D612D66732D63686172742D626F726465722D';
wwv_flow_imp.g_varchar2_table(57) := '7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D612D66732D63686172742D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(58) := '642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D63686172742D736861646F773A20766172282D2D75742D726567696F6E2D626F782D736861646F77293B0D';
wwv_flow_imp.g_varchar2_table(59) := '0A20202D2D612D66696C6564726F702D70616464696E672D793A203172656D3B0D0A20202D2D612D66696C6564726F702D70616464696E672D783A203172656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A20302E31';
wwv_flow_imp.g_varchar2_table(60) := '323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(61) := '766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D';
wwv_flow_imp.g_varchar2_table(62) := '626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D66696C656472';
wwv_flow_imp.g_varchar2_table(63) := '6F702D69636F6E2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D6C696E652D68';
wwv_flow_imp.g_varchar2_table(64) := '65696768743A20312E373572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D612D66696C';
wwv_flow_imp.g_varchar2_table(65) := '6564726F702D636F756E742D62616467652D666F6E742D73697A653A20302E36323572656D3B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D6C696E652D6865696768743A20302E38373572656D3B0D0A20202D2D612D66696C';
wwv_flow_imp.g_varchar2_table(66) := '6564726F702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D77696474683A20313572656D3B';
wwv_flow_imp.g_varchar2_table(67) := '0D0A20202D2D612D66696C6564726F702D70726F67726573732D6865696768743A20302E373572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D626F726465722D7261646975733A20302E33373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(68) := '66696C6564726F702D70726F67726573732D6261722D77696474683A203372656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D6669656C642D696E7075742D626F';
wwv_flow_imp.g_varchar2_table(69) := '726465722D7374796C653A20736F6C69643B0D0A20202D2D612D6669656C642D73656C6563742D6261636B67726F756E642D73697A653A203272656D203172656D3B0D0A20202D2D612D6669656C642D73656C6563742D6172726F772D70616464696E67';
wwv_flow_imp.g_varchar2_table(70) := '3A203272656D3B0D0A20202D2D612D67762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D67762D626F726465722D636F6C6F723A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(71) := '636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D67762D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(72) := '2D67762D63656C6C2D6865696768743A203272656D3B0D0A20202D2D612D67762D726F772D686F7665722D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D67762D696E7365727465642D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(73) := '636F6C6F723A20766172282D2D612D70616C657474652D737563636573732D7368616465293B0D0A20202D2D612D67762D64656C657465642D6261636B67726F756E642D636F6C6F723A20236632663266323B0D0A20202D2D612D67762D6772616E6474';
wwv_flow_imp.g_varchar2_table(74) := '6F74616C2D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D757064617465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D696E666F2D7368616465293B0D0A2020';
wwv_flow_imp.g_varchar2_table(75) := '2D2D612D67762D6865616465722D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D67762D6865616465722D63656C';
wwv_flow_imp.g_varchar2_table(76) := '6C2D6865696768743A20322E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6776';
wwv_flow_imp.g_varchar2_table(77) := '2D706167696E6174696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D746578742D636F6C6F723A20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(78) := '74746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E';
wwv_flow_imp.g_varchar2_table(79) := '672D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F7665722D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(80) := '6E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F7665722D746578742D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(81) := '2D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D793A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D706164';
wwv_flow_imp.g_varchar2_table(82) := '64696E672D783A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D67762D6E';
wwv_flow_imp.g_varchar2_table(83) := '6F646174612D6D6573736167652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D67762D6E6F646174612D6D657373616765';
wwv_flow_imp.g_varchar2_table(84) := '2D69636F6E2D73706163696E673A20302E373572656D3B0D0A20202D2D612D68656C702D6469616C6F672D636F64652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(85) := '202D2D612D6B622D73686F72746375742D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D6B622D73686F72746375742D626F726465722D636F6C6F723A207267626128302C20302C20';
wwv_flow_imp.g_varchar2_table(86) := '302C20302E303735293B0D0A20202D2D612D6D64656469746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D';
wwv_flow_imp.g_varchar2_table(87) := '626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D62';
wwv_flow_imp.g_varchar2_table(88) := '6F726465722D7769647468293B0D0A20202D2D612D6D64656469746F722D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D6D65';
wwv_flow_imp.g_varchar2_table(89) := '6E756261722D6974656D2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D';
wwv_flow_imp.g_varchar2_table(90) := '73697A653A203172656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D65';
wwv_flow_imp.g_varchar2_table(91) := '6E752D70616464696E672D783A203072656D3B0D0A20202D2D612D6D656E752D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E752D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D6D656E752D626F726465';
wwv_flow_imp.g_varchar2_table(92) := '722D7261646975733A20302E323572656D3B0D0A20202D2D612D6D656E752D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D6D656E752D7365702D626F726465722D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(93) := '2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D7365702D73706163696E672D793A20302E323572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(94) := '2D6D656E752D69636F6E2D73706163696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(95) := '3A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E75';
wwv_flow_imp.g_varchar2_table(96) := '2D63616C6C6F75742D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D7261646975733A203072656D3B0D';
wwv_flow_imp.g_varchar2_table(97) := '0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D636F6C6F723A20766172282D2D612D6D656E752D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D736861646F773A20766172282D2D75742D73';
wwv_flow_imp.g_varchar2_table(98) := '6861646F772D736D293B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D793A2030';
wwv_flow_imp.g_varchar2_table(99) := '2E3572656D3B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D783A20766172282D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79293B0D0A20202D2D612D706F7075706C6F76';
wwv_flow_imp.g_varchar2_table(100) := '2D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D7765696768743A20766172282D2D612D636869702D76616C75652D666F6E742D7765696768742C20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(101) := '626173652D666F6E742D7765696768742D73656D69626F6C642C2035303029293B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D7265';
wwv_flow_imp.g_varchar2_table(102) := '6D6F76652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D706F7075706C6F';
wwv_flow_imp.g_varchar2_table(103) := '762D636869702D626F726465722D77696474683A203170783B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D636F6C6F723A20766172282D2D612D636869702D73746174652D626F726465722D636F6C6F722C20766172282D2D';
wwv_flow_imp.g_varchar2_table(104) := '612D636869702D747970652D626F726465722D636F6C6F722C20766172282D2D612D636869702D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F722C207267626128302C20302C20302C';
wwv_flow_imp.g_varchar2_table(105) := '20302E30373529292929293B0D0A20202D2D612D72762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D72762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D793A20302E';
wwv_flow_imp.g_varchar2_table(106) := '323572656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D783A203072656D3B0D0A20202D2D612D70657263656E742D63686172742D6865696768743A203172656D3B0D0A20202D2D612D70657263656E742D63686172742D6261636B67';
wwv_flow_imp.g_varchar2_table(107) := '726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D70';
wwv_flow_imp.g_varchar2_table(108) := '657263656E742D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D70657263656E742D63686172742D6261722D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(109) := '6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D70657263656E742D63686172742D6261722D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E74726173';
wwv_flow_imp.g_varchar2_table(110) := '74293B0D0A20202D2D612D70657263656E742D63686172742D6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(111) := '70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(112) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468';
wwv_flow_imp.g_varchar2_table(113) := '293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D73706163696E673A20302E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(114) := '2D7265706F72742D636F6E74726F6C732D63656C6C2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D77696474683A2031382E373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(115) := '202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6C696E652D6865696768743A2031';
wwv_flow_imp.g_varchar2_table(116) := '72656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F7274';
wwv_flow_imp.g_varchar2_table(117) := '2D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F';
wwv_flow_imp.g_varchar2_table(118) := '726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D636F6C6F723A20766172282D2D612D6669';
wwv_flow_imp.g_varchar2_table(119) := '656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D7261646975733A20766172282D2D612D6669656C642D696E7075742D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(120) := '7573293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(121) := '612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265';
wwv_flow_imp.g_varchar2_table(122) := '706F72742D636F6E74726F6C732D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D73706C6974';
wwv_flow_imp.g_varchar2_table(123) := '7465722D6261722D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D6865696768743A203372656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(124) := '2D612D73706C69747465722D7468756D622D626F726465722D7261646975733A203072656D3B0D0A20202D2D612D73746172726174696E672D73746172732D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D73746172726174696E67';
wwv_flow_imp.g_varchar2_table(125) := '2D73746172732D62672D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D73746172726174696E672D76616C75652D73706163696E673A20302E3572656D3B0D0A20202D2D612D7377697463682D77696474683A20';
wwv_flow_imp.g_varchar2_table(126) := '322E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E31323572656D3B0D0A20202D2D612D7377697463682D686F7665722D62';
wwv_flow_imp.g_varchar2_table(127) := '61636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377';
wwv_flow_imp.g_varchar2_table(128) := '697463682D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D636865636B65642D62';
wwv_flow_imp.g_varchar2_table(129) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D636865636B65642D686F7665722D6261636B6772';
wwv_flow_imp.g_varchar2_table(130) := '6F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E323572656D3B0D0A20202D2D612D746F6F6C62';
wwv_flow_imp.g_varchar2_table(131) := '61722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D626F726465722D77696474683A20766172282D2D7574';
wwv_flow_imp.g_varchar2_table(132) := '2D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D746F6F6C6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(133) := '2D746F6F6C6261722D6974656D2D73706163696E673A20302E3572656D3B0D0A20202D2D612D746F6F6C6261722D7365702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(134) := '72293B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D783A20302E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(135) := '20202D2D612D74726565766965772D746F67676C652D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D666F6E742D7369';
wwv_flow_imp.g_varchar2_table(136) := '7A653A20302E373572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(137) := '2D74726565766965772D6E6F64652D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D746578742D636F6C6F723A20696E68657269743B0D0A20202D2D612D74726565766965772D6E6F64652D666F';
wwv_flow_imp.g_varchar2_table(138) := '63757365642D736861646F773A20696E7365742030203020302031707820726762612835372C203135352C203233342C20302E35293B0D0A20202D2D612D74726565766965772D6E6F64652D706C616365686F6C6465722D626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(139) := '733A20302E31323572656D3B0D0A20202D2D612D74726565766965772D647261672D68656C7065722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E672D793A20302E31323572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(140) := '20202D2D612D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D636869702D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(141) := '636869702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636869702D6C6162656C2D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D626F726465722D7261646975733A20302E31323572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(142) := '2D2D612D636869702D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D636869702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E';
wwv_flow_imp.g_varchar2_table(143) := '7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D636869702D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D636869702D6163746976652D6261636B';
wwv_flow_imp.g_varchar2_table(144) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636869702D6170706C6965642D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(145) := '612D636869702D6170706C6965642D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D636869702D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(146) := '3A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636869702D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D63686970';
wwv_flow_imp.g_varchar2_table(147) := '2D6170706C6965642D69732D6163746976652D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D69732D61';
wwv_flow_imp.g_varchar2_table(148) := '63746976652D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D636869702D696E7075742D666F6E742D73697A653A20302E373572656D';
wwv_flow_imp.g_varchar2_table(149) := '3B0D0A20202D2D612D636869702D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636F6D626F2D73656C6563742D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D636F6D626F2D73656C6563742D6974656D';
wwv_flow_imp.g_varchar2_table(150) := '2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D736561726368726573756C74732D6761703A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(151) := '726573756C74736974656D2D6974656D2D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D783A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D793A203172656D3B0D';
wwv_flow_imp.g_varchar2_table(152) := '0A20202D2D612D726573756C74736974656D2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D726573756C74736974656D2D626F726465722D77696474683A203170783B0D0A20202D2D612D726573756C74736974656D2D';
wwv_flow_imp.g_varchar2_table(153) := '626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D7265';
wwv_flow_imp.g_varchar2_table(154) := '73756C74736974656D2D636F6E74656E742D6761703A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6C696E652D68656967';
wwv_flow_imp.g_varchar2_table(155) := '68743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D6761703A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D73706163696E673A20302E323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(156) := '2D612D726573756C74736974656D2D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(157) := '74656D2D7375627469746C652D666F6E742D73697A653A20302E3933373572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(158) := '74656D2D7375627469746C652D73706163696E673A20766172282D2D612D726573756C74736974656D2D6865616465722D73706163696E672C20302E323572656D293B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D66';
wwv_flow_imp.g_varchar2_table(159) := '6F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D6174747269627574';
wwv_flow_imp.g_varchar2_table(160) := '65732D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D61747472696275';
wwv_flow_imp.g_varchar2_table(161) := '7465732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D6C696E652D6865696768743A203172';
wwv_flow_imp.g_varchar2_table(162) := '656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D69636F';
wwv_flow_imp.g_varchar2_table(163) := '6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D666F6E742D73697A653A20302E';
wwv_flow_imp.g_varchar2_table(164) := '38373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D6261636B67726F756E642D636F6C6F723A2072676261';
wwv_flow_imp.g_varchar2_table(165) := '28302C20302C20302C20302E31293B0D0A20202D2D612D726573756C74736974656D2D62616467652D626F726465722D7261646975733A20766172282D2D75742D62616467652D626F726465722D7261646975732C20302E323572656D293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(166) := '2D612D726573756C74736974656D2D62616467652D70616464696E673A20302E323572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D73706163696E673A203172656D3B0D0A20202D2D612D73656172636872';
wwv_flow_imp.g_varchar2_table(167) := '6573756C74732D706167696E6174696F6E2D6761703A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F';
wwv_flow_imp.g_varchar2_table(168) := '6C6F72293B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D666F6E742D73697A657A3A20302E38373572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(169) := '6768743A20312E323572656D3B0D0A20202D2D612D746F6F6C7469702D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D7370696E6E65722D73697A653A203272656D3B0D0A20202D2D612D7370696E6E65722D626F726465722D';
wwv_flow_imp.g_varchar2_table(170) := '77696474683A20302E323572656D3B0D0A20202D2D612D7370696E6E65722D636F6E7461696E65722D70616464696E673A20302E3572656D3B0D0A20202D2D612D6C6F76652D617065782D6D617267696E3A203020302E31323572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(171) := '612D6C6F76652D617065782D686F7665722D746578742D636F6C6F723A20766172282D2D612D70616C657474652D64616E6765722C2023463030293B0D0A20202D2D6A75692D6469616C6F672D6261636B67726F756E642D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(172) := '2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D746578742D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(173) := '2D2D75742D726567696F6E2D746578742D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(174) := '2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D77696474683A20303B0D0A20202D2D6A75';
wwv_flow_imp.g_varchar2_table(175) := '692D6469616C6F672D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D6A75692D';
wwv_flow_imp.g_varchar2_table(176) := '6469616C6F672D736861646F773A20766172282D2D75742D736861646F772D6C67292C2030203020302031707820766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465';
wwv_flow_imp.g_varchar2_table(177) := '722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A7569';
wwv_flow_imp.g_varchar2_table(178) := '2D6469616C6F672D7469746C656261722D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D6A75692D64';
wwv_flow_imp.g_varchar2_table(179) := '69616C6F672D7469746C656261722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D776964';
wwv_flow_imp.g_varchar2_table(180) := '74683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D62';
wwv_flow_imp.g_varchar2_table(181) := '6F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D';
wwv_flow_imp.g_varchar2_table(182) := '666F6E742D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D77696474683A20312E357265';
wwv_flow_imp.g_varchar2_table(183) := '6D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D793A20302E3572656D3B0D0A20202D2D6A';
wwv_flow_imp.g_varchar2_table(184) := '75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D783A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D62';
wwv_flow_imp.g_varchar2_table(185) := '6F726465722D7261646975732C20302E31323572656D293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A2020';
wwv_flow_imp.g_varchar2_table(186) := '2D2D6A75692D6469616C6F672D7469746C652D636C6F73652D69636F6E2D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D793A203072656D3B0D0A20202D2D6A75692D6469616C6F672D63';
wwv_flow_imp.g_varchar2_table(187) := '6F6E74656E742D70616464696E672D783A203072656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F';
wwv_flow_imp.g_varchar2_table(188) := '6E70616E652D636F6E74656E742D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(189) := '6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D77696474683A2031372E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D62';
wwv_flow_imp.g_varchar2_table(190) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D6461746570';
wwv_flow_imp.g_varchar2_table(191) := '69636B65722D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D70616464696E673A20302E3572656D3B0D0A20202D2D6A75692D746F6F6C7469702D626F726465722D7261646975733A20302E';
wwv_flow_imp.g_varchar2_table(192) := '31323572656D3B0D0A20202D2D6A75692D746F6F6C7469702D70616464696E673A20302E3572656D3B0D0A20202D2D6F6A65742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D6F6A65742D736D616C6C2D666F6E742D73697A653A20';
wwv_flow_imp.g_varchar2_table(193) := '302E373572656D3B0D0A20202D2D6F6A65742D6D656469756D2D666F6E742D73697A653A203172656D3B0D0A20202D2D6F6A65742D6C617267652D666F6E742D73697A653A20312E31323572656D3B0D0A20202D2D6F6A65742D6C61726765722D666F6E';
wwv_flow_imp.g_varchar2_table(194) := '742D73697A653A20312E323572656D3B0D0A20202D2D6F6A65742D746F6F6C7469702D7072696D6172792D746578742D636F6C6F723A20233030303030303B0D0A20202D2D6F6A65742D746F6F6C7469702D7365636F6E646172792D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(195) := '6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D6F6A65742D746F6F6C7469702D64697361626C65642D746578742D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A3A726F6F74207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(196) := '2D75742D636F6C6F722D736368656D653A206C696768743B0D0A20202D2D75742D70616C657474652D67656E657269633A20236632663266323B0D0A20202D2D75742D70616C657474652D67656E657269632D636F6E74726173743A20233030303B0D0A';
wwv_flow_imp.g_varchar2_table(197) := '20202D2D75742D70616C657474652D67656E657269632D73686164653A20236639663966393B0D0A20202D2D75742D70616C657474652D67656E657269632D746578743A20233030303B0D0A20202D2D612D67762D6865616465722D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(198) := '6E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D7265706F72742D63656C6C2D616C742D6261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(199) := '2C20302C20302C20302E3035293B0D0A20202D2D75742D7265706F72742D6865616465722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D6865616465722D626F782D73686164';
wwv_flow_imp.g_varchar2_table(200) := '6F773A206E6F6E653B0D0A20202D2D75742D6C6F676F2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D6C6F676F2D696D672D73706163696E673A2030';
wwv_flow_imp.g_varchar2_table(201) := '2E3572656D3B0D0A20202D2D75742D666F6F7465722D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D666F6F7465722D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D75742D6E';
wwv_flow_imp.g_varchar2_table(202) := '6176746162732D6974656D2D626F726465722D77696474683A203170783B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D6E6176746162732D6974';
wwv_flow_imp.g_varchar2_table(203) := '656D2D686967686C696768742D77696474683A203072656D3B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D686967686C696768742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20';
wwv_flow_imp.g_varchar2_table(204) := '202D2D75742D6E61766261722D627574746F6E2D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D626F726465722D72';
wwv_flow_imp.g_varchar2_table(205) := '61646975733A20766172282D2D75742D62616467652D626F726465722D7261646975732C203172656D293B0D0A20202D2D75742D626F64792D6E61762D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(206) := '2D636F6C6F72293B0D0A20202D2D75742D626F64792D7469746C652D626F726465722D77696474683A203070783B0D0A20202D2D75742D626F64792D7469746C652D626F782D736861646F773A20302031707820302030207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(207) := '2C20302E31293B0D0A20202D2D75742D626F64792D7469746C652D6261636B64726F702D66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A20202D2D75742D62726561646372756D622D726567696F6E2D73706163';
wwv_flow_imp.g_varchar2_table(208) := '696E673A20302E3572656D3B0D0A20202D2D75742D62726561646372756D622D7469746C652D666F6E742D7765696768743A203730303B0D0A20202D2D75742D62726561646372756D622D6974656D2D6163746976652D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(209) := '6172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D736D6172742D66696C7465722D6D61782D77696474683A20333072656D3B0D0A20202D2D75742D6865726F2D726567696F6E2D7469746C652D746578';
wwv_flow_imp.g_varchar2_table(210) := '742D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D726567696F6E2D626F726465722D77696474683A203170783B0D0A20202D2D75742D726567696F6E2D626F782D736861646F';
wwv_flow_imp.g_varchar2_table(211) := '773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D726567696F6E2D6D617267696E3A203172656D3B0D0A20202D2D75742D726567696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D726567';
wwv_flow_imp.g_varchar2_table(212) := '696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D726567696F6E2D6865616465722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D75742D726567696F6E2D62';
wwv_flow_imp.g_varchar2_table(213) := '6F64792D70616464696E672D793A203172656D3B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D793A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(214) := '0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D627574746F6E2D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20';
wwv_flow_imp.g_varchar2_table(215) := '202D2D75742D636865636B626F782D6974656D2D73706163696E673A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D6C69';
wwv_flow_imp.g_varchar2_table(216) := '6E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6C6F67696E2D706167652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(217) := '6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D66696C7465723A20626C757228347078293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D626F782D736861';
wwv_flow_imp.g_varchar2_table(218) := '646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D66732D746F67676C652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D746F67';
wwv_flow_imp.g_varchar2_table(219) := '676C652D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D746F67676C652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465';
wwv_flow_imp.g_varchar2_table(220) := '722D726164697573293B0D0A20202D2D612D66732D746F67676C652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(221) := '723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D';
wwv_flow_imp.g_varchar2_table(222) := '7769647468293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D75742D616C6572742D7469746C652D66';
wwv_flow_imp.g_varchar2_table(223) := '6F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D616C6572742D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D';
wwv_flow_imp.g_varchar2_table(224) := '0A20202D2D6D672D6374726C2D67726F75702D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D6D672D706F7075702D636F6E74656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A';
wwv_flow_imp.g_varchar2_table(225) := '20202D2D612D6D61702D6C6567656E642D7469746C652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D75742D636172646C6973742D626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(226) := '3A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D6C696E6B736C6973742D6172726F772D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D75742D746162732D6974656D2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(227) := '6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D';
wwv_flow_imp.g_varchar2_table(228) := '636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(229) := '696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6D6D656E742D636861742D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035';
wwv_flow_imp.g_varchar2_table(230) := '293B0D0A20202D2D75742D636F6D6D656E742D636861742D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D726573756C7473726567696F6E2D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(231) := '642D636F6C6F723A20236666663B0D0A20202D2D75742D726573756C7473726567696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F72293B0D0A20202D2D75742D726573756C7473726567';
wwv_flow_imp.g_varchar2_table(232) := '696F6E2D7365617263682D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D6261636B67726F756E642D636F6C6F723A207267626128302C20';
wwv_flow_imp.g_varchar2_table(233) := '302C20302C20302E303235293B0D0A20202D2D75742D77702D6D61726B65722D636F6C6F723A20236439643964393B0D0A20202D2D75742D77702D747261636B2D636F6C6F723A20236439643964393B0D0A20202D2D612D7172636F64652D73697A653A';
wwv_flow_imp.g_varchar2_table(234) := '203872656D3B0D0A20202D2D612D7172636F64652D73697A652D736D3A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D6D643A20313672656D3B0D0A20202D2D612D7172636F64652D73697A652D6C673A20333272656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(235) := '2D612D636861742D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D6261636B67726F756E643A20766172282D2D75742D626F64792D626163';
wwv_flow_imp.g_varchar2_table(236) := '6B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D612D636861742D626F64792D6261636B';
wwv_flow_imp.g_varchar2_table(237) := '67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(238) := '2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D';
wwv_flow_imp.g_varchar2_table(239) := '0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D636861742D757365722D7072696D6172792D746578';
wwv_flow_imp.g_varchar2_table(240) := '742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C6574';
wwv_flow_imp.g_varchar2_table(241) := '74652D64616E676572293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D64616E6765722D636F6E7472617374293B0D0A20202D2D612D6368';
wwv_flow_imp.g_varchar2_table(242) := '61742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(243) := '6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(244) := '20202D2D612D636861742D696E7075742D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D636861742D696E7075742D627574746F6E2D666F6375732D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(245) := '6F6C6F723A20236536653665363B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D';
wwv_flow_imp.g_varchar2_table(246) := '627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D636861742D6D6573736167652D6572726F722D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D64616E6765';
wwv_flow_imp.g_varchar2_table(247) := '72293B0D0A20202D2D612D636861742D7472616E7363726970742D6F75746C696E652D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(248) := '20202D2D612D636861742D766965772D6D6F72652D627574746F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D766965772D6D6F7265';
wwv_flow_imp.g_varchar2_table(249) := '2D627574746F6E2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A20202D2D612D636861742D766965772D6D6F72652D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A202365366536';
wwv_flow_imp.g_varchar2_table(250) := '65363B0D0A20202D2D612D636861742D766965772D6D6F72652D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D636861742D636C69656E742D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(251) := '723A20236666663B0D0A20202D2D66632D6E65757472616C2D62672D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D66632D6E65757472616C2D746578742D636F6C6F723A20233030303B0D0A20202D2D66632D657665';
wwv_flow_imp.g_varchar2_table(252) := '6E742D73656C65637465642D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D66632D6E6F6E2D627573696E6573732D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(253) := '612D6469616772616D2D6261636B67726F756E643A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(254) := '612D6469616772616D2D656C656D656E742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(255) := '6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D736861646F773A207267626128302C20302C20302C20302E332920302036707820313270783B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(256) := '6469616772616D2D656C656D656E742D69636F6E2D636F6C6F723A20236666663B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20236363636363633B0D0A20202D2D612D64696167';
wwv_flow_imp.g_varchar2_table(257) := '72616D2D656C656D656E742D6469616D6F6E642D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3338293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D69636F6E2D6261636B67';
wwv_flow_imp.g_varchar2_table(258) := '726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3331293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A20236666663B0D0A20202D2D612D6469616772616D2D65';
wwv_flow_imp.g_varchar2_table(259) := '6C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A20202D2D612D6469616772616D2D656C656D656E742D636F6E7461696E65722D69636F6E2D6261636B67';
wwv_flow_imp.g_varchar2_table(260) := '726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3237293B0D0A20202D2D612D6469616772616D2D656C656D656E742D636F6E7461696E65722D627574746F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F';
wwv_flow_imp.g_varchar2_table(261) := '6C6F722D3432293B0D0A20202D2D612D6469616772616D2D656C656D656E742D636F6E7461696E65722D6368696C6472656E2D636F6E7461696E65722D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D6469616772';
wwv_flow_imp.g_varchar2_table(262) := '616D2D656C656D656E742D737562636F6E7461696E65722D626F64792D6261636B67726F756E642D636F6C6F723A20236363636363633B0D0A20202D2D612D6469616772616D2D656C656D656E742D737562636F6E7461696E65722D6865616465722D74';
wwv_flow_imp.g_varchar2_table(263) := '6578742D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3435293B0D0A20202D2D612D6469616772616D2D6C6162656C2D74657874';
wwv_flow_imp.g_varchar2_table(264) := '2D636F6C6F723A20766172282D2D752D636F6C6F722D34352D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D6C696E6B2D626F726465722D636F6C6F723A20766172282D2D752D636F6C6F722D3434293B0D0A20202D2D612D64696167';
wwv_flow_imp.g_varchar2_table(265) := '72616D2D6E6176696761746F722D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D6261636B67726F756E642D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(266) := '72282D2D612D6469616772616D2D6261636B67726F756E64293B0D0A20202D2D612D6469616772616D2D63656C6C2D686967686C696768743A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D';
wwv_flow_imp.g_varchar2_table(267) := '726F7574652D7465726D696E617465643A20766172282D2D75742D70616C657474652D7761726E696E67293B0D0A20202D2D612D6469616772616D2D726F7574652D6661756C7465643A20766172282D2D75742D70616C657474652D64616E676572293B';
wwv_flow_imp.g_varchar2_table(268) := '0D0A20202D2D612D6469616772616D2D726F7574652D6163746976653A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D726F7574652D636F6D706C657465643A20766172282D2D75742D7061';
wwv_flow_imp.g_varchar2_table(269) := '6C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D64656661756C743A20766172282D2D612D6469616772616D2D726F7574652D636F6D706C65746564293B0D0A20202D2D612D6469616772616D2D726F757465';
wwv_flow_imp.g_varchar2_table(270) := '2D77616974696E673A20766172282D2D75742D70616C657474652D696E666F293B0D0A20202D2D612D6469616772616D2D726F7574652D73757370656E6465643A20766172282D2D75742D70616C657474652D7761726E696E672D7368616465293B0D0A';
wwv_flow_imp.g_varchar2_table(271) := '20202D2D612D63722D636865636B626F782D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D63722D636865636B626F782D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D';
wwv_flow_imp.g_varchar2_table(272) := '636F6E7472617374293B0D0A20202D2D75742D62616467652D626F726465722D7261646975733A203172656D3B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D66616D696C793A20766172282D2D612D626173652D666F';
wwv_flow_imp.g_varchar2_table(273) := '6E742D66616D696C792D7365726966293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D6E6F726D616C293B0D0A20202D2D75742D63';
wwv_flow_imp.g_varchar2_table(274) := '6F6D706F6E656E742D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D77696474683A203170783B0D0A20202D2D75742D636F6D706F6E656E742D626F';
wwv_flow_imp.g_varchar2_table(275) := '726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D636F6D706F6E656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D75742D636F6D706F6E656E742D686967686C69676874';
wwv_flow_imp.g_varchar2_table(276) := '2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_imp.g_varchar2_table(277) := '2E303235293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E';
wwv_flow_imp.g_varchar2_table(278) := '65722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F723A20233030303B0D0A20202D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(279) := '746578742D7469746C652D636F6C6F723A20233030303B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7375627469746C652D636F6C6F723A207267626128302C20302C20302C20302E3835293B0D0A20202D2D75742D636F6D706F6E656E';
wwv_flow_imp.g_varchar2_table(280) := '742D746578742D6D757465642D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D70';
wwv_flow_imp.g_varchar2_table(281) := '72696D617279293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D62';
wwv_flow_imp.g_varchar2_table(282) := '61636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6465';
wwv_flow_imp.g_varchar2_table(283) := '6661756C742D636F6C6F72293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D736861646F772D736D3A203020302E31323572656D20302E323572656D20';
wwv_flow_imp.g_varchar2_table(284) := '2D302E31323572656D207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D736861646F772D6D643A203020302E373572656D20312E3572656D202D302E373572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(285) := '75742D736861646F772D6C673A203020312E3572656D203372656D202D312E3572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D626F726465722D7261646975732D736D3A20302E31323572656D3B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(286) := '626F726465722D7261646975732D6D643A20302E323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6C673A20302E3572656D3B0D0A20202D2D75742D626F726465722D7261646975733A20766172282D2D75742D626F726465722D';
wwv_flow_imp.g_varchar2_table(287) := '7261646975732D6D64293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A';
wwv_flow_imp.g_varchar2_table(288) := '20202D2D75742D6865726F2D726567696F6E2D7469746C652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6E74656E742D626C6F636B2D686561';
wwv_flow_imp.g_varchar2_table(289) := '6465722D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D77696474683A20302E32357265';
wwv_flow_imp.g_varchar2_table(290) := '6D3B0D0A7D0D0A2E742D547265654E6176202E69732D63757272656E742C0D0A2E742D547265654E6176202E69732D63757272656E742D2D746F70207B0D0A20202D2D612D74726565766965772D6E6F64652D666F6E742D7765696768743A2076617228';
wwv_flow_imp.g_varchar2_table(291) := '2D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E742D4865616465723A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D75742D6865616465722D73747269702D62';
wwv_flow_imp.g_varchar2_table(292) := '61636B67726F756E642D636F6C6F722C20766172282D2D75742D70616C657474652D7072696D61727929293B0D0A2020636F6E74656E743A2022223B0D0A2020646973706C61793A20626C6F636B3B0D0A2020626C6F636B2D73697A653A20766172282D';
wwv_flow_imp.g_varchar2_table(293) := '2D75742D6865616465722D73747269702D73697A652C20302E33373572656D293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A6E6F74283A686F7665722C203A666F63757329207B0D0A2020';
wwv_flow_imp.g_varchar2_table(294) := '2D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(295) := '2D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20636F6C6F722D6D697828696E20737267622C2063757272656E74436F6C6F722038252C';
wwv_flow_imp.g_varchar2_table(296) := '207472616E73706172656E74293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20636F6C6F722D6D697828696E20737267622C2063757272656E74436F6C6F72203132252C207472616E7370617265';
wwv_flow_imp.g_varchar2_table(297) := '6E74293B0D0A7D0D0A2E752D70616464696E672D696E6C696E652D64796E616D6963207B0D0A202070616464696E672D696E6C696E653A20766172282D2D75742D626F64792D636F6E74656E742D70616464696E672D782C203172656D293B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(298) := '2E612D4952522D736561726368207B0D0A2020626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D77696474682C20317078293B0D0A2020626F726465722D7374796C653A20766172282D2D612D6669';
wwv_flow_imp.g_varchar2_table(299) := '656C642D696E7075742D626F726465722D7374796C652C20736F6C6964293B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D626F726465722D636F6C6F722C20766172282D2D612D666965';
wwv_flow_imp.g_varchar2_table(300) := '6C642D696E7075742D626F726465722D636F6C6F7229293B0D0A2020626F726465722D7261646975733A20766172282D2D612D6669656C642D696E7075742D626F726465722D7261646975732C20302E31323572656D293B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(301) := '6E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A2020706F73';
wwv_flow_imp.g_varchar2_table(302) := '6974696F6E3A2072656C61746976653B0D0A202070616464696E672D626C6F636B3A2063616C6328302E323572656D202D20766172282D2D75742D6972722D7365617263682D626F726465722D77696474682C2031707829293B0D0A202070616464696E';
wwv_flow_imp.g_varchar2_table(303) := '672D696E6C696E653A2063616C6328302E323572656D202D20766172282D2D75742D6972722D7365617263682D626F726465722D77696474682C2031707829293B0D0A7D0D0A2E612D4952522D7365617263683A666F6375732C0D0A2E612D4952522D73';
wwv_flow_imp.g_varchar2_table(304) := '65617263683A666F6375732D77697468696E207B0D0A20202D2D612D6669656C642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(305) := '2D636F6C6F72293B0D0A20202D2D612D6669656C642D696E7075742D73746174652D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D6669656C';
wwv_flow_imp.g_varchar2_table(306) := '642D696E7075742D73746174652D746578742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D7365617263683A666F6375732D77697468696E3A6E6F7428';
wwv_flow_imp.g_varchar2_table(307) := '3A686173282E612D4952522D627574746F6E3A666F63757329293A6E6F74283A686173282E612D4952522D627574746F6E3A666F6375732D76697369626C652929207B0D0A20206F75746C696E653A20766172282D2D75742D666F6375732D6F75746C69';
wwv_flow_imp.g_varchar2_table(308) := '6E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F66667365743A20766172282D2D75742D66';
wwv_flow_imp.g_varchar2_table(309) := '6F6375732D6F75746C696E652D6F6666736574293B0D0A7D0D0A2E612D4952522D736561726368202E612D4952522D627574746F6E207B0D0A20202D2D612D627574746F6E2D626F726465722D77696474683A203070783B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(310) := '6F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A2020626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D726164';
wwv_flow_imp.g_varchar2_table(311) := '6975732C20327078293B0D0A7D0D0A2E612D4952522D736561726368202E612D4952522D627574746F6E2D2D636F6C5365617263682C0D0A2E612D4952522D736561726368202E612D4952522D627574746F6E2D2D6D6963726F70686F6E65207B0D0A20';
wwv_flow_imp.g_varchar2_table(312) := '202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D736561726368202E612D4952522D627574746F6E2D2D736561726368207B0D0A2020646973706C61793A206E6F6E';
wwv_flow_imp.g_varchar2_table(313) := '653B0D0A7D0D0A2E612D4952522D736561726368202E612D4952522D7365617263682D6669656C64207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D77696474683A20303B0D0A2020';
wwv_flow_imp.g_varchar2_table(314) := '70616464696E672D626C6F636B3A20302E323572656D3B0D0A202070616464696E672D696E6C696E653A20302E31323572656D3B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D61692D656E61626C65';
wwv_flow_imp.g_varchar2_table(315) := '643A686173282E612D4952522D627574746F6E2D2D6D6963726F70686F6E6529202E612D4952522D636C656172427574746F6E207B0D0A2020696E7365742D696E6C696E652D656E643A20312E373572656D3B0D0A7D0D0A2E612D4952522D746F6F6C62';
wwv_flow_imp.g_varchar2_table(316) := '61722D2D61692D656E61626C6564202E612D4952522D7365617263684669656C64436F6E7461696E6572207B0D0A2020706F736974696F6E3A20756E7365743B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D61692D656E61626C65643A68617328';
wwv_flow_imp.g_varchar2_table(317) := '2E612D4952522D7365617263682D6669656C642D2D61692D70726F63657373696E6729202E612D4952522D736561726368207B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E612D49472D686561646572202E61';
wwv_flow_imp.g_varchar2_table(318) := '2D546F6F6C6261722D67726F75702D2D736561726368207B0D0A2020626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D77696474682C20317078293B0D0A2020626F726465722D7374796C653A2076';
wwv_flow_imp.g_varchar2_table(319) := '6172282D2D612D6669656C642D696E7075742D626F726465722D7374796C652C20736F6C6964293B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D626F726465722D636F6C6F722C207661';
wwv_flow_imp.g_varchar2_table(320) := '72282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F7229293B0D0A2020626F726465722D7261646975733A20766172282D2D612D6669656C642D696E7075742D626F726465722D7261646975732C20302E31323572656D293B0D0A20';
wwv_flow_imp.g_varchar2_table(321) := '206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(322) := '293B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A202070616464696E672D626C6F636B3A2063616C6328302E323572656D202D20766172282D2D75742D6972722D7365617263682D626F726465722D77696474682C2031707829293B0D';
wwv_flow_imp.g_varchar2_table(323) := '0A202070616464696E672D696E6C696E653A2063616C6328302E323572656D202D20766172282D2D75742D6972722D7365617263682D626F726465722D77696474682C2031707829293B0D0A7D0D0A2E612D49472D686561646572202E612D546F6F6C62';
wwv_flow_imp.g_varchar2_table(324) := '61722D67726F75702D2D7365617263683A666F6375732C0D0A2E612D49472D686561646572202E612D546F6F6C6261722D67726F75702D2D7365617263683A666F6375732D77697468696E207B0D0A20202D2D612D6669656C642D696E7075742D737461';
wwv_flow_imp.g_varchar2_table(325) := '74652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6669656C642D696E7075742D73746174652D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(326) := '6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D6669656C642D696E7075742D73746174652D746578742D636F6C6F723A20766172282D2D612D6669656C642D696E70';
wwv_flow_imp.g_varchar2_table(327) := '75742D666F6375732D746578742D636F6C6F72293B0D0A7D0D0A2E612D49472D686561646572202E612D546F6F6C6261722D67726F75702D2D7365617263683A666F6375732D77697468696E3A6E6F74283A686173282E612D427574746F6E3A666F6375';
wwv_flow_imp.g_varchar2_table(328) := '7329293A6E6F74283A686173282E612D427574746F6E3A666F6375732D76697369626C652929207B0D0A20206F75746C696E653A20766172282D2D75742D666F6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F637573';
wwv_flow_imp.g_varchar2_table(329) := '2D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F66667365743A20766172282D2D75742D666F6375732D6F75746C696E652D6F6666736574293B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(330) := '612D49472D686561646572202E612D546F6F6C6261722D67726F75702D2D736561726368202E612D427574746F6E207B0D0A20202D2D612D627574746F6E2D626F726465722D77696474683A203070783B0D0A20202D2D612D627574746F6E2D70616464';
wwv_flow_imp.g_varchar2_table(331) := '696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A2020626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D7261646975732C203270';
wwv_flow_imp.g_varchar2_table(332) := '78293B0D0A7D0D0A2E612D49472D686561646572202E612D546F6F6C6261722D67726F75702D2D736561726368202E612D427574746F6E2D2D6E6F4C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A2074';
wwv_flow_imp.g_varchar2_table(333) := '72616E73706172656E743B0D0A7D0D0A2E612D49472D686561646572202E612D546F6F6C6261722D67726F75702D2D736561726368202E612D427574746F6E5B646174612D616374696F6E3D22736561726368225D207B0D0A2020646973706C61793A20';
wwv_flow_imp.g_varchar2_table(334) := '6E6F6E652021696D706F7274616E743B0D0A7D0D0A2E612D49472D686561646572202E612D546F6F6C6261722D67726F75702D2D736561726368202E612D546F6F6C6261722D696E70757454657874207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(335) := '723A207472616E73706172656E743B0D0A2020626F726465722D77696474683A20303B0D0A202070616464696E672D626C6F636B3A20302E323572656D3B0D0A202070616464696E672D696E6C696E653A20302E31323572656D3B0D0A20206F75746C69';
wwv_flow_imp.g_varchar2_table(336) := '6E653A206E6F6E653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20233345363836433B0D0A20202D2D75742D70616C657474652D7072696D6172792D636F6E74726173743A20236666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(337) := '2D75742D70616C657474652D7072696D6172792D73686164653A20234534463146373B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A20766172282D2D612D70616C657474652D7072696D617279293B0D0A7D0D0A3A726F6F';
wwv_flow_imp.g_varchar2_table(338) := '74207B0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20233065373239353B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E652D636F6C6F723A20233345363836433B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(339) := '0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6261636B67726F756E642D636F6C6F723A20233330324432413B0D0A20202D';
wwv_flow_imp.g_varchar2_table(340) := '2D75742D6865616465722D746578742D636F6C6F723A20236666663B0D0A20202D2D75742D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3132293B0D0A7D0D0A3A726F6F74207B0D0A2020';
wwv_flow_imp.g_varchar2_table(341) := '2D2D75742D626F64792D6261636B67726F756E642D636F6C6F723A20234642463946383B0D0A20202D2D75742D626F64792D746578742D636F6C6F723A20233136313531333B0D0A20202D2D75742D666F6F7465722D626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(342) := '726762612832322C2032312C2031392C20302E3132293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D6261636B67726F756E642D636F6C6F723A20234642463946383B0D0A20202D2D75742D626F64792D616374';
wwv_flow_imp.g_varchar2_table(343) := '696F6E732D746578742D636F6C6F723A20726762612832322C2032312C2031392C20302E37293B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D6261636B67726F756E642D636F6C6F723A20234642463946383B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(344) := '742D626F64792D616374696F6E73746F67676C652D686F7665722D6261636B67726F756E642D636F6C6F723A20236538646464383B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D7469746C652D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(345) := '723A20234631454645443B0D0A20202D2D75742D626F64792D7469746C652D746578742D636F6C6F723A20233136313531333B0D0A20202D2D75742D62726561646372756D622D6974656D2D746578742D636F6C6F723A20726762612832322C2032312C';
wwv_flow_imp.g_varchar2_table(346) := '2031392C20302E37293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D6261636B67726F756E642D636F6C6F723A20234642463946383B0D0A20202D2D75742D626F64792D736964656261722D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(347) := '6F723A20233136313531333B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F723A20233330324432413B0D0A20202D2D75742D626F64792D6E61762D746578742D636F6C6F723A202366';
wwv_flow_imp.g_varchar2_table(348) := '66663B0D0A20202D2D75742D626F64792D6E61762D7363726F6C6C6261722D7468756D622D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D626F64792D6E61762D7363';
wwv_flow_imp.g_varchar2_table(349) := '726F6C6C6261722D747261636B2D6261636B67726F756E642D636F6C6F723A20233330324432413B0D0A20202D2D75742D6E6176746162732D6261636B67726F756E642D636F6C6F723A20233330324432413B0D0A20202D2D75742D6E6176746162732D';
wwv_flow_imp.g_varchar2_table(350) := '746578742D636F6C6F723A20236666663B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D6E6176746162732D6974656D2D';
wwv_flow_imp.g_varchar2_table(351) := '6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A20202D2D75742D6E6176746162732D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(352) := '282D2D75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6261636B67726F756E642D636F6C6F723A20233330324432413B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(353) := '75742D6865616465722D6D656E756261722D6974656D2D746578742D636F6C6F723A20236666663B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F723A207267626128';
wwv_flow_imp.g_varchar2_table(354) := '3235352C203235352C203235352C20302E3038293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F723A20236666663B0D0A20202D2D75742D6865616465722D6D656E756261722D69';
wwv_flow_imp.g_varchar2_table(355) := '74656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D';
wwv_flow_imp.g_varchar2_table(356) := '656E756261722D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E7562';
wwv_flow_imp.g_varchar2_table(357) := '61722D6974656D2D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D69636F6E2D636F6C6F723A20236666663B0D';
wwv_flow_imp.g_varchar2_table(358) := '0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965';
wwv_flow_imp.g_varchar2_table(359) := '772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(360) := '723A20236666663B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A20202D2D612D74726565766965772D6E';
wwv_flow_imp.g_varchar2_table(361) := '6F64652D666F63757365642D746578742D636F6C6F723A20236666663B0D0A7D0D0A2E742D426F64792D6D61696E207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F723A20233345';
wwv_flow_imp.g_varchar2_table(362) := '363836433B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820233345363836433B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D626163';
wwv_flow_imp.g_varchar2_table(363) := '6B67726F756E642D636F6C6F723A20233345363836433B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D636F6C6F723A20696E68657269743B0D0A20202D2D612D747265657669';
wwv_flow_imp.g_varchar2_table(364) := '65772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F756E642D636F6C6F723A20233345363836433B0D0A20202D2D75742D74';
wwv_flow_imp.g_varchar2_table(365) := '726565766965772D62616467652D746578742D636F6C6F723A20236666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6D656E752D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(366) := '6F723A20233136313531333B0D0A20202D2D612D6D656E752D64656661756C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A20202D2D612D6D656E752D616363656C2D746578742D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(367) := '20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A20726762612832322C2032312C2031392C20302E3038293B';
wwv_flow_imp.g_varchar2_table(368) := '0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20233136313531333B0D0A20202D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D666F6375736564';
wwv_flow_imp.g_varchar2_table(369) := '2D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D66616D696C793A202D6170706C652D73797374656D2C20426C696E6B4D616353797374656D466F6E742C20275365676F65205549272C20526F';
wwv_flow_imp.g_varchar2_table(370) := '626F746F2C204F787967656E2C205562756E74752C2043616E746172656C6C2C2027466972612053616E73272C202744726F69642053616E73272C202748656C766574696361204E657565272C2073616E732D73657269663B0D0A20202D2D612D626173';
wwv_flow_imp.g_varchar2_table(371) := '652D666F6E742D7765696768742D73656D69626F6C643A203530303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D726567696F';
wwv_flow_imp.g_varchar2_table(372) := '6E2D6865616465722D746578742D636F6C6F723A20233136313531333B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D726567696F6E2D74657874';
wwv_flow_imp.g_varchar2_table(373) := '2D636F6C6F723A20233136313531333B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(374) := '6661666166613B0D0A20202D2D75742D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F723A202366616661';
wwv_flow_imp.g_varchar2_table(375) := '66613B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20233232374539453B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74726173743A20236666663B0D0A20';
wwv_flow_imp.g_varchar2_table(376) := '202D2D75742D70616C657474652D7072696D6172792D616C742D73686164653A20234534463146373B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D746578743A20233232374539453B0D0A7D0D0A3A726F6F74207B0D0A2020';
wwv_flow_imp.g_varchar2_table(377) := '2D2D75742D70616C657474652D737563636573733A20233433364231443B0D0A20202D2D75742D70616C657474652D737563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D737563636573732D7368616465';
wwv_flow_imp.g_varchar2_table(378) := '3A20234534463544333B0D0A20202D2D75742D70616C657474652D737563636573732D746578743A20233433364231443B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A20233232374539453B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(379) := '2D70616C657474652D696E666F2D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E666F2D73686164653A20234534463146373B0D0A20202D2D75742D70616C657474652D696E666F2D746578743A20233232374539';
wwv_flow_imp.g_varchar2_table(380) := '453B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7761726E696E673A20233846353230413B0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20236666663B0D0A20202D2D75742D70616C';
wwv_flow_imp.g_varchar2_table(381) := '657474652D7761726E696E672D73686164653A20234643454444433B0D0A20202D2D75742D70616C657474652D7761726E696E672D746578743A20233846353230413B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D64616E67';
wwv_flow_imp.g_varchar2_table(382) := '65723A20234233333131463B0D0A20202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A20234646454245383B0D0A20202D2D75742D70';
wwv_flow_imp.g_varchar2_table(383) := '616C657474652D64616E6765722D746578743A20234233333131463B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D636F6C6F722D313A20233234354436333B0D0A20202D2D752D636F6C6F722D312D636F6E74726173743A20236666663B0D0A2020';
wwv_flow_imp.g_varchar2_table(384) := '2D2D752D636F6C6F722D323A20234445374631313B0D0A20202D2D752D636F6C6F722D322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D333A20233546423942353B0D0A20202D2D752D636F6C6F722D332D636F6E74726173';
wwv_flow_imp.g_varchar2_table(385) := '743A20233030303B0D0A20202D2D752D636F6C6F722D343A20233445343133373B0D0A20202D2D752D636F6C6F722D342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D353A20234130433938433B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(386) := '6F722D352D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D363A20234234373238323B0D0A20202D2D752D636F6C6F722D362D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D373A2023383334303145';
wwv_flow_imp.g_varchar2_table(387) := '3B0D0A20202D2D752D636F6C6F722D372D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D383A20233945374643433B0D0A20202D2D752D636F6C6F722D382D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(388) := '722D393A20234642433236413B0D0A20202D2D752D636F6C6F722D392D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D31303A20233538333136453B0D0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666';
wwv_flow_imp.g_varchar2_table(389) := '663B0D0A20202D2D752D636F6C6F722D31313A20233546413242413B0D0A20202D2D752D636F6C6F722D31312D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31323A20233331374134353B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(390) := '31322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31333A20234334363231303B0D0A20202D2D752D636F6C6F722D31332D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31343A20233343363437';
wwv_flow_imp.g_varchar2_table(391) := '383B0D0A20202D2D752D636F6C6F722D31342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31353A20233738393236323B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666663B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(392) := '636F6C6F722D31363A20233332383238623B0D0A20202D2D752D636F6C6F722D31362D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31373A20236633616435633B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173';
wwv_flow_imp.g_varchar2_table(393) := '743A20233030303B0D0A20202D2D752D636F6C6F722D31383A20236164646264393B0D0A20202D2D752D636F6C6F722D31382D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D31393A20233664356234643B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(394) := '636F6C6F722D31392D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D32303A20236564663565393B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32313A20';
wwv_flow_imp.g_varchar2_table(395) := '236464626663363B0D0A20202D2D752D636F6C6F722D32312D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32323A20236237356132613B0D0A20202D2D752D636F6C6F722D32322D636F6E74726173743A20236666663B0D0A';
wwv_flow_imp.g_varchar2_table(396) := '20202D2D752D636F6C6F722D32333A20236536646566323B0D0A20202D2D752D636F6C6F722D32332D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32343A20236666666266353B0D0A20202D2D752D636F6C6F722D32342D63';
wwv_flow_imp.g_varchar2_table(397) := '6F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32353A20233762343539613B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D32363A20236165643064633B0D0A';
wwv_flow_imp.g_varchar2_table(398) := '20202D2D752D636F6C6F722D32362D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32373A20233435616236313B0D0A20202D2D752D636F6C6F722D32372D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(399) := '722D32383A20236566386333613B0D0A20202D2D752D636F6C6F722D32382D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32393A20233534386361383B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A2023';
wwv_flow_imp.g_varchar2_table(400) := '6666663B0D0A20202D2D752D636F6C6F722D33303A20236139626239613B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D33313A20233136333833623B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(401) := '722D33312D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33323A20233835346330613B0D0A20202D2D752D636F6C6F722D33322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33333A2023333337';
wwv_flow_imp.g_varchar2_table(402) := '3537323B0D0A20202D2D752D636F6C6F722D33332D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33343A20233266323732313B0D0A20202D2D752D636F6C6F722D33342D636F6E74726173743A20236666663B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(403) := '752D636F6C6F722D33353A20233561386234313B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33363A20233733336434613B0D0A20202D2D752D636F6C6F722D33362D636F6E7472';
wwv_flow_imp.g_varchar2_table(404) := '6173743A20236666663B0D0A20202D2D752D636F6C6F722D33373A20233466323631323B0D0A20202D2D752D636F6C6F722D33372D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33383A20233562333938653B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(405) := '752D636F6C6F722D33382D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33393A20236431383130363B0D0A20202D2D752D636F6C6F722D33392D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D3430';
wwv_flow_imp.g_varchar2_table(406) := '3A20233335316434323B0D0A20202D2D752D636F6C6F722D34302D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34313A20233333363437363B0D0A20202D2D752D636F6C6F722D34312D636F6E74726173743A20236666663B';
wwv_flow_imp.g_varchar2_table(407) := '0D0A20202D2D752D636F6C6F722D34323A20233164343932393B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34333A20233736336230613B0D0A20202D2D752D636F6C6F722D3433';
wwv_flow_imp.g_varchar2_table(408) := '2D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34343A20233234336334383B0D0A20202D2D752D636F6C6F722D34342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34353A20233438353833623B';
wwv_flow_imp.g_varchar2_table(409) := '0D0A20202D2D752D636F6C6F722D34352D636F6E74726173743A20236666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(410) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20726762612832322C2032312C2031392C20302E3038293B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233136313531333B0D0A20202D2D612D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(411) := '636F756E742D6261636B67726F756E642D636F6C6F723A20233345363836433B0D0A20202D2D612D627574746F6E2D636F756E742D746578742D636F6C6F723A20236666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162';
wwv_flow_imp.g_varchar2_table(412) := '656C2D746578742D636F6C6F723A20233136313531333B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465';
wwv_flow_imp.g_varchar2_table(413) := '722D7261646975733A20302E323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F';
wwv_flow_imp.g_varchar2_table(414) := '6C6F723A20233136313531333B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A20726762612832322C2032312C2031392C20302E35293B0D0A20202D2D612D6669656C642D696E7075742D686F7665722D6261636B67';
wwv_flow_imp.g_varchar2_table(415) := '726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D626F726465722D';
wwv_flow_imp.g_varchar2_table(416) := '636F6C6F723A20233345363836433B0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20233345363836433B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D626163';
wwv_flow_imp.g_varchar2_table(417) := '6B67726F756E642D636F6C6F723A20233345363836433B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(418) := '2D636F6C6F723A20236666663B0D0A20202D2D612D636865636B626F782D626F726465722D636F6C6F723A20726762612832322C2032312C2031392C20302E35293B0D0A20202D2D612D636865636B626F782D746578742D636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(419) := '66663B0D0A20202D2D612D636865636B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A20233345363836433B0D0A20202D2D612D636865636B626F782D636865636B65642D746578742D636F6C6F723A20236666666666663B0D';
wwv_flow_imp.g_varchar2_table(420) := '0A20202D2D612D636865636B626F782D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(421) := '20236666663B0D0A20202D2D612D67762D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D726570';
wwv_flow_imp.g_varchar2_table(422) := '6F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D746578742D636F6C6F723A20233236323632363B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_imp.g_varchar2_table(423) := '663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6865696768743A20332E3572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6E61762D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(424) := '2D75742D626F64792D616374696F6E732D77696474683A2031322E3572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(425) := '626F64792D636F6E74656E742D6D61782D77696474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D2D686561646572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(426) := '20202D2D612D627574746F6E2D746578742D636F6C6F723A20696E697469616C3B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E';
wwv_flow_imp.g_varchar2_table(427) := '653B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73';
wwv_flow_imp.g_varchar2_table(428) := '706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(429) := '723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574';
wwv_flow_imp.g_varchar2_table(430) := '746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20';
wwv_flow_imp.g_varchar2_table(431) := '302C20302E3235293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820';
wwv_flow_imp.g_varchar2_table(432) := '347078202D337078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20726762612834392C2034372C2034332C20302E3038293B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(433) := '74746F6E2D686F7665722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D686F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C';
wwv_flow_imp.g_varchar2_table(434) := '20302C20302E31293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D3170';
wwv_flow_imp.g_varchar2_table(435) := '78207267626128302C20302C20302C20302E31352920696E7365743B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(436) := '6F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(437) := '7574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020';
wwv_flow_imp.g_varchar2_table(438) := '626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55';
wwv_flow_imp.g_varchar2_table(439) := '492C0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A6163746976652C0D0A2E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D4275';
wwv_flow_imp.g_varchar2_table(440) := '74746F6E2D2D6E6F55493A616374697665207B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E';
wwv_flow_imp.g_varchar2_table(441) := '743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A2069';
wwv_flow_imp.g_varchar2_table(442) := '6E68657269743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C';
wwv_flow_imp.g_varchar2_table(443) := '0D0A2E75692D627574746F6E2D2D686F742C0D0A2E612D43617264566965772D627574746F6E2D2D686F742C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D666965';
wwv_flow_imp.g_varchar2_table(444) := '6C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(445) := '636F6C6F723A20233136313531333B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236566656565633B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233331326632623B0D0A20';
wwv_flow_imp.g_varchar2_table(446) := '202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233038';
wwv_flow_imp.g_varchar2_table(447) := '303830373B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F';
wwv_flow_imp.g_varchar2_table(448) := '756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(449) := '7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(450) := '2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B656420';
wwv_flow_imp.g_varchar2_table(451) := '2B206C6162656C2E742D427574746F6E2D2D73696D706C652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B';
wwv_flow_imp.g_varchar2_table(452) := '6564202B206C6162656C2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233136313531333B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A2074';
wwv_flow_imp.g_varchar2_table(453) := '72616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233436343333633B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236566656565633B0D0A7D0D0A2E742D427574746F';
wwv_flow_imp.g_varchar2_table(454) := '6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(455) := '2D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C';
wwv_flow_imp.g_varchar2_table(456) := '64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(457) := '6F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A';
wwv_flow_imp.g_varchar2_table(458) := '206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233436343333633B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F';
wwv_flow_imp.g_varchar2_table(459) := '6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F';
wwv_flow_imp.g_varchar2_table(460) := '757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D';
wwv_flow_imp.g_varchar2_table(461) := '2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(462) := '6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020';
wwv_flow_imp.g_varchar2_table(463) := '696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D7263';
wwv_flow_imp.g_varchar2_table(464) := '20696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233436343333633B0D0A2020636F6C6F723A20233436343333633B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(465) := '2D427574746F6E2D2D7761726E696E67207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233846353230413B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666663B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(466) := '7574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236266366430643B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(467) := '20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233737343430383B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(468) := '2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(469) := '7574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D';
wwv_flow_imp.g_varchar2_table(470) := '0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233846353230413B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(471) := '2D636F6C6F723A20236261396337383B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666663B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(472) := '612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D73';
wwv_flow_imp.g_varchar2_table(473) := '6861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236261396337383B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D77';
wwv_flow_imp.g_varchar2_table(474) := '61726E696E672E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236261396337383B0D0A2020636F6C6F723A20236261396337383B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373';
wwv_flow_imp.g_varchar2_table(475) := '207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233433364231443B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B';
wwv_flow_imp.g_varchar2_table(476) := '67726F756E642D636F6C6F723A20233563393332383B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D616374';
wwv_flow_imp.g_varchar2_table(477) := '6976652D6261636B67726F756E642D636F6C6F723A20233336353731383B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(478) := '202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D74657874';
wwv_flow_imp.g_varchar2_table(479) := '2D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F';
wwv_flow_imp.g_varchar2_table(480) := '726465722D636F6C6F723A20233433364231443B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233562366634383B';
wwv_flow_imp.g_varchar2_table(481) := '0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D';
wwv_flow_imp.g_varchar2_table(482) := '636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A2020';
wwv_flow_imp.g_varchar2_table(483) := '2D2D612D627574746F6E2D746578742D636F6C6F723A20233562366634383B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D';
wwv_flow_imp.g_varchar2_table(484) := '2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233562366634383B0D0A2020636F6C6F723A20233562366634383B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6461';
wwv_flow_imp.g_varchar2_table(485) := '6E676572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234233333131463B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(486) := '6261636B67726F756E642D636F6C6F723A20236461343032623B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(487) := '2D6163746976652D6261636B67726F756E642D636F6C6F723A20233964326231623B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(488) := '3B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D';
wwv_flow_imp.g_varchar2_table(489) := '746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64';
wwv_flow_imp.g_varchar2_table(490) := '616E6765722E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234233333131463B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E7370';
wwv_flow_imp.g_varchar2_table(491) := '6172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233939353834663B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E67';
wwv_flow_imp.g_varchar2_table(492) := '65722E742D427574746F6E2D2D6C696E6B2C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D';
wwv_flow_imp.g_varchar2_table(493) := '2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(494) := '3939353834663B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765';
wwv_flow_imp.g_varchar2_table(495) := '722E612D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233939353834663B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(496) := '3939353834663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233232374539453B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(497) := '236666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233237386662333B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(498) := '746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233164366438393B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(499) := '612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(500) := '6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574';
wwv_flow_imp.g_varchar2_table(501) := '746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(502) := '6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(503) := '746578742D636F6C6F723A20236666663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(504) := '20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(505) := '3A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D42';
wwv_flow_imp.g_varchar2_table(506) := '7574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C6574';
wwv_flow_imp.g_varchar2_table(507) := '74652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D7061646469';
wwv_flow_imp.g_varchar2_table(508) := '6E672D783A20302E323572656D3B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472';
wwv_flow_imp.g_varchar2_table(509) := '616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D';
wwv_flow_imp.g_varchar2_table(510) := '636F6C6F72293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D42757474';
wwv_flow_imp.g_varchar2_table(511) := '6F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D';
wwv_flow_imp.g_varchar2_table(512) := '427574746F6E2E612D427574746F6E2D2D6E6F5549202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D4275';
wwv_flow_imp.g_varchar2_table(513) := '74746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234233333131463B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373';
wwv_flow_imp.g_varchar2_table(514) := '202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233433364231443B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(515) := '0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(516) := '636F6C6F723A20233232374539453B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A616674';
wwv_flow_imp.g_varchar2_table(517) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233846353230413B0D0A7D0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F';
wwv_flow_imp.g_varchar2_table(518) := '766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233345363836433B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F63';
wwv_flow_imp.g_varchar2_table(519) := '75732D6F75746C696E653A206E6F6E653B0D0A20202D2D612D63762D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D6376';
wwv_flow_imp.g_varchar2_table(520) := '2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D32707820726762612830';
wwv_flow_imp.g_varchar2_table(521) := '2C20302C20302C20302E303735293B0D0A20202D2D612D63762D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(522) := '2D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F';
wwv_flow_imp.g_varchar2_table(523) := '7665722D736861646F773A20302034707820302E3572656D2030207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F';
wwv_flow_imp.g_varchar2_table(524) := '756E642D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(525) := '2D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D736861646F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20233345';
wwv_flow_imp.g_varchar2_table(526) := '363836433B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(527) := '3172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D';
wwv_flow_imp.g_varchar2_table(528) := '636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D63762D69636F6E2D6261636B67726F756E642D636F6C6F723A20233345363836433B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20236666';
wwv_flow_imp.g_varchar2_table(529) := '663B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20313030253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A20327265';
wwv_flow_imp.g_varchar2_table(530) := '6D3B0D0A20202D2D612D63762D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(531) := '723A20236666663B0D0A20202D2D612D63762D696E697469616C732D6261636B67726F756E642D636F6C6F723A20233345363836433B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(532) := '2D63762D7375627469746C652D666F6E742D7765696768743A203430303B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(533) := '233636363636363B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D';
wwv_flow_imp.g_varchar2_table(534) := '73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E363837357265';
wwv_flow_imp.g_varchar2_table(535) := '6D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20233636363636363B0D0A20202D2D612D63762D616374696F';
wwv_flow_imp.g_varchar2_table(536) := '6E732D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D616374696F6E732D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D63762D616374696F6E732D70616464696E67';
wwv_flow_imp.g_varchar2_table(537) := '2D793A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D';
wwv_flow_imp.g_varchar2_table(538) := '0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C617920';
wwv_flow_imp.g_varchar2_table(539) := '7B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E';
wwv_flow_imp.g_varchar2_table(540) := '672D79293B0D0A7D0D0A2E612D43617264566965772D66756C6C4C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D';
wwv_flow_imp.g_varchar2_table(541) := '612D63762D666F6375732D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E746572';
wwv_flow_imp.g_varchar2_table(542) := '3B0D0A7D0D0A2E612D43617264566965772D6D656469612061207B0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061';
wwv_flow_imp.g_varchar2_table(543) := '636974793A20302E353B0D0A7D0D0A2E612D43617264566965772D6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D66';
wwv_flow_imp.g_varchar2_table(544) := '69727374207B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(545) := '2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(546) := '7375627469746C652D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C';
wwv_flow_imp.g_varchar2_table(547) := '20302E3635293B0D0A20202D2D612D63762D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F';
wwv_flow_imp.g_varchar2_table(548) := '74285B636C6173735D29207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B6772';
wwv_flow_imp.g_varchar2_table(549) := '6F756E6420613A6E6F74285B636C6173735D293A666F637573207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F76';
wwv_flow_imp.g_varchar2_table(550) := '6572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F';
wwv_flow_imp.g_varchar2_table(551) := '723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E736574';
wwv_flow_imp.g_varchar2_table(552) := '3B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E';
wwv_flow_imp.g_varchar2_table(553) := '7461696E65722D73697A653A20322E3572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(554) := '762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69';
wwv_flow_imp.g_varchar2_table(555) := '636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E6974';
wwv_flow_imp.g_varchar2_table(556) := '69616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C';
wwv_flow_imp.g_varchar2_table(557) := '732D666F6E742D7765696768743A203430303B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B';
wwv_flow_imp.g_varchar2_table(558) := '0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(559) := '6D656469612D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D';
wwv_flow_imp.g_varchar2_table(560) := '0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D666972';
wwv_flow_imp.g_varchar2_table(561) := '7374202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A207661';
wwv_flow_imp.g_varchar2_table(562) := '72282D2D612D63762D6D656469612D70616464696E672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D';
wwv_flow_imp.g_varchar2_table(563) := '65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70';
wwv_flow_imp.g_varchar2_table(564) := '207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E35';
wwv_flow_imp.g_varchar2_table(565) := '72656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A';
wwv_flow_imp.g_varchar2_table(566) := '20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A';
wwv_flow_imp.g_varchar2_table(567) := '20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(568) := '742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(569) := '6541202E6861732D6D656469612D2D6261636B67726F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(570) := '2D626F6479202B202E612D43617264566965772D616374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D';
wwv_flow_imp.g_varchar2_table(571) := '732D2D726F77202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D';
wwv_flow_imp.g_varchar2_table(572) := '656E643B0D0A2020677269642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264';
wwv_flow_imp.g_varchar2_table(573) := '566965772D6974656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C';
wwv_flow_imp.g_varchar2_table(574) := '6F636B2D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D';
wwv_flow_imp.g_varchar2_table(575) := '43617264566965772D6974656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(576) := '2D696E6C696E652D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(577) := '642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F';
wwv_flow_imp.g_varchar2_table(578) := '6E7461696E65722D73697A653A203472656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E';
wwv_flow_imp.g_varchar2_table(579) := '2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F';
wwv_flow_imp.g_varchar2_table(580) := '726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73';
wwv_flow_imp.g_varchar2_table(581) := '697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(582) := '696768743A203430303B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F72646572';
wwv_flow_imp.g_varchar2_table(583) := '2D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(584) := '762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20';
wwv_flow_imp.g_varchar2_table(585) := '312E373572656D3B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(586) := '726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A';
wwv_flow_imp.g_varchar2_table(587) := '20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20';
wwv_flow_imp.g_varchar2_table(588) := '202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(589) := '766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(590) := '696E697469616C732D666F6E742D73697A653A203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(591) := '2D696E6C696E652D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D686561646572';
wwv_flow_imp.g_varchar2_table(592) := '2D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F';
wwv_flow_imp.g_varchar2_table(593) := '6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F';
wwv_flow_imp.g_varchar2_table(594) := '6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F';
wwv_flow_imp.g_varchar2_table(595) := '6E57726170202E612D43617264566965772D69636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F';
wwv_flow_imp.g_varchar2_table(596) := '6E2D2D746F70202E612D43617264566965772D69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20';
wwv_flow_imp.g_varchar2_table(597) := '20746578742D736861646F773A20302031707820317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A652920';
wwv_flow_imp.g_varchar2_table(598) := '2F2032293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D';
wwv_flow_imp.g_varchar2_table(599) := '612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170';
wwv_flow_imp.g_varchar2_table(600) := '207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D';
wwv_flow_imp.g_varchar2_table(601) := '0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D43617264';
wwv_flow_imp.g_varchar2_table(602) := '73526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E61';
wwv_flow_imp.g_varchar2_table(603) := '2D43617264566965772D69636F6E57726170207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E';
wwv_flow_imp.g_varchar2_table(604) := '7365743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479';
wwv_flow_imp.g_varchar2_table(605) := '207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A20617574';
wwv_flow_imp.g_varchar2_table(606) := '6F3B0D0A20206D617267696E2D696E6C696E652D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261';
wwv_flow_imp.g_varchar2_table(607) := '6467653A6E6F74283A66697273742D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(608) := '726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A20';
wwv_flow_imp.g_varchar2_table(609) := '206865696768743A20756E7365743B0D0A20206D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474';
wwv_flow_imp.g_varchar2_table(610) := '683A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(611) := '67696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(612) := '6C6542202E612D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3235';
wwv_flow_imp.g_varchar2_table(613) := '72656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(614) := '67696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D43';
wwv_flow_imp.g_varchar2_table(615) := '61726473526567696F6E2D2D7374796C6543207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E30';
wwv_flow_imp.g_varchar2_table(616) := '3235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(617) := '6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B';
wwv_flow_imp.g_varchar2_table(618) := '0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D';
wwv_flow_imp.g_varchar2_table(619) := '2D7374796C6543202E6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D746974';
wwv_flow_imp.g_varchar2_table(620) := '6C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D62';
wwv_flow_imp.g_varchar2_table(621) := '6F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F7428';
wwv_flow_imp.g_varchar2_table(622) := '2E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929';
wwv_flow_imp.g_varchar2_table(623) := '202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(624) := '2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473';
wwv_flow_imp.g_varchar2_table(625) := '526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C6F636B2D7374';
wwv_flow_imp.g_varchar2_table(626) := '6172743A20303B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(627) := '207B0D0A20202020646973706C61793A20666C65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274202E612D4361';
wwv_flow_imp.g_varchar2_table(628) := '7264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D';
wwv_flow_imp.g_varchar2_table(629) := '2D6669727374202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77';
wwv_flow_imp.g_varchar2_table(630) := '202E6861732D6D656469612D2D66697273742E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(631) := '74796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A2063656E746572';
wwv_flow_imp.g_varchar2_table(632) := '3B0D0A2020677269642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(633) := '67696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269';
wwv_flow_imp.g_varchar2_table(634) := '642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E742D43617264';
wwv_flow_imp.g_varchar2_table(635) := '73526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F';
wwv_flow_imp.g_varchar2_table(636) := '77202E6861732D69636F6E2D2D656E64207B0D0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(637) := '74796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D696E6D61782830';
wwv_flow_imp.g_varchar2_table(638) := '2C20766172282D2D612D63762D69636F6E2D7370616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D6F76652D7061';
wwv_flow_imp.g_varchar2_table(639) := '6464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A65';
wwv_flow_imp.g_varchar2_table(640) := '3A20302E38373572656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6669';
wwv_flow_imp.g_varchar2_table(641) := '656C642D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D';
wwv_flow_imp.g_varchar2_table(642) := '783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D636865636B626F';
wwv_flow_imp.g_varchar2_table(643) := '782D69636F6E2D73697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A';
wwv_flow_imp.g_varchar2_table(644) := '20312E323572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C62';
wwv_flow_imp.g_varchar2_table(645) := '7574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20';
wwv_flow_imp.g_varchar2_table(646) := '302E33373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(647) := '202D2D612D706F7075706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C6F762D636869';
wwv_flow_imp.g_varchar2_table(648) := '702D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E';
wwv_flow_imp.g_varchar2_table(649) := '33373572656D3B0D0A20202D2D612D7377697463682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A2030';
wwv_flow_imp.g_varchar2_table(650) := '2E3138373572656D3B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D466F726D2D2D';
wwv_flow_imp.g_varchar2_table(651) := '6C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D3B0D0A202066';
wwv_flow_imp.g_varchar2_table(652) := '6F6E742D73697A653A20302E38373572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D6963';
wwv_flow_imp.g_varchar2_table(653) := '6F6E2C0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065';
wwv_flow_imp.g_varchar2_table(654) := '722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A';
wwv_flow_imp.g_varchar2_table(655) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974';
wwv_flow_imp.g_varchar2_table(656) := '656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D697465';
wwv_flow_imp.g_varchar2_table(657) := '6D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D63';
wwv_flow_imp.g_varchar2_table(658) := '6F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D636F6C6F722D70';
wwv_flow_imp.g_varchar2_table(659) := '69636B65722D636F6C6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D68';
wwv_flow_imp.g_varchar2_table(660) := '61732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(661) := '20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E';
wwv_flow_imp.g_varchar2_table(662) := '742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(663) := '2D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E';
wwv_flow_imp.g_varchar2_table(664) := '742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D666965';
wwv_flow_imp.g_varchar2_table(665) := '6C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E';
wwv_flow_imp.g_varchar2_table(666) := '3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D';
wwv_flow_imp.g_varchar2_table(667) := '2D73687574746C652073656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C';
wwv_flow_imp.g_varchar2_table(668) := '655F6C6566742C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C6172';
wwv_flow_imp.g_varchar2_table(669) := '6765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652C0D0A2E';
wwv_flow_imp.g_varchar2_table(670) := '742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(671) := '302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D6669656C642D69';
wwv_flow_imp.g_varchar2_table(672) := '6E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D78';
wwv_flow_imp.g_varchar2_table(673) := '3A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D636865636B626F78';
wwv_flow_imp.g_varchar2_table(674) := '2D69636F6E2D73697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E3572';
wwv_flow_imp.g_varchar2_table(675) := '656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E';
wwv_flow_imp.g_varchar2_table(676) := '2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3572';
wwv_flow_imp.g_varchar2_table(677) := '656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D70';
wwv_flow_imp.g_varchar2_table(678) := '6F7075706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(679) := '6768743A20312E3572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(680) := '2D7377697463682D77696474683A20342E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D73';
wwv_flow_imp.g_varchar2_table(681) := '77697463682D746F67676C652D77696474683A203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D546578742C0D0A';
wwv_flow_imp.g_varchar2_table(682) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(683) := '2D466F726D2D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C617267652E617065';
wwv_flow_imp.g_varchar2_table(684) := '782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(685) := '2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65';
wwv_flow_imp.g_varchar2_table(686) := '722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C63';
wwv_flow_imp.g_varchar2_table(687) := '28766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B';
wwv_flow_imp.g_varchar2_table(688) := '6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574';
wwv_flow_imp.g_varchar2_table(689) := '746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C79';
wwv_flow_imp.g_varchar2_table(690) := '2D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D';
wwv_flow_imp.g_varchar2_table(691) := '466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D46';
wwv_flow_imp.g_varchar2_table(692) := '6F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D786C';
wwv_flow_imp.g_varchar2_table(693) := '61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D';
wwv_flow_imp.g_varchar2_table(694) := '2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D70616464696E';
wwv_flow_imp.g_varchar2_table(695) := '672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C';
wwv_flow_imp.g_varchar2_table(696) := '64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365';
wwv_flow_imp.g_varchar2_table(697) := '743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C';
wwv_flow_imp.g_varchar2_table(698) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C64';
wwv_flow_imp.g_varchar2_table(699) := '2D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E3632357265';
wwv_flow_imp.g_varchar2_table(700) := '6D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669656C642D666C';
wwv_flow_imp.g_varchar2_table(701) := '2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652C0D';
wwv_flow_imp.g_varchar2_table(702) := '0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(703) := '2D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A65';
wwv_flow_imp.g_varchar2_table(704) := '3A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(705) := '202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A6265666F726520';
wwv_flow_imp.g_varchar2_table(706) := '7B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F7220302E3135732065';
wwv_flow_imp.g_varchar2_table(707) := '6173652C20626F782D736861646F7720302E31357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A61667465722C0D0A2E';
wwv_flow_imp.g_varchar2_table(708) := '752D726164696F3A6166746572207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F7061636974792030';
wwv_flow_imp.g_varchar2_table(709) := '2E31357320656173652C207472616E73666F726D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A61';
wwv_flow_imp.g_varchar2_table(710) := '63746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A616374697665';
wwv_flow_imp.g_varchar2_table(711) := '3A6265666F72652C0D0A2E752D726164696F3A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528302E3735293B';
wwv_flow_imp.g_varchar2_table(712) := '0D0A7D0D0A2E726F2D636865636B626F782E69732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A616674';
wwv_flow_imp.g_varchar2_table(713) := '65722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D44617465506963';
wwv_flow_imp.g_varchar2_table(714) := '6B65722D63616C656E6461725469746C65207B0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D77696474682C203170';
wwv_flow_imp.g_varchar2_table(715) := '78293B0D0A2020626F726465722D626C6F636B2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E6461722D686561';
wwv_flow_imp.g_varchar2_table(716) := '6465722D626F726465722D636F6C6F722C20766172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E207B0D0A202064';
wwv_flow_imp.g_varchar2_table(717) := '6973706C61793A20666C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D646174657069';
wwv_flow_imp.g_varchar2_table(718) := '636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73';
wwv_flow_imp.g_varchar2_table(719) := '697A652C203172656D29202A2032293B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D44617465506963';
wwv_flow_imp.g_varchar2_table(720) := '6B65722D74696D654D696E757465732C0D0A2E612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C617465';
wwv_flow_imp.g_varchar2_table(721) := '2D61726561733A202273656C656374223B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374';
wwv_flow_imp.g_varchar2_table(722) := '2C0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374';
wwv_flow_imp.g_varchar2_table(723) := '207B0D0A20206F726465723A206E6F6E653B0D0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(724) := '2D446174655069636B65722D6D6F6E74683A61667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069636B65722D74';
wwv_flow_imp.g_varchar2_table(725) := '696D654D696E757465733A61667465722C0D0A2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E74204150455820536D';
wwv_flow_imp.g_varchar2_table(726) := '616C6C223B0D0A2020677269642D617265613A2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D646174657069';
wwv_flow_imp.g_varchar2_table(727) := '636B65722D6D6F6E74687069636B65722D73656C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(728) := '446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D6D6F6E746870';
wwv_flow_imp.g_varchar2_table(729) := '69636B65722D73656C6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D69';
wwv_flow_imp.g_varchar2_table(730) := '6E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D657069636B65722D7365';
wwv_flow_imp.g_varchar2_table(731) := '6C6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_imp.g_varchar2_table(732) := '6E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472';
wwv_flow_imp.g_varchar2_table(733) := '616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F766572207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(734) := '2D612D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D63';
wwv_flow_imp.g_varchar2_table(735) := '6F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D626F726465';
wwv_flow_imp.g_varchar2_table(736) := '722D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A616374697665207B0D0A';
wwv_flow_imp.g_varchar2_table(737) := '20202D2D612D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D6261';
wwv_flow_imp.g_varchar2_table(738) := '636B67726F756E642D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D627574746F6E2D68';
wwv_flow_imp.g_varchar2_table(739) := '6F7665722D746578742D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D2D612D627574';
wwv_flow_imp.g_varchar2_table(740) := '746F6E2D686F7665722D626F726465722D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D627574746F6E2D68';
wwv_flow_imp.g_varchar2_table(741) := '6F7665722D736861646F7729293B0D0A7D0D0A2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E737061';
wwv_flow_imp.g_varchar2_table(742) := '72656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F722C2063757272656E74436F6C6F72293B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(743) := '2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D';
wwv_flow_imp.g_varchar2_table(744) := '656E752D6974656D426F64792E69732D666F6375736564202E742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(745) := '20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E75';
wwv_flow_imp.g_varchar2_table(746) := '6261722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974';
wwv_flow_imp.g_varchar2_table(747) := '656D2D626F726465722D77696474682C2031707829202A202D3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D20';
wwv_flow_imp.g_varchar2_table(748) := '7B0D0A2020626F726465722D746F702D77696474683A20303B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E20';
wwv_flow_imp.g_varchar2_table(749) := '7B0D0A20206F75746C696E653A20766172282D2D75742D666F6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F';
wwv_flow_imp.g_varchar2_table(750) := '7229293B0D0A20206F75746C696E652D6F66667365743A202D3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B';
wwv_flow_imp.g_varchar2_table(751) := '0D0A202077686974652D73706163653A206E6F777261703B0D0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D';
wwv_flow_imp.g_varchar2_table(752) := '612D6D656E756261722D6974656D2D6C696E652D6865696768742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D69';
wwv_flow_imp.g_varchar2_table(753) := '6E6C696E652D656E643A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(754) := '0A2E742D4865616465722D6E6176202E612D4D656E752D2D63757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C203730';
wwv_flow_imp.g_varchar2_table(755) := '30293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E';
wwv_flow_imp.g_varchar2_table(756) := '756261722D6974656D2D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D7465';
wwv_flow_imp.g_varchar2_table(757) := '78742D636F6C6F72293B0D0A7D0D0A612D73656C656374207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_imp.g_varchar2_table(758) := '704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465';
wwv_flow_imp.g_varchar2_table(759) := '642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(760) := '642D636F6C6F723A2072676261283234372C203234372C203234372C20302E3038293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D637572';
wwv_flow_imp.g_varchar2_table(761) := '72656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54';
wwv_flow_imp.g_varchar2_table(762) := '726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E742D54';
wwv_flow_imp.g_varchar2_table(763) := '7265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283234302C203234302C20323430';
wwv_flow_imp.g_varchar2_table(764) := '2C20302E3038292021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D5472656556696577';
wwv_flow_imp.g_varchar2_table(765) := '2D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D636F6E74656E742C0D0A2E742D';
wwv_flow_imp.g_varchar2_table(766) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C65202B202E612D54726565566965772D636F6E7465';
wwv_flow_imp.g_varchar2_table(767) := '6E74207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E612D54726565566965772D636F6E74656E742E69732D73656C6563746564203E202E6661';
wwv_flow_imp.g_varchar2_table(768) := '207B0D0A20202D2D75742D74726565766965772D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D547265654E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D7374796C6542207B0D0A20202D2D75742D74726565766965772D';
wwv_flow_imp.g_varchar2_table(769) := '62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62616467652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C';
wwv_flow_imp.g_varchar2_table(770) := '20353030293B0D0A20202D2D75742D74726565766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474683A20312E373572656D3B';
wwv_flow_imp.g_varchar2_table(771) := '0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D636F6E7461696E65722D77696474683A20766172282D2D75742D74726565766965';
wwv_flow_imp.g_varchar2_table(772) := '772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D75742D74726565766965772D6E6F64652D696E64656E743A203072656D3B0D0A20202D2D75742D74726565766965772D6C656166';
wwv_flow_imp.g_varchar2_table(773) := '2D6E6F64652D696E64656E743A20302E36323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D6C6561662D70616464696E672D793A203072656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E67';
wwv_flow_imp.g_varchar2_table(774) := '2D793A20302E36323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(775) := '6E6F64652D2D746F704C6576656C20756C207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F6465';
wwv_flow_imp.g_varchar2_table(776) := '2D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(777) := '772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E';
wwv_flow_imp.g_varchar2_table(778) := '61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D547265655669';
wwv_flow_imp.g_varchar2_table(779) := '65772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(780) := '6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_imp.g_varchar2_table(781) := '2D54726565566965772D726F772E69732D63757272656E742D2D746F70202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_imp.g_varchar2_table(782) := '4C6576656C20756C202E612D54726565566965772D726F772E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(783) := '642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E';
wwv_flow_imp.g_varchar2_table(784) := '6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_imp.g_varchar2_table(785) := '65566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D617279292034707820';
wwv_flow_imp.g_varchar2_table(786) := '3020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E752D52';
wwv_flow_imp.g_varchar2_table(787) := '544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F';
wwv_flow_imp.g_varchar2_table(788) := '77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F6465';
wwv_flow_imp.g_varchar2_table(789) := '2D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_imp.g_varchar2_table(790) := '6C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D7061';
wwv_flow_imp.g_varchar2_table(791) := '6C657474652D7072696D6172792920347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D';
wwv_flow_imp.g_varchar2_table(792) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D5472';
wwv_flow_imp.g_varchar2_table(793) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F';
wwv_flow_imp.g_varchar2_table(794) := '773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E742D547265654E';
wwv_flow_imp.g_varchar2_table(795) := '61762D2D7374796C6542203E20756C207B0D0A20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E736974696F6E2C20302E31732920656173653B0D0A20206D617267696E3A20302E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(796) := '0A7D0D0A4061742D726F6F74202E6A732D6E6176436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A202020206D617267696E3A20303B';
wwv_flow_imp.g_varchar2_table(797) := '0D0A20207D0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A20206D617267696E2D626C6F636B2D656E643A';
wwv_flow_imp.g_varchar2_table(798) := '20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A20206D617267696E2D696E6C696E652D73746172743A20302E323572656D3B0D0A20206D61';
wwv_flow_imp.g_varchar2_table(799) := '7267696E2D696E6C696E652D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(800) := '3A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E';
wwv_flow_imp.g_varchar2_table(801) := '742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(802) := '6F756E642D636F6C6F723A20233345363836433B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D74';
wwv_flow_imp.g_varchar2_table(803) := '6F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74';
wwv_flow_imp.g_varchar2_table(804) := '656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(805) := '636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64';
wwv_flow_imp.g_varchar2_table(806) := '652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233430366236662021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(807) := '2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A2020626F726465722D7261646975733A20302E323572656D3B0D0A7D0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(808) := '522D6469616C6F672D2D646F776E6C6F61642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(809) := '6F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(810) := '636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C';
wwv_flow_imp.g_varchar2_table(811) := '742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(812) := '69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C';
wwv_flow_imp.g_varchar2_table(813) := '65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E';
wwv_flow_imp.g_varchar2_table(814) := '612D49636F6E4C6973742D6974656D2C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F';
wwv_flow_imp.g_varchar2_table(815) := '6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2E69732D73656C65637465642C0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(816) := '52522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D617279';
wwv_flow_imp.g_varchar2_table(817) := '29203020327078203020303B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(818) := '656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D72696768742D636F';
wwv_flow_imp.g_varchar2_table(819) := '6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C697374207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F';
wwv_flow_imp.g_varchar2_table(820) := '756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D';
wwv_flow_imp.g_varchar2_table(821) := '746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(822) := '636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67';
wwv_flow_imp.g_varchar2_table(823) := '726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A2020';
wwv_flow_imp.g_varchar2_table(824) := '2D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(825) := '52522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D62';
wwv_flow_imp.g_varchar2_table(826) := '6F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D72696768742D636F6C';
wwv_flow_imp.g_varchar2_table(827) := '6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D202B206C6162656C20';
wwv_flow_imp.g_varchar2_table(828) := '7B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D69';
wwv_flow_imp.g_varchar2_table(829) := '74656D20696E7075745B747970653D726164696F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D';
wwv_flow_imp.g_varchar2_table(830) := '0D0A2E612D4952522D6469616C6F67496E666F3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D';
wwv_flow_imp.g_varchar2_table(831) := '0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20202D2D612D627574746F6E2D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(832) := '6E642D636F6C6F723A20726762612832322C2032312C2031392C20302E3038293B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(833) := '282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72';
wwv_flow_imp.g_varchar2_table(834) := '6465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72292030203020';
wwv_flow_imp.g_varchar2_table(835) := '30203170783B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(836) := '6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E';
wwv_flow_imp.g_varchar2_table(837) := '752D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(838) := '6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C';
wwv_flow_imp.g_varchar2_table(839) := '6F72293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20766172282D2D612D66';
wwv_flow_imp.g_varchar2_table(840) := '69656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E';
wwv_flow_imp.g_varchar2_table(841) := '7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F6C42';
wwv_flow_imp.g_varchar2_table(842) := '7265616B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(843) := '6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(844) := '2D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D73617665645265706F7274207B0D0A20';
wwv_flow_imp.g_varchar2_table(845) := '202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233343363437383B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F';
wwv_flow_imp.g_varchar2_table(846) := '7665722D6261636B67726F756E642D636F6C6F723A20234441453045343B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263682C0D0A';
wwv_flow_imp.g_varchar2_table(847) := '2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C';
wwv_flow_imp.g_varchar2_table(848) := '2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233439383038393B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234442453645373B0D';
wwv_flow_imp.g_varchar2_table(849) := '0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D66696C74';
wwv_flow_imp.g_varchar2_table(850) := '65722C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A2023374439313637';
wwv_flow_imp.g_varchar2_table(851) := '3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234535453945313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D63';
wwv_flow_imp.g_varchar2_table(852) := '6F6E74726F6C427265616B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D63';
wwv_flow_imp.g_varchar2_table(853) := '6F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(854) := '612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C';
wwv_flow_imp.g_varchar2_table(855) := '0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F7570427920';
wwv_flow_imp.g_varchar2_table(856) := '7B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(857) := '6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D6167';
wwv_flow_imp.g_varchar2_table(858) := '677265676174652C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D616767726567617465207B0D0A20202D2D612D7265706F72742D636F6E';
wwv_flow_imp.g_varchar2_table(859) := '74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(860) := '636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952522D7265';
wwv_flow_imp.g_varchar2_table(861) := '706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6963';
wwv_flow_imp.g_varchar2_table(862) := '6F6E2D6261636B67726F756E642D636F6C6F723A20234431383433333B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234636453644363B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(863) := '0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D66';
wwv_flow_imp.g_varchar2_table(864) := '6C6173686261636B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(865) := '3A20233443343133383B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234442443944373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172';
wwv_flow_imp.g_varchar2_table(866) := '792D6974656D2D2D63686172742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D6974656D';
wwv_flow_imp.g_varchar2_table(867) := '2D2D6368617274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63';
wwv_flow_imp.g_varchar2_table(868) := '656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D6974656D';
wwv_flow_imp.g_varchar2_table(869) := '2D2D7069766F742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6365';
wwv_flow_imp.g_varchar2_table(870) := '6C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233443343133383B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(871) := '4442443944373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(872) := '522D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74726F';
wwv_flow_imp.g_varchar2_table(873) := '6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233846384638463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(874) := '6F723A20234539453945393B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E67732C';
wwv_flow_imp.g_varchar2_table(875) := '0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E6773207B0D0A20202D2D612D7265706F';
wwv_flow_imp.g_varchar2_table(876) := '72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233846384638463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67';
wwv_flow_imp.g_varchar2_table(877) := '726F756E642D636F6C6F723A20234539453945393B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E612D4756';
wwv_flow_imp.g_varchar2_table(878) := '2D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(879) := '2D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D20696E70';
wwv_flow_imp.g_varchar2_table(880) := '75743A6E6F74285B747970653D22726164696F225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2073656C6563745B73697A653D2731275D3A66';
wwv_flow_imp.g_varchar2_table(881) := '6F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D636869702D6C6162656C';
wwv_flow_imp.g_varchar2_table(882) := '2D73706163696E672C2034707829202F2032293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A653A20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F';
wwv_flow_imp.g_varchar2_table(883) := '636B2D73697A652C203372656D293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D0A2020666F6E742D7765696768743A20766172282D2D75742D6469616772';
wwv_flow_imp.g_varchar2_table(884) := '616D2D69636F6E2D666F6E742D7765696768742C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E207B0D0A20';
wwv_flow_imp.g_varchar2_table(885) := '202D2D612D627574746F6E2D626F726465722D77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D73746174652D6261636B6772';
wwv_flow_imp.g_varchar2_table(886) := '6F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E3A686F76657220';
wwv_flow_imp.g_varchar2_table(887) := '7B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D747970652D626F726465722D636F6C6F722C20766172282D2D612D62757474';
wwv_flow_imp.g_varchar2_table(888) := '6F6E2D626F726465722D636F6C6F722929293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D746F6F6C62';
wwv_flow_imp.g_varchar2_table(889) := '61722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C6173742D6368696C64202E612D546F6F6C6261722D6974656D3A6C6173742D';
wwv_flow_imp.g_varchar2_table(890) := '6368696C64207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B666C6F7741';
wwv_flow_imp.g_varchar2_table(891) := '7070207B0D0A20206D61782D626C6F636B2D73697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C';
wwv_flow_imp.g_varchar2_table(892) := '6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464696E6720';
wwv_flow_imp.g_varchar2_table(893) := '2E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C20337265';
wwv_flow_imp.g_varchar2_table(894) := '6D29293B0D0A7D0D0A2E692D683438302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172';
wwv_flow_imp.g_varchar2_table(895) := '282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77';
wwv_flow_imp.g_varchar2_table(896) := '417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D68323430202E742D526567696F6E';
wwv_flow_imp.g_varchar2_table(897) := '2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172';
wwv_flow_imp.g_varchar2_table(898) := '282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A';
wwv_flow_imp.g_varchar2_table(899) := '2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A20';
wwv_flow_imp.g_varchar2_table(900) := '3229293B0D0A7D0D0A2E692D68343830202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261';
wwv_flow_imp.g_varchar2_table(901) := '722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68363430202E742D526567696F6E2D626F6479202E612D576F';
wwv_flow_imp.g_varchar2_table(902) := '726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F';
wwv_flow_imp.g_varchar2_table(903) := '6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C6572202E6A6F696E742D7061706572207B0D0A2020696E7365742D626C6F63';
wwv_flow_imp.g_varchar2_table(904) := '6B2D73746172743A20322E3572656D2021696D706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172793A20766172282D2D75742D636F6D706F6E656E742D746578742D646566';
wwv_flow_imp.g_varchar2_table(905) := '61756C742D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D74';
wwv_flow_imp.g_varchar2_table(906) := '6578742D636F6C6F722D6272616E643A20766172282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D64616E6765723A20766172282D2D75742D70616C657474652D6461';
wwv_flow_imp.g_varchar2_table(907) := '6E6765722D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(908) := '2D737563636573733A20766172282D2D75742D70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A20312E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D';
wwv_flow_imp.g_varchar2_table(909) := '736D3A203172656D3B0D0A20202D2D6F6A2D636F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D646976696465722D6D617267696E3A';
wwv_flow_imp.g_varchar2_table(910) := '20302E3572656D3B0D0A20202D2D6F6A2D636F72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D626F7264';
wwv_flow_imp.g_varchar2_table(911) := '65722D636F6C6F723A20236363636363633B0D0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F722D686F76';
wwv_flow_imp.g_varchar2_table(912) := '65723A20766172282D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6F6A2D6C69';
wwv_flow_imp.g_varchar2_table(913) := '6E6B2D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(914) := '642D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D746578';
wwv_flow_imp.g_varchar2_table(915) := '742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163652D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E74';
wwv_flow_imp.g_varchar2_table(916) := '2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F';
wwv_flow_imp.g_varchar2_table(917) := '6A2D636F6C6C656374696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(918) := '6F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A2D707269';
wwv_flow_imp.g_varchar2_table(919) := '766174652D67616E74742D7461736B2D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D70726F67726573732D62672D636F6C6F723A20766172282D2D752D636F';
wwv_flow_imp.g_varchar2_table(920) := '6C6F722D31293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F7574';
wwv_flow_imp.g_varchar2_table(921) := '6C696E65642D6368726F6D652D626F726465722D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(922) := '722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(923) := '75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E';
wwv_flow_imp.g_varchar2_table(924) := '7472617374293B0D0A20202D2D6F6A2D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(18827943684301886693)
,p_theme_id=>42
,p_file_name=>'10374596606467561.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260716114152Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114152Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
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
 p_id=>wwv_flow_imp.id(18825674539129584973)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
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
 p_id=>wwv_flow_imp.id(18825674902042584980)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260713071050Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071050Z')
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
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713071051Z')
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
,p_step_title=>'Hospital'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721070245Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19110036813612792601)
,p_plug_name=>'Active Doctors KPI'
,p_static_id=>'active-doctors-kpi'
,p_title=>'Active Doctors KPI'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS c, ''Active Doctors'' AS label',
'FROM doctors WHERE status = ''Active'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260717182323Z')
,p_updated_on=>wwv_flow_imp.dz('20260717224936Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(19110036914731792602)
,p_region_id=>wwv_flow_imp.id(19110036813612792601)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'C'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LABEL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'C'
,p_updated_on=>wwv_flow_imp.dz('20260717224936Z')
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19110037030308792603)
,p_plug_name=>'Appointments by Department'
,p_static_id=>'appointments-by-department'
,p_title=>'Appointments by Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dep.department_name AS department, COUNT(a.appointment_id) AS appointments',
'FROM departments dep',
'LEFT JOIN doctors d ON d.department_id = dep.department_id',
'LEFT JOIN appointments a ON a.doctor_id = d.doctor_id',
'GROUP BY dep.department_name',
'ORDER BY 2 DESC'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260717192107Z')
,p_updated_on=>wwv_flow_imp.dz('20260717203616Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19110037184287792604)
,p_region_id=>wwv_flow_imp.id(19110037030308792603)
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
,p_created_on=>wwv_flow_imp.dz('20260717192107Z')
,p_updated_on=>wwv_flow_imp.dz('20260717203616Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19110037201084792605)
,p_chart_id=>wwv_flow_imp.id(19110037184287792604)
,p_static_id=>'employees_1'
,p_seq=>10
,p_name=>'Appointments'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dep.department_name AS department, COUNT(a.appointment_id) AS appointments',
'FROM departments dep',
'LEFT JOIN doctors d ON d.department_id = dep.department_id',
'LEFT JOIN appointments a ON a.doctor_id = d.doctor_id',
'GROUP BY dep.department_name',
'ORDER BY 2 DESC'))
,p_items_value_column_name=>'APPOINTMENTS'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260717192107Z')
,p_updated_on=>wwv_flow_imp.dz('20260717203616Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19110037397308792606)
,p_chart_id=>wwv_flow_imp.id(19110037184287792604)
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
,p_created_on=>wwv_flow_imp.dz('20260717192107Z')
,p_updated_on=>wwv_flow_imp.dz('20260717192107Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19110037491270792607)
,p_chart_id=>wwv_flow_imp.id(19110037184287792604)
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
,p_created_on=>wwv_flow_imp.dz('20260717192107Z')
,p_updated_on=>wwv_flow_imp.dz('20260717192107Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827873441768591506)
,p_plug_name=>'Chart'
,p_static_id=>'chart'
,p_title=>'Admissions by Room'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>12
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS room_type, COUNT(a.admission_id) AS admissions',
'FROM admissions a',
'JOIN rooms r ON r.room_id = a.room_id',
'GROUP BY r.room_type',
'ORDER BY 2 DESC'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260716070054Z')
,p_updated_on=>wwv_flow_imp.dz('20260721070245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(18827873556490591507)
,p_region_id=>wwv_flow_imp.id(18827873441768591506)
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
,p_stack_label=>'off'
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
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260716070054Z')
,p_updated_on=>wwv_flow_imp.dz('20260721070245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(18827873647188591508)
,p_chart_id=>wwv_flow_imp.id(18827873556490591507)
,p_static_id=>'employees_1'
,p_seq=>10
,p_name=>'Appointments'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS room_type, COUNT(a.admission_id) AS admissions',
'FROM admissions a',
'JOIN rooms r ON r.room_id = a.room_id',
'GROUP BY r.room_type',
'ORDER BY 2 DESC'))
,p_items_value_column_name=>'ADMISSIONS'
,p_items_label_column_name=>'ROOM_TYPE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260716070054Z')
,p_updated_on=>wwv_flow_imp.dz('20260721070245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(18827873752868591509)
,p_chart_id=>wwv_flow_imp.id(18827873556490591507)
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
,p_created_on=>wwv_flow_imp.dz('20260716070054Z')
,p_updated_on=>wwv_flow_imp.dz('20260716070054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(18827873834168591510)
,p_chart_id=>wwv_flow_imp.id(18827873556490591507)
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
,p_created_on=>wwv_flow_imp.dz('20260716070055Z')
,p_updated_on=>wwv_flow_imp.dz('20260716070055Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18825687936894585124)
,p_plug_name=>'Hospital'
,p_static_id=>'hospital'
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
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19110037517685792608)
,p_plug_name=>' Patients by Gender'
,p_static_id=>'patients-by-gender'
,p_title=>' Patients by Gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS gender, COUNT(*) AS patients',
'FROM patients GROUP BY gender'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260717192415Z')
,p_updated_on=>wwv_flow_imp.dz('20260717204303Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19110037666407792609)
,p_region_id=>wwv_flow_imp.id(19110037517685792608)
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
,p_created_on=>wwv_flow_imp.dz('20260717192415Z')
,p_updated_on=>wwv_flow_imp.dz('20260717204303Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19110037778586792610)
,p_chart_id=>wwv_flow_imp.id(19110037666407792609)
,p_static_id=>'employees'
,p_seq=>10
,p_name=>'Patients'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS gender, COUNT(*) AS patients',
'FROM patients GROUP BY gender'))
,p_items_value_column_name=>'PATIENTS'
,p_items_label_column_name=>'GENDER'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260717192415Z')
,p_updated_on=>wwv_flow_imp.dz('20260717204303Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826680657291606928)
,p_plug_name=>'Today''s Appointments'
,p_static_id=>'today-s-appointments'
,p_title=>'Today''s Appointments'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS c, ''Today''''s Appointments'' AS label',
'FROM appointments',
'WHERE TRUNC(appointment_date) = TRUNC(SYSDATE)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260715130350Z')
,p_updated_on=>wwv_flow_imp.dz('20260717220818Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18826680829586606929)
,p_region_id=>wwv_flow_imp.id(18826680657291606928)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'C'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LABEL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'C'
,p_updated_on=>wwv_flow_imp.dz('20260717220818Z')
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18826680849218606930)
,p_card_id=>wwv_flow_imp.id(18826680829586606929)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_updated_on=>wwv_flow_imp.dz('20260715130350Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826681004868606931)
,p_plug_name=>'Total Patients'
,p_static_id=>'today-s-appointments_1'
,p_title=>'Total Patients'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS c, ''Total Patients'' AS label',
'FROM patients'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260715130506Z')
,p_updated_on=>wwv_flow_imp.dz('20260717223049Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18826681072542606932)
,p_region_id=>wwv_flow_imp.id(18826681004868606931)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'C'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LABEL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'C'
,p_updated_on=>wwv_flow_imp.dz('20260717223049Z')
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18826681158147606933)
,p_card_id=>wwv_flow_imp.id(18826681072542606932)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_updated_on=>wwv_flow_imp.dz('20260715130851Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826681275430606934)
,p_plug_name=>'Currently Admitted'
,p_static_id=>'today-s-appointments_1_1'
,p_title=>'Currently Admitted'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS c, ''Currently Admitted'' AS label',
'FROM admissions',
'WHERE status = ''Admitted'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260715130506Z')
,p_updated_on=>wwv_flow_imp.dz('20260717230603Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18826681353625606935)
,p_region_id=>wwv_flow_imp.id(18826681275430606934)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'C'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LABEL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'C'
,p_updated_on=>wwv_flow_imp.dz('20260717230603Z')
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18826681512421606936)
,p_card_id=>wwv_flow_imp.id(18826681353625606935)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_updated_on=>wwv_flow_imp.dz('20260715130851Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826681606233606937)
,p_plug_name=>'Low Stock Medicines'
,p_static_id=>'today-s-appointments_1_1_1'
,p_title=>'Low Stock Medicines'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS c, ''Low Stock Medicines'' AS label',
'FROM medicines',
'WHERE current_stock < reorder_level'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260715130506Z')
,p_updated_on=>wwv_flow_imp.dz('20260717194354Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18826681710055606938)
,p_region_id=>wwv_flow_imp.id(18826681606233606937)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'C'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LABEL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'#APEX_FILES#sample_data/employees/&AVATAR_IMAGE.'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'C'
,p_updated_on=>wwv_flow_imp.dz('20260716085311Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18826681828979606939)
,p_card_id=>wwv_flow_imp.id(18826681710055606938)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_updated_on=>wwv_flow_imp.dz('20260715130851Z')
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Patients'
,p_alias=>'PATIENTS1'
,p_step_title=>'Patients'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721073811Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826291257332963399)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826283494882963350)
,p_plug_name=>'Patients'
,p_static_id=>'patients'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT patient_id, civil_id, full_name, gender, date_of_birth,',
'       FLOOR(MONTHS_BETWEEN(SYSDATE, date_of_birth)/12) AS age,',
'       mobile_no, email, blood_group, address,',
'       emergency_contact_name, emergency_contact_no, created_at',
'FROM patients'))
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
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260721073811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18826283601825963350)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_PATIENT_ID:\#PATIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8714869937544245
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260721073811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826287958598963387)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787049927827503701)
,p_db_column_name=>'AGE'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721073811Z')
,p_updated_on=>wwv_flow_imp.dz('20260721073811Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826287575368963385)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826285150068963376)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826289177018963391)
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
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826286393300963381)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826287229410963384)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826288417452963388)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826288778311963390)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826285592554963377)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826285968480963379)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826286750616963382)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826284770717963366)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18826292084270965979)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260713110059Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110059Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826289597635963393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826283494882963350)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18826289970240963394)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18826283494882963350)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18826290372133963395)
,p_event_id=>wwv_flow_imp.id(18826289970240963394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18826283494882963350)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110033Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110033Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Patients'
,p_alias=>'PATIENTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Patients'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713110030Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721075042Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826278965493963151)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826270301440963120)
,p_plug_name=>'Patients'
,p_static_id=>'patients'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260713110030Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110030Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826279337926963151)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826278965493963151)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18826279851181963153)
,p_button_id=>wwv_flow_imp.id(18826279337926963151)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826281203984963156)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18826278965493963151)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826280429786963156)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18826278965493963151)
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
,p_button_condition=>'P3_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826280822855963156)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18826278965493963151)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826273829279963143)
,p_name=>'P3_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
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
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826273401369963143)
,p_name=>'P3_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826271073185963138)
,p_name=>'P3_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Civil Id'
,p_source=>'CIVIL_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260713110030Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826274957941963147)
,p_name=>'P3_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
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
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826272244436963139)
,p_name=>'P3_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Date Of Birth'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_OF_BIRTH'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'STATIC',
  'max_static', '21-JUL-2026',
  'min_date', 'STATIC',
  'min_static', '01-JAN-1900',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260721065648Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826273025633963142)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826274161301963145)
,p_name=>'P3_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Emergency Contact Name'
,p_source=>'EMERGENCY_CONTACT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826274611193963146)
,p_name=>'P3_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
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
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826271494505963139)
,p_name=>'P3_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110030Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826271859549963139)
,p_name=>'P3_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Male;Male,Female;Female'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110030Z')
,p_updated_on=>wwv_flow_imp.dz('20260721075042Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826272564893963142)
,p_name=>'P3_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
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
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826270731472963132)
,p_name=>'P3_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_item_source_plug_id=>wwv_flow_imp.id(18826270301440963120)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713110030Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18826678490705606906)
,p_validation_name=>'Civil ID must be unique'
,p_static_id=>'civil-id-must-be-unique'
,p_validation_sequence=>10
,p_validation=>'NOT EXISTS (SELECT 1 FROM patients WHERE civil_id = :P3_CIVIL_ID AND patient_id <> NVL(:P3_PATIENT_ID, -1))'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This Civil ID already exists for another patient.',
''))
,p_associated_item=>wwv_flow_imp.id(18826271073185963138)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714053010Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054831Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826282375488963159)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8713643600544054
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826281592125963157)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18826270301440963120)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patients'
,p_static_id=>'initialize-form-patients'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8712860237544052
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826281950090963159)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18826270301440963120)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patients'
,p_static_id=>'process-form-patients'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8713218202544054
,p_created_on=>wwv_flow_imp.dz('20260713110031Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110031Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Doctors'
,p_alias=>'DOCTORS'
,p_step_title=>'Doctors'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714063638Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826702071237869550)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826695880219869500)
,p_plug_name=>'Doctors'
,p_static_id=>'doctors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'select d.doctor_id, d.full_name, d.department_id, dept.department_name, d.specialty_id, spec.specialty_name, d.mobile_no, d.email, d.consultation_fee, d.status from doctors d left join departments dept on d.department_id = dept.department_id left joi'
||'n doctor_specialties spec on d.specialty_id = spec.specialty_id'
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
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714063638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18826695946226869500)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_DOCTOR_ID:\#DOCTOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9127214338450395
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714063638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826699595864869540)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826678553407606907)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Department Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714062227Z')
,p_updated_on=>wwv_flow_imp.dz('20260714063638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826678757016606909)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>38
,p_column_identifier=>'K'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714062227Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826697132149869516)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826699189318869537)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826697572486869530)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826698770859869536)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826678632656606908)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Specialty Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714062227Z')
,p_updated_on=>wwv_flow_imp.dz('20260714063638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826678925903606910)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>48
,p_column_identifier=>'L'
,p_column_label=>'Specialty'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714062227Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826699992847869541)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18826871857573964437)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS:DEPARTMENT_ID:SPECIALTY_ID:DEPARTMENT_NAME:SPECIALTY_NAME'
,p_created_on=>wwv_flow_imp.dz('20260714062719Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062719Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826700394972869543)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826695880219869500)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18826700767523869544)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18826695880219869500)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18826701215958869545)
,p_event_id=>wwv_flow_imp.id(18826700767523869544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18826695880219869500)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714061130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Doctor'
,p_alias=>'DOCTOR'
,p_page_mode=>'MODAL'
,p_step_title=>'Doctor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826691378594869336)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826684743706869277)
,p_plug_name=>'Doctor'
,p_static_id=>'doctor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTORS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826691777520869337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826691378594869336)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18826692280073869339)
,p_button_id=>wwv_flow_imp.id(18826691777520869337)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826693597454869342)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18826691378594869336)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826692792427869341)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18826691378594869336)
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
,p_button_condition=>'P5_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826693150521869342)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18826691378594869336)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826688195761869333)
,p_name=>'P5_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
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
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826686009137869294)
,p_name=>'P5_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826685165035869286)
,p_name=>'P5_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826687785052869333)
,p_name=>'P5_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826685582587869293)
,p_name=>'P5_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826687400339869333)
,p_name=>'P5_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
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
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826686647693869331)
,p_name=>'P5_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_prompt=>'Specialty Id'
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DOCTOR_SPECIALTIES.SPECIALTY_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826688601604869334)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_item_source_plug_id=>wwv_flow_imp.id(18826684743706869277)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826694766181869345)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9126034293450240
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826694025544869343)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18826684743706869277)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor'
,p_static_id=>'initialize-form-doctor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9125293656450238
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826694415425869345)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18826684743706869277)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor'
,p_static_id=>'process-form-doctor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9125683537450240
,p_created_on=>wwv_flow_imp.dz('20260714061128Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Medicines'
,p_alias=>'MEDICINES'
,p_step_title=>'Medicines'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.stock-low{color:#c0392b;font-weight:bold;} tr:has(.stock-low){background:#fdecea;}'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714102614Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826889292971349022)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826884507772348973)
,p_plug_name=>'Medicines'
,p_static_id=>'medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'select m.medicine_id, m.medicine_name, mc.category_name, m.unit, m.current_stock, m.reorder_level, m.status, case when m.current_stock < m.reorder_level then ''stock-low'' end as stock_css from medicines m left join medicine_categories mc on mc.categor'
||'y_id = m.category_id'
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
,p_created_on=>wwv_flow_imp.dz('20260714101803Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102614Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18826884536060348973)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_MEDICINE_ID:\#MEDICINE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9315804171929868
,p_created_on=>wwv_flow_imp.dz('20260714101803Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102614Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826886503153349011)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826887314588349015)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_html_expression=>'<span class="#STOCK_CSS#">#CURRENT_STOCK#</span>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102035Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826885717748348993)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826886046397349008)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826887730415349016)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826888127539349018)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826679021404606911)
,p_db_column_name=>'STOCK_CSS'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Stock Css'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101901Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102035Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826886872802349013)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18826893027659398024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:CATEGORY_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS:STOCK_CSS'
,p_created_on=>wwv_flow_imp.dz('20260714102614Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102614Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826888476358349020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826884507772348973)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Medicine'
,p_alias=>'MEDICINE'
,p_step_title=>'Medicine'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714102255Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826889848025349028)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714101804Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826875612839348729)
,p_plug_name=>'Medicine'
,p_static_id=>'medicine'
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
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102255Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826880911389348758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826882187182348762)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P7_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826881387523348761)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18826875612839348729)
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
,p_button_condition=>'P7_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826881741155348762)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P7_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18826882612563348763)
,p_branch_action=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826679089590606912)
,p_name=>'P7_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_prompt=>'Category'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select category_name as d, category_id as r from medicine_categories order by category_name'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714102255Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102255Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826877620835348751)
,p_name=>'P7_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_prompt=>'Current Stock'
,p_source=>'CURRENT_STOCK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826875962987348745)
,p_name=>'P7_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826876331949348750)
,p_name=>'P7_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_prompt=>'Medicine Name'
,p_source=>'MEDICINE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826877957220348755)
,p_name=>'P7_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_prompt=>'Reorder Level'
,p_source=>'REORDER_LEVEL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826878394964348755)
,p_name=>'P7_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826877169245348751)
,p_name=>'P7_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_item_source_plug_id=>wwv_flow_imp.id(18826875612839348729)
,p_prompt=>'Unit'
,p_source=>'UNIT'
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
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826882953701348764)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18826875612839348729)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine'
,p_static_id=>'initialize-form-medicine'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9314221812929659
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826883390603348766)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18826875612839348729)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine'
,p_static_id=>'process-form-medicine'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9314658714929661
,p_created_on=>wwv_flow_imp.dz('20260714101801Z')
,p_updated_on=>wwv_flow_imp.dz('20260714101801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Appointments'
,p_alias=>'APPOINTMENTS'
,p_step_title=>'Appointments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715061116Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826902543521443923)
,p_plug_name=>'Appointments'
,p_static_id=>'appointments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'select a.appointment_id, p.full_name as patient_name, d.full_name as doctor_name, a.appointment_date, a.appointment_time, s.status_name, a.reason_for_visit from appointments a join patients p on p.patient_id = a.patient_id join doctors d on d.doctor_'
||'id = a.doctor_id left join appointment_statuses s on s.status_id = a.status_id'
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
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18826902662907443923)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_APPOINTMENT_ID:\#APPOINTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9333931019024818
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826905039783443946)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826903878107443937)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826905432641443948)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826904667277443944)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826904309002443942)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826906314729443951)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826905876640443949)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18826924876926627753)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_NAME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260714110431Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826907495143443954)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826906726551443953)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826902543521443923)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Appointment'
,p_alias=>'APPOINTMENT'
,p_step_title=>'Appointment'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714104149Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826893664158443750)
,p_plug_name=>'Appointment'
,p_static_id=>'appointment'
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
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103516Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826908064968443970)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714103353Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103353Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826898933830443766)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826900310648443767)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P9_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826899515727443766)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18826893664158443750)
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
,p_button_condition=>'P9_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826899843759443767)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P9_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18826900649494443767)
,p_branch_action=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826895240464443760)
,p_name=>'P9_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_prompt=>'Appointment Date'
,p_source=>'APPOINTMENT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826894044015443756)
,p_name=>'P9_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826895723487443763)
,p_name=>'P9_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_prompt=>'Appointment Time'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826679440595606916)
,p_name=>'P9_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826679269220606914)
,p_name=>'P9_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select full_name as d, doctor_id as r from doctors order by full_name'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103832Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826679211922606913)
,p_name=>'P9_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select full_name as d, patient_id as r from patients order by full_name'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103832Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826896467951443763)
,p_name=>'P9_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_prompt=>'Reason For Visit'
,p_source=>'REASON_FOR_VISIT'
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
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826679375741606915)
,p_name=>'P9_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_item_source_plug_id=>wwv_flow_imp.id(18826893664158443750)
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select status_name as d, status_id as r from appointment_statuses order by status_name'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103832Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18826679604480606917)
,p_validation_name=>'Appointment date not in past'
,p_static_id=>'appointment-date-not-in-past'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_date date;',
'begin',
'  if :P9_APPOINTMENT_DATE is null then',
'    return true;',
'  end if;',
'  l_date := to_date(:P9_APPOINTMENT_DATE, v(''APP_NLS_DATE_FORMAT''));',
'  if trunc(l_date) < trunc(sysdate) then',
'    return false;',
'  end if;',
'  return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Appointment date cannot be in the past.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714104149Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18826679676811606918)
,p_validation_name=>'No double booking'
,p_static_id=>'no-double-booking'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number;',
'begin',
'  if :P9_DOCTOR_ID is null or :P9_APPOINTMENT_DATE is null or :P9_APPOINTMENT_TIME is null then',
'    return true;',
'  end if;',
'  select count(*) into l_count',
'  from appointments',
'  where doctor_id = :P9_DOCTOR_ID',
'    and appointment_date = to_date(:P9_APPOINTMENT_DATE, v(''APP_NLS_DATE_FORMAT''))',
'    and appointment_time = :P9_APPOINTMENT_TIME',
'    and (:P9_APPOINTMENT_ID is null or appointment_id <> :P9_APPOINTMENT_ID);',
'  if l_count > 0 then',
'    return false;',
'  end if;',
'  return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This doctor already has an appointment at that date and time.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714104149Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826901107644443768)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18826893664158443750)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment'
,p_static_id=>'initialize-form-appointment'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9332375756024663
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826901470437443770)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18826893664158443750)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment'
,p_static_id=>'process-form-appointment'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9332738549024665
,p_created_on=>wwv_flow_imp.dz('20260714103351Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103351Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Departments'
,p_alias=>'DEPARTMENTS'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714110433Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826923623381580505)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826919874395580474)
,p_plug_name=>'Departments'
,p_static_id=>'departments'
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
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110433Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18826919939920580474)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_DEPARTMENT_ID:\#DEPARTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9351208032161369
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110433Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826921180958580492)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826921627145580498)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826921964139580500)
,p_db_column_name=>'FLOOR_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Floor No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826922395341580502)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18826925407431627949)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_ID:DEPARTMENT_NAME:FLOOR_NO:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260714110433Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110433Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826922750231580504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826919874395580474)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_created_on=>wwv_flow_imp.dz('20260714105638Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Department'
,p_alias=>'DEPARTMENT'
,p_step_title=>'Department'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714105639Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826924089457580529)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714105639Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105639Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18826913198502580287)
,p_plug_name=>'Department'
,p_static_id=>'department'
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
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826916352034580301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826917710293580303)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P11_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826916909472580302)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18826913198502580287)
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
,p_button_condition=>'P11_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18826917257122580303)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P11_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18826918074242580304)
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826913624958580288)
,p_name=>'P11_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_item_source_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826913988508580295)
,p_name=>'P11_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_item_source_plug_id=>wwv_flow_imp.id(18826913198502580287)
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
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826914398556580295)
,p_name=>'P11_FLOOR_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_item_source_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_prompt=>'Floor No'
,p_source=>'FLOOR_NO'
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
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18826914802287580298)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_item_source_plug_id=>wwv_flow_imp.id(18826913198502580287)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826918512859580305)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18826913198502580287)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department'
,p_static_id=>'initialize-form-department'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9349780971161200
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826918869952580307)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18826913198502580287)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Department'
,p_static_id=>'process-form-department'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9350138064161202
,p_created_on=>wwv_flow_imp.dz('20260714105636Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105636Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENTS-BY-DOCTOR'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716075848Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721083740Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827884323533977540)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointments-by-doctor'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT a.appointment_id, p.full_name AS patient, d.full_name AS doctor, dep.department_name AS department, a.appointment_date, a.appointment_time, s.status_name AS status, a.reason_for_visit FROM appointments a JOIN patients p ON p.patient_id = a.pat'
||'ient_id JOIN doctors d ON d.doctor_id = a.doctor_id JOIN departments dep ON dep.department_id = d.department_id JOIN appointment_statuses s ON s.status_id = a.status_id ORDER BY a.appointment_date DESC'
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
,p_created_on=>wwv_flow_imp.dz('20260716075850Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827884367979977540)
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
,p_internal_uid=>10315636091558435
,p_created_on=>wwv_flow_imp.dz('20260716075850Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050239560503704)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>32
,p_column_identifier=>'H'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082137Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050058626503702)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>12
,p_column_identifier=>'F'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082137Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050354470503705)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>42
,p_column_identifier=>'I'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082137Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827885937344977567)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716075850Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827885620435977558)
,p_db_column_name=>'DOCTOR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716075850Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050116109503703)
,p_db_column_name=>'PATIENT'
,p_display_order=>22
,p_column_identifier=>'G'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082137Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050538438503707)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>62
,p_column_identifier=>'K'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082137Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050481588503706)
,p_db_column_name=>'STATUS'
,p_display_order=>52
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082137Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827900882531989566)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT:DOCTOR:DEPARTMENT:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260716080050Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827883479214977407)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716075848Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075848Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Specialties'
,p_alias=>'SPECIALTIES'
,p_step_title=>'Specialties'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715064532Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827482094183654372)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827477890993654338)
,p_plug_name=>'Specialties'
,p_static_id=>'specialties'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTOR_SPECIALTIES'
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
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827478024394654338)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_SPECIALTY_ID:\#SPECIALTY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9909292506235233
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827479198407654353)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Specialty ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827479551412654362)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827480000927654364)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827521628341714893)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPECIALTY_ID:SPECIALTY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715064532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827480400480654366)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827477890993654338)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18827480807066654366)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18827477890993654338)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18827481207439654368)
,p_event_id=>wwv_flow_imp.id(18827480807066654366)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18827477890993654338)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063527Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063527Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Specialtie'
,p_alias=>'SPECIALTIE'
,p_page_mode=>'MODAL'
,p_step_title=>'Specialtie'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827473354089654163)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827470918248654143)
,p_plug_name=>'Specialtie'
,p_static_id=>'specialtie'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTOR_SPECIALTIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827473783308654164)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827473354089654163)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18827474232573654170)
,p_button_id=>wwv_flow_imp.id(18827473783308654164)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827475567543654174)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827473354089654163)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827474818020654173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827473354089654163)
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
,p_button_condition=>'P15_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827475156365654174)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827473354089654163)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827471310042654154)
,p_name=>'P15_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827470918248654143)
,p_item_source_plug_id=>wwv_flow_imp.id(18827470918248654143)
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827471695277654161)
,p_name=>'P15_SPECIALTY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827470918248654143)
,p_item_source_plug_id=>wwv_flow_imp.id(18827470918248654143)
,p_prompt=>'Specialty Name'
,p_source=>'SPECIALTY_NAME'
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
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827472055617654162)
,p_name=>'P15_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827470918248654143)
,p_item_source_plug_id=>wwv_flow_imp.id(18827470918248654143)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827476749238654179)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9908017350235074
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827475997152654175)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827470918248654143)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Specialtie'
,p_static_id=>'initialize-form-specialtie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9907265264235070
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827476352891654178)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827470918248654143)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Specialtie'
,p_static_id=>'process-form-specialtie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9907621003235073
,p_created_on=>wwv_flow_imp.dz('20260715063525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Medicine Categories'
,p_alias=>'MEDICINE-CATEGORIES'
,p_step_title=>'Medicine Categories'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715064526Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827494212834662831)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715063652Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827490078015662805)
,p_plug_name=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINE_CATEGORIES'
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
,p_created_on=>wwv_flow_imp.dz('20260715063651Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827490185055662805)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_CATEGORY_ID:\#CATEGORY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9921453167243700
,p_created_on=>wwv_flow_imp.dz('20260715063651Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827491339312662818)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Category ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063651Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827491805583662823)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063651Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827492231685662825)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063652Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827521079101714309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CATEGORY_ID:CATEGORY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715064526Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827492480359662826)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827490078015662805)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
,p_created_on=>wwv_flow_imp.dz('20260715063652Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18827492833445662827)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18827490078015662805)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715063652Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18827493270547662828)
,p_event_id=>wwv_flow_imp.id(18827492833445662827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18827490078015662805)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063652Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Medicine Category'
,p_alias=>'MEDICINE-CATEGORY'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Category'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827485572354662661)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827483091262662646)
,p_plug_name=>'Medicine Category'
,p_static_id=>'medicine-category'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINE_CATEGORIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827486005537662662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827485572354662661)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18827486508722662663)
,p_button_id=>wwv_flow_imp.id(18827486005537662662)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827487818276662666)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827485572354662661)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827487020251662665)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827485572354662661)
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
,p_button_condition=>'P17_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827487353141662665)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827485572354662661)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827483511503662653)
,p_name=>'P17_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827483091262662646)
,p_item_source_plug_id=>wwv_flow_imp.id(18827483091262662646)
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827483913946662659)
,p_name=>'P17_CATEGORY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827483091262662646)
,p_item_source_plug_id=>wwv_flow_imp.id(18827483091262662646)
,p_prompt=>'Category Name'
,p_source=>'CATEGORY_NAME'
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
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827484254637662659)
,p_name=>'P17_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827483091262662646)
,p_item_source_plug_id=>wwv_flow_imp.id(18827483091262662646)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827488988024662668)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9920256136243563
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827488157851662666)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827483091262662646)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Category'
,p_static_id=>'initialize-form-medicine-category'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9919425963243561
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827488581608662668)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827483091262662646)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Category'
,p_static_id=>'process-form-medicine-category'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9919849720243563
,p_created_on=>wwv_flow_imp.dz('20260715063650Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Appointment Statuses'
,p_alias=>'APPOINTMENT-STATUSES'
,p_step_title=>'Appointment Statuses'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715064523Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827501441336668406)
,p_plug_name=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT_STATUSES'
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
,p_created_on=>wwv_flow_imp.dz('20260715063747Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064523Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827501541844668407)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_STATUS_ID:\#STATUS_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9932809956249302
,p_created_on=>wwv_flow_imp.dz('20260715063747Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064523Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827502751968668419)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Status ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063747Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063747Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827503194202668424)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063747Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063747Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827520580027713962)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS_ID:STATUS_NAME'
,p_created_on=>wwv_flow_imp.dz('20260715064523Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064523Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827505201256668430)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715063748Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827503497492668426)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827501441336668406)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
,p_created_on=>wwv_flow_imp.dz('20260715063748Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18827503922873668426)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18827501441336668406)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715063748Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18827504242589668427)
,p_event_id=>wwv_flow_imp.id(18827503922873668426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18827501441336668406)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063748Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063748Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Appointment Status'
,p_alias=>'APPOINTMENT-STATUS'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Status'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827495138888668245)
,p_plug_name=>'Appointment Status'
,p_static_id=>'appointment-status'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT_STATUSES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827496990291668258)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827497396627668258)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827496990291668258)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18827497836618668259)
,p_button_id=>wwv_flow_imp.id(18827497396627668258)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827499150694668262)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827496990291668258)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827498415784668261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827496990291668258)
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
,p_button_condition=>'P19_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827498779041668262)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827496990291668258)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827495580973668251)
,p_name=>'P19_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827495138888668245)
,p_item_source_plug_id=>wwv_flow_imp.id(18827495138888668245)
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827496009160668256)
,p_name=>'P19_STATUS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827495138888668245)
,p_item_source_plug_id=>wwv_flow_imp.id(18827495138888668245)
,p_prompt=>'Status Name'
,p_source=>'STATUS_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827500374821668265)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9931642933249160
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827499600137668263)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827495138888668245)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment Status'
,p_static_id=>'initialize-form-appointment-status'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9930868249249158
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827500015061668265)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827495138888668245)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Status'
,p_static_id=>'process-form-appointment-status'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9931283173249160
,p_created_on=>wwv_flow_imp.dz('20260715063746Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Rooms'
,p_alias=>'ROOMS'
,p_step_title=>'Rooms'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715064517Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827519491411674049)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827514629528674020)
,p_plug_name=>'Rooms'
,p_static_id=>'rooms'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ROOMS'
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
,p_created_on=>wwv_flow_imp.dz('20260715063843Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827514716181674020)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ROOM_ID:\#ROOM_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9945984293254915
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827516952014674042)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827515826182674032)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Room ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827516175079674036)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827516603714674038)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827517397576674043)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827520059097713414)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROOM_ID:ROOM_NO:ROOM_TYPE:DAILY_RATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715064517Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827517765496674045)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827514629528674020)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18827518169792674045)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18827514629528674020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18827518630117674046)
,p_event_id=>wwv_flow_imp.id(18827518169792674045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18827514629528674020)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063844Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Room'
,p_alias=>'ROOM'
,p_page_mode=>'MODAL'
,p_step_title=>'Room'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827510040744673872)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827506230579673858)
,p_plug_name=>'Room'
,p_static_id=>'room'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ROOMS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827510451663673873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827510040744673872)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18827511021188673874)
,p_button_id=>wwv_flow_imp.id(18827510451663673873)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827512267805673876)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827510040744673872)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827511478681673875)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827510040744673872)
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
,p_button_condition=>'P21_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827511919260673876)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827510040744673872)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827507808500673868)
,p_name=>'P21_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_item_source_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_prompt=>'Daily Rate'
,p_source=>'DAILY_RATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827506610434673864)
,p_name=>'P21_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_item_source_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827506997759673867)
,p_name=>'P21_ROOM_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_item_source_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_prompt=>'Room No'
,p_source=>'ROOM_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827507428125673868)
,p_name=>'P21_ROOM_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_item_source_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_prompt=>'Room Type'
,p_source=>'ROOM_TYPE'
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
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827508189488673870)
,p_name=>'P21_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_item_source_plug_id=>wwv_flow_imp.id(18827506230579673858)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827513464368673880)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9944732480254775
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827512663855673876)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827506230579673858)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Room'
,p_static_id=>'initialize-form-room'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9943931967254771
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827513072217673878)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827506230579673858)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Room'
,p_static_id=>'process-form-room'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9944340329254773
,p_created_on=>wwv_flow_imp.dz('20260715063842Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063842Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE1'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715071005Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827545613610860683)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827538689284860639)
,p_plug_name=>'Patient Profile'
,p_static_id=>'patient-profile'
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
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071005Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827538735204860639)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_PATIENT_ID:\#PATIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9970003316441534
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071005Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827543197371860674)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827542800379860672)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827540334492860662)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827544343025860679)
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
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827541618172860667)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827542345281860670)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827543583051860676)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827543981583860677)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827540768665860664)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827541143331860665)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827542013947860669)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827540014276860654)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827558917079862218)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260715071005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071005Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827544787889860681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827538689284860639)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:23::'
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715070947Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715072644Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827546208482860689)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715070950Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070950Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827522941264860440)
,p_plug_name=>'Form on PATIENTS'
,p_static_id=>'form-on-patients'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'FULL_NAME'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827546977618860868)
,p_plug_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENTS'
,p_query_where=>'PATIENT_ID = :P23_PATIENT_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_PATIENT_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_PATIENT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072644Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827548740949860885)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827548248482860881)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827552734956860899)
,p_name=>'APPOINTMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827549760509860891)
,p_name=>'APPOINTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827553746507860901)
,p_name=>'APPOINTMENT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Appointment Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>8
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
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827556747550860909)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created At'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827551807044860897)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Doctor Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT full_name AS d, doctor_id AS r FROM doctors ORDER BY 1'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715072644Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827550787810860893)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P23_PATIENT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827555779142860907)
,p_name=>'REASON_FOR_VISIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_FOR_VISIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reason For Visit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827554809497860904)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT status_name AS d, status_id AS r FROM appointment_statuses ORDER BY 1'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715072414Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18827547077481860868)
,p_internal_uid=>9978345593441763
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(18827547762836860876)
,p_interactive_grid_id=>wwv_flow_imp.id(18827547077481860868)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18827547897660860878)
,p_report_id=>wwv_flow_imp.id(18827547762836860876)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827549322697860890)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(18827548740949860885)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827550279771860893)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18827549760509860891)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827551319923860895)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18827550787810860893)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827552277926860899)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18827551807044860897)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827553317281860901)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18827552734956860899)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827554322011860904)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18827553746507860901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827555239935860906)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(18827554809497860904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827556266943860909)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(18827555779142860907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827557320607860911)
,p_view_id=>wwv_flow_imp.id(18827547897660860878)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(18827556747550860909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827533462485860469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827534751645860472)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P23_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827533984735860471)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827522941264860440)
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
,p_button_condition=>'P23_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827535317568860472)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_button_name=>'GET_NEXT_PATIENT_ID'
,p_static_id=>'get-next-patient-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_PATIENT_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827535179459860472)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_button_name=>'GET_PREVIOUS_PATIENT_ID'
,p_static_id=>'get-previous-patient-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P23_PATIENT_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827534332897860472)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P23_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827536093567860474)
,p_branch_action=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.::P23_PATIENT_ID:&P23_PATIENT_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18827535317568860472)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827536494235860474)
,p_branch_action=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.::P23_PATIENT_ID:&P23_PATIENT_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18827535179459860472)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827536771987860475)
,p_branch_action=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827527245498860463)
,p_name=>'P23_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827526881685860463)
,p_name=>'P23_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827524506718860460)
,p_name=>'P23_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_prompt=>'Civil Id'
,p_source=>'CIVIL_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827528515914860464)
,p_name=>'P23_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827525713136860461)
,p_name=>'P23_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_prompt=>'Date Of Birth'
,p_source=>'DATE_OF_BIRTH'
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827526433357860462)
,p_name=>'P23_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827527724427860463)
,p_name=>'P23_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_prompt=>'Emergency Contact Name'
,p_source=>'EMERGENCY_CONTACT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827528040965860463)
,p_name=>'P23_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827524891575860461)
,p_name=>'P23_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827525322694860461)
,p_name=>'P23_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827526074834860462)
,p_name=>'P23_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
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
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827523312887860450)
,p_name=>'P23_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_item_source_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827533157222860469)
,p_name=>'P23_PATIENT_ID_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'send_on_page_submit', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827524091501860458)
,p_name=>'P23_PATIENT_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827523645504860458)
,p_name=>'P23_PATIENT_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827522941264860440)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827537181122860475)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827522941264860440)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on PATIENTS'
,p_static_id=>'initialize-form-form-on-patients'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P23_PATIENT_ID_COUNT',
  'next_primary_key_items', 'P23_PATIENT_ID_NEXT',
  'previous_primary_key_items', 'P23_PATIENT_ID_PREV')).to_clob
,p_internal_uid=>9968449234441370
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827557773352860912)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827546977618860868)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Patient Profile - Save Interactive Grid Data'
,p_static_id=>'patient-profile-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9989041464441807
,p_created_on=>wwv_flow_imp.dz('20260715070952Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070952Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827537555621860477)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827522941264860440)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on PATIENTS'
,p_static_id=>'process-form-form-on-patients'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9968823733441372
,p_created_on=>wwv_flow_imp.dz('20260715070948Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Prescription Items'
,p_alias=>'PRESCRIPTION-ITEMS'
,p_step_title=>'Prescription Items'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715080147Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827577910005104469)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827573439944104442)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
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
,p_created_on=>wwv_flow_imp.dz('20260715075027Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080147Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827573544938104442)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_PRESCRIPTION_ID:\#PRESCRIPTION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>10004813049685337
,p_created_on=>wwv_flow_imp.dz('20260715075027Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080147Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827575931336104463)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18827564063940104303)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827576651054104466)
,p_db_column_name=>'NOTES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827575627249104462)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18827563378268104302)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827576266647104465)
,p_db_column_name=>'PRESCRIPTION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Prescription Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827574758364104454)
,p_db_column_name=>'PRESCRIPTION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Prescription ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075027Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827575175314104460)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Visit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18827562666475104282)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075027Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827591339343172375)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRESCRIPTION_ID:VISIT_ID:PATIENT_ID:DOCTOR_ID:PRESCRIPTION_DATE:NOTES'
,p_created_on=>wwv_flow_imp.dz('20260715080147Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080147Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827577079126104468)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827573439944104442)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Prescription Details'
,p_alias=>'PRESCRIPTION-DETAILS'
,p_step_title=>'Prescription Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715075025Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715080142Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827578434043104487)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715075028Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075028Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827561042734104264)
,p_plug_name=>'Form on PRESCRIPTIONS'
,p_static_id=>'form-on-prescriptions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'PRESCRIPTION_DATE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827579240845104593)
,p_plug_name=>'Prescription Details'
,p_static_id=>'prescription-details'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_query_where=>'PRESCRIPTION_ID = :P25_PRESCRIPTION_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P25_PRESCRIPTION_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P25_PRESCRIPTION_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827581070457104604)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827580569276104602)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827585060645104615)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827587115758104619)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827586081943104617)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827588074165104622)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827584093379104613)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT medicine_name AS d, medicine_id AS r FROM medicines ORDER BY 1'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715080142Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827583067813104610)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P25_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827582044703104608)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18827579398071104593)
,p_internal_uid=>10010666182685488
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(18827580106947104598)
,p_interactive_grid_id=>wwv_flow_imp.id(18827579398071104593)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18827580219682104600)
,p_report_id=>wwv_flow_imp.id(18827580106947104598)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827581549901104607)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(18827581070457104604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827582576389104610)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18827582044703104608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827583620165104612)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18827583067813104610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827584602909104615)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18827584093379104613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827585570541104617)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18827585060645104615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827586591364104619)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18827586081943104617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827587537205104621)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(18827587115758104619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827588544733104624)
,p_view_id=>wwv_flow_imp.id(18827580219682104600)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(18827588074165104622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827568276284104308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827569576658104311)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P25_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827568765324104310)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827561042734104264)
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
,p_button_condition=>'P25_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827570052231104311)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_button_name=>'GET_NEXT_PRESCRIPTION_ID'
,p_static_id=>'get-next-prescription-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_PRESCRIPTION_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827570017914104311)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_button_name=>'GET_PREVIOUS_PRESCRIPTION_ID'
,p_static_id=>'get-previous-prescription-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P25_PRESCRIPTION_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827569182208104311)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P25_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827570878445104312)
,p_branch_action=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.::P25_PRESCRIPTION_ID:&P25_PRESCRIPTION_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18827570052231104311)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827571272753104312)
,p_branch_action=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.::P25_PRESCRIPTION_ID:&P25_PRESCRIPTION_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18827570017914104311)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827571592529104313)
,p_branch_action=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827563959390104303)
,p_name=>'P25_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_item_source_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name AS d, doctor_id AS r FROM doctors ORDER BY 1'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827565110784104304)
,p_name=>'P25_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_item_source_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
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
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827563251386104302)
,p_name=>'P25_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_item_source_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name AS d, patient_id AS r FROM patients ORDER BY 1'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827564664098104304)
,p_name=>'P25_PRESCRIPTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_item_source_plug_id=>wwv_flow_imp.id(18827561042734104264)
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
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827561348070104276)
,p_name=>'P25_PRESCRIPTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_item_source_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827567969206104308)
,p_name=>'P25_PRESCRIPTION_ID_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'send_on_page_submit', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827562223962104279)
,p_name=>'P25_PRESCRIPTION_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827561805812104279)
,p_name=>'P25_PRESCRIPTION_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827562610639104280)
,p_name=>'P25_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_item_source_plug_id=>wwv_flow_imp.id(18827561042734104264)
,p_prompt=>'Visit Id'
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT TO_CHAR(visit_date,''DD-MON-YYYY'')||'' - ''||diagnosis AS d, visit_id AS r FROM patient_visits ORDER BY visit_date DESC'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827571986656104313)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827561042734104264)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on PRESCRIPTIONS'
,p_static_id=>'initialize-form-form-on-prescriptions'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P25_PRESCRIPTION_ID_COUNT',
  'next_primary_key_items', 'P25_PRESCRIPTION_ID_NEXT',
  'previous_primary_key_items', 'P25_PRESCRIPTION_ID_PREV')).to_clob
,p_internal_uid=>10003254767685208
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827589053667104624)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827579240845104593)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Details - Save Interactive Grid Data'
,p_static_id=>'prescription-details-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10020321778685519
,p_created_on=>wwv_flow_imp.dz('20260715075029Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075029Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827572427831104314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827561042734104264)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on PRESCRIPTIONS'
,p_static_id=>'process-form-form-on-prescriptions'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10003695942685209
,p_created_on=>wwv_flow_imp.dz('20260715075026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Admissions'
,p_alias=>'ADMISSIONS'
,p_step_title=>'Admissions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715110358Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827680385341055247)
,p_plug_name=>'Admissions'
,p_static_id=>'admissions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.admission_id, p.full_name AS patient_name, d.full_name AS doctor_name,',
'       r.room_no, r.room_type, a.admission_date, a.discharge_date,',
'       a.admission_reason, a.status',
'FROM admissions a',
'JOIN patients p ON p.patient_id = a.patient_id',
'JOIN doctors  d ON d.doctor_id  = a.doctor_id',
'JOIN rooms    r ON r.room_id    = a.room_id',
'ORDER BY a.admission_date DESC'))
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
,p_created_on=>wwv_flow_imp.dz('20260715102854Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110358Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827680445429055247)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:RP:P27_ADMISSION_ID:\#ADMISSION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>10111713540636142
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110358Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827683188839055274)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827681588572055261)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admission ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827684014927055278)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827683540314055276)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826680324245606924)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105919Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105919Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826680155921606923)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105919Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105919Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826680362176606925)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>38
,p_column_identifier=>'K'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105919Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105919Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18826680463053606926)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>48
,p_column_identifier=>'L'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105919Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105919Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827684332528055279)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827690504996265645)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS:PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE'
,p_created_on=>wwv_flow_imp.dz('20260715110358Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110358Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827686511107055286)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827684807491055281)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827680385341055247)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:27::'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18827685149149055281)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18827680385341055247)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18827685535775055282)
,p_event_id=>wwv_flow_imp.id(18827685149149055281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18827680385341055247)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715102855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102855Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Admission'
,p_alias=>'ADMISSION'
,p_page_mode=>'MODAL'
,p_step_title=>'Admission'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715102852Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715121829Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827669651501055024)
,p_plug_name=>'Admission'
,p_static_id=>'admission'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ADMISSIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715102852Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827675872241055070)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827676262110055071)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827675872241055070)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(18827676817547055074)
,p_button_id=>wwv_flow_imp.id(18827676262110055071)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827678045768055077)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827675872241055070)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P27_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827677256493055076)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827675872241055070)
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
,p_button_condition=>'P27_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827677692502055077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827675872241055070)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P27_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827671856562055063)
,p_name=>'P27_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_prompt=>'Admission Date'
,p_source=>'ADMISSION_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827670037933055033)
,p_name=>'P27_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715102852Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827672671280055067)
,p_name=>'P27_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_prompt=>'Admission Reason'
,p_source=>'ADMISSION_REASON'
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
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827672254778055066)
,p_name=>'P27_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
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
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827670876555055047)
,p_name=>'P27_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name AS d, doctor_id AS r FROM doctors WHERE status = ''Active'' ORDER BY 1'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715102852Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110331Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827670500649055041)
,p_name=>'P27_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name AS d, patient_id AS r FROM patients ORDER BY 1'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715102852Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827671301895055047)
,p_name=>'P27_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT room_no||'' (''||room_type||'')'' AS d, room_id AS r',
'  FROM rooms',
'  WHERE status = ''Available'' OR room_id = :P27_ROOM_ID',
'  ORDER BY 1'))
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110331Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827673119736055067)
,p_name=>'P27_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_item_source_plug_id=>wwv_flow_imp.id(18827669651501055024)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted;Admitted,Discharged;Discharged'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110331Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827679321046055080)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10110589157635975
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121829Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827678484180055078)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827669651501055024)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Admission'
,p_static_id=>'initialize-form-admission'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10109752291635973
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827678929581055080)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827669651501055024)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Admission'
,p_static_id=>'process-form-admission'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10110197692635975
,p_created_on=>wwv_flow_imp.dz('20260715102853Z')
,p_updated_on=>wwv_flow_imp.dz('20260715102853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18826680591988606927)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update room status'
,p_static_id=>'update-room-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P27_STATUS = ''Discharged'' THEN',
'    UPDATE rooms SET status = ''Available'' WHERE room_id = :P27_ROOM_ID;',
'  ELSE',
'    UPDATE rooms SET status = ''Occupied'' WHERE room_id = :P27_ROOM_ID;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9111860100187822
,p_created_on=>wwv_flow_imp.dz('20260715121828Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121828Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Patient Visit Report'
,p_alias=>'PRESCRIPTIONS-PER-PATIENT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716075935Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721084235Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827888204088982054)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716075935Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075935Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827889024561982178)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'prescriptions-per-patient'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT p.full_name AS patient, d.full_name AS doctor, v.visit_date, v.symptoms, v.diagnosis, v.follow_up_date FROM patient_visits v JOIN patients p ON p.patient_id = v.patient_id JOIN doctors d ON d.doctor_id = v.doctor_id ORDER BY v.visit_date DESC'
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
,p_created_on=>wwv_flow_imp.dz('20260716075936Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084235Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827889067918982178)
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
,p_internal_uid=>10320336030563073
,p_created_on=>wwv_flow_imp.dz('20260716075936Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084235Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051050797503712)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>41
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082434Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082434Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050733869503709)
,p_db_column_name=>'DOCTOR'
,p_display_order=>11
,p_column_identifier=>'D'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082434Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082434Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051190587503713)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>51
,p_column_identifier=>'H'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082434Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082434Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827890244149982184)
,p_db_column_name=>'PATIENT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716075936Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075936Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050980351503711)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>31
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082434Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082434Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050836522503710)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>21
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082434Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082434Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827901384584989761)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT:DOCTOR:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260716080052Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084235Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Medicine Stock Report'
,p_alias=>'LOW-STOCK-MEDICINES'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716080009Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721083948Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827892036304985511)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716080009Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080009Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827892863248985637)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'low-stock-medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT m.medicine_name, c.category_name, m.current_stock, m.reorder_level, CASE WHEN m.current_stock < m.reorder_level THEN ''Low Stock'' ELSE ''Normal'' END AS stock_status FROM medicines m JOIN medicine_categories c ON c.category_id = m.category_id ORD'
||'ER BY m.medicine_name'
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
,p_created_on=>wwv_flow_imp.dz('20260716080011Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827893021753985637)
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
,p_internal_uid=>10324289865566532
,p_created_on=>wwv_flow_imp.dz('20260716080011Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827894627906985644)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080011Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080011Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827895352380985647)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080011Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080011Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827894208973985641)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080011Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080011Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827895790687985648)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080011Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080011Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787050605496503708)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>15
,p_column_identifier=>'G'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082306Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082306Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827901873384989860)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716080053Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083948Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Admission Report'
,p_alias=>'ADMISSIONS-SUMMARY'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716080035Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721083439Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827897938496988198)
,p_plug_name=>'Admission Report'
,p_static_id=>'admissions-summary'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT p.full_name AS patient, d.full_name AS doctor, r.room_no, r.room_type, a.admission_date, a.discharge_date, a.status FROM admissions a JOIN patients p ON p.patient_id = a.patient_id JOIN doctors d ON d.doctor_id = a.doctor_id JOIN rooms r ON r.'
||'room_id = a.room_id ORDER BY a.admission_date DESC'
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
,p_created_on=>wwv_flow_imp.dz('20260716080036Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827898091974988198)
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
,p_internal_uid=>10329360086569093
,p_created_on=>wwv_flow_imp.dz('20260716080036Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051505353503717)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>41
,p_column_identifier=>'H'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082556Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051634338503718)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>51
,p_column_identifier=>'I'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082556Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051366512503715)
,p_db_column_name=>'DOCTOR'
,p_display_order=>21
,p_column_identifier=>'F'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082556Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051290110503714)
,p_db_column_name=>'PATIENT'
,p_display_order=>11
,p_column_identifier=>'E'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082556Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051443549503716)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>31
,p_column_identifier=>'G'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082556Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827899254617988206)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080036Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080036Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19787051784645503719)
,p_db_column_name=>'STATUS'
,p_display_order=>61
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721082556Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082556Z')
,p_created_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827902364641989940)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT:DOCTOR:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716080054Z')
,p_updated_on=>wwv_flow_imp.dz('20260721083439Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALHARITH.ALKINDI99@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827897150685988068)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716080035Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080035Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Clinical Visits'
,p_alias=>'PATIENT-VISITS'
,p_step_title=>'PATIENT_VISITS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716083334Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827923146340044385)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827917458203044356)
,p_plug_name=>'PATIENT_VISITS'
,p_static_id=>'patient-visits'
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.visit_id, p.full_name AS patient, d.full_name AS doctor,',
'       v.visit_date, v.symptoms, v.diagnosis, v.follow_up_date',
'FROM patient_visits v',
'JOIN patients p ON p.patient_id = v.patient_id',
'JOIN doctors  d ON d.doctor_id  = v.doctor_id',
'ORDER BY v.visit_date DESC'))
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
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083334Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18827917580842044356)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:RP:P35_VISIT_ID:\#VISIT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>10348848953625251
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083334Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827921196145044379)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827874409260591515)
,p_db_column_name=>'DOCTOR'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716083223Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827922012071044382)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827874295354591514)
,p_db_column_name=>'PATIENT'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716083223Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827920750973044374)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827920385408044372)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18827918784307044362)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Visit ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18827937950383185972)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE:PATIENT:DOCTOR'
,p_created_on=>wwv_flow_imp.dz('20260716083334Z')
,p_updated_on=>wwv_flow_imp.dz('20260716083334Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827922374760044383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827917458203044356)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:35::'
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716082951Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827923789142044386)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(18825675266179584985)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716080958Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827924559306044558)
,p_plug_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_query_where=>'VISIT_ID = :P35_VISIT_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P35_VISIT_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P35_VISIT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827926421145044572)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827925864758044568)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827930394130044585)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Doctor Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827932386177044590)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827929349345044583)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Patient Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827931331963044588)
,p_name=>'PRESCRIPTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Prescription Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827927402373044576)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18827928394175044580)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P35_VISIT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18827924652371044558)
,p_internal_uid=>10355920482625453
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(18827925411741044564)
,p_interactive_grid_id=>wwv_flow_imp.id(18827924652371044558)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18827925499539044566)
,p_report_id=>wwv_flow_imp.id(18827925411741044564)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827926844402044575)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(18827926421145044572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827927871107044579)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18827927402373044576)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827928863377044582)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18827928394175044580)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827929915806044585)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18827929349345044583)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827930861824044587)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18827930394130044585)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827931863040044590)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18827931331963044588)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18827932883047044592)
,p_view_id=>wwv_flow_imp.id(18827925499539044566)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(18827932386177044590)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18827903620751044196)
,p_plug_name=>'Form on PATIENT_VISITS'
,p_static_id=>'form-on-patient-visits'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'VISIT_DATE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827912344139044221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827913546925044226)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P35_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827912853157044225)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18827903620751044196)
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
,p_button_condition=>'P35_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827914076014044226)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_button_name=>'GET_NEXT_VISIT_ID'
,p_static_id=>'get-next-visit-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P35_VISIT_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827913996152044226)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_button_name=>'GET_PREVIOUS_VISIT_ID'
,p_static_id=>'get-previous-visit-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P35_VISIT_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18827913258899044226)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P35_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827914868243044227)
,p_branch_action=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.::P35_VISIT_ID:&P35_VISIT_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18827914076014044226)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827915240682044228)
,p_branch_action=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.::P35_VISIT_ID:&P35_VISIT_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18827913996152044226)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18827915594368044228)
,p_branch_action=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827905221191044205)
,p_name=>'P35_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Appointment Id'
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(a.appointment_date,''DD-MON-YYYY'')||'' ''||a.appointment_time||'' - ''||p.full_name AS d,',
'       a.appointment_id AS r',
'FROM appointments a JOIN patients p ON p.patient_id = a.patient_id',
'ORDER BY a.appointment_date DESC'))
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716082728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827907441049044216)
,p_name=>'P35_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Diagnosis'
,p_source=>'DIAGNOSIS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
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
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827906240601044216)
,p_name=>'P35_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name AS d, doctor_id AS r FROM doctors ORDER BY 1'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716082951Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827908312492044217)
,p_name=>'P35_FOLLOW_UP_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Follow Up Date'
,p_source=>'FOLLOW_UP_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827907845493044217)
,p_name=>'P35_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
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
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827905851643044215)
,p_name=>'P35_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name AS d, patient_id AS r FROM patients ORDER BY 1'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716082845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827907086598044216)
,p_name=>'P35_SYMPTOMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_prompt=>'Symptoms'
,p_source=>'SYMPTOMS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
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
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827906718812044216)
,p_name=>'P35_VISIT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
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
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827903999185044197)
,p_name=>'P35_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_item_source_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827912106257044221)
,p_name=>'P35_VISIT_ID_COUNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'send_on_page_submit', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827904734024044203)
,p_name=>'P35_VISIT_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18827904384254044203)
,p_name=>'P35_VISIT_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18827903620751044196)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716080956Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080956Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827933358714044594)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827924559306044558)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Clinical Visit Workspace - Save Interactive Grid Data'
,p_static_id=>'clinical-visit-workspace-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10364626825625489
,p_created_on=>wwv_flow_imp.dz('20260716081000Z')
,p_updated_on=>wwv_flow_imp.dz('20260716081000Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827915953138044229)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18827903620751044196)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on PATIENT_VISITS'
,p_static_id=>'initialize-form-form-on-patient-visits'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P35_VISIT_ID_COUNT',
  'next_primary_key_items', 'P35_VISIT_ID_NEXT',
  'previous_primary_key_items', 'P35_VISIT_ID_PREV')).to_clob
,p_internal_uid=>10347221249625124
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18827916402440044232)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18827903620751044196)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on PATIENT_VISITS'
,p_static_id=>'process-form-form-on-patient-visits'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10347670551625127
,p_created_on=>wwv_flow_imp.dz('20260716080957Z')
,p_updated_on=>wwv_flow_imp.dz('20260716080957Z')
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
,p_step_title=>'Hospital - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18825681052003585093)
,p_plug_name=>'Hospital'
,p_static_id=>'hospital'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713071051Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071051Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18825682549332585110)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18825681052003585093)
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
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18825681887223585106)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18825681052003585093)
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
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18825682309198585109)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18825681052003585093)
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
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18825681578709585104)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18825681052003585093)
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
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18825686654613585117)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8117922725166012
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18825686311934585117)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8117580046166012
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18825682945264585112)
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
,p_internal_uid=>8114213376166007
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18825684011375585116)
,p_page_process_id=>wwv_flow_imp.id(18825682945264585112)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18825684444561585116)
,p_page_process_id=>wwv_flow_imp.id(18825682945264585112)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18825683463900585115)
,p_page_process_id=>wwv_flow_imp.id(18825682945264585112)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18825684930516585116)
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
,p_internal_uid=>8116198628166011
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18825685862653585117)
,p_page_process_id=>wwv_flow_imp.id(18825684930516585116)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18825685366423585117)
,p_page_process_id=>wwv_flow_imp.id(18825684930516585116)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260713071052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071052Z')
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
