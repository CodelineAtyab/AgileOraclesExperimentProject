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
,p_default_workspace_id=>5362368831529838
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'HOSPITALMANAGEMENT'
);
end;
/

prompt APPLICATION 100 - Hospital Management System
--
-- Application Export:
--   Application:     100
--   Name:            Hospital Management System
--   Date and Time:   10:08 Sunday July 26, 2026
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     37
--       Items:                   91
--       Validations:              4
--       Processes:               52
--       Regions:                 89
--       Buttons:                 70
--       Dynamic Actions:         15
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
--         LOVs:                  12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1561554117585789
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HOSPITALMANAGEMENT')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Hospital Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'HOSPITAL-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'013B4300DF71E43E1B5DAA5FFC7144872144675E48E00A7F7D2764EC773E17D2'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(5528478807731907)
,p_application_tab_set=>0
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
,p_created_on=>wwv_flow_imp.dz('20260715062912Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260726074701Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461237062916
,p_version_scn=>'14215338'
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
,p_navigation_list_id=>wwv_flow_imp.id(5529352973731929)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(5530087490732129)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5524375555731883)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5527308056731891)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5524641147731884)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5524987090731884)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5527020509731890)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5526487573731888)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5527609997731891)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5527953383731892)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5526148555731888)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5524114935731846)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5526769485731889)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5525290813731885)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5525817909731887)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5525500628731886)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5530087490732129)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260715062915Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5542963497732417)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5543552240732419)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5542963497732417)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5544069947732424)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5542963497732417)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5529352973731929)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:ysfIBX5y6D9aSzD4sICDw6reEpRhzt_vx3MPf1044CE'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072810Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7013164652034861)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admission-report'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
,p_created_on=>wwv_flow_imp.dz('20260722072810Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072810Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5692429954022938)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Admissions'
,p_static_id=>'admissions'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6994693826934848)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
,p_created_on=>wwv_flow_imp.dz('20260722071130Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5655283093003059)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5672985154013047)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Appointments'
,p_static_id=>'appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5597686482939637)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Departments'
,p_static_id=>'departments'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5769243115134248)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Departments and Doctors'
,p_static_id=>'departments-and-doctors'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
,p_created_on=>wwv_flow_imp.dz('20260715074558Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5582836721895142)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Doctors'
,p_static_id=>'doctors'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5762374943059067)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Doctors Specialties'
,p_static_id=>'doctors-specialties'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30,31'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5540342241732360)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5643496389990794)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'MEDICINE CATEGORIES'
,p_static_id=>'medicine-categories'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7007519807015931)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
,p_created_on=>wwv_flow_imp.dz('20260722072500Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072500Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5629665036972854)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'MEDICINES'
,p_static_id=>'medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5790822231205209)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
,p_created_on=>wwv_flow_imp.dz('20260715075833Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075833Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7000934749978343)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
,p_created_on=>wwv_flow_imp.dz('20260722071845Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5747891820048607)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Patient Visits'
,p_static_id=>'patient-visits'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28,29'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5559851897783699)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5711667343033209)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24,25'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5729526104040173)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Prescriptions Items'
,p_static_id=>'prescriptions-items'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,27'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5612109029951612)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Rooms'
,p_static_id=>'rooms'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6763262188328536)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
,p_created_on=>wwv_flow_imp.dz('20260721184012Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184012Z')
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D69701CC7757E3D7B018B9BB8098AE14DDCA08A4A225170405CB4E88AE54A7E2872E298AA72F483AA544A7194384755E2B8EC3FAEB22DFD';
wwv_flow_imp.g_varchar2_table(2) := 'B04C5BFE61BBFC4725D992CC324D8A3896B4088A244802A04850A675930471120771EF4EFBBDDE85B404B1CBDD99D963667A6BDE4C6F4FF77BAFBFF7B17BBA7BB054407E24023A109004D2019EAC0A20092459A00B0149205DF0C9CA92409203BA109004';
wwv_flow_imp.g_varchar2_table(3) := 'D2059FAC2C092439A00B01CD04D2655556B60C0292409609656A1A2209941ADC2D635512C832A14C4D4324815283BB65AC4A02592694A9698824506A70B78CD5E4132806E876BEF1464E75777759EDA9CEAD355D5D0DBB4E74EEA9F575B4D7FB3ABF6807';
wwv_flow_imp.g_varchar2_table(4) := 'A1B6529BA9ED8401614198C4005DD28BA496409CB3BAEE6395F5DD1D07EABB3A5FC46B2FCA9227376BDA0981216589FFD1C1D43E55E5A7140E6F02E7BFB183505BA9CDD476C280B0204C081B94DE7A5FC70FF17A80B0433C58D259136630A9047AF0E491';
wwv_flow_imp.g_varchar2_table(5) := 'E2FAAEAEC71180EF2000C7EB7D9DB719380601E067C0F84100D88DE24291C7DA081036BB81C33378FB670CB1230C0596DDC7BF8DE92FD61C3DBA0E92F8491E81B0B7F1FB5D7B98A27E0301F86F6C631B4A1E8A3CF42140182296EC7F80ABDF707A9C7B00';
wwv_flow_imp.g_varchar2_table(6) := 'B1D6A732F6DA0927D0EEDE5E579DEFF8D3F5273AAF32C65EE71CF6C4EE9E2C191F02EC510E70B8DED73988BDD2D708FBF8EAC75F3AA1046AE8ECAC589E993CCD38FB09F63A3BE2774FD6D088C04EACF753C4BE871E1B309DB02361047AB0A3A39A2BFC0C';
wwv_flow_imp.g_varchar2_table(7) := '7A4ECF357891470A10782810709F6EE8EAAA4994ED8410A8A1FB7863C0013DE874058A418754A31181AD9CA9A7EABADE6CD2583F6A35C309247A1EC68EA1557AB8C38B3CD200813CA628471A12D013194AA0DD870F7BFD4E78059F77BC69009A74211C01';
wwv_flow_imp.g_varchar2_table(8) := '0E5EEC895EA6188567EB4D1B4AA0E5ECCC1719876ABD4EC9FA0943A0866264A476C30854D7DDF9143A7600451EE98D00AE608B5819E2A521047AA4A7279301FFBE211E492509478031FE3DA38632430834B7384F3D4F41C25B2E0D1883008775FE6CEF57';
wwv_flow_imp.g_varchar2_table(9) := '8D50A69F409CE3630F7FD6086712A443AA5D03010EFC5F8CD8F2D04DA07A5FE7E7D13F5AF9C48B3C4C8440552876BA5CD64D20B4FE2C8A3CCC8980EED8E922D0A6EEEE0C5CF369372776D26B8A1D4D80F420A18B40F9E07F1818E8D201F2933A041828F3';
wwv_flow_imp.g_varchar2_table(10) := '8BB37F093A3EBA82CF011ED6615B564D0304F4C65027819824501A90408F0B1CF4C5503B8170FA8E8E37A258F6B049C37475029A0954EDF39522C08528F2303702A5951D1D9AE3A899402ECE351B3537DED6F3DEA328655A5BA599404C51E52B1B5A514F';
wwv_flow_imp.g_varchar2_table(11) := 'B37A7A62A9994001551228CD78A0D91D3DB1D44C20C6944CCD1ECB8A69850003A753AB43DA09C4B91CC2B4A29E6EF5984A7FB0A8C92BCD045219933D5024C84D96CF7474069A0904C034B3164CF2591E1F071293B8ABD94D3D9D81660229C0FD9A3D3641';
wwv_flow_imp.g_varchar2_table(12) := 'C5A5A15BE047029150DA042EA7C445CD044A89B74932BA74F3260466A6A1BCB04808A59786869264DD5C66248156C56BF1FA0D08DCB903857905D0545525A428BF000935034B376EAC2A2DBF4A02857160E9D62D50E766212F3B1B5A6B6BC0A928425A6A';
wwv_flow_imp.g_varchar2_table(13) := '6A202F271702B3B34065407E3E454012280485FFF66D084C4F436E5636B4D73780DBE108DD01916EAFAD83EC4CAF28E39F9CFCF49EDD139240C8001AB2964747C19B9189E4A9878C35D6D5325C4ED8B76B9728B33C320281B939AC69F4613E7DB627100F';
wwv_flow_imp.g_varchar2_table(14) := '0470581A06FA9DB8E6BA3AC874455E9DF0E2BDA6DA5A608CC1323E54535DF385DC588F6D4F203145570350BB652B1464DE7F6DB4D0EB85EA4D9B80C8B33C3C6C6C344CA8CDD604F24F4D7DFAD05CB73EF65FA269A87800F2F0598986BEC0CC8C09C36E9C';
wwv_flow_imp.g_varchar2_table(15) := 'CBB62590E84146C740C1E1A8B1AA1A148506B1D880A5B28D55554035E87988AB6A6C152D58CAB604A215661043D7969886AED5B12FC0A18C863D22A2D0B5BA804DBEDB9240EAE222D0543CC3ED86E2DC3C18C1E9BB1629C9CD05B7CB0DB404C0FD96DED9';
wwv_flow_imp.g_varchar2_table(16) := '89F8CFC19604F28F8D0940169696A0F3E20578B3EFA226E9C47A4BCB4B42D7320E8722919A53CAACDA8E401C49432BCADB4B4BE1993D8D86C8B6925208E0DE991D7B21DB1188862EFAE7FA95FA5DF0343E3C1B215F6968209540B33A91B0D149B1515B01';
wwv_flow_imp.g_varchar2_table(17) := '38C7204F8313B729DA2B3618D674D2453A03B82C6098529328B21581FCF8B00C5C85961D3B21134964548CBC0E27ECDDB61D6808A3B521A3F49A418FAD08A4DEB92362F2055C75168908A7599C51FD78F0323CF7D649213FC134E545282EB2F76FDD26AE';
wwv_flow_imp.g_varchar2_table(18) := '924002060B9E70F8A20DD01CDC306D2A2B8FD8C06BF830FC37BF7E050EF59C82CE77AF0AF911A629EFBD28ABCE2DE5EB21CB9301EAEC6C44DD56BC619B1E88665E80247AACB232621C0338BCFDA7AF0B6EE34EFBDFFFF95FC0B7F77F01BEF5D87EA034E5';
wwv_flow_imp.g_varchar2_table(19) := 'FD97AF1BA84C2405FB50372D2CAA0B0B918AA45DBE5E876C4320756E5E60B57FF356715DEBD43B3E0EEF8F8C400B12A1BAB81800B7391445014A53DEB5915BD0373101913EFB376F11B75424A048D8E0641F022D2D8A703EB86E9DB8AE75BA36795B6497';
wwv_flow_imp.g_varchar2_table(20) := 'E5E48A6BF8E973A1CDD66B51665AF5F905A28ABA185C5C145F2C7EB20D81386E5F1478B3A286B3109F8FA8C09C7F992E77497FA8E759E7F1DC951FFEC58333BB6C4F26A821B286DFB36ADA1604A2E9353D9B14E564478D637D61F00747FA3EFEE49E727D';
wwv_flow_imp.g_varchar2_table(21) := '9F601E0E690D8545F7DC0BCF28CAC9028EABDDF4BC159E6FD5B46D0844012CF246275045A6179E7E640FFC7164187E70F204BC8EB3B0D7AE0E8A34E53DF3C8A3509A9141AA224A49768E58B024C2462C64A11BF62050E87D9DE2ECE84318C5F560550D3C';
wwv_flow_imp.g_varchar2_table(22) := 'FBB926989A9F87DEF7DE83F3EFBF0FD398FEFA5F35C13F55565191A852141A262581A2C264B29B818070985E4715892827C6181CC095EA734F7D0D5E7EE24978F5EFBE0C6F7DF529F8C7ED3B715246AF9045A98CB7566C589E40D8563A6CD5039578E3FB';
wwv_flow_imp.g_varchar2_table(23) := '41911D381BDB8A43925B71105631497156C84688B431553271215B1068253E2A2E24AEA413755520D44B25C156A2DA108F5E259EC2662DCB7031907C1F4DC202DFE85C682B038742B26975B105812044A0B1D9C4FF31E0E88A0D5C13B23A79A87DB62010';
wwv_flow_imp.g_varchar2_table(24) := '0B05736CA577A0962748566CACD84C9099B4516B0B02D14BEF84F8E86CF0750E4A274A46EE04FF4ECC3F11DC1649949D74D16B79022D0D0D4120F41AC658E81A2BF867C7468124D6F2546E783A48A0C0CC3488BF7AA54C0B4BFC04321118C11F8A9A818D';
wwv_flow_imp.g_varchar2_table(25) := 'A565B00177D7697170388E572DFEB7BB0BBEE9EB8EB9C543B8E0388FFB60648B6C06493414737D3316B42681700A4D3F06456F075620711AB7EF808AD01ED619DCA688355034ED8FF6FECF6A3D3DC3B744D606B4256CA2ED00F67A4464ABEE8D59924062';
wwv_flow_imp.g_varchar2_table(26) := 'D89A9D85F2A26268C2ED07456150919F2F827BFAC675714DC4E9EDEBB8E18A8A371414E0C48F09DBE545454044269FF096E50ECB11C83F312102568A41DC5B59094A683DC6EB76435E4E0E9CC2BDAD44F406D45B91EE75B97990E10AFE440CD9260217E7';
wwv_flow_imp.g_varchar2_table(27) := '17089FC837AB31C85204A23F59A69FE5F5E28E7953750D3894BB9B47C3D8CCC23C5C999E323C8EEF4CDE86F9E525588F3D4EB872FA99BCE6EA6AF07A3CE22783C5AB1EE1054C9EBE1B613337869E7B70C645BD4B230E5BE13F51B7D2AC0DA1B7114F53B9';
wwv_flow_imp.g_varchar2_table(28) := '954C83AE6FDF0A3E2C5760CFB75AA5DBE9848777568AD73C16C936FABABA8C59BF5B86402ACE80E85F77616E3ED08F1EAC1590E2AC2C70395D7078701079C6D72AA2298F1EB45FBF7C59E8261B6B29599F9F2F86507A33D24A2FDD2791406BC16A5C9EBA';
wwv_flow_imp.g_varchar2_table(29) := '1C7C0DB5040315492B630C765454C047136370ECA6713FD9FBBBEBD761686A12763EF04024D322BF2CD43BF190AF22D3E427CB1068252825F979514352B56103381C4E3874F6AC21BD10C7E1E8C5B36744EF53BD7E7D54DBA57941DF56C81EB5B0496E5A';
wwv_flow_imp.g_varchar2_table(30) := '8740A1F76FB270B6150DFB0CDC17ABDDB449F442C7876E462B1AD3BDA337B1F7C10768D2B9D67357B8926C4FE875D890AFE1F7CC9AB60C81E209405579B9986ABF74BE573CD8C65337BC2CF53ED4936522312ACBCAC26F454D53BDA8054C74D39604A2A9';
wwv_flow_imp.g_varchar2_table(31) := '75EDE62DE2E5F9AED0EC494BCCA807FB78621CEA366F0687624B28C19EAD46B6EC2829156B33DF7DEB244C6978A89DC63ADFFDFD09F1C3E3DB70C51B55DAF2B02D8168EA9DE9C984E1E969F88F93BEB886321A82FEED840FC6EFDC1124245DF1B0873116';
wwv_flow_imp.g_varchar2_table(32) := '4FF1B42E6B0602190EE0BCDF0F470706607C7A124071C0D90F3F8097AE0EC66CE7D0E065E8FDE80351776C6A52E8229D312BB05041DB116812171C7F77E1024CCD4C8323371732366F02868B8B3FEA790B2EE0F3CCFD624BEF07BD74BA47D4A1BAA48374';
wwv_flow_imp.g_varchar2_table(33) := '91CE99C5C5FB5517F7A90713090B9C6C4520FA29DFA3172FC2DCC23C380B8BC08D33277AF5D4BDBE1C685DFAEB478FC02DBCF7595C39AE157DF6EDC6FC1C3C77ECA828EBAE580FA22EEA205DA4F3C8F9F3303A3BFB59850829C658843BE6CBB60D813EBE';
wwv_flow_imp.g_varchar2_table(34) := '3D011DFD7DE0F72F831BA7F1AEC2759F464BC1CD5722C114F64E5F7EED57F0FC401FBC347805EE2C2EA12C8A34E5FDC3EBBF06DA8C75E186A9829BA32B0A4817E95C46DD1D17CE03D95AB967F5AB2D087405170C4F5EBA042A53C083DB0D8E9C9C7BE24A';
wwv_flow_imp.g_varchar2_table(35) := '24701616C2E4DC1CFCFCDC59781187347ABB9084D2943785F7A88C33B4291BAE847492EE00DA205B57A32C0FC8212C1CB9344F9FFBE003B870ED5AF09965E303A044F91F795C48A08C6DDB04C93CB8E541431409A53D1B3702DDA332919A4CBA33D006C3';
wwv_flow_imp.g_varchar2_table(36) := 'DDF7DE3FFC01C8F65A6519636B659B32CFB23DD002CEB4BAAF5C81773FF918145C29F6FCD94660F7D9E6A008325C102422285E2F00051A85D234CCD13DB8CF876C10D9C826D9F6E150B888BEDCA79A696F5B8E40477ACFC12F4F9E80577B4EC18DB15131';
wwv_flow_imp.g_varchar2_table(37) := 'D3F250AF807B60C98A12F54064D391930BD74747E1959E53C227F22D593E24CB8E6508E4C0A149F414D87338B2B2C0999F0F34F4D04C4BF4241A10756467038986AA4036DDE565E0C6A1907C51BC59A0A06F42D057B0C8473B81384FFCDF09C70132ADC7';
wwv_flow_imp.g_varchar2_table(38) := '106148DC1515E02A2911018B43C53D454907C93D37E2C870206948876743852034F9470FDC71A848785185F379AD4634138833965604D20A80AC87BB383A62A99D405CD5CC5A19B4F44280EB88A56602391445F640E9C503CDDEE889A566027155124873';
wwv_flow_imp.g_varchar2_table(39) := 'C4D2ACA29E586A2690AA5A78084BB30027DA1D3DB1D44CA080C32187B044473649FAF5C4523381327372C6B17D0B28F23037020BA1586A6A8566029D7FE8A165007606E4C7E408B033C1586A6B86660205CDA9BEE0559ECD8B80BE18EA2210569604322F';
wwv_flow_imp.g_varchar2_table(40) := '7384E77A6388F5851E4DA74970BE8D15E573108260D263211443CDEEEB22D087CDCD0B68F90D147908044C777A231443CD8EEB2250D02A7F3E789567F321A03F76BA0934D0DC8EC31897B331D3B1879F09C64E9FE3BA091434CF642F1404C24467636266';
wwv_flow_imp.g_varchar2_table(41) := '0881D681E355442E71BF5E89CAE5612802374231D3ADD41002F99A9BFD9CF37FD6ED8D54901C04183B483133C298210422472EB5B4D36CEC054A4B496B045E18D8DB7AD8280F0D231039E4CAC9FF770E708ED252E24220298531363E8A9191C60C2510ED';
wwv_flow_imp.g_varchar2_table(42) := 'A938C0F1043A3889228FF442609807E0498A91916E29462A235D7DCDCD1F3285B760FA43142174D617000002074944415479A407021F05B8F2F977DADA868D76C770029183FD4DED179702F010A63B50E4914A041874612C765F6E69E94F841B09211039';
wwv_flow_imp.g_varchar2_table(43) := '7AB5AD6D7CE7E8C46300FC107D97921204BEB77364621FC52251D613462072F895279E080C34B71F64C00E028325CA93921404E619C09303CD6DCF510C126931A1045A71BCBFB9F5100BB02D8CC3FF61DE2728F2480C02B898CBBEC954B6BDBFB9EDE5C4';
wwv_flow_imp.g_varchar2_table(44) := '98B85B6B52084426FB5B5B6FF4B7B47D0B87B5CD8CB1BFC5BC632838B3C4B33C3423801503288715CEFF1AB1DD34D0DCFAFF8435E625E5481A81565A435D6AFFDED6D7069ADB1E73F97901575913DE7B16E5E7289750FC28F2581B01C2E6123E0EFC0280';
wwv_flow_imp.g_varchar2_table(45) := 'FD2BE7EADE4557460162F9785F4BFB6F095B48F227E9040A6FDFF9F6F6A94BADAD27118017509E42A947712D4ECFE6FAC151AEBAD9369C7EEE5214F6A8CA601F30F6B81D84DA4A6DA6B6130684056142D8A0D40FEC6D3B803DCDF3975AF69D78B7B17126';
wwv_flow_imp.g_varchar2_table(46) := '1CD364A7534AA0488D7DF74B5F9AB9D2DC7CEB9D475BDFA3E9675F536BCF3B7BDB8E0FE012BC1D84DA4A6DA6B613068405611209AF54E6A72581520988B41D1F029240F1E1254BAF424012681520F26B7C084802C58797754A1BD41249208380B4AB1A49';
wwv_flow_imp.g_varchar2_table(47) := '20BB46DEA0764B021904A45DD54802D935F206B55B12C82020EDAA4612C8AE9137A8DD92400601691F3577B75412E86E3CE4B7381190048A133059FC6E04FE040000FFFFDA13651D000000064944415403006C00D08A4BC78CF40000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(48) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5531325709732196)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715062916Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062916Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69701CC7757EBBC0E25A10002102200912377896049296A94824EDC4B16447499C1F51C2942B5795AB5295FCB1F427299755F9958A2B87';
wwv_flow_imp.g_varchar2_table(2) := '62FD723929FB87632AAE541247B24A6249A42D9E3E041E92785FE201F000C11337B097DFEBDDEEE95DEC626676677767761E0A3DF3BAFBF5EBD75FF737D3D3736CF0A90FF6273830067E1D0341E03F46C0C70830017CDCF9DC740026008F025F23C004F0';
wwv_flow_imp.g_varchar2_table(3) := '75F773E37D4C00EE7C4680A7403C067C8E009F017C3E00FCDE7C2680DF4780CFDBCF04F0F900F07BF399007E1C01DC668500134041C1821F116002F8B1D7B9CD0A0126808282053F22C004F063AF739B15024C0005050B7E4020B38D4C804C4438EE2B04';
wwv_flow_imp.g_varchar2_table(4) := '9800BEEA6E6E6C26024C804C4438EE2B049800BEEA6E6E6C26024C804C4438EE2B047C44005FF52B37D622024C008B40B15A6522C004A8CC7EE5565944800960112856AB4C04980095D9AFDC2A8B0830012C02E56935763E27024C809CD070861F106002';
wwv_flow_imp.g_varchar2_table(5) := 'F8A197B98D39116002E4848633FC800013C00FBDCC6DCC8900132027349C51090898B58109608610E75734024C808AEE5E6E9C19024C00338438BFA21160025474F772E3CC1060029821C4F9158D400513A0A2FB8D1BE710024C0087806433DE448009E0';
wwv_flow_imp.g_varchar2_table(6) := 'CD7E63AF1D428009E010906CC69B083001BCD96FECB5430830011C02D25566D819CB0830012C43C58A95880013A0127B95DB641901268065A858B1121160025462AF729B2C23C004B00C152B7A0101BB3E3201EC22E6907E221A85F9D151114876C82C9B';
wwv_flow_imp.g_varchar2_table(7) := 'B1890013C026604EA827221198BF7103E2333322904C694ED8661BF6106002D8C3AB60EDC4C28218FCFA519F644102CC2BB80236600B0126802DB80A538ECFCDC1DC8D1148C462C250637D0350A008A5515E7C7E9EA21C4A840013A04440C76767617E64';
wwv_flow_imp.g_varchar2_table(8) := '14209E1CFC611CFC2F0C0D010592851B98473A441411E74DD111A82002141DABBC2BA0B9FEFCC80840222E6CD051FF4B38F81B6A6A8002C99426322509903022CE9BA222C004282ABC38E6E982F7D66D554B53380C5FDEB2450C7C994824A034450224CA';
wwv_flow_imp.g_varchar2_table(9) := 'FCCD5BC017C612A1E2ED9900C5C3160FF8F1B4694F435D1DBCF0D410D485428B6AA5349A0ED5D7D625F3E84C70F3A6B0914CE06D31106002140355B29948C0C22D3C8A47231483EAEA103C3FB425EBE0170AB8A133C16F3FF92484AAAA3186670F5C1522';
wwv_flow_imp.g_varchar2_table(10) := '1B22C29BA220C004280AAC000B6363628D9FCC078341A081BDACB696A24B86968606F82DBC3EA032A448D70F91BBE324722802024C8022801A7DF408621313CAF2CECD9BA16DD932153713DA1B1B61E7A6CD4A2DFAE821441F3F56F1450227E48D001320';
wwv_flow_imp.g_varchar2_table(11) := '6FE8B217A475FCC8DDBB2A73EBC020742D6F5571AB42576B2B0CF50F2875B249B655020B8E20C0047004C6941131EF37567C3ADBDA60F3EAD590EFDF939D9DB0066D88F264FB36DAC6BD88F3C6110498008EC098341219BF874B970B22D280F3FD1DEBD6';
wwv_flow_imp.g_varchar2_table(12) := '0BB990CDB36883568FC8063D4611B97F9F440E0E21C004700848BA58A5B9BA34B70BE7F0355555329AF7BE166DECDCB051958F3E78007CA758C151B0C0042818425CAE8CC761E1CE1D65E9C9BE7E5B17BDAA600EA1BDA9093677F7A8DC85DB58174F8504';
wwv_flow_imp.g_varchar2_table(13) := '1E856E9800852288E5E902959EE844119AC261A0B93BC94E86A1AE2EE3C1B9C80244C67969D4097C990005A2482B33FA92E7B3EB3740301028D0EAE2E264F3D90D1B54062DB552DD2A8185BC106002E4059B51888EFE32D6872B3E6DB8862FE34EEF3B96';
wwv_flow_imp.g_varchar2_table(14) := '2D83DE55C6AA52F4DE3DA7ABF09D3D2640015D1E9B9A027ACC994CD0A30EDB7A7A492C6AD8D6DB2B1EABA04A62D3D3AA7E8A73B08F0013C03E66C91278111AD18EC0DBFAFBA1AE3AF90C4F52A138DB7AAC630BD625AD47F8310909455E7B0F1320AFF63A';
wwv_flow_imp.g_varchar2_table(15) := '5628FA7802685D5E1AFCF0C279D873E86049C231AC4BD61B9F9F83D8E4A48CF2DE26024C009B8009753CFA47EFBB67FE4D37E0845FBCB18D0013C0366400E2E89F7AAF378FE28E174944237C16C8135526401EC0451F3E54A5BEF5E517E1E4D7FEAA2CE1';
wwv_flow_imp.g_varchar2_table(16) := '1FBFF43BCA0F5A165511162C23C004B00C55523136330309BC1145B1E68606781E973E492E4778A1B313E8FD01AA9B56A3E2FC450982C2566002D8820B20A61DFD770F6D81AA4019204CF94C75BFF4D4502A06A09F9954220B4B2250BEDE5BD22D776626';
wwv_flow_imp.g_varchar2_table(17) := '2238D7C6B577F22E88777B770F0C9258D6F052FFA0BAF34CAB41F47DA1B23AE4B1CA9900363A4C9F677F71C34668AD317FC5D186F9BC543BEAEAE03707D725CBE2EA548CDF1C4B626171CB04B00814A9D11196F61476230168EF86B07BE326E5466C724A';
wwv_flow_imp.g_varchar2_table(18) := 'C92C9823C00430C74868D005A67CE2B3AD71196C6B7D42A4DBDDDC9D9B83D73E3A097FFDB3FDF0851FBD2102C9FFF6F147407976ED91FEF6156DB0BC214C22C4F1C6184F83041496364C004B3001C4A6A695E6E7B4777555A205E1E09DDBF087FFFB3FB0';
wwv_flow_imp.g_varchar2_table(19) := 'E7F830FCF2EAA7F070665A04927F78EC4391473A164C2D52D9A53D1E119BAADCB3C0A2861798C004B008603C75F14BEA3BD6ACA19DADF0C6E54BF0F23B6FC3D4FC6CCE7294473A3FBA7239A74EAE8C1D6BD6AA2CDD5795C842560498005961494FA42945';
wwv_flow_imp.g_varchar2_table(20) := '7C2E3970AB824178AEAD3D5DC12476797202BE7DE490D25ABF72157C6DE74EF887175F1481644A930ADF3E7C10AE4DDB3B8AEF68EF8040CA406C7A06002F885351DE2D81001360097064967E447DBABB1BE83D5D9967B68F25E2F0B71FFC0C62A94727B6';
wwv_flow_imp.g_varchar2_table(21) := 'F7F5C19F6DDB06BD4DCD5894866C40C894F6D9DE3E4C0388A0EE370E7C0054562458D884ABAB616B57575213EB8CF1C7759358986C9900260051B63E987675F55092E5F031DE38BB3A7E57E837D6D6C357B4B7BA44A2B6F903CC231D4A3A8FD70B676D2E';
wwv_flow_imp.g_varchar2_table(22) := '69EEEA367CA33BC36487C3D208300196C647E426E6939F3AA1C8D08A15B4B31C6E69D70E1B57AFC47274D4C75DB67FBCB9B6715587CAB9A99555894B08432B8CA959821F8B58022923CB4304309C2EB514C7A5455967FFB226295ADA3FD0A6224DF50DA6';
wwv_flow_imp.g_varchar2_table(23) := '659A1B0C9D7BB33897372D6128F42F333EBF18D7486B68B0948900132013918C383DFE202F283B9A9AA0BECADEB77E7A9A69AE9F343A6161403F9E31067D8FB84E4896B5B26D0A85E08970F27E40821ED8E30B6153D898002610C5B5A944DF136D26DA8B';
wwv_flow_imp.g_varchar2_table(24) := 'B3D737B7A8C4F3F43D1F48A8F8220107EC59A193CC59AF91279962BEEDD756A874DFCD4BFA53830960D2EFFA5462E009FB777FE9599D5D0303A296495C4A7DEBDC792167DBBC75FE1C4CA7A65B3BF0665B9BFCB18C6CCA39D2FA5B5B558EFECAA64A6421';
wwv_flow_imp.g_varchar2_table(25) := '0D0126401A1C8B23FA20EA6B6959AC6021E59BCF3C0775A11AA1398C77807F78E2045C9DA0CF9DE3D9008FFAD7262680D286AF5E153AA4FBF7BFF19C90ED6EFA5A96AB227C065050E414980039A14966D04DB0A404D0A15DA0CA342B7B3A0B7C7DE72EA5';
wwv_flow_imp.g_varchar2_table(26) := '7A019738BF7FE408BCFAEEBBF0EADE77E17B470E03A5498557767D0EDAEBEA6414C086D4AEF9A8FB6EC384AF54990066DD1D4FFEB223A9D1CD26DAE713FEA4AF1F5EFFDDDF07B9CE9FCD06E5BDFE7B5F813F4EDD10CBA66396D68817C24A47F35DA5B190';
wwv_flow_imp.g_varchar2_table(27) := '860013200D8EC59104DE5595A9E1EA9014F3DA7F7EE52AF8BF97FE08FEFCE9EDF04C6F2F34E3B2E88AC64621FFC5679F11799FEFA07B0579991785C278475808B8E133008260F2CF0430010862DA192054F887AF686AF3CAD016F8EE179E87035FFD53D8';
wwv_flow_imp.g_varchar2_table(28) := 'B7FBAB427EF9A9A1BCA73D7A13C21A49137C06D0A1C92A3301B2C26224EA83289CFAF54623D77D52583B03402CE63E075DE61113C0AC43E2C6206AD4079759B932E587AB8D1B7509EDEC5526770AAEB6D8069800660807024A238A4B962AE25221A01E8A';
wwv_flow_imp.g_varchar2_table(29) := '2607719995761C7222C004C8098DCC08480166625125BB55988E6A3E96F1932D6EC527D32F2640262219F140502340D4980E65A8B9263AAD9154F7DD350EBACC1126805987048D39F5543462A65DF6FCA98876060872F79A75082364825040BBA89CD1A7';
wwv_flow_imp.g_varchar2_table(30) := '1726E5CA953DAD9134E0818BF672E124EB753101A48BE5DD07B4C79FEFCFCD95D7190BB5DFD37CD47DB750D4972A4C00936E4FC48D9594510FFC10459A8F7C23CCA4770198004B40B4303606F119E37B402393134B68BB236B543C659AF4857E438CDA90';
wwv_flow_imp.g_varchar2_table(31) := '8CF1361B024C806CA860DAC29D3B90F99DCD91C78F30C7DDFF3A01C8536A03938090C81E98005970A101A3FFF6AF54197960FC30864CCB773F3E3F077FF9DE5E1148CED74E66B91B597C241244EE26BF4C91A9EFF7381320630488C1AF7D8EA467A5F174';
wwv_flow_imp.g_varchar2_table(32) := 'E62D07CF00EF8F8CC0C7A3C940729A1B0544C6B42950B7E67BF4D12360122C069609A0619239EDE95DB51A760CAE83B6E5C66B8617B401A615B52DCE448C7B0ABA6CDB9056E08C46D0F6D656D889BE531BA40A9180DA28E3BCE78B6035066860E8D39EBE';
wwv_flow_imp.g_varchar2_table(33) := 'D59D38F807211008407B4BB3D23B9EFAC8954A709170E2EE98F2A6BDB945F8BE637010A82D3283DA486D9571BFEFF90C80238006040D0C14C5FFE0DAB5F05CEA4576C0BF76ED5B40C76EDDC21477FEEBBED1275CA497D416268144237DEF7B028839FF84';
wwv_flow_imp.g_varchar2_table(34) := 'B1BCB9A1AB1B9EC97825B15DFBE0D4AFAE5F4F47D025B1442201C3376E086F02B86DD37CC6A820F4BAB55D248A4084E76B02F0F77D00FA51395A21112302379BBB7BE0E99E1E94D2FF437837B8A529F945B8195CBDB9E4C2FB0117F126DDECC2BC70BCB5';
wwv_flow_imp.g_varchar2_table(35) := 'A905AAB33C07B4BDB71788E0420937744D4018A0E89AFF523BE2DB3300DD248A8C8F2BBC37F5F4C0D6EE6E15CF143AB56F021DB9EDBE69D0A15B3795CB9D2B727FBF8808BEB1BB47E9120631ED6B742AC327823F0980D38508DEE8927D4C2B25DB70EA23';
wwv_flow_imp.g_varchar2_table(36) := 'E3D9F63D2B8CAFC2EDBD78219B4A59D37E72F68CAABFAFBD5DC9D984CF20D1A9CD322F72FBB66F7F4FC0970488E0CD22F9C58466BCC0A59512391872ED97D7D74353382CB22F8D8DC1A88B8E9A34251B7DF840F84653B5C69A1A212FB5A1363735360A15';
wwv_flow_imp.g_varchar2_table(37) := 'C2C2AF53215F1220A6AD976FEDED1583C0CAA677E52AA5F6F6B54F955C6EE1FD1BC685796F7B876577B6686DA7EB01CB052B48D17704A01F8E90BFF6D8505B0B6B5A5A2C77678FF6DB003F3E750A68E5C572E12229D2AFC8BC79FAB4B2DEABF9A8127308';
wwv_flow_imp.g_varchar2_table(38) := '5D7883AF21F5053AC2C48F9F5274110172F492C3C9B129E3B7B7BA3B8C23BA956A9621615A539F2CBF373509FB5D7031BC1FEF4B902FE4FF0ABCF9D56061FA43BA32ACD5CE18315C4992E97ED9FB8E0071ED8591EE25564B720D8041BC432CF3DE38F589';
wwv_flow_imp.g_varchar2_table(39) := '14CBB6FFC1472755DDEB3A3B956C55E8D256B7746CAC96F7BA9EEF0890D05E6C6FD13E246BB523FB718A515F532BD4E961B60BDA4D349158C2CDA9470FE1DC1D5CC1C13A692AD3D39A7BF91355B2FEB7E0C5BDCC4878E0954FE9AB537B1F12C078082DDB';
wwv_flow_imp.g_varchar2_table(40) := 'CD22336083C100DE4C32EEA8FEE71963FE6D56D6E9FC37B4A5CF4D5D5D40BED9AD43C720A11D1CECDAF1AABEEF088057AE05F7D56047075457550B3BEF9D3B0323DA5B6322B1049BAB782DF3FEB9B3A2A69A500D0C6873799168715315D48680F6153C8B';
wwv_flow_imp.g_varchar2_table(41) := 'C53DAFA6B5DEF36D2959036AAAAA60FDDAE42FB3C7F0A6DABF0E7F5858DD7994FED6AF7EAE7E6C897CD18FE47998F36D1126409E5DBF092F38E9C84BC50F5DBE04C7EFDF23B124E197E3E3307CED9AA82B541D824DABECAD668982BC11083001040CF637';
wwv_flow_imp.g_varchar2_table(42) := 'B57816D8D2D7A70AFED32F8EE2ECCAF88284CA705AA0330ED625CD7E666000E8613D19E7BDCC6DCBFB0000069E494441543D049800F6F04AD35E87D702F2BE003D1EF1F648F271E434258723FF8F777DAFA45ECAA1C71E06DA977EEEC7E1EA2BCE1C13A0';
wwv_flow_imp.g_varchar2_table(43) := 'C02EDD3E38A82CBC76F8103C5A585071A785FBF3F3F0FA91C3CAECB383EB94CC427E083001F2C34D955A110E837CB272626E165E3D7A44E5392D7CE3C841A03AC82EBDE1257F149BE25E0DE5F69B09E0400FE88F1F1CFDF432FCF8DA5507ACA69BF8EF4F';
wwv_flow_imp.g_varchar2_table(44) := 'AFA80B5FCAA90F15F67B65648383CFDF082B7400C4E309387AE9129CB99E5C9191F6FEF9E001B8393B23A305EF6F4C4FC36B870EA4D9A13AA96EF2212D8323B610E033802DB80CE5F9580CF69F3D0D57F507E2529F529F8F46E0959FEE03D2314AE427CD';
wwv_flow_imp.g_varchar2_table(45) := '623D5FDFFF1E44702F2CA4EA2099EA261F9CA887ECF9313001F2E8F529BCD0DD7BE204DC7D907C09854C543537435D6F0F04529F24A755A16F6ACB95A4633BE092E7DFE1BCFFDABDE43D06B24D75505DD216F940BE904F328DF7D611600258C74A688E4F';
wwv_flow_imp.g_varchar2_table(46) := '4EC2BBC78FC39436C509E152640D2E89D2E7C86B56AF06080480FE7E7AE13C7CEFFC3912F30ADF3D77160E5FBEACCA926D5107D64575CA0CF2857CBA87532599C67B6B08949100D61C7493D6753C12EFFBE8242C44524B9D8120D4E01DE1EA9616E566B0';
wwv_flow_imp.g_varchar2_table(47) := 'AE0E426D6D2AFE9DA387E117A9757B9568413878E736FCBB7606219B645B16A53AA96E401F288D7C7AFFC471B87EFF3E4539584480096011A88F4747E1F0D93310C7690915A1E9486DD75AA80A87299A16687056C9F76D31E76F7EF226FCD7954B40EBF8';
wwv_flow_imp.g_varchar2_table(48) := '185DF29F74F65CBE082FBFF3B6D2235BD5CB97ABB814A86EF2817CA134F2EDF099D3F0C9CD518A72B0800013C004245A653984539953B80C295503B5B5504B8F1FE35EA665EE432B57E2F580B154F92F073E802FEEF9016CFDFE7F88F09D9F1F51454896';
wwv_flow_imp.g_varchar2_table(49) := 'E9A4F31AAE22C9CC4075086A9678D627883E902FE4932CF3C9952B62758A7C9769BCCF8E0013203B2E22752E1A857DA74FC18D31E39B9B74D4ADC3C11F485DEC0AC52C9B40308824590BC1BAFA2CB9D69282F5F5C286BCA6C8558A7C219F820DC6D98856';
wwv_flow_imp.g_varchar2_table(50) := '88C8775E21CA855A329D0990C461D176726E0EF69E3C09E38F8CDF04A069480DCEF9CD06A434460393A628347F27E2505CE6E5DA930EE95299DAB56BF12C529D4B353D3D1080DA359D50DD624C95C8775A21A2B6A42B734C22109402EF0D04C668A50797';
wwv_flow_imp.g_varchar2_table(51) := '39A7E54A0F0EAE10ADBC6817B786B6B9248953D7D707F5EBD6413D866AED5D5C92653AE910C9A88CB9E5C51AA1F636205F658E5821C2B6D0EA954CE3BD810013C0C04248F48EEDBE9327208237B34402AEB2880189EBFC22EE814D35FA5AB3660D00FA0E';
wwv_flow_imp.g_varchar2_table(52) := 'F8476D790FDB745EFB1A1E26F33F22C00440101ECECEC2051C1C6F0E0FC3F18B173125F91FC00BD0BAEE2EA8CAE3E5F9A485F26DC9679A7E511BA417C72E5E80B78E1D83F3784D436D96E97EDEFB9A007B0E1D040AEF0C7F08C3383868BA200783B800C5';
wwv_flow_imp.g_varchar2_table(53) := 'C11FB0F99D1D59DE0D7BB142846DD02FC42767A6E118AE6A519BA9ED14DCE06BB97CF01F0152D3825C80D31193961DC5056855552EB582D3038180B2110818B24A7448A03BC77426A08B6A3069BB69BE433EB9C98CEF0850DDDCB408FF606D9D583DA147';
wwv_flow_imp.g_varchar2_table(54) := '0DEAFA7AA12AE3C7251615702021180E8B159E002EA792EC80C9254DD045755D4F37D09E964B0338BDCB2C900D9B4C9D42E36E2BEF3B02D0333472C545EE6B719A40AB2774C7B5541D44D3135AF1A1407229EA0D8442E2310D5A2E25A2CBF6CB3D61530A';
wwv_flow_imp.g_varchar2_table(55) := '3FDC5487EF08E026F0D997F223C004287F1FB007654480095046F0B9EAF223C004287F1FB0076544A0840428632BB96A462007024C801CC070B23F106002F8A39FB99539106002E4008693FD810013C01FFDCCADCC8100132007308E26B331D722C00470';
wwv_flow_imp.g_varchar2_table(56) := '6DD7B063A5408009500A94B90ED722C004706DD7B063A5408009500A94B90ED722C004706DD75486636E6F0513C0ED3DC4FE151501264051E165E36E478009E0F61E62FF8A8A0013A0A8F0B271B723C004707B0FB17F4545A0880428AADF6C9C11700401';
wwv_flow_imp.g_varchar2_table(57) := '26802330B211AF22C004F06ACFB1DF8E20C00470044636E2550498005EED39F6DB110498008EC0986184A39E418009E099AE62478B810013A018A8B24DCF20C004F04C57B1A3C5408009500C54D9A66710600278A6ABBCE1A8D7BC640278ADC7D85F4711';
wwv_flow_imp.g_varchar2_table(58) := '6002380A271BF31A024C00AFF518FBEB28024C0047E164635E438009E0B51E637F1D45C0410238EA171B63044A820013A0243073256E458009E0D69E61BF4A820013A0243073256E458009E0D69E61BF4A820013C00998D9866711600278B6EBD8712710';
wwv_flow_imp.g_varchar2_table(59) := '6002388122DBF02C024C00CF761D3BEE04024C002750641B9E458009E0D9AE7387E35EF7E2D7000000FFFF0D448AAB00000006494441540300F9C752F99500C7E80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5531634483732236)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715062916Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062916Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC7D09741CC775EDEB99C16025082E0048425C01EEC442D31B4959E08000E3E8FF48B2E39FE49FAFEF25273FFF24F93FC9499CA3C48E1CC572';
wwv_flow_imp.g_varchar2_table(2) := '6245D93727CE62C576727CBC4896EC5822091020259192139100012E92B88AFB4E80C43A4B77DE6B4C2F331800B356D74CBF395DDD55D5D5AFDEBBAFEB7675554FB707F8C7083002AE458009C0B5AE67C319010026003E0B18011723C004E062E7B3E9EE';
wwv_flow_imp.g_varchar2_table(3) := '4680AC670220143830022E458009C0A58E67B319014280098050E0C008B814012600973A9ECD76370286F54C000612BC65045C880013800B9DCE26330206024C000612BC65045C880013800B9DCE26BB1B01BBF54C00763438CE08B80C01260097399CCD';
wwv_flow_imp.g_varchar2_table(4) := '6504EC083001D8D1E03823E0320498005CE67036D7DD08C45BCF04108F08A719011721C004E02267B3A98C403C024C00F188709A117011024C002E72369BEA6E041259CF04900815CE63045C820013804B1CCD6632028910600248840AE731022E418009';
wwv_flow_imp.g_varchar2_table(5) := 'C0258E6633DD8DC074D633014C870CE733022E40800920CEC90D2FBF5CDCD2D353B5A1A767D1A6030796361D38B0B2E5C081D59BBBBA366CEAEA6A6ADAB7EF7D8DDDDD5B38C88701F9867C44BE229F91EFC887E44BF229F936CEDDAE4FBA920036EDDB57';
wwv_flow_imp.g_varchar2_table(6) := 'DFDCDDF9F1C6FD5DBFDFD4D3F52286DEA6FD5D9771AB9595FAC75588DCF541E4AA470D5D003574565543EF46BC70DCE385A3E0D10E2B8AFA1607F93020DF908FC857E433F21DF9907C493E25DF928FA3BEEEC5F88B740EE8E74257D72A37B2812B08A0A5';
wwv_flow_imp.g_varchar2_table(7) := '676F4BF3FEAE27D1F107D0E9C31E8F765A5394E7150DBE804E7F14430B68B004B7BCB80181495FB7A0A98FD239A09F0B5E3843E74653CFBEFD8D3D9DBFBBB1BBBB19F717C43293110549001BBEF31D7F6377F7C34DDDFBBED2D4D37541054FAFA6C117B1';
wwv_flow_imp.g_varchar2_table(8) := '913F84609463E085114884009E1B5AAB02CAD35E45EDC373E72C86BF68EADEBB93CEA94407E47B5E4111C0C69E9E86A6EEAE3FF455CF3F8B5DF41F81A2FD123A6829065E18817410588907FD1A289E2E3AA7B007F907748E615EC12C794F0038C053D1DC';
wwv_flow_imp.g_varchar2_table(9) := 'DDF9F3C8D4AF7921720A14F81DF44E1D065E18816C2250873DC8CFD13986E7DAAB8D3DFB3E4DE75E362B7042565E1340F3FE7D1FC3019E37F11EEE9F11BC0731F0C2088840E0230A68CFE1B9B71F2F3E3F21A2C274EB98EDB8BC2480969ECE1DC8C26F68';
wwv_flow_imp.g_varchar2_table(10) := '9AF6021AB811032F8C8013086CC18BCF6E3A17E99C7442814CEBCC2B02A02E1782FD2D15941E34FCC3187861046440E0C3744E36F6747D93CE5119144A5687BC21009CBBDFE6532247D1B09FC3C00B23201D020AC0E3785BD0D7D8DDBD453AE5A651282F';
wwv_flow_imp.g_varchar2_table(11) := '08A0A9BBF3931EAFD6838330AE7C58631ADF71B69C08D42B1EF5109DB34EAB974CFD721380A62934F5028AF2756CFCFE640CE2328C80E30868E0A773B6B967DFD38EEB328B02D212003D78D174A0FB7BD8F03F378B0DBC9B119012010DB4DFC50BD8D7E9';
wwv_flow_imp.g_varchar2_table(12) := '5C965241544A4A02D8D1D3E3F355CF7F1E34EDE3A8232F8C40FE22A0C1277D35F3BE4BE7B48C4648490077B4F03710ACFF8E81174620FF11D094476E43E4399186245B977404D0DCD3F50CDE3FFDCF640DE0728C403E20403304FAB92D99B252114053CF';
wwv_flow_imp.g_varchar2_table(13) := 'BE5FD7009E900C23568711C80A02746E37E1399E15615912220D01B474EFDD8EF7FC7F9A25BB580C23202902DA9F34F7744AF3D8BA140440A3A4AAE2F93A2820853EC03F462077087851F47374CEE336274B2A42A5687045D5F3BF884AD763E085112878';
wwv_flow_imp.g_varchar2_table(14) := '0434501AA2E7BCE3B63A4E004D3D7B3669009F751C095680111088009DF38D073A1B055699B02AC70900C0FB25D48CBA45B8E18511700D025E45551C7F52D05102A03FF8A0BB1FC5C00B23E046041E6DCEF28060AA203A4A005EAFF6C7A92ACCE5198142';
wwv_flow_imp.g_varchar2_table(15) := '4240030FF5801D33C9310268ECE97A4CD3609B639673C58C80140868AD4D3D5D1F754A15C7084001E5D79D329AEB6504E44240F96DA7F471840036EFDBB71C40A357743B6537D7CB08488480F650D3813DF406E28C744AE760470820E2513F83CA2A1878';
wwv_flow_imp.g_varchar2_table(16) := '61041801000554CFA7C0819F7802D0346CF8CAA71DB095AB6404244640F924E86D43AC8AC209A0697FD787D044BC05C0352F8C00236020B032DA368CB490AD70025040794C88655C0923907F08A43D1B90AEA9C2090015156E24D6C90B23900F08086F1B';
wwv_flow_imp.g_varchar2_table(17) := '420960F3DEBD4B3480A67CF004EBC808884740F9E096CECEB922EB154A00E122EF2E344EC1C00B23C0084C454009F9949F9C9A9DBB1CA1048073FFFC359FDCF99225170002D843DE91AA199994174A000A682D9928CBC73202858E80E836228E009E7A0A';
wwv_flow_imp.g_varchar2_table(18) := 'EB52F8FEBFD0CF60B62F330414A511F4B6929998648FC646996CD1CCCAB5B46EA3C65F9A99143E9A1128700434286B6CDDBA469495C20840032FDFFF8BF22AD793D70828E04DFA561932FC09230095EFFF3374151FEE1604709AACF008008D5AE11607B2';
wwv_flow_imp.g_varchar2_table(19) := '9D8C4026086800EB32393E956385F500900016A5A218976504DC8A00B61561174B610480ACC604E0D6339AED4E098164DB4A4A42A7292C86009EA2294058308D0E9CCD083002B108CC173515288400D6B66F2E47FB7C187861041881D91128DAB2654BC9';
wwv_flow_imp.g_varchar2_table(20) := 'ECC5322F2184004A4395DECC5565098C807B10885454F845582B8400547F5088312200E33A18011108CCD666B2A5831002288A94720F205B1E6339AE4040549B1142001363637CFFEF8AD3968DCC1602A2DA8C1002F0F955EE0164EBCC6039AE4040549B';
wwv_flow_imp.g_varchar2_table(21) := '11420061D5CF04E08AD3968DCC160233B5996CD54172841000F87C3C0848684B163455050A92A9C5EA20025EBF26E4A2298600208826F122130291FBF761FCCC593D505C26DD581780C878411100BB542604A8C107AF5D03BCFCEB81E291E1619954645D';
wwv_flow_imp.g_varchar2_table(22) := '042120A80720C81AAE665604F4C67FF52A367CCD2AAB6910C43CDA6765724C4604B2AD131340B61195585EE4DE3DBDA11B2A56949601053D6D900096D1D3BC7205024C00AE703340786808A8AB6F985B8E8D7F57733350304900775219220A8CF2E20204';
wwv_flow_imp.g_varchar2_table(23) := '98005CE0E4F0E01084AE5F372DA506FF13D8F8CBFC7EA0402430A78CFEAF3559844880086332C5EB42468009A090BD8BB64546462074C36AFC95E5E5F0D19616BDE1E36E7DD14900F3EC24408441C7EA0578250502B95082092017A84A22539D9880E015';
wwv_flow_imp.g_varchar2_table(24) := '1CF08BEA53595E8E5DFE1628292A8AE6589B529F0F762109CCADA83033E95892616670A4E01060022838974E1AA485C310BC740947FB553DA3ACA4143A9AB1F16343D73312AC8804DA9B9AA1ACB87872AFA642F0F26520599319BC2E340498000ACDA364';
wwv_flow_imp.g_varchar2_table(25) := '0F8EE84F60E3D722114A81D7EB83F6A626A006AE67CCB0A2326D8D4DE0C563A81835FE092401409994E6505808300114963FF18AAFC1C4E52BA005279FBE54D0BE406323549624FF8299AAB2327868E346A063F170D0F45B892B14E5E01002B9AA960920';
wwv_flow_imp.g_varchar2_table(26) := '57C83A243774F316A8A32366ED1F58B71E1655569AE96423755555F0FEB5EBCCE2342018BA75CB4C73A430106002280C3FEA56444647213C78578FD3AA7E491DACA9A9A1685A616D6D2DAC5CBCC43C367CE70E92CBA899E648FE23C00490FF3ED42DA0FB';
wwv_flow_imp.g_varchar2_table(27) := 'FDD0556BC49FA6F43EB06A95BE2F93D587EAEBADA70551103D23C0FF2044200A64610228104706AF5E03220132C7E3F1C08E4D9BC0875B4A671248462B8E07904C92438382F48C00C53988412097B53001E4125D41B2C38343D835B7EEFBB7AC59037353';
wwv_flow_imp.g_varchar2_table(28) := '18F49B4DCD793828B865F51AB318FD69888299C191BC458009206F5D37A9B8160A41E8E6CDC904AEEB1654C3DA9A5A8C6577A1F180BAEA6A5368F0FA0DA0DE8099C191BC448009202FDD66294D5D7FD0261FF6F1E1DCFDD6B5D695DA2A959DD8D686D540';
wwv_flow_imp.g_varchar2_table(29) := '75E8D2D448CC9F8BF43C5EE51D024C0079E7324B61EA86ABE36366C6E6D50D5032C3937E66C13423F408F1E68606F36815671D687AD0CCE048D611C8B54026805C239C2BF99A865D7F6B5EBE0AE7FA73D1F58F579FA615EDFF17B0DF7EC497E5B4FC0830';
wwv_flow_imp.g_varchar2_table(30) := '01C8EFA3841AD2DF75B570C8DCB7D5F6D08E99998388A228B075CD5A53323D71C8EF0F30E1C8BB081340DEB90C15C6AB7FF8F66D8C4C2EF4C0CF82D2D2C98480F5C28A8A98078442B75017D44940D55C4596116002C832A022C485EEDC0563CE9FEABB73';
wwv_flow_imp.g_varchar2_table(31) := 'FF1E741E3B2634DC1DB15E224A3D11EA91902E1CB2878008494C002250CE621DD4F0E9915CBBC8BBF7EFC3F53BB78586C1B87707EA3D12EE05D8DD9217712680BC7093A564F8EE5D30A6FDAC5CE7633A310D0E3AAF086B9012024C0029C1E57CE1C8D090';
wwv_flow_imp.g_varchar2_table(32) := 'A9C483F50DF0CBDB1E74346C5F654D0B86EF320198CEC9930813409E388AD4A4D176BAD2529CFEABFFE487B7C1FF59BFC1D1F0E4D66DD67B037056829F0B20EF641E4449600210857416EAB15F6177AC5E0335597CDE3F5DF56A51878F34AC360FB7EB68';
wwv_flow_imp.g_varchar2_table(33) := '6672445A049800A4754DAC62EAF838A813E366E6CF6ED868C69D8EFC9C4D177A1909FD3FC1699DB8FEE4106002480E27C74BD9AFAC0FCC9B0F1F5AB0D0719D0C05B62EAC86C573AB8C24D8753533392225024C0052BA2556297A014704E7FA8DDCC75B36';
wwv_flow_imp.g_varchar2_table(34) := '0328340A0072FC5097C737A34E516DC2715384D16CDE248980C8624C0022D14EB32E75C4FAAF7F69911F1E59BE224D49B1879D1DBE0F146273D34B3DBA7C259418DF1B502340AF274B4F121F25120126009168A7595764D822001AFC2BF57AD39404F0ED';
wwv_flow_imp.g_varchar2_table(35) := 'B367E0E32F7D1F367FED1FE1A7BFFD2D3DE8F11F7C1FBE73EE4CDA72CB7D3EA0694943806AD3D9C8E3AD7C083001C8E793291AD9A7D61E5CBA74CAFE6432C6231178E2D0EBF04CCF3E3877EB2680FDA93D8C9FBD7913BEDCBD0FCB1C84092C9B8CCCF832';
wwv_flow_imp.g_varchar2_table(36) := '1F59BACCCCB2EB6C6672443A049800A47349AC42EAD8180076A98DDC6D69BEEDE717F6BC027B4F9E30C44CBBDD7BF238FCC2DEDDD3EE9F69C7F6DA45E66E2D14042D64FD5BD1DCC191191110BD93094034E229D667BF926E5A5C07557E7F8A1200FEEEC4';
wwv_flow_imp.g_varchar2_table(37) := '31387ED5FAB04763DD03F08B0F3D045F7AF8613D509CF20CC1C7AE5C867F48822C8CF2C676417131ACB191805D77A30C6FE5428009402E7F4CD1C6DE881E5C99FAE0DF3BF786E09FDE7CC3941B58B3167EB6B9199655CCC13C9A4950F438E505D658AF13';
wwv_flow_imp.g_varchar2_table(38) := 'FBEA9B87E0946DE6010B27B53CB472A559CE3E76616672442A049800A47247AC32F4D82F7D96CBC8DD6EFB48879137DBF65B6F9F0415EFF1A9DCAA05D5B0D3F64A2FCAB3879D0DAB61D5FC857A96AAAAF0ED77DED1E3A9ACB6612FC5284F0F051971DECA';
wwv_flow_imp.g_varchar2_table(39) := '890013809C7ED1B5522726F42DAD3C38D7BED1F6B00DE525134EDB3EE7F5BEE5D620DD74C7BE6FC57273D7E9DBD62BC7CCCC59229BAAAA8074358AD96D30F2789B1801277299009C403DC93AED57FFFA9A1A5014EAB2277970B4D819DB9B836A2BCAA3B9';
wwv_flow_imp.g_varchar2_table(40) := 'D36FEC654EE3CCC0F42513EF29F27860D98205E64E7A659899E0887408300148E7124B21FBD5B321CD477F6B2A2A4C819AAA99F1E9225AF47681F62F2CB78EA574B2614D758D59D46E8399C9116910600290C6155315B1379EFA79F3A7164822675DADF5';
wwv_flow_imp.g_varchar2_table(41) := '9190776DBD81E90E7DC776D55FBFC83A76BAF289F21B6CBADA7B3189CA729EB3083001388BFF8CB5DBBBCFF5786F3D63E16976AEB5F51C0E9E3E0523C1E9E7E64782413878C67A1A70BDEDD869C427CC6EB0E9AA4E041396E1CC58049C4A31013885FC2C';
wwv_flow_imp.g_varchar2_table(42) := 'F5EA577F5B77BCBEB272962312EF7E64C50A282F2ED1778E8542F0CDDEB712920035FE6F1CDB2034420000100049444154390CE358860A579694C2232BAC293DCA4B36D457CE358BD20B43639E3A34F770440604980064F042021DE2BFBBB7B4B42C41A9';
wwv_flow_imp.g_varchar2_table(43) := 'D9B31662E3FF42A0CD2C78E9F61DF872D75E78F1C431F8F1C58B7A78E1D831CCEB84CB77EE98E59E6EEF48EBA12312402F09A1AD1154EC591871DECA850013805CFEB0B4C17978235152E4079C0280747FBBEA1E80FFB5E5033187BF75FE3DF8E140BF1E';
wwv_flow_imp.g_varchar2_table(44) := '8E5C782F66DFCF7FF0C3F090ED89BE989D49248AE3FFAC64B32589C3B9884004980004829D4A559AADD1CC2D9DECC2A7727C7CD9CFB66C86AF3EFA3158A83F0118BF77325D83B71954E6FF37364D6664B0AE9E33C73C9A1E6832131C99828093194C004E';
wwv_flow_imp.g_varchar2_table(45) := 'A23F53DDB6FBFF8A92CC0980AAFAE0C26A78E1E39F80677FF2BFC12F6DDB0E1DEBD6C147376CD4DF2AFCC798F7C2C73E015486CA661ACA8B8B2D113632B332392603024C00327821810E5A443573AB7040CE4C6418995354041D4BEAE017D76F8467B73F';
wwv_flow_imp.g_varchar2_table(46) := '045FDEBA1DE8CDC2ED9847FFE9CF50BC79B85D677B6FC62CC0112910600290C20D0994D02C02A8CC520F20412D39CB9A5362F500EC6496B30A59705A083001A4059B80836CDDE64A7B775A40D5D9A8A212671F4C39B6F71998791CD111707AC504E0B407';
wwv_flow_imp.g_varchar2_table(47) := '92A83FF57F00242134C745BC1EDBA9651BCFC871B52C3E45046C5E4AF1482E9E5B046C7FFC190D87735B570EA4D38345A6589B2D661E47A4408009400A372450C2D668EE8F5B7F0B4E5052CAACE1A04D677B6F404A6DDDAB141380A4BE576C8D6634947F';
wwv_flow_imp.g_varchar2_table(48) := 'CFD38F8C5B3ADB6D91146E47D492A152260019BC904807DBD3742379F828ED70C8EA01283E5F220B394F020498002470422215EC8D66C4F666A0446565CC8BD1D9466632EAEA669D980024F5BE626B3437D27839A79366D13B08EFD8BE6664B7C549BDB8';
wwv_flow_imp.g_varchar2_table(49) := 'EEA90830014CC5448A9CF0DDBBA61E115585ABF47D003347EEC8E5B151209D0D2DC3B67F191A796EDFCA623F13802C9E30F4C039F3E0952B10B97FDFC8D1B7174686F56D3EACDE1B8ED5956C219BF8BD00F2798F0940329F04AF5D83485C032215DF8B23';
wwv_flow_imp.g_varchar2_table(50) := '04CACB341CBC711D28642A27FEF80B096E59C826B22DBE2CA79D458009C059FC636A0F5EBD1A73E5F77AADD1F30B43433165334DBC72F922FCBF1FBEA487BD572E672A2EE6F80B43F7CCB4DD06BD2780369A3B39E238024C008EBB605201EA225303994C';
wwv_flow_imp.g_varchar2_table(51) := '012C5FB41836DB3EE271F2E675635756B67DD72D7947B0D79115A1512127B067118DC2FB5637E8B61869B29188CE48BB712B93CD4C004E7B83EEF92F5F8EE9F62FADAD850757AF865ADB4B35FAB14C180703B3A5AEFDF5DFF678A6F2836A044ED8BE4358';
wwv_flow_imp.g_varchar2_table(52) := '5B3147B7856C3264EB2480F6F098808188735B2600E7B0076A00FA95DF3665460DE523ABD782A22850555A063E5F91AE6138128193F7B27B1BA00BCEF2EAF8E0A03903E0C35B98AAB232DD16B2A96E41B5591B7DF3906C270CCC4C8E084780094038E4D1';
wwv_flow_imp.g_varchar2_table(53) := '0AE9CA4FA3FDB6C64F0D841A8AC7A3E8859003A076DE3C3D4EABBE9B37682375E8B57D5760D102EB5B066453EBFAF550C7242095FF98001C7207DD07D355D0A87EF1C26A68DDB01EA8A11879B4AD993B97367AE8CDF2BDBA2E9456937C43B18C43AFBDFB';
wwv_flow_imp.g_varchar2_table(54) := '3FB72A461ED946362E8A2701170D0CC60022418209C00127846EDC8CB9E75FB46021EC58B70E3C74C98FD3A7C6360ED077E952DCDE2C2567FF62585215D158C2119B8ED59553BF65403606D6AF839AF956EF80A60843B69E43529571A1AC20C004901518';
wwv_flow_imp.g_varchar2_table(55) := '931712C6E9BCF0A0F5945F3576F17760D7D8EB49EC0A7ABB6E51741CE0EEE8081C1F1A4CBEB2644B66A907D08F768D4E8CEBB596F8FDB0B03CF1C748BD1E0FB46DD80864BB5E1857F4E463E49E357D8859BC084020F15927A0623756411FFB08DDB0EEE3';
wwv_flow_imp.g_varchar2_table(56) := '2BCACA21B07113F8B041CC84C70ADB37FA769F3B3753D1F4F665A907B0F7FC79B3FEE58B1699F14411B279C7FA0D50515A66EE0E5EBF01849199C1919C23C004907388AD0A42B76EE923FF944323E43B376D02FF2C8D9FCAAEC0F101DA52D8FDCEDBA60C';
wwv_flow_imp.g_varchar2_table(57) := '4A672564A30780839A3F3A79DC546705DED698896922C53E1F041A1BC18BB3057A114D8550121F30D5CBE6E14A469599000479450B06C1DEC56D5CB912E624F9B6DF5ABC972E8DBE64F3D6F07D387CE77676B5CE420FE03F51A7A1E81F964AFDC540B72E';
wwv_flow_imp.g_varchar2_table(58) := 'C928391731D8B4628559943022ACCC0C8EE4140126809CC26B090F0F0E9989323CE9D7CDD245360B47232B6A6BA331803DE773701B604A4F2FB2C7766BB26AF1E29484ACC7F2441AFA41D893A071123DCEAB9C23C004907388272B888C8D4E4670DDB0A4';
wwv_flow_imp.g_varchar2_table(59) := '0EBC9ED4A05F5E6D3D44F3A39327613422CF8B42499757DE3E89964D2ECBAB2D5D2773665ED378407DDD12B3903A3A66C639925B04523B0B73AB4BC14AA76FE369B6B7FA2CAEAA4AD9561A51AFC25B013A9046DA5F94A817F0C2B9B3403A916E7371DA72';
wwv_flow_imp.g_varchar2_table(60) := '7E9935B04779C98425B66706549C4928B4AF092583811365980004A0AEDA1A3F55B70047FF699B6AD8B4749979C8378FF402CDBB9B190E45223870F7AFBD47CCDA9B972F37E3A944AA2A2A628A6BE393D38931999CC83A024C0059873481C048C4CC2CC6';
wwv_flow_imp.g_varchar2_table(61) := 'F9718F27BD61F765F3E6038D1F90B06BF706A1CBF6D41DE53911BAAE5C81EBD1F97B9AD25B3A6F415A6AD06C88D7980D4009DC034010042C4C000240B69FCC25D1D1FC74AA25E2D8B0CCBAC23ED7D79B8E98A9C7A4C747BA9CE77A2D1D362C5B06091E66';
wwv_flow_imp.g_varchar2_table(62) := 'D4CB25B32A2FB1BE270859FCE7633275BBB50C138008CFDBA6D98A326921A86B434D0DF88BFC180338893D80ACBCD1C7A69F2E38C9D5FE6B57E19DEB57F5D2A45343758D1E4F7755E49DFCE7231D2FC3ED0DE9918D20B30C260099BD9340371A315FB774';
wwv_flow_imp.g_varchar2_table(63) := 'A9B9E7D983AF03BD85D7CC1014A177133CFBFA6B666DEBF1EA4F3D1433832379810013405EB82956C9754B9698BD800B776EC3F30ECC087CF7DC19B83A34F9BF047AEE3FD5E71A622DE2945308300138857C06F5D280594B7DBD29E16F0E1D04911F10BD';
wwv_flow_imp.g_varchar2_table(64) := '1F0AC1DFBCF186597F4B7D0314D9BE6360EEE088F408300148EFA2C40AAEAEAE8639D1E9C47BE363F0E747ADC1B8C447642FF7CF7A0F5BF3FEE515D080BA644F7A614992DD1A2600D93D348D7E8AA2C007D7AC31F77E0F6704DEBA7DCB4CE72AF2E6AD9B';
wwv_flow_imp.g_varchar2_table(65) := 'F0E240BF29FE436BD79A718EE41F024C00F9E73353E3C595955067BBFA7EBEBB2BA7B702D4F5FF7CD75EB3FEA535B55013F7008FB99323798100138008376530CF3E9B7A2B6BADFFDDDFB8770FFEE8C85BB31D32757F92FA3DF3D67F82FD9B7F2B6CE433';
wwv_flow_imp.g_varchar2_table(66) := '5528E7E403024C0022BC94E63CFB6CAA5D1CBC0B874E58FFC1A7F23FC0EEF91BA9BE3C3409FD5EBD7E0D5E3E718CAA30C3A1932781743033381283403E249800F2C14B09741CB87C050EF4F7839AE089B9DFC16EFAF52C3E4B7F656C143EDFD939458B88';
wwv_flow_imp.g_varchar2_table(67) := '1AD175387EE5CA947D9C911F083001E4879F4C2DE9A19F83A74EC1D133A7CC3CC5E783E2A54B81B69439343A0ABF8A243061FB0F02E5A713C650C6AFECDD0DC313937FD1A53AEC7591CCDED3A7E0D0E9D340BA519A43FE20C004903FBE026AD05DC78FC1';
wwv_flow_imp.g_varchar2_table(68) := 'B9ABD61557F1FBA178D932F09496827FF162D39A77B1CBFEE49B07CD745A114D83275E3F00E7E9556651015407D5457552DDD16C387BE532906E41240C238FB7F223C00420C247490EB2CDA4CA703008AF1C390237EEDC318B79CACAF5C64F5765CAA486';
wwv_flow_imp.g_varchar2_table(69) := 'E95BB080A27AE87CFB6DF827DB8B3AF4CC44AB69F4FBEADB27E035BCB21B87F8162CD48986D254279100E940690AA4DBEEBE3E205D29EDE6902FB63301E481A76EDEBF0F2F1F3E0CC3782F6EA8EBC529C0E207EA40F1C4BAB00809C0DE28FFF6E06BF083';
wwv_flow_imp.g_varchar2_table(70) := '0BEF198725DC261A037CE1FC39F8FB43560F826416D9BEF44382A86ED28174A134857B23C3BAAEB7868729C941720462CF1EC99575A37AEFDDBE0D9D7DBD100C054DF38B162E04FF0CEF14F42F590C4AF41F8374D0EF75EE81CFEC7905FE1A6708FEF1E4';
wwv_flow_imp.g_varchar2_table(71) := '09A070FCFA75DAA587E3D7AEE97994FF570347E153BB5F81A7F775EAFB6845B24826C51305D2857432F691AE7B7B8F00E96EE4F1564E049800E4F48BAE55FFA54BF01ADEF3DB07D7E81EDC67FBAA8E5E306E4557666AB08AEDF9FCBE4B17E16BFFF1267C';
wwv_flow_imp.g_varchar2_table(72) := 'E5D0EB7AB07FC197E246FE73FFF163E8BF7CD19448328AEB964CE9699805A211D289748B26F50141D27D80BE026C64F2563A04980044B824511F7B867A55558357DF791BFACF9EB14A79BCFA48BF77CE1C48E6E7292E86E2E5CBC153529A4CF184653CC5';
wwv_flow_imp.g_varchar2_table(73) := '25BA0CFB605FC282D14CD28D660800758D66E16CC569A0590BB2C9C82BF46D3ED9C70420C25BD30CB225AA7A3C1C86CE630370C1D645577C4550B26C29D0205FA263A6CB53687A108FF32F59027485F6969783A7AC4C0FB4CF388EE2463E95A1B2744CF1';
wwv_flow_imp.g_varchar2_table(74) := 'F26540FB8C72C96C4947D255419D8DF2346BD1797C0026D036238FB77220C00420C20F49F600EE8F8FC32BBDBD7073D0FA76A0A25FC9B121E2745FBAAA7A2B2A80EED1FD757550FCC0037AF094979BE2286EE4FBB10C95A563CC022946A8C7508CC443BA';
wwv_flow_imp.g_varchar2_table(75) := '1B87DEBC7B57B78D67080C44E4D8320188F083327B2597B081BC8CD37C23F691FEF272BCF263E3B7DDCBCF2E29F5128A928482298A55B0F75142CF2794594443B318349B7179703045695C3C57083001E40AD924E48E6197F8D6C808BC7EEA5DD88F23F4';
wwv_flow_imp.g_varchar2_table(76) := 'A170C83CCA5755057EBC1A67F4964D539A431124167D9A70EE5C53019A21E8E93FAADB4CB68F872C9B0BE13D80A6A17912610210E128DB2DC0AD7B43F0AFAF1ED0C3F338CFBEFBF05B70FEEAE48B350D558AAAABA1A826B3176C1AB292D9E6BAE1F96B6B';
wwv_flow_imp.g_varchar2_table(77) := 'F55B10BB2E6433D9FEBD370EE958102677EE0FD98B705C00024C00024056BCC9C14CF7CC348AEE9B372FE75A298AA5134D1BE6BA421A5824DB687C2099BA44E8948C1E855EC63A0B0ADD5207EDA39171B04D8DC5AB42D36D74C52FA169BBD2F4A7EDE2E5';
wwv_flow_imp.g_varchar2_table(78) := 'CE94F65658F7E6990CF8CD5447FC3EC2A164C50AA01E0ED91CBFDF482B38E641B312469AB7B94380092077D89A926940ACB47E953EFA6E8CB6D3D5B064D52A285DB306E7DA9701DDF39B07088850032BA9AF8792868694A71733558F7A3834C548B61306';
wwv_flow_imp.g_varchar2_table(79) := '8485890BCE52905E440299D623FAF87CAC4F0801783D8AF56DAC7C44291B3AE38018353A33E0959E88211BA2D395418DCCE9AE3661403D031397B2B274CD29ACE33C1EEBD9EF1C5A268400224126801CFA90451720023E4F50C8455308018832A600CF03';
wwv_flow_imp.g_varchar2_table(80) := '36C9A50884839EC2210051C6B8F45C61B3254020DB2A14979686B32D33913C213D0051C6243290F318817C4420E41D2B9C1E402412997CA15C3E7A827566041C40C013F417CE2060B0A666D4010CB94A46206F1110D56684DC029CD8B891D86C226FBDC1';
wwv_flow_imp.g_varchar2_table(81) := '8A3302332090835D13D1369303D1B122851040B4CA6BD12D6F18014660660484B5158104A009336A666C792F23203B02CA79511A0A24008509409457B99E3C4740DCC552180128006FE7B957587D46600A02B9C8C0B652783D000DA00FF8C7083002B322';
wwv_flow_imp.g_varchar2_table(82) := '20B2AD08EB016810610298D5F55C80110010D9568411C0C08137DE45CB54763023C008CC808002A37A5B99A148367709230078EA291514B03E699B4D2B581623E0000239A952D306F4B69213E153858A2380C9BAF9366012075E33020911D04011DA4684';
wwv_flow_imp.g_varchar2_table(83) := '128002CAFE8456732623C008E808780A990034F0FC3B5AA961E085116004A622A07942911F4CCDCE5D8E2777A24C658902000005F049444154A74AEE0F042E2900FD53F7700E23905F08E4425B6A1BBDBB765DC985ECE9640A2580A812BBA35BDE30028C';
wwv_flow_imp.g_varchar2_table(84) := '402C02C2DB8670025040136E642CC69C6204E4444003ED45D19A092700EF9C7907D1C8F730F0C208300206020A5C980FBEB78CA4A8AD700238FCFEF78700B47F116520D7C308641B819CC8D3B4E7F6070242DE0368D75F380150E55ED5F31C6E350CBC30';
wwv_flow_imp.g_varchar2_table(85) := '028C0040381C86AF3901842304D0BB7327DD02EC75C260AE93119010811F9DE8E8B8E0845E8E100019EA01ED19DA726004DC8E00B685BF700A03C708A02FD0414F05EE71CA70AE97114807811C1CB327DA1672207A76918E1100A916D13C4FD0960323E0';
wwv_flow_imp.g_varchar2_table(86) := '5604348FF65B4EDAEE28011C6F6B3B8AC6BF84811746C08D08BC34D0DA31E0A4E18E1200191E01EF67713B8C811746C04D088CA8AAF29B4E1BEC38011C0F044E03284F02FF1801C911C8A67A0A289F3DB673E7996CCA4C4796E304404AAFBD79FBAF71FB';
wwv_flow_imp.g_varchar2_table(87) := '3A065E18011720A01D3C1AD8F9F732182A05017CF7677E2682B7029F4140F8560041E0A5A011C0AEBFE753B2582805011018FAAD80A67D9ADF1B48687028480434501545F9DF3274FD0D7CA5210052A8BFADE37945D13E4F710E8C804C0864451745F9CD';
wwv_flow_imp.g_varchar2_table(88) := 'A33B767E3F2BB2B224442A02209B8E063A9E51348DFE2B40490E8C40A120F097FD819D8E3DF1371D88D2110029EAAB9CF77F15804E8A736004F21D010DE0FBFD075EFF0D19ED909200E82FC3BEE1B1C740515E901134D6891148018197FCC3638F8B7CD5';
wwv_flow_imp.g_varchar2_table(89) := '770ABA81940440061CFEA99F1AED6F6DFB8402CA9728CD8111700A81B4EBD5E0CBFD3B767E8CCEE5B465E4F840690940B71B470471BEF449D0349A3689E879BC6204644740812076FB1FEF6F6BFF1CF662312AAFC21E7955B334EB6FEBF806689EED98F3';
wwv_flow_imp.g_varchar2_table(90) := '0E065E1801991118503575FB40A0FDDF6456D2D02D2F088094ED6F6BFBF13DF0B60068BF8FE910065E1801991008691A3C5D34A76ACBB1C02EE1EFF64B1788BC210032F07C2030DE1FE8784A89C0264CFF10032F8C404E1148423875F1BF1701EF8681B6';
wwv_flow_imp.g_varchar2_table(91) := 'F62FD0007612C7485324AF08C040ED687BFBBBFD81F6473C9AFA20F608E82DC3C62EDE3202C210C096BF5FF1685BF05CFC1FFA93ACC26ACE5E4579490086F97D6DBB0EF6073A8804B6E240E137317F02032F8C402E11985000FE8D2E3E789F1F38DADAD1';
wwv_flow_imp.g_varchar2_table(92) := '9BCBCA722D3BAF09C0000749E04D1C28FC6411781F0050E80D2B67807F8C40361150E02CDEE33F41E7D8D140FBE374F1C9A678A76415040118E01D0E046EF50776FE497FA0BD41D1B48F82025FC17D1731F0C208A48C001E701134E5EF540576F5EF68AF';
wwv_flow_imp.g_varchar2_table(93) := 'C77BFC67E91CC3FC82590A8A00EC5E39DAD6B1079DF62B4806CB229AA74503ED49248457B1CC08065E188144088CD039A228F0050FA89BE9DCE96FDBF9CBC776B417EC63E9054B0076EFD2BB0707021D5F42426845A7566811A8C71EC24F6B0A7C11CBD1';
wwv_flow_imp.g_varchar2_table(94) := '3B09FBD0F142BFCA8AF5F2E214020A90AFFBB0FA97E81CA073415595063A37E81C39BAA3FDE9BEC02EDA8F450A7B710501C4BB70A0BDFDECD1B68E170676B4FF1E3AFD310C9BD1F175B85546C782251EF0CE0B8377B1EA295A069EA2551E4FD11A6F0436';
wwv_flow_imp.g_varchar2_table(95) := 'AA11680655D9A2699EF773900F03F20DF9887C453E23DF910FC997E453F22DF938EAEBCD187F8CCE013A1764FA8F7EFCF99ACBB42B096026404F3FFCF0445F2030782210B876ACB5F5627F6BEBB9BED6D653BDEDED278EB5B7F7F7EFDC7964A0ADED3007';
wwv_flow_imp.g_varchar2_table(96) := 'F93020DF908FC857E433F21DF9907C493E25DFCEE47BFB3EB7C49900DCE269B6931148800013400250388B11700B024C006EF134DBC908244080092001289CE56E04DC643D13809BBCCDB6320271083001C401C24946C04D083001B8C9DB6C2B23108700';
wwv_flow_imp.g_varchar2_table(97) := '13401C209C7437026EB39E09C06D1E677B19011B024C00363038CA08B80D012600B7799CED65046C083001D8C0E0A8BB1170A3F54C006EF43ADBCC08441160028802C11B46C08D083001B8D1EB6C332310458009200A046FDC8D805BAD670270ABE7D96E';
wwv_flow_imp.g_varchar2_table(98) := '46001160024010786104DC8A0013805B3DCF7633028800130082C08BBB1170B3F54C006EF63EDBEE7A0498005C7F0A30006E468009C0CDDE67DB5D8F001380EB4F017703E076EBFF0B0000FFFF8E54976C00000006494441540300D71CECC4761F0A1300';
wwv_flow_imp.g_varchar2_table(99) := '00000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5531928791732238)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715062916Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062916Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000222494441547801EC95CB4B1B5114C6BF99928999D4C6CCA49294066BDAAD8516EABA10A4A5FF52FF8C96D24D4BA1745FBA6A8BD055C1F7C68526BA30BE50E323';
wwv_flow_imp.g_varchar2_table(2) := '0F3513CDCC78CE25238A48EE1D17824CC8771FE77E9CF971B867467FFE6FDCBF4DE9B8E55F04105520AAC08D2A60D4EB60DDA493430318CD268AC305140B4F116B3442338402F08E8F319ACDC1340C98B11846738FE0B55AA120D4017C1FF76A35EC34EA';
wwv_flow_imp.g_varchar2_table(3) := '98DF5817AAD25AA75818026500F7E8081FC7DEE0DBEBE2257D288EC1A5CAA8422803647CE08565C3715DBC9FF82FC4EB97144B7B9EEAF3A10C3062DBE221DB4E0BB9FE7EA16ADB81A66918210871A8302803644D53A41F4ADE472195C63352DE4C8AD860';
wwv_flow_imp.g_varchar2_table(4) := '222166954119C039ED9CE77FF7388FB7A420D0E9B8C1527A560270A9DF4B7BD5F3E4FB276DB0824079B70AF6047B99591A40F4BE9D8143973048BC7278880A89F73EB5678BCE5E9187BD1C93913440962ED913BA8076EA01FE6E6E5CC9CDB1413A1B26CF';
wwv_flow_imp.g_varchar2_table(5) := '4382B962B826200D90A2B71EE7181AB0F0697A06A7175AAE4D2DF9796E16F9B4C51658F13E31CB0CD2005A379BAE6B30927DF85A5AE846802F8B0B889B09F01907A9583C49499772754D9EE763B252C12AEDBF974BF8B5BC849FA41FCB65AC50D9A7562B';
wwv_flow_imp.g_varchar2_table(6) := '600F1D4BFFA501B60E6A182F2D628D2AA0C7E3F02C0BBF6B07F843F269CD3106630F7B6509A4011A191BCDF40034FAFA05C9757AF1B082BD46F7843DEC0D62BD6669805E89C29E47005105EE7E057A75C719000000FFFFD6B5C756000000064944415403';
wwv_flow_imp.g_varchar2_table(7) := '00C0AC0B5098D2A9530000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5531021153732192)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715062916Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062916Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD779425D97DDFF77BB17398CED33D3DDD93D3EE60117611885D2C409834C54308044531F91C9F638AB66581F2918E6589366DF90FFB48B6';
wwv_flow_imp.g_varchar2_table(2) := '19648AA228029418005360100289B0C062B1D8DDD9C5A6D9C96127C79EEEE99CBB5FD2BD6FA61B3D33AF6E55BF5855F7F3765EBF7A37FE7E9F5BFBEA5B3755F4F0F79ECFF18601E700E700E700E700E7805DE74054784100021080000420601901110480';
wwv_flow_imp.g_varchar2_table(3) := '754D8EC3108000042000010400E700042000010840C03A02DA617A003405DE10800004200001CB0820002C6B70DC850004200001DB09DCF31F01708F037F210001084000025611400058D5DC380B0108400002B61358F31F01B046824F08400002108080';
wwv_flow_imp.g_varchar2_table(4) := '45041000163536AE420002108080ED047EE83F02E0872C388200042000010858430001604D53E3280420000108D84E60A3FF08808D34388600042000010858420001604943E3260420000108D84EE041FF11000FF2E01B042000010840C00A0208002B9A';
wwv_flow_imp.g_varchar2_table(5) := '19272100010840C076020FFB8F00789808DF210001084000021610400058D0C8B8080108400002B61378D47F04C0A34C0881000420000108849E000220F44D8C831080000420603B8142FE23000A51210C0210800004201072020880903730EE41000210';
wwv_flow_imp.g_varchar2_table(6) := '8080ED040AFB8F0028CC855008400002108040A809200042DDBC38070108400002B61370F21F01E0448670084000021080408809200042DCB8B8060108400002B61370F61F01E0CC8618084000021080406809200042DBB438060108400002B61330F98F';
wwv_flow_imp.g_varchar2_table(7) := '0030D1210E021080000420105202088090362C6E410002108080ED04CCFE2300CC7C8885000420000108849200022094CD8A531080000420603B0137FF11006E8488870004200001088490000220848D8A4B1080000420603B0177FF1100EE8C48010108';
wwv_flow_imp.g_varchar2_table(8) := '40000210081D010440E89A14872000010840C076025EFC470078A1441A08400002108040C808200042D6A0B8030108400002B613F0E63F02C01B2752410002108000044245000110AAE6C4190840000210B09D8057FF11005E49910E0210800004201022';
wwv_flow_imp.g_varchar2_table(9) := '020880103526AE400002108080ED04BCFB8F00F0CE8A9410800004200081D010400084A629710402108000046C27B019FF11009BA1455A084000021080404808200042D290B8010108400002B613D89CFF0880CDF122350420000108402014041000A168';
wwv_flow_imp.g_varchar2_table(10) := '469C800004200001DB096CD67F04C06689911E02108000042010020208801034222E400002108080ED0436EF3F0260F3CCC801010840000210083C010440E09B10072000010840C07602C5F88F0028861A792000010840000201278000087803623E0420';
wwv_flow_imp.g_varchar2_table(11) := '000108D84EA038FF1100C571231704200001084020D0041000816E3E8C870004200001DB0914EB3F02A05872E4830004200001080498000220C08D87E91080000420603B81E2FD470014CF8E9C10800004200081C012400004B6E9301C02108000046C27';
wwv_flow_imp.g_varchar2_table(12) := '508AFF088052E89117021080000420105002088080361C66430002108080ED044AF31F01501A3F72430002108000040249000110C866C3680840000210B09D40A9FE23004A25487E084000021080400009200002D868980C0108400002B61328DD7F0440';
wwv_flow_imp.g_varchar2_table(13) := 'E90C29010210800004201038020880C0351906430002108080ED04CAE13F02A01C1429030210800004201030020880803518E6420002108080ED04CAE33F02A03C1C29050210800004201028020880403517C6420002108080ED04CAE53F02A05C242907';
wwv_flow_imp.g_varchar2_table(14) := '0210800004201020020880003516A6420002108080ED04CAE73F02A07C2C29090210800004201018020880C0341586420002108080ED04CAE93F02A09C34290B021080000420101002088080341466420002108080ED04CAEB3F02A0BC3C290D02108000';
wwv_flow_imp.g_varchar2_table(15) := '0420100802088040341346420002108080ED04CAED3F02A0DC44290F021080000420100002088000341226420002108080ED04CAEF3F02A0FC4C2911021080000420E07B020800DF371106420002108080ED042AE13F02A012542913021080000420E073';
wwv_flow_imp.g_varchar2_table(16) := '0208009F3710E6410002108080ED042AE33F02A0325C2915021080000420E06B0208005F370FC6410002108080ED042AE53F02A052642917021080000420E0630208001F370EA6410002108080ED042AE73F02A0726C2919021080000420E05B020800DF';
wwv_flow_imp.g_varchar2_table(17) := '360D86410002108080ED042AE93F02A09274291B021080000420E0530208009F360C66410002108080ED042AEB3F02A0B27C291D021080000420E04B0208005F360B46410002108080ED042AED3F02A0D284291F021080000420E0430208001F360A2641';
wwv_flow_imp.g_varchar2_table(18) := '0002108080ED042AEF3F02A0F28CA901021080000420E03B020800DF350906410002108080ED04AAE13F02A01A94A903021080000420E0330208009F3508E6400002108080ED04AAE33F02A03A9CA905021080000420E02B0208005F3507C64000021080';
wwv_flow_imp.g_varchar2_table(19) := '80ED04AAE53F02A05AA4A907021080000420E0230208001F3506A6400002108080ED04AAE73F02A07AACA909021080000420E01B020800DF340586400002108080ED04AAE93F02A09AB4A90B021080000420E0130208009F340466400002108080ED04AA';
wwv_flow_imp.g_varchar2_table(20) := 'EB3F02A0BABCA90D021080000420E00B0208005F340346400002108080ED04AAED3F02A0DAC4A90F021080000420E0030208001F340226400002108080ED04AAEF3F02A0FACCA91102108000042050730208809A370106400002108080ED046AE13F02A0';
wwv_flow_imp.g_varchar2_table(21) := '16D4A91302108000042050630208801A3700D5430002108080ED046AE33F02A036DCA91502108000042050530208809AE2A7720840000210B09D40ADFC4700D48A3CF5420002108000046A4800015043F8540D0108400002B613A89DFF0880DAB1A76608';
wwv_flow_imp.g_varchar2_table(22) := '400002108040CD0820006A869E8A2100010840C07602B5F41F01504BFAD40D010840000210A8110104408DC0532D0420000108D84EA0B6FE23006ACB9FDA2100010840000235218000A809762A85804F08E4723E31043320601F815A7B8C00A8750B503F';
wwv_flow_imp.g_varchar2_table(23) := '04AA4D405DF4531393B272F3A6ACDCB829E9A929C9A5D3D5B682FA2000811A134000D4B801A81E02D524905D5991E52B57253D312ED9C545C92E2F49EAEE5D59B97E43745C356DA12E08D84DA0F6DE23006ADF06580081AA10C8CCCDC9EAADDBEA6E3FF5';
wwv_flow_imp.g_varchar2_table(24) := '487DB9744A56558F804EF34824011080402809200042D9AC380581070964D4DDFEEAE858C18BFF5ACA5C2693EF0DC8CCCFAF05F10901085488801F8A4500F8A115B001021524909E99117DE72FD98C6B2D7A2EC0EAC8886466675DD39200021008360104';
wwv_flow_imp.g_varchar2_table(25) := '40B0DB0FEB216024909E9E5677F5E322B9AC31DD0391B99CE8DE82F4E4E403C17C810004CA45C01FE52000FCD10E580181F2125017713DBB3F3536265EEEFC1FA95C0986D4F8B8E8D5028FC411000108848200022014CD881310789040EAAEBA78DFBDFB';
wwv_flow_imp.g_varchar2_table(26) := '606011DFF46A81BC8828222F59200081C204FC128A00F04B4B600704CA4140DDF9EB657DE9E9A97294962F430F23AC8E8EE68FF903010884870002203C6D89271010DD6DAFBBFEBDA0684A2424A6DE5ED2666666440B0B2F69490301089808F8270E01E0';
wwv_flow_imp.g_varchar2_table(27) := '9FB6C01208144F40DDF9EBBB74AF17FFEE8E4EF9B1C34FC88F3EF1840C76777BAA57978D08F0848A44100804010440209A0923216020A02EFEA98909D177E98654EB51BDED5BE4E97DFBA4A9A9517A1A1AE5A99DBBA4B7B3733DDE74901701E3E3A624C4';
wwv_flow_imp.g_varchar2_table(28) := '41000206027E8A4200F8A935B005029B25A02EFEAB6363E275C95E7F67977CE2B1C7A47143D77F435D9D7CE2C041E9EFEAF254BBAE4B0B0E4F8949040108F8960002C0B74D8361107021A02FFEA3A39EEFFC075457FFC7D49D7F2CFAE8FFF6B168543EBC';
wwv_flow_imp.g_varchar2_table(29) := '67AF0CF7F6B9547A2F3AAD7A1C56EFDCB9F785BF1080804702FE4AF6E82F81BFECC31A0840A0100175F1D713FEBCEED8A72FFECFECDD27B178BC5069F9B006D52BF0819D3B65A0BB27FFDDED8FAE9B39016E948887807F092000FCDB365806014702FAE2';
wwv_flow_imp.g_varchar2_table(30) := 'AFC7E31D136C88D8DEDB2BF98B7F2CB621B4F061BD12011FDBB75FB67B1401DA06360B2ACC9250083C4CC06FDF11007E6B11EC81800B01BDB7BF5E9BEF922C1F3DD8D32B3FB27B8FC43C5CFCF319D49F6834221FDCBD5B76F56D55DFDCFFE939015EED71';
wwv_flow_imp.g_varchar2_table(31) := '2F8D14108040B5082000AA459A7A20500602FAA97EF99DF9D410805B7183EA2EFE193DE6BF898BFF5A99758984BC6FD72E19F43231506F1B7CF7AE641717D7B2F30901083C42C07F010800FFB5091641A02081CCC282A4F4C43B0F17FF1DFD03F2D1BD7B';
wwv_flow_imp.g_varchar2_table(32) := '251289142CCB4B609D120ECF1C38283BB6F6BB275736E9A7082202DC519102027E218000F04B4B6007040C0472ABAB921A1D13FDB85E43B27CD4B69E1EF9D08E1D9BEAF6CF672CF0271289C893AAAC9D1E44402E9311FD0C026D6B81A2088280D504FCE8';
wwv_flow_imp.g_varchar2_table(33) := '3C02C08FAD824D10D840405FF4576EDE5217FFD486D0C2877D9D9DF2CCDEFD65B9F8AFD5908CC7E57D3B7749DF968EB520C7CFECCAB2AC8C8C482E9B754C43040420E00F0208007FB4035640A020017D21D5EBED7369F78B7F5B4B8B3CBD67AFE8497C05';
wwv_flow_imp.g_varchar2_table(34) := '0B2B21B03E16958FEEDB2F4D4DCDAEA5E45656546FC5A8881A16704D4C02085841C09F4E2200FCD92E5805813C01DDEDEF655CBD41DDA5EBE57B75C9643E5F25FED42713F2237BF74A637DBD6BF199B939D14B045D1392000210A819010440CDD0533104';
wwv_flow_imp.g_varchar2_table(35) := 'CC04D2D3D392999B352752B175EAE2FFE18387A4B5B1517DABECBF1ED5CBF07EBDA150D47D4F81FC5E053333953588D2211000027E351101E0D796C12EAB0964E6E725353EE1CA201A89C807D405B9BFBDDD356DB9120CB5B7CB937BF78A44DC7F3EF492';
wwv_flow_imp.g_varchar2_table(36) := 'C5AC1A12105E108080EF08B8FF1FEC3B93310802E126A027FDE9D9F492CDB83AFAA41AF3DFE165ADBE6B499B4BB0BBA7471EDBB1435C5FB99CA4EE8C8AF6C9352D0920104A02FE750A01E0DFB6C1320B09E427FDDD1E915C6AD5D5FBBD83DB65B7C787F7';
wwv_flow_imp.g_varchar2_table(37) := 'B81656448227060664F7B66DAE39B32BCB921A6552A02B281240A0CA04100055064E75107024A0EE96F553F6B2CB4B8E49D622F45AFF0F0C0D49A4F87D7ED68A2AFE5355FED4F04E19ECEE762D23BF89D1E4946B3A1240206C04FCEC0F02C0CFAD836D56';
wwv_flow_imp.g_varchar2_table(38) := '11C8EFF13FE57E91EC696D93A776EF9168B4F6FFFB46A311F9E8DE7DD2DDD6EEDA56E98971D142C0352109200081AA10A8FD2F4855DCA41208F89B407665C5D3A4BFC6C646F9F08103D218777EAC6FB53D8DC562F223CAA6F6A626D7AA53637745FBEA9A';
wwv_flow_imp.g_varchar2_table(39) := '9004100805017F3B8100F077FB609D0504F404393D51CE6DD25F5C5DF49FDD7F405AEAEA7C47A5399994A7544F405DC2BC0F819EDB90BA7BD777F66310046C248000B0B1D5F1D95704F4E374B32BCB469BF450FF87F6EF978EE66663BA5A46EA3D023EA4';
wwv_flow_imp.g_varchar2_table(40) := '9707BA18A137364A4D4CBAA4221A02C127E0770F10007E6F21EC0B3581FCB8FF8CFB663F87068764C8C35EFCB586B5ADA34376F50FB89A919E9C90CCDC9C6B3A1240000295238000A81C5B4A868091402E9592F4F8B848CEFCE09CB6965639B47D502211';
wwv_flow_imp.g_varchar2_table(41) := 'DD0F602CB2E6919148443E30BC435ADD9E1990CBE5E73CE8E18F9A1B8D0110A80801FF178A00F07F1B61610809E4D7FB8F8E4A2E63DEEC27118BCBD3FBF64922160B0C85443C261F5636C7E309A3CDB9D4AAA4C6C68C69888400042A4700015039B6940C';
wwv_flow_imp.g_varchar2_table(42) := '014702F971FFC545C7781DA1EFF70FEFDE2DED8D8DFA6BA0DEDDCDCDF2D4EE5DAE36EB2D8FF2EEC3E30000100049444154190A70C5448200120882C9088020B41236868A40465DF8BD3C296F577FBF1CE8ED0DACEF3BBA7B64B0A7C7D57EDD0B905D5971';
wwv_flow_imp.g_varchar2_table(43) := '4D47020840A0BC041000E5E54969103012D063DEA93B77D4B87FCE98AEA5B945DEAFC6D28D897C1E198944E443BBF74A9BEA0D3099AA87415277464D49888340C00804C35C044030DA092B4342203D39255A0498DC4944A3F211D57D9E88FB67B31F93BD';
wwv_flow_imp.g_varchar2_table(44) := 'A6B8BA784CDEB77397245DE603645796253D3D6D2A8A380840A0CC04100065064A71107022A0C7BBD333EE17B9FDC33BA5BBB5CDA998C0850FB4B7CBE34343AE76EB0D82B20C05B8722281FF0904C5420440505A0A3B834D402F7BBBAB97FC99BBFE07D4';
wwv_flow_imp.g_varchar2_table(45) := 'B8F9A181FE60FB5AC0FAFD5BB7CA40476781980D418A915E16A957486C08E5100210A81001044085C0522C04D609A80B9BBEBBD5CBDED6C30A1CD4D7D5CB7B878725AEC6CE0B44073A28A286353EB877AFB4353418FDD00F0BF23241D258089110A82981';
wwv_flow_imp.g_varchar2_table(46) := 'E0548E00084E5B61694009E4BBFEA7A78DD6EB257F7A1BDD76970BA4B1109F47362693F2F8AE5D128B9A7F76D29393925B5DF5B937980781E01330FF9F187CFFF000023525A027FCA527DD1FF1BBAB7F40B6B5B7D7D4D66A54BEBDBD4386D47080B12ED5';
wwv_flow_imp.g_varchar2_table(47) := '63B23A76D775A584B10C222150230241AA160110A4D6C2D6C011D017FFEC8AF9413FADEAAEFF909E2417C2AEFF871B2C1A8DC8E3DBB64B2C665EE1905D5C90CCD2D2C3D9F90E010894910002A08C30290A021B09645756C4DBACFF6169492436660DF571';
wwv_flow_imp.g_varchar2_table(48) := '4B5D529ED8B5D3D5C7FCBC0997AD925D0B210104AA4A205895210082D55E581B1402AA1B3B3D31E1DA8DDDD3DD2DBB3ABB82E255D9ECDCDFBB55BA3B3A8CE5E59480D222C09888480840A068020880A2D1911102CE04F4C43FFD764E21128B46F34FCE8B';
wwv_flow_imp.g_varchar2_table(49) := '45EDFBDF508F763C3E342CFA6147264699D959D13D29A634C441C02F048266877DBF3C416B21EC0D1E017DF7EF61E2DFD0D601E968302F8B0B9EF3DE2DEE6F69913DDBB7BB66D0F3284431754D4802084060530410009BC2456208B81348A9AEFFACCBC4';
wwv_flow_imp.g_varchar2_table(50) := 'BFE6A616797CFBA07B61214F71A8BF5FEAEAEA8C5E66E666C5AD37C558009110A80A81E0558200085E9B61B18F09E45229494F99D7FC6BF3DFBB6BA75513FFB4CF85DE75B198BC77E7AE42510F84A53CECA2F84006BE400002AE041000AE884800018F04';
wwv_flow_imp.g_varchar2_table(51) := '543775FEE29FCB1A33F475F7C8B6D656631A9B2277767649A76262F239974E49CAC3B08AA90CE220504902412C1B0110C456C3665F12C82E2D497A66C66C5B2422EFDBB9333F01D09CD09ED868543151C3216E1302D39393AEAB2AECA186A710289D0002';
wwv_flow_imp.g_varchar2_table(52) := 'A074869400813C8154FE0265BEFBDF33B85D3A5CC6BCF38559F6A7B7B149F60D0F9BBD563D2B79C6E654C442A00604825925022098ED86D53E23A0EFFEF5DB64567B738B1CEAED3525B13A6E7767A734D7D51B1964540F4B7665C59886480840C01B0104';
wwv_flow_imp.g_varchar2_table(53) := '80374EA48280918097496A03EDEDD2184F482E93E1FD30836C561A627119EEEA928881B47EB6426666D690822808549F40506B440004B5E5B0DB3704327373925D76DFB7FEF4CD1BF2A5D77F205F397A54BEAADEFA93F7D13C8FAFBCFD96FCB96273EAD6';
wwv_flow_imp.g_varchar2_table(54) := '4DC9B9B46C7A7656B410704946340420E0420001E0028868081809E899FFAA5BDA98664364269B9185A54599576FFDC97B31CF63617959349B0DA89C0F1543BDD7029B03392322A69A04825B170220B86D87E53E2090BFFB5F72BFFBF781A9A13221BF45';
wwv_flow_imp.g_varchar2_table(55) := 'F0EA6AA87CC21908549B0002A0DAC4A92F5404F2B3D2552F40A89C0A82338A797A7A3A08966263C80904D93D0440905B0FDB6B4A406F4F9BE32EB4666D90999B97ECE262CDEAA76208049D000220E82D88FD352190CB6625CDCE743561BF5E6936E3BEF1';
wwv_flow_imp.g_varchar2_table(56) := 'D27A620E20500902C12E130110ECF6C3FA1A11C8CEABBB4F0F33FF6B649E35D566E6175811604D6BE368B9092000CA4D94F2C24F408F3F7B78E04F7343A36C6DDFC2BB48067DEDEDD2DAE0F2B8E49CEA89615F80F0FF3FE7530F836E160220E82D88FD55';
wwv_flow_imp.g_varchar2_table(57) := '2790595A92ACCBD8FF670E3F212FFDC22FC9377EE6EFF02E92C1377FE6EFCA777EFE17E533871E13D34BEF0EA89FC2684A431C0420F0280104C0A34C0881809140666A4A44DD793A256A4926E52776ED924844EF69C75BA4580622C9684CFEEEC143D264';
wwv_flow_imp.g_varchar2_table(58) := 'D822583F29303D3B27BC20505D02C1AF0D0110FC36C4832A12D0B3FE330B0BC61AF7F70FC861D57D6D4C44A46702C34DCDF2E4E076637ADD0B206A68C69888480840E0010208800770F005026602E959F33EF4C9584C3EBDFF40FECED55C12B15E09D429';
wwv_flow_imp.g_varchar2_table(59) := 'A69FDAB7D7983CDF0BC05C00232322CB4B200CA52100C2D08AF8501502FA2974F93B4D436DFDADADF25457B7210551C510786F6797ECEEEE31664D4FEBA119B72709188B2012025611400058D5DC385B0A01BDE98C7E929F53197AA4FB270E1C94AEBA3A';
wwv_flow_imp.g_varchar2_table(60) := 'A724841749A0359E901FDFB7CF985B0FCF6891664C442404CA42201C852000C2D18E7851050299F979632D3DAD6DF2ECB641631A228B23108D44E453433B644B6393B100B73632662612029611400058D6E0B85B1C017D67995D5E31667E726848F6B6B4';
wwv_flow_imp.g_varchar2_table(61) := '1AD310593C818E64523EB66B97B1003D41932581464444968140588A400084A525F1A3A204F20F9E312CFD8B47A3F2E33B7656D406DB0BD78C7F7ACF5E2386FC30C0124F673442221202F7092000EE83E003024E0472E9B4E807CF38C5EBF0035BFBE570';
wwv_flow_imp.g_varchar2_table(62) := 'FB167DC8BB820476AB1E96C7070DC32CB99C6A2BF604A8601350B484070102203C6D8927152290D57794D98CB1F4BF7DE0A0B42612C63444964EA03116935F70DB19707189E703948E9A122C208000B0A09171B134026E13CB863BBBE4833DE6256AA559';
wwv_flow_imp.g_varchar2_table(63) := '40EE750291887CB8BB573A4C9301D5504D668E5E8075661C949540980A430084A935F1A5EC04F4DDBF7E9B0AFEC4AEDDB2ADA1D19484B8321268533D2D9F72E905D01B36E5B2D932D64A5110081F010440F8DA148FCA4820E3D29DDCD5D42C1F378D4997';
wwv_flow_imp.g_varchar2_table(64) := 'D1168ABA47201289C86776EF96841202F7421EFD9B5B591156033CCA85905209842B3F02205CED89376526907559FBFFD4D0B03CC6E4BF3253772F6E40F5B8FCC8F00E63C2CCBCF9990DC6CC4442C0020208000B1A19178B23A067FF6757CD6BFF3FB67D';
wwv_flow_imp.g_varchar2_table(65) := '7B7185D73857269793E54C4656B319C9AAE31A9BB3E9EAF5C6409F765912985D5C108601368D960C0602618B420084AD45F1A76C04F4A63262B8380EB7B7CBFE2DFE5FFA37AEBAC35F9B1897DF3C7D4AFEE19197E4EF7FEFBBF22BDFFE96FCB7DFFCBAFC';
wwv_flow_imp.g_varchar2_table(66) := 'F2D7BFAE8E9F937FF0E20BF28F5E7D457EFFFC397955A5BDABF2940D64850A3ADCD1290D89A463E9B9D555C92E2F3BC6130101DB0920006C3F03F0BF300175E1779B497EA0A74FB69B66A3172EB92AA13965FF958579F9BDD327E51FBDF0BCFC93AFFFB5';
wwv_flow_imp.g_varchar2_table(67) := '7CE107AFCACBE7CEC90F2E5F92776EDE9093A377E4D4D81D397AF3BABC7AE9A2BC78F68CFCBB575E925FFDEA97E51FAB3C9F3B7B5A2ECDFB77367D4B22211F1E761E06D0CF6DC8320C5095F3CD8E4AC2E72502207C6D8A47652090EFFE5F32DF3D3E31D0';
wwv_flow_imp.g_varchar2_table(68) := '5F869ACA5FC48DC545F97D75B7FFF7BEFA15F9DC0F5E9353B76FC9422AE5B9223D24A0F3FCDEAB47E41F7EE3EBF2B933A76544EF85E0B984EA248C47A3F21197099819350C501D6BA80502C1238000085E9B617115086416164572CECBC862F1843CD6D9';
wwv_flow_imp.g_varchar2_table(69) := '55054BBC57A12FDC47EE8CA88BF65FCB1FBCFE9A4C2E291FBC672F98F2F6DCACFCDE6B47E47FF8C6DFC8D76F5C2B98A696814FF5F68A7E0AA3930D7A25807E3BC5130E01AF04C2980E0110C656C5A79209645D2E9E4F0E0C487FA37FD6FE2F65D2F227E7';
wwv_flow_imp.g_varchar2_table(70) := 'CECAFFA82ED45767664AF6FFE102AE4E4FC9FFF5C277E58FD43041CA47EBEBB7D637C8B6F6F687CDFDE17735149217733F0CE1080210B84F0001701F041F10582390EFFE7779F2DF07940068374C405B2BAB1A9FB3AA7BFF77DE7E5BFEBF575F113DBBBF';
wwv_flow_imp.g_varchar2_table(71) := '52752EA5D3F93A7EF3AD376551098E4AD5B39972E391887C72F71E6396BC985342C09888480818098433120110CE76C5AB120864D518BA1601A622DED7D36B8AAE5ADC522623BF7FEC1DF98F278F57ADCE2FA9BA7EF79DA355ABCF58911200CF6C1B9448';
wwv_flow_imp.g_varchar2_table(72) := 'C4792040F700300C60A448A4A504100096363C6E3B13B8B7FC2FEB98605F77AFF4FAA0FB5FCFF4FFEAA58BF267278E39DA5AA9882F9D382E7FA4861C2A55FE66CADDDBD62ECDA6F6D07B1DACAE6EA648D242E0010261FD8200086BCBE257D104B22EB3FF';
wwv_flow_imp.g_varchar2_table(73) := '0F6DDD2AFD6AECB9E80ACA94F1EDF171F9CD232F7B2EADAFB9553E79E0A0FCCA473F2ABFF6C9FF42FECFBFF593F9B73ED6619FDC7F40FA9A5AC4CB4B4F38D4130D8F8CDEF192BCA2691A62317952F502982AC92E2E99A28983809504100056363B4E3B11';
wwv_flow_imp.g_varchar2_table(74) := 'D05DFF3997F1EDF72901A0FA9C9D8AA84AF8D8F2B2FC86BAF8A73D4CC8EB6B6D955F7AEA29F9EC334FCBB33B76C8506B9B34257FB8818E3ED661CFEEDC299FFDD833F24B4F3E29BD2DADE2F6D273027EE7D557653EED7D89A15B99C5C4472211F9F8F661';
wwv_flow_imp.g_varchar2_table(75) := '63D6ECCAB2319E48083813086F0C0220BC6D8B674510C8EF1C679830D6DDD424077DB0FBDF0B37AECBBB13E3AE1E3E35BC433EFBD1A7E54057B76BDAB50407BA7BE4579FFEA83C35B4632DC8F1F3DDC971F9F2A54B8EF1D58A78AAA75B6251E79F333D07';
wwv_flow_imp.g_varchar2_table(76) := '40EF0C582D7BA807024120E0FC7F4C10ACC7460894994076D1BC76FE406F9FE8A56765AE7653C5DD5E5A942F1D7F47722EB99E555DFA9F3A78D025955374443E75E8A0E8329C52AC85FFE9D1B7E46E8DEFB0BBEBEA659741E4E43219C9F87033A335867C';
wwv_flow_imp.g_varchar2_table(77) := 'FA9740982D430084B975F16D5304F45DA2DB45E2BDFDFD52AFC69C3755709913BF72FB96B8ADF57F6AE72EF9A4EAD22FB56A5D862ECB54CE5D259ABE72B9B6BD009148449E31F9AB7A75DCC49DC947E220104602088030B62A3E1545209B4A496ED5309E';
wwv_flow_imp.g_varchar2_table(78) := '1D8DC947B6D676FBDF1965E373172E1AFDEBDBD22E9FDABFDF98663391BAACDEB6366396E72F9A6D32662E53E4C7B60D1A8701F2933B951028537514630581703B89000877FBE2DD2608E4F45231C3F6BF0755F77F7BB26E1325963FE9B58579B9AEC6DD';
wwv_flow_imp.g_varchar2_table(79) := '4D25FFE8BEF25DFCD7EAD12B04D68E0B7DDE9C9A942BF3F385A2AA1676B0B54D5A0DAB33726925F0D45040D50CA22208F89C0002C0E70D8479D52390170086EA0EF5F4887E029D2149C5A34E8D8FCBB8612C7B6B6BAB1CE8E82CBB1D073A3B65AB6165C0';
wwv_flow_imp.g_varchar2_table(80) := '8ABAB0BE3272ABECF56EA640FD63B6B7ABCB9845AFF230262012021B0884FD50FF3F13761FF10F029E0864750F8021E5367571D56BCE0D492A1E756EFCAEB18E430383C6F852220F6DDBE6983D93CDCA59254E1C135423221211BD822162A82BBBB26288';
wwv_flow_imp.g_varchar2_table(81) := '250A0276114000D8D5DE78EB44408D0DE75269A7D87CF8901200F9831AFE5936CD515076EDE8EA507F2BF36F87EA0530957C7B76D6145D95B8DD5BB6887E4CB053656EBD3C4EF908B79140F87D460084BF8DF1D00381FC9D6136634CB9B5B1C9185F8DC8';
wwv_flow_imp.g_varchar2_table(82) := '45973BD86ED396B8251AD8E552F6B46168A2C4AA3D673FD4D121D158DC317D766555180670C4438465041000963538EE1626A03700CAA96EECC2B1220D89843425E252CB97DEF56F71D5BCA35DA3E1E257AAED4D71B3FF4B4A9C681B4BADA794FCBD0D8D';
wwv_flow_imp.g_varchar2_table(83) := '4A00C41C8BD03D000800473C446C2060C32102C08656C64757026E4BC40EF5F549252FAEAE06AA045135C61D9103CD34090000100049444154883AF2E73F3D0F20AE6CACA5757A8F86DE36E76D8CF32B015CE67AD4D27EEA864035092000AA499BBAFC49';
wwv_flow_imp.g_varchar2_table(84) := '209793ECAA7972D8FEEE1E69A8F106405A0034D49997212EA40CFB189448DFADECE68606911A0B80482422DBDBB788E9A5F77B30C5130701113B182000EC6867BC3410C82901E0360170B0ADADE63B006A171A5D04C0F8A2792B635D46B1EFBB0B0BC6AC';
wwv_flow_imp.g_varchar2_table(85) := 'ED2E73048C99CB18B9AFA3C3585A8E1E00231F22ED218000B0A7ADF1D489801EFB374D008C446547AB79273CA7A2CB1D5EBFE1297E85CABE32395528B82C6157A7268DE574F84400EC563D007586DE1A37B1677492482B08D8E22402C09696C64F4702FA';
wwv_flow_imp.g_varchar2_table(86) := '19008E913A42752B773734EAA39ABF87DADB8D369CAEE0663CA76FDF36D6BDAFD3BC098F317319230FB4B74B548936A722F5838144F5FA38C5130E015B0820006C6969FC7424E0362BBCAFB9451AE3CE33CB1D0BAE40C4A1AE6E892941E254F4C8F4B49C';
wwv_flow_imp.g_varchar2_table(87) := '73B95377CA6B0A3F3B39212333338E49F41DF787FBFB1DE3AB19D1575F2F75A6151BB9AC98567C54D356EAF223017B6C4200D8D3D678EA40C04D00ECE9EC90FAA83F04C06E25460EF66D75F0E45EF0F367CEDC3B28E35FB732FBB774C8619F0C9324A251';
wwv_flow_imp.g_varchar2_table(88) := 'E9569C9CDCCF6573EC05E0048770AB082000AC6A6E9C2D44C06D4C78674787B4261285B2563DACABAE4E3EBE73A7B1DE3BEA4EFD6BE7CE19D36C26F2AB67CFCAA861973FBD30F14777ED925AAF0090F5574486B66C59FFF6C881EAFE6722E0235408B84F';
wwv_flow_imp.g_varchar2_table(89) := 'C0A60F04804DAD8DAF0509E8B5E10523EE070EB71B2E26F7D354F3E3E38343D2DFDC6CACF28DCB97E4F9CB978D69BC447EE7D26579F38AB99C8E8606F9F93DFBBC1457B534BBD55089B320513D00155C2E593527A9080225124000940890ECC126A0B700';
wwv_flow_imp.g_varchar2_table(90) := '76ED01F0C1330036521E6E6A92CF1C7E626350C1E317CF9D95AF153D1C9093AF9E3E2DDF3F7FB660D96B81FAEEFF5387DF239DAA67622DCC0F9FFB3AB64843DCA1D746F500E41FFCA43EFD602B36F889805DB62000EC6A6FBC7D88809E11AEDF0F05AF7F';
wwv_flow_imp.g_varchar2_table(91) := '8DA8B1FF6E7587BB1EE093839FDCB15386D5B8BB9B396F5CBD22BFFBCA2B7276131303F584BF7FADF2BC79EDAA5BF132A87A47FEDE8183AEE9AA9D606F6B9B240C1301F5CA0FBDFF43B5EDA23E08F8890002C04FAD812DD52790C9482EE3FC14C056D5D5';
wwv_flow_imp.g_varchar2_table(92) := 'AE279555DF30738D7AA6FB2FBEEFFDE644F763EFCCCEC8175F7B4D7EEFF5D7E5C56BD7E49A1ACF5F58DF0C2727FAF8EACCAC8ABBAAD2FC40BEF8831F18C7FCEF172BF5F1B8FCF2534FD57C8BE4357B367EF6D4D54B42D9B7316CE3712E9D11D1FB3F6C0C';
wwv_flow_imp.g_varchar2_table(93) := 'E4D87A02B6014000D8D6E2F8FB00819C120062E80A6E6B6C9488FAEF814C3EF9F2E9ED43F25F7DE049CFD6DC9E1897E74F9F92CFBDF2B2FC8BE7BF23BFFE8DAFABF737F2C79F3FF2B28A3B2DB727263C95A7B725FECC13EF954F6DDBEE297DB513C5A351';
wwv_flow_imp.g_varchar2_table(94) := 'A98B271DABCDB7BB632C1110B0830002C08E76C64B07026E1782A6645222918843EEDA06EB9E89CF3E76587EF6F1C35537E4995DBBE51F1F7E42141CF1EB2B99302CDDCC65E901F06BC3D5CC2EFB2A4600D8D7E678BC9180EE01D8F8FDA1E38EFA0689FA';
wwv_flow_imp.g_varchar2_table(95) := 'F3FA9FB7546FC0F33FA95E809FDC7F20FFBDD27FA24A0CFDC88E9DF22F3FFA8C7143A24ADBE1A5FC26430F80EEF5610E80178AA40933010440985B17DF5C09E45CC681FB9B1A252A3E5600CAC3643426FFDB873E22FFCD934F492C1A552195F9D79848E4';
wwv_flow_imp.g_varchar2_table(96) := 'EBF89D8FFFA868E151995ACA576A93611260BE16C3D04F3E9E3F5611B0D1D9CAFD5AD848139F8347C0450024E309698AC7C5EF2F7D41FE55D525FFBF7FE293D2D9D8585673B5FC196869957FF6EC27E41F3CFE1ED1BD0065ADA0428535B92C4D74137F15';
wwv_flow_imp.g_varchar2_table(97) := '328B6221E01B020800DF340586D48280DB1C809664C2F75DDD1BB97D6A68583EFFA94FCBDF79CF1352AFEED837C61573DC565F2F3FFBDEF7C99F7CFAA7E5A7B60F155344CDF2E8F91BC6CA5D867F8C79890C19013BDD4100D8D9EE787D9F80DB5D607322';
wwv_flow_imp.g_varchar2_table(98) := '793F65703E869B9AE57FFDC053F2C73FFD33F2692504B6A8EFBAFB3E1675FFDF3D168D4A83EAF118DCB2457E465DF8FFED4FFD6DF9B5F77D403A9275C10170DF52DD2B72FFB0E0472E932D184E20046C21E0FE8B600B09FCB493403667F4BBB90C77D1C6';
wwv_flow_imp.g_varchar2_table(99) := '0A2A18B95775DBFF7325045EF8B95F907FA77A05FEBB0F7E583EBE6B8FBC7FDBA0ECEFE991ADCDCD32D4DA26077B7AE5C9C1EDF289DD7BE5EF7FE823F2A79FF959F99A7AFFBABAF01F50F11534B1A24537BB89966CA6A2F553787008D86A2902C0D696C7';
wwv_flow_imp.g_varchar2_table(100) := 'EF7B04F400F7BDA3827F9B022C00D61D8A44E4B1F62DF22B070FC96F3DFB71F9FC8FFF84FCD94F7D5ABEF173BF285FF9D99F932FAABBFC3FF8B1FF527EF363CFCA2F1F3828BB5A5AD6B306F9A0550DDF98EC671580890E71361088DAE0243E42A0580249';
wwv_flow_imp.g_varchar2_table(101) := 'D5255E6C5EF2D59680166F2DC9A4B3112E13409D3312132E02F67A8300B0B7EDF1DCC332307D1101543009B42492E6150B1EDA3F989E633504BC11400078E344AAB012304F0108C412C0B0364DA97E6D6F6E9648C4798C87218052098723BFCD5E20006C';
wwv_flow_imp.g_varchar2_table(102) := '6E7D7C7725D0108BBBA621813F09D44563E27CF95736BB4C005529F807815013400084BA7971AE1402FAE25117E37F915218D6326F5322EE3204C032C05AB68F3FEAB6DB0A7EDDEC6E7FBC3710884422EA0E32624841949F09E8DE1BE3AE85CC01F073F3';
wwv_flow_imp.g_varchar2_table(103) := '615B15082000AA00992A8249201E8B494EFD174CEBB15AF7DE24541B3A91E0FAEF44C69E70DB3D4500D87E06E0BF23013D498C8B84231EDF47786A3B4F897CEF2A0642A028020880A2B0912934040C3DFC996C56D42840685CB5CD91E56C4652AA0D8D7E';
wwv_flow_imp.g_varchar2_table(104) := 'D3C0463CE18EC43B0400E780BD045C7EFCB3DC1D06FADC584CA72563D8EFDFA5F903ED3BC643C00B010480174AA4B196C0324F8C0B6CDBAFA8B6CB99E670A00002DBB6E5309C324410009C05761370B908E8BB48BB0105D7FBBBCBCBA6CBBF30BE23BC2C';
wwv_flow_imp.g_varchar2_table(105) := '278000B0FC04C07D338105D58D6C4E41AC5F098C6B01601AC671117F7EF50BBBCA41803234010480A6C0DB5A021189187D470018F1F83A72219592999515671B1100CE6C88B1820002C08A66C64947022E17017D1171CC4B84AF09CCADAE1AED8B44CCE2';
wwv_flow_imp.g_varchar2_table(106) := 'CF9899C84013C0F87B041000F738F0D7560251F34560892180C09E197329B30008AC63180E8132114000940924C504934024E2220032E9603A86D5B2EC26DE0CBB04822FCC04F06D8D0002608D049F761288C68C7ECFAFA68CF144FA97C062CADC769128';
wwv_flow_imp.g_varchar2_table(107) := '3F7FFE6D3D2CAB0601FE0FA80665EAF02D8188CBD3FEE65DC6917DEB1886896BDB2100AC3C4B70FA870410003F64C1918D046271A3D77A1C79C6E54ED25800913523B0B06A5801A0AC8A3004A028F0CF660208009B5B1FDF2512370F018C2D2E88713739';
wwv_flow_imp.g_varchar2_table(108) := '18FA96C0AC4BEF0D02C0B74D5741C3287A230104C0461A1C5B47C06D1CF8EAD4B498F692B10E58501C568D36B76CEE0110860082D29AD859210208800A81A5D8601070BB0B9C5A5A747FA25C305CB5CACAD9745A164D43009188442211AB98E0AC080C1E';
wwv_flow_imp.g_varchar2_table(109) := '248000789007DF6C23A0C78123CEFF1BA45653C25E00C13B296E2BE196C9649C0DD76D4E0F80331F62AC20E0FCCB6785FB38693B81ECC282482EEB8821975A951B0BF38EF144F893C085D959E3A380259B91CCDC9C3F8DC7AA0A11A0D8870920001E26C2';
wwv_flow_imp.g_varchar2_table(110) := '776B08649797253D3DE3EAEF2D04802B23BF25B8323B234B2EAB37D253D392595CF49BE9D80381AA114000540D3515F98980FEE15FB971537269F36631DAE691F90559327527EB44BC7D45E0DA8C1276869E1D6DAC6EFBD5DB23924504681CA17FE3E0A3';
wwv_flow_imp.g_varchar2_table(111) := '0410008F322124E40432F3F392BA336AECFADF88E0EAF494AC669D870936A6E5D81F04EE6801E0C5143514B03A3222193D14E4253D69201022020880103526AEB813D0DDFEA9D1514F77FE6BA59D1C1B4300ACC108C0673697939B33D39E2DCDA9DE1D7D';
wwv_flow_imp.g_varchar2_table(112) := '4ED013E0195900136272210208804254080B25017D97B77AEB96E81FFCCD3838BBB22C2997EEE4CD9447DACA12984EAD4A3AB5B98738E5D26959B9759B3901956D1A4AF719010480CF1A04732A4340DFDDA546C7367DF1D7D664F4C52113BE21809CBA53';
wwv_flow_imp.g_varchar2_table(113) := 'D677CBDAC730BDC75756543B6F4E00E4FD57224F0F0D69A198FFCE9FD010C091C204100085B9101A2202BADB5F8FF3EA495FC5B895CBE6E46A885602BC3939219F3DF2B2FCF87FFA4BF95B7FF517F2D9575E92E3D353C5A0F1659E73B33352ACB0D1E748';
wwv_flow_imp.g_varchar2_table(114) := 'EACE1DC92E2DF9D2378C824039092000CA4993B27C4740DFCDE999DE9BEDF67FC01175A73CB6148EE5626F4C8CCB7FFFB5AFC8917367E5AEBAE88FAAB1F223E7CFC967FFE66FE4E8D4E4036E07F5CBC5995949AB362BD67E7DAE301C502C3D3FE6C32627';
wwv_flow_imp.g_varchar2_table(115) := '020800273284079E80BEF3CF77FB7B58EA677636273766E724158295007F78EAA464338FEE9037BFB2245FBEF0AE645437B89985FF63AFEA4D804A6DAB6C26BF52440B48FF7B8C8510288E0002A0386EE4F23901DD85BB72F396E82E5D3753639188C412';
wwv_flow_imp.g_varchar2_table(116) := '09717CA9BBC92BEA6E792153C4B8B263A1D58FD0DDE267C7461D2BBE3A3121636E0FD071CCED9F889B6A08C0644D735D9D886A737179E973677584E100174CBE8FC640670208006736C4049480BE6B5BD5EBFCD55D9C9B0B0DF50DF2F4BEFDB26F70BBBA';
wwv_flow_imp.g_varchar2_table(117) := '26383F1CE6AD9B376521FDE89DB35BF97E8A4FABBBFB6C36E768D2B5C949E5A3FBC6488E05F8206226B52A6373B38E9644221139B46D50DE7BE0A03437343AA65B8F50E7D0EAEDDBAC0E5807C24198082000C2D49AF822EBDDFEEA42E086A32191940FED';
wwv_flow_imp.g_varchar2_table(118) := 'DF27DBBABB65A77AB71A2E08AB4B4B72793ED87BC7EB6B7F24E22C72526A6820A37A3BDCB8F939FE9DA9295931F462343634C9F6AE2E39D0D9294FEDD923F5BA3740CC2F3D27400F25E973CB9C9258FF11C02213010480890E718122A0B7F7CDAFF3F730';
wwv_flow_imp.g_varchar2_table(119) := 'E65FA77EF89F397C58065ADB44DDFA4B4B32295B9A9BC5F1A5EE9EDF75E95A76CC4B44D508BC766744D22B2B8EF5B5B53449520DF7449510EA6F6F974F1C7A4C12EABB6386FB11392528F5B98508B80F848F5010400084A21971425FFCF55D9ABE5B73A3';
wwv_flow_imp.g_varchar2_table(120) := 'D1A8BAFD3F71E890743735AD27D5F3007A5A5BD7BF173A38A3C6C8675D1E3053281F61D52370F4CE1DE316CF9DAA8D231B1E03DCA144DF33070F49B33A27DCACD4E7567E4E00CF0E7043E59B780C3113400098F9101B0002FAAE2C353222FA2ECDCDDCA6';
wwv_flow_imp.g_varchar2_table(121) := '649D3C7DF0A07436B73C92545F0C1E09DC10F0E6CD9B329B0EF644C00DEE84EE7041B5CD2D97A58C1D05DA7D6B5B9B3CB57FBF34A873C30D8A3EC7F4FC92ACA197C1AD0CE221E017020800BFB404761445203FE1EFB6BAF8ABF16BB702F49DFF338FA93B';
wwv_flow_imp.g_varchar2_table(122) := '7F75D757286D6B7DBDC4D55040A1381DB6B0B4247796D92046B3F0E3FBF4DCACAC2E2F3B9AD65A572F6DAA8D0B25E8573D03CF3EFEB8E8A1A142F11BC3F2AB039418D42B4D368673EC3702D8E3460001E0468878DF12D03FC0A9B1BB9E96FA35AA31FF4F';
wwv_flow_imp.g_varchar2_table(123) := '38DCF9AF39188FC7A5ADE5D19E81B5787DF777762A3C3BE6ADF9158ACF5C4EDE1A1F978C4108EA391E8DB198A3BB9D6A48E8E36A38A0CD3019742D737E38607454F416D36B617C422068041000416B31ECCD13D0DDFE7AB7367D51CE0718FE34D735C8D3';
wwv_flow_imp.g_varchar2_table(124) := '8F3D2EED0E77FE6B59A36A6CB8ABC5791E80FED13F37312E8BAAAB792D0F9FFE20A01737BE991FFFD747856DEA686B95B86AE3C2B17F94370D0000100049444154F742BB9400FCA01A0E6852BD05F7429CFFE65657456F31CD708033A35AC650B73B0104';
wwv_flow_imp.g_varchar2_table(125) := '803B2352F88C40BEDB7FE48E48D67D5D7EB3BA9B7B5A77FBABBB3B2F6EE8F1603D21D029AD9E0730ED619581537EC22B4360599D0B17C6C69C0B8F44A5D320EE3666EC5122E0E36A38A0DECB9C00D5E3905F1DC0C4C08D08390E08010440401A0A33EF11';
wwv_flow_imp.g_varchar2_table(126) := 'D077FEF9D9FEA9D57B0186BF7AC29F9EEDAFBB760DC91E88EA6E6A96643CFE40D8C62FE3B3B332C604B08D487C717C6D6151960CFB34C41309696B6CF46C6BBB4AFBAC1A326A559F6E99F4A3845747C7440F49B9A525BE5A04A8C70B81A89744A481801F';
wwv_flow_imp.g_varchar2_table(127) := '08E88BBFBEDBD293B0DCEC696B6C948F1F3E2C5E7EC0379655178F495343C3C6A0078E7399B45C325C681E48CC97EA10C8E5E44D35349335F4CCB4363618855D2143BB5A5BE543FBF64B8B9725824A90EA212986030A9124CCAF0410007E6D19EC7A8080';
wwv_flow_imp.g_varchar2_table(128) := '1E6FCDDFF9AB2ED707220A7C6951DDFD1F3D7050F45D5C8168D7A02DA6AE6275B1D1FB01B8164282AA11C8AA9A5E1F554342EAD3E95F5F5BBB44C5791744A77C7A38402F1BD52B489CD2AC87AB6188D49D51D1E7EA7A1807352140A5DE0844BD25231504';
wwv_flow_imp.g_varchar2_table(129) := '6A48405D7457F58CEB15E7255E6BD635D7D7CB271E7B5CB62811B016B6D9CF4E35062C11E78BC5B9B1BB72C7B0DC6CB3F591BE34022BEAC27BCA2000F4AE7FFA426E6852A3011DCDCDA28703DA3C9C5359758EA6C6C745D4396B2C944808F8800002C007';
wwv_flow_imp.g_varchar2_table(130) := '8D80090602EA87347FF15F725F7FDFA6C6EF9F7DFCB0B4D4D5190A748F6A6B6C94783CE198F0FC9D11B9B6B8E0184F4475099C9D9B93B9B979C74AE3B1B8E8B91D8E093C446811F0A1FD07C48B08C8CCCF8BDE2C0811E0016C459250A857020800AFA448';
wwv_flow_imp.g_varchar2_table(131) := '571302A9C949C9CC3A3FDD6DCDA8B6C626797ADF3E69378CDFAFA575FB6C566574B63AEF0790517779AF8D8DBA15437C35082881F8ED9B3724BBEA3C29B4A1A951928978C9D6E8ADA33FB26FBF343634BA9695999B95F4CC8C6B3A1240A096041000B5A4';
wwv_flow_imp.g_varchar2_table(132) := '4FDD4602197567979E9830A6D1917A07BF1F3B7C58DCD6F9EBB45EDEF5D198F498E601A842DE1EB92DA34A08A843FED590C052362BDFBD7C4975B9EB9900850DE9EBE89088CBFAFFC2391F0DED54C3017A6589DE55F0D1D807435277EF8A3E871F0CE55B';
wwv_flow_imp.g_varchar2_table(133) := 'A50950BE77020800EFAC485945027A2255BE1BD5A5CE267537F6ECA1C7A42E997449E93D3AA286FFB7AB8B8629C7F9913B727581610013A36AC49D5177DA1386DD19E3B198F46FE928AB297A72E9870E1E745F1DA07A275277C7452F132CAB0114068132';
wwv_flow_imp.g_varchar2_table(134) := '114000940924C5949180FEE1D43FEA39E7BB3A5D5B42DDD57D60F76E696D6AD25FCBFA6E6B6C94A6A666C732532B2BF2EA28C3008E80AA109153E7C9B76FDF365E60F5F6BFBDAA2DCB6D8E9E54F8815DBB241231FF84EA25ABBA2780F900E56E01A7F208';
wwv_flow_imp.g_varchar2_table(135) := 'DF0C01F3D9BB9992480B813211C82C2E4A6676CEB5B427F71D90C12D5B5CD31593406F0B3CD4D3E39C359B91A3EAE233CA6A006746158E5956DDFF2F5DBB62AC65A0B3CB75FB5F630186C881CE4EF9E09EBD8614F7A2F43080DEC3E2DE37FE42C03F0410';
wwv_flow_imp.g_varchar2_table(136) := '00FE690B2CB94F203DAEC6FD5DEEFE1F1B1A961D5D5DF77354E643971F535DC84EA5BF3B725BAEB01AC0094FC5C34FCFCEC8D8C4A4633D11D576031512886B95EEEEED91BD03DBD6BE3A7EA6F33D5ACECF2970CC48C4A6089078730410009BE345EA0A13';
wwv_flow_imp.g_varchar2_table(137) := 'C8DF2DB94CAEEBEFEA96C383DB458FD557D29C2D0D0DD2D2D0E058C5AAB2F3C85DC3FEF38E39892895405675FF3F7FFB96E875F74E6575B5B649ABA1FD9CF26D2A5C9D84EFDBB143B6A9DE00533EBD3430ED61358BA90CE220506E02D172174879102896';
wwv_flow_imp.g_varchar2_table(138) := '404E75E9EA4953A6FC4DC9A4BC7FE74E894623A664658BDB6E1A0650B51C1F19919165F73D0A5452FE9591C08A1A823972FD9AB1C461D576B168E57FE2F413069FDCB55B6231F352C3FC8A16255C8C4613590201B26E9640E5FFEFD8AC45A4B796406666';
wwv_flow_imp.g_varchar2_table(139) := '46F4A4291380FDDB06A5ADBEDE94A4AC717DED5B8C2B0C2E8DDE918BF3CE9BD094D5180A5B27705ADD4DDF322C114DA8EEFFC1F6F6F5F4953E6852E7E481A12163357A35007B0318111159650208802A03A7BAC204B22B2B921F272D1C9D0FD51BF4ECE8';
wwv_flow_imp.g_varchar2_table(140) := 'EDCB1F57EB4F57639374B5395F48161716E57B23B7AB650EF52802BAFBFFBBAAFB3FB79A52DF0AFF6B53DDFF8DAAB7A8706C65420FF56D15B74708A7272795C84D57C600CB4BC5FDCD1340006C9E19392A40408FFDEB3B2453D1EFDDB153EACBB0A39BA9';
wwv_flow_imp.g_varchar2_table(141) := '8E87E3A26AA861AB697C37979577C7C6D814E8617015FCBE94C9C8CB57AF1837FF19ECEE928A4F1291075F89784C1E1BDAFE60E043DFF4399E9E71DFD9F2A16C7C8540450820002A829542374B404F9232E5E9686913B7CD79A442AF6DADAD1231947D65';
wwv_flow_imp.g_varchar2_table(142) := '6C54CECDB92F5B341441D42608E8CD7F6EDFBDEB98A3B1AE5EFA3B3A1DE32B1931DCD32BDD861E235D777669517FF02E2B010A2B860002A0186AE4292B017D579433ECE51E8D44649FBAB32AD776AE9B35BEA9AE4EBA0D3B032E2E2DC9376F5C978CCF27';
wwv_flow_imp.g_varchar2_table(143) := '78C514C7CDFAEEB7F4A96C56BEAE58E7542F80936D3DEDEDB2A5CADDFF6BB6D4C762B2BBBF7FED6BC1CF5C2A2DB994F3F045C14C0442A00204100015804A919B23E0B6498A7EC0CF405BDBE60A2D63EA482422BBD49D9D6391EAC27FECDA55B9E0F3C980';
wwv_flow_imp.g_varchar2_table(144) := '7AECDCD1878044E8E72F7CE3FC39A3B5DB0C62CD98B14C9183EDED52A744A353715AF0669568748A277CF304C8511C01044071DCC8552E02EAE2995D342FA3EB6AEF107D6755AE2A8B2967505D54EA0D7795A31313F2FCE8483145572D4F18B6A1F9FACD';
wwv_flow_imp.g_varchar2_table(145) := '9B92320CB72454F77F971AB2A91AD4021525E271E9EBEC2A10733F289795CC02C300F769F051430208801AC2A76A11DD95EB7637D455C3BBFFB5364AC6E3D2D5D6BEF6B5E0E7F72F5F9649C35046C14C047A2630ABBACD9F7BF7BC3A699CA5CCF6CE4ED1';
wwv_flow_imp.g_varchar2_table(146) := '7B45782EB402092391487E6320D3BC91FC39AFC46F05AAB7B0485C2E960002A05872E42B0B013D169A5D5D712C2B1A4F486773F91FF6E358A12162A7DE5846FDB83B25B9363A2ACFDD6149A0139F52C35F1C1F93AB2E3B2FEEEEED9548C474E92DD50A6F';
wwv_flow_imp.g_varchar2_table(147) := 'F9FB9A9B2566D8182897498BDEF8CA5B69A48240650820002AC395523D12D0E3A162B813EA54DDB90D86AE778FD59425599FEA89E86973EE05482921F3DC95CBB29ACD94A53E0AF92181B9744ABE72F142BEC7E887A10F1E7535B74AB7BAF03E185A9B6F';
wwv_flow_imp.g_varchar2_table(148) := '0D898434373A6F23ADCFF9FCB95F1BF342552BCE144F0001503C3B72968140CE309B5B17BFB5B5A5624F73D3E56FE69D8CC76597CB0CEF0B6A8CFAC8C4C4668A25AD07026F4E4ECAB1CB571C53EA95227B06FA45DDFE8B5F5E5B1A1A8DA6B89DFBC6CC44';
wwv_flow_imp.g_varchar2_table(149) := '42A00C04100065804811C51330FD08EA8E5CFD23AA7FDC8BAFA1BC3907DBB748BD1A96702A75717959BEA21F516BE8D570CA4B7861024BAABBFC1BD7AF89699B68DD5334D4DD53B8801A85EA9D2B8D55BB885F635E22EF13E0A31402088052E891B77402';
wwv_flow_imp.g_varchar2_table(150) := '861FC14824220975D75D7A25E52B21168FC9C121F39EEFC7AF5E97B767A6CB57A9E5259D9F9F97EFE9C97F060EBBFBFA544F91968C8644558E8AAB73C554652E9335451307818A134000541C31159808B8F50024623153F69AC4EDE9ED954643F7EECCCC';
wwv_flow_imp.g_varchar2_table(151) := '547EB39A9A1817C24A9F57C32AD965E789A2CDAA2D06B674F8CEF3A46112A036D6D4A3A1E379BB13204569041000A5F12377A904B2E6BBA0840F0580EE9518EEED317AFE9AEAB2BEBCB0604C43A43B81AB8B0BF2C2C50B2239E7F364EFC08098F66870AF';
wwv_flow_imp.g_varchar2_table(152) := 'A53229EA120963C14C0234E221B20A04100055804C15CE048C4BA1D41040321E77CE5CC3981D6ABCB93159E768C1E8F8B87C8B25818E7CBC46BC303A2A23E3CEFBFE27E371D9DDD3E3B5B8AAA68B2BDB1AEAEA1DEBCCA533924BF364404740AE11242895';
wwv_flow_imp.g_varchar2_table(153) := '0002A05482E42F9E809E28E7BCA78BE893D34F1300373ABAA5A141F6EA59E71B03371CEB1FF6EF5CB8207A02DB86600E3741E0E6D2927CEB92BAFB37E419EAE99364DC9F22311E8D4A5D5DD2D97AD5AB611A0273CE480C04CA4340FFC696A7244A814099';
wwv_flow_imp.g_varchar2_table(154) := '0944A2318994B9CC7216B7A76FAB9804CAF53B77E40B6A28A09C75DA54D677540FCA851B371D5D6E503D307BFBB73AC6D73A420F15C5D539EC6447BEF74B8B60A704841B0910593A010440E90C29C152027589840CF5F63A7A9FCDA4E5AB67CFC98D25F6';
wwv_flow_imp.g_varchar2_table(155) := '7D7784E410A1E74F7CF9F42911C3A64A035D5DB2A5B1D1A184DA0737AAF3430C3D5CFAA9808200A87D43596C0102C0E2C6C7F5D2091CEC1F90A8E12EEFD69D11F9E2E5CBA5576459097F7DE39ADC18731EFBD738867D3AF6AF6DD3EF58342A9188A10F4B';
wwv_flow_imp.g_varchar2_table(156) := '0D01200034A962DEE429078168390AA10C08D84A604B5393746D71DE1E58D48FFCB7CE9E91B373B3B622DAB4DF276667E46FCE9C16CDCE29F3604FAF6FB6FD75B2917008F89D0002C0EF2D847DFE26A0EEF0F60E6C33DA38A32E687F72F15D631A22EF11';
wwv_flow_imp.g_varchar2_table(157) := '58C964E42FAE5C96F1A9A97B010E7FF70F0C482CCACF97039ED007E3607908F07F507938528AC504B6B5B64A7F47A7330135CEFBFC9933F2D6D4A4731A62F2048E4E4FC973A7CFE48F9DFE74B7B54B4F738B5334E1108080470208008FA0480601270271';
wwv_flow_imp.g_varchar2_table(158) := '7527BA7FFB7689382550E1E9E565F983B3E60B9B4A66F5BFF9745AFEECDDF3925A72DE4029118BCBE11D3B4475BC58CDCA6EE7F1BE5C041000E52249395613E86B6991E1ADE62569472F5F96EF8E8D5ACDC9E4FC91897179F5E2455312D931D02F5B156B';
wwv_flow_imp.g_varchar2_table(159) := '6322222100014F0410009E3091080266027A3F80F70C6E9764D27977C0CCCAB27CEED409C9A921017369F6C54EACAECABF3F715C32ABCE7BFE372492B2B7B74FB8FD17AB5F385F3E020880F2B1A424CB0934D7D7CB1E351460C270FEEA35F9CB5BCE9BDB';
wwv_flow_imp.g_varchar2_table(160) := '98F28639EEFBAA67E4E2CD1B46171F1B1E96F68606631A22210001EF041000DE59911202AE040EF4F4485B9361825A2E2B9F3F765416D578B76B619624D05BFEFE879327246B7830547B6B9BECED330FB15882CB723771BF9C041000E5A44959D613A88F';
wwv_flow_imp.g_varchar2_table(161) := 'C7E5895D3BC5D44D3D363A2A7F7AEDAAF0BA47E0AF6F5C97DB77EEDCFB52E06F2C1A95F730F1AF00198220501A01044069FCC80D8147086C6B6B976197BBD53F3EFAB65C5F648BE093B333F225D52392356CF9DBDFD72783ADADC20B0210282F01044079';
wwv_flow_imp.g_varchar2_table(162) := '79521A04F237FFEF191C94682CEE4863495DF8FEF99BAF5B3D21702E9D92DF7AE7A8CCCCCD39724AC6E3F2C4B641C943155E10804039092000CA4993B220709F404B7DBDEC5622E0FED7821FC72E5DB47A28E00B972FCB89CB970AB2590B3C383C2C6D8A';
wwv_flow_imp.g_varchar2_table(163) := 'E5DA773E6D2680EFE5268000283751CA83C07D0287FAFBA5ADA9F9FEB7021FB99CFCFE1BAFCBBB863BE002B94211A47745FCD2F163C6897F0DCDCDB2472FFB0B85C7380101FF114000F8AF4DB02824049A54F7F581A1ED62EABE5E9A9B957FA1C6C0570D';
wwv_flow_imp.g_varchar2_table(164) := '63E012B2D752262DBFFDF6DBA29F91E0E49ADE55F189A161A98BC59C92106E1901DC2D3F010440F999522204D6096CDFD221033DBDEBDF0B1D1CBB7851BE70E54AA1A85086FDC1850B72F69AD95F3DF16F8762174A003805019F104000F8A42130239C04';
wwv_flow_imp.g_varchar2_table(165) := '92EA0E765B5B9BD93975F7FF7B475E96E333D3E67421887D7D7242FEEAC471C9B9F8D2D7DA2ED1A8EE07704948B4250470B31204100095A04A9910D84073DDD8DC000010004944415420EEE1C93599544A7EEBEDB7443F106743D6501DEACD8F7EE3AD37';
wwv_flow_imp.g_varchar2_table(166) := '644E0D7BB83916CB65DD92100F010894480001502240B243C089402E9B93E357AFC8ABE7CF39257920FCC4D5ABF2A52B9745726EF7C70F640BCC977F73EEAC5CBA79CB93BD6F5DBC20EF281E59C5D0530612859A00CE55860002A0325C29D57202994C46';
wwv_flow_imp.g_varchar2_table(167) := '5EBF74414E5DBFEEDADDBD8E4ADDF5FEDB377E20EF847028E0ADC949F9CAB1A34ADB78BBB3CF2A1174E6FA35397AE992AC2896EB8C38800004CA4600015036941404817B0452AA3BFFFB674ECBC59111EF17FF7B5925B3BC2CFFFAE85B32A3CAB81F14F8';
wwv_flow_imp.g_varchar2_table(168) := '0FDDF5FF7FBCFAB22CAE383FE9AF9093BA1FE4DCC82D79F5CC1959595D2D9484302B08E064A50820002A459672AD2430313F2FCFBD734C6E4F4D15EDFF3B57AEC89F5E38AFEE96F525B0E8627C9131A7EEE47FFBE471B9353A5AB43DB7A626E53B274FCA';
wwv_flow_imp.g_varchar2_table(169) := 'B4625B7421648400041E2180007804090110288EC0F8ECACBC74FAB44C2F97BEC7FF1FBEFEBA7CE3B6B7F1F2E2ACAD4EAE3F57DDF85F3E71A2E4CAA617E6E505C576647ABAE4B228205804B0B67204100095634BC91611B83A3A26DF39715C165696CBE3';
wwv_flow_imp.g_varchar2_table(170) := '753623FFEF4B2FCA1B9313E529AF06A51C9F9E92DF79E565C9A45365A97D51B17DF1F429B97EF76E59CAA31008D84E000160FB1980FF2511D05DDC276EDE94D7DE3D2799ACB7096EB1B63689777649ACD9B04DB0B26A667151FE9FD75E95AB0B0BEA5BB0';
wwv_flow_imp.g_varchar2_table(171) := 'FE4DACACC83FFDFEF7647179C968782416BBC7A2A5D5986E2D524FAE7CE9DC593979E386711BE1B5F47C069D00F657920002A09274293BD40452996C7E96FAA92B9725A3C6BA5D9D8D4424DED121C9DE5E49747648A2A747F405D094EFD29D11F937278E';
wwv_flow_imp.g_varchar2_table(172) := 'C9742A3893E0F4A4BF7F72E465191D1F37B92691785C92DBB6E55924FB7A25DED9694CBF1EA9581F57CCDFB97A45D2E9F47A30071080C0E608200036C78BD410C813585277B8AFA93BD1B36A9C5E2F59CB079AFE44A292ECEB934457D77A2A7D014C2811';
wwv_flow_imp.g_varchar2_table(173) := '202A6E3DB0C0C1F367CFC81F9D3F27298F3D0C058AA85A901642FFEAD44979475DA0DD2AD5BE47EBEAEE258B449410E894E4D6AD222E3CE4FEEBACEA797945B5418A1502F78984EF038F2A4B00015059BE941E4202B3AA6BFEF9D3A7E5FA84F90E77CDF5';
wwv_flow_imp.g_varchar2_table(174) := '483C21C9817E89B5B4AC05AD7FEAB0F896F6F5EF050FD41DEF1FBFF1BA3C37E2F34981CACEAF5DBF267F79F4AD826E6C0C8C6FD922858640348F64BF7711707372529E3F755AA65821B0112FC710F0440001E009138920708FC09D991979EED83B32333F';
wwv_flow_imp.g_varchar2_table(175) := '772FC0E56F249994BA6D03126B6C744C99505DDFD1C626C7F87C84BAB8FEC6CB2FC9EB1E45473E4F95FFBC3D3525FFF7F75F745DBE18ADAB7FA027E46133634D4D523FB45D2289E4C35105BF4FCCCFCA2B67CEC82DD536051310185002985D690208804A';
wwv_flow_imp.g_varchar2_table(176) := '13A6FCD010B8313626DF3B7942563C8E3BEB8B7ADD7675215322C0082112113D06EE76C19B5958907FF9CACB727961DE585C2D22C75796E59F7DF73BB2E2325741CF7948F4F688289FC5F0CA0BA7C16D057B090A659B595E92236AE8E1BACBBC83427909';
wwv_flow_imp.g_varchar2_table(177) := '8380AD04A2B63A8EDF10F04C40DD7DEB2D7DF5EC73CF33FD9B9BA54E75FB47A2DEFE178BC4E3EAAEB853C465FCFBEAF85DF9576FBF25933E1AF79E4FA7E47F7EE515199F9D11B7979E0419ADAF774B968FCF33E9EB9398C71502AB998CBC7CE6B49CBE7D';
wwv_flow_imp.g_varchar2_table(178) := '3B9F9F3FC12680F59527E0EDD7A9F2765003047C49405F54F47EF4C7AE5EF1BCADAF9EE897ECEF17B7BB5C79E8A5C7BF139D1D0F853EFAF5E50BEFCA1F9E3D2D9BDD233FF268512587681B7E57F58ABC73F5B26B59F9E58F6AECDF35E186045A4025B7F6';
wwv_flow_imp.g_varchar2_table(179) := '49A2BB5BBCF0D47B271EBB7841DE506FBD6450784100028E0410008E6888B09DC04A2A25AF9F3F27676E7B9B7C97EFDEEEE9157D975B2C3B3D394E0F1DB8E5FFFF552FC0E7CF9D91A58CF76570D1889200FA0A69283C1251690CF11BA3F472BFCF9D3F2B';
wwv_flow_imp.g_varchar2_table(180) := '7FFECED18DC1058FA30D0D92D42B1E0AC6BA076A2E7A158566EC965ABBF8AEEA0578EDC2056185801B2DBFC6635735082000AA41993A024760666949BE7DE2B85CF338A6AC2F4C09D55D1D6F6F2BCD577501D677BCBAFBDB58901A96F8FC0F5E935F57EF';
wwv_flow_imp.g_varchar2_table(181) := '6B0B0BAE13EF7459FAD26EDA952FA2FA3862AA7E9DD6F4D6CB1EEF2E2FCBFFF28323F287AFBDEA5AB79EDB90ECED152F77F06278E91E92E4D6ADA2CB33245B8FBA3A362ADF3E754A6695ADEB811C400002EB041000EB283880C03D02235353F2D2C993A2';
wwv_flow_imp.g_varchar2_table(182) := '27DDDD0B31FFD577B77AB29F9EBD6E4EE92D568B097DB72B2EF30174692F9C3B2BFFF557BF2CBF7BEA847CFBE60D393F3D2D932BCB727779E981F7B8FA1E5517F82515A7F3157AEBF90D19D5EB31975A7D20AF2EEBF6E2829C999A946FDDB82EBFFDCEDB';
wwv_flow_imp.g_varchar2_table(183) := 'F2F37FF517F2FDF3E70B15F360582422C9DE1ED193FA1E8C28EE5BB4B151EA8787245ADFE0A980A9F93979E1F809B9ABB878CA40225F10C088EA108856A71A6A81400008A8BBEA1B13E3F2EAB973A267957BB1584F50BB77579AF092DC731A7DA14BF474';
wwv_flow_imp.g_varchar2_table(184) := '7B4A3FB3B428FFFE8DD7E59F3EF74D7561FE73F9D12FFC89FCF817FFF481F78FA9EFEFFF0F7F28EA76DDB14C3DDFE1E7FED35FCA337FF2470FE4D565FDE49F7D517E49C5FDDAB7BF255F505DFE934A503816B42122915FE2D8B821A40C875A54E8A595CD';
wwv_flow_imp.g_varchar2_table(185) := 'E6AD94D76A9A5F59CA3F48E8E6DD71A3FF6BE9F984802D041000B6B4347E9A09A88BFF995B37E5FBA74FCB92BA033627BE17AB27B5E597EFC5E3F702CAFC37DED6268536CBF1528D1E077FF8ED25DF5A9A52F2AE95A1BBEC4B990FB1564EA1CFFCE4C0FE';
wwv_flow_imp.g_varchar2_table(186) := '7E89B7B7178A7E242C9549CB4B674FDF5B21A0DAFA910404F88800A6548B0002A05AA4A9C7B704B2E98CBC7AE1821CBDEC3E933DEF84BE035563D1C9328C6BE7CB33FC49A83A8A150186622B1E156D6CBA3773BFC235E9ED84F58395BC54A31FD574FCF2';
wwv_flow_imp.g_varchar2_table(187) := '257953B5753A00DB2A7BF189341028850002A0147AE40D3C81B41AF37EE5DD7372F9CE88375FD4B8BC1E9FD777B7DE3294964ACF07D04BE0F405B5B492AA975B8FCF57B267E4614F129D1DE2F541427A02E379D5D66F9E3F2F5E37747AB83EBE579600A5';
wwv_flow_imp.g_varchar2_table(188) := '578F0002A07AACA9C96704E61617E55BC78F8BE7DDE3A231C96FEBDBF2E89EFE52C157249190BA81FEA287032A68DA2345E7E744A8F179D7550C8FE42C2D20D1D92975838312897B9B8B71E9EE987CF7C4715960854069E0C91D6802088040371FC6174B';
wwv_flow_imp.g_varchar2_table(189) := 'E0CEF4947CEFE449995E5CF054849EC55E37B84DF48C7F4F19CA9DE8FEB083EE0D102544CA5D7CA9E5E57B2ABABAEE6D69EC71F7C352EB7C38BF6E9BA4124A5E7B4B26E7E7E5B9E3C7E4EE9CB7E73A3C5C1FDF2B418032AB490001504DDAD4E50B02B7C7';
wwv_flow_imp.g_varchar2_table(190) := 'C7E5C8D9B3326B5812B7D150BDBC4F2FF38BD6D56D0CAEFEB112017A439CBAFEADA21FA8537D030AD798BFF06EDD2AF9097FCAC6C2A9AA13AADB480F3F7815018B2B2BF2FD5327453F55B03A16520B04FC430001E09FB6C0922A103877EB96BC78F68C2C';
wwv_flow_imp.g_varchar2_table(191) := 'A9B17F2FD5E98B5AB2BF5FF4AC732FE9AB9126DAD8287543DBD57B4812BDBDF999F0FA22ACEFC24BDD6CC7687F24A2BAD8E3126D6CCAD7A9EBAE1F1E963AD5F51E553619F3563132128FE7874C74DB79A976599D0B2F2A11F0EEADDB2C13F402AC826928';
wwv_flow_imp.g_varchar2_table(192) := 'BABA041000D5E54D6D3522A0677DBF7EF9921C556F3D11CCD58C4854F4EC723DB65CD18BAA14FFD277BB7AA9A01E16D07B1124B76D933AF54E0E0C88162D6BEFB530BD6CD1CD17BDACAE6E684874596BF9F39FAACC3AF5CE97DDD79B9FE1AFEBD64323C5';
wwv_flow_imp.g_varchar2_table(193) := '7B50C19C4AACE8B64BF4F48A9BCF72FFF5C6A50B72F4DA55497B7CDAE3FD6C7C4020B0041000816D3A0CF74A40DFE1BDA6BAFC2FDCBC299E2EFE6A8C3DD9DB2389CE0EF17AF1905ABED4C54EDFF56A41A07B02F490855E3AB8F6D677E73A2CD1D9297A42';
wwv_flow_imp.g_varchar2_table(194) := 'A1A3A95AF47474A8E1853A89A93BFAB5FCF9CFA62675E7DF988FD37505858BDE9A59AFDA10E59BA3DF1B22CE5CBF2E6F5DBA28AB88800D54AA75483DD5268000A83671EAAB2A8185C54535C67B4AAE4D8C7BAA57EF335F37B84D62ADAD9ED2072A5134AA';
wwv_flow_imp.g_varchar2_table(195) := 'AE8331A3C9B94CC6181FC448BD64B36EFBA0443CAE10B8383A9A9F20BAC40A81203637366F8240741369490A81E010C8E5646C665ABE71F284DC9D9BF564B7BE53D6CBFCF49DB4A70C014B14894444D43F31BD1437537450E3749BEAB68D789CC8A9CF99';
wwv_flow_imp.g_varchar2_table(196) := 'E74F9D9491C9C9A0BA1C38BB31B8FA041000D5674E8D1526905177B1976EDF96174F9D929595154FB5E92E723D566EEC22F7541289FC4A40CF57A8D313163D3E486846F51E1D397756CEAAA123FDA024BFFA855D1028960002A05872E4AB3C017537BA99';
wwv_flow_imp.g_varchar2_table(197) := 'D9F7B96C5626A667E4F91327E4353D8EAB84801723F5D2BAE4C08097A4A40938017D3E2507FA450B3E2FAE2CA7D3F2F6E54BF282EA499A989E167D8E79C9A7D3E8B439750EEB63DE6E0488AF050104402DA853A7270269FDE3A9DF2EA973D99C4CCDCECA';
wwv_flow_imp.g_varchar2_table(198) := '9177CFCB374FE88D5DBC75F9EB62F50C7AFDD6C7BCED20A0974B2695E0D3AB3CC4E3E4C0D19919F98E1A1278FDE24599999FF7B45C506F359CCE856F4E851D67891D5E2200EC68E7407A99CD65E5861AC79F5A5D9569F59E4CA5644ABD2754D7ECEDA929';
wwv_flow_imp.g_varchar2_table(199) := 'B970EB961CBB70518E9C3C292FA81FE7AB63639EFD8CC4E392BF086CD9E2390F09C34520D1D921C9FEAD2251F3C4C835AFF552D28B7746E47BEA5CFBBEEA653A71F1925C1E19915BEA5C1C5F5E9619756EEAF373567DAEA4337245852F2C2DAD65E7D340';
wwv_flow_imp.g_varchar2_table(200) := '80A8DA104000D4863BB57A21A0EEFE5F3B774E9E3B764C9E535DB0DF39715CF4D6ADDF3A764C5DF04FC9EBAA9BFFD4C82DB93A33254BAAABD64B913A8DDE454FAF9BF7DA0DACF3F00E27017D0ED4A92101AF93033585792546B5303D71FBA6BC7AE15D25';
wwv_flow_imp.g_varchar2_table(201) := '084EC973478FCAB78E1D936FAB73F49BEAFD95A36FCB71D55B90526240E7E10D013F124000F8B155B0699D40568DEBA7979724B5B0907FA7D5DD7F2E9D525DB0FAE1AEEBC93C1FE49F54A77EF0F57A79CF9948186A02FA5CA8DBBA55B4302CCA51D553A5';
wwv_flow_imp.g_varchar2_table(202) := 'CFC9D4D262FE1CCD9FABEA9C15155E5479D665C2E15A114000D48A3CF5569740249ADFD9AF6E709BE8EE7FE105810D04F22B04B60F4A7EFB6075AE6C88E21002A1258000086DD306C431D5CD5F694BF33FEEEAAE5F8FF94A2452E9EA025B7E24AAD8D8CC';
wwv_flow_imp.g_varchar2_table(203) := '47F99E587BA2612259F176D42B1224CA4F70C54153812301CE3E473444049E80FA41D77774F54343F96D6C03EF4FA90E281EC622E271C95F948C89C21FB9B67360BC7D8B5452306A61AA5724082F08D4880002A046E0A95611884444FF08AAA3B2FED35D';
wwv_flow_imp.g_varchar2_table(204) := 'FC7A8957FDAE5DA2EFE82AF9235E56C3AB5098E982A377CBD3ECAA6086EFABD09C123DDD52BF6347FEC987FA7BB98DD69B4EC1BBDC54296F330410009BA145DAB21388B5348B44CA701A46EE8989B54D7D74773F77B3F2C82BD6D2F248583E40B5816687';
wwv_flow_imp.g_varchar2_table(205) := '58CAD358FFA32FD0899E1ED14F44D44F53D4DFCBC528AE9F37A1CEDBF5CA388040950994E197B7CA16535DA808E827CD25B7F649ACA555F48378F23FAEFA47D1F48EC624124FE4BBF5E3EDED92E8ED15DDCD5F3F3C2C7A531F7D271B2A486574460B80E4';
wwv_flow_imp.g_varchar2_table(206) := 'D6ADF9871DE915119AB90ED34BE1E0E60C5AAF1448EAF34CF508E8732DD1D32B5A10E8707D2E8A1250EEE76E54D678EB3D28F4B3279C6BB423062F6B4B205ADBEAA91D0222D91141CD00000826494441546B22A07EC7B034ECD9E3FEDEBD4BEA77EE10BD';
wwv_flow_imp.g_varchar2_table(207) := '777F42DD9DC5DBDA2A329410D6B6D117FC645F9FE827E469E65A107031F2D8DA9148FE5C8BB7B7891604758383F973B161CF6EF7F356A559E3ADF71FF05823C92050310208808AA1A56008400002107026404CAD0920006ADD02D40F010840000210A801';
wwv_flow_imp.g_varchar2_table(208) := '0104400DA0532504200001DB09E07FED0920006ADF065800010840000210A83A010440D591532104200001DB09E0BF1F082000FCD00AD800010840000210A8320104409581531D04200001DB09E0BF3F082000FCD10E5801010840000210A82A01044055';
wwv_flow_imp.g_varchar2_table(209) := '71531904200001DB09E0BF5F082000FCD212D801010840000210A8220104401561531504200001DB09E0BF7F082000FCD3165802010840000210A81A010440D550531104200001DB09E0BF9F082000FCD41AD802010840000210A8120104409540530D04';
wwv_flow_imp.g_varchar2_table(210) := '200001DB09E0BFBF082000FCD51E5803010840000210A80A0104405530530904200001DB09E0BFDF082000FCD622D803010840000210A8020104401520530504200001DB09E0BFFF082000FCD7265804010840000210A838010440C511530104200001DB';
wwv_flow_imp.g_varchar2_table(211) := '09E0BF1F092000FCD82AD804010840000210A8300104408501533C04200001DB09E0BF3F092000FCD92E5805010840000210A82801044045F1523804200001DB09E0BF5F092000FCDA32D805010840000210A82001044005E1523404200001DB09E0BF7F';
wwv_flow_imp.g_varchar2_table(212) := '092000FCDB365806010840000210A818010440C5D0523004200001DB09E0BF9F092000FCDC3AD806010840000210A81001044085C0522C04200001DB09E0BFBF092000FCDD3E5807010840000210A80801044045B0522804200001DB09E0BFDF092000FC';
wwv_flow_imp.g_varchar2_table(213) := 'DE42D807010840000210A80001044005A0522404200001DB09E0BFFF092000FCDF465808010840000210283B010440D991522004200001DB09E07F1008200082D04AD80801084000021028330104409981521C04200001DB09E07F3008200082D14E5809';
wwv_flow_imp.g_varchar2_table(214) := '010840000210282B0104405971521804200001DB09E07F5008200082D252D80901084000021028230104401961521404200001DB09E07F7008200082D356580A010840000210281B010440D950521004200001DB09E07F9008200082D45AD80A01084000';
wwv_flow_imp.g_varchar2_table(215) := '021028130104409940520C04200001DB09E07FB008200082D55E580B010840000210280B0104405930520804200001DB09E07FD008200082D662D80B01084000021028030104401920520404200001DB09E07FF008200082D766580C0108400002102899';
wwv_flow_imp.g_varchar2_table(216) := '0002A064841400010840C07602F81F4402088020B61A36430002108000044A248000281120D921000108D84E00FF8349000110CC76C36A084000021080404904100025E1233304200001DB09E07F5009200082DA72D80D01084000021028810002A00478';
wwv_flow_imp.g_varchar2_table(217) := '6485000420603B01FC0F2E01044070DB0ECB2100010840000245134000148D8E8C108000046C2780FF412680000872EB613B042000010840A04802088022C1910D02108080ED04F03FD8041000C16E3FAC87000420000108144500015014363241000210';
wwv_flow_imp.g_varchar2_table(218) := 'B09D00FE079D000220E82D88FD10800004200081220820008A80461608400002B613C0FFE013400004BF0DF100021080000420B0690208804D23230304200001DB09E07F18082000C2D08AF800010840000210D8240104C02681911C02108080ED04F03F';
wwv_flow_imp.g_varchar2_table(219) := '1C041000E16847BC800004200001086C8A00026053B8480C010840C07602F81F16020880B0B4247E4000021080000436410001B009582485000420603B01FC0F0F01044078DA124F200001084000029E0920003CA3222104200001DB09E07F98082000C2';
wwv_flow_imp.g_varchar2_table(220) := 'D49AF802010840000210F0480001E01114C920000108D84E00FFC345000110AEF6C41B08400002108080270208004F984804010840C07602F81F36020880B0B528FE400002108000043C1040007880441208400002B613C0FFF011400084AF4DF1080210';
wwv_flow_imp.g_varchar2_table(221) := '80000420E04A0001E08A8804108000046C2780FF612480000863ABE213042000010840C0850002C00510D1108000046C2780FFE12480000867BBE215042000010840C048000160C4432404200001DB09E07F58092000C2DAB2F805010840000210301040';
wwv_flow_imp.g_varchar2_table(222) := '0018E01005010840C07602F81F5E020880F0B62D9E410002108000041C0920001CD11001010840C07602F81F6602088030B72EBE410002108000041C0820001CC0100C010840C07602F81F6E02088070B72FDE410002108000040A12400014C442200420';
wwv_flow_imp.g_varchar2_table(223) := '0001DB09E07FD8092000C2DEC2F8070108400002102840000150000A41108000046C2780FFE1278000087F1BE321042000010840E01102088047901000010840C07602F86F030104800DAD8C8F10800004200081870820001E02C25708400002B613C07F';
wwv_flow_imp.g_varchar2_table(224) := '3B082000EC6867BC840004200001083C400001F0000EBE40000210B09D00FEDB420001604B4BE32704200001084060030104C006181C42000210B09D00FEDB430001604F5BE329042000010840609D0002601D0507108000046C2780FF36114000D8D4DA';
wwv_flow_imp.g_varchar2_table(225) := 'F80A010840000210B84F0001701F041F108000046C2780FF76114000D8D5DE780B010840000210C8134000E431F00702108080ED04F0DF36020800DB5A1C7F210001084000028A00024041E01F04200001DB09E0BF7D041000F6B5391E43000210800004';
wwv_flow_imp.g_varchar2_table(226) := '0401C04900010840C07A0200B0910002C0C656C7670840000210B09E0002C0FA530000108080ED04F0DF4E0208003BDB1DAF2100010840C072020800CB4F00DC8700046C2780FFB6124000D8DAF2F80D01084000025613400058DDFC380F0108D84E00FF';
wwv_flow_imp.g_varchar2_table(227) := 'ED258000B0B7EDF11C02108000042C268000B0B8F1711D0210B09D00FEDB4C00016073EBE33B0420000108584B0001606DD3E3380420603B01FCB79BC07F060000FFFF0FA35CD60000000649444154030010EAF696198419CD0000000049454E44AE4260';
wwv_flow_imp.g_varchar2_table(228) := '82';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5532261768732240)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715062916Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062916Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5533590235732246)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062917Z')
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
 p_id=>wwv_flow_imp.id(5665012632013043)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/appointments_appointment_time
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5737674136048600)
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5541832797732394)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(5541832797732394)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5542543934732416)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5542113098732412)
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
 p_id=>wwv_flow_imp.id(5573465341895102)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5574134102895126)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5663579333013042)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5621212845972845)
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
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicines_medicine_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5721192695040163)
,p_lov_name=>'MEDICINES.MEDICINE_NAME'
,p_static_id=>'medicines-medicine-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'MEDICINES'
,p_return_column_name=>'MEDICINE_ID'
,p_display_column_name=>'MEDICINE_NAME'
,p_default_sort_column_name=>'MEDICINE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:1k-UBdrUxz2h2oE2X67FD9-E9fsAyiagI-Qt2iryOy0'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patient_visits_symptoms
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5703550880033201)
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5662853662013041)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/prescriptions_notes
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5720414207040161)
,p_lov_name=>'PRESCRIPTIONS.NOTES'
,p_static_id=>'prescriptions-notes'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRESCRIPTIONS'
,p_return_column_name=>'PRESCRIPTION_ID'
,p_display_column_name=>'NOTES'
,p_default_sort_column_name=>'NOTES'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:LFcb-i-myr13JNQSY_iONPA5F3L9yfvWnKCpps_-8LI'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5683770668022934)
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(5533754596732260)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(5528888496731916)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072810Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7014138450034871)
,p_short_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
,p_created_on=>wwv_flow_imp.dz('20260722072810Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072810Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5698997941023028)
,p_short_name=>'Admissions'
,p_static_id=>'admissions'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6995447803935126)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>37
,p_created_on=>wwv_flow_imp.dz('20260722071132Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071132Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5659391240003154)
,p_short_name=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5679476627013144)
,p_short_name=>'Appointments'
,p_static_id=>'appointments'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5602583856939761)
,p_short_name=>'Departments'
,p_static_id=>'departments'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5770287079134275)
,p_short_name=>'Departments and Doctors'
,p_static_id=>'departments-and-doctors'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20260715074558Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5589263514895323)
,p_short_name=>'Doctors'
,p_static_id=>'doctors'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5766895578059192)
,p_short_name=>'Doctors Specialties'
,p_static_id=>'doctors-specialties'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5529016240731921)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5647966262990891)
,p_short_name=>'MEDICINE CATEGORIES'
,p_static_id=>'medicine-categories'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7008535038015944)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>39
,p_created_on=>wwv_flow_imp.dz('20260722072500Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072500Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5635763397972953)
,p_short_name=>'MEDICINES'
,p_static_id=>'medicines'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5791870291205237)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
,p_created_on=>wwv_flow_imp.dz('20260715075833Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075833Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7001818813978351)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
,p_created_on=>wwv_flow_imp.dz('20260722071845Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5754718906048705)
,p_short_name=>'Patient Visits'
,p_static_id=>'patient-visits'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5567806732784269)
,p_short_name=>'Patients'
,p_static_id=>'patients'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260715063757Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5717217507033326)
,p_short_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5735619787040276)
,p_short_name=>'Prescriptions Items'
,p_static_id=>'prescriptions-items'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5617450964951727)
,p_short_name=>'Rooms'
,p_static_id=>'rooms'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6764155277328680)
,p_short_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>35
,p_created_on=>wwv_flow_imp.dz('20260721184013Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184013Z')
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
 p_id=>wwv_flow_imp.id(5529769296731948)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2722798454316704879
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
,p_version_scn=>'SH256:nZSx9GkJNzv3oYRRwZgu_fEIjkbQp5dUvrVQi820x-c'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260715062914Z')
,p_updated_on=>wwv_flow_imp.dz('20260723101426Z')
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
 p_id=>wwv_flow_imp.id(5528194853731893)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
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
 p_id=>wwv_flow_imp.id(5528478807731907)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260715062913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062913Z')
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
,p_created_on=>wwv_flow_imp.dz('20260715062916Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715062916Z')
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
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260723103347Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968023978523101)
,p_plug_name=>'Active Doctors'
,p_static_id=>'active-doctors'
,p_title=>'Active Doctors'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''Active Doctors'' AS CARD_TITLE,',
'    COUNT(*) AS CARD_VALUE',
'FROM DOCTORS',
'WHERE UPPER(STATUS) = ''ACTIVE'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260716113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260723103347Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(5968152539523102)
,p_region_id=>wwv_flow_imp.id(5968023978523101)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260716113048Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968266356523103)
,p_plug_name=>'Current Admissions'
,p_static_id=>'current-admissions'
,p_title=>'Current Admissions'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''Current Admissions'' AS CARD_TITLE,',
'    COUNT(*) AS CARD_VALUE',
'FROM ADMISSIONS',
'WHERE UPPER(STATUS) = ''ADMITTED'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260716113219Z')
,p_updated_on=>wwv_flow_imp.dz('20260723103347Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(5968398938523104)
,p_region_id=>wwv_flow_imp.id(5968266356523103)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260716113248Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5541278007732371)
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
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968424784523105)
,p_plug_name=>'Low Stock Medicines'
,p_static_id=>'low-stock-medicines'
,p_title=>'Low Stock Medicines'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''Low Stock Medicines'' AS CARD_TITLE,',
'    COUNT(*) AS CARD_VALUE',
'FROM MEDICINES',
'WHERE CURRENT_STOCK <= REORDER_LEVEL;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260716113407Z')
,p_updated_on=>wwv_flow_imp.dz('20260723103347Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(5968577682523106)
,p_region_id=>wwv_flow_imp.id(5968424784523105)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260716113445Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5970116930523122)
,p_plug_name=>'Medicine Stock Status'
,p_static_id=>'medicine-stock-status'
,p_title=>'Medicine Stock Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260716132117Z')
,p_updated_on=>wwv_flow_imp.dz('20260723094918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5970273231523123)
,p_region_id=>wwv_flow_imp.id(5970116930523122)
,p_chart_type=>'bar'
,p_height=>'350'
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
,p_created_on=>wwv_flow_imp.dz('20260716132117Z')
,p_updated_on=>wwv_flow_imp.dz('20260723094918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5970321301523124)
,p_chart_id=>wwv_flow_imp.id(5970273231523123)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Medicine Stock Status'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE',
'        WHEN CURRENT_STOCK <= REORDER_LEVEL THEN ''Low Stock''',
'        ELSE ''Sufficient Stock''',
'    END AS LABEL,',
'    COUNT(*) AS VALUE',
'FROM MEDICINES',
'GROUP BY',
'    CASE',
'        WHEN CURRENT_STOCK <= REORDER_LEVEL THEN ''Low Stock''',
'        ELSE ''Sufficient Stock''',
'    END'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260716132117Z')
,p_updated_on=>wwv_flow_imp.dz('20260716132317Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5970498743523125)
,p_chart_id=>wwv_flow_imp.id(5970273231523123)
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
,p_created_on=>wwv_flow_imp.dz('20260716132118Z')
,p_updated_on=>wwv_flow_imp.dz('20260716132118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5970533832523126)
,p_chart_id=>wwv_flow_imp.id(5970273231523123)
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
,p_created_on=>wwv_flow_imp.dz('20260716132118Z')
,p_updated_on=>wwv_flow_imp.dz('20260716132118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5968695596523107)
,p_plug_name=>'Patients by Gender'
,p_static_id=>'patients-by-gender'
,p_title=>'Patients by Gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    GENDER AS LABEL,',
'    COUNT(*) AS VALUE',
'FROM PATIENTS',
'GROUP BY GENDER'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260716125315Z')
,p_updated_on=>wwv_flow_imp.dz('20260723094918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5968703399523108)
,p_region_id=>wwv_flow_imp.id(5968695596523107)
,p_chart_type=>'pie'
,p_height=>'350'
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
,p_legend_position=>'top'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260716125315Z')
,p_updated_on=>wwv_flow_imp.dz('20260723094918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5968831404523109)
,p_chart_id=>wwv_flow_imp.id(5968703399523108)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'Patients by Gender'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    GENDER AS LABEL,',
'    COUNT(*) AS VALUE',
'FROM PATIENTS',
'GROUP BY GENDER'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260716125315Z')
,p_updated_on=>wwv_flow_imp.dz('20260716125452Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5824632143216149)
,p_plug_name=>'Today''s Appointments'
,p_static_id=>'today-s-appointments'
,p_title=>'Today''s Appointments'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''Today''''s Appointments'' AS CARD_TITLE,',
'    COUNT(*) AS CARD_VALUE',
'FROM APPOINTMENTS',
'WHERE TRUNC(APPOINTMENT_DATE) = TRUNC(SYSDATE);'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260716112729Z')
,p_updated_on=>wwv_flow_imp.dz('20260723103347Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(5824717793216150)
,p_region_id=>wwv_flow_imp.id(5824632143216149)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260716112900Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5824324593216146)
,p_plug_name=>'Total Patients'
,p_static_id=>'total-patients'
,p_title=>'Total Patients'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>2
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''Total Patients'' AS CARD_TITLE,',
'    COUNT(*) AS CARD_VALUE',
'FROM PATIENTS;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260716110945Z')
,p_updated_on=>wwv_flow_imp.dz('20260723103347Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(5824524853216148)
,p_region_id=>wwv_flow_imp.id(5824324593216146)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260716112207Z')
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Patients'
,p_alias=>'PATIENTS'
,p_step_title=>'Patients'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721084416Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5567946646784270)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715063757Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5560240126784112)
,p_plug_name=>'Patients'
,p_static_id=>'patients'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PATIENT_ID,',
'       CIVIL_ID,',
'       FULL_NAME,',
'       GENDER,',
'       DATE_OF_BIRTH,',
'       MOBILE_NO,',
'       EMAIL,',
'       BLOOD_GROUP,',
'       ADDRESS,',
'       EMERGENCY_CONTACT_NAME,',
'       EMERGENCY_CONTACT_NO,',
'       CREATED_AT',
'  from PATIENTS'))
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
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260721084416Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5560377326784112)
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
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_PATIENT_ID:\#PATIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5560377326784112
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064101Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5564732585784242)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5564375953784240)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5561969958784224)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5565993981784249)
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
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5563114715784233)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5563994032784237)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5565158766784244)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5565542153784246)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5562359961784229)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5562757796784230)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5563523614784235)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5561566661784195)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715063756Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5568794333802679)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260715064101Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064101Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5566254073784252)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5560240126784112)
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
,p_created_on=>wwv_flow_imp.dz('20260715063757Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5566666258784254)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5560240126784112)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715063757Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5567089357784260)
,p_event_id=>wwv_flow_imp.id(5566666258784254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5560240126784112)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063757Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Patient Form'
,p_alias=>'PATIENT-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Patient Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715063750Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260726063022Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5555795520783679)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5547009530783632)
,p_plug_name=>'Patient Form'
,p_static_id=>'patient-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715063750Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063750Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5556160684783680)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5555795520783679)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5556686852783686)
,p_button_id=>wwv_flow_imp.id(5556160684783680)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5557988470783692)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5555795520783679)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5557171180783691)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5555795520783679)
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
,p_button_condition=>'P5_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5557559324783692)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5555795520783679)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5550552604783673)
,p_name=>'P5_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5971154500523132)
,p_name=>'P5_AGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_prompt=>'Age'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, :P5_DATE_OF_BIRTH)/12)',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721090250Z')
,p_updated_on=>wwv_flow_imp.dz('20260726063022Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5550161137783671)
,p_name=>'P5_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:A+;A+,A-;A-,B+;B+,B-;B-,AB+;AB+,AB-;AB-,O+;O+,O-;O-'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260726051611Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5547748271783665)
,p_name=>'P5_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5551708823783675)
,p_name=>'P5_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5548942029783668)
,p_name=>'P5_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5549721450783670)
,p_name=>'P5_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5550921316783673)
,p_name=>'P5_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5551393655783674)
,p_name=>'P5_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5548164897783667)
,p_name=>'P5_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5548556238783667)
,p_name=>'P5_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Male;Male,Female;Female'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260726051144Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5549359385783669)
,p_name=>'P5_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
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
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5547455745783656)
,p_name=>'P5_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_item_source_plug_id=>wwv_flow_imp.id(5547009530783632)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6984523789364927)
,p_name=>'Calculate Age'
,p_static_id=>'calculate-age'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_DATE_OF_BIRTH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260726061722Z')
,p_updated_on=>wwv_flow_imp.dz('20260726061723Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6984640540364928)
,p_event_id=>wwv_flow_imp.id(6984523789364927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Age'
,p_static_id=>'set-age'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_AGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P5_DATE_OF_BIRTH',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT TRUNC(',
    '         MONTHS_BETWEEN(',
    '           TRUNC(SYSDATE),',
    '           TO_DATE(:P5_DATE_OF_BIRTH, ''MM/DD/YYYY'')',
    '         ) / 12',
    '       )',
    'FROM DUAL')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260726061723Z')
,p_updated_on=>wwv_flow_imp.dz('20260726061723Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5559142943783697)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5559142943783697
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5558396443783693)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5547009530783632)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Form'
,p_static_id=>'initialize-form-patient-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5558396443783693
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5558774791783696)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5547009530783632)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Form'
,p_static_id=>'process-form-patient-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5558774791783696
,p_created_on=>wwv_flow_imp.dz('20260715063751Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063751Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Doctors'
,p_alias=>'DOCTORS'
,p_step_title=>'Doctors'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716135150Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5589384799895324)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5583274968895269)
,p_plug_name=>'Doctors'
,p_static_id=>'doctors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTORS'
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
,p_created_on=>wwv_flow_imp.dz('20260715070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135150Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5583337579895269)
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
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_DOCTOR_ID:\#DOCTOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5583337579895269
,p_created_on=>wwv_flow_imp.dz('20260715070608Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135150Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5586898451895316)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5585298621895310)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5573465341895102)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5584440620895293)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5586412614895315)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5584854534895308)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5586058500895314)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5585619693895312)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Specialty'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5574134102895126)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5587231767895317)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5983741319374533)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:DEPARTMENT_ID:SPECIALTY_ID:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716135150Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135150Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5587621128895318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5583274968895269)
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
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5588010295895318)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5583274968895269)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5588447519895320)
,p_event_id=>wwv_flow_imp.id(5588010295895318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5583274968895269)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Doctor Form'
,p_alias=>'DOCTOR-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Doctor Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715070606Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721091701Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5578778018895130)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5572267358895083)
,p_plug_name=>'Doctor Form'
,p_static_id=>'doctor-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5579177333895131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5578778018895130)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5579638059895133)
,p_button_id=>wwv_flow_imp.id(5579177333895131)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5580997509895138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5578778018895130)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5580107362895137)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5578778018895130)
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
,p_button_condition=>'P9_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5580582389895137)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5578778018895130)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5575536631895128)
,p_name=>'P9_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5573337367895101)
,p_name=>'P9_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5572541296895094)
,p_name=>'P9_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5575137902895128)
,p_name=>'P9_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5572965283895100)
,p_name=>'P9_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5574734816895127)
,p_name=>'P9_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5574014166895126)
,p_name=>'P9_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
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
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5575932805895128)
,p_name=>'P9_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_item_source_plug_id=>wwv_flow_imp.id(5572267358895083)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260721091701Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5582154540895141)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5582154540895141
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5581360018895139)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5572267358895083)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor Form'
,p_static_id=>'initialize-form-doctor-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5581360018895139
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5581748573895141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5572267358895083)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor Form'
,p_static_id=>'process-form-doctor-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5581748573895141
,p_created_on=>wwv_flow_imp.dz('20260715070607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070607Z')
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
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716133208Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5602602706939761)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5598059571939735)
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
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133208Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5598179927939735)
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
,p_internal_uid=>5598179927939735
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133208Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5599317278939746)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5599774413939750)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5600148539939752)
,p_db_column_name=>'FLOOR_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Floor No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5600503902939753)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5982168476256312)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_ID:DEPARTMENT_NAME:FLOOR_NO:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716133208Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133208Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5600976442939755)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5598059571939735)
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
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5601302260939756)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5598059571939735)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5601754584939757)
,p_event_id=>wwv_flow_imp.id(5601302260939756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598059571939735)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071333Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Departments Form'
,p_alias=>'DEPARTMENTS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Departments Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5593560401939631)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5590353569939622)
,p_plug_name=>'Departments Form'
,p_static_id=>'departments-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5593908052939632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5593560401939631)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5594403788939633)
,p_button_id=>wwv_flow_imp.id(5593908052939632)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5595720731939635)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5593560401939631)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5594994592939634)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5593560401939631)
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
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5595356742939635)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5593560401939631)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5590716415939627)
,p_name=>'P11_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5590353569939622)
,p_item_source_plug_id=>wwv_flow_imp.id(5590353569939622)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5591120842939629)
,p_name=>'P11_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5590353569939622)
,p_item_source_plug_id=>wwv_flow_imp.id(5590353569939622)
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
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5591547821939630)
,p_name=>'P11_FLOOR_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5590353569939622)
,p_item_source_plug_id=>wwv_flow_imp.id(5590353569939622)
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
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5591912150939630)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5590353569939622)
,p_item_source_plug_id=>wwv_flow_imp.id(5590353569939622)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5596993254939637)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5596993254939637
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5596153526939635)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5590353569939622)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Departments Form'
,p_static_id=>'initialize-form-departments-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5596153526939635
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5596585857939636)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5590353569939622)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Departments Form'
,p_static_id=>'process-form-departments-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5596585857939636
,p_created_on=>wwv_flow_imp.dz('20260715071332Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071332Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Rooms'
,p_alias=>'ROOMS'
,p_step_title=>'Rooms'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716133212Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5617597137951727)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5612553941951706)
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
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133212Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5612622079951706)
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
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_ROOM_ID:\#ROOM_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5612622079951706
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133212Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5615030717951721)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5613876776951715)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Room ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5614253349951719)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5614632350951720)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5615493553951722)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5982684569256742)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROOM_ID:ROOM_NO:ROOM_TYPE:DAILY_RATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716133212Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133212Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5615859638951723)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5612553941951706)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5616242006951724)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5612553941951706)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5616669340951725)
,p_event_id=>wwv_flow_imp.id(5616242006951724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5612553941951706)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071533Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Rooms Form'
,p_alias=>'ROOMS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Rooms Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715071531Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5608063973951605)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5604261593951593)
,p_plug_name=>'Rooms Form'
,p_static_id=>'rooms-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715071531Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071531Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5608431325951605)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5608063973951605)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5608948605951607)
,p_button_id=>wwv_flow_imp.id(5608431325951605)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5610219979951609)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5608063973951605)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5609452205951608)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5608063973951605)
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
,p_button_condition=>'P13_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5609831098951609)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5608063973951605)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5605769870951603)
,p_name=>'P13_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_item_source_plug_id=>wwv_flow_imp.id(5604261593951593)
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
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5604693836951599)
,p_name=>'P13_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_item_source_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5604982023951602)
,p_name=>'P13_ROOM_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_item_source_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_prompt=>'Room No'
,p_source=>'ROOM_NO'
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
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5605344485951602)
,p_name=>'P13_ROOM_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_item_source_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_prompt=>'Room Type'
,p_source=>'ROOM_TYPE'
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
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5606160971951603)
,p_name=>'P13_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_item_source_plug_id=>wwv_flow_imp.id(5604261593951593)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5611436936951611)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5611436936951611
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5610644667951609)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5604261593951593)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Rooms Form'
,p_static_id=>'initialize-form-rooms-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5610644667951609
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5611052060951610)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5604261593951593)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Rooms Form'
,p_static_id=>'process-form-rooms-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5611052060951610
,p_created_on=>wwv_flow_imp.dz('20260715071532Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071532Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'MEDICINES'
,p_alias=>'MEDICINES'
,p_step_title=>'MEDICINES'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721093651Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5635821993972953)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5630049350972938)
,p_plug_name=>'MEDICINES'
,p_static_id=>'medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    MEDICINE_ID,',
'    MEDICINE_NAME,',
'    CATEGORY_ID,',
'    UNIT,',
'    CURRENT_STOCK,',
'    REORDER_LEVEL,',
'    STATUS,',
'    CASE',
'        WHEN CURRENT_STOCK < REORDER_LEVEL THEN ''LOW STOCK''',
'        ELSE ''SUFFICIENT STOCK''',
'    END AS STOCK_STATUS',
'FROM MEDICINES',
''))
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
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260721093651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5630157809972938)
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
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_MEDICINE_ID:\#MEDICINE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5630157809972938
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260721093651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5971214454523133)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721093650Z')
,p_updated_on=>wwv_flow_imp.dz('20260721093650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5632984856972947)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5631343063972941)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5631743268972944)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5633365974972949)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5633763169972950)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5971359038523134)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721093650Z')
,p_updated_on=>wwv_flow_imp.dz('20260721093650Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5632540570972946)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5984872077379819)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716135243Z')
,p_updated_on=>wwv_flow_imp.dz('20260721093651Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5634177812972951)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5630049350972938)
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
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5634562569972951)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5630049350972938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5634981515972952)
,p_event_id=>wwv_flow_imp.id(5634562569972951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5630049350972938)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071905Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071905Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Medicines Form'
,p_alias=>'MEDICINES-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicines Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721050354Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5625563072972850)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5619920337972842)
,p_plug_name=>'Medicines Form'
,p_static_id=>'medicines-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5625912265972851)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5625563072972850)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5626467697972851)
,p_button_id=>wwv_flow_imp.id(5625912265972851)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5627756615972852)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5625563072972850)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5626942599972852)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5625563072972850)
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
,p_button_condition=>'P15_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5627396763972852)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5625563072972850)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5621197604972844)
,p_name=>'P15_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MEDICINE_CATEGORIES.CATEGORY_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5622272432972848)
,p_name=>'P15_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_prompt=>'Current Stock'
,p_source=>'CURRENT_STOCK'
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
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5620376247972843)
,p_name=>'P15_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5620781603972844)
,p_name=>'P15_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
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
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5622676691972849)
,p_name=>'P15_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_prompt=>'Reorder Level'
,p_source=>'REORDER_LEVEL'
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
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5623056534972849)
,p_name=>'P15_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5621899717972848)
,p_name=>'P15_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_item_source_plug_id=>wwv_flow_imp.id(5619920337972842)
,p_prompt=>'Unit'
,p_source=>'UNIT'
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
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5970784499523128)
,p_validation_name=>'Current Stock Validation'
,p_static_id=>'current-stock-validation'
,p_validation_sequence=>10
,p_validation=>':P15_CURRENT_STOCK >= 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Medicine stock cannot be negative.'
,p_associated_item=>wwv_flow_imp.id(5622272432972848)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260721050354Z')
,p_updated_on=>wwv_flow_imp.dz('20260721050354Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5628940120972853)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5628940120972853
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5628192614972853)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5619920337972842)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicines Form'
,p_static_id=>'initialize-form-medicines-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5628192614972853
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5628563549972853)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5619920337972842)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicines Form'
,p_static_id=>'process-form-medicines-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5628563549972853
,p_created_on=>wwv_flow_imp.dz('20260715071904Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071904Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'MEDICINE CATEGORIES'
,p_alias=>'MEDICINE-CATEGORIES'
,p_step_title=>'MEDICINE CATEGORIES'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073418Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5648022331990891)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5643842139990880)
,p_plug_name=>'MEDICINE CATEGORIES'
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
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073418Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5643973449990880)
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
,p_internal_uid=>5643973449990880
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073418Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5645199167990884)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Category ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5645584650990886)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5645999532990888)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5768050328064305)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CATEGORY_ID:CATEGORY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715073418Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073418Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5646371421990889)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5643842139990880)
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
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5646784524990889)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5643842139990880)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5647153283990889)
,p_event_id=>wwv_flow_imp.id(5646784524990889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5643842139990880)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072204Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072204Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Medicine Categories Form'
,p_alias=>'MEDICINE-CATEGORIES-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Categories Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5639378777990790)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5636803201990788)
,p_plug_name=>'Medicine Categories Form'
,p_static_id=>'medicine-categories-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5639722713990790)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5639378777990790)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5640270471990791)
,p_button_id=>wwv_flow_imp.id(5639722713990790)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5641569518990792)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5639378777990790)
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
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5640727976990791)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5639378777990790)
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
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5641195451990792)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5639378777990790)
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
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5637219363990789)
,p_name=>'P17_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5636803201990788)
,p_item_source_plug_id=>wwv_flow_imp.id(5636803201990788)
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5637643221990789)
,p_name=>'P17_CATEGORY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5636803201990788)
,p_item_source_plug_id=>wwv_flow_imp.id(5636803201990788)
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
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5638060455990790)
,p_name=>'P17_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5636803201990788)
,p_item_source_plug_id=>wwv_flow_imp.id(5636803201990788)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5642787731990793)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5642787731990793
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5641964626990793)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5636803201990788)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Categories Form'
,p_static_id=>'initialize-form-medicine-categories-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5641964626990793
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5642398614990793)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5636803201990788)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Categories Form'
,p_static_id=>'process-form-medicine-categories-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5642398614990793
,p_created_on=>wwv_flow_imp.dz('20260715072203Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072203Z')
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
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716135245Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5655623521003146)
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
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5655776884003146)
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
,p_internal_uid=>5655776884003146
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5656937544003149)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Status ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5657314172003151)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5985481232380025)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS_ID:STATUS_NAME'
,p_created_on=>wwv_flow_imp.dz('20260716135245Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5659468733003154)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5657727134003153)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5655623521003146)
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
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5658163058003153)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5655623521003146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5658501222003153)
,p_event_id=>wwv_flow_imp.id(5658163058003153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5655623521003146)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072407Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Appointment Statuses Form'
,p_alias=>'APPOINTMENT-STATUSES-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Statuses Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5649331190003056)
,p_plug_name=>'Appointment Statuses Form'
,p_static_id=>'appointment-statuses-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5651101126003057)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5651523482003057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5651101126003057)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5652094924003058)
,p_button_id=>wwv_flow_imp.id(5651523482003057)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5653392495003058)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5651101126003057)
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
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5652503519003058)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5651101126003057)
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
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5652986959003058)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5651101126003057)
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
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5649764760003056)
,p_name=>'P19_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5649331190003056)
,p_item_source_plug_id=>wwv_flow_imp.id(5649331190003056)
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5650160703003057)
,p_name=>'P19_STATUS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5649331190003056)
,p_item_source_plug_id=>wwv_flow_imp.id(5649331190003056)
,p_prompt=>'Status Name'
,p_source=>'STATUS_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5654526000003059)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5654526000003059
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5653792351003058)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5649331190003056)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment Statuses Form'
,p_static_id=>'initialize-form-appointment-statuses-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5653792351003058
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5654122848003059)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5649331190003056)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Statuses Form'
,p_static_id=>'process-form-appointment-statuses-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5654122848003059
,p_created_on=>wwv_flow_imp.dz('20260715072406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072406Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Appointments'
,p_alias=>'APPOINTMENTS'
,p_step_title=>'Appointments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722053400Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5673399675013127)
,p_plug_name=>'Appointments'
,p_static_id=>'appointments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENTS'
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
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260722053400Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5673457501013127)
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
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_APPOINTMENT_ID:\#APPOINTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5673457501013127
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260722053359Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5675803385013135)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5674645754013130)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5676238187013136)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5677409897013140)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5675402223013134)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5663579333013042)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5675025841013132)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_APPOINTMENT_ID,P36_PATIENT_ID,P36_DOCTOR_ID:#APPOINTMENT_ID#,#PATIENT_ID#,#DOCTOR_ID#'
,p_column_linktext=>'#PATIENT_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260722053359Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5677089335013138)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5676606570013137)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5665012632013043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5985906410380122)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_ID:REASON_FOR_VISIT:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260716135246Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5679599482013144)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5677892676013142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5673399675013127)
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
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5678296600013142)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5673399675013127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5678678697013142)
,p_event_id=>wwv_flow_imp.id(5678296600013142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5673399675013127)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072547Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072547Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Appointments  Form'
,p_alias=>'APPOINTMENTS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointments  Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260726070937Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5661931033013040)
,p_plug_name=>'Appointments  Form'
,p_static_id=>'appointments-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5668892880013045)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5669230966013045)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5668892880013045)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5669735005013046)
,p_button_id=>wwv_flow_imp.id(5669230966013045)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5671024416013047)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5668892880013045)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5670279713013046)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5668892880013045)
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
,p_button_condition=>'P21_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5670686567013046)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5668892880013045)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5664103184013043)
,p_name=>'P21_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5662328451013040)
,p_name=>'P21_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5664501515013043)
,p_name=>'P21_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_prompt=>'Appointment Time'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5666048436013044)
,p_name=>'P21_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5971415187523135)
,p_name=>'P21_DEPARTMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721105739Z')
,p_updated_on=>wwv_flow_imp.dz('20260726070937Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5663469426013042)
,p_name=>'P21_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5662708174013041)
,p_name=>'P21_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PATIENTS.CIVIL_ID'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104121Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5665603785013044)
,p_name=>'P21_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
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
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5971521638523136)
,p_name=>'P21_SPECIALTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_prompt=>'Specialty'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721105839Z')
,p_updated_on=>wwv_flow_imp.dz('20260726070937Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5664982500013043)
,p_name=>'P21_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_item_source_plug_id=>wwv_flow_imp.id(5661931033013040)
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPOINTMENT_STATUSES.STATUS_NAME'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105839Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5970646830523127)
,p_validation_name=>'Appointment Date Validation'
,p_static_id=>'appointment-date-validation'
,p_validation_sequence=>10
,p_validation=>':P21_APPOINTMENT_DATE >= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Appointment cannot be created in the past.'
,p_associated_item=>wwv_flow_imp.id(5664103184013043)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260721044151Z')
,p_updated_on=>wwv_flow_imp.dz('20260721044942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5971846680523139)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260721110503Z')
,p_updated_on=>wwv_flow_imp.dz('20260721110503Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5971911975523140)
,p_event_id=>wwv_flow_imp.id(5971846680523139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P21_DEPARTMENT,P21_SPECIALTY',
  'items_to_submit', 'P21_DOCTOR_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT d.department_name,',
    '       s.specialty_name',
    'INTO   :P21_DEPARTMENT,',
    '       :P21_SPECIALTY',
    'FROM doctors doc',
    'JOIN departments d',
    '  ON doc.department_id = d.department_id',
    'JOIN doctor_specialties s',
    '  ON doc.specialty_id = s.specialty_id',
    'WHERE doc.doctor_id = :P21_DOCTOR_ID;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260721110503Z')
,p_updated_on=>wwv_flow_imp.dz('20260721110503Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5672279222013047)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5672279222013047
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5671424139013047)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5661931033013040)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointments  Form'
,p_static_id=>'initialize-form-appointments-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5671424139013047
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5671805321013047)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5661931033013040)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointments  Form'
,p_static_id=>'process-form-appointments-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5671805321013047
,p_created_on=>wwv_flow_imp.dz('20260715072546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Admissions'
,p_alias=>'ADMISSIONS'
,p_step_title=>'Admissions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716135247Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5692825641023015)
,p_plug_name=>'Admissions'
,p_static_id=>'admissions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ADMISSIONS'
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
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135247Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5692951223023015)
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
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_ADMISSION_ID:\#ADMISSION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5692951223023015
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135247Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5695789331023022)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5694109897023017)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admission ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5696588102023025)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5696113613023023)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5694925851023020)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5663579333013042)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5694515595023019)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5662853662013041)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5695334785023022)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5683770668022934)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5696912261023026)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5986420342380240)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_ID:DOCTOR_ID:ROOM_ID:ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716135247Z')
,p_updated_on=>wwv_flow_imp.dz('20260716135247Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5699060550023028)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5697305830023027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5692825641023015)
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
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5697733189023027)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5692825641023015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5698157546023027)
,p_event_id=>wwv_flow_imp.id(5697733189023027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5692825641023015)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Admissions Form'
,p_alias=>'ADMISSIONS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Admissions Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722063851Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5682034259022932)
,p_plug_name=>'Admissions Form'
,p_static_id=>'admissions-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5688362613022936)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5688728891022936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5688362613022936)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5689238431022936)
,p_button_id=>wwv_flow_imp.id(5688728891022936)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5690511214022937)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5688362613022936)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5689719601022937)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5688362613022936)
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
,p_button_condition=>'P23_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5690123041022937)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5688362613022936)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5684312015022934)
,p_name=>'P23_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_prompt=>'Admission Date'
,p_source=>'ADMISSION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5682468969022933)
,p_name=>'P23_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5685111472022935)
,p_name=>'P23_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_prompt=>'Admission Reason'
,p_source=>'ADMISSION_REASON'
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5684746961022935)
,p_name=>'P23_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5683276305022933)
,p_name=>'P23_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5682896876022933)
,p_name=>'P23_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
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
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5683684065022934)
,p_name=>'P23_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROOMS.ROOM_NO'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5685597494022935)
,p_name=>'P23_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_item_source_plug_id=>wwv_flow_imp.id(5682034259022932)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted;Admitted,Discharged;Discharged'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260721052121Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5970849215523129)
,p_validation_name=>'Discharge Date Validation'
,p_static_id=>'discharge-date-validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P23_STATUS <> ''Discharged''',
'OR',
':P23_DISCHARGE_DATE IS NOT NULL'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'A discharged patient must have a discharge date.'
,p_associated_item=>wwv_flow_imp.id(5684746961022935)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260721051046Z')
,p_updated_on=>wwv_flow_imp.dz('20260721052155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5971011997523131)
,p_validation_name=>'Room Occupancy Validation'
,p_static_id=>'room-occupancy-validation'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM ADMISSIONS',
'WHERE ROOM_ID = :P23_ROOM_ID',
'AND STATUS = ''Admitted''',
'AND ADMISSION_ID <> :P23_ADMISSION_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Room cannot be assigned because it is already occupied.'
,p_validation_condition=>'P23_STATUS'
,p_validation_condition2=>'Admitted'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(5683684065022934)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260721060701Z')
,p_updated_on=>wwv_flow_imp.dz('20260722060803Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5691791931022937)
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
,p_internal_uid=>5691791931022937
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260722063851Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5690943978022937)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5682034259022932)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Admissions Form'
,p_static_id=>'initialize-form-admissions-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5690943978022937
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5691343619022937)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5682034259022932)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Admissions Form'
,p_static_id=>'process-form-admissions-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5691343619022937
,p_created_on=>wwv_flow_imp.dz('20260715072725Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6982937814364911)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Room Status'
,p_static_id=>'update-room-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P23_STATUS = ''Admitted'' THEN',
'        UPDATE ROOMS',
'        SET STATUS = ''Occupied''',
'        WHERE ROOM_ID = :P23_ROOM_ID;',
'    ELSIF :P23_STATUS = ''Discharged'' THEN',
'        UPDATE ROOMS',
'        SET STATUS = ''Available''',
'        WHERE ROOM_ID = :P23_ROOM_ID;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6982937814364911
,p_created_on=>wwv_flow_imp.dz('20260722063849Z')
,p_updated_on=>wwv_flow_imp.dz('20260722063849Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Prescriptions'
,p_alias=>'PRESCRIPTIONS'
,p_step_title=>'Prescriptions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260723112934Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5717357190033326)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5712051036033310)
,p_plug_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
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
,p_created_on=>wwv_flow_imp.dz('20260715072908Z')
,p_updated_on=>wwv_flow_imp.dz('20260723112934Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5712127941033310)
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
,p_internal_uid=>5712127941033310
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260723112934Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5714471837033320)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5663579333013042)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5715286290033322)
,p_db_column_name=>'NOTES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5714003912033319)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5662853662013041)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5714870387033321)
,p_db_column_name=>'PRESCRIPTION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Prescription Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5713235672033315)
,p_db_column_name=>'PRESCRIPTION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Prescription ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5713691082033318)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Visit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5703550880033201)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7396031986914328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRESCRIPTION_ID:VISIT_ID:PATIENT_ID:DOCTOR_ID:PRESCRIPTION_DATE:NOTES'
,p_created_on=>wwv_flow_imp.dz('20260723112934Z')
,p_updated_on=>wwv_flow_imp.dz('20260723112934Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5715682757033324)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5712051036033310)
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
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5716086606033324)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5712051036033310)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5716479016033324)
,p_event_id=>wwv_flow_imp.id(5716086606033324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5712051036033310)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072909Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Prescriptions Form'
,p_alias=>'PRESCRIPTIONS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Prescriptions Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5707526788033205)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5702628222033199)
,p_plug_name=>'Prescriptions Form'
,p_static_id=>'prescriptions-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5707982101033205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5707526788033205)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5708481387033206)
,p_button_id=>wwv_flow_imp.id(5707982101033205)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5709706259033207)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5707526788033205)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5708938086033206)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5707526788033205)
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5709329322033207)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5707526788033205)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5704580843033203)
,p_name=>'P25_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_item_source_plug_id=>wwv_flow_imp.id(5702628222033199)
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5705364008033204)
,p_name=>'P25_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_item_source_plug_id=>wwv_flow_imp.id(5702628222033199)
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5704154089033203)
,p_name=>'P25_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_item_source_plug_id=>wwv_flow_imp.id(5702628222033199)
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5704965349033203)
,p_name=>'P25_PRESCRIPTION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_item_source_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_prompt=>'Prescription Date'
,p_source=>'PRESCRIPTION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
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
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5703021150033200)
,p_name=>'P25_PRESCRIPTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_item_source_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5703420498033201)
,p_name=>'P25_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_item_source_plug_id=>wwv_flow_imp.id(5702628222033199)
,p_prompt=>'Visit Id'
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PATIENT_VISITS.SYMPTOMS'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5710902617033208)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5710902617033208
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5710186735033207)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5702628222033199)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Prescriptions Form'
,p_static_id=>'initialize-form-prescriptions-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5710186735033207
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5710543143033208)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5702628222033199)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Prescriptions Form'
,p_static_id=>'process-form-prescriptions-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5710543143033208
,p_created_on=>wwv_flow_imp.dz('20260715072907Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Prescriptions Items'
,p_alias=>'PRESCRIPTIONS-ITEMS'
,p_step_title=>'Prescriptions Items'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260726074700Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5735771467040276)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5729927064040261)
,p_plug_name=>'Prescriptions Items'
,p_static_id=>'prescriptions-items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
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
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260726074700Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5730068482040261)
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
,p_detail_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:RP:P27_PRESCRIPTION_ITEM_ID:\#PRESCRIPTION_ITEM_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5730068482040261
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260726074700Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5732412149040270)
,p_db_column_name=>'DOSAGE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dosage'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5733216429040273)
,p_db_column_name=>'DURATION_DAYS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Duration Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5732854621040271)
,p_db_column_name=>'FREQUENCY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Frequency'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5733603929040274)
,p_db_column_name=>'INSTRUCTIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Instructions'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5732082334040269)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Medicine'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5721192695040163)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5731647905040268)
,p_db_column_name=>'PRESCRIPTION_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Prescription'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5720414207040161)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5731284714040266)
,p_db_column_name=>'PRESCRIPTION_ITEM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Prescription Item ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7763286060016697)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRESCRIPTION_ITEM_ID:PRESCRIPTION_ID:MEDICINE_ID:DOSAGE:FREQUENCY:DURATION_DAYS:INSTRUCTIONS'
,p_created_on=>wwv_flow_imp.dz('20260726074659Z')
,p_updated_on=>wwv_flow_imp.dz('20260726074659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5734035794040275)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5729927064040261)
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
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5734496986040275)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5729927064040261)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5734855002040275)
,p_event_id=>wwv_flow_imp.id(5734496986040275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5729927064040261)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Prescriptions Items Form'
,p_alias=>'PRESCRIPTIONS-ITEMS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Prescriptions Items Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5725408385040168)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5719560827040160)
,p_plug_name=>'Prescriptions Items Form'
,p_static_id=>'prescriptions-items-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5725801592040168)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5725408385040168)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5726309331040169)
,p_button_id=>wwv_flow_imp.id(5725801592040168)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5727669842040170)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5725408385040168)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P27_PRESCRIPTION_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5726888322040169)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5725408385040168)
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
,p_button_condition=>'P27_PRESCRIPTION_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5727283048040170)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5725408385040168)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P27_PRESCRIPTION_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5721761361040164)
,p_name=>'P27_DOSAGE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_prompt=>'Dosage'
,p_source=>'DOSAGE'
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
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5722585236040165)
,p_name=>'P27_DURATION_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
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
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5722139114040164)
,p_name=>'P27_FREQUENCY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_prompt=>'Frequency'
,p_source=>'FREQUENCY'
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
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5722930703040165)
,p_name=>'P27_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_prompt=>'Instructions'
,p_source=>'INSTRUCTIONS'
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
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5721028286040163)
,p_name=>'P27_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_prompt=>'Medicine Id'
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MEDICINES.MEDICINE_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5720392938040161)
,p_name=>'P27_PRESCRIPTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_prompt=>'Prescription Id'
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRESCRIPTIONS.NOTES'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5719916202040161)
,p_name=>'P27_PRESCRIPTION_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_item_source_plug_id=>wwv_flow_imp.id(5719560827040160)
,p_source=>'PRESCRIPTION_ITEM_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5728864726040172)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5728864726040172
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5728005113040171)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5719560827040160)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Prescriptions Items Form'
,p_static_id=>'initialize-form-prescriptions-items-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5728005113040171
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5728461984040171)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5719560827040160)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Prescriptions Items Form'
,p_static_id=>'process-form-prescriptions-items-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5728461984040171
,p_created_on=>wwv_flow_imp.dz('20260715073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Patient Visits'
,p_alias=>'PATIENT-VISITS'
,p_step_title=>'Patient Visits'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721123015Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5754865169048705)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5748209521048688)
,p_plug_name=>'Patient Visits'
,p_static_id=>'patient-visits'
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
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260721123015Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5748328180048688)
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
,p_detail_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:RP:P29_VISIT_ID:\#VISIT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5748328180048688
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260721123015Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5749997491048694)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Appointment'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5737674136048600)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5751905139048700)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5750752064048696)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5663579333013042)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5752761809048703)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5752308497048701)
,p_db_column_name=>'NOTES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5750311298048695)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5662853662013041)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5751510451048699)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5751147201048698)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5749588715048692)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Visit ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6574083517592565)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:VISIT_DATE:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260721123015Z')
,p_updated_on=>wwv_flow_imp.dz('20260721123015Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5753116901048704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5748209521048688)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29::'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5753534259048704)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5748209521048688)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5753941933048704)
,p_event_id=>wwv_flow_imp.id(5753534259048704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5748209521048688)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073142Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Patient Visits Form'
,p_alias=>'PATIENT-VISITS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Patient Visits Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5743720036048604)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5736791987048599)
,p_plug_name=>'Patient Visits Form'
,p_static_id=>'patient-visits-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5744157324048604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5743720036048604)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5744697546048605)
,p_button_id=>wwv_flow_imp.id(5744157324048604)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5745904018048605)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5743720036048604)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P29_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5745106135048605)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5743720036048604)
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
,p_button_condition=>'P29_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5745504887048605)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5743720036048604)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P29_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5737536080048600)
,p_name=>'P29_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_prompt=>'Appointment Id'
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPOINTMENTS.APPOINTMENT_TIME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5739819380048603)
,p_name=>'P29_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5738656043048601)
,p_name=>'P29_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5740676405048603)
,p_name=>'P29_FOLLOW_UP_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5740282868048603)
,p_name=>'P29_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5738236933048601)
,p_name=>'P29_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5739443734048602)
,p_name=>'P29_SYMPTOMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_prompt=>'Symptoms'
,p_source=>'SYMPTOMS'
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5739021146048602)
,p_name=>'P29_VISIT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_prompt=>'Visit Date'
,p_source=>'VISIT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
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
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5737122856048599)
,p_name=>'P29_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_item_source_plug_id=>wwv_flow_imp.id(5736791987048599)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5747183955048606)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5747183955048606
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5746300881048606)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5736791987048599)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Visits Form'
,p_static_id=>'initialize-form-patient-visits-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5746300881048606
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5746761305048606)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5736791987048599)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Visits Form'
,p_static_id=>'process-form-patient-visits-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5746761305048606
,p_created_on=>wwv_flow_imp.dz('20260715073141Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073141Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Doctors Specialties'
,p_alias=>'DOCTORS-SPECIALTIES'
,p_step_title=>'Doctors Specialties'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073359Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5766974157059192)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5762776907059177)
,p_plug_name=>'Doctors Specialties'
,p_static_id=>'doctors-specialties'
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
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073359Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5762802320059177)
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
,p_detail_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:RP:P31_SPECIALTY_ID:\#SPECIALTY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5762802320059177
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073359Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5764058939059182)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Specialty ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5764483251059185)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5764856184059187)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5767526232062343)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPECIALTY_ID:SPECIALTY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073359Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5765295704059189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5762776907059177)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:31::'
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5765641644059189)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5762776907059177)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5766048592059190)
,p_event_id=>wwv_flow_imp.id(5765641644059189)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5762776907059177)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Doctors Specialties Form'
,p_alias=>'DOCTORS-SPECIALTIES-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Doctors Specialties Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715073325Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5758278931059058)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5755865779059048)
,p_plug_name=>'Doctors Specialties Form'
,p_static_id=>'doctors-specialties-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5758663100059059)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5758278931059058)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5759143175059061)
,p_button_id=>wwv_flow_imp.id(5758663100059059)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5760479958059064)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5758278931059058)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P31_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5759691164059063)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5758278931059058)
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
,p_button_condition=>'P31_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5760065917059063)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5758278931059058)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P31_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5756130394059051)
,p_name=>'P31_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5755865779059048)
,p_item_source_plug_id=>wwv_flow_imp.id(5755865779059048)
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5756535644059055)
,p_name=>'P31_SPECIALTY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5755865779059048)
,p_item_source_plug_id=>wwv_flow_imp.id(5755865779059048)
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
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5756997773059056)
,p_name=>'P31_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5755865779059048)
,p_item_source_plug_id=>wwv_flow_imp.id(5755865779059048)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5761604215059066)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5761604215059066
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5760815676059064)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5755865779059048)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctors Specialties Form'
,p_static_id=>'initialize-form-doctors-specialties-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>5760815676059064
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5761292608059066)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5755865779059048)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctors Specialties Form'
,p_static_id=>'process-form-doctors-specialties-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5761292608059066
,p_created_on=>wwv_flow_imp.dz('20260715073326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073326Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Departments and Doctors'
,p_alias=>'DEPARTMENTS-AND-DOCTORS'
,p_step_title=>'Departments and Doctors'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260715074558Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715074602Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5769671327134270)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715074558Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5770496607134277)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715074558Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5771251376134279)
,p_plug_name=>'Departments and Doctors'
,p_static_id=>'departments-and-doctors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
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
,p_created_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5773086976134478)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5772560721134466)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5774074882134485)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5775048856134493)
,p_name=>'DEPARTMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5776068715134495)
,p_name=>'FLOOR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLOOR_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Floor No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5777001466134497)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5771325505134433)
,p_internal_uid=>5771325505134433
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
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5772092339134451)
,p_interactive_grid_id=>wwv_flow_imp.id(5771325505134433)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5772161821134458)
,p_report_id=>wwv_flow_imp.id(5772092339134451)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5773557532134483)
,p_view_id=>wwv_flow_imp.id(5772161821134458)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5773086976134478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5774537771134486)
,p_view_id=>wwv_flow_imp.id(5772161821134458)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5774074882134485)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5775511180134495)
,p_view_id=>wwv_flow_imp.id(5772161821134458)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5775048856134493)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5776564670134496)
,p_view_id=>wwv_flow_imp.id(5772161821134458)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5776068715134495)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5777534367134498)
,p_view_id=>wwv_flow_imp.id(5772161821134458)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5777001466134497)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5778428353134603)
,p_plug_name=>'Doctors'
,p_static_id=>'doctors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTORS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(5771251376134279)
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
,p_created_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074602Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5780222988134608)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5779728530134606)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5787279152134617)
,p_name=>'CONSULTATION_FEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONSULTATION_FEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Consultation Fee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5783282902134612)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5774074882134485)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715074602Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781289350134609)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5786208591134616)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5782208833134610)
,p_name=>'FULL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FULL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5785200252134614)
,p_name=>'MOBILE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOBILE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5784259667134613)
,p_name=>'SPECIALTY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIALTY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Specialty Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5788247223134619)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5778587864134604)
,p_internal_uid=>5778587864134604
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
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5779259773134606)
,p_interactive_grid_id=>wwv_flow_imp.id(5778587864134604)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5779337957134606)
,p_report_id=>wwv_flow_imp.id(5779259773134606)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780779361134609)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5780222988134608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5781733791134610)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5781289350134609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5782727172134611)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5782208833134610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5783762693134613)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5783282902134612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5784784485134614)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5784259667134613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5785789400134616)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5785200252134614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5786759184134617)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5786208591134616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5787767270134619)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5787279152134617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5788786459134621)
,p_view_id=>wwv_flow_imp.id(5779337957134606)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5788247223134619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5770874182134278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5770496607134277)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260715074558Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5778079826134499)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5771251376134279)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Departments and Doctors - Save Interactive Grid Data'
,p_static_id=>'departments-and-doctors-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5770874182134278)
,p_internal_uid=>5778079826134499
,p_created_on=>wwv_flow_imp.dz('20260715074600Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074600Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5789248716134621)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5778428353134603)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Doctors - Save Interactive Grid Data'
,p_static_id=>'doctors-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5770874182134278)
,p_internal_uid=>5789248716134621
,p_created_on=>wwv_flow_imp.dz('20260715074601Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074601Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260715075833Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721180339Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5823165463216134)
,p_plug_name=>'Admission History'
,p_static_id=>'admission-history'
,p_title=>'Admission History'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ADMISSIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(5792793477205246)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Admission History'
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
,p_created_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_on=>wwv_flow_imp.dz('20260721122438Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823776902216140)
,p_name=>'ADMISSION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Admission Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823345256216136)
,p_name=>'ADMISSION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823995253216142)
,p_name=>'ADMISSION_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Admission Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823883032216141)
,p_name=>'DISCHARGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCHARGE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Discharge Date'
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823588213216138)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Doctor Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823422714216137)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Patient Id'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5795525601205520)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721122438Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823699327216139)
,p_name=>'ROOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Room Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5824010774216143)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5823246535216135)
,p_internal_uid=>5823246535216135
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
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5835124298478527)
,p_interactive_grid_id=>wwv_flow_imp.id(5823246535216135)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5835258599478527)
,p_report_id=>wwv_flow_imp.id(5835124298478527)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5835732903478532)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5823345256216136)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5836671150478535)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5823422714216137)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837513308478539)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5823588213216138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5838495219478543)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5823699327216139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5839310680478546)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5823776902216140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5840253999478549)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5823883032216141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5841114777478552)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5823995253216142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5842000556478557)
,p_view_id=>wwv_flow_imp.id(5835258599478527)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5824010774216143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5807822893205579)
,p_plug_name=>'Appointments'
,p_static_id=>'appointments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(5792793477205246)
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
,p_created_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084300Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5809772646205586)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5809280633205583)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5813714096205598)
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5810765397205588)
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5814721974205601)
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
,p_max_length=>10
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5817790670205611)
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5812703706205595)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Doctor Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5811769299205593)
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
,p_parent_column_id=>wwv_flow_imp.id(5795525601205520)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5816748248205608)
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5815735814205606)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Status Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5807956495205579)
,p_internal_uid=>5807956495205579
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5808743271205582)
,p_interactive_grid_id=>wwv_flow_imp.id(5807956495205579)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5808885996205582)
,p_report_id=>wwv_flow_imp.id(5808743271205582)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5810268966205588)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5809772646205586)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5811267186205592)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5810765397205588)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5812212696205595)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5811769299205593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5813273882205598)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5812703706205595)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5814243395205600)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5813714096205598)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5815213368205605)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5814721974205601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5816206819205608)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5815735814205606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5817242769205611)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5816748248205608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5818238489205615)
,p_view_id=>wwv_flow_imp.id(5808885996205582)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5817790670205611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5791215631205227)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715075833Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075833Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5792037953205240)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075834Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075834Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5822076351216123)
,p_plug_name=>'Visit History'
,p_static_id=>'new'
,p_title=>'Visit History'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(5792793477205246)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Visit History'
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
,p_created_on=>wwv_flow_imp.dz('20260715084300Z')
,p_updated_on=>wwv_flow_imp.dz('20260721180339Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822358683216126)
,p_name=>'APPOINTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Appointment Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822886046216131)
,p_name=>'DIAGNOSIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIAGNOSIS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822513995216128)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Doctor Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5823009719216133)
,p_name=>'FOLLOW_UP_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOW_UP_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822962309216132)
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
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822441556216127)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Patient Id'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5795525601205520)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721122438Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822794819216130)
,p_name=>'SYMPTOMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYMPTOMS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822612117216129)
,p_name=>'VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5822291493216125)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5822114445216124)
,p_internal_uid=>5822114445216124
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
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5825726287459629)
,p_interactive_grid_id=>wwv_flow_imp.id(5822114445216124)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715084301Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5825838248459631)
,p_report_id=>wwv_flow_imp.id(5825726287459629)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5826344192459641)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5822291493216125)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5827249570459645)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5822358683216126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5828127284459648)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5822441556216127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5829016109459652)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5822513995216128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5829913063459655)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5822612117216129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5830889760459657)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5822794819216130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5831723207459660)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5822886046216131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5832671810459663)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5822962309216132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5833523408459666)
,p_view_id=>wwv_flow_imp.id(5825838248459631)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5823009719216133)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5792793477205246)
,p_plug_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
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
,p_created_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803472030205549)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5794577875205514)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5794058370205510)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5802466569205546)
,p_name=>'BLOOD_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BLOOD_GROUP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>5
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5796518265205524)
,p_name=>'CIVIL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIVIL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5806469844205558)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created At'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5799549717205534)
,p_name=>'DATE_OF_BIRTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_OF_BIRTH'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Of Birth'
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
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5801490955205542)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5804490123205552)
,p_name=>'EMERGENCY_CONTACT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMERGENCY_CONTACT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emergency Contact Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5805432382205555)
,p_name=>'EMERGENCY_CONTACT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMERGENCY_CONTACT_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emergency Contact No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797582200205526)
,p_name=>'FULL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FULL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5798513869205530)
,p_name=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GENDER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
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
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5800521325205538)
,p_name=>'MOBILE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOBILE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
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
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5795525601205520)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260715075836Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5792846187205492)
,p_internal_uid=>5792846187205492
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
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5793542975205504)
,p_interactive_grid_id=>wwv_flow_imp.id(5792846187205492)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5793632119205506)
,p_report_id=>wwv_flow_imp.id(5793542975205504)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5795024049205517)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5794577875205514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796048956205523)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5795525601205520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797019176205526)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5796518265205524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5798040741205529)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5797582200205526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5799048113205534)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5798513869205530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5800070509205538)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5799549717205534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5801012438205541)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5800521325205538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5801913229205545)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5801490955205542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5802900991205548)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5802466569205546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803991343205551)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5803472030205549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5804974993205555)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5804490123205552)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5805916471205558)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5805432382205555)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5806995264205560)
,p_view_id=>wwv_flow_imp.id(5793632119205506)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5806469844205558)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5792347056205242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5792037953205240)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260715075834Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075834Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5818789139205616)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5807822893205579)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appointments - Save Interactive Grid Data'
,p_static_id=>'appointments-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5792347056205242)
,p_internal_uid=>5818789139205616
,p_created_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5807485219205562)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5792793477205246)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Patient Profile - Save Interactive Grid Data'
,p_static_id=>'patient-profile-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5792347056205242)
,p_internal_uid=>5807485219205562
,p_created_on=>wwv_flow_imp.dz('20260715075837Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075837Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Visit and Prescription'
,p_alias=>'VISIT-AND-PRESCRIPTION'
,p_step_title=>'Visit and Prescription'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260721184011Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721190106Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6763656447328654)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260721184013Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184013Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6764316929328692)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721184013Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184013Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5972082431523141)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_title=>'PRESCRIPTION_ITEMS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(6777208808329383)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PRESCRIPTION_ITEMS'
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
,p_created_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_on=>wwv_flow_imp.dz('20260721190106Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972545788523146)
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
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972776765523148)
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
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972649022523147)
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
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972808238523149)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972488611523145)
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
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972393669523144)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(6780069425329394)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721190106Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5972201075523143)
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
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5972105091523142)
,p_internal_uid=>5972105091523142
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
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6788260771448805)
,p_interactive_grid_id=>wwv_flow_imp.id(5972105091523142)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6788329039448807)
,p_report_id=>wwv_flow_imp.id(6788260771448805)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6788836482448814)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5972201075523143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6789754396448819)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5972393669523144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6790679302448821)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5972488611523145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6791530273448823)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5972545788523146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6792461304448824)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5972649022523147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6793373821448827)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5972776765523148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6794274200448828)
,p_view_id=>wwv_flow_imp.id(6788329039448807)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5972808238523149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6777208808329383)
,p_plug_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(6765148812328712)
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
,p_created_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6779023034329391)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6778559572329389)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6783047486329403)
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
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6785014420329409)
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
,p_max_length=>1000
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
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6782038589329400)
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
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6784022855329406)
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
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6780069425329394)
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
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6781034418329396)
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
,p_parent_column_id=>wwv_flow_imp.id(6767810806329050)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6777346184329383)
,p_internal_uid=>6777346184329383
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
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6778002347329387)
,p_interactive_grid_id=>wwv_flow_imp.id(6777346184329383)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6778190724329388)
,p_report_id=>wwv_flow_imp.id(6778002347329387)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6779579835329393)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6779023034329391)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6780579879329396)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6780069425329394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6781555330329399)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6781034418329396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6782552590329402)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6782038589329400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6783555497329405)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6783047486329403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6784568998329408)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6784022855329406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785597249329412)
,p_view_id=>wwv_flow_imp.id(6778190724329388)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6785014420329409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6765148812328712)
,p_plug_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
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
,p_created_on=>wwv_flow_imp.dz('20260721184016Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6766981074329029)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6766466156329020)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260721184016Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6768863528329062)
,p_name=>'APPOINTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Appointment Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6773821917329077)
,p_name=>'DIAGNOSIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIAGNOSIS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6770843364329068)
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6775813342329083)
,p_name=>'FOLLOW_UP_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOW_UP_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6774805699329080)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6769829151329065)
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6772836238329074)
,p_name=>'SYMPTOMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYMPTOMS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6771832002329071)
,p_name=>'VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date'
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6767810806329050)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6765289476328957)
,p_internal_uid=>6765289476328957
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
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6765985567328991)
,p_interactive_grid_id=>wwv_flow_imp.id(6765289476328957)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6766098985329012)
,p_report_id=>wwv_flow_imp.id(6765985567328991)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6767348852329041)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6766981074329029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6768399264329054)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6767810806329050)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6769389335329064)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6768863528329062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6770388980329067)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6769829151329065)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6771387175329070)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6770843364329068)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6772342499329073)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6771832002329071)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6773399858329076)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6772836238329074)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6774348669329079)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6773821917329077)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6775381675329082)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6774805699329080)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6776306441329085)
,p_view_id=>wwv_flow_imp.id(6766098985329012)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6775813342329083)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6764700903328699)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6764316929328692)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260721184013Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184013Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6786003730329414)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6777208808329383)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescriptions - Save Interactive Grid Data'
,p_static_id=>'prescriptions-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6764700903328699)
,p_internal_uid=>6786003730329414
,p_created_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6776811519329098)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6765148812328712)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Visit and Prescription - Save Interactive Grid Data'
,p_static_id=>'visit-and-prescription-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6764700903328699)
,p_internal_uid=>6776811519329098
,p_created_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13728173615399832)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6982271313364904)
,p_name=>'Patient Summary'
,p_static_id=>'patient-summary'
,p_title=>'Patient Summary'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    FULL_NAME,',
'    CIVIL_ID,',
'    TRUNC(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS AGE,',
'    GENDER,',
'    BLOOD_GROUP,',
'    MOBILE_NO',
'FROM PATIENTS',
'WHERE PATIENT_ID = :P36_PATIENT_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P36_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6982553745364907)
,p_query_column_id=>3
,p_column_alias=>'AGE'
,p_column_display_sequence=>30
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6982795182364909)
,p_query_column_id=>5
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>50
,p_column_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6982437042364906)
,p_query_column_id=>2
,p_column_alias=>'CIVIL_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6982315368364905)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6982609730364908)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>40
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6982826653364910)
,p_query_column_id=>6
,p_column_alias=>'MOBILE_NO'
,p_column_display_sequence=>60
,p_column_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260722054315Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12935939117594281)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_title=>'PRESCRIPTION_ITEMS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(13741065494400523)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PRESCRIPTION_ITEMS'
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
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936402474594286)
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
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936633451594288)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936505708594287)
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
,p_is_required=>true
,p_max_length=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936664924594289)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936345297594285)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936250355594284)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(13743926111400534)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12936057761594283)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12935961777594282)
,p_internal_uid=>12935961777594282
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(13752117457519945)
,p_interactive_grid_id=>wwv_flow_imp.id(12935961777594282)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721190014Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13752185725519947)
,p_report_id=>wwv_flow_imp.id(13752117457519945)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13752693168519954)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12936057761594283)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13753611082519959)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12936250355594284)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13754535988519961)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12936345297594285)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13755386959519963)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12936402474594286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13756317990519964)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12936505708594287)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13757230507519967)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12936633451594288)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13758130886519968)
,p_view_id=>wwv_flow_imp.id(13752185725519947)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12936664924594289)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13741065494400523)
,p_plug_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(13729005498399852)
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
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13742879720400531)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13742416258400529)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13746904172400543)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13748871106400549)
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
,p_max_length=>1000
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13745895275400540)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13747879541400546)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13743926111400534)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13744891104400536)
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
,p_parent_column_id=>wwv_flow_imp.id(13731667492400190)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(13741202870400523)
,p_internal_uid=>13741202870400523
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(13741859033400527)
,p_interactive_grid_id=>wwv_flow_imp.id(13741202870400523)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721184020Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13742047410400528)
,p_report_id=>wwv_flow_imp.id(13741859033400527)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13743436521400533)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(13742879720400531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13744436565400536)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(13743926111400534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13745412016400539)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13744891104400536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13746409276400542)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13745895275400540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13747412183400545)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(13746904172400543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13748425684400548)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13747879541400546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13749453935400552)
,p_view_id=>wwv_flow_imp.id(13742047410400528)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(13748871106400549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13729005498399852)
,p_plug_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
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
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13730837760400169)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13730322842400160)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13732720214400202)
,p_name=>'APPOINTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Appointment Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13737678603400217)
,p_name=>'DIAGNOSIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIAGNOSIS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13734700050400208)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13739670028400223)
,p_name=>'FOLLOW_UP_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOW_UP_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13738662385400220)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13733685837400205)
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13736692924400214)
,p_name=>'SYMPTOMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYMPTOMS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13735688688400211)
,p_name=>'VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date'
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13731667492400190)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(13729146162400097)
,p_internal_uid=>13729146162400097
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
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(13729842253400131)
,p_interactive_grid_id=>wwv_flow_imp.id(13729146162400097)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721184017Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13729955671400152)
,p_report_id=>wwv_flow_imp.id(13729842253400131)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13731205538400181)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(13730837760400169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13732255950400194)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(13731667492400190)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13733246021400204)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13732720214400202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13734245666400207)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13733685837400205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13735243861400210)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(13734700050400208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13736199185400213)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13735688688400211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13737256544400216)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(13736692924400214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13738205355400219)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(13737678603400217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13739238361400222)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(13738662385400220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13740163127400225)
,p_view_id=>wwv_flow_imp.id(13729955671400152)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(13739670028400223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6965124438071199)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13728173615399832)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6981945435364901)
,p_name=>'P36_APPOINTMENT_ID'
,p_item_sequence=>60
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260722052858Z')
,p_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6982116736364903)
,p_name=>'P36_DOCTOR_ID'
,p_item_sequence=>80
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260722053010Z')
,p_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6982060553364902)
,p_name=>'P36_PATIENT_ID'
,p_item_sequence=>70
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260722052934Z')
,p_updated_on=>wwv_flow_imp.dz('20260722054517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6975802371071228)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13741065494400523)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescriptions - Save Interactive Grid Data'
,p_static_id=>'prescriptions-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6965124438071199)
,p_internal_uid=>6975802371071228
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6971156378071222)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13729005498399852)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Visit and Prescription - Save Interactive Grid Data'
,p_static_id=>'visit-and-prescription-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6965124438071199)
,p_internal_uid=>6971156378071222
,p_created_on=>wwv_flow_imp.dz('20260722043757Z')
,p_updated_on=>wwv_flow_imp.dz('20260722043757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260722071130Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722071322Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6995630078935278)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.APPOINTMENT_ID,',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    DEP.DEPARTMENT_NAME,',
'    A.APPOINTMENT_DATE,',
'    A.APPOINTMENT_TIME,',
'    S.STATUS_NAME,',
'    A.REASON_FOR_VISIT',
'FROM APPOINTMENTS A',
'JOIN PATIENTS P',
'    ON A.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D',
'    ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN DEPARTMENTS DEP',
'    ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'JOIN APPOINTMENT_STATUSES S',
'    ON A.STATUS_ID = S.STATUS_ID',
'ORDER BY A.APPOINTMENT_DATE DESC;'))
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
,p_created_on=>wwv_flow_imp.dz('20260722071134Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071322Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6995761340935278)
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
,p_internal_uid=>6995761340935278
,p_created_on=>wwv_flow_imp.dz('20260722071134Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071321Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6998422736935341)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6996902275935313)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071134Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071134Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6998812348935342)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6998037751935340)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6997676676935339)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6997334070935328)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6999656290935345)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6999217372935343)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071135Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071135Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7000008910946016)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_NAME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260722071321Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071321Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6994900847935107)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260722071132Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071132Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260722071844Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722071923Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7001277768978349)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260722071845Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7002070588978484)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PV.VISIT_ID,',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    DEP.DEPARTMENT_NAME,',
'    PV.VISIT_DATE,',
'    PV.SYMPTOMS,',
'    PV.DIAGNOSIS,',
'    PV.FOLLOW_UP_DATE',
'FROM PATIENT_VISITS PV',
'JOIN PATIENTS P',
'    ON PV.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D',
'    ON PV.DOCTOR_ID = D.DOCTOR_ID',
'JOIN DEPARTMENTS DEP',
'    ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'ORDER BY PV.VISIT_DATE DESC;'))
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
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071923Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7002170897978484)
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
,p_internal_uid=>7002170897978484
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071923Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7004570539978502)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7005735924978505)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7004120938978501)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7006157256978506)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7003717379978500)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7005331991978504)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7004925719978503)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7003351394978496)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722071846Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071846Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7006509702982177)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260722071923Z')
,p_updated_on=>wwv_flow_imp.dz('20260722071923Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_name=>'Medicine Stock Report'
,p_alias=>'MEDICINE-STOCK-REPORT'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260722072500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722072543Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7007990049015939)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260722072500Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072500Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7008773573016061)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    M.MEDICINE_ID,',
'    M.MEDICINE_NAME,',
'    C.CATEGORY_NAME,',
'    M.CURRENT_STOCK,',
'    M.REORDER_LEVEL,',
'    CASE',
'        WHEN M.CURRENT_STOCK <= M.REORDER_LEVEL THEN ''Low Stock''',
'        ELSE ''Normal''',
'    END AS STOCK_STATUS',
'FROM MEDICINES M',
'JOIN MEDICINE_CATEGORIES C',
'    ON M.CATEGORY_ID = C.CATEGORY_ID',
'ORDER BY M.MEDICINE_NAME;'))
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
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072543Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7008868854016061)
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
,p_internal_uid=>7008868854016061
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072543Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7010880929016082)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7011271932016084)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7010051613016074)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7010438216016081)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7011628459016085)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7012086956016087)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072502Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7012443862020148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260722072542Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072542Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Admission Report'
,p_alias=>'ADMISSION-REPORT'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260722072810Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260722072845Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7014352193034974)
,p_plug_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.ADMISSION_ID,',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    R.ROOM_NO,',
'    R.ROOM_TYPE,',
'    A.ADMISSION_DATE,',
'    A.DISCHARGE_DATE,',
'    A.STATUS',
'FROM ADMISSIONS A',
'JOIN PATIENTS P',
'    ON A.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D',
'    ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN ROOMS R',
'    ON A.ROOM_ID = R.ROOM_ID',
'ORDER BY A.ADMISSION_DATE DESC;'))
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
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7014443861034974)
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
,p_internal_uid=>7014443861034974
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7017655957034991)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7015654871034980)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Admission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7018002860034992)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7016495248034985)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7016009641034984)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7016895610034986)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7017277665034990)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7018402815034993)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260722072811Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7018897495038440)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260722072845Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7013543006034865)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5528888496731916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260722072810Z')
,p_updated_on=>wwv_flow_imp.dz('20260722072810Z')
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
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5534382528732285)
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
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062917Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5535929758732341)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5534382528732285)
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
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062917Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5535270567732335)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5534382528732285)
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
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062917Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5535613604732338)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5534382528732285)
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
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062917Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5534864656732331)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5534382528732285)
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
,p_created_on=>wwv_flow_imp.dz('20260715062917Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062917Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5539956768732358)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5539956768732358
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5539554389732357)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5539554389732357
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5536302808732345)
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
,p_internal_uid=>5536302808732345
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5537284462732353)
,p_page_process_id=>wwv_flow_imp.id(5536302808732345)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5537785591732354)
,p_page_process_id=>wwv_flow_imp.id(5536302808732345)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5536734723732351)
,p_page_process_id=>wwv_flow_imp.id(5536302808732345)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5538126957732355)
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
,p_internal_uid=>5538126957732355
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5539144207732356)
,p_page_process_id=>wwv_flow_imp.id(5538126957732355)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5538634132732356)
,p_page_process_id=>wwv_flow_imp.id(5538126957732355)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260715062918Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062918Z')
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
