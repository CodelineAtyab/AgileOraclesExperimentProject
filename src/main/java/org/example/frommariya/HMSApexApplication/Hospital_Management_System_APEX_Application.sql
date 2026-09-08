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
,p_default_workspace_id=>8097196562130098
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'HMS_WS'
);
end;
/
 
prompt APPLICATION 103 - Al Noor Hospital Management System
--
-- Application Export:
--   Application:     103
--   Name:            Al Noor Hospital Management System
--   Date and Time:   06:10 Tuesday July 21, 2026
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     21
--       Items:                  106
--       Validations:             14
--       Processes:               24
--       Regions:                 59
--       Buttons:                 35
--       Dynamic Actions:         20
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             14
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  17
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1694230301499674
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HMS_WS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Al Noor Hospital Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AL-NOOR-HOSPITAL-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8F019CB07A61D20798FEC15FB9C718A9912E13FA75E05646964EAFE134E93FFC'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(8179887628483905)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Al Noor Hospital Management System'
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
,p_substitution_value_01=>'Al Noor Hospital Management System'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720121012Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461234081728
,p_version_scn=>'13312935'
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
,p_navigation_list_id=>wwv_flow_imp.id(8180779169483925)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(8181513776483990)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8175851201483886)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8178726056483892)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8176195704483887)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8176483883483887)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8178479368483891)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8177952081483890)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8179073335483892)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8179342266483893)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8177641460483889)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8175520877483869)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8178218155483890)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8176739380483888)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8177345693483888)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8177017422483888)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260712081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8181513776483990)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081730Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8194428113484241)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712081730Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081730Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8195055913484242)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8194428113484241)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712081730Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081730Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8195530252484260)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8194428113484241)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712081730Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081730Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8180779169483925)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:ZYR3mH54d2GNciGwQNE4blQ37JTPxt-SihvuskxAzSQ'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9820565981871760)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admission-report'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
,p_created_on=>wwv_flow_imp.dz('20260715151126Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9748961552490746)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Admissions'
,p_static_id=>'admissions'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,10'
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9784440784508144)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715141051Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141051Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8962396733107108)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Appointments'
,p_static_id=>'appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9498065290169737)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20260715045434Z')
,p_updated_on=>wwv_flow_imp.dz('20260715045434Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8910703779042587)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Doctors'
,p_static_id=>'doctors'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8191950075484107)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8944700117076547)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Low Stock Medicines'
,p_static_id=>'low-stock-medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20260713102546Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9813840564770561)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
,p_created_on=>wwv_flow_imp.dz('20260715145434Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145434Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8933017654269668)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Medicines'
,p_static_id=>'medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9297115547410942)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260714054423Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054423Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9802184877681481)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20260715143944Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143944Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8517496102319149)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(8191950075484107)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
,p_created_on=>wwv_flow_imp.dz('20260713053254Z')
,p_updated_on=>wwv_flow_imp.dz('20260713053256Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8711651328394404)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients-2'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9331795131161504)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260714074928Z')
,p_updated_on=>wwv_flow_imp.dz('20260714074928Z')
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D099454D599FE6E2D5D5D55BD2F743720FBBE4A102180B22F3A82133748A2741B4D3C2666929C9388471DE84647C74CCCA8397194380CA0';
wwv_flow_imp.g_varchar2_table(2) := 'E31857105C9066736904155040501659BAA1A1B7EAAD7AA9E5CDFD6F5561D3A957DD5DEF5575BDEA57E7FDEFBDBAEB7FBFFFABBBBF5706E81F1D010508E80452009E1E15D009A4B34011023A8114C1A747D609A4734011023A8114C1A747D609A4734011';
wwv_flow_imp.g_varchar2_table(3) := '0261134851AE7AE4B841402750DC98B27B0AA213A87B708F9B5C7502C58D29BBA7203A81BA07F7B8C9552750DC98B27B0AA213A87B708F9B5CA34FA04E4077FFC69F2517EE28C87D645BFEE055EFDF3EFED16D774E2D2A2E9857B4A560518F105E562A33';
wwv_flow_imp.g_varchar2_table(4) := '959D30202C08934E4017F520DD4A2049022BDC5230A2A878597ED1D6FC678B8AF33FE7D756BBCD53C7DCD279AF17C725A3F180C7EBFD0492F4010CD2DB3D427859A9CC5476C280B0204C081BC2A8706BC15F8B3866841D611875D6B4C930AA047AECDD3B';
wwv_flow_imp.g_varchar2_table(5) := 'B30B3FC85F5C585CF06FABB6E66F5D559C5FC30CD211486C2DD7E95E4898C8AF662EFA111C013361C420FD121C33C28E30242C39B91EA5DAB9F0FDBB3282478D8C6BD40844BF1497D93395177E3993A40725602E2F522A17FD508640AA1FCB8778EDBC1C';
wwv_flow_imp.g_varchar2_table(6) := '26D754C25A59929D8F1D71023DFFF92FCC455B0B7ECE7F294701B6018C4D85FE891402D398C436AD2A5E76A4A838FF2EC23E521905D28D28811EDDB6AC4FB9A3653720ADE6190EE3A21F5141800D878417CA6B5A4AA8DB10C92C2346A0C2E23B4779BC6C';
wwv_flow_imp.g_varchar2_table(7) := '0F2F08F56B2259063D6D7904AE7299BDBB576DCF1F2D1F44994F4408B472EB1DD399E42DE1AAF5E1A2D2A12713260283250F3E59F5C11D33C28C1F329AEA04A29AC700C3169EABDE41E620C4C8912A31C3BB91A889542550E1A65FD878CDF31A07CDC645';
wwv_flow_imp.g_varchar2_table(8) := '3F620B019BE4C6DFC9466AAAA52A8198A5F559AEDC282EFA118B08308CF6DB4835ED5423D0AA0F0A0AC0A47CD534D3138A0C02DC46C2562AA5AE0A81FE5C72AB5532487F5649273D9908232031E949B59A325508D4D060CFE7C3F5F408975B4F5E3D0432';
wwv_flow_imp.g_varchar2_table(9) := '0C96D6656A24A7984092C41B2EE6FDAD1ACA44280D3DD92008F05AE85FC87641BCBAE4A4984045DB0A16007CE613FA4763088CF4D94E99D68A09C424E8B50FB4F951C3768A0854B8A32091AF73CDD3267CBAD6643B1A002941421181E0C6149EB9B23478';
wwv_flow_imp.g_varchar2_table(10) := '02FAD16D0818EA1AED9395E4AEC8F83C32114849FE7ADC6E4640A90D79FCF04B2041D440E127A0C7EC760494DA306C02F98680D2F46E4720820AF48CA42545AD48D8042ADA5990C301CEE4A21FDA4620E7B1E26561DB316C02192429EC4CB58D77FC69EF';
wwv_flow_imp.g_varchar2_table(11) := '36B0DC704B153681E065FA968D70518FB5780A6CA980401E9D40B1468470F5F1866FCBB009C40C466BB8FAEAF1620B01090653B81A854D208F143E6BC355568F1719040C0616F6C39C61138831835E03C9D95363EE4A2A0305040A9FB5B188AFABD98DC6';
wwv_flow_imp.g_varchar2_table(12) := '9A66D45538E1B8D0809AF3F5A82AAB135253DE80DA8B8DA8AF6E42535D0B5A7958AF974FC1C56241C2D0494965103681E0F1BAC3D03566A2783D121A6A9A0441CE1FAF46C5D95AD45636A2C1D10427274953432B5A9C2E214DF52D68AC6D467D9513359C';
wwv_flow_imp.g_varchar2_table(13) := '5C953C6CF9896A5C3CE5405DA55384899982455991F009146545D5CAAEB9B115D5E7EA517EB2FA92F193AC4918DA6F04268E9C82D993AEC38DD72EC51D0BEE01B9A7DAD3F0FB9B1FC5DDD7FD0E375F7B0766FDE03A8C1F321119299970BB3C974878E164';
wwv_flow_imp.g_varchar2_table(14) := '8DB897E2A866EA0CE63D8640548B5CF8AE46908748D42B2317578F9E869B67DD8E25B3EFC28C710B3161F0140CCA198EEC945C58CCDF77F1AC663BF252FB6154EF1F60FAB0F9587CD5EDF8D5F50FE3978B1EC082498BD13F77103CBC46A3DA88F2A09AAA';
wwv_flow_imp.g_varchar2_table(15) := 'A71029EE0944CD50C5995A503FC6E3F662C2F049F8C9FCBBB178EA528C1B3809E9F62CD91F1AF57224D03978904C7B0EAE1E3C0BCB66FE1A7FB8E551CC9BB408268359F495A879A3A63078CCF8718D6B025167983AC2AE1637865C310C4BE6DE898943A7';
wwv_flow_imp.g_varchar2_table(16) := 'C19690D4290B321E8A81F173C747A2C986298367E3BEC50F63E2F029A24612F997D6219E3ADCED91884B02514D5371DA213AC3D91939F8D18C9F60E6F8EB919C18F9A7ADED09C9B87EC212DC7BC3FD189837182D4D2E54F21A90746A0FFE3F7ED79E4BDC';
wwv_flow_imp.g_varchar2_table(17) := '11A8A5D105228FABD5833143C6F3A6EAC7C84CEE1575CB6425E5E2F619F761FAB8D9A2B34D2337EA74475D910867185704A2A177D5B93AD1644C1A3D155346CCEA6403143994678D5A843913FF095403559EAD13648A5C6ED14F396E08449D659AFC2308';
wwv_flow_imp.g_varchar2_table(18) := 'AF993007E3075E4DB75D92E6D6269CAF29C5E133FBF1D1A1AD68686A406DA3039BBE7819BB8F6FC3B18B8751EDACE8529A1478EAD0B9B87ECACDF07ABCA88A3312C50581A8934C733B64AC6B7F3017C3FB8CA5DB4E494D6325767DF51E5EFAE0392ECFE3';
wwv_flow_imp.g_varchar2_table(19) := '9D4F5EC7EEAF76E19B53872FC53F70EC33147FBE19AF6C7F017F7DFB313CF1FA72ECF87A331A5AEB2E85E9E866E280E9B8E187B7C2C349545D562F6AC98EE268C15FF304A2F916228F24491839682C86F51ED329DC8938DBF66FC61B3B5EC2B133DFC02D';
wwv_flow_imp.g_varchar2_table(20) := 'B990946E45669F1464F74B43CEC074E40DC91042F7E496D93B05B6140B5C1E173EFE6A1B9E7AAB089BF6FD1F2A1ACEA3339F09FDA7F26984AB453316A82D3B132F96C3689E40B5158DA0FE456E561EA68D9AD321D6754D0E0488F35DD971D85313913320';
wwv_flow_imp.g_varchar2_table(21) := '0DBDB8A464D960B19961B618613419C0181342F7E466B19B91969384DCC1E948E757A399E1C0B77BF1DCE63F62FBE1B7C11725D1D1E7BA2B6F435E565F50934B138E1D858F757F43AC2B184A3F32024DD659136D98377171A8A0C2AFA2AE1C1B76BD0C22';
wwv_flow_imp.g_varchar2_table(22) := '4E22274AAFFE6948ED6587D16C14FE9D3D31C660E5355120BEC168C027077760DDF66750DF521B3219233362C93577C3966817138EB4301B3242E73CBB2D94A60954CB173609B96BAE9C73D9D203B9B597F33567B199F76F5ADDAD48EB95840CDE549912';
wwv_flow_imp.g_varchar2_table(23) := 'BA469CF669D2F7400D464D5B59C5193CFFEE1338597184BC6425D9928AA533EF16B51BADF2CB06D48087660944358F9B2F4D64A565A35FD6E090509FAE388EF74ADE82247990D53715B6544BC8F05DF56406066ADAD27393D1DCDA8CFFDDB61AC7F9882D';
wwv_flow_imp.g_varchar2_table(24) := '543A7DD20688196B1A00386B5B42058D693FCD12A8A1BA49003B79F4B5E22A773A76EE6B6CDDB3196012B2FAA522C16A42A88F87AFB0D3BE1FEA9F5C263C3F8FCB1B2A2AACC909BC039E0A0327D41B1FAE478DB33264F81F0E9F236AA1FA6A67C870B1EC';
wwv_flow_imp.g_varchar2_table(25) := 'A94902D1A62E373774EFECBEC84BBF4216DFEA860AECDAF701180F91C14750A64EF4751A6A9AC5BE9F7A4E98CBA4CA29B66BF0A4421ED42CA6E725C3C59BCA573EFC1B5CDE56D9F069D64C5C397492180434D5CB87934D20063C344920DADC45D84D1E3D';
wwv_flow_imp.g_varchar2_table(26) := '832EB2B2E7EB0F851F75943BAA7944C036A7A5B3EEC2AF163D2884EEDB7875784B23B9946C3B2A1D17F1DEBE5743869F3682FE32046874F86AD4908163D0537304A2213B8D5CB2D2B29099942D0B69B9A30C6517CF8A61B92D3551365C7B0FC9BF7BA377';
wwv_flow_imp.g_varchar2_table(27) := '5A7FF44B1F22242FAD5FFB601D7EB7A725C26235E3CBE35F849C274AB7656358BF51629BAC9BAFDF7598708C05D01C819A1B7C557DFFBC2121A1FCECC8C7C23F95D704E2A61B4E34AF44D9961CDD46175919D667B4F00B944D7C89D24969369A2310ED2C';
wwv_flow_imp.g_varchar2_table(28) := 'A442F7CD1E4097A052EE28C585AAF3A0A135F54982068A82A339D1C43BD6167C757C1F1C4D5590FB0CE8354C78353B5DE2AAA593A60844CD0B355F16B3055929B9B23897569C127E3447236EBAF1E4D34142C9D162592DD2AD59484B4E476B934B736B64';
wwv_flow_imp.g_varchar2_table(29) := '9A2290BBC5F720C8A0BE43C5C84ACE22A5174E8BA134D5007261A2E54E9D778391E1E0897D08B53D7664BF7142257ABC48DC68E4A42902B95A3C02D6ACB41C710D76A299E64A47051293D49D2C0C965767DD12ED0920BD6A9C15B25172D27B0B3F9A9E10';
wwv_flow_imp.g_varchar2_table(30) := '371A39698B40ADBE1AC86AB1C9C24B4B16E499C0FB1F74EDAAF0652ED928D47C5E36B9C8E7863AD3F10DD484176ACB64D3B65B92859FA735F464A5081443274D11C8CB972E083B6B829D2E41E57CD559E16E34AB5F34176F422F9B5CE4938D9DD99661E2';
wwv_flow_imp.g_varchar2_table(31) := '2BFBA454794D295D828ACD9224DC3D6E5F2D2BBE68E0A43ECA112C3475A229795B08023534D55310D0160C7113E2445B41AA4AEBD05602354AB0FECAB8C113C5C462608231273D8FF76B4264E0F732987C8BB65575F24D98CDFFA448A08CFEA8B17BF16B';
wwv_flow_imp.g_varchar2_table(32) := 'A62D02F99FFAB4FA7FADFE325C76311B7D6B5D9DA9811A1DCDA0A726DA0AED18A40459906E7AAA3D5D4C2C062618134334A594464002BA180D3EDD02EE6DAF764B8AF84A1BE4C48D464EDA2290FFE72949F2FD0493D1DC25E8FBE70EC613CBD65C92E963';
wwv_flow_imp.g_varchar2_table(33) := '7D4B0B5D4AA483C0CCEF6F32C9EB6664BE5A4AF297D11F25E62F9A221033F84CD1EC925FBD0E1028D05F8A050BD0F20BE911A81DE9BEBDB8BDBE4944C67C656CEF1FABDF354520A3BF334A4F4FC8016AF237611EB77F514B2E6014DD3DFECEBFC998209B';
wwv_flow_imp.g_varchar2_table(34) := '6B5D738DF033F8CB28BE68E0A42D02F9B7633485A8812C0956013B3D42236E62E014D0252BA597AC36F5CDBEADB046A3A64C024D697BA9066A91DFFAD037CBB746467336B2D68AB2474097A1B9F24F8CD4391D42AB40875B7CD1C04953040A6C08ABAE97';
wwv_flow_imp.g_varchar2_table(35) := '1F0EA7D933909A9486C0703C166CD05CDF8A6C3E7B6E4FF04D1606D3A9CEE96BC202938EC1C2C4A25BD709D48DA5A0D965C618CE9CFF2EA41683AF182E9EBDA289BF9001A3E049B50F4D0D0CBB6254C8DCCE5E3C25FCCD16F9A1BE081063274D1188A666';
wwv_flow_imp.g_varchar2_table(36) := '6871D2515F03674B832C9403727C7B85E89D876D03D163406D270DC9EF42F539ACD9F9E42539F4DD17E48C3776AFBBE4F6E6EEF5C2EDE0C92F2EB9519CF22ADFD244DB34290F11D87F72F2B926BA1DD647BEF96A763B71ACF408883CFCF741C13523DA22';
wwv_flow_imp.g_varchar2_table(37) := '108795B68BF20B4A2B7DBF58BA6F2F1949D9E2F574CEFA16B8DBECF2F3B8BC974D1C523C1AD17D73E63002E268F03525A7CB4F5C72A37B0A4B7E8170746D713593F3656906465CE44179930E83FA0C43DFB441E414548E951F12EE8976F979221120064F';
wwv_flow_imp.g_varchar2_table(38) := '1A24906F285C5A713A249C53C6FAF64BD36BE70201E9719EDE43331149A14D6C81FC68A904BCDABC6EE22D08F5397CFA80F06E1B573868E0A43902992D4698138C38557602CED610CD58AFA11839680CE87D88F40C59B46DE1ACE5CB244E17268F9E8E0C';
wwv_flow_imp.g_varchar2_table(39) := '5BB66CF62DEE261C3B7B0409BCEF63F44F53C8068E410FCD1188304CCAB0C2CB97330E1CDF4B5F6565F2F099484FC9003DC1DADAE4DB0A221B58450FEA38D313A709A6045C336241C8943F3DBE43F8DBD23ABFF15F448891932609644DB680E6848E9C3C';
wwv_flow_imp.g_varchar2_table(40) := '8886E63A59284D4613E65C75031833A0FA5C1DDCAEC86F95A03CAACBB84E3CCFDB66DE09AB597EEB49636B3D3EFE6ABB288B169B2F023E8A04A2ECD4137AE281B65C7CF16D49C84493F82A37CD0B79F94A3EBDAB90F61D878CA0C0934660948797AFF5DE';
wwv_flow_imp.g_varchar2_table(41) := '3A631906668D0899DA8E439BE1F57A90CC6BD4900163D853B304A25A889EBB3A76E628CE559F090AB1DBEBC6FB9FBD899AFA6A0CE93B42BC82B7B2B40EB48D236804058E3465406F8425A22E9EB604C373C7874CADA2E11CF67FBB57F4E7BAF2DC5AC844';
wwv_flow_imp.g_varchar2_table(42) := 'BBC153B30422ACE88953BA6EFFFC5DDEA16EA4DB4BE2E1BFECAD9F6F4479E5398C1974257EBDEAD5AB0000084D494441543CFD1EDC7BC303E8973300343A2263D330FB5284306F280D4A8BFE26C1624EC44DD7DE8EF1574C0E999ACBD382374B5E1461D2';
wwv_flow_imp.g_varchar2_table(43) := '7293C555AB274D13889EF9A2B78AD11B31B6EF7B075EFF5E1A2FEF6017EF7B5B3C993AA2FF18DC78F51DC23E2989E9B863D6AF3173C24250A7FAE26907A8B3EB09A36F4471E83DD09406355DF47429ED541CDD7BA2C84BEE44CDEE6BBBD7E06275399233';
wwv_flow_imp.g_varchar2_table(44) := '6D30F351A55C582DB86B9A400430F5856889836A9AFD27760B126DDFBF1967CB4F8B66EBA629057CC5F8FB621AF8B76B862FC07D8B1FC2B4B1B3E171325C38E510AF06A639232283ABC5235E78409BBB483C6E2FC88DFCE8DF7CE835C21487A6076C161B';
wwv_flow_imp.g_varchar2_table(45) := '6EE1FD9D25537F8E506B5DA42BC98EC39B70A2F45BD084A896FB3E541692EF91A56F1A95C09B37F61FDD8BF7F6BC8653E74E6260EFA1B875DA5D30FA77FAB52F1ABD1963F6E845F8ED8F0A71E3F4A548B7678BB76F50735471C601FACF0BFA171F12BA27';
wwv_flow_imp.g_varchar2_table(46) := '37F2A37FF3B19A93F8FCCE35F8E9DC7BF09B1B0B31326F42FBE4837E3F5CF685789319D59C1979DA6EBA02058C0B02198C0C197D9241EFE539CFFB3CD97CE57BC9F4BB61621D2F4C9A0D0918D77732EE59B01CBFBBA9083F9DF30BCCE543FFC9A3A663E4';
wwv_flow_imp.g_varchar2_table(47) := '8071183DF04A4C1D330B0B27FF3396CCFA19EF472DC76F161562FED89B30888FB24C86CE2D3F1C39B70F6F7EF492D031B3770A9881056CA0E9AB1608D4298069AB07BD97870257382EE0D363DB41FD0DFADE59494A48C1A0EC91F8E19039983FEE66DC32';
wwv_flow_imp.g_varchar2_table(48) := 'E54EDC34391F73C62CC6A48133302C672CB292723B9B9C08E78517DB0EBF8DD73F7C1144F0CCBE29309AE30676DE2110C58C8F13F52BB2AE481586DAB97F0B5EF9783568A5BBBB4A4779BFFCD1732839B843E844BAD18A7B77E913897CE3E7A7E047873A';
wwv_flow_imp.g_varchar2_table(49) := 'D464289AA93E5E7A147FDBF227543694FB7DA377A13C29EFEFCA8EF1919649BC5E8FFA3ED1D3203A39C51D810836325476FF34D0F200ED1D5AFDEE9FB0F5E05B68E8E015BC1457A9D4B5D460CB97AF63F53BFF01CA3B89AF7111A1A989559A762CC68F4B';
wwv_flow_imp.g_varchar2_table(50) := '0211D0D4DFA037A766F649010DC43E3DFC219ED9F808B61DDA085A83A2306A4A6D7335DE3BF01A9ED9F028F61EF904860403883829D976B0F8E82F07852B6E0914282DF58B7A0D4803BD82D760024A0EEDC4D31B8AF0F247FF85CFBEDB852AE7C540D02E';
wwv_flow_imp.g_varchar2_table(51) := '5FAB1A2F62EFC99D7871D75F04713E3F5A0283113CAF2464F74B0535A75D4E546311E29E40017B58931340CD1A0DA1136C469C28FB16EFEFD98067DF7E1CCF6C5E85E2831BB0FF4C098E5D388432C729D436558B37ACBABD2ED436D7E07CED19F16F3D07';
wwv_flow_imp.g_varchar2_table(52) := 'CEEC16B5D85FDE7904CF6E7A1C5BF66EC4A9F327916833814681F4BF1AD6E4D879B54CA0FC91BAC63581828166B19B85A173076788BF39B02625A0A1B916BB0FEFC2E692D7F0CA8EFFC69AF79F063577FFFEEA723CFEEAFD7866C32ABCF0DE7FE295ED2F';
wwv_flow_imp.g_varchar2_table(53) := '6053C9ABA21673F0055AAADD52791345A4C9E04D25A5152CCF7876EB71040A1893FA48F4FAB940AD2148D03B19B43442EE440E5AED6F2B54B3903FF5ABF28664887FF6B1F34EB251634F93063050E31A3681BC4C72AAA140ACA44124A0378925A55B45CD';
wwv_flow_imp.g_varchar2_table(54) := '4424A149BFB6929E9B04F2277231163F3D6349F2CA3FA9D98181C226909119E38A401DE014D7DE4A6C19368124AF276CD6C6B53534583825B60C9B407CBCAAD7401A244B50950DE1B7260A08145F7DA0A0C0F6144743F8B60C9B405EAF317E9BB09E421C';
wwv_flow_imp.g_varchar2_table(55) := '7F3995D8326C02C1E8D59B30BF01347F5160CBB009742E39A18A03E77B389CDFE887661168F6DB32AC02844DA0D557AD76016C0FF48FC611607B7CB60CAF186113C89FDD4EFF55BF681701453654442009509439F44FB723A0D4868A0804133EE508E8FD';
wwv_flow_imp.g_varchar2_table(56) := '200E82468F66BF0DC3565F11810A67ADE5E4611BC3CE3DEE226AAD406CA3CF86E1EBAD8840942DAF029FA2AB2EDA43400DDB292650E1BCB5BC19D34763DAA30FDBE3B39D32CD151388B2670C7A2D046D7DD4B2992A04F21A4FBD0E09A5DA82B0476B5B26';
wwv_flow_imp.g_varchar2_table(57) := '6CA60204AA10A870D64E3798749F0AFAE8494403012FBB57D84C85BC542110E9B172DEFA8D60EC69BAD7258611E0365AB960ED26B534548D40A4506E5AC21FF8F5332EFAD13504A2129A013BFD36522D3F5509740F5F1F93DCEC36AE9D838B7EC4160217';
wwv_flow_imp.g_varchar2_table(58) := '8CCCBC946CA4A65AAA1288142BBC6EED29066936184E41FFC40802D269E6312E7868EE0B17D45648750291822BE6ADDF6F867415AF328BE9BB2EDD870063D27633C3C4150BD77C19092D22422052F4C1B9EBAB46D43817F2D9CEE7E8BB2EDD8000C39323';
wwv_flow_imp.g_varchar2_table(59) := 'AA9BE6932D22957BC408440ADF76DB6B9EC279EBEE6512BB977F6FE5A21FD141A0894FAB2C5D3977DDEFC90691CC32A2040A28BE62FEDAE78C06691093B092BB9DE5A21F9140404CE64A851CEBA12BE7AEFF7B24B2689F66540844993E3C677DD98AF9EB';
wwv_flow_imp.g_varchar2_table(60) := '568DAC710E8424DD04B02D00780BC7CFFA1136023CA2870F58685EE786910EE7003E1F57445873F7A81C512350A03454A5AE9CBFFEAD95F3D62EB4C0922E79318313EAB790D83A1EE620173717FD088E00617390FFEAD633B0DF31C93B33D16A4CE74DD5';
wwv_flow_imp.g_varchar2_table(61) := 'E295F3D6BD43D8068F1639D7A813A86D511E98B7BAB670C1BA0F39A19E5E397F6D0107611C1773A3D3982299589EC18021CCE3B9D268304C0363F3E1658B7B84F0B25299A9EC068E0161419810365CC6F17E65FE8A796B9F5A31FFC55DCBA7AFA96F8B69';
wwv_flow_imp.g_varchar2_table(62) := 'B4EFBB95407285FDE38D6BEA0B67AD2DFFD739EB4EAC58F8D2970FCFF99F929573D76EA529F81E21BCAC54662A3B6140581026727875A77B4C12A83B01D1F3EE1A023A81BA86971EBA1D023A81DA01A27FED1A023A81BA8657FC8456A9243A815402B2A7';
wwv_flow_imp.g_varchar2_table(63) := '26A313A8A75A5EA572EB045209C89E9A8C4EA09E6A7995CAAD134825207B6A323A817AAAE5552AB74E209580EC39C95C5E529D4097E3A17FEB22023A81BA08981EFC7204FE1F0000FFFF5A0DCC46000000064944415403008C3F4FB71C3EB5A500000000';
wwv_flow_imp.g_varchar2_table(64) := '49454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8182849917484010)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D07781CD59DFFCD6AB545DA55972C59EE05578C8D710BEEC60D836DEE80700E299414BE842490E42E970B5CC29770E14B087704C2072424';
wwv_flow_imp.g_varchar2_table(2) := '600E0818CE600C06176C03C61D1B77D9C255C5AA2BADB492B6E9E63FBB53244BD6CC6AB5DE99792BBD99376FFEAFFDDEFBBDF77F65662CBFDEF8CD7666180666AD0316B01F43C0C408300298B8F059D6014600560B4C8D002380A98B9F65DEC4046085CF';
wwv_flow_imp.g_varchar2_table(3) := '10602A10AB03264780F50026AF0066CF3E2380D96B80C9F3CF0860F20A60F6EC330298B106B03C4B0830024850308B191160043063A9B33C4B0830024850308B191160043063A9B33C4B0830024850308B1910E89C474680CE88B06B5321C00860AAE266';
wwv_flow_imp.g_varchar2_table(4) := '99ED8C0023406744D8B5A9106004305571B3CC76468011A03322ECDA5408988800A62A57965995083002A8048A89191301460063962BCB954A0418015402C5C48C8900238031CB95E54A25028C002A81D2B5184B7CB7083002740B0DBB6106041801CC50';
wwv_flow_imp.g_varchar2_table(5) := 'CA2C8FDD22C008D02D34EC8619106004304329B33C768B002340B7D0B01B4640A0A73C3002F48410BB6F680418010C5DBC2C733D21C008D01342ECBEA11160043074F1B2CCF5840023404F08B1FB8646C0C0043074B9B1CCC5090146803801C982D12702';
wwv_flow_imp.g_varchar2_table(6) := '8C00FA2C3796EA3821C0081027205930FA448011409FE5C6521D27041801E204645205C312A31A014600D55031412322C00860C4526579528D0023806AA898A0111160043062A9B23CA94680114035544C500F08684D23238056C434C8075A8368F6B4A2';
wwv_flow_imp.g_varchar2_table(7) := 'B1DA07CFC526D4957B5173A111D5673DB8F8653DCA4FD60AA6B2B44EB8AE3AE341F5B9064186E47D0DAD08B40535C4C844B522C008A015B16EE4C3C1305A9BFC68ACF1A1E67C032A4ED5A19A3F375437A3C9D3025F631B5A9BFDF0B70410F087100A85A5';
wwv_flow_imp.g_varchar2_table(8) := '90C2E176E13A180809159E6448DE53D50C22048555CB13C7CB87ED6F618490808B838511A01720B6F315975AE91ABED5AE3C5D8FBA0A2F9AEA5BE0E75BFEF6F6F65E84DCD12B85D5C613C7CB875D73A101957CEF413D04118AEE759466575A106004D082';
wwv_flow_imp.g_varchar2_table(9) := '5654D6CFB7C25401858AC8B7D2FE2ED41487CD81FCAC020C2D1E81AB474EC28C09B371C3D4655831FB0EAC5A742FA68CFB4A343460C1E41BF1C02DBFC2BD4B1FC0ED73EFC292692BF195F173316EE83528CE1F887447BA244B9630DF7B500F412A556569';
wwv_flow_imp.g_varchar2_table(10) := 'BDA05E05F95E85EE31A30D018B3671F34A8743ED42EB4E7A3AB5C254013BB7BEAE3437268F998EDB177C0B772EFA1E56CC5C8505936EC2B45173306ED0B518523012F9198548B3B9C0F17F229A6477D93351943908A30A2760CAD03958307E05FE69DAB7';
wwv_flow_imp.g_varchar2_table(11) := '70F78207F1E0CADFE0472B1FC6C22937238F2795E88FCE94064A4B153FAE2042D0B883DC995187808108A02EC3B14879EB5A78B5A34ED0EF494F5786916A4DC598A157E3E699B7E1ABF3EEC6A4E1D391E1CC528AC4C59EE1C8C6F4E1F371DF927FC77796';
wwv_flow_imp.g_varchar2_table(12) := 'FD94EF21E621AD53CF402A118D3B680CD2D61C884BBC460F8411E03225DCE60BE022AFDB7B6B7D1DA4A8C51E543414374C5986AF2DFA2EAE1FB700FDB28AC1715C07B9BEBAE8E72EE67B88E57860C523F8FA0DDFC33523A7808828C6476390DAF246D496';
wwv_flow_imp.g_varchar2_table(13) := '3522C40FCE457776BE140146804B31112A0DA9135D5520D2E96F5BF04D2C9ABC0243FA8D84D562ED2284C43859380B86E48DC2F2C9ABF0E395BFC29C898B61B3DA20FE88C0A4B2D1C01CF11B938BC11BE2CC08D0A918692A932A0DA913CA5B3999B9583E';
wwv_flow_imp.g_varchar2_table(14) := 'EB7641A7EF0B154719572C7687350DB3472FC10F573C8C59136EE07B840811688C4053B33446A0C17B2C611BD90F238058BA7C0BD9C0CFE8D05426551AD1399DD7B3E75DB704B7CCBC130599FD45E7A43D3B53D33177EC32FC60F97F60CC9009523A69EC';
wwv_flow_imp.g_varchar2_table(15) := '4283771ACF488ECC024600BE12909E4C95A3995F79E52F857F6B4A2AA6F25395B7CDBF0BC30B47274CBF1722D77AE842DE65CBC0ADD3EFC2BFCCBF1719E99992048D6748BDA3350CC9D1C416D31380565D696B020D1CC57A4015E69FE7DD890943A75E51';
wwv_flow_imp.g_varchar2_table(16) := '1D5F4C4F6FCE230AC6E17B37FE1CA3078F978221F58E5698430179355ABA69328BA90940FA3EEDCDA1AD0862B90FE837082B67AD82DB21B79AE23DBD9EED290EDC3AE31E2C9EBA82EFC922451E0C84507DCE236CCDD06BBEE291EE081AF108496761502B';
wwv_flow_imp.g_varchar2_table(17) := '585FE1ED90EA09232763D175B7F03329F60EEE46B8A009DAA9C3E6E29E253F42465A84DC44FCDA32AFB075C308798C250FA624002D12D5977BA599419A4EA481EED451B36049D05C7E2C85150F3FB4DA7CEF929F2037234F088E06FCB5171A854D788283';
wwv_flow_imp.g_varchar2_table(18) := 'C90EA62300CD8DD322113FE92314B5C3E6C04D336F1506BA82439C0F3E7F134E941DC2EE131FE3A303EFE1DDCF5EC73F36FF15BB8F7C2AC5B469DF7A3CFDDE6FF1EA27CF62C3C137B0BBF4239CA92D812FD024C9C4D3926E73E3AE853F46516EB110AC9E';
wwv_flow_imp.g_varchar2_table(19) := '492064A017075311802A3FCD80887865BB7370CB9CAFC57D7AB3BCEE9C50E1DFDABE1AAF7CF8177CFCF9667C71721F4A2F94A0B2B61CDE968EAA17A5A7AEB106A72E1CC79E633BF0C19E77B07AE33378FCCD87F0E4BA5FE3ED3DAB71A2F22082E1F86D6F';
wwv_flow_imp.g_varchar2_table(20) := 'A0E9D2AFCFFB3E06140CA6E8110EB723D21384846BB31C4C4380103FE341959F5A3B2A5CBBCD8EC5D35622DDEEA6CB5E9B16BF0F5F9CD98BD7F8D6FDBD1D6F0915BEAEB1B6D7E136347BF045E97EBCBEF5EFF8FD9BBFC0BBFB5FC345EF855E874B01D8AD';
wwv_flow_imp.g_varchar2_table(21) := '4EDC39E73EF4CB8DAC6F1009EACA1A110E85E9B6298C6908505FC9EBFC8A3DFA0BA7DE0C9723A3D785EC6D69C0B62F36E07F3F7C0EBB0F7F82A62E5A7747BA0D19B969C82A7021A7BF1B790333D16F48368A46E40886ECE446F74886641D6991955C6502';
wwv_flow_imp.g_varchar2_table(22) := '83A1203E2FD985E7D63F8E75FB5F85B7AD41793B267B6A8A1DAB667F571A1887F8CA5F57D137AA574C09EC634F963E0E3F2982A7AD00CA79FEE957CF4661D6805EA52D14E62B63E94EBCBEE5459C3C77BC4358160B87B40C3B728ADC4205A78AEDCA7122';
wwv_flow_imp.g_varchar2_table(23) := '2DD30E2283CD61454AAA859F92E404437672A37B2443B239C56E1041280C0A8BC2544672A064379E7AE737F8ECE426A5734C76973D835F30FB0E52AD11D2D1DA08611653603AF364D1597A352797F47E613358D4E7F0815761FCE06BA357B19D2E7ACAB0';
wwv_flow_imp.g_varchar2_table(24) := '66DB4BD8776C27DADB657521D56E452EDFC2170ECF41563F171C2E9B50C1638B05825F0A83C2A23089481407A2BF20DF236CE207D0CF7EF818AABCE551D7D84E05AEFE5871FD1D9267C28CA68A2507835A744C809E4B84745A4FA5DC9DE764E662F6D58B';
wwv_flow_imp.g_varchar2_table(25) := '7AF6D88D449857A1F6947C8C759FBC016F73A324654D4D115AFBFC4199B0F3EA8E7423CE16EA21280EEA15284E31F8AABA4A3CF7DE1FB0FDF8FB08B5074567CDE73145933061E475923FC2CEE8E3014313C0C3EBB2215EA7A512B5F383DE4553562025C6';
wwv_flow_imp.g_varchar2_table(26) := 'EDCB6DC1366CD8F3160E96ECA3E0049362B58074F6822159426B2F3826E040BD02C59955900E4A0345D9CE9373DB810FB1FAA3A7D11A6C21A798CCD289B722CB9D23F8A506C4E8AA90610940DB1C5A7D7EA120E9306DFCEC9807BDF5CDB558BBFD659457';
wwv_flow_imp.g_varchar2_table(27) := '9DA7A004438354AA84A4B30B0E57E09096E940C1609E7C8A01F3F9AA33F8DBA6FFE607C89E985264E307C5B7CDFA96A07E5100F4B8A5915FCD625802D0AE472A403299AE2C8C2C1A4B56CD862AFFDBDB5F83D727CFDDBB739CA0412AC771B8D23F8E1F70';
wwv_flow_imp.g_varchar2_table(28) := '535A5CD94E2929359E2AFCE58327E069A995DCB4580A330662FAF8399217CFC566C96E348BC56819A2FC50EB4FEFDE213B99A9E3664A2D1A5DAB3534C5F9DEA76B100C4516A0388E4376911B6E7E4A536D188992CBC84B13D2C645236CF235E2A54D4FA1';
wwv_flow_imp.g_varchar2_table(29) := 'D92F13377A4BD569D6A84570D89C822CF500D4130817063B580C961F213BCAD63F2FBB0083F34708EE5A0E2DFCC2D6FACFD6A0C5DF22784B49B1F0F3F71970BA6CC2F5153D741339A58DD6132C7C5A498416D1566F799A1F13747CA699EEF56468916CC1';
wwv_flow_imp.g_varchar2_table(30) := 'E46592981253C9D10016C311A073EB3F6DCC2CCDC544B33D1BF7BE83A6A8DAC3719CA0F228A720B506DA5CDF8ACA5375C2AB10C557227675261992D51ABE289FCAAF31E4F26B081C17E90BAA3D17B1E6D317D0CEFF89326ACF1307CD40B63B5710A78786';
wwv_flow_imp.g_varchar2_table(31) := '085BE1C24007C31140396BD13F7F008A72066A2EAE835FEE024D2D8A1EB30A5DE84DE5A7701A6B7D206291FD72866448F672323DDDA3B4D2DA812877BAA2143B4A368A97AACFC22ED9494B25F9264FAB64378AC55004A0859B6040DECC356D9C3C90535B';
wwv_flow_imp.g_varchar2_table(32) := '60550D15C20297284F035E522DC4EB58CF344DA9D6AF16D9EEC274BA6D500E8CB7ECDF800BF55F42EB6F74D144A439D2056FB4424CE301E1C220074311A0A5B14D2A96A1C52390EBCA97AED55802FC607733BFB22ACA52C5EF8B01EF63DF78015D1931DE';
wwv_flow_imp.g_varchar2_table(33) := '789D69604CD3B591F0DAF1C6F6BF231092318AB85FFE98C2A560DA58598D6C36582F60180250ABD9AA781BDA84E1F28AE6E58B58BE7BB074279A7D919563DA7B93D9CF25DFD4A98DD4378E8B8C0768A3DE67273FD29C934943BE22F9A1D9A070A85DBA4E';
wwv_flow_imp.g_varchar2_table(34) := 'B425DEF119860054F989040490D3E6445E462159559BD6400B0E9DFC5C92A70D694402C941A7164B0A07CA8B98FC1D87B7A0C92F6FE310DD2F774EB7B931B468B82462A4C1B07108E095BBF621034620D2E64965D6A3E540E92E84A21BDB687B417A5664';
wwv_flow_imp.g_varchar2_table(35) := '0EBC478F3A1070653B204E8D0682016C3FF2BEE6548F18202F24B636CB2BEC9A034A320F862000B5FCAD0AF56750C1304D3037B77A71B4F4A0E48774E7A8D620B9E9D9C2711CE81903310FFB4EECD2BC4036AC6094E81DB4C356BAD0B9C51004A02E9948';
wwv_flow_imp.g_varchar2_table(36) := '20964551B6B6BDFE87CFEE97A628690AD1E9B68B4119E64C7B96526D29D1FCB4E3C8F9BD51BBBA5381BB182EA75B1026AC8D42024310A0CD276F01A6B7365B535285825273A0E19CF2811677AE538D375DCA2867B4F6967CA6390F570D94D5A03683A841';
wwv_flow_imp.g_varchar2_table(37) := '3A2240F7E515F4CB04185CA84DFDA1875B5ADB22DB1D388E139ED8EA3E267DDFA16DD41C17191DD53654A3A2E19CA60C0DEF3F5A92573E612739EAD062080228BF8A32285F9EAD50531EA72B4A2431477AAA6437AAC59E26E7B1B4F298A66C0ECD270244';
wwv_flow_imp.g_varchar2_table(38) := '08146893171C35059264C2BA2740D01F9276B9E465E5C3694B530D31E9B2A5E74F48F2F4C4957461500BF50262D64E95757C965974EFEE6C4F716050BFC1C26DC22E14901F07151C7578D03D0194DB9EF373FA692A028FAF16AD7E797F8BB272680A4847';
wwv_flow_imp.g_varchar2_table(39) := 'C24A929FAF3A8BB6909C7F35D928CC89BC4C8B64A9F1A1B39E8DEE0910547CA1D1A1A1F5A742AB6F921F18B13B53C15922DD3BDD33AAA185317A0345247FEDA86C909F728BB85DFE98E688CC0491544031F6A26B3D1ADD1340A98B3AEDDA66703C5E9900';
wwv_flow_imp.g_varchar2_table(40) := '34FD994C05D861ABF4C95A28AFE3B1655ACC6B5D53B56855754E77C8DB43580FA00AB2BE15A27DEA620C8E54F5FA3FF951BEB9CD62D54FEBDFDB2DD32956B9DDAB6DA82228549B347B6467287908B23100C170854D3BCDE447D2E0B069EB019A7CF29E18';
wwv_flow_imp.g_varchar2_table(41) := '65A5888496DC471A84C69A424BF48931F25FDD70914EAA4D9A4DEE018CF09519B929500D4172092AEA3F1C1A09100CC9EB07BD21003DC1456A89524DE96CD78A5A57DBA5C94D6B385DC92BF35AEFADE94AA45B37A74DEE011801BA85297137942DA13D55';
wwv_flow_imp.g_varchar2_table(42) := '5B0FE00FC89BBA2C0AB5406BEAE9092E524BB4FABB52F24A02D0E6382DE94853F600CAD6479A6F52C500001000494441544B204924ABFB1E405A04E041756A9C050A04650258ADE23E193E208DFF4A126AF47A45C495640F297A41358949B3C9B34089C8';
wwv_flow_imp.g_varchar2_table(43) := 'B79A34F54646F70450164238BA9D592D208160E4752724AF0C87AE6335A4A67465620DAF2FFC2987FBC1A0AC06AA898BFC8AB36D1AE156137CC2650C400019B3B6E82B4C6497CBDB523839FBA1E82B142FEFC3187795794D4DB569CA144D39F8FD91672F';
wwv_flow_imp.g_varchar2_table(44) := '38628326DFC9272CD780E44B9BAA147116B9145A03914D6DAA3CF2426E57267F8CFC8783FA5FD68FE4A4E7A332AFEEB48C9E3D28247C7EAFF4E09072364921A22BABEE09A01CD0B504B4BD00CA9526EBB3A120B56DBA2ABB98131B5290DDE5D446006FAB';
wwv_flow_imp.g_varchar2_table(45) := 'FCCE515A558E391149E251F704B0A6CA5910B735ABC5363DFA8007C9874DA40285156457360284434FC6DB2A7F9586F5003DA1D5ABFBEA3CA728666F5AFDDA7A8074A7BCA8A36C15D5C5AC5F29E51820C7ADEDD5318DBE7A29E3AC0790A0B8729614450F';
wwv_flow_imp.g_varchar2_table(46) := 'D0D2A68D00F999F29B23028A4D75572E37898959F9FC44714E647BB3DA981B7C4A1548EE7DD5FA4F3639DDE72045B180D5127DB24B2DC80559FD2551BF2F00FA2084E460500BADDED21BDEC4EC15650D12ADAACE0D4D720F60B5C5BE76A22AB20408E99F';
wwv_flow_imp.g_varchar2_table(47) := '00CA1EA055DB7BECED563BF2B2222A000D818DF29CEBE5EA4D4B935F5A3B2CC82E047D10E372F29DEF2909206FABEE2CA59F6BDD1340D90A55D5574A85ABB608FAE70F944495AF56911C0D6651927CD4C0719A72170C07505E13797E80E33828B1D71450';
wwv_flow_imp.g_varchar2_table(48) := '1209EB9E001CC7C1E64C15206DE317686A1A2B05BBDAC3E07E2324D1C8EB55A4CB2B67E9A39869EB8E92E463075DAB29A6B3B527110A479E053642EB4F99B7D041EFC6A178D0FB7CF5694DD9E9C78F0332A30B62B41DA24DF15D314D01E940985A7FCA23';
wwv_flow_imp.g_varchar2_table(49) := '25352F331F05AEFE64556D4ACA0E4BB2F41D02E942C7164310C0AE20C0B98A52CDC53176D844C98FB7C627D93B5BBADBF6AC94FBB797EE4657A62F643A6FB9A62DD99446655C4ABBF22B2F9347C92FBC55CA5CCE7EECCC17D26DD60348505C790BB546E2';
wwv_flow_imp.g_varchar2_table(50) := '8B6C6B3C3568D1B81E30A2680C52B8485B10F087D0A278CFA83277DEFA1684498F503A26919DD24669EC2A499427CA1BDDB3A73AA07CE333B9F564CA3C67D01C9D64A0CD273645A3D393DF64BE1F29F5644EA1CAB475E805AAB5F5025421860DBC4A8AA9';
wwv_flow_imp.g_varchar2_table(51) := 'BB5EC0E9D2B6714C0A308196AED2489C557E3967E684F948B568CBCBC97259FDA18F818B0D4E02B3D62751199200672BB57F0965D2C8E9B0F0036A4239180CA3B9A195AC1D4C66413AFA8FCC4D6A4369EC9068FEC2C7E7455CE926B24F1E267FF082BFAD';
wwv_flow_imp.g_varchar2_table(52) := 'EAFFC89903929C33C32ED9E36D497478862180C36507C751E70C94559E4530AC6D9F7B86330B13AE9A2CE1DF54DB0271C02839EAD0420B5F4ADD7FDEB54B604F7168CA499DAF0A758D913768701C0723BD41CF3004A07D294EB74D28587ACFFFA9F2A382';
wwv_flow_imp.g_varchar2_table(53) := '5DCBE19A61D3E08AEE0FA2FD320D17B52DAC69892B51B29EAA6684C3B4CC07D0C2D794A1DABF9B565221AB3F8431C7451A9A44E5A12FE3310C01082457B6934E82D9776C27821A1FF74B4D49C58C09F304FF74F0F183E1A63A6DCF1890BF64315E3EED34';
wwv_flow_imp.g_varchar2_table(54) := 'F815D3B37CC62AD1AAFA1C6A0F61D7B1ED927C9A81D41FCA94A108402B93F6E8A2584B9B0F47CFCB9F3CA2CCAA3183F38763CCD0F192283DF0DEAAC35781D3A29E52F599316E0E8A32E4556F29833D580E5FD88BC6A6C816689AFA14171D7BF0A69BDB86';
wwv_flow_imp.g_varchar2_table(55) := '2200A19E9E2DEBB79F1FDF8DB660E4F13DBAA7D6CC183B1F8579F222517D4513F4B45B34D016427D65E4637F94E72145C3307FFC72B26A32E1F630B61E903FA7A4FCBE80A6809258388908101F94E8E5AFD6D41421307AE8FDD0E93D825DCBC1C2AF092C';
wwv_flow_imp.g_varchar2_table(56) := '9C7C33DCE991A7A568305C57E6D50509026D41D496354A03F8DC8C5CDC7EFDBDFC0C97F6A23E52B60F8DCDD1D6DF6E8572AA590B9EC92CAB1D9564CE4D346DE959722F70E0C45EF8FCDA07B3F654278AF2E54F2D854261D49C6F444B93FC2A9568744973';
wwv_flow_imp.g_varchar2_table(57) := '227DBFFA5C03C4A7DB6C563B56CDBB0F76AB3C36529BD840D88F2DFBD74BE22E837E39C7900448CB7440F99CC081533BA582546BD9757C1B4ACE749C49A29EA0BEC20BA56EAD36BCBE96A3852EA5DAE3B43B71D7E2FB91E5CC8D29EAED47DF47A32FD2FA';
wwv_flow_imp.g_varchar2_table(58) := 'D3D88A7AD698024A724F862400CDD26517BA25E88F7E7908959E0BD2754F16AAFC874EC903E8EBAF9E870105F2935334BB5257EE95D48C9EC2EBCBFB34CF4F6969AA9767AB32D23271CFE20750E02E8E29EA8BDE32EC38BC55F29B55203F3A2A391AC462';
wwv_flow_imp.g_varchar2_table(59) := '480250D9D89C56A4F33D01D9C96CDCBD0EBE367960486E5D99CE957FF6C485983F6E39EE9AFF635C7BD534C90BCD0C559DF1C0D7A87D902D05D24B0BADF0569DF580D222064503DE7B963C88ECB4C8833EA2BBDA73301CC0DA1D2F4BE2A44E12969283C1';
wwv_flow_imp.g_varchar2_table(60) := '2C86250095137DEF575485DAFC6DF870CFDBD27E76BADFD974AEFCB46766CEE81B25B165D7DE81A5D36EE107949CE046DB0B3C179B2054C2DE8C0D84D0D41F688A93C8478B5C9486884F0E73272DC1D7E67C1F2E5B64F01E71D7767C6FFF3F400F16912F';
wwv_flow_imp.g_varchar2_table(61) := 'C28E3024BB518DA109C0593864F593BBEF1A4F35761CDDDC6559EE3AB10D4AB567E6350B306FECCD97C85E377436EE59FA20F2B20AA47B417F0875FCD8A0861F80D29E7BE9469C2D6DCD01D02097E20A06220FA65014E94E37AFEFFF00B3462D8685FF23';
wwv_flow_imp.g_varchar2_table(62) := 'B758CCD1F2FD38786A9FE495B0E3B808D9254783590C4D002A2B9ABA53AE109FE007B6CA073B484668F94F7E4E56C150CB3F6FCC4D82BDAB4361C6007C7BF1CF30FB9A1BA4FD4724E7A729487E6C50595A07EA19A8A5A68133DD8BC5905F0A83C2A2306B';
wwv_flow_imp.g_varchar2_table(63) := 'CB1B3B4CC5DAAC36CCBB7629BE7FD32F30207B582C51487E1A5AEAF0F6A7AF4AD7A43E12769283412D862700951B75E3CA6DC29F1CD882BAA6C87BF13BB7FCB326DCD065CB4FE1288D95B362CE9865B87FC52F71DDE88E0F9784C3EDC2D8805AEA8A5375';
wwv_flow_imp.g_varchar2_table(64) := '1006A9752DF035B409FA3A7D633714FDBA0A0D62C94E6EA4CB930C6DBFA07507C12FDFB3D03883C214E377DAD3307BE222FC68E57F62E6558B346F6E13C311CFADC116BCB2ED5969EB889D5F4DEF6A57A9286FA4B3290840059655E8022DE5939D56383F';
wwv_flow_imp.g_varchar2_table(65) := 'DCFD36761EDF8A438A967F16DFA2CF1DBB8C44549B4C470E964EBC0D3F5CF9104F8419A0E9C7CE9EA962D3960A4F559340869AF30DB878A65EF8EE5705DF5B909DDC88282443B2ADBE4BD71BE823E0B7CEF9067E7ACB6F3167F45238ACDA3E09D5395D74';
wwv_flow_imp.g_varchar2_table(66) := '1DE407BDAF6D7F16359EC8A792681131BBBF3C8346324636A62100C771C8E99F21AD0F34F9BC387C4ADEE33E6BC202CCE55BF4580B3B4284DBF9CAF928BE7DE34FB078EA0A8C1C30068E5467AC410AFE8AF30761D194E5424FF38DB9F7634CD124C13D5E';
wwv_flow_imp.g_varchar2_table(67) := '87B5BB57833E974AE1D1432E39C56ED099AE1361AE741CA62100016D49E1905B9C7149014F1E3D1D73C776AFF3935F2D86C6085387CDC51D33BF839FFDF3A3BCAAF230562DF836164CBE51984A1D5A341C59AE6C29C8CCF46C14E5166378F155422FB270';
wwv_flow_imp.g_varchar2_table(68) := 'CACDF8EABCBB845EE5EE050F60DAF079312F684991746159B7EF151C3B7348BA935DE406F5009283092CA622009527AD6A5241935D3447BE3C88D335C7C5CBB89F331CD9189E3F165F19B91034957AE79C1FE0FE9B1EC643773C21981FDEFC30EE5DF853';
wwv_flow_imp.g_varchar2_table(69) := 'AC9A751FAF4EDD8EE9C3E7E3AA7E1390C9AB57E8835F20D486573E7E06074ECAFBA472F8CA6F86416F67384D470002800A3A975787382E32C5D7EA6FC1CB9B9EC527273E403BFF473246353E7F13FEBEE5499496950859E4380E790332E1D0C1F3CE4282';
wwv_flow_imp.g_varchar2_table(70) := 'E37C30250108437B7A2AF20666C0A2F864E8479F6FC06B9F3C87B6D0A5CF03931FBD9BF286B3787EC3EF51595B2E6485747DC2C0C82BBD42462F73302D01089354BB15F903333BE8BDA72E1CE72BC91F50D3A4ED0D73145EB21AEAD5769CDC881736FC0F';
wwv_flow_imp.g_varchar2_table(71) := '1AA3DF464EE1899F3728138441B2A63B11E9BA82044844F67A8E835EAF9EC793409C22251FF5DE5A3CFFFE1F71AC425E1C23773D9A66BF17ABB73E85CDFBDE9336EFD9F979FEFCC1991D88AFC7BCC523CDA627008168A1D9215E0F76299E290E860258B3';
wwv_flow_imp.g_varchar2_table(72) := 'ED25FC63C7F3A0DD9124A72743CFF2EE3DFD31FEFCEEA3105F1343239E8CDC34E40EE8A8FAE9295FF14E2B234014517E2C085A31A601A1722AB0E4DC513CB7FE0F786BD78BA86DBE18954EEE5369359FE60D8FE1FD5D6FA1D51F19CFA4582D2095C795D3';
wwv_flow_imp.g_varchar2_table(73) := 'BB7589E4CEB9F6D4310274C28C0684A41ED05E18E5AD23A70FE0CFEB1EC3BAFDAFC2D31279478EF2FE95B68711C689CA2FF0C2E627F0CAE6E751D3502D2489E338B873D2503024CBF4FABE0048A70323402740E892E338D05E185A34EB38486CC78192DD';
wwv_flow_imp.g_varchar2_table(74) := 'F8D3DBBFC1FB07DF80B72DF2C414F9B952A635E8C3FE339FE2E9F5BFC5EB5BFF86B2EA735252D2DC76A1E2BB739D1D36ED4902CCD28BBDB326008FD60BF2F999929CFEEE4B5ACFBDC776E0C9B58F60F5B6A7B0B3748B304EA0D91655B0F452A8A6B912BB';
wwv_flow_imp.g_varchar2_table(75) := '4B3FE2E3FE137EBFE69758BF730D3CDE3A29541AD0170CCE02ED7F22D547BAC12C9720C07A804B20B9D4819E872522D00AB2727C409BEACE549462E39E75C238E189B50F0B2AD2517EF6C81768BA34A0185D68407BB6B6049B0EBF8D27DF7D04CFF0AAD8';
wwv_flow_imp.g_varchar2_table(76) := '077BDEC1990A7A076ABB142AED78A55E8B66B568C55BBAC12CDD22C008D02D3497DEA00A46BA345532522F388EEB20D4DCDA24A8486FF2B3478FBFF910FEB8F697F8EBA6C7B166E7DFB0F1D0FF093DC591F27D3857770AF5BE6AD09604DA8D49638A32CF';
wwv_flow_imp.g_varchar2_table(77) := '691CAF3C803DA7B761F39177B076CF4B7869EB93F8D3FA47F0BBD7FF152F6D7C069F1DDE0AE537BA28726AE149C72F1C9A0D2228F55AE4CE8C3A041801D4E1D4418A2A19A91785C3B2414F4DD1BC7A0781E845736B33CA6B2EE0D8992FB0F3C876A1A778';
wwv_flow_imp.g_varchar2_table(78) := '6BFBCB78F1C3A7F1D43B8FE2776FFC1CFFC5576E1A53BCB0E149BCB1F5456CD8B5163B0E7D8443A59FF3D397A779D5A61ED4D34483144E342E71F3B339D4D2F7E32B3EE9F8167E9647B8C90E9A106004D004574761CEC281DE9549F3EA85C37390DB3F03';
wwv_flow_imp.g_varchar2_table(79) := '54318920B4CDA0A374EC571CC781D4B0AC827450852775CCCDCFE793AE0FF6EB15028C00BD824FF64C159EF61751C524158908410351DA6549EB0B34AD4ADF32A33104C775549DC82FA932A9B614D8F855DA347EF68616ACC82F855134220739FC40BCF3';
wwv_flow_imp.g_varchar2_table(80) := 'FB8EA0C35FB2259911A00F4B8406A2B4CB925698695A35A738439896A40AADFCD006914568D9F9999B3C7E9596D42B17AFE2905F0AA30F9368FAA019014C5F05CC0D002380B9CBDFF4B96704307D153037008C00E62E7FD3E73E8104303DD60C80244480';
wwv_flow_imp.g_varchar2_table(81) := '1120090B85252971083002240E6B16531222C008908485C29294380418011287358B29091160044844A1B0389216014680A42D1A96B04420C008900894591C498B002340D2160D4B58221060044804CA2C8EA445801120698BC618094BF65C3002247B09';
wwv_flow_imp.g_varchar2_table(82) := 'B1F4F529028C007D0A2F0B3CD911600448F61262E9EB53041801FA145E1678B223C00890EC25C4D2D7A708F42101FA34DD2C7086405C106004880B8C2C10BD22C008A0D79263E98E0B028C0071819105A257041801F45A722CDD71418011202E30760A84';
wwv_flow_imp.g_varchar2_table(83) := '5DEA06014600DD14154B685F20C008D017A8B23075830023806E8A8A25B42F106004E80B545998BA4180114037331B9351000000A74944415445A58F84EA2D958C007A2B3196DEB822C00810573859607A438011406F25C6D21B57041801E20A270B4C6F';
wwv_flow_imp.g_varchar2_table(84) := '083002E8ADC4587AE38A401C0910D774B1C0180209418011202130B3489215014680642D1996AE8420C0089010985924C98A002340B2960C4B57421060048807CC2C0CDD22C008A0DBA263098F07028C00F1409185A15B041801745B742CE1F140801120';
wwv_flow_imp.g_varchar2_table(85) := '1E28B230748B0023806E8B2E3912AEF754FC3F000000FFFF0A958B03000000064944415403008B08A9B546E74B4F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8183144802484026)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC7D098014C5D9F6D333B3F77DB1CB725F8A2222A0414441121615A3A81863120434BF9ACB1CC6EFCBA5B08049D4245F4CCCF1C53FCAA1467F';
wwv_flow_imp.g_varchar2_table(2) := '3146040F2E01C52B0802062FEE6B9765EFFB9CE9BFDE99ED9E9ED959767A8E9E9EED77776ABABA8EB7EA7DAAEAE9BABAC606FE63041801CB22C00460D9A267C519018009806B012360610498002C5CF8ACBAB51120ED99000805368C8045116002B068C1';
wwv_flow_imp.g_varchar2_table(3) := 'B3DA8C0021C0044028B061042C8A001380450B9ED5B636028AF64C000A127C65042C88001380050B9D556604140498001424F8CA0858100126000B163AAB6C6D04B4DA330168D1603B2360310498002C56E0AC2E23A0458009408B06DB19018B21C00460';
wwv_flow_imp.g_varchar2_table(4) := 'B1026775AD8D80BFF64C00FE88F03D2360210498002C54D8AC2A23E08F0013803F227CCF0858080126000B1536AB6A6D040269CF041008157663042C82001380450A9AD564040221C0041008157663042C82001380450A9AD5B43602BD69CF04D01B32EC';
wwv_flow_imp.g_varchar2_table(5) := 'CE085800012600BF42FEE3ABF724956E5D942D4CD183DB6F1FB27CFB6D23966F5C34A674F3EDE7976E5E7061E996DB272DDBB070321BF3614065E32E2351565466547654865496C26453D9FA15B7E56F2D4900CBB72C1C55BA69D14DA59B172E5DBA69D1';
wwv_flow_imp.g_varchar2_table(6) := '4B4B372DFC509853C2C8B5090D6D52975C2B4CB9B3C375DCD5613BEC92E4CF25D9B55F92A5BD92CBB54BB6E10336E6C380CAC65D46A2ACA8CC5CA2ECA80CA92C85A9A5B2A5321686CA5A94F9A297A80E78EAC21D23ADC806962080D28D8B2E5ABA79D103';
wwv_flow_imp.g_varchar2_table(7) := '4B372FDC2E0ABFC9E5C24109F23F25198B0179AE28F88B842916863FD64080CA5A94B93C97EA80E4AE0BCE435437C40361DBB24D0BEF5FF6FA1D13FA0B1467D3A35F1240E9F35F49148D7E8E28D0BF08735C92E40F21CBCB2063BA00234D18FE30028110';
wwv_flow_imp.g_varchar2_table(8) := '1075439E2103CB65BB738FA83B87C583E3D1A51B177E89EA54A008F1EED6AF08A0F4F5F9A34561FD4ACA493D2C1AFD2BA270BE2DCC1061F8C3088482C008F1E0F801246CA63A55BA79D12FA98E8522C8AC71E29E004AB77E257DD9A6457708B67E4BB2DB';
wwv_flow_imp.g_varchar2_table(9) := '0F88C2FA99007B9030FC61042289C02049967F4E754CD4B537976D5CB488EA5E24138885ACB82680A51B17DC2875A6BE27437E428077B930FC61048C40E00A59925748CED46D4B37DD76951109869A465FF1E29200C4ACED958285DF8524BD0809E3FA52';
wwv_flow_imp.g_varchar2_table(10) := '92FD1981A820206332607B9DEA22D5C9A8A41165A1714500D4E52ADDB8F059316BBB55E072A930FC6104CC80C0A55427C592E2535447CD90A160F310370450BAE5F6CBA4AED4BD92845B83558EC331024622209614E78B3ABA87368919996E3869C50501';
wwv_flow_imp.g_varchar2_table(11) := '8875D90592CB454F7D4B6ED608A78039AEE1088C926D7887EAACE129FB2518CCADA909409621D1D28B0CAC12CA240AC31F46201E1048A43A5BBA69E172B367D6B404401B2F966F5EF0022DBD981D44CE1F2310080109B85F90C02AAACB81FCCDE0664A02';
wwv_flow_imp.g_varchar2_table(12) := '28DD7AA5C39693FA4F19D24D660089F3C008848A80208105A22EAFA13A1DAA8C68C6332501485DC356CBC097A3A938CB66048C4240D4E5EBE11CB6C2A8F4289D608DE90860E9E6450F89CC7F4D18FE3002FD06015A21E8AEDBA6D2C95404B06CD3A21F42';
wwv_flow_imp.g_varchar2_table(13) := '967F622A8438338C40A4101075DB5DC723252F02724C4300CB362E9C2643FE5D047462118C8069111075FCB74B36DD669A6DEBA620009A259525F7529F29F263DADAC319EB0F08D86DB0ADA03A1F2D65F4C83545839372D396894C8F12863F8C80151018';
wwv_flow_imp.g_varchar2_table(14) := 'DD5DE763AE6BCC09A074C36D178871FF7D31478233C0081889802CDF27E603C61B9964A0B4624E0092CDFEA0C8985D18FE30025642C02E960797C75AE1981200BDE0D37D265FAC71E0F41981182020CF8DF484A05E25624A0092D3F91BBD19E6F08C407F';
wwv_flow_imp.g_varchar2_table(15) := '42C006770F38662AC58C004A372FBA01927459CC34E7841901532020CF106DE1EA586525660420C9F821F88F11600420DAC24F6305434C08E0C12DDF1C26C6FED363A534A7CB08980B0179FAF20DB78D08374FA1C48F0901385DCEDB45662561F8C30830';
wwv_flow_imp.g_varchar2_table(16) := '0280E4B2D91722067F8613001DF201B816C540574E9211303102F2024FDB30368B8613C0D2CD8BA60092180280FF180146C08BC0084FDBF03A1861339C0024093780FF180146A00702624C1CF26A400F61413A184E00A2FB6FB8924162C1C11881582360';
wwv_flow_imp.g_varchar2_table(17) := '78DB3094004A37DE510C59BA30D62873FA8C80391190BFF0D0A6BBB28CCC9BA10460836BB6504EF474C4377F180146C01F01A943EAB8C6DF319AF78612800CF0AFF944B3345976DC2320BB702574FE8513DC500280848BC07F8C0023D03B0206B711C308';
wwv_flow_imp.g_varchar2_table(18) := 'A0B4B454A425F3F8BFF7A2671F464020208FF7B4156135E0231AA501A95012971DA5C69F4256368C0023D02B02A9987AF49C5E7D23EC611801888478FC1FE1C26371FD13019B1D410F9511E69F6897614A0832BA9800344CA920B3C4C11801532260645B';
wwv_flow_imp.g_varchar2_table(19) := '318C00C404E07053A2CD996204CC86808CB14665C94002701519A514A7C308C4350292CBB087A57104204B4C00715D2B39F3862110645B89447E0C2180EE658DBC486498653002164020B7BBCD445D554308A065E2F134A1894318FE30028C40DF082460';
wwv_flow_imp.g_varchar2_table(20) := '725972DFC1C20F610801A466BAECE16795253002164220BD23D1086D0D210074380D51C608C0380D46C01004FA683391CA832104909022730F205225C6722C8180516DC61002905B1378FC6F896ACB4A460A01A3DA8C2104D0E5E21E40A42A06CBB10602';
wwv_flow_imp.g_varchar2_table(21) := '46B5194308C09EC804608D6ACB5A460A81B3B59948A541720C2100B85C3C0948689BC4B89C2E747538D1D1D6E536CE4E2764976C92DC71360801A76CCC43D31802208DD818860035E6B6E60E3454B5A0FA64032A8FD5A1E2482DCA0FD6A0EC40354E1FAE';
wwv_flow_imp.g_varchar2_table(22) := 'C519E15675A21E642A8ED6A1FC90C7AF42F851F89A530D68A86C414B7D3B3A5ABB0487334118568022213B138040813F4121404FF4D6C60ED45736A3F278BDBB31D79435A2A9B615EDAD9DE8144F7B67970BB2DC7723768ADE01856F6BE944535D2BEACE';
wwv_flow_imp.g_varchar2_table(23) := '34A1EA643D4E0B822072A816C4D052DFC6841054C9983F10F700CC5F460173484F796A88F404A7277AEDE94634D7B5A1B3BD2B60F848381239B40B62A83BD38C0A41086E32686867328804B841CA887430268048231A6579EDCD9DA83DDDE47ECA5343A4';
wwv_flow_imp.g_varchar2_table(24) := '717C6F4966A6656178F1484C1CFB054C9F380B574FBD01375DF90DCC9F7D37C68D9AA0469B72FE15F8E92D0FE3DE9B96E19EB9F7E3EE6BEFC33766DD8D2F4EBA0663069F87A4849EBB52A92FE126838A2677EF807A1C74AF0A654B5C20C0041007C54413';
wwv_flow_imp.g_varchar2_table(25) := '76349E7777C1CB1AD0DAD81E30D7430A8761EAF8E9B871C6D7B1E89AEFE19699B763D6A4EB3179F4653867D005189C371CB9E905484E4C8124F98A48B025222D3103D929791890310823F3C762DA39B371EBE577E1BFE7FD1ADFB9EEA79873E93C8C1D76';
wwv_flow_imp.g_varchar2_table(26) := '01121C09BE91C51DCD39508F80E60F5AC4BC8170E24F1C20C00460E242723965F7D39E26EC683C4F5D70FFEC8E1D7181FBC9BEE89AEFE2AA4B6EC4B86193909731000EBBC33FA8DFBD86013456BF40EA6D5E5A21260FBF1C5F99FA4DFCF4E647B0E8AAEF';
wwv_flow_imp.g_varchar2_table(27) := '61DAF82FF6E81DD0FC419D9837A03983C6EA16900EAA10B6980E012600D3158927432D626C7DE6686DC0A77D76460E2E9B70256EBBFADBB87CDC2CF793DD61EFF954F6480AFCAD9D0F9420050E7416D72139A3F0C571D7E1DE1B9761DEF4DB30AC68A44F';
wwv_flow_imp.g_varchar2_table(28) := '68974B46634D2B4887163169E8E3C9372121108D48B668086599A123E0EC7481BAD275626C4D8D482BA9306F20AEBD6C1E6E9EB110E70FB908498E24ADB72EBB24D128DE132598D5014FC89EDF0E5B02CE2F9E840557DE836F8B61C284D117FB04221DEA';
wwv_flow_imp.g_varchar2_table(29) := 'C4A4214D56D250C6C7936F628E001340CC8BC09B8166318B4FDD7DFFC9B481F9C5B876DACDB86EEA57313077883742183659F63EF525C96B0F4324F2C530E1FA8BBF81EF5CFF335C386A9210E5954B9395A41BED2D0887708450FE4410012680088219AA';
wwv_flow_imp.g_varchar2_table(30) := '285AD2A359745AC7D7368EF4D40C5C75E95C5C7BE92D1898333854F186C7CB4B1D80B997DC86BBAEBD178579C53EE937D5B5A2F258BD7B27A28F07DFC40401268098C0EE4DB4ABD3E9DEBC43B3E88AAB4DB261D2795370F3950B31247F84E21C77D7C28C';
wwv_flow_imp.g_varchar2_table(31) := 'C1B8B3E43E5C3BF566246B961203E91C77CA199CE16825C704102D648390DBD6D4E1791A0A1250820F2C18849BBFB80093464D85C3D6D74CBE12CBBC57494C304E1A364D2C23FE0C178EA6618127AFD4D3A15E4F6375ABC781BF63820013402C6017F36F';
wwv_flow_imp.g_varchar2_table(32) := 'F56262ACA6BCD1677BEE94F15760CE94AF2033253B16B98A6A9A698999987BF16DF8EACC3BA05DB168AC690111010D83A29A01161E1001268080B044D151347EAAF0CD9AA5B1E4C46431C9370FE3874D16CFCB28A66D02D1E7148EC79DD7DC8B9C8C3C35';
wwv_flow_imp.g_varchar2_table(33) := '3734FCA93AD90026011512C32C4C008641ED49889EFA6D2D1D9E1BF19D9F9D8F1B67CC17937C43C49D353EF9E945B8F3EAFB307AB0F70770E81D065AFEA4A1813550085ECB688664028826BA7EB26B45979F9E768A338DF7BF2C96F6D292D21527CB5C93';
wwv_flow_imp.g_varchar2_table(34) := 'ECC9EE6DC6DA79015A2AAC3EE53B2CB20C2031529409C020E0EB4E37A1554CFA29C90D2E1C8AAB2FB9C9673CACF845EAEA743971BAEE14F61DD989773F79039B77BF8C97DF7E16FFD8FC7FB1FFD01E3599F7F6BF89C7D62FC3D3DBFF8475BBFE81373F7D';
wwv_flow_imp.g_varchar2_table(35) := '1D9F947F88AAE6D36A986858688290E605268C9EAC8AEF68ED440D93808A47B42D4C00D14658C8A709BF16CD0B3CD4F84B265F0FBBCD2E7C23FBA96BAEC147C77661C3CE7F61C5AB8F61FD8E35F8F7FEB74583DF87A3658771A6B6022D6DCD3D12AD6BAA';
wwv_flow_imp.g_varchar2_table(36) := 'C591F243D8736027B6EFD98017B6AFC65FD73D8CE5CFFD084F6EF93D767CBE110D6DB53DE245C2E1FA8BE7E3A23197A8A2E80C83BA8A9E795403B02562083001440CCAC0821A2A9BA19DF0CBCF2E70BFA1678FE0121F8D9B4F541DC16B3B5FC40B5B57E3';
wwv_flow_imp.g_varchar2_table(37) := 'FD8FDEC2898A6381331482EBA9CAE3D8BAFB35FCE1A56578FACD3F637FD9AE10A49C3DCA7593BF8EF3868D5703D11B8FCD756DEABD552DD1D69B09208A08D30B3D4D9A4A9C919A81ABA750B73F32EBFBB20C7C76EA23ACD9B6121BDE5B8B5315C77B6863';
wwv_flow_imp.g_varchar2_table(38) := 'B7DB9096958CACFC34E414A623AF38130543B250383C070347E7BA0DD9C98DFC280C85A538369BD443DE91B28378F1CDA7F13F2FDD8FF70EBD81B6AEC8ADE3CF9D321FC50543D434696724CD0BA80E6C8938024C001187D423908EE0A2AEBFE70EA0A5BE';
wwv_flow_imp.g_varchar2_table(39) := '6BA6CE4372428AE214D6F558E5413CBFF509BCF5E1163434D7FBC8B27537FABC4199281C9983AC016948CB49464A661292D2129090EC803DC1064992DC86ECE4467E1486C2529CA251B9201981C8A0590C2336ED5C277A05A5D8FEC9ABE87275FAE42194';
wwv_flow_imp.g_varchar2_table(40) := '9B045B22BE36FD2E6467E4AAD16BCB1AE172BAD47BB64416015B64C5B13405019AF4A3AEB9723FEB92EB22B2C1A7BEA516AFFEFB056C7A7F3D1A5B1A15F1EE6B6A4692BBC1167537FAA4D404B77B385F24434B0629220DADBC8EAE0EBCB97713FEFADA43';
wwv_flow_imp.g_varchar2_table(41) := '38517B48EB15923D35211DF3677E4B254A3A03A1A6BC2924591CA96F049800FAC648778866D1EDA7892C25E2C4B197A0286790721BF275F7A177B1E68D55283B73D24746725A22060CCB4676513AA8C1FA7846F08664E788340A866683D2D48AAE6BACC1';
wwv_flow_imp.g_varchar2_table(42) := 'CA0D7FC2EB7BD7A0C319DED83D27B500374D9FAF8AA79581C6EA16F5DE2A1623F4640288304D46ED690000100049444154CAF4A20B1DDFA5882DC82DC4C4519729B7215D3B9D1DEE59FDDD9FBCEF133F5174E569EC9E5B9C0147A2DDC72F9A3709497650';
wwv_flow_imp.g_varchar2_table(43) := '9AF983B34079D0A6B5F39377F0C4C6FF415D6BB5D659B77D54C1F9D0AE0C34D5B482B0D52D88239C15012680B3C2A3DFB356745795AE7FA22311B3267F193631D6D62FC913A3A1B50E6B773CEB33AB2F4912B20AD2902F26F368ECEE0969FC77628AC39D';
wwv_flow_imp.g_varchar2_table(44) := '87CCFC54489AE4ABEA2BF1F7D77F87B2FAF056224A26DC88F4D44CB76431DF09ED9C8ADB91BFC2468009206C08BD025AEADB7D8EE5A6977BD29232BC0174DAEA9AABB1F6AD6751D7E85D7FB73B6CA2D165222D3B59A7B4E8054FCF4941AE9870D4AE1AB4';
wwv_flow_imp.g_varchar2_table(45) := 'B6B7E289D71EC5E7151F21D4BF64470AAE9D72B31A9D0E4AD1EEA4543DD81232024C002143D73322BDD9A6B8E666E6E19CE20B10EA1F3DF9D7BFBD06ED1DEDAA081A77D3583F21C9A1BA99C542F30305621E22C16F28B2462C511EAF39187236E9E5A191';
wwv_flow_imp.g_varchar2_table(46) := '83CE51E37B4E14526FFBADC528C598002284744B7D1B68E94F1177C5452590246DC758F1E9FBDADCD688756F3F8FB60ECF649A24892EBF58CACB15637DC9169ACCBE530D3F84BB7732340BB41AA14873C92EFCE38DC7515EDF738F8212A6AFEB3593A917';
wwv_flow_imp.g_varchar2_table(47) := 'E0D19BE6019AEB5AFB8AC2FE4122C0041024507D056B1493544A98D143CF4541669172ABEBDAD2DE84F5EFAE416B5B8B1A2F7FB0E8F26785D7E5EF6CEB02E59166D3CF6E5A7D86316A2682B44892045A8DA0CD444A94CEAE4E3CBDE5AFA86A0AEDDD82DC';
wwv_flow_imp.g_varchar2_table(48) := 'D4025C3AEE0A451C684250BD614B5808300184059F27326DF5D53EFD278F096DD6DF25CBD8B8732D1A9B1B3C82C577CEC00CF7C61D610DF943A7F1569EA887BBE10BA2721341AFD716F71165CE4E57C8E95144DA4C94AE99A7A0DECC3FB63D1EF286A1CB';
wwv_flow_imp.g_varchar2_table(49) := 'C7CE86C3E659E970B964B488F9164A874D7808300184871F449B4593E658AB5183CF41464A564852F71E7E1F5575956ADC0C31B996929EA8DE876AE968EDD21DB5BDB553771CFF08990569484AF16E46AA6FAAC55B9FBEEE1F2CA8FB9484345C7CDE3435';
wwv_flow_imp.g_varchar2_table(50) := '6C733F1E06A84A1A6061020813E4B6A676D06E3545CC84D1DEB7DA14B760AE550D15D0AEF3D3845F467E6A30518308438B689E60C989293877E8B880262921D91388BE89D9E81AA6C911F3168E04CF939B44EDD8B715954DE564D56DA68C99A9CEAB7476';
wwv_flow_imp.g_varchar2_table(51) := '38D11102B1E94EB49F47600208B3805B1BBDA7FB0C291C86DCF402DD12BB9C5D7863F7AB90C53F45A69974DA7147F6489BC2DC62DC71E58F039AA2BCF0772BFAE797960673076580AE1E3F196BDF7DC663D5F99D999C8D0B353F3C42432F9D2238B81F02';
wwv_flow_imp.g_varchar2_table(52) := '4C007E80E8B9A5B1A8765D7AECF00BF54457C3EE3FBE1B0D4DF5EA3D4DA249269EED57331AA4857A0099F9696AE8F2EA53F8E8E44EF55E8FE5D273AF5483D32BC3FCA2900A47481626809060F344A263BD3D3620C191E8FE8D3EE53ED86B87B3037B3EF3';
wwv_flow_imp.g_varchar2_table(53) := '36061AF39B719D3F587D7A0B979A958404CD1E81CDBBD7A3D3E5ED3DF516CFDF7D407A310AB20B55676D19A88E716C313AEB36A313EC4FE9B569BAFFA3879C13D2093FFB8FEE062D9329B864E4456ADCAF4834CF95260595DC34B53460E7A1EDCAADAEEB';
wwv_flow_imp.g_varchar2_table(54) := '85A3BC4788B535873F59A92BF17E16980920C402A523ACDB35A7FB8E2C3E57B7A4F6AE76EC3BB04B8D979A9964E84B3D6AC2065968B760726A829ADA5B7B3787B42C786EB177A8D5DED2295662BC939CAA70B604850013405030F50CD4DAD4D13D6507D1';
wwv_flow_imp.g_varchar2_table(55) := 'FD4F08E958EF4F8EEFB1CCD35F4150DB0BA0B3043E29DBA378057DCD4B2B548701F4E215AF06040D5D8F80B61E2EEC1014021DE2C9A3042C2E08ED873B3F3FB65F11E17EB987B6D2AA0EFDD442AF2DD309438A7AEF7D1ADA3080963215196DCDFAE71294';
wwv_flow_imp.g_varchar2_table(56) := 'B866BAC6222F4C0021A24E3F64A1442DD69C63A7B8F575AD69AA448366C71F75FFFB8AD35FFCB5BA9EAE3A858A8693BA551B9C3F428DD3CEF3002A167A2D4C007A1113E1698F0C6D441156F7A728477F0FE048F901775CFAB2DB6DE88F33FFE8E58FCE30';
wwv_flow_imp.g_varchar2_table(57) := 'B0D93D2FF75090CFCAF4BF323C24772445759BAE4E279F1BE84642FF1713807ECCD0D5EEDD5A9BE048406EC600DD520E9EFC548D939C1EFE765F55589C5868A7A392D583A7BC58286E7D5D931DA9C8CFF26EBAA2F71DC07FBA116002D00D19D0D9EE5463';
wwv_flow_imp.g_varchar2_table(58) := '15E414C2FB2C539DCF6A696CADF779E12739CD3B337ED688FDC8534B7AF4BB03AD9DFA7F08A428CFDBF38A77028855D1320184807CA7A607909D91A35B028DFF954892242131D57A3D8024A1B396388F557B87440A367D5D7333F3D5204C002A14BA2C36';
wwv_flow_imp.g_varchar2_table(59) := '5DA139B01B012D0164A6E92780EA06EF1B7F49625D5C70805BAE99BEDAC4C49AFBF5E1EA16CF6BC47ED7E6BA36D056E850F34C3A27A57989AFACE6846E51B9E95A0208EFF565DD89F793084C00211464A76608909596AD5B42555D851A8726C4D41B1359';
wwv_flow_imp.g_varchar2_table(60) := 'DAC4D2DAD9CE0DA05FEDA11FED0827CBDA89CF9A862ADDA2B2D3F2D4383411A8DEB025680498008286CA13907600D2E613CF1D909CA87FEB6E45B5F77558BB66365C91192FD7F630CF0CB039BC8380EAFA33BAD5CE4AF11280F64016DD82621C2196C933';
wwv_flow_imp.g_varchar2_table(61) := '01E8449F9600B55112ECDE6EACD6BD37BBD3D5E573D0A7CD117E11508F847E3CA337D3D5115CF75896BDE1E8B561DA6CE36F86158DEA4D35DDEE76B1FCA944AAAAD34F00A989694A74DE0EAC22A1CF127EEDD3975E3F08EDBBEF3C412C03EA51CAE9F2AE';
wwv_flow_imp.g_varchar2_table(62) := '20503C9BA611D0BD5E5357D184CAE375A83AD9D0AB690AF2F41C49F256879913AE097866C04D5317E8CD62AFE1B5BABB04F9B47579CF41EC3592C6C361F35D3D91FDD9591396AD8111F09678607F76F543C0BF8EE9ED0174891E8056A4F629A8750FD64E';
wwv_flow_imp.g_varchar2_table(63) := 'BF401C6C58B385D30E01286FFEE4486E7D19E59C400A2738842E6C7420C004A0032C7750DF0E00F41280D3E9DD4444F22231042039F168FCC92F240270788760F1D8038875B93101E82C01597D07D013D129FB76E93DAEBD7FFBF700C4E0B5F7C03A7DEE';
wwv_flow_imp.g_varchar2_table(64) := 'BD71191E5EF0640F73EBCC6FEA94149BE04EBFDE5130B9D00EC198008241CC370C13802F1E7DDFF9F500DA3AF48E5B1D3E69389DDE89371F0F0BDCF8EBEEB0FB8EE98381407B988A042998281C4683001380068C60AC92DF597D6D9DFA7EA5264533734D';
wwv_flow_imp.g_varchar2_table(65) := 'E9B9BAFC18851C2D625C5DBEE49796A8EF771409B9B60E2FFEB6385E528D55913301E844DE2E96EDB4CF196D050C4694C3EE405262921AD4FF29A87A58C0E2D4905F4A522A6C92BEEAD8AE5935A03291FCC8D9EC109A217FFA1037438E4D90079B200125';
wwv_flow_imp.g_varchar2_table(66) := '1B6D3A8700142F2DC5FBA4F37F0A92BF558CF644DF8CD44CDD6A6B7B5FDA32D12DC8C211980042287C3AE65A89D6D2AE6F0E80E2A5A73201100E4ECD10203B23979C7499A636EF51EADA3D05BA84583C30134008158086014AB4B61008204FF31E7B87E6';
wwv_flow_imp.g_varchar2_table(67) := 'CD4245A655AEF483A58AAE83F38729D6A0AFD54DDE97AA78FC1F346C3E0199007CE008EEC69EE085AD35040228CAF5FE028FFB545B174D670597767F0945EF5468DF2528CE1DAA5BB5EA06EF4B55F6307754EA4E3CCC086689EEADC966C9511CE4C3EEF0';
wwv_flow_imp.g_varchar2_table(68) := 'FED65D2843800159C562C18AA6AD3CCA1209786CD6F9F6D77960B67E02A8ACF71280F6CD42EBA018BEA64C002160A8ED0154D556F86D0DEA5B608258EF2EC82D5403D2ABB7EA8D452C5A9D07150C051DF1A557F5CADAD36A948414DFFD15AA075BCE8A00';
wwv_flow_imp.g_varchar2_table(69) := '13C059E109EC9998EC104F708F5F7B473BAA1BBD4F228F6BDFDFC59AA3C4B58DA1EF98FD2384F627BDCE1F3E41B7527484586D638D1A2F21C9DB2B531DD9D227024C007D42D43300AD3727A47877AD95551DEB19A80F97E18563D4102EA70CED8498EAD1';
wwv_flow_imp.g_varchar2_table(70) := '4F2D1D6D5D3EA7099D3370BC6E4DB5478851F75F92BC432ADDC20C8E60A6E49800422C0D3ACA4B897ABCE2A8620DFA9A9F5988FC6CEF91562D8DED7DC60DF4BEBF365259DD311CAF3DD8C354D67BBBCAED1D6D3DFC9538DA158D2A31BE56DCB5D7F2BAE3';
wwv_flow_imp.g_varchar2_table(71) := 'DA24D1579E7C0277DFB43678752DC82E446EAAF774DFEE207D5E8E9CFE5C0D433D32F5862DBA106002D0059737B096004E5795817EE6CAEB1B9C6DDCC8896AC0E6BA36383B7DB7C62A9E2EA70BA70FD5047CDF5F0943D7E7B63E813FAFFB550FB365F72B';
wwv_flow_imp.g_varchar2_table(72) := 'E4ED36A76B4EF5F057E254D47A4F2ADABC7B7DC07094865B50F757A0730828AF2ED1ABE90EE273211D9BEBDB54B709A32F51ED7A2C074E7CA20637EBB16A6A064D6C610208B170E8A92349DE6E67598DFE61C088A273E11013824A16E8104EC5AEBD76B4';
wwv_flow_imp.g_varchar2_table(73) := 'FA7699B57E66B4D361A1D433089437AD8E098E444C1A312D50B0B3BA553695A1BEB94E0D63C563D555E5C3B430018401A0B61770AA523F01386C0E4C1AFB053507340C0874BC35918D76F7A11AC1A41647A21D899A391274FF916EA463F72DA65E300349';
wwv_flow_imp.g_varchar2_table(74) := 'F664E536E8EBFEE3BBD5B049221D5B1CED0150336E120B1340180591A4F9418FA3E5874392346ED824A46BDE0D68A8EAB9B598F6B90F189E8DE231797161060CCB86CDEEED1D29C0687573D8EC9832FA4AC52BE82B6D99FAF0E04E357C4A86F7C52AD591';
wwv_flow_imp.g_varchar2_table(75) := '2D4123C0041034543D03A6A42741923C15BDB5AD05B5CDFA8FB6B68B8670E9F8E9AA705A12A42EBFEAD04F2CA413E9A6A83373F29C90D6FE4FD61E42534B835B0C219F92E13D11C8EDC85FBA106002D005976F609B78CA692BE06727FEE31B20C8BBE103';
wwv_flow_imp.g_varchar2_table(76) := 'C660607EB11A9A0EFAA471B4EA10E716DAF65B77BA51D5A230AF185F18A9FFE94F02FE736C175DDC867E5844E25780DD5884FAC504102A72DDF1D27352BA6DC0FE437BD1D4E6793AA98E415A2E1BFF45356457A713B5E5DE06A37AC4A9A546E8D2A5BEF9';
wwv_flow_imp.g_varchar2_table(77) := '27E1C6A9F375BFFB4FAAB777B561EF412F01687F669CFCCD6ECC983F2680304B8526BC68228AC4D09974BB0FBC4756DD26272D1F179F77A91A8FF6CA6BC7CCAA479C594807D245C9F6F409B350903E50B9D575FDF7A16DE8ECEA70C721DC93D3B9FBEF06';
wwv_flow_imp.g_varchar2_table(78) := '238C2F268030C053A2A6657B67B23F3FF6B1980BA856BC745D278C9C82418543D5384DB5AD680D6283901AC16496D6A60E900E4AB6860F1C89E9E75DA3DCEABAB63BDBF0EE7FB6AB7132343D2FD5912DBA116002D00D59CF08F424D22ED3EDFAFC9D9E81';
wwv_flow_imp.g_varchar2_table(79) := '82709124095F9A782D32D232D5D07515CDE88CC33303686B73DDE926558FBCCC3CDC32EDFF4012FFAAA30ECBAEC36FA1BDD3B38188B04EC94CD2119B83F6860013406FC8E874D7F6028E9E3A84CA06EFF65B3DA2121D4928B9E43A350A0D2BAA4E3440FB';
wwv_flow_imp.g_varchar2_table(80) := 'F28CEA69520BE595760852DE298BC98929F8FACC6F23C9E19D2F21F7604D4B4713DEDCBB590D9E9E1B9A1C55400C2C664D9209204225939A950487E6ACC0F73F7E3324C92E59C68707DEF7894B0D8926D21A6BBC27E0FA0430D10DEDF4A3BC529E295B49';
wwv_flow_imp.g_varchar2_table(81) := '09C95850F25D64A7E4D16D4866D3BE97D4B1BF5D609CCA6BFF21E1182812134020544270932409D945E96A4C7A3FE094CEEDC1D4F8B7EE7905474E1D54E5682DEEC655D608A57169FD626DA73CD588BC69498A9EFC0B677F0F8519DE1390F4E6F364ED61';
wwv_flow_imp.g_varchar2_table(82) := 'ECD3CCFC67E6A721C45104F8AF27024C003D3109D925312501DAA5A91D7BB7A0A3CBFBE61BCEF2E7925DF06FFCC3078EC29D73EE4576468E1A9336D3541DAF87F6404DD5334616CA0BE589F2A664811AFFA2D9F784D5F89D7217D6BDF79C2212B4F55ABB';
wwv_flow_imp.g_varchar2_table(83) := 'EF42F5604BC8083001840C5DE088990569B0756F4E696C6EC0960F5FE9F3894D8D7FF3EE977D9EFCD4F8BF76C59A10A7CA0000100049444154DD28CA1C823BAFBA0FC38A46AA097676385179B40EB4C4E672BA5477A32D947643650BCE88BC509E94F48B';
wwv_flow_imp.g_varchar2_table(84) := 'F28A71D79CFB425EEE53E46CFFE43554D57B0EFE9424D1C32AF4F6B09430F17035731E9900225C3AD4F8B306886E6AB7DC5315C7B1F3C08EEEBB9E17A5F11F2F3FAA7A2A8DDF614B70BBD17159F3677CD7FDF28CDB417CB9C45C012DB1551CA943FD9966';
wwv_flow_imp.g_varchar2_table(85) := '437B04F4C4A73429EDA6BA561F829B7AC195B863D68F9095ACFF986FA196FA395CF529DEDEF7867A9F999F0A1AFFAB0E6C8908024C001181D157488A98A44A4E4D541DF77DBE0B47CE1C50EF158B4B74FBE9C9AF6DFC238A47839EFC4AE357C2DA241B66';
wwv_flow_imp.g_varchar2_table(86) := '5D7003EEB8FAFB28CCF16EA4A1B137BD5F5F71A41675154D686FEE54A244FC4AB2290D4A8BD2A4B49544529252307FD6B7441EE7C22E3914E790AE8DED757861FB2A352E9DF8A35D65513DD81236024C0061431858004D086A9F585B3F781DB54DDE9785';
wwv_flow_imp.g_varchar2_table(87) := 'A8F16FD9BD0EDAC63F7AF0B9B8F5F2BBE0DFF8B5290CCA1E81BBAEFA6FDC74C5379095EE9D1BA0302D0DEDA82E6B40F9C11AD0841C35527A5A935F2886E2920C9245324936A5A19595E848C4F48B4AF0BDEBEEC788FC73B55E21DBD7EC58A1AEF94B1277';
wwv_flow_imp.g_varchar2_table(88) := 'FD43063288884C004180144A109B5D42DEA04CD09080E2BB5C4E6CF8F75AD0CF59298DFF58F911F2721B6AFC5FBBFC5B676DFCEE80DD5FE3065D8CEF7F7931E6CD5880C2DCA26E57CF859ECC3421E7E9A6D7A2F2589DFBDD029A3368AE6B73F7123ADB9D';
wwv_flow_imp.g_varchar2_table(89) := '905DB2FB6CBECEF62EB71BF951187A0F81E2D0939E64902C92E991EEF94E4E48C18C8BAEC20F6E58821963E784F4669F4792EFF7DA0F9EC2A94AEFB16344A409717CE0A7AF76E6BB6302886299D07EF59C81DE9F016B6A69C496DDEB41DD7EDFC63F16D4';
wwv_flow_imp.g_varchar2_table(90) := 'F843C9CAF90327E2AED93FC13766DD85F3474C08288226E8946DB9F595CDEE5E42E5F13A941FAA711F3556295615E8E94E7E34AF4061294E2061B42271EDD49BF1C31B4B317DECD5116BF894D66B7B9E174B7EDEC33E32F2529192EE1D4A5118369145C0';
wwv_flow_imp.g_varchar2_table(91) := '1659712CCD1F015ABACAD64C0A96579EF2E9F68F197C1EBE72D91DFED174DF8FCC3F0FF3A62CC28FE72DC79C4BE7815EB94584FE86140EC7F409255850F21DDC73ED624C1A360D09B6C836CCCDFF79091F7CFAAE9A639A47C9E01D7F2A1ED1B23001440B';
wwv_flow_imp.g_varchar2_table(92) := '598DDCD4AC64A46B5E1852BC460F1E8B9BA7DD1174B75F8977B66B6A423A260FBF1C7795FC177E7CD3722C98FD1D5C33E5464C3C670AA821A7A79C7D292D37331FE3474DC4555F98EB6EF03FBDE5612C9AF903CC386F0E86E58D395BD221FB6DFD789DCF';
wwv_flow_imp.g_varchar2_table(93) := '8B3E34E9975D9816B23C8E183C02B6E08372C87010A0FD01C969BE4FCD8ECE36900947EED9E2A626A66358EE185C3C623ABE3CE9567743FED1DCE5F8D9577F837BE6DEEF5E51B873CEBD6EFB7DF31EC403B7FE1EDF9DF30BDC70C902F7811DD4E023FDA4';
wwv_flow_imp.g_varchar2_table(94) := 'F7CFEFCB1F3C8D1D9AE5BEC42407F20667429224FFA071771F0F19660230B09468422B29C5B3B64FC9D2EF09FCEDB5875156EFDD0340EED1360EC901DA9B3F48AC28D04623B2A724A4453B591FF9F47AEF53DBFF04ED011F840D357E65E2D42702DF4405';
wwv_flow_imp.g_varchar2_table(95) := '012680A8C01A582855EC5CB13240E35B2544536B1356BCFE183E38F296E2D4EFAF554DA7F1F70DBFC5D1F243AAAED43B226CA4EE5D94AA075BA28A00134054E1ED299C7AB63945E9D04E70D1B2E06BEFBF889776AE46A7ABA367A47EE4B2E7F8BB78FCB5';
wwv_flow_imp.g_varchar2_table(96) := 'DFA1A6C17B680ABD3F915B9C21BAFDFD48D138518509204605454B5CD903D27D52FFE8D0877872F3EF51DFE6FDD14B9F00717C435DFE17DE5B8175EF3C0FA7B34BD584CE54CCEE877BFC55054D6E6102886101A56625217F7016B43B06CFD49CC6E3AFFE';
wwv_flow_imp.g_varchar2_table(97) := '1647AA3E8D61CE229BF467A7F7E2AFAFFC1A9F1CDDA70AB6DB6DA08D52B4C75F75648BE1083001180EB96F8289290ED00F696837BCB475B4E2E9CD7FC33FDF5F89CAA632DF08717457DB5285D5DBFE88E7B7AD4463F759FE947DDA1B51302CDBFD7A2FDD';
wwv_flow_imp.g_varchar2_table(98) := 'B3891D024C00B1C35E4D9926BE68C720CD0DD044A1E2F1F191BDF8DFF5BFC18B6E2228579C4D7FAD6BADC62B1FFE3FFC65DDAF70ECF41135BF922421AB20CDFDE4B7D979994F052686165B0CD3E6A4FD10A0D58182A1D9A0B570ADD77E37113C22886095';
wwv_flow_imp.g_varchar2_table(99) := 'E8118476D6A0565EB4ECB5AD557865F773F8F3CBBFC4EECFDE834BA61FF2F2A446B3FC05C3B290166043942744FFF98E274D98004C565AF6041BF28766817A0374FAAD367BFB8FEC113D8287B1F683A750DD7C46EB1553FBC9DA2378553CF1FFB45634FC';
wwv_flow_imp.g_varchar2_table(100) := 'CFDFF769F8F43E048DF56996DF5F9F98669A137723C004E086C17C5FD41B18303C1B3443AE9D24A49CEE3BB85B74AF7F8DBF6FFA2DB67DBC1EC76A0EA0CB15BD7300284DADA1E77A79FD716CD9FF321E7D7909566CF823768927BE368C5D4CF2D12AC700';
wwv_flow_imp.g_varchar2_table(101) := '1EEB6B61319D9D09C07445E29B215A232F1C91E31E3BDB44A3D2FA96579FC25BFBB660F5C6BFE091177E866777FC0D3B8F6C17C384725023D5860DD7DED6D5029ACDA727FDA36B1FC0DF5FFB3DDEF968ABCFE41EA5E170D8DC7925F2A2550E7263635E04';
wwv_flow_imp.g_varchar2_table(102) := '9800CC5B363E39A3B173D1C81C50575ABB62A00472BA9C3878F253BCFEFE4B6298F0081E7CEE47F8CBABBFC4D36FFE192F7FF00CB68A9E0291C367E57B415D769AA853361DB577B5824EE1A96EAE4059FD311C38B31F1F1E7B07DB3F7D15EB763D83956F';
wwv_flow_imp.g_varchar2_table(103) := 'FC01BF79E117EED97C7AD237B53629C9AA57EAB150577F80202BCA2B4D6CAA9E16B2C49BAA4C007156623499462B060347E5BA8707B4A4D6DB7C7A7543158E941DC4DE831F6087E82910393CBF7DA5BBCBFED8DA07F1D0F33FC17241148FBCF0733CFAAF';
wwv_flow_imp.g_varchar2_table(104) := 'A56258F1109E78ED513CF7C6DFB1FEDD357873CF26EC39F0014E9C09FCAE028DE9691DBF6864AE7BCE82F21267705A3EBB4C00715A05E8094BC3037AEA160932A09E01EDAAA31584DE08215C55695C4FBD8FAC0169EEBD0BD4CDA7346DBCA48778FD6302';
wwv_flow_imp.g_varchar2_table(105) := '88D792D3E49BC8807A06F434A61504220422067ADF202D2BD97DAA0EBD694733F2FEF3081A31AA55922424263B40DD7ADAB24C2B12349957288620D4FB2099240BFC17F708D8E25E0356A007024408D41DA7C64B4F6B6AB4F49A2D35629A47281E938722';
wwv_flow_imp.g_varchar2_table(106) := '31562F189AE5DE8A4C7B0F0A87E780FC068ECE0599FC219EA548221122026EF03D60EEE1108F0E86108053929CF1084E7FCEB34DCCD6D3C93BB4153921C90EDA7F40BD03498AD600A23FA31905DD6CB68E2848ED21D2D6C3250A0E76268028A0CA22FB33';
wwv_flow_imp.g_varchar2_table(107) := '02CE0E631E9A86108051CAF4E70AC1BA590B0187AD1F118051CA58AB8AB0B6664220D27991523ABB222D33903C437A004629134841766304E21181CED67ED403E8743A5AE3B11038CF8C40CC1048B4F79F49400C686E8919909C3023108F0818D4660C19';
wwv_flow_imp.g_varchar2_table(108) := '02948E5B436CD61E8FE5C0796604FA42200AFEEDDD6D260AA27D451A42009E2465F39E64E1C9207F33022641C0B8B6622001D898004C52BD381B6647C016F8EDAB2864DB160599BD896402E80D197667047C1130ACAD18470012FACF39D7BE85C5771646';
wwv_flow_imp.g_varchar2_table(109) := '202AAA4BE87F3D0009D803FE630418813E1130B2AD18D6037039C10400FE6304FA46C0C8B6621801E0DDE19F0BD55DC2F0871160047A47A0A5BBADF41E22823E8611406969A968FCF28108E69D4531023145203A894B1F79DA4A74A4FB4B358C003C09DB';
wwv_flow_imp.g_varchar2_table(110) := '7818E00182BF1981C008C830B48DD860E09F24631BF88F1160047A45C0C80940CA84A104E04AE85C2F129585E10F23C008F4444076C1F6724FE7E8B9184A00A5339F390949F6FE4674F4F462C98C405411888A70D1364A673F591615D9BD083594003C79';
wwv_flow_imp.g_varchar2_table(111) := 'B0BDEEB9F23723C008F822607CDB309C0064194C00BEA5CE778C801B01D1365E725B0CFC329C0006E624BE0DC8C70CD491936204E20181E3701CFDC0E88C1A4E00775FFC7827605B69B4A29C1E23102904A223475A513A739B21E7006AF36FD3DE1865B7';
wwv_flow_imp.g_varchar2_table(112) := 'DBEC2B445AB230FC61041801A0CB05E793B10022260470FF979E10430069632C14E6341901F32120BDB2B4E4A9E3B1C8574C088014158FFF87E8CA8611B03A02A22D3C1A2B0C624600A5252BB701D206F01F23104708443EABD2064F5B88BCE46024C68C';
wwv_flow_imp.g_varchar2_table(113) := '00287392D3F613BAB26104AC8A8004FC572C758F29012CBEFAC9BD80B416FCC70858120169EDE292951FC552F5981200292E3BBBEE13D72661F8C308580981669B4DFE71AC158E3901945EFDF44109D203B10682D36704FA422092FE922CDDF7C097561D';
wwv_flow_imp.g_varchar2_table(114) := '8AA4CC5064C59C0028D3636B9B1F13D71DC2F08711B002026F2F9EBDF27FCDA0A82908E0965BD63865A7F37601080F050408FCE9D70888AE3F169A454353100081414301715D248C4B18FE3002FD11011764F9363374FD15704D430094A12525ABFE29E6';
wwv_flow_imp.g_varchar2_table(115) := '037E4176368C80991088445E44DDFEF192D9ABFF1509599192612A0220A5C4B208ED10A47705E8960D23D03F1090A43F88BA1DB31D7FBD81683A02A08C16E524DD0D199BC8CE8611887B0424FC4BDE31FC5E33EA614A02A05786E5F6A41B24C82F9A1134';
wwv_flow_imp.g_varchar2_table(116) := 'CE1323103C02D25AB935697E69291D8B1F7C2CA3429A920048F9D2EB1E6F7960D6EA9B65E041BA67C308C40A8190D395F1EBC5B356DE4875396419518E685A0220BD25D105282D59F58004D0B28993DCD830027180400724CC5F327BD5CFA90E9B39BFA6';
wwv_flow_imp.g_varchar2_table(117) := '260005B8C525AB564B2ED73440FE4C71E32B236052043E9265D7B425B3563D63D2FCF9642B2E088072BCF8AAA7DE971DB68B006929804E61F8C3089809814EC8F27231813DB974F653869FED172A10B65023C6225EE9CC956D4B4A5696CA927C81E862AD';
wwv_flow_imp.g_varchar2_table(118) := '8B451E384D6B211084B6A23AE205D9E93C5FACF12FA609EC20E29826485C1180825AE9ACD59F8B2ED6F5928CCB85DBDBC2F08711301C013137B54D4C534D5E3C7BD557BA77B21A9E8770138C4B02509416C0BFBDA464D5E532A4A9627EE029E1DE2E0C7F';
wwv_flow_imp.g_varchar2_table(119) := '188168224075EC197AF888B9A9998B4B567F18CDC4A22D3BAE094001A7B464E57B4B4A562F901D1D83052BD3092B317FCD52C91B5FFB0D028725093FA13AB6A464D57C7AF8F407CDFA05012805513AF3D9AAC525AB7E2B0A6834E0BA5AF40CFE22FC4E08';
wwv_flow_imp.g_varchar2_table(120) := 'C31F464037022202D59DBF4292668B3A356AF1AC558F501D13EEFDE6D3AF08405B2A4B4A9EA2C316BF2B0A6EA8E4B45F247A060F40C29B224CB330FC61040221D0ECAE2392B45896A589547784F9CE92592BFBEDB6F47E4B00DAD2A5B3071797AC7A70C9';
wwv_flow_imp.g_varchar2_table(121) := 'AC55334481A6CB927D94E81DCC93252C83E74CC23D000CFD5556911E7F62870095B52873692DD501AA0B361B4653DD70D791592B9797CE5E29FC639741A352B60401F883593AEBC9C362DEE0C5D259AB962C295979C3929255C4F683C455CAE9CC4C961D';
wwv_flow_imp.g_varchar2_table(122) := '528E3003ED89B6A1B644D7489B2C9D234BB67162BD67826CB34D965CB8988DF930A0B2719791282B2A332A3B2A432A4B6172A86CA98C85A1B29EB844943DD501AA0B667A47DFBFBE46F3DE9204703640BF3FE7B1F6D2992BEB84397DFF8C15271E98F1D4';
wwv_flow_imp.g_varchar2_table(123) := '910766AF3C503A6BC5C762F9715FE99756EC5E7CD5AA5D6CCC8701958DBB8C4459519951D9511952590A5347657BB6B2D7FA59C5CE04609592663D1981000830010400859D1801AB20C004609592663D1981000830010400859DAC8D8095B46702B05269';
wwv_flow_imp.g_varchar2_table(124) := 'B3AE8C801F024C007E80F02D236025049800AC54DAAC2B23E0870013801F207C6B6D04ACA63D1380D54A9CF565043408300168C060D2C422DC0000009A494441542B236035049800AC56E2AC2F23A04180094003065BAD8D8015B56702B062A9B3CE8C40';
wwv_flow_imp.g_varchar2_table(125) := '37024C00DD40F08511B022024C00562C75D69911E8468009A01B08BE581B01AB6ACF0460D59267BD19018100138000813F8C8055116002B06AC9B3DE8C804080094080C01F6B236065ED9900AC5CFAACBBE5116002B07C156000AC8C001380954B9F75B7';
wwv_flow_imp.g_varchar2_table(126) := '3C024C0096AF02D606C0EADAFF7F000000FFFF8BF77D4600000006494441540300B811510F405FB5D80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8183498192484027)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000368494441547801EC955F685B5518C07FC9CDBD497393A64D6A2BED5A11A751D93A9159DAD9D96D2258D73D0C7C19B2CE07C107419DAF0A2288AF0AF30F82F820';
wwv_flow_imp.g_varchar2_table(2) := '7682F341A6F3BF03BB31079D1D8A32D76D9495A57FD2F62E6DD2E4DEE4E6DE9D7BBBED610FB93730188CDCE47CE73BE77CDFF97EF9CE777283EFFC7AC0BE932DC81D7E1A008D0C3432507706CAA50AC6559B88D18A5ABE87647503D29A4A7EA948D5B4EA';
wwv_flow_imp.g_varchar2_table(3) := 'BED4BE016CCB269FD5D9DABD93BDFDA3ECEA1DE1919E5EFA1E1AE2C5A70EF2F2AE37D9941C604D33B06DDB37882F004B04B7F30A237DFBD890BA1FCBB698D566989EBBC0C5B973ACEA399A64956D0F3EC3FE275F236C2404843F065F00A55C99A1DE61D4';
wwv_flow_imp.g_varchar2_table(4) := '708C85DC2C4727C698B8F23B8BF665A60A7F7178F203C6FE3C44AEB44C6BB48DBD5B0FA05FADF822F004A856AA6CEA7E8278244176658EF173C750122087431473BADB1C5D5756F87AE253B4E222B17082C1F43066B9EA0911F4B2D0F315D25D9B454A6D';
wwv_flow_imp.g_varchar2_table(5) := 'CE5C3A819A8CDC7419DCF81C831B876F8E25D5E2D8D9C3EE78B3802EAD1AAE5E4B7802C494168281204BF9058C40A1D65EEE5ABEAA892C64910292388E7677AE96F00448C5D63799D732C89190BB575937C92F1785BE5EED8F257750D04A628CB091C815';
wwv_flow_imp.g_varchar2_table(6) := '35576F6FEE74FB5A22586BD1595B0F01966522CEC199C258ABF0D6C847AEEE88A1F46EB174C312B7589DF9A8285AA7AFD53C01967259D7BF259EA26278179563A32A71D7676125E3F6B58427C0EAF5747626EFC31459AF88F48B54F0EEF7AF70E2C20F6E';
wwv_flow_imp.g_varchar2_table(7) := '7374278873341DD11EF71638E36CE13600841321A666FF459664FAD33B2915CAC49351E2A95B9A98934C99DD5BF639B1393B730A45F5FC7D785A445485C94BA798CF65985FBEC2E8F6D74958F7525CD1A9562C4CF13F61E44D1E886DE18581578984A22C';
wwv_flow_imp.g_varchar2_table(8) := '15E619FFFF472439E8C2D412DE16C23BDE16E19733DF32907E9A54B49DE7FB5E62FFC041FABB9E657BCF1E46B7BDC18E87F7E09CFD8C76916F4E7F4E2C19169EDE5F5F0081608054579C2FC73F6462FA0F6CF169694AD1DBDDC7A39D8F13539AC5DD5FE4';
wwv_flow_imp.g_varchar2_table(9) := 'BBC9AF3872FA33420951AC01EFE08E852F00C7D08168EE6812EF80E31CFAF96DC64E7ECCF1FF8EF2D3DF47F8E4B7F7F8E2E4FB64F4295A3A6238B68E8F9FE61BE0C666E1A88CDAA6A037694CEBFF9031CFA3B45A6E51CA61897A9FBA01EA0DE065DF0068';
wwv_flow_imp.g_varchar2_table(10) := '64E0EECF80D72DB8060000FFFF9149D44500000006494441540300E3967E90CA8586C60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8182566090484008)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD07981DD5B5E7FBAF93BAFB740EEA6EE580B284020821218104088149C6D8181B03B6717EB6DF7D77EEF7BD3733DFFD66DE7C6FBE99F1BD';
wwv_flow_imp.g_varchar2_table(2) := '77666EB2AF33D806636CC0E460814412A08802424259ADD0399ECE27BD5A070984D4B5AB4EAC3AA7FEAD3EEA736AAFBDF75ABFB54FD5AA9DCAF35F367C35CE1719B00DB00DB00DB00DB00DB8AB0D78C01F1220011220011220019711001800B8CEE53498';
wwv_flow_imp.g_varchar2_table(3) := '044880044880041800B00D9000099000099080EB0888C1EC01100A7C9100099000099080CB0830007099C3692E099000099080DB097C643F03808F38F07F122001122001127015010600AE72378D250112200112703B8173F633003847827F4980044880';
wwv_flow_imp.g_varchar2_table(4) := '0448C045041800B8C8D934950448800448C0ED043EB19F01C0272CF88E044880044880045C438001806B5C4D43498004488004DC4EE07CFB19009C4F83EF49800448800448C025041800B8C4D134930448800448C0ED043E6D3F03804FF3E02712200112';
wwv_flow_imp.g_varchar2_table(5) := '2001127005010600AE70338D240112200112703B810BED67007021117E260112200112200117106000E00227D344122001122001B713B8D87E06001733E111122001122001122878020C000ADEC534900448800448C0ED04C6B29F01C05854788C044880';
wwv_flow_imp.g_varchar2_table(6) := '044880040A9C000380027730CD230112200112703B81B1ED67003036171E25011220011220818226C000A0A0DD4BE3488004488004DC4EC0C87E06004664789C044880044880040A9800038002762E4D230112200112703B0163FB190018B3610A099000';
wwv_flow_imp.g_varchar2_table(7) := '09900009142C01060005EB5A1A460224400224E076022AFB1900A8E8308D044880044880040A9400038002752CCD220112200112703B01B5FD0C00D47C984A02244002244002054980014041BA9546910009900009B89D8099FD0C00CC08319D04488004';
wwv_flow_imp.g_varchar2_table(8) := '4880040A9000038002742A4D220112200112703B0173FB19009833A20409900009900009141C01060005E7521A440224400224E0760256EC67006085126548800448800448A0C0083000283087D21C122001122001B713B0663F03006B9C284502244002';
wwv_flow_imp.g_varchar2_table(9) := '244002054580014041B993C6900009900009B89D8055FB190058254539122001122001122820020C000AC89934850448800448C0ED04ACDBCF00C03A2B4A9200099000099040C11060005030AEA4212440022440026E27908CFD0C0092A1455912200112';
wwv_flow_imp.g_varchar2_table(10) := '2001122810020C000AC49134830448800448C0ED0492B39F014072BC284D02244002244002054180014041B89146900009900009B89D40B2F63300489618E549800448800448A000083000280027D204122001122001B71348DE7E0600C933630E122001';
wwv_flow_imp.g_varchar2_table(11) := '12200112C87B020C00F2DE8534800448800448C0ED0452B19F01402AD4988704488004488004F29C0003803C7720D5270112200112703B81D4EC6700901A37E62201122001122081BC26C00020AFDD47E5498004488004DC4E2055FB1900A44A8EF94880';
wwv_flow_imp.g_varchar2_table(12) := '0448800448208F093000C863E75175122001122001B71348DD7E0600A9B3634E12200112200112C85B020C00F2D675549C0448800448C0ED04D2B19F01403AF4989704488004488004F2940003803C751CD5260112200112703B81F4EC6700901E3FE626';
wwv_flow_imp.g_varchar2_table(13) := '01122001122081BC24C000202FDD46A5498004488004DC4E205DFB1900A44B90F949800448800448200F093000C843A75165122001122001B71348DF7E0600E9336409244002244002249077041800E49DCBA830099000099080DB0964C27E060099A0C8';
wwv_flow_imp.g_varchar2_table(14) := '324880044880044820CF083000C83387515D122001122001B713C88CFD0C0032C391A590000990000990405E1160009057EEA2B22440022440026E279029FB1900648A24CB21011220011220813C22C000208F9C4555498004488004DC4E2073F63300C8';
wwv_flow_imp.g_varchar2_table(15) := '1C4B9644022440022440027943800140DEB88A8A920009900009B89D4026ED670090499A2C8B04488004488004F2840003803C7114D5240112200112703B81CCDACF0020B33C591A09900009900009E40501060079E1262A490224400224E0760299B69F';
wwv_flow_imp.g_varchar2_table(16) := '0140A689B23C12200112200112C803020C00F2C04954910448800448C0ED04326F3F0380CC33658924400224400224E078020C001CEF222A480224400224E07602D9B09F014036A8B24C1220011220011270380106000E7710D5230112200112703B81EC';
wwv_flow_imp.g_varchar2_table(17) := 'D8CF00203B5C592A09900009900009389A00030047BB87CA910009900009B89D40B6EC6700902DB22C97044880044880041C4C800180839D43D5488004488004DC4E207BF63300C81E5B964C022440022440028E25C000C0B1AEA1622440022440026E27';
wwv_flow_imp.g_varchar2_table(18) := '904DFB190064932ECB260112200112200187126000E050C7502D122001122001B713C8AEFD0C00B2CB97A593000990000990802309300070A45BA814099000099080DB0964DB7E0600D926CCF249800448800448C08104180038D02954890448800448C0';
wwv_flow_imp.g_varchar2_table(19) := 'ED04B26F3F0380EC33660D24400224400224E038020C001CE7122A440224400224E07602B9B09F01402E28B30E1220011220011270180106000E7308D5210112200112703B81DCD8CF0020379C590B09900009900009388A00030047B983CA9000099000';
wwv_flow_imp.g_varchar2_table(20) := '09B89D40AEEC6700902BD2AC87044880044880041C44800180839C4155488004488004DC4E2077F63300C81D6BD644022440022440028E21C000C031AEA0222440022440026E27904BFB1900E49236EB220112200112200187106000E01047500D122001';
wwv_flow_imp.g_varchar2_table(21) := '122001B713C8ADFD0C0072CB9BB591000990000990802308300070841BA804099000099080DB09E4DA7E0600B926CEFA48800448800448C00104180038C00954810448800448C0ED04726F3F0380DC33678D24400224400224603B010600B6BB800A9000';
wwv_flow_imp.g_varchar2_table(22) := '09900009B89D801DF63300B0833AEB24011220011220019B093000B0D901AC9E0448800448C0ED04ECB19F01803DDC592B09900009900009D84A800180ADF85939099000099080DB09D8653F0300BBC8B35E12200112200112B0910003001BE1B36A1220';
wwv_flow_imp.g_varchar2_table(23) := '01122001B713B0CF7E0600F6B167CD24400224400224601B010600B6A167C52440022440026E2760A7FD0C00ECA4CFBA49800448800448C026020C006C02CF6A498004488004DC4EC05EFB1900D8CB9FB593000990000990802D041800D8829D95920009';
wwv_flow_imp.g_varchar2_table(24) := '900009B89D80DDF63300B0DB03AC9F04D220108DC4101E8E60B87F14033DC3E8EB1844774B3F3A4FF5A1E3642FDA9BF4D7891EB41DEF41EBB16EB41EED46CB912E341FD65F873AD12C2FFD7D8B7E5CD245AE5D97EFD0F375E865743787D0DB368050D710';
wwv_flow_imp.g_varchar2_table(25) := '067B87313C309AA84FEA8DC7D3509C594980046C27C000C07617500112501388EB57DAD1A148E202DFD3DA9FB8B0CBC5FA8C7EF196BFEDFA85BE4B2ED4ED03E8EF1EC25068042343618CEA8141782482F0681491701472D18E466388C5E29032E5FA9D78';
wwv_flow_imp.g_varchar2_table(26) := 'E9E5C7F4E3922E72223FAAE71BD5CB1892C042BFF0873A07D1A307025D674290FAA4DEE6C39D90BF9DA7FBD0A7D72D01C2A8AE672C2AA5AA6D622A099080FD041800D8EF036A40021F1388E977F4230361F4EB77DC72F72D77E472B7DE71AA17BD7291ED';
wwv_flow_imp.g_varchar2_table(27) := '1B495CD8E562FD71261BDF881E2383BABE7AEF830408A267CBD12E484F43A7DE83D0D73E980848227A1062A39AAC9A0448600C020C00C680C24324902B0271FD6E5C2EF87271978B7D8BDE4DDF7946BFA3D6EFB8E5EE5BEEC873A54B26EB919E8611BD07';
wwv_flow_imp.g_varchar2_table(28) := 'A1BF67283124D1A60F2BB4E8430DE7070512EC64B24E964502F944C009BA3200708217A883AB0848D7BC74D577E95DE7CDFA78BC5CF007F43BE87CBDD85B755E4C1F6A383F28906047E629486F87CC63B05A0EE548800432438001406638B21412302420';
wwv_flow_imp.g_varchar2_table(29) := '63E2322E2FE3F772972F173D99AC37AC779D1B6672498204437D7A6F87CC2B1036D21322131A659E824B10D04C57127086D10C009CE1076A516004CE5DF465467EDBF1EE4437F8A03E7E5FE877F9E9B851D8484F884C686CD38742849D044EC2329D7299';
wwv_flow_imp.g_varchar2_table(30) := '970448606C020C00C6E6C2A324903401B950C9054B2E5CE72EFAF29977B349A34CAC54107617B1E40A83E4613287E30838452106004EF104F5C85B02D2657DD1852A96FDA5709AA6C1EBF1C2E7F1C1E7F5C3EF0DA0A4A8045515D5185F3F01D3275D82B9';
wwv_flow_imp.g_varchar2_table(31) := '331660E9BC6558BDF45A2C59B014663FB367CFC2F5CB6FC6CD2BEFC40D57DC8A354BD663E5C235B87CCE0A2C98BE043327CEC1E4FAE9A8AF1A8FF2E20AB3E232922E01D485C18030CF48E12C84045C4CC0E362DB693A09A44C20168D25D6E5CB8639D265';
wwv_flow_imp.g_varchar2_table(32) := '2D1728B950A55CA0858C9AE64169713926374CC5E2D95760ED6537E2F6ABBF882F5C773FBE7CC33770EF4DDFC13D377C079FBFE6ABB879F91771FD92DBB07AFE0DB8FC92D5983B7131E64DBC0C1E3D6030AAAABAB416EBE6DE89AB66E879A65E8D15975C';
wwv_flow_imp.g_varchar2_table(33) := '8F6BE67E06EB16DE819B97DE8D3BAFFC2AEEBEFADBB8EBEAAFE37357DF833BAFBD179F5B7B0FD65E7E03E65F7229EA6BEAF520C467547C468E0B63612DCC65C3229940180DC73252360B2181DC10704E2D0C009CE30B6A92070464B6BA6C7AD37EA237B1';
wwv_flow_imp.g_varchar2_table(34) := '2E5F36CCC9B4DA9AA6A1B2B446BFDB9E87E5F356639D7E27FEC56BBF86AFDCF0ADC4C57EDDE5B763D9ACAB3063FC5CD49637A04CBF132FF215C3AB79A1011FBF70C14F383672C1914F7F2CD5838B8AE29A4F1FBCE093077A10E22F477DE9244CA99C8585';
wwv_flow_imp.g_varchar2_table(35) := '8D57E0EA5937E3F3573C806FAFFFF7F87777FE577CFFF6FF802F5FF74DAC5FF6592C9DB91C13AA272B038F0BAAB0FC51362C920984B2C4502658CA7E0496335390044840FF3613020990802901E972968D7964B67A7FCF30649DBB69268B022581523456';
wwv_flow_imp.g_varchar2_table(36) := '4DC4A299CBB07EF96771E79AAFE096D59FC7EAC5D761D125CB30AD61262A4AAB501C2881DFE38774FB6B9A96B8D05BAC2221168BABEF94BDFA5082041109E114FE138D02DE22D404EB31B37E01AE9CB916EB97DE89BBD67E1D5FBFF107895E8385972C45';
wwv_flow_imp.g_varchar2_table(37) := '75594D62C822852AC6CC22BB1ACA044BD99150B62F961D09C714E4411270000127A9C01E00277983BA388EC060EF083EEEE6EF1FCD887E3E7DBCBEBCA41253C7CFC0558BF48BE48A5B71F3AACF63F9DCD598A28FAF5797D521E82F854FBFD823CF7F2420';
wwv_flow_imp.g_varchar2_table(38) := 'A828AAC684CA695838F10A7CEE8AFBF17FDCF21FF1B51B7F886B2FBF09131B26C3EBCDDC6948B62F961D09E5190883BDC3794E8FEA9340760964EE9B975D3D593A09E49480DC51CA7AFD9EB67E64A29B5FD334D455D7EB63F797E1FA2B6EC61DD77C1937';
wwv_flow_imp.g_varchar2_table(39) := 'E85DF9F3A72CC1B88AF1F068EEF92A7A342FC6574CC6EA5937E2BE353FC0FFF9D9FF84FB6EF81EAE5CB81A8D7513F4A18CF459C833107ADA06C04020A75F1B56664AC05902E97FD39C650FB52181B408C80433D9AE56C69465939AB40AD3339795954266';
wwv_flow_imp.g_varchar2_table(40) := 'E17FE1DAFB70C7AA7B70C5EC6B30B96E3A8AFCC57A2A7FFD9E00CA029598563B1BEB177E1E775FFD0DDCB1F61E2C9E7719AAAA2A91EE0F03817409327F2113600050C8DEA56D9609C818BF8C21CB723ED9AED672C6310403FE00664D9D831B57EAE3F957';
wwv_flow_imp.g_varchar2_table(41) := 'DF9F98855F19544FAE1BA318571EAA28AAC1FC86CB71FBE2FBF09DF5FF015F5EF74D2C9ABD142525C569F138170848AF8EF83AADC29899045224E0B46C0C009CE611EA9353023273BCEB4C08B2AC4CDEA753797D4D03AE58B8129FBDE64B58BD603D26D7';
wwv_flow_imp.g_varchar2_table(42) := '4E878C81A753A69BF3063C459859B700372FF912BE72FD77B1E6F27598D83811320932552E4340573C0000100049444154D2AB23BE961E1E3EA130558ACC5728041800148A276947520462D138E451B572D73F3C90FAE4BEE2A212CC9C3A1BEBAEBC1937';
wwv_flow_imp.g_varchar2_table(43) := '5C713B164FBB12952535695DA49232C405C2324C30BE6C2AAE99750BBEB6E6DF7DD42B3067094A82A9F70A9C9BE311EA1A82AC22007F4820EB049C57010300E7F9841A6599C047E3FCBDE8EF194AB9A6F2B2722C5BB002B7ADBE0B6B2FBD19D3C6CD4689';
wwv_flow_imp.g_varchar2_table(44) := 'BF34E5F298D11A018FE6C1F49AB9B87DE9FDF8FECD7F9BE03F7DF28C942651CAA642A1CE41749CECC35028F520D09AE6942201E7116000E03C9F50A32C11902E5F19E397976C22934A3532A9EFCA45AB71E735F763C9F41589BBFD54CA619EF40868D050';
wwv_flow_imp.g_varchar2_table(45) := 'E22BC5924957E10B577E0377ACF91226344E48A950991FD0DD12424F4B3FA48DA4540833918009012726330070A257A853C609F4770FE9777ABDFA9D9E7A373CA38A6BAA6A70D59235F8C2355FC3A553962536E43192E5F1DC1228F605B1A0F10AC8F0C0';
wwv_flow_imp.g_varchar2_table(46) := '5DD7DD8F699366A4A4C06068041DA77A31D0CDFD035202C84C7947800140DEB98C0A2743403686E93CD587BE8EC1C413E692C92BB2B5357558B5742D6E597117E64D5A5A109BF3885D85F8925D0CE7D62FC517563C00E91118DF383E6933656E486FC700';
wwv_flow_imp.g_varchar2_table(47) := '646E88B49DA40B600612189380330F320070A65FA8550608C85DBF5CFC5359D6575559A9DFF15F83F5CB6EC7BC894B50E42BD13B9D33A0148BC83A01191AB874FC95F8FA9ABF493CACA8A1A121E93A6545886C2B2C81633C074F764C5A416620810C1060';
wwv_flow_imp.g_varchar2_table(48) := '009001882CC2590422E12864DFFEC4C93B49D5CACBCB70E5E2AB70B37EC73F7FD265280D54245902C59D42407A04E461450FE881C0EDD7DC95D21C01092225109080C02976518FFC23E0548D190038D533D42B25021FCDF0EFC35092FBF66B9A86F93317';
wwv_flow_imp.g_varchar2_table(49) := 'E28E55F7E2D2C9CB11F497A5543F33398F80CFE3C7E20957E1AE95DFD08773D62098E4F24199242843029C1BE03CDF52A3F4083000488F1F733B848074D3F6B60F4066F84723EAA7DE5DA872E3B8F189A7EFAD9C73BDDED59FFADAF20BCBE5676711905D';
wwv_flow_imp.g_varchar2_table(50) := '06AF9B7307BEB6EEAF12C15EB2DAC9DC00D94048960F269B97F26E26E05CDB190038D737D4CC2201E99E4DDCA1F524377BBBB4B814CB16AEC08D57DC89C6CA49D034CD628D14CB6702B5C146DC76D9BDB865D59DA8AF6B48CA14D940A8EB741F38413029';
wwv_flow_imp.g_varchar2_table(51) := '6C1476280106000E750CD5B2466040BFE8CBC55FB678B59603890BFD8CC99760DD95B762C9B4155CD207F7FDC836C3974DBE1AF7AFFD21562FBE161E8F661982B4B5CED3210CF071C39699B959D0C9B6330070B277A89B92406FDB00A4DB5F2974416230';
wwv_flow_imp.g_varchar2_table(52) := '588A554BD6E2DAC5B7625C79F2CBC42E288E1FF39C80AC18B876DEED78E0A6FF0B3327CF4E0487564C92ED8313ED4F6F8356E42943024E24C000C0895EA14EA6043AF56ED864EFC0664F9F873BAFFE0AE64E5C0C4DFF07FE90C05902E32BA6E00B2BBF81';
wwv_flow_imp.g_varchar2_table(53) := '5B567C1E5565D5678F9AFF9136286D51020273694AB88F80B32D6600E06CFF50BB0B0844C331B41EEB868CFB5F9064F8D1EFF3E1BA659FC1350B6E44B13F6828C7047713F07B02583A7515BE71E3DF60C1F4259661485B6C3BDEC36D842D13A3A0530830';
wwv_flow_imp.g_varchar2_table(54) := '00708A27A887290139D1B61EEF4632B3FCEB6B1BF099ABEEC48CC639A6E55380048440D05F8ACF2EFF0AAE5EB44EEF27D2E490E94BDA64DB891EA4F36449D34A289077049CAE300300A77B88FA25080C9C9DEC97F860E13F4D3F75CF9C3A07D75D762BEA';
wwv_flow_imp.g_varchar2_table(55) := '2B527B488C856A2852A004BC9A0F6BE7DF822FAEFD3AFCBE80652BBBCE8430A0B755CB192848023612600060237C566D8D803CB23599C97E3EAF1FCB16AEC4350BD7A3ACA8DC5A259422813108CC6EBC145F5FFF43CC98307B8CD4B10F495B95363B762A';
wwv_flow_imp.g_varchar2_table(56) := '8FBA8780F32D6500E07C1FB95AC3BEF60184BA862C33280B96E1C615B763F1B4E5F0685ECBF928480246041A2A26E1732BEFC3A299971B895C745CDA2C83808BB0F080C3083000709843A8CE27046499557F12DDA95327CCC06DABEEC6F8EAC99F14C277';
wwv_flow_imp.g_varchar2_table(57) := '24900102B235F46797DD8BDBAFFA12A487C94A910C02AC502A5C997CB08C01403E78C9853AF6B4F443965859357DF19CCBB176F14D286597BF5564944B81C0E22957E2811BFF0A56970A3208480132B3E48C0003809CA166455609C893FC06432396C43D';
wwv_flow_imp.g_varchar2_table(58) := '9A078BE72EC3E53357C1EF0D58CA4321630271E324A69C25D0503111F75EF73DD454D69E3DA2FEC32040CDA73053F3C32A0600F9E127D76829B3A8AD3EC9CFEBF1E2B2F95762997EF19740C035905234D4AB79A129F20E8D0E62349ADCF31414C5157452';
wwv_flow_imp.g_varchar2_table(59) := '75701CEEBFEE871857D360C94E060196305128C7041800E41838AB3326D079AACFF23A6A8F7EF15FB9680D964CBF52BFA8A92E6BC6F5B92DC5E7F1EB261BB3EA1BEA414BE8842EC35F2B04CA8B2A71CF35DF41639DB52DA5250818EAB3D6B365A57ECA38';
wwv_flow_imp.g_varchar2_table(60) := '9740BE68C600205F3C55E07AF6B50F6264286CC94A9FC7876B2FBB1173262DB224EF36A1582C8E48248A81C17E9CE93C8943A73FC0EEA3DBB079EF46446311431CC37A0FC02B3B9FC3CBBB9FC0F6A36FE240F36E74F6B76134320A6E753B36B68AE26ADC';
wwv_flow_imp.g_varchar2_table(61) := 'BBF6FB98D430756C810B8E76B7F64336B4BAE0303F92802D041800D8829D959E4F60B87F14FD3D43E71F327C1FF015E3A69577607AE36CFDCEDF50ACE01362D1383A7B3B70BCF930F61DDB8D6DFB3763D3CE97F0DCE6C7F1D41BBFC7936F3C8C67363F86';
wwv_flow_imp.g_varchar2_table(62) := '57B73F8FB7F7BC866D1F6C4653F371532E2DEDCDD8BAFF2DFC65FB3378EE9D3FE1918D3FC3431BFE190F6FFA299E78EBB77871FB1378F7C0EBD87F72379A3A8EA07BB01D23D121C4E231D3B20B55401E28F4A5ABBF85298DD32C9928CF0EE0E3842DA1CA';
wwv_flow_imp.g_varchar2_table(63) := '53A1FC519B0140FEF8AA20350D0F47D0D51CB2645BB0A80CEB57DC8AC6EA4996E40B45281A8B6260A41FEDBD2D3878721FDEDABD112FBCFB045EDDF13CDED2EFEADFD9B709BB8F6CC3913307D0D27D0A5DFDEDE81BECD6F38430121E46383A9A348AA8DE';
wwv_flow_imp.g_varchar2_table(64) := '5330343A80DEC12EB4F69EC6F1B683F8E0D47BD87EF82D6CD8F5141EDFFC107EF3CABFE267CFFF3D1E79F567D8B0FB29EC3BB5035D03ED88E87993AE30CF33481070CF35DFC38C89B32C59D2A10F7749DBB7244C2112C8120106005902CB62CD09442331';
wwv_flow_imp.g_varchar2_table(65) := 'C889D05C12A80856E1C6AB6E476355615FFC6516BE5C7C87C343E8E86BC3C153FBF0CEFBAF61C396E7F0CC5B8FE18DDD1B70E0E49EC4855E2EF2D26D6F855FB664C2D1304E779DC0D6036FE2CF9B1FC1CF5FFC07FCD3D3FF053FDBF0233CBFEB51EC39B5';
wwv_flow_imp.g_varchar2_table(66) := '05ED03CD88C6A3D952C131E5FA3D01DC75D53770C9646B4180AC76098F180FC938C6302A9214817C126600904FDE2A205DE3FA954ED6FA5B195B2E2FA9C26D57DF85DAD2FA0222F06953844357A81DFB8EEFC0ABFA38FC63AF3C98E8CA7F63977EC16FDA';
wwv_flow_imp.g_varchar2_table(67) := 'AB07032D8E1F87171BC291510CEABD156D9D2DD879602B9E7EEB0FF8DD2B3FC14BBBFE8423ED1F60343AF269C30BEC53C05B84BB567E1333A7CE36B52CA207C0F21D9040D8549802249005020C00B20095459A13E86DEB8795497F45FE62DCBCEA0E94F8';
wwv_flow_imp.g_varchar2_table(68) := '4BCD0BCD4309B9D3DF7F72179E7AFB113CF9FAEFF1EEFB6FA2A9E5784ADDF64E357F60A81F3B3FDC82DFBFFA0BFCCBB3FF05CFEC7C18075A77E94305D6267D3AD52E23BD123D01577E138B665F6624F2F1F1F06814B2DDF5C707F826CF09E497FA0C00F2';
wwv_flow_imp.g_varchar2_table(69) := 'CB5F05A16D5FC720062D2C87928D7DD6AFBC0DE5C5550561F7F946B4F59EC1BB075EC313AFFF0E9B77BF86CEEE0E3D59EF16D1FF2FE4DFC1E121EC3EB8430F761EC643AFFE13367DF01C5AFB4E23A6FF2B24BB7D1E3F6E5E7237268F375F1D20FB5EC877';
wwv_flow_imp.g_varchar2_table(70) := 'A290ECA72DF9418001407EF8A960B4940B7F7FF790A93D3EAF1F6B96DD00D975CD54380F04E4D23E1C19C4D1960FF1CACE67F1F2BBCFE0FDC3BB30343C9807DA675EC5682C8AE6CED3786BCFABF8C58BFF13CF6C79046D7DCD99AFC8C612FD9E003EBFF2';
wwv_flow_imp.g_varchar2_table(71) := '6BA8B7B059907C27067B0B7B78C44657E4ACEA7CAB880140BE792C8FF59559CF56BA3B6557BF2B16AEC0B471D626533919898C8B0F0C87F0FEB1EDFA45FF296CDCFE228E9F3992989D9F0DBD659B1F9FDF8BA2A01FA595C5A8A80DA2725C29AA1BCB503B';
wwv_flow_imp.g_varchar2_table(72) := 'A11C75932A513FB50A0DD3AB317E664DE225EFE598A4898CC84A1EC92B65485952A6948D2CFC08A3BDC776E2672FFC3D1E7EFDC738DA7E009178610C0F9407AA70CFDAEFA23458664AAEB77D005C1E688A89021924C0002083305994310139C9F7EA5DFF';
wwv_flow_imp.g_varchar2_table(73) := 'B2498DB1D447298BE62CC5FCC9E6E3A71F493BF37FB9E3EFE86BC3DB1FBC8A3F6DFC0DB6EC7B0BED3D6D1955B6A8C48FF29A12543594E917F68A8F2EEAB36A513FAD0AB5132B50595F8A323DBDB4AA1825E545282A0D2050E2832FE085D7E781A6698997';
wwv_flow_imp.g_varchar2_table(74) := 'BC9763922632222B7924AF9421654999E3F5B22558A89B5491A853EA161D3267541CC79A0FE3B1D77E8567B6FE1E4D9D873357B48D259507AA70E7EA7B11F01529B5487C47DA06C049814A4C0E4ECC3FD53CF9A73235CE4702B2D39F95BB9BB933E663C9';
wwv_flow_imp.g_varchar2_table(75) := '8C95D02F4DF9686642E7BEE11E6CDAF32C9E7EF351EC3FF63E32B52E5E2EB672D1950BB2DCBDD7EA17E272FD0E3F5851A45FD8FD898B7A42812CFE27C142400F3CA44EA95B7448E8A2071CA29BE8986EF5916804FB8EEDC26F36FC180FBFF1631C6EDB87';
wwv_flow_imp.g_varchar2_table(76) := '7C9F2330AD660E6E59F57953349C14688A88021924E0C960592C8A04C62430D0336CE9D1BE53274CC3F2396BE0F3F8C62CC7E90747A3C3D8DBB41D4FBDF1088E361D497BD99E74BBCB9D78CDF87234CEA8865C6CE5A22B5DF29AA6390687A669109D4437';
wwv_flow_imp.g_varchar2_table(77) := 'D15174159D4577B1211D458F9D398C3FBEF6101E79E3C738D67120AF0381F9E32FC7BAE5B79AE2904981FD5DE6F3644C0BA2404E09E463659E7C549A3AE70F01D9F7DCCAB87F4D552D565FBA1E01AFBA9BD4A9969FEE3E8E4DBB5EC0963D6F6174349CB2';
wwv_flow_imp.g_varchar2_table(78) := '9A5EAF07C18A62C80554C6E5652CBEB82C008F7E3CE542739C5174159D4577B1416C119BC4B6545489C622387EE6281E7EE5677872CB43E819EA4CA518DBF378E0C18A19D761E9BC2B4C75E9EB1C847C774C052940026910600090063C66551388456390';
wwv_flow_imp.g_varchar2_table(79) := 'E54D321EAE922C2E2AC6BACB6F43893FA8127364DA687424B13DEE2B5B9EC7C9E6A69474F4783404F531FAEAC6F2C4F87D554329E402AA8F83A4549EA3326948D82236D54FAB82D828B68ACDA9E8B9FFD85EFCEAE5FF8D778EBC8A7C9C28A8E94EBD6EC1';
wwv_flow_imp.g_varchar2_table(80) := 'ED5870C96253F3E5BB6365CE8C694114C80181FCAC8201407EFA2D2FB4961398D956A75EBDBB7FF5A2EB5051925F6BFD63F1188EB71FC4339B1FC5AE03DB118E247FD7EFF57920DDE6E3A656A1AAB10C25E501687A309017CE4D4149B14D6C145BC566B1';
wwv_flow_imp.g_varchar2_table(81) := '5D18245BD4E0F0005ED9F61CFEBCE5B7E81CC8ECC4CA647549453EE82BC37597DE8ADAAA71CAECF2DD0975B87399A8120C133346800140C650B2A0F309C87A7F799D7F6CACF7F3672CC2D486FC5AEE270FE67979E7937865CB0BE8E9EB19CB2CE5311917';
wwv_flow_imp.g_varchar2_table(82) := 'AFA80B62DC942AC8C4B9542E82C8F31FB1596C1706C24298246BD281E3EF27F610D87C6843DE3D6BA0AAB80E9F5B712FBC1EAFD2EC81DE61707F0025224724E6AB120C00F2D5730ED63B128E22A48F619AA9D8583B0197CEB85CEF14D5CC441D912E4319';
wwv_flow_imp.g_varchar2_table(83) := '273A0EE3F977FE84D3CDA792D6C91FF026D6E48F9B5289B2EA1278BCF96177D28626914118080B61227306845160D3D602000010004944415412D9F59E97516CDAF122FEF8D62F71AAFB6832596D971D5F35056B96AC37D543E603486F80A92005482049';
wwv_flow_imp.g_varchar2_table(84) := '020C00920446717302A1CE21D3B5CC1ECD832BE6AD4630506A5EA0032422B130761FDB828D5B5F425F7F6F521AC9DD6D557D69E28EBFB4AAB8A0BBF99302739EB0A60F7D081BE9111056C2ECBC64E5DB38E2387CFA007EF7CA4FF1EEA18DFAA79852DE49';
wwv_flow_imp.g_varchar2_table(85) := '892B665D8FF9D3D4F301642E0D570538C96B17EA92BF9F1900E4AFEF1CA9B974590E85CCB7345D79E91A34544D70A40D172A351C19C23B1F6CC2F67DEF4066A45F986EF459D313E4EEB66E72258295C5D0BB3AC01F13023A346125CC849DFED124C327C9';
wwv_flow_imp.g_varchar2_table(86) := '9168181B763C8BC736FF129D03AD9F2438F89D57F3E2C6A577A2ACB842A9E550FF288702948498980A010600A950639E31094446A5EBDF7CFDF2E4C6A9983B79D1986538ED6068B8171BB63D830F8F7F90946A256501D4EA177E19DF966EEEA4325318C2';
wwv_flow_imp.g_varchar2_table(87) := '4CD8094361990C924327F7E3F1B71E42477F7E0401654515B87AF1F5D03475B823CF0BE02E81C9B484DCC8E6732D0C00F2D97B0ED33DA48FFBC7A2EAEED7E24031562D303FD939C1B4931D47F1E46B8FA0B5B3D9B23A32865DDD5886EAF1E50814FB2CE7';
wwv_flow_imp.g_varchar2_table(88) := 'A3E0D80484A1B014A6FE807AC2DCF925B475B7E0D72FFF230E34EF3EFFB063DF2F9D761516CF54EF0F20736B3814E05817E6A5620C00F2D26DCE537AA06718D24DA9D24CC6FD57E85DFF6525152A31DBD36489DFDEE3DBB161CBF389496656152AAF0942';
wwv_flow_imp.g_varchar2_table(89) := 'BAAE4BCA8BC09FCC1210A6C256560E582D79243C8C6736FF015B0EBF86583C6A359B2D725ECD876BE6DF88F260A5B27E19621B1E1855CA30319704F2BB2E0600F9ED3F47681F0DC760E5CE64DEF44B3173FC3C47E86CA4C4706410EF7EF01AB6BCBFD9F2';
wwv_flow_imp.g_varchar2_table(90) := '454396B4C96E77E5B525D03CEA6E5CA37A79DC9C80B02DAF0D26764914E6E6398091C830FEB2FD69BCBAF75944E2112B596C93A92CA9C16D2BBE088FC7ABD441BE6B715992A2946222099813600060CE88122604067A861035E9FAAF2CADC2C2E9979994';
wwv_flow_imp.g_varchar2_table(91) := '646F72FF682F366D7B191F1CDBA32B62ED0C5B5C1A483C792FB1739F9E8BBFD92720ACE58148C2DE6A6DEF7EF03A7EFEF28F203EB69AC70EB94BEAE763CD22F5D2C0D1E1881E707383203BFC73619DF9FE990140BE7BD066FD657DF280DEFD6FA6C6824B';
wwv_flow_imp.g_varchar2_table(92) := '96A0BCA4D24CCCB6F4A1F0005EDDF2224E779EB0AC83CC52AF99500E5F1263D3960BA7A092803017F6E203A5E079899D3D1D7874D32F111A4D7EF3A6F38AC9FADBA53356A2BAAC56598F7CE764D2AD528889246042800180092026AB09C889C8EC5E797C';
wwv_flow_imp.g_varchar2_table(93) := 'DD44CC9EB8405D908DA9B2C67FE3F617D0DEDB62490BAFD703999426B3D42D65A050D608880FC417E2132B95B4749FC2EF37FE0C83E17E2BE2B6C89406CAB1EAD2EB9575C76271C8774F29C4C42C13C8FFE21900E4BF0F6DB3409E566665BBDF657356C1';
wwv_flow_imp.g_varchar2_table(94) := 'E7F5DBA6A7AAE2482C8C8DEF3D8FE6CED32AB18FD364267ACDC40AC8A4B48F0FF28DAD04C417E213F18D1545DA7A5AF0D85BBFC05064C08AB82D328BA72C477D7583B26E9910383A94FC3328948532D155041800B8CADD9935D6CA1DC8CC2973505F353E';
wwv_flow_imp.g_varchar2_table(95) := 'B31567A8B4482C82ED0737A3A9F9B8A51265495ACD840AF88BD493B42C1546A18C12109F886FC447560A3ED5DA840DBBFF0C0900ADC8E75AC6A37971DD92DB4C03672BDFC15CEBEE96FA0AC14E060085E0451B6C180A8DC26C3952C05F8465B3579B6E70';
wwv_flow_imp.g_varchar2_table(96) := '6283FA90A57EFB4EECC4FB877759AA3E50E24F2CF1F3FAF995B104CC0621F18D2C15145F59A97EF7A11D7869EF9F1075E812C119F573B1C0649B60597A3BDC3F6AC55CCA90C045047836BB08090F58212033FFCDE416CD5A8AB2E27233315BD23F3CB507';
wwv_flow_imp.g_varchar2_table(97) := 'DBF6BD6DA9EEA2A07EF19FE4ECBD0B2C19E212A13ADD57E2332BE6BEB77F1BDEFCF0453D0870DE1241AFDE0B70C5ECABA1E9FF54B6F4F70CAB92999615028551280380C2F0634EAD18EC1D812C4552555A515681B993D50F3951E5CF66DAC133FBF0F69E';
wwv_flow_imp.g_varchar2_table(98) := '372C55112C2F4A2CF3B3244C21C710A89D5801F19D1585DEDCF52ADE3AF4B215D19CCB8CAF9C82150BAE51D62BF300E43BA9146222098C41C033C6311E22012581C13EF33B8E65F356A1D85FA22CC78EC4E36D87F1D6AE8D88C7D55B168B6EB2B35F5563';
wwv_flow_imp.g_varchar2_table(99) := '99BCE52B0F0988EFCA6BACB5C1CDBB5EC3AE93EF38D2CAABE6AC434D459D52372B0FE05216C0C4A408148A30038042F1648EEC90138DD9DDFFD409D33165DC8C1C6964BD9AB69E666CDAFE226231F36D61657DB9ECEC67BD74FB24650CB8E3642F5A8E74';
wwv_flow_imp.g_varchar2_table(100) := 'E1CCA1CEACBEA40EA9CB6CFE877D343E5DB3EC1C28BEFCF4D18B3FC9531E5F7CE749B4F69DBA38D1E623C1401996CD59A9D46264286C3A27475900135D498001802BDD9EBAD1837DE68FFA9D3379217C1E672DFB0B0DF562E38E1710B570F12FAD2C86AC';
wwv_flow_imp.g_varchar2_table(101) := '2F4F9D52EE72CA85B8AB3994189289C5CC7664485F2FA94302C0AE33218CE4C99EF4E24BF1A999F5B22AE4C51D4F2034D26B269AF3F405932F4743AD7A35CD9085EF66CE152FC80A0BC728060085E3CBAC5B22171B59FBAFAA684AE3744CA89DAA12C979';
wwv_flow_imp.g_varchar2_table(102) := '9ACCF27EEFD016F40F854CEB9671E3CAFA525339A708C8BEF076E912EA1AB2ABEAA4EB159F8A6FCD329E6C3D8ED7F73D6F2696F3F4B24025AE9CBB4659AFAC0890E04C29C44412388F000380F360F0AD9A80953B8C05D397E877FFCE7A0CEEE133FB71E8';
wwv_flow_imp.g_varchar2_table(103) := 'E47EB5717AAAEC2D2FE3C6FADBBCF90D8F980F6764CB987CDB8A567C2B3E36E3F1DEC16DD8D5E4BCF900F3272C4569503D27C5CA77D4CC7EA6AB0914522A038042F266166D9199C67287A1AAA2A6AA06E36B26A944729ED6196AC7CE0FDE41DCE4F169B2';
wwv_flow_imp.g_varchar2_table(104) := '814C5543FEDCF99F036966D739B96CFC95E1806C949BCD32C5C7E26BB33A5EDAFA144E741D3213CB69BADF1BC0423DC056552A0140346C5F50A8D28D69CE23C000C0793E71A4465696192D99B91CB28399530C90CD7EDEFD60130646D45BBECA3EF295F5';
wwv_flow_imp.g_varchar2_table(105) := '65F078F975708AEFB2A587F8587C2D3E57D5118E8C62E3AEE7108E396B939D45D396A3ACA8DC50F5981EE85A99A7635800134C08145632CF7885E5CFAC58131E8E6030A49EFC57595689690DB3B3527FAA85BE7F7C079ADBCF9866AF1817E4F6BEA6940A';
wwv_flow_imp.g_varchar2_table(106) := '4740B60D169F9B5974AAAD09AFBCFF34E2FA3F33D95CA537944FC2A5332F53563714D28396ECCF0755EAC0C4FC20C000203FFC64AB96665DFFB253993CEED7A339A73975E95DFF3BF66F31E5264BC4E46132A68214282802E273F1BD99513BF4E1A343AD';
wwv_flow_imp.g_varchar2_table(107) := 'EF9B89E52C3DF15D9B72B9B2BE883E0430D4AF0ED8950530D19040A12538E78C5D68640BC81E99FDAF32A7ACB41CD31BE7A844729A264BFD36BFBF11D1987A7B579910264BC472AA5C8E2BFBD1FDBF463AAF1CAB9BD3EAC4F7D2065495CADDFF4BDBFE8C';
wwv_flow_imp.g_varchar2_table(108) := '8EFE1695584ED31A2B2761DA844B9475267A0194124C24018001005B8192805CFCCD667BCF9FBE0825FEA0B29C5C26EE3EB615AD9DCDCA2ABD3E4FDEACF5571AC2C4B4084810206D4155486F7F375ED9FBB44A24A7691A34AC9E7F03543D6EF2BDE592C0';
wwv_flow_imp.g_varchar2_table(109) := '4CBBA5F0CA630050783ECDA845B2CB9CAAC08AB22A4C6B9C09A7FC34751CC19E0F7798AA5339AE14BE80D7548E02854D40DA80B405332B0F9D388093DD47CCC472963EBD6E0E1A4D36061A3699B793336559916309300070AC6BEC572C168DC12C00983A';
wwv_flow_imp.g_varchar2_table(110) := '7E3ACA8BABEC5756D7603832885D87B6437674D33F1AFECAFEF0C56501C37426B88B80B40569136656BFB6F705BD6D85CDC47296BEDC6C63A0D0286251CE06CC94430AB11C060085E8D50CD924177FB3B5DE93EBA767A8B6F48B3974FA7DB49974FDFBF5';
wwv_flow_imp.g_varchar2_table(111) := 'BB7E2B93BFD2D78625E413016913D236543A1F3F7314875AF7AA44729A36A37E0EC6553418D619D50378797687A100135C4F800180EB9B803100B3D9FF7555E350533ECEB8801CA68C4647B0F7C87BA63596D59440F368A672147017016913D236CCAC7E';
wwv_flow_imp.g_varchar2_table(112) := '6DCF8B909E2633B95CA40703E5983F4DFDC8ED7C795E432E78A5574761E6660050987E4DDBAAF0480466FBFE4F1B3F1345DEE2B4EBCA4401074FEFC5E0A07A6FFA92B20064F95726EA6319854740DA86B41195651DDD1DD871FC2D9548CED23468983571';
wwv_flow_imp.g_varchar2_table(113) := '21344D33AC7378300C59166828C0045713F0B8DA7A1A6F4840BAFF0D13CF2648F7BFA6199F7CCE8A65FD4F383A8ADD87D513FF44CBD2EA92ACEBC20AF29B80B411692B2A2BB6EE7F134311F5EE92AAFC994CABAF98808A60A5B2C89101E7CC5B502AEAE0';
wwv_flow_imp.g_varchar2_table(114) := 'C442558D0140A17A364DBB4687D46BE8ABCAAB50555A93662D99C97EA4793F864CEEFEE5C46E650FF8CC68C452F29580B411692B2AFDFB07FAB1E5F0269548CED2BC9A17B326CF53D6373230AA4C67A27B09300070AFEF0D2D8F45639087FF180AE809B3';
wwv_flow_imp.g_varchar2_table(115) := 'A72C80D763FF53FF462243FADDFF765D23E35F9FDF0B99E4652CC11412F88480B41569339F1CB9F8DD7B07B7A039D47471820D47664FBC14015F9161CD1C0630446331A170C5180014AE6F53B64CC6FE558B87344D73C4BEFFA2E361FDEE3FD41F52DA5A';
wwv_flow_imp.g_varchar2_table(116) := '565D0C8FD7AC63575904135D4440DA8AB41995C9FD83FDD8DBB44D2592B3B44935D330BE7692B2BE110E0328F9B8359101805B3DAFB0DBACFBBFB66A9CE9B8A3A2F88C250D870770F0C407CAF2646957B0C2191315958A32D15104A4CD48DB512975E0F8';
wwv_flow_imp.g_varchar2_table(117) := 'FB8E785A6091B704B326721840E5AB74D20A392F038042F66E8AB6490F802AEBB4F13354C9394B3B74661F3A7B3A94F5052BF58B3F6FFE958C98380601BDCD24DACE1849E70EF5867A70B875DFB98FB6FE9D5AAFDE8D538601A29198AD3AB272E7116000';
wwv_flow_imp.g_varchar2_table(118) := 'E03C9FD8AA51241C552E1B92B1C649E3ECDFFC67301CC2A1A6034A56328E1BAC301E1B556666A2EB0948DB9136A402B1EBD81647F402D49537A2AAAC4AA52AE4B1DE4A01268E41A0B00F3100286CFF266D9DD9DD7F6579156ACAECDFFCA7A9ED28BA7BBB';
wwv_flow_imp.g_varchar2_table(119) := '94F6052B8BA079F45B39A5141349606C02D276A40D8D9DFAD1D1C34D1FA2A5D7FEC980016F11664D9EFF915206FFF3E14006605C7C9801808B9D3F96E9A383EA35C3B555E3944F211BABCC6C1C3BD17A5459ACD7E7818CE32A859848022604A40D495B52';
wwv_flow_imp.g_varchar2_table(120) := '89BD7F52BD07852A6F26D3664F58089FD76F58247B000CD11826147A02038042F77092F699F500345437265962E6C5FB477AD1DED1AA2C58C66F6536B752888924604240DA90B42595D8B1D3873130DAA712C949DA84EAA92809040DEB4AF400C8D21943';
wwv_flow_imp.g_varchar2_table(121) := '0926B88D000300B7795C616F64340AD5C37F8245A5A8A918A72821374927DA8E607874D8B0328FDEED2FE3B786024C20812408485B92366594A5B3B7031FB6EC314ACED9F1625F10B5557586F5C5E3718C0EAB7BF80C33BB32A1F08DF614BE89B4D02A01';
wwv_flow_imp.g_varchar2_table(122) := 'B3E57F55E535A82EB53700901B98E3CD87942615970660D66DAB2C808924701E01694BD2A6CE3B74D1DBDD47B7210EFB67D94F6950AFD049F4025CA43D0FB895000300B77A7E0CBBCDEE0EE4E97F1ECDDE2633343A80B68EB631B4FFE450911E007CF289';
wwv_flow_imp.g_varchar2_table(123) := 'EF48207D02666DEA74CB49740F76A65F519A2534544D50966016E42B33BB2CD10DE6DA7B367703E13CB2D16C92D0B8AA06DBAD39D3791CD158D4500FAFD783E252E3895086199940020A02D2A6A46D1989C4F5FBFF23ADEA4DA98CF266F2785559AD725B';
wwv_flow_imp.g_varchar2_table(124) := '6079CA6726EB6359F94D8001407EFB2F63DAC7637184478D2FAC7E6F005515B519AB2F958262F1280E9FFE509955EED4340F97FE292A0F905400001000494441542131316902D2A6A46DA932CACA94D1A8F1DC1455DE4CA5951755A2B1CEB81740360392';
wwv_flow_imp.g_varchar2_table(125) := '677D64AABEC22DC71D96310070879F4DAD341B1BACD62FFE258152D372B2293030DC8F337A57ABAA0EB95353A5338D04522560D6B69A5A8EA27BA83DD5E233922FE82FC7E47153956585878D037D654626161C01060005E7D2D40C327BFA5F63ED7814FB';
wwv_flow_imp.g_varchar2_table(126) := '4A522B3C43B95A7B4E23A677B51A1527BBB6994DD632CACBE324604640DA96B431233909505B7B4F1B25E7E4B8060D93EBD41301390C60EE0AB7483000708BA74DEC34EB0118573DDEA484EC2647626134B51E5356522463FF9A52848924903A01BD6D25';
wwv_flow_imp.g_varchar2_table(127) := 'DA98A284136DEA0DAA14593396D4503549B9591703808CA1CEFB821800E4BD0B3363407838A22CA8BABC46999EEDC4D0502F4EB5A8B75C0D9470F25FB6FDE0F6F2CDDA5853CB11451F556EE8951555A2BCBCC2B0B2F00887000CE12412DCF31F0300F7F8';
wwv_flow_imp.g_varchar2_table(128) := 'DAD0D2C4C4A098ACB01F5B4496FED93DFEDFDDDF89D1C8C8D80A9E3D1A28F69D7DC73F24901D02666DACAFBF0FA191EEEC546EB1540F3C18576DBC5F873CF04B26FD5A2C8E62054C800140013BD7AA69D1B07A0393B260193C1EAFD5E2B222D713EA5496';
wwv_flow_imp.g_varchar2_table(129) := '2B2766D9B04529C44412489380B431696B46C544A21134751C364ACED9F1DA8A7A655DE111758F9F32738127BAC93C06006EF2B681ADD1B0BA4BB0A2BC4ABFA7D007400DF2E7E270DF40AFB21AD5495999918924902401B3B676E8CC0708C746932C35B3';
wwv_flow_imp.g_varchar2_table(130) := 'E215C12A65811193A05F9999890543800140C1B83275432211750F4075792D34CDBEA6128BC7D0AF77ADAA2C0C0439FEAFE2C3B4CC11306B6BB21C70283C90B90A5328A93258ADCC153509FA95990B3AD15DC6D97756771767475BAB3A19689A06090064';
wwv_flow_imp.g_varchar2_table(131) := '1E805D46740F76A07F487D422D620060977B5C57AF595BEB1BE8C3E068C8562E15253550050166C37EB62ACFCA7346800140CE503BB7A288A23B5083A69F486C5E0130D88B9188F10E6BD225AB699A730153B38222A0691AA4CDA98C1A1C5107ACAABC99';
wwv_flow_imp.g_varchar2_table(132) := '482B0D94A32C586E5854843D0063B271DB418FDB0CA6BD171388AA4E06FAC9AEBCC47849D1C5A565FE48EF4037C211E33155B33BB2CC6BC412CF113873A813997CB51CE942C7C95E0C0F18FBFB5CDD76FE356B73213D68B5533FD911B0ACC4380090953F';
wwv_flow_imp.g_varchar2_table(133) := '76EAC7BA9D4180018033FC609B16F138A03A19F83C3E14F94B6CD34F2AEEEEEB923F862FAFDFDE150A868A31216902B1581CB22955D79910461C1C0498B5B9F6BED6A46DCF648680B708E541E3C05DBEF3F2DDCF649DF95F96FB2C6000E03E9F7FCA62E5';
wwv_flow_imp.g_varchar2_table(134) := 'DDBF2E59122C81C7636F3309F5F7E89A18FFFAFCF6EA67AC1953D22110EA1A4A277B56F39AB539B365AB5955EE6CE1658A004044CCBEFB22C3576113E099B3B0FD6B6A9DDC09A8842A4A2BA0E9FF5432D94C8BC6A3181C1C5456617637A6CCCC44C71288';
wwv_flow_imp.g_varchar2_table(135) := '289E4E69B7D2666D2ED4DF077944B09D7A969B2C0534FBEEDBA9BB1D75BBB14E06006EF4FA7936C7A2EA2580C192E079D2B97FDB33D08970346C58B1A6A7787D6CC63A8682FB95E100A71A256D4EDA9E917E43A343B6AF04282FAE30522F719C01400283';
wwv_flow_imp.g_varchar2_table(136) := 'ABFFE399D3D5EE0762D1B89280DF57A44CCF76626F7F37A231E38D8ACCEEC4B2AD1FCB772F0155DB1B090FA36BA0C35638C1A23265FD3193E05F99B9E012DD6910030077FAFD63ABCD4E0201BFBD0140DF608FDE03603C23DCCBF1FF8F7DC937B925A06A';
wwv_flow_imp.g_varchar2_table(137) := '7B890020D4965B852EA8CDECBBCB1E800B80B9F0230300173AFD7C9363663D005EFB76D893BE8961BD2BF57C7D2F7CEFF37305C0854CF8393704546D2F1C1D4557A83D378A18D4E231D9C03B66B203A841B10579D8AD46310070ABE7CFDA1D33E906F479';
wwv_flow_imp.g_varchar2_table(138) := 'ED7DC25E34A67E68898CC59E35C5B17F86FB47136BDB658D7B26D7CC4B59761BFDA3FB7F8D745E76EB9F4EFD666DAF2BD48598FE2F9D3AD2C92B931035C50A9EA849F09F4EDDCC9B1F041800E4879FB2A6A5EA24E0F706E0F7DA3804108F23125107009A';
wwv_flow_imp.g_varchar2_table(139) := '4735152B6BD82C172C1BDA743587126BDB9D3CA9CDB24114FC988059DB1B090F221E574FB2FDB8B02CBCD1340D1EFD05831FF6009C03E3DEBF0C00DCEBFB84E5AA1E008FC70BBFCFBE210051D0AC07C0E3D544CCB1AF7E07AF65772CB43C51CCACED8D86';
wwv_flow_imp.g_varchar2_table(140) := '47210FB2B2CB1C0DFA3F8FD7B0FA2887000CD9B8258101805B3C6D60674CD10DA8691A4A02F62E030C478C97008A491E8F267F1CFB0A8F18AF6070ACD254CC1201B3B6178DA9DBAEA54AD210D2340D5E8FF1293EAEF7B0813F703302E3D6E1662A2EB23D';
wwv_flow_imp.g_varchar2_table(141) := 'A69803A0E97710453EFBB60196498011C51E00E2264D71829374BB5F3CC9DAED81ECD56FD6F6EC1EF291EFAFD7C3537CF65A40FE97CCD691FF3E4CCB024DD30CF37B340F7CDE00ECFB89231A55DF417BBCC6FADBA7376B760301D3B667F31DB6A67F7F3D';
wwv_flow_imp.g_varchar2_table(142) := '1E9F1B5C91868DEECECA00C0DDFE87EAF2A9E9770F3EAFBD27906834BF2701BABC7915B4F99AC9F0532416859D3D409AFEEDF67A798A2FE84698A6716C1D6902CCFBEC8A16E0D53CF0685E5B4D8CB207C056FEACDC9880C7AB1927EA29513D000064204B';
wwv_flow_imp.g_varchar2_table(143) := 'FF60C3AFA669F07AFCE08F3101B7A7284EFF6E47E30EFB35CDF824A669C669B9A21331E901C8951ED9AA279D35F492375B7AB1DCF40944F5B66BDFE55FF4D7F4213CAFBCE18B04C624C000604C2CEE39A869C6177959C214B7711DB378211251CF018829';
wwv_flow_imp.g_varchar2_table(144) := '5631487EBE48205B04CCDA5E34267B00D81702688921007B87F0B2C53E33E5B21406006C038604A40B3362B2139F61E60C25980520F1987D27D80C99C862F2948059DB8B490F808D1301354D8357630F00F86348800180211A7724E8E7086343F593572C';
wwv_flow_imp.g_varchar2_table(145) := '318E692C92CD14B983F178D52730B3BBB06CEAC7B2DD4DC0ACED79BC3EDBE7D00C8F0C1B3A49D334C3343724D046800180CB5B81E6D10C09C4F4002062B20EDF3073261274D58225EA8D88E2896ED64C54C63248203902666DAF28108047B3EF141BD7BF';
wwv_flow_imp.g_varchar2_table(146) := 'BFA3E11143A33C8AEFBE612626141401FB5A6741612C4C63E46122C3E1415B8D2B292E55D66FF7662B4AE59858D004CCDA5EB0A40C9AA647B13651882186114500A079EDD3CD2624E755CBB7428001805070F1CBE3316E02F1780CC3E1211BE968282D31';
wwv_flow_imp.g_varchar2_table(147) := '09003809D046FFB8BBEA9849DB2B2BD60300D877918DE9C37711C556DA1EF600B8BB01EBD61B9FFDF544FE163E018FCFF80415D6BBFFE5652785D2E27265F5714E0254F26162F60898B5BDD26039341B870062FAF058346EBC8A4615FC678F9A334AA616';
wwv_flow_imp.g_varchar2_table(148) := '1F116000F01107D7FEAF3A09C4F43B0859CB6C171C094D4A8BCAE0F3FA0D5588F28966866C98905D02666DAF2A58034DFF975D2D8C4B8FC4C2CA9D08390460CCCE2D290C00DCE269033B553D00926534322A7F6C7B951405E1518CA346C2C67738B629CD';
wwv_flow_imp.g_varchar2_table(149) := '8A5D4140D5F68AFCC5A80856DBCAC16C132DF70E01D8EA164755CE00C051EEC8BD321EAFBA0944F46180DC6BF5498D7212F57A7C9F1CB8E05D342C9BAD5C70901F49200704546DCFA7B7D9D2A2F21C68615C45386ABC024072996D652C327C153601F5D9';
wwv_flow_imp.g_varchar2_table(150) := 'BFB06DA7753A01B393806A19919E3DEBBF258152A80300F60064DD09AC604C025145EF930C5B5594D8DB03301236DE03400C320BFE45A6105FB4E913020C003E61E1CA77662781FEC17E5BB9F87D7E783CC69B01C93E806663B1B61AC0CA0B9280B43969';
wwv_flow_imp.g_varchar2_table(151) := '7B46C6F9BD01941757C2CE9F6193153C5E1F4FFF76FAC70975B30538C10B36EAE031590BDCD7DF6BA3768047F320A007012A25A28A3B31553EA69140AA04CCDA5C49512902DEA2548BCF48BE81E13E653966C1BF3273DE2652F1F3093000389F860BDF9B';
wwv_flow_imp.g_varchar2_table(152) := '9D0442FD7D88C5ED1D67F7FB7D4ACF44380F40C98789992760D6E66A2A6B335F699225F60EF4287378144B809519995830041800148C2B53334466026B9A669839168FC26C2CD130738612AA2BEA942545D903A0E4C3C4CC13306B738D3513335F691225';
wwv_flow_imp.g_varchar2_table(153) := '8663A3E809752B73785D3804A004E2C24406002E74FA8526FB028A31F6781C03C3F6CE03A8AF197FA1CA9FFA3C3A14F9D4677E20816C13306B737515F5D95641597EFF682F7AFBBA0C65CC027FC38C4C2828020C000ACA9DA919A30C0010479F4957626A';
wwv_flow_imp.g_varchar2_table(154) := 'B55ACF555B310E65C51586194686D41B9E1866640209A44020AE07C5D2E68CB27A34AFED7B0084867A101A0919A908B3A13FC38C799D40E52F24C000E042222EFCAC0A00F4EB3FFA067B943B8A651B597949152A4AD533AA47D90B906D37B0FCB304CCDA';
wwv_flow_imp.g_varchar2_table(155) := '5A437523ECDE03A07BA043EFB9330E00D8FD7FD6992EFFC300C0E50D40CCF7AB8600F408A0BBAF0331FD9FC8DAF1924D55EA6B1A95558FEABD004A01269240860898B5B5E91366A3C85B9CA1DA522BA6ABAF5D99D15F643CECA7CC98C78954FD62020C00';
wwv_flow_imp.g_varchar2_table(156) := '2E66E2BA23CA1E009D46576F87DE0360EF4A80BAEA065D13E35FB3BB32E39C4C2181E408A8DB9A8649B5D320C300C9959A59E9AE50A7B2407F914F99CE4477106000E00E3F2BAD340B00FA87FA118DDA1B00549556C3EB313E698DE83D00319B75544266';
wwv_flow_imp.g_varchar2_table(157) := '6241109036266DCDC818AFC783864A7B5700886E9D7AD02E7F8D5EFE62E3EF92519EFC3E4EEDC722C000602C2A2E3CE6F31B770986A361846D7E2850B0B80CE36B2641F533CA79002A3C4CCB0001B336E6F70660F716C0B26F47AF6209A0A673300BFA75';
wwv_flow_imp.g_varchar2_table(158) := '11FEBA800003001738D98A89EA13421CBDFDEA35C556EA4847C6EF2D4243DD046511237A2F8052808924902601B33636A571BADEFD6FEF6975383C8870D4F8299E6EBCFB4FD3ED059BDDDE965AB058F3CF30750000B4F5B4D86A94DCB53454ABF7031819';
wwv_flow_imp.g_varchar2_table(159) := '0803AA0DDA6DB58095E73D01BD6D25DA98C2904B26CC55A4E626A977B01BD198F143B2FC1CFFCF8D23F2A016060079E0A45CA8183019136CED388D5193C78B665BCFCA6095721E40241CC5F080F19D4FB6F563F9854D40DA96B431232B2B4AAA3065DC25';
wwv_flow_imp.g_varchar2_table(160) := '46C9393BDEDEA70ED6DDB7022067E8F3AE22060079E7B2EC286CD62DD8D27306432383D9A9DC62A9C5C5413498EC0A382CBD0016CBA318092443C0AC6D4D9F300BF565EA61AA64EA4B4536120FA3A9F5A832ABD9775D999989054580014041B9337563BC';
wwv_flow_imp.g_varchar2_table(161) := '3E0F7CFA0B063F9168D8F61D01BD9A173327CE33D0F0A3C3237A0F403CA6F7D57EF491FF93404608489B92B6A52A6CD6C4F9AAE49CA40D8EF6E344EB11C3BA344D83DB86000C6130010C00D8083E26E02FF17FFC7EAC37ADDDA7C73A9CD36393C74D876A';
wwv_flow_imp.g_varchar2_table(162) := '39A02C5734BB53CBA9C2ACAC2008489B92B665648CD7E3C5D4BA5946C9393BDE196A4357BFF1264081122EFFCB9933F2A022060079E0A45CA968360FA0ABB75339B928177A96149760DA78F538ABD99D5A2EF4641D8545C0AC4DCD98380BC140A9ED469F';
wwv_flow_imp.g_varchar2_table(163) := 'EE38AED4216012E42B33E765229556116000A0A2E3B234B3AEC19E500F42C33DB653993BE552BD17C06BA8C7B03E0C108DD8BB7191A1724CC83B02D296A44D1929EED13C583075A951724E8F1F3D7350595F805B002BF9B82D910180DB3CAEB0D75FEC85';
wwv_flow_imp.g_varchar2_table(164) := 'A66986127D83DDE81DB0773F0051AEB166226A158F5B8DC5E218EC1B1151BE48206D02D296A44D1915541EACC2ECC64546C9393B3E1C1E42675F87B23EB74D0054C26022E700B00D7C4240D334044C9603B6DBBC1F8068AB691A2E99345B19AC0CF60E23';
wwv_flow_imp.g_varchar2_table(165) := '16CDCC64C0E1FE51749CEC45CB912E9C39D499D44BF455BDFE9FDF3E80745EAAB2252D9DB225AF94A17A894C3A2F55D992962C6FF191F84A75C72EE55A1855283A00001000494441547D491B92B6A4929FDC3005453E7B1FFE23FA9DEE3E8EA151E3953A';
wwv_flow_imp.g_varchar2_table(166) := 'FE221F3C5E8F88F2450209026C0D090CFCEF1C0139499C7B3FD6DF964EFB27028A5E93EB67281FB92ADDB6837DC3229AD64B2E245DCD218C0E47A0BA0B4CAB1266CE1801F191F8AAEB4C0866E3F6562A9536246D49257BE9B465AAE49CA51D6BF910D158';
wwv_flow_imp.g_varchar2_table(167) := 'C4B0BE8049706F98316F13A8B81901060066845C965E14F42B2DEEE9EB45DFA0FDF3002A829598D2380DAA9FC1DE11C8F22D958C595A7FD7909908D31D4A2094A6EFA4ED481B529937BE7602A6D4AA27A5AAF2672A2D1C0BE3F0990F95C505B80240C9C7';
wwv_flow_imp.g_varchar2_table(168) := '8D890C00DCE87585CD45A57EA81E0C34A28F3336B5A9371A51149FD1A4E913D4C300917034EDB900E111E32D55336A0C0BCB3881C8687ABE1BEC1B81B4219562AB16AC43C06B7FF7FFD0C8003A7A5A0D55F5783414050386E98598409BCC0978CC4528E1';
wwv_flow_imp.g_varchar2_table(169) := '3602120418D91C8FC771ECCC21A3E49C1EAFABACC7A4715395750EF6EAC300694C05D08CE7442AEB65629E13D0DB4CA2ED28CCA8AB1C8739E3172B24729774AAEB18E2FA3FA31A8B4A03F078D9988DF8B8F5380300B77A5E6177B1C99D42474F1BFA87FA';
wwv_flow_imp.g_varchar2_table(170) := '1525E426C9EF0D60E624F5CE8061FD2E70308DB900660F49CA8DA5AC251502E9F84EDA8CB41D55BD57CCBD1A1ECDFE5368341EC5FEA6DD2A5551ACF7EC29050A2E91065921607FEBB5A22565724A407A0054C300D15814475B0EE45427A3CA6467C06051';
wwv_flow_imp.g_varchar2_table(171) := '995172E2787FF770CA2B02CA6A4A1265F0BFFC23505E134C496999F92F6D4695B9B17A22E64EB07FE99FE8D8D677062714FBFFB3FB5F28F135160106006351E1314810A0C270F8E401C4E2F66FB613F00770D99CE52A5513E3B8FDDDA94DE62BD6BB4E6B';
wwv_flow_imp.g_varchar2_table(172) := '2694279647CA89545911136D27203E92D9EEB5BACFCCDAB091B2D256CCC6FE97CF5D8DB2A24AA322727AFCC3D37B30301C32ACD38DDDFF863098F029020C003E85831FCE11301B06E8EAEB404F7FD739715BFFCE9AB41055E5D54A1D06F4004096872985';
wwv_flow_imp.g_varchar2_table(173) := '0C122508A89B5C89C64B6A3061562D5F0E66203E125FC945CFC09DCAC3D246A4ADA88482C5A55830F9729548CED264DC7FDFF1F794F5B1FB5F89C7D5890C005CED7E63E3E5EEC9E7F71A0BE829A7DAD5FB8EEB2239F9F57A3CB862DE6AE5786C5CD7C4EC';
wwv_flow_imp.g_varchar2_table(174) := 'C4AE8BF0D7E504A48D485B51615836E72AF83CEAE5B2AAFC994C6BED3D8DEE3EE3405C26FEB96FF67F26091776590C000ADBBF6959274180AA80E3670E632432AC12C959DA94FA4B30B1618AB2BEA1FE510C85B845B012928B13A56D481B5121282FAEC0';
wwv_flow_imp.g_varchar2_table(175) := 'B21957AB4472962677FFEF37ED80FC35AAB4A4AC08120418A5F3B8BB09300070B7FF95D697940594E9EDBDADE809752A657295280B9C2E9BB502457EF5A43DD9D8473678C9955EAC273F08489B90B661A6EDB54B6F56EE4069963F93E9BDC35DD8777497';
wwv_flow_imp.g_varchar2_table(176) := 'B2C8E252F5775899394F13A9B675020C00ACB3729D64A0C48F22FD6564B8EC0970F0F40790BF4632B93C3EAEB2110B662C5256294BBB649297528889AE2320B3FEA56DA80C9FDA305D1FFBBF4C2592D3B4E36D07D13764BC2BA76CEB6DD68B9753855999';
wwv_flow_imp.g_varchar2_table(177) := 'E3083000709C4B9CA550B1492F40D39963E81E503F812C9716CD9EBC00D56535CA2A658B5879C08F528889AE21206D21D435A8B4D7E7F1E133CBEE72CCD8BF28BBF7F80EF963F832FBEE1A66CCEB042A9F0C010600C9D072A16C49B9EC2066DC4CE4E963';
wwv_flow_imp.g_varchar2_table(178) := '874EEF770C993219A39DB7CA549FDEF601A4BB55AC692514703C016903D216CC145D3E7F35C6958F3713CB597AF7603BCEB49D54D6673684A7CCCC445710303EB3BBC27C1A6946401E1F6A7622397AF220FA87FBCC8ACA59BA6C0E3471DC64657DF284B7';
wwv_flow_imp.g_varchar2_table(179) := 'BE0EF55D9FB200261604016903D21654C64CAE9F8E5573D7AB44729EB6A7692B4623A386F5CAD8BF2FA05EC56398398F13A87A7204180024C7CB95D2D20BA0327C60B81FC75A0EAA44729AE6F17870F9ECAB4CEB1C1E18855C004C0529509004C4F7D206';
wwv_flow_imp.g_varchar2_table(180) := '54C6C956BF375E76078A7DEAC9A5AA32329D161AE9C1B6039B95C5B2FB5F89878967093000380B827F8C09044AD4930125E7FE137B215B04CB7B27BCEAABC763E9ECE5A6AAC8844059FE652A48818222203E17DF9B19B56CDE55185FA55E5E6A5646A6D3';
wwv_flow_imp.g_varchar2_table(181) := '3F3CB30743C34386C5CAFE1D6641BB61E6BC4EA0F2C9126000902C3197CA9BDD51F4857AD1D471D4517496CE5C89E9E36799EAD4D73E88F048D4548E028541407C2D3E37B3667CED24AC9D7F8B99584ED3E5EE7FC7C1779475CA909DA6694A1926928010';
wwv_flow_imp.g_varchar2_table(182) := '60002014F832252077145EAFBAB9EC3DB2DD11CF0738678CC7A361F9BCD5A82DAF3F7768CCBFD1680C3D2D2144C3F63FDB604C0579306304C4C7095FEB3E57152A5DFF6B17DF84225FB14A2CE7697B4F6E435B778BB2DEE2F222657AA126D2AEE409A8CF';
wwv_flow_imp.g_varchar2_table(183) := 'E8C997C71C054A203119B0427D6269EB6C45479FFAE4946B3CE5C14AAC58780D4A02EA27C3C91AF06E3D08C8B57EAC2FB704C4C7E26BB35AD72EBD0933EB179889E5343D128F60E7A1779575CADDBFBF8893FF949098F8310106001FA3E01B3302C1CA22';
wwv_flow_imp.g_varchar2_table(184) := '689ABA6BF140D31E44E3CEEA4E97AEDC2BE69B2F0D9407C1749C72CE6A06337F303D3902E25BF1B159AE85339660D5EC1BCCC4729E7EE0CC2E74F71AEFFB2F0A95B8F6EE5FACE72B59020C009225E66279995C2441800AC1E19387D0156A5389D892366B';
wwv_flow_imp.g_varchar2_table(185) := 'D2022C9A69FE04B7D1A1303A4F3308B0C54959AC547C2ABE35AB6272FD54AC5FFA3933B19CA70F844378F7C06BCA7A65E73FB3B93ACA0298E83A020C005CE7F2F40C0E9A0C03C46251EC3ABCCD517301C462E9B7B86CD65568A831DFCC6564308C9E967E';
wwv_flow_imp.g_varchar2_table(186) := 'C9C6570110105F8A4FCD4C292BA9C0E7AEBA1FA5FE0A33D19CA71F6CDE83E6F6D3CA7A4BCA03CAF4424EA46DA9116000901A37D7E692BB8CA04910D0D47C1C879B3F701C239FD78B6B16DF0839D19B2937181A41A8931B059971727A7AA87308E24B333D';
wwv_flow_imp.g_varchar2_table(187) := '8381527CFEEAFB5059ACDE46DAAC9C6CA4CB90DA7B47B6288BF6F93C30FB5E2A0B60A22B09300070A5DBD333DAEC44138FC7F0C1D15D180E3BEF025A595A85950BD720E02B328510EA1A826C16632A4801471210DF854CF6F83FA7F8F5CB6EC5949A99E7';
wwv_flow_imp.g_varchar2_table(188) := '3E3AEAEFDED35B70BA55BDED6F6975093C26AB741C655446956161A9126000902A3917E7938D8164B6B10A41474F07F69D784F25625BDA94864BB0E012F55303CF29279BC5F4B60D9CFBC8BF7942407C26BEB3A2EE9A25EBB168CA722BA23997190CF7E3';
wwv_flow_imp.g_varchar2_table(189) := 'ADF75F51D61B28F6A1B4AA5829C34412188B000380B1A8F09829816085F90967F7873B30301C322D2BD7029A5E6143CD24FD7F6BBF03BDC39C13600D9523A464CC5F7C664599B9531762F59CF5F0E8FFACC8E75A666FD35674F7742BAB75FBC55F098789';
wwv_flow_imp.g_varchar2_table(190) := '4A020C009478986844A0A8D40FB35E80983E14B0FDD0DB4645D876BCA5FB345EDFF17252F5CB3872D7991062261BC824552885334A407C233E125F592978D12597E38E2BEF8547F35A11CFB9CCE99E637873CF4665BDF2D09F122EFD533262A231010600';
wwv_flow_imp.g_varchar2_table(191) := 'C66C98624240C61D4D4470E8C47E74F6396759606B4F335EDDF602E431C666BA5F982E0F8E910B8C6C257B611A3FDB4B407C22BE111F59D1E4D2994B70D3659F87DF633E17C44A7999968923860DBB9EC6D0887AF88977FF9926EFAEF21800B8CBDF19B5';
wwv_flow_imp.g_varchar2_table(192) := '56C61ECBAACD9F92267B974762918CD69D4A611D7A20B261EBB3FAC55F7D5255952D1BC9749DEE833C4C4625C7B4DC11105F884FC437566ABD62C14ADC7EF97D28F29AB75D2BE5654366EFA96D38D972425974B0A2084541BF52868924A022C000404587';
wwv_flow_imp.g_varchar2_table(193) := '69A604E40EC4EB5337A3A6966338DDAE3E99995694A6805CFC5F7CE7CF181E4D7F65823C3BA0BBA59F2B04D2F44926B2CB4C7FF185F8C44A796B2EBB01EB167C4EEFF657B7592B65654BA663A0059BDE7B5159BC3CE7C24AF0AD2CA4001269427A049CFB';
wwv_flow_imp.g_varchar2_table(194) := '2D48CF2EE6CE1101B9F85B39116DFDE04D84867A73A4D5A7AB69EF6DC14BFAC57F243CF4E984343FC92C73E9768E8C3A6BEBE334CDCA8BECC25CD88B0FAC2ABC62D16AAC9E75137C1E67DF356F3BF406FA06D4DF15F9CEF902CE9CBB60D51F94B39F0003';
wwv_flow_imp.g_varchar2_table(195) := '00FB7D90F71A482F802C0D5419D23BD083AD07DE443C1E5789653CADB9FB14FEB2E5590C5BB8F817F98B71DBAA2F62FDB2CF5ABE43943167D96676B87F34E3BAB3C0B10908EB04F301EBCC6FBCF2B35837FF4ECB7E1DBBE6EC1F3DDCB60F3B0F6E555664';
wwv_flow_imp.g_varchar2_table(196) := '75E84D59484124D28874093000489720F32708945958877CE2CC51EC3FB92B219F8BFF5A7BCE60E3B6172D8DF95797D5E18B6BBF8E4B275D81CB67ACC217D67C0D3565E32CA9198DC4D0D51C4AEC1C188FE536C0B1A460810809DB50E76082B530B76296';
wwv_flow_imp.g_varchar2_table(197) := 'CFEBC7FA2B6FC3B2E9D740D3FF59C963974C68A4074FBFFB7BC462EA1E25B9FB77B829762164BD491260009024308A8F4D401E421234598E24CB0277EEDF8A9E7EF513CDC6AE21B9A39D7DEDD8B0F5394B17FFB2E20ADCB9FA3E4CAB9D0DAFE6834FEF22';
wwv_flow_imp.g_varchar2_table(198) := '9ED37829EE5EFB0D4CAC9B6CB9E250D7103A4EF67282A06562D60565A29FB015C65673151515E1E69577E2CAE9D7C1A3FFB39ACF2EB9CD1F6EC0E0A07A8E8A2CF993EF9A5D3A3AA95EEA923E010600E933640967099456174326279DFD38E61FE98A7F73';
wwv_flow_imp.g_varchar2_table(199) := 'EF2BFA5D4E6CCCF44C1CECECEBC04BEF5A9BF02777F95FBDE107985035E5A2AAEBCA1A70DFB53FC065B3575C946674203C1A854C4AEBD67B04ACCE4A372A8BC70161282C85A9B0B5CA64FAC499F8FAFABFC2E249D67D67B5EC6CC87DD0BC133B0FA8BBFE';
wwv_flow_imp.g_varchar2_table(200) := '354D4399FE1DCB46FD2CD39D041800B8D3EF59B1DA5FE443796DD0B4ECD6CE33D87D741BB2D1592E77FE72F1B7B2CE5F2EFE77ACBE0735A5E30C75F67B03B869E917B076E98D863263250CF58FA253EF0D9059EAB168362C1DABD6C23926CC849D301496';
wwv_flow_imp.g_varchar2_table(201) := 'C958B66CFE0ADCB9E27E8C2B357FF26332E5664B7660B41F1B77BE80A8C95259B9F8CB772C5B7AE457B9D43613043C9928846590C039023221D06C874091DD75702B5A3A4FCADB8CBD5A7B9AF1F296A72D77FB7FF9DA6F6162D534D3FABD9A1757CFB909';
wwv_flow_imp.g_varchar2_table(202) := '5FBAF61B0816979ACA9F1390CBBECC5297AEEBC1DE616425E2395759A1FCD5A1092B6126ECF48F962D2B2E2EC61D57DF83CF2CBA1B417FB9E57C760A46E311BCB8F38FE80E752AD590F5FE56826B65214C24810B083000B800083FA64F404E545E932793';
wwv_flow_imp.g_varchar2_table(203) := '4563516C3FF0360647FAD3AF502FA1ADB7051BB73D6FA9BCBAF206DC73DDB79577FE7A9117FDCE6A58887BAEFD36A64DB8E4A234D58148388A9EB601B437F560A06718714E14BC0897301136C2485809B38B841407A6344EC397D67E03974EBC4221E5BC';
wwv_flow_imp.g_varchar2_table(204) := 'A4B70F6EC0FEE37B958A699A66A9674D59488125D29CCC10600090198E2CE53C02B23EB9BCB6E4BC2363BF6DED6EC6EE23FA50409A4B0365CCFF95ADCF61C04230515E5289CF5D7D1F1A2A268EAD94C9D1F19553F0A5D5DFC1B597DF84227FC044FAD3C9';
wwv_flow_imp.g_varchar2_table(205) := '3286DDDB2E81402FE4EE56BAB93F2DE1BE4FC24058B437F542D808A3E42868B87CDE0A7CF9EAEF6072D5CCE4B2DA2C7DB47D3F5EDFF58AA91615FAB09A2CFD3315A40009244980014092C0286E8D40B0B2183263D94C7ADFD1DD692D0D948BBF8CF95BE9';
wwv_flow_imp.g_varchar2_table(206) := '49A8AB68C4FDEB7E80C6142FFEE76CF17BFC583DEB463C70D35F63D6D439E70E5BFE2B77B732BEDDAEF708C8AC76AB4BDA2C5790078262B3D82E0C8485304956ED29F5D374C7D5A09900001000494441547F7E0F9F59FC4504BCC5C966B755BE73A0157F';
wwv_flow_imp.g_varchar2_table(207) := '7EFB61C4E3EAC9B0329C26936B6D55D6719553A14C1160009029922CE72202D20B203B055E9470C181B7F7BC8E931DC72F386AFEF193097F03A6C2F5951370E7EA7BF56EFF3A5359AB0275A58DF8FC950FE0FAE59F415999F5B901E7CA4F5C043B07D17E';
wwv_flow_imp.g_varchar2_table(208) := 'A2073D2DFD180A8D42BAC2CFA517DA5FB14D6C145BC56659D32F0C92B5537A5E562FBE1E775FF36D4CAD9B054DFF976C1976CA0F4787B071EF73181C522FF9F3EAC368329C66A7AEACBBB0093000286CFFDA6A9DCFEFB53C76B9491FBF970BBA558565CC';
wwv_flow_imp.g_varchar2_table(209) := 'DFEA84BFEAD25A7C79EDB752EEF657E9E4F70470D58CF578E086BFC6A5B3179B2E831CABAC582C8EC1D008BA5B42683BAE0703AD0390DDEE0A62D2601C095B7A749BC436B1516C159BC76261766CE99CE5F8EE2DFF1ED7CEBB15C53EF36126B3F2EC487F';
wwv_flow_imp.g_varchar2_table(210) := '63FF0B3870FC7DD3AACBEB82F005BCA6726E13A0BD9923E0C95C512C89042E26204F2C2BB3B04BE068348C3776FF05FDC3A18B0BB9E0487B6F2B5ED503062BDDFE8D559370CF75DF414549D505A564F66365512D6E5F7A1FBEB0F67ED4D4D6A45CB83CD4';
wwv_flow_imp.g_varchar2_table(211) := '66B06F38B1DB5D9BDE3320E3E2B20C2E953BE594954833A3E82A3A8BEE6283EC922836896DA916DD386E3CEEB9FE5BB879E9DDA828AE4EB518DBF3ED6F790F5BF76D36D5A354FFCEC877C754900224900601060069C063566B042AC695A2B8D47CC25C67';
wwv_flow_imp.g_varchar2_table(212) := '6F3BB6ED7F0BA3D111C382BB429D9047FA0E580814647BDF3B57DFA777FB1BAFF337AC2885048FE6C59CFA25B8EF9AEFE3AAA5D7A0BC22F96181F3AB9571F1819E61C84638ADC7BA13BB0CF6B50F409E3F104F73E2E4F9F5A4FB5E74119D443759BE27BA';
wwv_flow_imp.g_varchar2_table(213) := '8ACE03BAEE62433AE5078341ACBBE2167CFDDABFC625E3E6C3A3FF4BA73C3BF3B6F737E3B977FF00E1A5D2A338E847A5FE9D51C9B8378D96679280279385B12C12302250595F0A7F91CF28F9E3E3474E7F08D92360AC936477A80B2FBEF3A4A5A57EF595';
wwv_flow_imp.g_varchar2_table(214) := 'E371FFF53F406D59FDC765E7EA4D45510DAE9FF339FCE0A6FF8C5B577F1EE31B33B3218DEC8AD7AF5F54E52978CD87BB1201818CA30FF68D6074280CB9F3CEB68D5287D42575863A3FDAFA5874119D4437D131133A94969462CDD2F5F8AB5BFF5FACBC64';
wwv_flow_imp.g_varchar2_table(215) := '5D627BE64C946B5719EDFD67F087377E81E161F5038C64D8AC42FFAED8A527EB7517010600EEF2B76DD6CA64400902CCB60A1605F71CD9810F4EEC92B71FBFBAF43BFF17DE79C2D2263F32E1EF73ABEE454549E5C7F9ED78E3F3F8B174D26A7C61C503B8';
wwv_flow_imp.g_varchar2_table(216) := '71E5AD68A8AF87A6691953452EB63293BEA7B51F1DA7FA2077DECD873A13F308E46979BD6D03E8EF1A4AEC3D207BE98F0C8CEA814204F2285DB9904B90252F792FC746872210199195BB77C92B654859327E2F654B1D5297D419EA1A4C6CD59B3183F482';
wwv_flow_imp.g_varchar2_table(217) := '2A2B2AB07CE12A7CE9BA6FE29A399FC9FB0BBF6E12FA477BF187D77F819EBE6EF9A87CC99DBF04014A211727D2F4CC12600090599E2C4D4140D63257D69729243E49DAB2EF4D9C683B92E82E6DEE3A99D8DB7F68D47CB67FD5D9097FF515133E29CCE677';
wwv_flow_imp.g_varchar2_table(218) := '55C575583EF57A7C7DEDDFE0F6ABEFC2C40913539A2C68C58CB82E24DDEE2383610CF40EA3AF731032162F7BE9779E09E981422F645C5E2EE472E72E2F792FC73A4EF542644456F2485E2943CA9232A56CBDF8ACFC4E99300D9FBBE61E7CF7C6FF801B17';
wwv_flow_imp.g_varchar2_table(219) := '7E0113CAA765A59E5C17DA37D285475EFB097A423DA655CBC5BFA8D46F2A470112C8140106009922C9722C1128290FA0A2CEFC7901F2E4C08DDB5FC0EEA62D7875DB0B96BAFD1BAB26E12B3998F067C9D03184FC9E00164D58897B567D1F775FFF0016CC';
wwv_flow_imp.g_varchar2_table(220) := 'BC14D595B5F068EEFC1A9614053167FA7CDCB3EE5BF8F2EAEF62E1842BF26E3DFF186EFEF890CC65F9D3E607D1D6D5F6F131A337A555C59097513A8F0B01BE324DC09D679E4C536479491128AB2E416965B1699EC476C17BDF853C41D04CB8A6AC0EB99C';
wwv_flow_imp.g_varchar2_table(221) := 'F067A68F2ABDD85B8299B50B71E7B207F0C0BABFC26D7AAFC082998B2013DE54F90A25ADB2BC12AB975C87AFAEFF3EBE78E5B77049DD7C043C4585625EC28E706C144FBCF320CEB49D4A7C56FD271364E5EE5F25C33412C806010600D9A0CA324D09C87C';
wwv_flow_imp.g_varchar2_table(222) := '0039F1990A5A1090097FF7D934E1CF827A4A117968CDA2092BF460E0EBF8FE2D7F8BFB6EF81ED62C5E8F29F533E0F799AF9C5016EE8044E9DD907D18164C5B821B97DF816F7EE6AFF1BDCFFC475C3BF7368C2B9DE0000D33AF82F45E3DF1EE43387CEA43';
wwv_flow_imp.g_varchar2_table(223) := 'D3C2FD012FAA1A4A4DE528009041E6093000C83C5396689140554399A59501AAE2A68E9B89BBD77CD3F6097F2A1DADA649CFC0B4DAD9B866DE6770D7D55FC35D6BBE8A950BD6A0A16A3C824565F079CC575158AD2B5B729A3E9C515A548E19E3E760E5C2';
wwv_flow_imp.g_varchar2_table(224) := 'B590A7F3DD7DDD37F0B915F763F98C35906729F8F5A1906CD56F77B9F274BFA7B7FF16879AF69BAAA2691AAA1ACBE1F1F2346C0A8B025921C0969715AC2CD40A018F5743756319BC299E001B2A27E02BD77E0F55C11A2BD5E5958CF40CC8BAF77597DE81';
wwv_flow_imp.g_varchar2_table(225) := '6FDFF47FE387B7FD2DBE71D3BFC367577E19CB665F85093553E0F7DADF432017FCCA6035664E98876B17DF8CAFDEF003FCD567FF13BEB2E6BB58B7F0B35830E172FD4E7F3C34FD5F5E39200565E388E3A5DD7FC4FB47765BCA5D33A15C0F80BD96642944';
wwv_flow_imp.g_varchar2_table(226) := '02D920C000201B5459A66502B2D569B57E22B49CE1AC605971053EBBEA2BF07ADCD18403BE22D4578CC7A2A9CBB17EE99D89C98EDFBEE56F70EFBAEFE28665B7E3B2592B31A3610E26D54E874C86AC2DAF875C98855391BF58BFFC6A67C925FFA724509A';
wwv_flow_imp.g_varchar2_table(227) := '28ABA172222E913BFBF96B71EB8A2FE22BD77F07DFD2BBF4BFBAFE07F8FCAAAF62F5BC1B30B966BAEE13E7F754244F419D23120BE3C96D0F61E7816D6AC1B3A9D57AEF5751D07FF613FF90803D04DC71F6B4872D6BB548409607CADD9045F184D8DC59F3';
wwv_flow_imp.g_varchar2_table(228) := 'F50B62618E21270C54FCE7D5BC28F6055113ACC7F4BA395831F35ADC72B97E41BEF6BBF8DABA1FE26B37FC10F75FFF7DDCBDF61BFA85FA2EDC70F9ED58BBE43358396F2D164DBF1CD31B666372ED344CAC9D8249755331BD7116E64D5984A533AFC48AF9';
wwv_flow_imp.g_varchar2_table(229) := '6BB0FAD275BAFC4D7ABEDB70DBCA2FEA81D69770F7B50F402EF4F7C89DFDA2CF62E9B49598316E2E1A2A26A1B2B806016F9142E3C24E92097F4F6F7F181F1CD963C95059055352E15E5E96205D20C48FD921C000203B5C596A92046442A0CC09B09A6DFB';
wwv_flow_imp.g_varchar2_table(230) := 'DE77B169FF33188D0E5BCDE20A394DD312430372E7DF503111B31A17262ED6ABE6DE80EB17DF8EDBAFBC07F7ACFDB6DE73F07DDC77FD0F70EF75DFC797D77C1B775EF555DCB2EC6EACD32FEE6B17DC8CD573D763C5ACEBB064EA4ACC6A588886F24928F2';
wwv_flow_imp.g_varchar2_table(231) := '16BB82613246CA263F8FBCFE137C70D4E2C5BF36085905934C1D9425816C116000902DB22C376902F2F093CA3AEB33A237EFDE84B70EFC05230C024C59CB0080961808F0C0A3F720F8341FFC1E7FE2E5D5DFEB4713A91FC97CF4BF69A12E17E819EAC423';
wwv_flow_imp.g_varchar2_table(232) := 'AFFD14275B4F58225139AE14653525966429743E01BECF16010600D922CB725322505A5D8CF2244E929BF76EC2935B7E83E1C8604AF5311309A442A0A9FB301EFCCB3FA2ADABC552F6AAFA326EF46389148572498001402E69B32E4B04CAF56ED2AA241E';
wwv_flow_imp.g_varchar2_table(233) := '8872B8E9001E7DE367680D996FBA6249010A918082C0A1B6F7F1D8A607D13FD4AF90FA244956BA042B8B3E39C0774911A070F6083000C81E5B969C06816065316A2756582EE1545B131E7FE341B4F49DB49C878224902C815D4DEF242EFEC3A3D67A9C64';
wwv_flow_imp.g_varchar2_table(234) := '726B49392FFEC972A67C6E083000C80D67D692020159265537C97A10D015EAC2AF5FFA27BC7F7A7B0AB5310B091813180CF7E3C53D7FC4736FFF09F178CC58F0BC1409606572EB7987F8366902CC904D020C00B2499765A74D2050E247DDE44A58DD2C48';
wwv_flow_imp.g_varchar2_table(235) := '9E1FF0CCE63FE09DC3AF20AEFF4B5B0116E07A02CD7D27F0D4D687B1FD8377F41665ED9988F5D3AA2001ACEBE11180A309300070B47BA89C1048EC1330B11CB269907C367B4910F0CAF6E7F1C49607111AE93513673A091812D871FC0DFC66C3BFE2C849';
wwv_flow_imp.g_varchar2_table(236) := 'F37DFDA5108FD78386E9D5F0F9BDF291AF3409307B76093000C82E5F969E2102FE221F643C3599BBAAFDC7F6E2F7AFFD14075BF658BE73CB90BA2C26CF09F48FF6E1F95D8FE28577FF8C703862C91A0954EBA7EABD553E9E562D01A390ED04D8526D7701';
wwv_flow_imp.g_varchar2_table(237) := '15B04A40EEAA240890FD02ACE669EB6EC11F5F7F086F1D7819B2639BD57C94732F81533D47F1FB377E869D07B65A862063FD32E62F3D00963351D0840093B34D800140B609B3FC8C12D0340DB26360327B05C4E371BCB6EB65FC66E33FE374CFF18CEAC3';
wwv_flow_imp.g_varchar2_table(238) := 'C20A87806C28F5EAFEA7F0BB0D3F456BC719CB86959405503DBE1C9A47B39C878224E004020C009CE005EA903481C45E010D65D034EB27DDE68ED37874E32FB1A769AB3E24907495CC50C004DA07CEE0C92D0FE2EDDDAF23120D5BB65402D1C4C5DF7A33';
wwv_flow_imp.g_varchar2_table(239) := 'B45CB6DB05697FF6093000C83E63D69025023214204302323460B58AA1D1013CFDF6A3F8D33BBFC4C048C86A36CA1528811862D876FCF5C4AE7E879B0E5AB6D2AB8FF3CB855F0251CB992848020E23C000C0610EA13AC911904981B513CB21DDB0C9E4FC';
wwv_flow_imp.g_varchar2_table(240) := 'F0C43EFC6EE38FB1E7E45644E29164B252B60008C885FF68E77EFCF1ED5FE0A5779FC2C888F5BBFEE26020B14955B26DAE00B0E5D00456950B020C0072419975649580D7EF4D8CC156D40693AAA7BDB7154F6F7E14CF6C79049DFD6D49E5A570FE121818';
wwv_flow_imp.g_varchar2_table(241) := 'EDC32B7B9FC2A3AFFC12879A0E2465883CC9AF460F38AD2E494DAA700A93408E093000C8317056973D02F2A4B5DA8915902583C9D4B2EFF82EFCFCC5BFC7F3EF3D869EA18E64B252368F080C4506F0F6910DF8F94B7F8F2DFBDE44CCE28E7E6262A2CBBF';
wwv_flow_imp.g_varchar2_table(242) := 'A10C1575C905999297AFE40930476E083000C80D67D69223021F0D095440E607245365241AC1CE0FDFC523AFFE0CBB4FBC9BD4C521997A286B0F81836D7BF0D85BBFC0ABDB5E40FFA0B587F89CD354BAFA6B2755A0A4827BFA9F63C2BF854180014061F8';
wwv_flow_imp.g_varchar2_table(243) := '91569C47C0E3D5204B052BC795C293E4D2ACAEFE0E3CF3CE63F8D5867FC0E1B67DE795CAB7F948A073B0158F6FFD151EDBF8204EB69C48CA04693BD28664B25F32134D93AA84C26310E0A15C116000902BD2AC27E7044AAB8A513BA932E90982A2684B57';
wwv_flow_imp.g_varchar2_table(244) := '33FEF8DA4378ECED9FE378E7414E14142879F28A2386F6FE337875DF53F8ED867FC5FEA3EF27AD7971D0AFB79D0A481B4A3A333390409E10600090278EA29AA911F017791313042BEB4B2D3F50E85C4DD15804079BF6E3E1577E8AE7773C8A93DD4711D7';
wwv_flow_imp.g_varchar2_table(245) := 'FF9D4BE75FE711E81C68C5A67DCFE3C1BFFC33DEDEFB3AFA87FA93565296F6D5A4309724E98A98614C023C983B020C0072C79A35D948A0B4527A032A50529EFC38AEEC24B8E7F04E3CF4F2BFE057AFFE03DE3FBD1DC391211BAD61D5E71388C4C238D2B1';
wwv_flow_imp.g_varchar2_table(246) := '0F7F7CF717F8E9F37F87CD7B37626474E47C114BEF653BDF3ABDC74836F7B19481422490E7041800E4B903A9BE7502B274ABBAB10C323F4066755BCFF9896473FB193CFDD6A3F8C31B3FC7DE935B114E62D7B84F4AE1BB4C1088C6F51E9AB63D7872EB43';
wwv_flow_imp.g_varchar2_table(247) := 'F8E3A6DFE0C3E31F20168B255DB43FE085B4899A09E50894F892CECF0C9924C0B272498001402E69B32E471090150275932B216BBA3D496C257C4E79593E76B2ED389EDAFC287EFCDC7FC5D6C3052B65D10000100049444154AF633492FC1DE7B9F2F837';
wwv_flow_imp.g_varchar2_table(248) := '3902A3D111EC3CF9267EF1CA8F1293FBE4C29FCCF6BDE76AD3340D72B75FABB7056913E78EF32F09B885000300B7789A767E8A80F400C89AEEBA299590E1814F2526F12134D48797B73F859F3CFF3FF0FA072FE074F7717D7860308912286A46208E3842';
wwv_flow_imp.g_varchar2_table(249) := 'A33D38D675001BF73F8D5FBEF277787EF39368EF4C7DCF0659DA5737B90232DE2FB3FDCD74607A6E08B096DC126000905BDEACCD61046458402608D6C95D600AF303CE99131AEAC11B7B36E0D72FFF131EDDF4F344AF40F740EA17A873E5BAF96F1C31B4';
wwv_flow_imp.g_varchar2_table(250) := 'F69FC2E6432FE30F6FFE1C8FFCE567D8BCFB35747677A58C45C6F9A5AB5F96F625BB6154CA953223093894000300873A866AE59640A0D887AAC6B2C41EEF729148A7F6539D2712BD02FFFAEC7FC3AF36FC2F6C3EB801AD7DA7D229D23579E591BCA77A8F';
wwv_flow_imp.g_varchar2_table(251) := '60E381A7F18B57FF0EBF78FE7F61D38E97D1D2DEACF703A48E417C2A177E79C9FBD44B62CEEC1160C9B926C00020D7C4599FA309C84E827291902D85535931F069E3E238D379121B77BE80DF6FFC051E7FFB41EC3CB6199D036D188D8D40E6127C5ADE7D';
wwv_flow_imp.g_varchar2_table(252) := '9F84818CE9770CB660CBD157F1E49687F087577F85CDBB5E436B7B2B6405463A54E4622FFE9497BC4FA72CE625814223C000A0D03C4A7B32424002015931304E1F1A9039029AA6A5556EFF701FF637EDC1F35B1EC74F9EFDEFF8F9CB3FC2533B7E83F79A';
wwv_flow_imp.g_varchar2_table(253) := 'DE46C7400BA2F1685AE5E75366B1B56DE034769E7C0BCFBEF73BFC6CC3FFC0CF9EFB3BFC65EB7338DCF421864687D236472EF672D19797BC4FBB4016907502AC20F7041800E49E396BCC23027E7D6840E6088C9BF2D1AA01AF37335F99EEDE6EEC3BAC07';
wwv_flow_imp.g_varchar2_table(254) := '04EF3C8E075FFA67FCFCA51FE1F12D0F62DBB1D771BCF343F40C77201C1BCD235263AB1A8947D03BD289133D87B0B3E94D3CB5FD21FC62C3DFE1372FFD2B5E78FB49EC39B80B3D3D3D88C5E2631790C4514DD312133A652D3F2FFC4980A3A86B0964E66C';
wwv_flow_imp.g_varchar2_table(255) := 'E65A7C34DC2D0464B2A0AC1A1837B51295E34A2173063261BB74710F8787D0D1DB8EFDC7F6E0A52D4FE1771B7E9A7828D14B3B1FC7CEE39B71AAE728FA86BB1301413CAD91F04C686C5C86E816D52FF883E17EB4F59FC6FEE69DD8F4FE3378ECF55FE1B7';
wwv_flow_imp.g_varchar2_table(256) := '2FFD04CFEB17FCBD8777A3BDAB0DC3E1E1B4BBF7CF69222B3A64399F046912AC712DFF3932F9F497BADA418001801DD45967DE12F0E83D00B23FBCAC1AA89D509178EAA0A6A5373C30168CAE5007761DDE86E7DF951E827FC13F3FFDFFE17F3DF9B7F8B7';
wwv_flow_imp.g_varchar2_table(257) := '97FF1B1E7DFBDFF0F2DEC7F1EED157B0BF7507CE8472BBF450C6ECDB07CEE048E73E6C3FF93A36EC7F128F6FFB157EBDE91FF08FCFFC27FCEF27FFB3DEA5FF3FF1F8EBBFC3BBFBDE446B57F35826A67D4C823009C6C64DAD4A2CE793202DED42590009B8';
wwv_flow_imp.g_varchar2_table(258) := '8800030017399BA666964051A91FB2839CF40AC87A727FC09BD90ACE2B4D7A0A462361747677E070D3416CDDB7191BB63E8F67DF7A1C4FBCF63B3CF6C6AFF0D4B6DFE1957D4FE1EDC31BB0F3C45B892D8B3F6CDD83139D07D1DC7B42BF2B3F83AEC136F4';
wwv_flow_imp.g_varchar2_table(259) := '0E77A16FA45B7FF59C7D75EBC7BAD13DD891988FD0DCDB84135D877050CFBBEFF4F6C43C852D473761D381E7F0CC8E87F1F8DBBFC6136F3E8C3FBFFE285EDCFC14DEDDFD26F61F791F675ACF6070680832B10F59EAA99021189993219334250893608CEB';
wwv_flow_imp.g_varchar2_table(260) := 'F8CF6B2879FA966ADB438001803DDC596B0111F0F9BD487441EB77A2D22B20172539960B1347F4AEF49E812E34B51DC5DE233BF1CEDED7F1EAF617F0FC3B4FE0CF6F3E823F6E7A10BFDDF06FF8E58BFFA8DF95FF3D7EFCCC7FD75FFF0DFFF6EC8FF0F3E7';
wwv_flow_imp.g_varchar2_table(261) := 'FF21F1FAE9B37F9738F6E3673F3AFECB17FF377EFB979FE0313DEF937A19CFBDFD27FC65EB33786BD7ABD87D68078E9C3E88F69E660C8D0EE4C2C4441D32912F116C4DAB8274F3CB24CD4402FF230112489900038094D13123095C4C407A05A45BBA5EBF';
wwv_flow_imp.g_varchar2_table(262) := '50E53A18B8589BB18F4463D1C4D6C5720197D7486418D158246363F263D79AFCD14089FFA3C06A4A156A269427865B78B79F3C47E7E7A08676116000601779D65BF0042E0C06CAAA8AC1DDE78CDD2E1777D9A257EEF0EBF5DE94BA4915480CAD14798D33';
wwv_flow_imp.g_varchar2_table(263) := '318504482065020C005246C78C24609D80040315E34A2133D5EBF5DE81AAFAD2C4A3896506BBF5520A4F52E64DC8987ECDF872D44FAF866CD12B9F39A1AFF07C6D64118FDB478001807DEC59B34B09C8FC8060653164A3A106FDA2376E8A3EAEAD0707B2';
wwv_flow_imp.g_varchar2_table(264) := 'F360215FF834003273BF4CEF0949D8AE074232835FEEF88BCB02901E005D84BF2440023922C0002047A0590D091811F0EB5DDCA5672F8AD2F53D7E660DEA265526F61B90C7D4E6E3B0815CCCE5622FFACBFE0962CFF859B59099FBD21322C18ED7EF3542';
wwv_flow_imp.g_varchar2_table(265) := 'C2E3AE214043ED24C000C04EFAAC9B04C620A0691A02253E48509098F93EA51213F48B67BD3E2E2E5DE515B5C1C4F08104069AA68D51426E0EC9455E7A338A4AFC891DF864F2A32CCF935E8DC64BF420667265629964597549C21EF0870448C051043C8E';
wwv_flow_imp.g_varchar2_table(266) := 'D286CA900009181290E101E92A2FAB29490C1FC87C02E92D6898569D788AA1040732B740EEB8E5A22B63E972A72D4BE6E46E5C02067FC00BB9687B7D1E78BC1A344D7FE9356A9A06AFD703A943648B838144902165C81247B9B84BF972275FAF77DD4BBD';
wwv_flow_imp.g_varchar2_table(267) := '729197F7B5932A124BF3246091BAA46CF087042C10A088BD043CF656CFDA498004D225E0F57B20175E090E646E815CFC2508A8AC2F4D040A72572E5DEF12308C9B5A05B96827EED267D4402EE4D2352F7F1B6654437A1944B666627922AF942133F1E5E2';
wwv_flow_imp.g_varchar2_table(268) := '2EE54BCF8404109AA6A5AB36F3930009D84C800180CD0E60F524400224E04E02B4DA6E020C00ECF600EB27011220011220011B083000B0013AAB2401122001B713A0FDF613600060BF0FA80109900009900009E49C0003809C23678524400224E07602B4';
wwv_flow_imp.g_varchar2_table(269) := 'DF0904180038C10BD48104488004488004724C8001408E81B33A12200112703B01DAEF0C020C009CE1076A41022440022440023925C00020A7B8591909900009B89D00ED770A0106004EF104F520011220011220811C1260009043D8AC8A04488004DC4E';
wwv_flow_imp.g_varchar2_table(270) := '80F63B87000300E7F8829A9000099000099040CE083000C8196A5644022440026E2740FB9D4480018093BC415D488004488004482047041800E40834AB2101122001B713A0FDCE22C000C059FEA036244002244002249013020C00728299959000099080';
wwv_flow_imp.g_varchar2_table(271) := 'DB09D07EA7116000E0348F501F12200112200112C8010106003980CC2A48800448C0ED0468BFF3083000709E4FA81109900009900009649D000380AC23660524400224E07602B4DF8904180038D12BD48904488004488004B24C8001409601B378122001';
wwv_flow_imp.g_varchar2_table(272) := '12703B01DAEF4C020C009CE9176A45022440022440025925C00020AB78593809900009B89D00ED772A0106004EF50CF522011220011220812C1260009045B82C9A04488004DC4E80F63B97000300E7FA869A9100099000099040D6083000C81A5A164C02';
wwv_flow_imp.g_varchar2_table(273) := '2440026E2740FB9D4C80018093BD43DD48800448800448204B04180064092C8B2501122001B713A0FDCE26C000C0D9FEA176244002244002249015020C00B28295859200099080DB09D07EA7136000E0740F513F12200112200112C8020106005980CA22';
wwv_flow_imp.g_varchar2_table(274) := '49800448C0ED0468BFF309300070BE8FA82109900009900009649C0003808C23658124400224E07602B43F1F083000C8072F514712200112200112C8300106001906CAE248800448C0ED04687F7E106000901F7EA296244002244002249051020C00328A';
wwv_flow_imp.g_varchar2_table(275) := '93859100099080DB09D0FE7C21C000205F3C453D4980044880044820830418006410268B2201122001B713A0FDF943800140FEF88A9A9200099000099040C6083000C8184A1644022440026E2740FBF3890003807CF2167525011220011220810C116000';
wwv_flow_imp.g_varchar2_table(276) := '9021902C8604488004DC4E80F6E717010600F9E52F6A4B022440022440021921C000202318590809900009B89D00EDCF37020C00F2CD63D4970448800448800432408001400620B20812200112703B01DA9F7F041800E49FCFA83109900009900009A44D';
wwv_flow_imp.g_varchar2_table(277) := '800140DA08590009900009B89D00EDCF47020C00F2D16BD49904488004488004D224C000204D80CC4E022440026E2740FBF393000380FCF41BB52601122001122081B4083000480B1F339300099080DB09D0FE7C25C000205F3D47BD4980044880044820';
wwv_flow_imp.g_varchar2_table(278) := '0D020C00D280C7AC24400224E07602B43F7F093000C85FDF517312200112200112489900038094D1312309900009B89D00EDCF67020C00F2D97BD49D044880044880045224C000204570CC46022440026E2740FBF39B000380FCF61FB527011220011220';
wwv_flow_imp.g_varchar2_table(279) := '819408300048091B339100099080DB09D0FE7C27C00020DF3D48FD498004488004482005020C005280C62C24400224E07602B43FFF093000C87F1FD20212200112200112489A000380A491310309900009B89D00ED2F04020C000AC18BB4810448800448';
wwv_flow_imp.g_varchar2_table(280) := '80049224C000204960142701122001B713A0FD854180014061F8915690000990000990405204180024858BC224400224E07602B4BF5008300028144FD20E1220011220011248820003802460519404488004DC4E80F6170E01060085E34B5A4202244002';
wwv_flow_imp.g_varchar2_table(281) := '24400296093000B08C8A8224400224E07602B4BF9008300028246FD21612200112200112B0488001804550142301122001B713A0FD854580014061F993D6900009900009908025020C002C61A21009900009B89D00ED2F34020C000ACDA3B48704488004';
wwv_flow_imp.g_varchar2_table(282) := '4880042C1060006001124548800448C0ED04687FE111600050783EA54524400224400224604A80018029220A9000099080DB09D0FE4224C000A010BD4A9B48800448800448C08400030013404C2601122001B713A0FD854980014061FA95569100099000';
wwv_flow_imp.g_varchar2_table(283) := '09908092000300251E269200099080DB09D0FE4225C000A0503D4BBB488004488004484041800180020E9348800448C0ED04687FE112600050B8BEA565244002244002246048800180211A269000099080DB09D0FE4226C000A090BD4BDB488004488004';
wwv_flow_imp.g_varchar2_table(284) := '48C08000030003303C4C022440026E2740FB0B9B000380C2F62FAD23011220011220813109300018130B0F9200099080DB09D0FE4227C000A0D03D4CFB48800448800448600C020C00C680C24324400224E07602B4BFF0093000287C1FD3421220011220';
wwv_flow_imp.g_varchar2_table(285) := '0112B8880003808B90F00009900009B89D00ED77030106006EF0326D24011220011220810B083000B800083F9200099080DB09D07E77106000E00E3FD34A12200112200112F8140106009FC2C10F24400224E07602B4DF2D041800B8C5D3B49304488004';
wwv_flow_imp.g_varchar2_table(286) := '488004CE23C000E03C187C4B022440026E2740FBDD438001807B7C4D4B49800448800448E063020C003E46C13724400224E07602B4DF4D041800B8C9DBB49504488004488004CE126000701604FF9000099080DB09D07E77116000E02E7FD35A12200112';
wwv_flow_imp.g_varchar2_table(287) := '2001124810600090C0C0FF48800448C0ED0468BFDB083000709BC7692F09900009900009E8041800E810F84B022440026E2740FBDD47800180FB7C4E8B49800448800448000C00D80848800448C0F50408C08D041800B8D1EBB4990448800448C0F50418';
wwv_flow_imp.g_varchar2_table(288) := '00B8BE091000099080DB09D07E77126000E04EBFD36A12200112200197136000E0F20640F3498004DC4E80F6BB95000300B77A9E76930009900009B89A00030057BB9FC6930009B89D00ED772F010600EEF53D2D273295BA750000003E49444154011220';
wwv_flow_imp.g_varchar2_table(289) := '011270310106002E763E4D270112703B01DAEF66020C00DCEC7DDA4E0224400224E05A020C005CEB7A1A4E0224E07602B4DFDD04FE7F000000FFFFE41A2FAB00000006494441540300EACE381DE008A15A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8183710806484027)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8185016578484033)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
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
 p_id=>wwv_flow_imp.id(8954095869107095)
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
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8193423957484195)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(8193423957484195)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260712081730Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081730Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8194053453484240)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8193667510484214)
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
 p_id=>wwv_flow_imp.id(8901327381042532)
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8902055521042573)
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8952565166107094)
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
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_active_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8198329465353559)
,p_lov_name=>'LOV_ACTIVE_STATUS'
,p_static_id=>'lov-active-status'
,p_lov_query=>'.'||wwv_flow_imp.id(8198329465353559)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:RhBcn5ngrKupYx7Y2m5BGU-km1NtxhG7WW7fdArvmmc'
,p_created_on=>wwv_flow_imp.dz('20260712104222Z')
,p_updated_on=>wwv_flow_imp.dz('20260712104222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8198537109353562)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'Active'
,p_static_id=>'active'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8198961817353567)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'Inactive'
,p_static_id=>'inactive'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_appointment_statuses
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8197497104529198)
,p_lov_name=>'LOV_APPOINTMENT_STATUSES'
,p_static_id=>'lov-appointment-statuses'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT status_name AS display_value,',
'       status_id   AS return_value',
'FROM appointment_statuses',
'ORDER BY status_id'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:ATg9PPp45QAuvuEVlDaUMlq8aWs977I2qXWTOKZ5LkQ'
,p_created_on=>wwv_flow_imp.dz('20260712082500Z')
,p_updated_on=>wwv_flow_imp.dz('20260712082500Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_blood_group
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8200370724407754)
,p_lov_name=>'LOV_BLOOD_GROUP'
,p_static_id=>'lov-blood-group'
,p_lov_query=>'.'||wwv_flow_imp.id(8200370724407754)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:XG2dy_aNVO3hDxqRGEAJfVLqFXHF-eCLbNfP7zGv7pA'
,p_created_on=>wwv_flow_imp.dz('20260712105124Z')
,p_updated_on=>wwv_flow_imp.dz('20260712105124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8200583090407756)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'A+'
,p_lov_return_value=>'A+'
,p_static_id=>'a'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8200936149407758)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'A-'
,p_lov_return_value=>'A-'
,p_static_id=>'a-2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8202998302407761)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'AB+'
,p_lov_return_value=>'AB+'
,p_static_id=>'ab'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8203332382407761)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'AB-'
,p_lov_return_value=>'AB-'
,p_static_id=>'ab-2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8201309472407759)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'B+'
,p_lov_return_value=>'B+'
,p_static_id=>'b'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8201771658407759)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'B-'
,p_lov_return_value=>'B-'
,p_static_id=>'b-2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8202162658407760)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'O+'
,p_lov_return_value=>'O+'
,p_static_id=>'o'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8202536756407760)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'O-'
,p_lov_return_value=>'O-'
,p_static_id=>'o-2'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_departments
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8196801507512222)
,p_lov_name=>'LOV_DEPARTMENTS'
,p_static_id=>'lov-departments'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id   AS return_value',
'FROM departments',
'WHERE status = ''Active''',
'ORDER BY department_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:KxT_yxvuMJ7f3BdZhSxUYH8eSGKw8mZDiv6JDWshpUM'
,p_created_on=>wwv_flow_imp.dz('20260712082210Z')
,p_updated_on=>wwv_flow_imp.dz('20260712082210Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_doctor_specialties
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8197038922523737)
,p_lov_name=>'LOV_DOCTOR_SPECIALTIES'
,p_static_id=>'lov-doctor-specialties'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT specialty_name AS display_value,',
'       specialty_id   AS return_value',
'FROM doctor_specialties',
'WHERE status = ''Active''',
'ORDER BY specialty_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:-b_RiHzPU5b_ZHZVic45bkYSNisr0_014Zb8UcwI8vg'
,p_created_on=>wwv_flow_imp.dz('20260712082405Z')
,p_updated_on=>wwv_flow_imp.dz('20260712082405Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_doctors
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8197864890534295)
,p_lov_name=>'LOV_DOCTORS'
,p_static_id=>'lov-doctors'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       doctor_id AS return_value',
'FROM doctors',
'WHERE status = ''Active''',
'ORDER BY full_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:VW2S74vyRbs0loMWI_Wg7iguipZY2Oi6KRp3y6rVE1Q'
,p_created_on=>wwv_flow_imp.dz('20260712082551Z')
,p_updated_on=>wwv_flow_imp.dz('20260712082551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_gender
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8199336130388986)
,p_lov_name=>'LOV_GENDER'
,p_static_id=>'lov-gender'
,p_lov_query=>'.'||wwv_flow_imp.id(8199336130388986)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:_sSCoXh1FJ2tutTyWaw3Ghvo2F5Rqazzk_rHI_TVZfU'
,p_created_on=>wwv_flow_imp.dz('20260712104817Z')
,p_updated_on=>wwv_flow_imp.dz('20260712104817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8199994569388988)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Female'
,p_lov_return_value=>'Female'
,p_static_id=>'female'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8199520096388987)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Male'
,p_lov_return_value=>'Male'
,p_static_id=>'male'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_medicine_categories
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8197260000526473)
,p_lov_name=>'LOV_MEDICINE_CATEGORIES'
,p_static_id=>'lov-medicine-categories'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT category_name AS display_value,',
'       category_id   AS return_value',
'FROM medicine_categories',
'WHERE status = ''Active''',
'ORDER BY category_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:iW5IUrFsgfMTy33P_CTm-Hpm7JqfkD8GAn-jxgXB_88'
,p_created_on=>wwv_flow_imp.dz('20260712082432Z')
,p_updated_on=>wwv_flow_imp.dz('20260712082432Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_patients
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8197612859531471)
,p_lov_name=>'LOV_PATIENTS'
,p_static_id=>'lov-patients'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name || '' - '' || civil_id AS display_value,',
'       patient_id                     AS return_value',
'FROM patients',
'ORDER BY full_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:Rp25TpkK1-1gj8gm_TWILp_wddzDh24CNwxSHaPK2sc'
,p_created_on=>wwv_flow_imp.dz('20260712082522Z')
,p_updated_on=>wwv_flow_imp.dz('20260712082522Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8924683041269637)
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
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8951993270107064)
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
,p_created_on=>wwv_flow_imp.dz('20260713103051Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9740374288490713)
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
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112122Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8185361732484039)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8180246789483914)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9821580227871763)
,p_short_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260715151126Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9755403188490911)
,p_short_name=>'Admissions'
,p_static_id=>'admissions'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9785313470508170)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260715141051Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141051Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8968756589107295)
,p_short_name=>'Appointments'
,p_static_id=>'appointments'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260713103054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9498993634169764)
,p_short_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260715045435Z')
,p_updated_on=>wwv_flow_imp.dz('20260715045435Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8917299532042792)
,p_short_name=>'Doctors'
,p_static_id=>'doctors'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260713073330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8180429941483919)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8945789030076575)
,p_short_name=>'Low Stock Medicines'
,p_static_id=>'low-stock-medicines'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260713102546Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9814886405770563)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260715145434Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145434Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8939121195269859)
,p_short_name=>'Medicines'
,p_static_id=>'medicines'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9298051422410995)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260714054424Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054424Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9803120939681484)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260715143944Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143944Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8719750966394590)
,p_short_name=>'Patients'
,p_static_id=>'patients'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9332617524161547)
,p_short_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260714074929Z')
,p_updated_on=>wwv_flow_imp.dz('20260714074929Z')
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
 p_id=>wwv_flow_imp.id(8181111544483938)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(8922195740240999)
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
,p_files_version=>2461235080632
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:9gRwlh_0BLQMiRMaPtZuU8hbErEuwpwiXTAU1dY9H3g'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080632Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(8922195740240999)
,p_theme_id=>42
,p_name=>'Iris (copy_1)'
,p_static_id=>'iris-copy-1'
,p_css_file_urls=>'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Iris.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-Pillar":"pebble","@g_Header_Style":"dark","@g_FontFamily":"oracle_sans","@g_Link-Base":"#04384b","@Head-Height":"64px","@Nav-Exp":"230px","@Actions-Exp":"250px"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#8922195740240999.css'
,p_theme_roller_read_only=>false
,p_created_on=>wwv_flow_imp.dz('20260713080631Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080631Z')
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
wwv_flow_imp.g_varchar2_table(336) := '6E653A206E6F6E653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20233563363136393B0D0A20202D2D75742D70616C657474652D7072696D6172792D636F6E74726173743A20236666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(337) := '2D75742D70616C657474652D7072696D6172792D73686164653A20234534463146373B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A20766172282D2D612D70616C657474652D7072696D617279293B0D0A7D0D0A3A726F6F';
wwv_flow_imp.g_varchar2_table(338) := '74207B0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20233034333834623B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E652D636F6C6F723A20233563363136393B0D0A7D0D0A3A726F6F74207B0D';
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
wwv_flow_imp.g_varchar2_table(361) := '6F64652D666F63757365642D746578742D636F6C6F723A20236666663B0D0A7D0D0A2E742D426F64792D6D61696E207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F723A20233563';
wwv_flow_imp.g_varchar2_table(362) := '363136393B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820233563363136393B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D626163';
wwv_flow_imp.g_varchar2_table(363) := '6B67726F756E642D636F6C6F723A20233563363136393B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D636F6C6F723A20696E68657269743B0D0A20202D2D612D747265657669';
wwv_flow_imp.g_varchar2_table(364) := '65772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F756E642D636F6C6F723A20233563363136393B0D0A20202D2D75742D74';
wwv_flow_imp.g_varchar2_table(365) := '726565766965772D62616467652D746578742D636F6C6F723A20236666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6D656E752D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(366) := '6F723A20233136313531333B0D0A20202D2D612D6D656E752D64656661756C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A20202D2D612D6D656E752D616363656C2D746578742D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(367) := '20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A20726762612832322C2032312C2031392C20302E3038293B';
wwv_flow_imp.g_varchar2_table(368) := '0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20233136313531333B0D0A20202D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D666F6375736564';
wwv_flow_imp.g_varchar2_table(369) := '2D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D726567696F6E2D6865616465722D746578742D63';
wwv_flow_imp.g_varchar2_table(370) := '6F6C6F723A20233136313531333B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D726567696F6E2D746578742D636F6C6F723A2023313631353133';
wwv_flow_imp.g_varchar2_table(371) := '3B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67726F756E642D636F6C6F723A20236661666166613B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(372) := '2D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A3A726F6F74207B';
wwv_flow_imp.g_varchar2_table(373) := '0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20233232374539453B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74726173743A20236666663B0D0A20202D2D75742D70616C657474652D70';
wwv_flow_imp.g_varchar2_table(374) := '72696D6172792D616C742D73686164653A20234534463146373B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D746578743A20233232374539453B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7375';
wwv_flow_imp.g_varchar2_table(375) := '63636573733A20233433364231443B0D0A20202D2D75742D70616C657474652D737563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D737563636573732D73686164653A20234534463544333B0D0A20202D';
wwv_flow_imp.g_varchar2_table(376) := '2D75742D70616C657474652D737563636573732D746578743A20233433364231443B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A20233232374539453B0D0A20202D2D75742D70616C657474652D696E666F2D63';
wwv_flow_imp.g_varchar2_table(377) := '6F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E666F2D73686164653A20234534463146373B0D0A20202D2D75742D70616C657474652D696E666F2D746578743A20233232374539453B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(378) := '0A20202D2D75742D70616C657474652D7761726E696E673A20233846353230413B0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20236666663B0D0A20202D2D75742D70616C657474652D7761726E696E672D7368';
wwv_flow_imp.g_varchar2_table(379) := '6164653A20234643454444433B0D0A20202D2D75742D70616C657474652D7761726E696E672D746578743A20233846353230413B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D64616E6765723A20234233333131463B0D0A20';
wwv_flow_imp.g_varchar2_table(380) := '202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A20234646454245383B0D0A20202D2D75742D70616C657474652D64616E6765722D74';
wwv_flow_imp.g_varchar2_table(381) := '6578743A20234233333131463B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D636F6C6F722D313A20233234354436333B0D0A20202D2D752D636F6C6F722D312D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D323A202344';
wwv_flow_imp.g_varchar2_table(382) := '45374631313B0D0A20202D2D752D636F6C6F722D322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D333A20233546423942353B0D0A20202D2D752D636F6C6F722D332D636F6E74726173743A20233030303B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(383) := '2D636F6C6F722D343A20233445343133373B0D0A20202D2D752D636F6C6F722D342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D353A20234130433938433B0D0A20202D2D752D636F6C6F722D352D636F6E74726173743A20';
wwv_flow_imp.g_varchar2_table(384) := '233030303B0D0A20202D2D752D636F6C6F722D363A20234234373238323B0D0A20202D2D752D636F6C6F722D362D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D373A20233833343031453B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(385) := '372D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D383A20233945374643433B0D0A20202D2D752D636F6C6F722D382D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D393A20234642433236413B0D0A';
wwv_flow_imp.g_varchar2_table(386) := '20202D2D752D636F6C6F722D392D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D31303A20233538333136453B0D0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(387) := '2D31313A20233546413242413B0D0A20202D2D752D636F6C6F722D31312D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31323A20233331374134353B0D0A20202D2D752D636F6C6F722D31322D636F6E74726173743A202366';
wwv_flow_imp.g_varchar2_table(388) := '66663B0D0A20202D2D752D636F6C6F722D31333A20234334363231303B0D0A20202D2D752D636F6C6F722D31332D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31343A20233343363437383B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(389) := '2D31342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31353A20233738393236323B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31363A202333323832';
wwv_flow_imp.g_varchar2_table(390) := '38623B0D0A20202D2D752D636F6C6F722D31362D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D31373A20236633616435633B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173743A20233030303B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(391) := '2D636F6C6F722D31383A20236164646264393B0D0A20202D2D752D636F6C6F722D31382D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D31393A20233664356234643B0D0A20202D2D752D636F6C6F722D31392D636F6E747261';
wwv_flow_imp.g_varchar2_table(392) := '73743A20236666663B0D0A20202D2D752D636F6C6F722D32303A20236564663565393B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32313A20236464626663363B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(393) := '2D636F6C6F722D32312D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32323A20236237356132613B0D0A20202D2D752D636F6C6F722D32322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D32333A';
wwv_flow_imp.g_varchar2_table(394) := '20236536646566323B0D0A20202D2D752D636F6C6F722D32332D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32343A20236666666266353B0D0A20202D2D752D636F6C6F722D32342D636F6E74726173743A20233030303B0D';
wwv_flow_imp.g_varchar2_table(395) := '0A20202D2D752D636F6C6F722D32353A20233762343539613B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D32363A20236165643064633B0D0A20202D2D752D636F6C6F722D32362D';
wwv_flow_imp.g_varchar2_table(396) := '636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32373A20233435616236313B0D0A20202D2D752D636F6C6F722D32372D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D32383A20236566386333613B0D';
wwv_flow_imp.g_varchar2_table(397) := '0A20202D2D752D636F6C6F722D32382D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D32393A20233534386361383B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(398) := '6F722D33303A20236139626239613B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A20233030303B0D0A20202D2D752D636F6C6F722D33313A20233136333833623B0D0A20202D2D752D636F6C6F722D33312D636F6E74726173743A20';
wwv_flow_imp.g_varchar2_table(399) := '236666663B0D0A20202D2D752D636F6C6F722D33323A20233835346330613B0D0A20202D2D752D636F6C6F722D33322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33333A20233333373537323B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(400) := '6F722D33332D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33343A20233266323732313B0D0A20202D2D752D636F6C6F722D33342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33353A20233561';
wwv_flow_imp.g_varchar2_table(401) := '386234313B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33363A20233733336434613B0D0A20202D2D752D636F6C6F722D33362D636F6E74726173743A20236666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(402) := '2D752D636F6C6F722D33373A20233466323631323B0D0A20202D2D752D636F6C6F722D33372D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D33383A20233562333938653B0D0A20202D2D752D636F6C6F722D33382D636F6E74';
wwv_flow_imp.g_varchar2_table(403) := '726173743A20236666663B0D0A20202D2D752D636F6C6F722D33393A20236431383130363B0D0A20202D2D752D636F6C6F722D33392D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34303A20233335316434323B0D0A20202D';
wwv_flow_imp.g_varchar2_table(404) := '2D752D636F6C6F722D34302D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34313A20233333363437363B0D0A20202D2D752D636F6C6F722D34312D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34';
wwv_flow_imp.g_varchar2_table(405) := '323A20233164343932393B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34333A20233736336230613B0D0A20202D2D752D636F6C6F722D34332D636F6E74726173743A2023666666';
wwv_flow_imp.g_varchar2_table(406) := '3B0D0A20202D2D752D636F6C6F722D34343A20233234336334383B0D0A20202D2D752D636F6C6F722D34342D636F6E74726173743A20236666663B0D0A20202D2D752D636F6C6F722D34353A20233438353833623B0D0A20202D2D752D636F6C6F722D34';
wwv_flow_imp.g_varchar2_table(407) := '352D636F6E74726173743A20236666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D6261636B6772';
wwv_flow_imp.g_varchar2_table(408) := '6F756E642D636F6C6F723A20726762612832322C2032312C2031392C20302E3038293B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233136313531333B0D0A20202D2D612D627574746F6E2D636F756E742D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(409) := '642D636F6C6F723A20233563363136393B0D0A20202D2D612D627574746F6E2D636F756E742D746578742D636F6C6F723A20236666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162656C2D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(410) := '233136313531333B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A20302E323572';
wwv_flow_imp.g_varchar2_table(411) := '656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F6C6F723A20233136313531333B0D0A';
wwv_flow_imp.g_varchar2_table(412) := '20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A20726762612832322C2032312C2031392C20302E35293B0D0A20202D2D612D6669656C642D696E7075742D686F7665722D6261636B67726F756E642D636F6C6F723A202366';
wwv_flow_imp.g_varchar2_table(413) := '66663B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F723A20233563363136393B';
wwv_flow_imp.g_varchar2_table(414) := '0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20233563363136393B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(415) := '233563363136393B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D6261636B67726F756E642D636F6C6F723A20236666663B0D0A';
wwv_flow_imp.g_varchar2_table(416) := '20202D2D612D636865636B626F782D626F726465722D636F6C6F723A20726762612832322C2032312C2031392C20302E35293B0D0A20202D2D612D636865636B626F782D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D63686563';
wwv_flow_imp.g_varchar2_table(417) := '6B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A20233563363136393B0D0A20202D2D612D636865636B626F782D636865636B65642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F78';
wwv_flow_imp.g_varchar2_table(418) := '2D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D67';
wwv_flow_imp.g_varchar2_table(419) := '762D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6365';
wwv_flow_imp.g_varchar2_table(420) := '6C6C2D6C6162656C2D746578742D636F6C6F723A20233236323632363B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(421) := '0A20202D2D75742D6865616465722D6865696768743A20363470783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6E61762D77696474683A2032333070783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D';
wwv_flow_imp.g_varchar2_table(422) := '77696474683A2032353070783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D636F6E74656E742D6D61782D7769';
wwv_flow_imp.g_varchar2_table(423) := '6474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D2D686561646572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D63';
wwv_flow_imp.g_varchar2_table(424) := '6F6C6F723A20696E697469616C3B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(425) := '7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(426) := '6F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(427) := '2D2D612D627574746F6E2D6163746976652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(428) := '72293B0D0A7D0D0A2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A3A726F6F74';
wwv_flow_imp.g_varchar2_table(429) := '207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820347078202D337078207267626128302C20302C';
wwv_flow_imp.g_varchar2_table(430) := '20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20726762612834392C2034372C2034332C20302E3038293B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D63';
wwv_flow_imp.g_varchar2_table(431) := '6F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D686F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(432) := '74746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D317078207267626128302C20302C20302C20302E31';
wwv_flow_imp.g_varchar2_table(433) := '352920696E7365743B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(434) := '6E2D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(435) := '6E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020626F726465722D636F6C6F723A207472616E73';
wwv_flow_imp.g_varchar2_table(436) := '706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D6E6F5549';
wwv_flow_imp.g_varchar2_table(437) := '3A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A6163746976652C0D0A2E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D427574746F6E2D2D6E6F55493A616374697665207B';
wwv_flow_imp.g_varchar2_table(438) := '0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D7479';
wwv_flow_imp.g_varchar2_table(439) := '70652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A20696E68657269743B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(440) := '6E642D636F6C6F723A207472616E73706172656E743B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C0D0A2E75692D627574746F6E2D2D686F742C0D';
wwv_flow_imp.g_varchar2_table(441) := '0A2E612D43617264566965772D627574746F6E2D2D686F742C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F42';
wwv_flow_imp.g_varchar2_table(442) := '7574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233136313531333B0D0A2020';
wwv_flow_imp.g_varchar2_table(443) := '2D2D612D627574746F6E2D746578742D636F6C6F723A20236566656565633B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233331326632623B0D0A20202D2D612D627574746F6E2D686F7665722D74';
wwv_flow_imp.g_varchar2_table(444) := '6578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233038303830373B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(445) := '2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(446) := '627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D';
wwv_flow_imp.g_varchar2_table(447) := '0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D70';
wwv_flow_imp.g_varchar2_table(448) := '6C652C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73';
wwv_flow_imp.g_varchar2_table(449) := '696D706C652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(450) := '2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233136313531333B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(451) := '627574746F6E2D746578742D636F6C6F723A20233436343333633B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236566656565633B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6C69';
wwv_flow_imp.g_varchar2_table(452) := '6E6B2C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D42757474';
wwv_flow_imp.g_varchar2_table(453) := '6F6E2D2D6C696E6B2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F4275';
wwv_flow_imp.g_varchar2_table(454) := '74746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472';
wwv_flow_imp.g_varchar2_table(455) := '616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(456) := '6E2D746578742D636F6C6F723A20233436343333633B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F';
wwv_flow_imp.g_varchar2_table(457) := '6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B20';
wwv_flow_imp.g_varchar2_table(458) := '6C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B';
wwv_flow_imp.g_varchar2_table(459) := '206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(460) := '686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162';
wwv_flow_imp.g_varchar2_table(461) := '656C2E612D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C61';
wwv_flow_imp.g_varchar2_table(462) := '62656C2E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233436343333633B0D0A2020636F6C6F723A20233436343333633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67207B0D';
wwv_flow_imp.g_varchar2_table(463) := '0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233846353230413B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F';
wwv_flow_imp.g_varchar2_table(464) := '756E642D636F6C6F723A20236266366430643B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D616374697665';
wwv_flow_imp.g_varchar2_table(465) := '2D6261636B67726F756E642D636F6C6F723A20233737343430383B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(466) := '612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F';
wwv_flow_imp.g_varchar2_table(467) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465';
wwv_flow_imp.g_varchar2_table(468) := '722D636F6C6F723A20233846353230413B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236261396337383B0D0A20';
wwv_flow_imp.g_varchar2_table(469) := '202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666663B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(470) := '6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(471) := '2D627574746F6E2D746578742D636F6C6F723A20236261396337383B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7761726E696E672E612D427574746F6E2D2D6E6F';
wwv_flow_imp.g_varchar2_table(472) := '5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236261396337383B0D0A2020636F6C6F723A20236261396337383B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20202D2D612D627574746F6E2D6261';
wwv_flow_imp.g_varchar2_table(473) := '636B67726F756E642D636F6C6F723A20233433364231443B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A202335633933';
wwv_flow_imp.g_varchar2_table(474) := '32383B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(475) := '723A20233336353731383B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D62';
wwv_flow_imp.g_varchar2_table(476) := '61636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574';
wwv_flow_imp.g_varchar2_table(477) := '746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A2023343336423144';
wwv_flow_imp.g_varchar2_table(478) := '3B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233562366634383B0D0A20202D2D612D627574746F6E2D686F7665';
wwv_flow_imp.g_varchar2_table(479) := '722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B';
wwv_flow_imp.g_varchar2_table(480) := '0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(481) := '6F723A20233562366634383B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(482) := '6F6E2D746578742D636F6C6F723A20233562366634383B0D0A2020636F6C6F723A20233562366634383B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(483) := '6E2D6261636B67726F756E642D636F6C6F723A20234233333131463B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(484) := '6461343032623B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(485) := '636F6C6F723A20233964326231623B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F63';
wwv_flow_imp.g_varchar2_table(486) := '75732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(487) := '2D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D';
wwv_flow_imp.g_varchar2_table(488) := '706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234233333131463B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(489) := '6E2D746578742D636F6C6F723A20233939353834663B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B2C0D';
wwv_flow_imp.g_varchar2_table(490) := '0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(491) := '642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233939353834663B0D0A7D0D0A2E75692D627574';
wwv_flow_imp.g_varchar2_table(492) := '746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F55492C0D0A';
wwv_flow_imp.g_varchar2_table(493) := '2E742D427574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233939353834663B0D0A2020636F6C6F723A20233939353834663B0D0A7D0D0A2E742D42757474';
wwv_flow_imp.g_varchar2_table(494) := '6F6E2D2D7072696D617279207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233232374539453B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666663B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(495) := '2D686F7665722D6261636B67726F756E642D636F6C6F723A20233237386662333B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(496) := '2D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233164366438393B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(497) := '2D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(498) := '2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(499) := '612D627574746F6E2D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(500) := '20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666663B0D0A';
wwv_flow_imp.g_varchar2_table(501) := '7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B6772';
wwv_flow_imp.g_varchar2_table(502) := '6F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(503) := '7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(504) := '612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874';
wwv_flow_imp.g_varchar2_table(505) := '293B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(506) := '2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(507) := '7574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(508) := '6F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C';
wwv_flow_imp.g_varchar2_table(509) := '0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D6E6F';
wwv_flow_imp.g_varchar2_table(510) := '5549202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42757474';
wwv_flow_imp.g_varchar2_table(511) := '6F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234233333131463B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574';
wwv_flow_imp.g_varchar2_table(512) := '746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233433364231443B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279';
wwv_flow_imp.g_varchar2_table(513) := '202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233232374539453B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(514) := '0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(515) := '636F6C6F723A20233846353230413B0D0A7D0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(516) := '6261636B67726F756E642D636F6C6F723A20233563363136393B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F6375732D6F75746C696E653A206E6F6E653B0D0A';
wwv_flow_imp.g_varchar2_table(517) := '20202D2D612D63762D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E31';
wwv_flow_imp.g_varchar2_table(518) := '38373572656D3B0D0A20202D2D612D63762D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A2020';
wwv_flow_imp.g_varchar2_table(519) := '2D2D612D63762D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D746578742D636F6C6F723A20766172282D2D612D63762D';
wwv_flow_imp.g_varchar2_table(520) := '746578742D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D736861646F773A2030203470782030';
wwv_flow_imp.g_varchar2_table(521) := '2E3572656D2030207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(522) := '63762D6163746976652D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(523) := '293B0D0A20202D2D612D63762D6163746976652D736861646F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20233563363136393B0D0A20202D2D612D63762D6D6564';
wwv_flow_imp.g_varchar2_table(524) := '69612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D686561';
wwv_flow_imp.g_varchar2_table(525) := '6465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(526) := '2C20302E3035293B0D0A20202D2D612D63762D69636F6E2D6261636B67726F756E642D636F6C6F723A20233563363136393B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D69636F6E2D62';
wwv_flow_imp.g_varchar2_table(527) := '6F726465722D7261646975733A20313030253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70';
wwv_flow_imp.g_varchar2_table(528) := '616464696E673A20302E3572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(529) := '696E697469616C732D6261636B67726F756E642D636F6C6F723A20233563363136393B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D77';
wwv_flow_imp.g_varchar2_table(530) := '65696768743A203430303B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20233636363636363B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(531) := '626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(532) := '2D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E';
wwv_flow_imp.g_varchar2_table(533) := '74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20233636363636363B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203170';
wwv_flow_imp.g_varchar2_table(534) := '783B0D0A20202D2D612D63762D616374696F6E732D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A203172656D3B0D0A20202D2D612D6376';
wwv_flow_imp.g_varchar2_table(535) := '2D616374696F6E732D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D0A202070616464696E672D626C6F636B2D7374';
wwv_flow_imp.g_varchar2_table(536) := '6172743A20303B0D0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C6179207B0D0A20206D617267696E2D626C6F636B2D73';
wwv_flow_imp.g_varchar2_table(537) := '746172743A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A7D0D0A2E612D436172645669';
wwv_flow_imp.g_varchar2_table(538) := '65772D66756C6C4C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D612D63762D666F6375732D626F726465722D63';
wwv_flow_imp.g_varchar2_table(539) := '6F6C6F72293B0D0A7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E612D43617264566965772D6D';
wwv_flow_imp.g_varchar2_table(540) := '656469612061207B0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E612D43';
wwv_flow_imp.g_varchar2_table(541) := '617264566965772D6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D65';
wwv_flow_imp.g_varchar2_table(542) := '6469612D70616464696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D2D612D63762D6D656469612D70616464696E67';
wwv_flow_imp.g_varchar2_table(543) := '2D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(544) := '3A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D62';
wwv_flow_imp.g_varchar2_table(545) := '616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D29207B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(546) := '6F723A20696E68657269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D29';
wwv_flow_imp.g_varchar2_table(547) := '3A666F637573207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A2020';
wwv_flow_imp.g_varchar2_table(548) := '2D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_imp.g_varchar2_table(549) := '3735293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E73';
wwv_flow_imp.g_varchar2_table(550) := '2D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A20322E3572656D';
wwv_flow_imp.g_varchar2_table(551) := '3B0D0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20';
wwv_flow_imp.g_varchar2_table(552) := '766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B';
wwv_flow_imp.g_varchar2_table(553) := '0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(554) := '63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203430303B';
wwv_flow_imp.g_varchar2_table(555) := '0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(556) := '2D2D7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(557) := '3A20302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(558) := '74796C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D656469';
wwv_flow_imp.g_varchar2_table(559) := '61207B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464';
wwv_flow_imp.g_varchar2_table(560) := '696E672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C';
wwv_flow_imp.g_varchar2_table(561) := '6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D63';
wwv_flow_imp.g_varchar2_table(562) := '6F6E7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D612D63762D69636F6E';
wwv_flow_imp.g_varchar2_table(563) := '2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F';
wwv_flow_imp.g_varchar2_table(564) := '726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73';
wwv_flow_imp.g_varchar2_table(565) := '697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(566) := '6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6261636B';
wwv_flow_imp.g_varchar2_table(567) := '67726F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D626F6479202B202E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(568) := '2D616374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E742D436172647352656769';
wwv_flow_imp.g_varchar2_table(569) := '6F6E2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D636F6C756D6E';
wwv_flow_imp.g_varchar2_table(570) := '3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E612D';
wwv_flow_imp.g_varchar2_table(571) := '43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D6376';
wwv_flow_imp.g_varchar2_table(572) := '2D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77';
wwv_flow_imp.g_varchar2_table(573) := '202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D73746172743A20303B0D0A';
wwv_flow_imp.g_varchar2_table(574) := '7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C';
wwv_flow_imp.g_varchar2_table(575) := '20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203472656D3B';
wwv_flow_imp.g_varchar2_table(576) := '0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D';
wwv_flow_imp.g_varchar2_table(577) := '612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(578) := '612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F';
wwv_flow_imp.g_varchar2_table(579) := '6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203430303B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(580) := '762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(581) := '2D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(582) := '642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(583) := '62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E';
wwv_flow_imp.g_varchar2_table(584) := '6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465';
wwv_flow_imp.g_varchar2_table(585) := '722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D';
wwv_flow_imp.g_varchar2_table(586) := '626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F72';
wwv_flow_imp.g_varchar2_table(587) := '6465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A';
wwv_flow_imp.g_varchar2_table(588) := '203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D696E6C696E652D73746172743A2063616C63';
wwv_flow_imp.g_varchar2_table(589) := '28766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D';
wwv_flow_imp.g_varchar2_table(590) := '0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E';
wwv_flow_imp.g_varchar2_table(591) := '2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(592) := '69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D69';
wwv_flow_imp.g_varchar2_table(593) := '636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(594) := '69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020746578742D736861646F773A203020317078';
wwv_flow_imp.g_varchar2_table(595) := '20317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A6529202F2032293B0D0A7D0D0A2E742D436172647352';
wwv_flow_imp.g_varchar2_table(596) := '6567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6865616465722D6974656D2D7370';
wwv_flow_imp.g_varchar2_table(597) := '6163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D';
wwv_flow_imp.g_varchar2_table(598) := '73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(599) := '74796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861';
wwv_flow_imp.g_varchar2_table(600) := '732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D69636F6E5772617020';
wwv_flow_imp.g_varchar2_table(601) := '7B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E7365743B0D0A2020646973706C61793A20666C';
wwv_flow_imp.g_varchar2_table(602) := '65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479207B0D0A2020746578742D616C69676E3A2063';
wwv_flow_imp.g_varchar2_table(603) := '656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A206175746F3B0D0A20206D617267696E2D696E6C696E65';
wwv_flow_imp.g_varchar2_table(604) := '2D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467653A6E6F74283A66697273742D6368696C';
wwv_flow_imp.g_varchar2_table(605) := '6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E';
wwv_flow_imp.g_varchar2_table(606) := '612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A20206865696768743A20756E7365743B0D0A2020';
wwv_flow_imp.g_varchar2_table(607) := '6D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474683A20756E7365743B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(608) := '726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D436172';
wwv_flow_imp.g_varchar2_table(609) := '64566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374';
wwv_flow_imp.g_varchar2_table(610) := '696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A7D0D0A2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(611) := '67696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D436172';
wwv_flow_imp.g_varchar2_table(612) := '64566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C654320';
wwv_flow_imp.g_varchar2_table(613) := '7B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469';
wwv_flow_imp.g_varchar2_table(614) := '612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072';
wwv_flow_imp.g_varchar2_table(615) := '656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D';
wwv_flow_imp.g_varchar2_table(616) := '626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7469746C652E';
wwv_flow_imp.g_varchar2_table(617) := '6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7469746C652E6861732D7365636F6E646172793A6E6F';
wwv_flow_imp.g_varchar2_table(618) := '74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D';
wwv_flow_imp.g_varchar2_table(619) := '2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E';
wwv_flow_imp.g_varchar2_table(620) := '612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D';
wwv_flow_imp.g_varchar2_table(621) := '0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567';
wwv_flow_imp.g_varchar2_table(622) := '696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E686173';
wwv_flow_imp.g_varchar2_table(623) := '2D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A406D6564696120';
wwv_flow_imp.g_varchar2_table(624) := '286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577207B0D0A20202020646973706C61793A20666C';
wwv_flow_imp.g_varchar2_table(625) := '65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A20206772';
wwv_flow_imp.g_varchar2_table(626) := '69642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D2D6669727374202E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(627) := '626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D2D66697273742E';
wwv_flow_imp.g_varchar2_table(628) := '6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D69';
wwv_flow_imp.g_varchar2_table(629) := '74656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A2020677269642D636F6C756D6E3A2034';
wwv_flow_imp.g_varchar2_table(630) := '3B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D436172';
wwv_flow_imp.g_varchar2_table(631) := '64566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(632) := '742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D';
wwv_flow_imp.g_varchar2_table(633) := '43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D656E64207B0D';
wwv_flow_imp.g_varchar2_table(634) := '0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D69';
wwv_flow_imp.g_varchar2_table(635) := '74656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D696E6D617828302C20766172282D2D612D63762D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(636) := '70616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(637) := '7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(638) := '2D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(639) := '3A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(640) := '6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A653A20312E31323572';
wwv_flow_imp.g_varchar2_table(641) := '656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D70';
wwv_flow_imp.g_varchar2_table(642) := '696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E742D73697A653A20302E';
wwv_flow_imp.g_varchar2_table(643) := '373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E33373572656D3B0D0A20202D2D75742D70';
wwv_flow_imp.g_varchar2_table(644) := '696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D';
wwv_flow_imp.g_varchar2_table(645) := '6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20312E3235';
wwv_flow_imp.g_varchar2_table(646) := '72656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E33373572656D3B0D0A20202D2D612D73776974';
wwv_flow_imp.g_varchar2_table(647) := '63682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E3138373572656D3B0D0A20202D2D612D7377';
wwv_flow_imp.g_varchar2_table(648) := '697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6974656D54';
wwv_flow_imp.g_varchar2_table(649) := '6578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A653A20302E38373572656D3B';
wwv_flow_imp.g_varchar2_table(650) := '0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D6C61726765';
wwv_flow_imp.g_varchar2_table(651) := '2E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A';
wwv_flow_imp.g_varchar2_table(652) := '20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_imp.g_varchar2_table(653) := '6E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C';
wwv_flow_imp.g_varchar2_table(654) := '6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B';
wwv_flow_imp.g_varchar2_table(655) := '6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D42757474';
wwv_flow_imp.g_varchar2_table(656) := '6F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D7769';
wwv_flow_imp.g_varchar2_table(657) := '6474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(658) := '69656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F6666';
wwv_flow_imp.g_varchar2_table(659) := '7365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6974656D5772617070657220';
wwv_flow_imp.g_varchar2_table(660) := '2E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D697465';
wwv_flow_imp.g_varchar2_table(661) := '6D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D';
wwv_flow_imp.g_varchar2_table(662) := '0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C6172676520';
wwv_flow_imp.g_varchar2_table(663) := '2E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(664) := '2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E736875';
wwv_flow_imp.g_varchar2_table(665) := '74746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D2D6C';
wwv_flow_imp.g_varchar2_table(666) := '61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F7570';
wwv_flow_imp.g_varchar2_table(667) := '2D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_imp.g_varchar2_table(668) := '65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D666965';
wwv_flow_imp.g_varchar2_table(669) := '6C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E36';
wwv_flow_imp.g_varchar2_table(670) := '323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D66';
wwv_flow_imp.g_varchar2_table(671) := '69656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A653A20312E3132357265';
wwv_flow_imp.g_varchar2_table(672) := '6D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D75742D70696C6C627574';
wwv_flow_imp.g_varchar2_table(673) := '746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E742D73697A653A20302E3837357265';
wwv_flow_imp.g_varchar2_table(674) := '6D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3572656D3B0D0A20202D2D75742D70696C6C627574';
wwv_flow_imp.g_varchar2_table(675) := '746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E';
wwv_flow_imp.g_varchar2_table(676) := '2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(677) := '2D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7377697463682D77696474683A20342E3735';
wwv_flow_imp.g_varchar2_table(678) := '72656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A';
wwv_flow_imp.g_varchar2_table(679) := '203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_imp.g_varchar2_table(680) := '6E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E61706578';
wwv_flow_imp.g_varchar2_table(681) := '2D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C';
wwv_flow_imp.g_varchar2_table(682) := '6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E';
wwv_flow_imp.g_varchar2_table(683) := '3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D';
wwv_flow_imp.g_varchar2_table(684) := '2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C';
wwv_flow_imp.g_varchar2_table(685) := '203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F72';
wwv_flow_imp.g_varchar2_table(686) := '5069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C';
wwv_flow_imp.g_varchar2_table(687) := '79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(688) := '612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(689) := '2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E74';
wwv_flow_imp.g_varchar2_table(690) := '2D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D66696C';
wwv_flow_imp.g_varchar2_table(691) := '652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D776562';
wwv_flow_imp.g_varchar2_table(692) := '6B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(693) := '612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E';
wwv_flow_imp.g_varchar2_table(694) := '617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F';
wwv_flow_imp.g_varchar2_table(695) := '6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_imp.g_varchar2_table(696) := '6E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A2031';
wwv_flow_imp.g_varchar2_table(697) := '72656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E70';
wwv_flow_imp.g_varchar2_table(698) := '75742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(699) := '2E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652C0D0A2E742D466F726D2D2D786C61726765202E74';
wwv_flow_imp.g_varchar2_table(700) := '2D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E';
wwv_flow_imp.g_varchar2_table(701) := '672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D666965';
wwv_flow_imp.g_varchar2_table(702) := '6C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69';
wwv_flow_imp.g_varchar2_table(703) := '636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A6265666F7265207B0D0A20207472616E73666F726D2D6F726967';
wwv_flow_imp.g_varchar2_table(704) := '696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F7220302E31357320656173652C20626F782D736861646F7720302E31';
wwv_flow_imp.g_varchar2_table(705) := '357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A61667465722C0D0A2E752D726164696F3A6166746572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(706) := '7472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F70616369747920302E31357320656173652C207472616E73666F72';
wwv_flow_imp.g_varchar2_table(707) := '6D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(708) := '6865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A6163746976653A6265666F72652C0D0A2E752D726164696F3A';
wwv_flow_imp.g_varchar2_table(709) := '6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528302E3735293B0D0A7D0D0A2E726F2D636865636B626F782E69';
wwv_flow_imp.g_varchar2_table(710) := '732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A61667465722C0D0A696E7075743A636865636B656420';
wwv_flow_imp.g_varchar2_table(711) := '2B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D446174655069636B65722D63616C656E6461725469746C65207B';
wwv_flow_imp.g_varchar2_table(712) := '0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D77696474682C20317078293B0D0A2020626F726465722D626C6F636B';
wwv_flow_imp.g_varchar2_table(713) := '2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D636F6C6F722C2076';
wwv_flow_imp.g_varchar2_table(714) := '6172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E207B0D0A2020646973706C61793A20666C65783B0D0A2020616C';
wwv_flow_imp.g_varchar2_table(715) := '69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D66';
wwv_flow_imp.g_varchar2_table(716) := '6F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A7D';
wwv_flow_imp.g_varchar2_table(717) := '0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D446174655069636B65722D74696D654D696E757465732C0D0A2E';
wwv_flow_imp.g_varchar2_table(718) := '612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C6174652D61726561733A202273656C656374223B0D0A';
wwv_flow_imp.g_varchar2_table(719) := '2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C6563742C0D0A2E612D446174655069636B65722D7469';
wwv_flow_imp.g_varchar2_table(720) := '6D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206F726465723A206E6F6E653B0D';
wwv_flow_imp.g_varchar2_table(721) := '0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74683A61';
wwv_flow_imp.g_varchar2_table(722) := '667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069636B65722D74696D654D696E757465733A61667465722C0D0A';
wwv_flow_imp.g_varchar2_table(723) := '2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E74204150455820536D616C6C223B0D0A2020677269642D617265613A';
wwv_flow_imp.g_varchar2_table(724) := '2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D646174657069636B65722D6D6F6E74687069636B65722D7365';
wwv_flow_imp.g_varchar2_table(725) := '6C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E7468207365';
wwv_flow_imp.g_varchar2_table(726) := '6C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D73';
wwv_flow_imp.g_varchar2_table(727) := '697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D44';
wwv_flow_imp.g_varchar2_table(728) := '6174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E742D73697A652C20302E37';
wwv_flow_imp.g_varchar2_table(729) := '3572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D74';
wwv_flow_imp.g_varchar2_table(730) := '6578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(731) := '7574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F766572207B0D0A20202D2D612D627574746F6E2D73746174652D626163';
wwv_flow_imp.g_varchar2_table(732) := '6B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(733) := '6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F72293B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(734) := '74746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A616374697665207B0D0A20202D2D612D627574746F6E2D73746174652D';
wwv_flow_imp.g_varchar2_table(735) := '6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F7229293B0D0A';
wwv_flow_imp.g_varchar2_table(736) := '20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F7229293B0D';
wwv_flow_imp.g_varchar2_table(737) := '0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(738) := '6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D627574746F6E2D686F7665722D736861646F7729293B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(739) := '2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(740) := '3A206E6F6E653B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F722C2063757272656E74436F6C6F72293B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D2D612D6D656E752D666F63757365642D626163';
wwv_flow_imp.g_varchar2_table(741) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F64792E69732D666F63';
wwv_flow_imp.g_varchar2_table(742) := '75736564202E742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D74657874';
wwv_flow_imp.g_varchar2_table(743) := '2D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(744) := '72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974656D2D626F726465722D77696474682C203170';
wwv_flow_imp.g_varchar2_table(745) := '7829202A202D3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D746F702D776964';
wwv_flow_imp.g_varchar2_table(746) := '74683A20303B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E207B0D0A20206F75746C696E653A20766172282D';
wwv_flow_imp.g_varchar2_table(747) := '2D75742D666F6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F6666';
wwv_flow_imp.g_varchar2_table(748) := '7365743A202D3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B0D0A202077686974652D73706163653A206E6F';
wwv_flow_imp.g_varchar2_table(749) := '777261703B0D0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D612D6D656E756261722D6974656D2D6C696E65';
wwv_flow_imp.g_varchar2_table(750) := '2D6865696768742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D696E6C696E652D656E643A20303B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(751) := '742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D';
wwv_flow_imp.g_varchar2_table(752) := '656E752D2D63757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E742D4865616465722D6E';
wwv_flow_imp.g_varchar2_table(753) := '6176202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D62';
wwv_flow_imp.g_varchar2_table(754) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A612D7365';
wwv_flow_imp.g_varchar2_table(755) := '6C656374207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(756) := '726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54';
wwv_flow_imp.g_varchar2_table(757) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283234372C20';
wwv_flow_imp.g_varchar2_table(758) := '3234372C203234372C20302E3038293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D54726565';
wwv_flow_imp.g_varchar2_table(759) := '4E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_imp.g_varchar2_table(760) := '76656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(761) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283234302C203234302C203234302C20302E3038292021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(762) := '0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61';
wwv_flow_imp.g_varchar2_table(763) := '76202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D636F6E74656E742C0D0A2E742D547265654E6176202E612D5472656556696577';
wwv_flow_imp.g_varchar2_table(764) := '2D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C65202B202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(765) := '2D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E612D54726565566965772D636F6E74656E742E69732D73656C6563746564203E202E6661207B0D0A20202D2D75742D7472656576696577';
wwv_flow_imp.g_varchar2_table(766) := '2D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D547265654E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D7374796C6542207B0D0A20202D2D75742D74726565766965772D62616467652D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(767) := '3A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62616467652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D74726565';
wwv_flow_imp.g_varchar2_table(768) := '766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474683A20312E373572656D3B0D0A20202D2D75742D74726565766965772D6E';
wwv_flow_imp.g_varchar2_table(769) := '6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D636F6E7461696E65722D77696474683A20766172282D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E';
wwv_flow_imp.g_varchar2_table(770) := '7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D75742D74726565766965772D6E6F64652D696E64656E743A203072656D3B0D0A20202D2D75742D74726565766965772D6C6561662D6E6F64652D696E64656E743A20302E363235';
wwv_flow_imp.g_varchar2_table(771) := '72656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D6C6561662D70616464696E672D793A203072656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E36323572656D3B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(772) := '742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B';
wwv_flow_imp.g_varchar2_table(773) := '0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A2020626F72';
wwv_flow_imp.g_varchar2_table(774) := '6465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E6973';
wwv_flow_imp.g_varchar2_table(775) := '2D636F6C6C61707369626C65207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D5472656556';
wwv_flow_imp.g_varchar2_table(776) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2075';
wwv_flow_imp.g_varchar2_table(777) := '6C207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965';
wwv_flow_imp.g_varchar2_table(778) := '772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D6375';
wwv_flow_imp.g_varchar2_table(779) := '7272656E742D2D746F70202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(780) := '772D726F772E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(781) := '20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_imp.g_varchar2_table(782) := '6565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E';
wwv_flow_imp.g_varchar2_table(783) := '742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D6172792920347078203020303B0D0A7D0D0A2E752D52544C202E742D';
wwv_flow_imp.g_varchar2_table(784) := '547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C';
wwv_flow_imp.g_varchar2_table(785) := '6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20';
wwv_flow_imp.g_varchar2_table(786) := '696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_imp.g_varchar2_table(787) := '6965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69';
wwv_flow_imp.g_varchar2_table(788) := '732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D617279292034707820';
wwv_flow_imp.g_varchar2_table(789) := '3020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_imp.g_varchar2_table(790) := '6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_imp.g_varchar2_table(791) := '656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70';
wwv_flow_imp.g_varchar2_table(792) := '616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542203E20756C207B0D0A';
wwv_flow_imp.g_varchar2_table(793) := '20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E736974696F6E2C20302E31732920656173653B0D0A20206D617267696E3A20302E323572656D3B0D0A7D0D0A4061742D726F6F74202E6A732D6E61';
wwv_flow_imp.g_varchar2_table(794) := '76436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A202020206D617267696E3A20303B0D0A20207D0D0A7D0D0A2E742D547265654E61';
wwv_flow_imp.g_varchar2_table(795) := '762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A20206D617267696E2D626C6F636B2D656E643A20302E323572656D3B0D0A7D0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(796) := '65654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A20206D617267696E2D696E6C696E652D73746172743A20302E323572656D3B0D0A20206D617267696E2D696E6C696E652D656E643A20302E';
wwv_flow_imp.g_varchar2_table(797) := '323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(798) := '2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E';
wwv_flow_imp.g_varchar2_table(799) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A2023356336313639';
wwv_flow_imp.g_varchar2_table(800) := '3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564202B202E61';
wwv_flow_imp.g_varchar2_table(801) := '2D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70';
wwv_flow_imp.g_varchar2_table(802) := '207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D';
wwv_flow_imp.g_varchar2_table(803) := '2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_imp.g_varchar2_table(804) := '566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233565363436632021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C654220';
wwv_flow_imp.g_varchar2_table(805) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A2020626F726465722D7261646975733A20302E323572656D3B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F61642C';
wwv_flow_imp.g_varchar2_table(806) := '0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261';
wwv_flow_imp.g_varchar2_table(807) := '636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661';
wwv_flow_imp.g_varchar2_table(808) := '756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D6963';
wwv_flow_imp.g_varchar2_table(809) := '6F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C6563';
wwv_flow_imp.g_varchar2_table(810) := '7465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(811) := '6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2C0D0A2E';
wwv_flow_imp.g_varchar2_table(812) := '612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D63';
wwv_flow_imp.g_varchar2_table(813) := '6F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2E69732D73656C65637465642C0D0A2E612D4952522D6469616C6F672D2D7375627363726970';
wwv_flow_imp.g_varchar2_table(814) := '74696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(815) := '2D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(816) := '6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F';
wwv_flow_imp.g_varchar2_table(817) := '6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C697374207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D7574';
wwv_flow_imp.g_varchar2_table(818) := '2D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(819) := '742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661';
wwv_flow_imp.g_varchar2_table(820) := '756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(821) := '612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73';
wwv_flow_imp.g_varchar2_table(822) := '656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974';
wwv_flow_imp.g_varchar2_table(823) := '656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(824) := '752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(825) := '656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D202B206C6162656C207B0D0A2020626F782D736861646F773A20696E';
wwv_flow_imp.g_varchar2_table(826) := '73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D72616469';
wwv_flow_imp.g_varchar2_table(827) := '6F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D6469616C6F67496E666F';
wwv_flow_imp.g_varchar2_table(828) := '3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D49472D627574746F6E2E612D4947';
wwv_flow_imp.g_varchar2_table(829) := '2D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20726762612832322C20';
wwv_flow_imp.g_varchar2_table(830) := '32312C2031392C20302E3038293B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578';
wwv_flow_imp.g_varchar2_table(831) := '742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(832) := '4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229203020302030203170783B0D0A7D0D0A2E612D4952522D68';
wwv_flow_imp.g_varchar2_table(833) := '6561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(834) := '2D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(835) := '3B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(836) := '612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D4952522D736F72';
wwv_flow_imp.g_varchar2_table(837) := '745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D7465';
wwv_flow_imp.g_varchar2_table(838) := '78742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(839) := '642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F6C427265616B486561646572207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(840) := '6B67726F756E642D636F6C6F723A20236635663566353B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(841) := '656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D73617665645265706F72742C';
wwv_flow_imp.g_varchar2_table(842) := '0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D73617665645265706F7274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(843) := '732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233343363437383B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(844) := '723A20234441453045343B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263682C0D0A2E612D4952522D7265706F727453756D6D6172';
wwv_flow_imp.g_varchar2_table(845) := '792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(846) := '6C6F723A20233439383038393B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234442453645373B0D0A7D0D0A2E612D49472D7265706F727453756D';
wwv_flow_imp.g_varchar2_table(847) := '6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D4952522D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(848) := '732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233744393136373B0D0A20202D2D612D7265706F72742D636F6E';
wwv_flow_imp.g_varchar2_table(849) := '74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234535453945313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4947';
wwv_flow_imp.g_varchar2_table(850) := '2D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D636F6E7472';
wwv_flow_imp.g_varchar2_table(851) := '6F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63';
wwv_flow_imp.g_varchar2_table(852) := '656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D49472D636F6E74726F6C732D6974';
wwv_flow_imp.g_varchar2_table(853) := '656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F75704279207B0D0A20202D2D612D7265706F72742D636F6E';
wwv_flow_imp.g_varchar2_table(854) := '74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(855) := '636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D6167677265676174652C0D0A2E612D4952522D7265';
wwv_flow_imp.g_varchar2_table(856) := '706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D616767726567617465207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6963';
wwv_flow_imp.g_varchar2_table(857) := '6F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234446453845443B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(858) := '0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D68';
wwv_flow_imp.g_varchar2_table(859) := '6967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(860) := '3A20234431383433333B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234636453644363B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172';
wwv_flow_imp.g_varchar2_table(861) := '792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D63';
wwv_flow_imp.g_varchar2_table(862) := '6F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233443343133383B0D0A20202D2D612D72';
wwv_flow_imp.g_varchar2_table(863) := '65706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234442443944373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D';
wwv_flow_imp.g_varchar2_table(864) := '49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D6368617274207B0D0A20202D2D612D7265';
wwv_flow_imp.g_varchar2_table(865) := '706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233631384241353B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D626163';
wwv_flow_imp.g_varchar2_table(866) := '6B67726F756E642D636F6C6F723A20234446453845443B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7069766F742C0D0A2E612D4952522D7265';
wwv_flow_imp.g_varchar2_table(867) := '706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67';
wwv_flow_imp.g_varchar2_table(868) := '726F756E642D636F6C6F723A20233443343133383B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234442443944373B0D0A7D0D0A2E612D49472D72';
wwv_flow_imp.g_varchar2_table(869) := '65706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D7265706F727453756D6D6172792D697465';
wwv_flow_imp.g_varchar2_table(870) := '6D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D';
wwv_flow_imp.g_varchar2_table(871) := '6261636B67726F756E642D636F6C6F723A20233846384638463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234539453945393B0D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(872) := '2D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D7265706F727453756D6D';
wwv_flow_imp.g_varchar2_table(873) := '6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C61';
wwv_flow_imp.g_varchar2_table(874) := '62656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233846384638463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20234539453945';
wwv_flow_imp.g_varchar2_table(875) := '393B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E612D47562D2D656469744D6F6465202E612D47562D726F';
wwv_flow_imp.g_varchar2_table(876) := '772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A20';
wwv_flow_imp.g_varchar2_table(877) := '20636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D20696E7075743A6E6F74285B747970653D22726164696F';
wwv_flow_imp.g_varchar2_table(878) := '225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2073656C6563745B73697A653D2731275D3A666F637573207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(879) := '642D636F6C6F723A20236666663B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D636869702D6C6162656C2D73706163696E672C2034707829202F203229';
wwv_flow_imp.g_varchar2_table(880) := '3B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A653A20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D293B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(881) := '0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D0A2020666F6E742D7765696768743A20766172282D2D75742D6469616772616D2D69636F6E2D666F6E742D776569676874';
wwv_flow_imp.g_varchar2_table(882) := '2C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E207B0D0A20202D2D612D627574746F6E2D626F726465722D';
wwv_flow_imp.g_varchar2_table(883) := '77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A207472616E737061';
wwv_flow_imp.g_varchar2_table(884) := '72656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E3A686F766572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(885) := '766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D747970652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D626F726465722D636F6C6F722929293B';
wwv_flow_imp.g_varchar2_table(886) := '0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E';
wwv_flow_imp.g_varchar2_table(887) := '3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C6173742D6368696C64202E612D546F6F6C6261722D6974656D3A6C6173742D6368696C64207B0D0A20206D617267696E2D69';
wwv_flow_imp.g_varchar2_table(888) := '6E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A20206D61782D626C6F636B2D73';
wwv_flow_imp.g_varchar2_table(889) := '697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C632832343070';
wwv_flow_imp.g_varchar2_table(890) := '78202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D57';
wwv_flow_imp.g_varchar2_table(891) := '6F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683438302E742D';
wwv_flow_imp.g_varchar2_table(892) := '526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F6F6C62';
wwv_flow_imp.g_varchar2_table(893) := '61722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A65';
wwv_flow_imp.g_varchar2_table(894) := '3A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D68323430202E742D526567696F6E2D626F6479202E612D576F726B666C6F774170';
wwv_flow_imp.g_varchar2_table(895) := '70207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70';
wwv_flow_imp.g_varchar2_table(896) := '616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D';
wwv_flow_imp.g_varchar2_table(897) := '2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68343830202E74';
wwv_flow_imp.g_varchar2_table(898) := '2D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29';
wwv_flow_imp.g_varchar2_table(899) := '202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68363430202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F63';
wwv_flow_imp.g_varchar2_table(900) := '6B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C2031';
wwv_flow_imp.g_varchar2_table(901) := '72656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C6572202E6A6F696E742D7061706572207B0D0A2020696E7365742D626C6F636B2D73746172743A20322E3572656D2021696D';
wwv_flow_imp.g_varchar2_table(902) := '706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172793A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D6F';
wwv_flow_imp.g_varchar2_table(903) := '6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D6272616E643A207661';
wwv_flow_imp.g_varchar2_table(904) := '72282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D64616E6765723A20766172282D2D75742D70616C657474652D64616E6765722D74657874293B0D0A20202D2D6F6A';
wwv_flow_imp.g_varchar2_table(905) := '2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D737563636573733A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(906) := '70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A20312E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D736D3A203172656D3B0D0A20202D2D6F6A2D63';
wwv_flow_imp.g_varchar2_table(907) := '6F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D646976696465722D6D617267696E3A20302E3572656D3B0D0A20202D2D6F6A2D636F';
wwv_flow_imp.g_varchar2_table(908) := '72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D626F726465722D636F6C6F723A20236363636363633B0D';
wwv_flow_imp.g_varchar2_table(909) := '0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F722D686F7665723A20766172282D2D612D6D656E752D666F';
wwv_flow_imp.g_varchar2_table(910) := '63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6F6A2D6C696E6B2D746578742D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(911) := '2D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D74';
wwv_flow_imp.g_varchar2_table(912) := '6578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D746578742D636F6C6F723A20766172282D2D612D6669';
wwv_flow_imp.g_varchar2_table(913) := '656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163652D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B';
wwv_flow_imp.g_varchar2_table(914) := '0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D626F72646572';
wwv_flow_imp.g_varchar2_table(915) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(916) := '2D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D62672D';
wwv_flow_imp.g_varchar2_table(917) := '636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D70726F67726573732D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D627574';
wwv_flow_imp.g_varchar2_table(918) := '746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D626F72646572';
wwv_flow_imp.g_varchar2_table(919) := '2D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70';
wwv_flow_imp.g_varchar2_table(920) := '616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D61727929';
wwv_flow_imp.g_varchar2_table(921) := '3B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D686561';
wwv_flow_imp.g_varchar2_table(922) := '64696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(8922581071241025)
,p_theme_id=>42
,p_file_name=>'8922195740240999.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260713080632Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080632Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
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
 p_id=>wwv_flow_imp.id(8179583966483894)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
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
 p_id=>wwv_flow_imp.id(8179887628483905)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260712081727Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081727Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712081728Z')
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
,p_step_title=>'Al Noor Hospital Management System'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716034937Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8192863210484120)
,p_plug_name=>'Al Noor Hospital Management System'
,p_static_id=>'al-noor-hospital-management-system'
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
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8205115926435813)
,p_plug_name=>'Appointments by Department'
,p_static_id=>'appointments-by-department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713045531Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052737Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8205273192435814)
,p_region_id=>wwv_flow_imp.id(8205115926435813)
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
,p_created_on=>wwv_flow_imp.dz('20260713045531Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045531Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8205399693435815)
,p_chart_id=>wwv_flow_imp.id(8205273192435814)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.department_name AS label,',
'       COUNT(a.appointment_id) AS value',
'FROM departments d',
'LEFT JOIN doctors doc',
'    ON doc.department_id = d.department_id',
'LEFT JOIN appointments a',
'    ON a.doctor_id = doc.doctor_id',
'GROUP BY d.department_name',
'ORDER BY value DESC'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260713045531Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045531Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8205403359435816)
,p_chart_id=>wwv_flow_imp.id(8205273192435814)
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
,p_created_on=>wwv_flow_imp.dz('20260713045531Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045531Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8205570887435817)
,p_chart_id=>wwv_flow_imp.id(8205273192435814)
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
,p_created_on=>wwv_flow_imp.dz('20260713045531Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045531Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8203918098435801)
,p_plug_name=>'Hospital KPIs'
,p_static_id=>'hospital-kpis'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>11
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Total Patients'' AS card_title,',
'       TO_CHAR(COUNT(*)) AS card_value,',
'       ''Registered patients'' AS card_subtitle,',
'       ''fa-users'' AS card_icon,',
'       1 AS display_order',
'FROM patients',
'',
'UNION ALL',
'',
'SELECT ''Today''''s Appointments'',',
'       TO_CHAR(COUNT(*)),',
'       ''Appointments scheduled today'',',
'       ''fa-calendar'',',
'       2',
'FROM appointments',
'WHERE TRUNC(appointment_date) = TRUNC(SYSDATE)',
'',
'UNION ALL',
'',
'SELECT ''Active Doctors'',',
'       TO_CHAR(COUNT(*)),',
'       ''Doctors currently active'',',
'       ''fa-user-md'',',
'       3',
'FROM doctors',
'WHERE status = ''Active''',
'',
'UNION ALL',
'',
'SELECT ''Current Admissions'',',
'       TO_CHAR(COUNT(*)),',
'       ''Patients currently admitted'',',
'       ''fa-bed'',',
'       4',
'FROM admissions',
'WHERE status = ''Admitted''',
'',
'UNION ALL',
'',
'SELECT ''Low Stock Medicines'',',
'       TO_CHAR(COUNT(*)),',
'       ''Medicines requiring reorder'',',
'       ''fa-medkit'',',
'       5',
'FROM medicines',
'WHERE current_stock < reorder_level',
'ORDER BY display_order'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260712110818Z')
,p_updated_on=>wwv_flow_imp.dz('20260716034937Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8204067686435802)
,p_region_id=>wwv_flow_imp.id(8203918098435801)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260712110818Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8206176215435823)
,p_plug_name=>'Medicine Stock Status'
,p_static_id=>'medicine-stock-status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713052737Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052737Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8206263551435824)
,p_region_id=>wwv_flow_imp.id(8206176215435823)
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
,p_created_on=>wwv_flow_imp.dz('20260713052737Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052737Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8206342095435825)
,p_chart_id=>wwv_flow_imp.id(8206263551435824)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'           WHEN current_stock < reorder_level THEN ''Low Stock''',
'           WHEN current_stock = reorder_level THEN ''At Reorder Level''',
'           ELSE ''Sufficient Stock''',
'       END AS label,',
'       COUNT(*) AS value',
'FROM medicines',
'GROUP BY CASE',
'             WHEN current_stock < reorder_level THEN ''Low Stock''',
'             WHEN current_stock = reorder_level THEN ''At Reorder Level''',
'             ELSE ''Sufficient Stock''',
'         END',
'ORDER BY label'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260713052737Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052737Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8205667059435818)
,p_plug_name=>'Patients by Gender'
,p_static_id=>'patients-by-gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713050825Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052737Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8205777207435819)
,p_region_id=>wwv_flow_imp.id(8205667059435818)
,p_chart_type=>'donut'
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
,p_created_on=>wwv_flow_imp.dz('20260713050825Z')
,p_updated_on=>wwv_flow_imp.dz('20260713050825Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8205881193435820)
,p_chart_id=>wwv_flow_imp.id(8205777207435819)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS label,',
'       COUNT(*) AS value',
'FROM patients',
'GROUP BY gender',
'ORDER BY gender'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260713050825Z')
,p_updated_on=>wwv_flow_imp.dz('20260713050825Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714054423Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720121012Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9303619875505902)
,p_plug_name=>'Admission History'
,p_static_id=>'admission-history'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.admission_id,',
'       a.admission_date,',
'       a.discharge_date,',
'       d.full_name AS doctor_name,',
'       r.room_no,',
'       r.room_type,',
'       a.admission_reason,',
'       a.status',
'FROM admissions a',
'JOIN doctors d',
'    ON d.doctor_id = a.doctor_id',
'JOIN rooms r',
'    ON r.room_id = a.room_id',
'WHERE a.patient_id = :P2_PATIENT_ID',
'ORDER BY a.admission_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_PATIENT_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_PATIENT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260720121012Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9303704417505903)
,p_no_data_found_message=>'No admissions found for this patient.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9303704417505903
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9303953078505905)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9303849380505904)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Admission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9304412108505910)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9304026865505906)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9304173051505907)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9304210375505908)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9304364878505909)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9304548240505911)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9326909197662964)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:ADMISSION_DATE:DISCHARGE_DATE:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260714062623Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062623Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8972507766343132)
,p_plug_name=>'Appointment History'
,p_static_id=>'appointment-history'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_id,',
'       d.full_name AS doctor_name,',
'       dep.department_name,',
'       sp.specialty_name,',
'       a.appointment_date,',
'       a.appointment_time,',
'       ast.status_name AS appointment_status,',
'       a.reason_for_visit',
'FROM appointments a',
'JOIN doctors d',
'    ON d.doctor_id = a.doctor_id',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'JOIN doctor_specialties sp',
'    ON sp.specialty_id = d.specialty_id',
'JOIN appointment_statuses ast',
'    ON ast.status_id = a.status_id',
'WHERE a.patient_id = :P2_PATIENT_ID',
'ORDER BY a.appointment_date DESC,',
'         a.appointment_time DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_PATIENT_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_PATIENT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260720121003Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8972631240343133)
,p_no_data_found_message=>'No appointments found for this patient.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8972631240343133
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973119259343138)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8972793305343134)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973304460343140)
,p_db_column_name=>'APPOINTMENT_STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Appointment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973211787343139)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8972913672343136)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8972884828343135)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973405392343141)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973040719343137)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060108Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9326029846662932)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:DOCTOR_NAME:DEPARTMENT_NAME:SPECIALTY_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:APPOINTMENT_STATUS:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260714062623Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062623Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9297400997410988)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714054424Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054424Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8971162570343118)
,p_plug_name=>'Patient Information'
,p_static_id=>'patient-information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>&P2_FULL_NAME.</h2>',
'',
'<p>',
'<strong>Civil ID:</strong> &P2_CIVIL_ID.',
'&nbsp;&nbsp; | &nbsp;&nbsp;',
'<strong>Blood Group:</strong> &P2_BLOOD_GROUP.',
'&nbsp;&nbsp; | &nbsp;&nbsp;',
'<strong>Age:</strong> &P2_AGE.',
'</p>'))
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_PATIENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8970979305343116)
,p_plug_name=>'Patient Selection'
,p_static_id=>'patient-selection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055319Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8973555359343142)
,p_plug_name=>'Visit History'
,p_static_id=>'visit-history'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pv.visit_id,',
'       pv.visit_date,',
'       d.full_name AS doctor_name,',
'       dep.department_name,',
'       pv.symptoms,',
'       pv.diagnosis,',
'       pv.notes,',
'       pv.follow_up_date',
'FROM patient_visits pv',
'JOIN doctors d',
'    ON d.doctor_id = pv.doctor_id',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'WHERE pv.patient_id = :P2_PATIENT_ID',
'ORDER BY pv.visit_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_PATIENT_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_PATIENT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260720120942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8973688715343143)
,p_no_data_found_message=>'No visits found for this patient.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8973688715343143
,p_created_on=>wwv_flow_imp.dz('20260714060108Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974007219343147)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974290275343149)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973989220343146)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9303569592505901)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974379989343150)
,p_db_column_name=>'NOTES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8974129685343148)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973843844343145)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8973700938343144)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714060109Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9326472171662960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:VISIT_DATE:DOCTOR_NAME:DEPARTMENT_NAME:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260714062623Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062623Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8972088329343127)
,p_name=>'P2_ADDRESS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Address'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'3'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971616936343123)
,p_name=>'P2_AGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Age'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'1'
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971945906343126)
,p_name=>'P2_BLOOD_GROUP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Blood Group'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'2'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971369194343120)
,p_name=>'P2_CIVIL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Civil Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'1'
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971500859343122)
,p_name=>'P2_DATE_OF_BIRTH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Date Of Birth'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'2'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971888224343125)
,p_name=>'P2_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Email'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'2'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8972157421343128)
,p_name=>'P2_EMERGENCY_CONTACT_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Emergency Contact Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'4'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8972218168343129)
,p_name=>'P2_EMERGENCY_CONTACT_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Emergency Contact No'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'4'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971287319343119)
,p_name=>'P2_FULL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Full Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'1'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971487262343121)
,p_name=>'P2_GENDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Gender'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'1'
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971766210343124)
,p_name=>'P2_MOBILE_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8971162570343118)
,p_prompt=>'Mobile No'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'2'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714061942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8971025699343117)
,p_name=>'P2_PATIENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8970979305343116)
,p_prompt=>'Select Patient'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name || '' - '' || civil_id AS display_value,',
'       patient_id AS return_value',
'FROM patients',
'ORDER BY full_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Patient -'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714055319Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055319Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8972376962343130)
,p_name=>'Load Patient Profile'
,p_static_id=>'load-patient-profile'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_PATIENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260714055752Z')
,p_updated_on=>wwv_flow_imp.dz('20260720120942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8972460854343131)
,p_event_id=>wwv_flow_imp.id(8972376962343130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_FULL_NAME,P2_CIVIL_ID,P2_GENDER,P2_DATE_OF_BIRTH,P2_AGE,P2_MOBILE_NO,P2_EMAIL,P2_BLOOD_GROUP,P2_ADDRESS,P2_EMERGENCY_CONTACT_NAME,P2_EMERGENCY_CONTACT_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P2_PATIENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT full_name,',
    '       civil_id,',
    '       gender,',
    '       TO_CHAR(date_of_birth, ''DD-MON-YYYY''),',
    '       TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), date_of_birth) / 12),',
    '       mobile_no,',
    '       email,',
    '       blood_group,',
    '       address,',
    '       emergency_contact_name,',
    '       emergency_contact_no',
    'FROM patients',
    'WHERE patient_id = :P2_PATIENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260714055752Z')
,p_updated_on=>wwv_flow_imp.dz('20260720120942Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9304619830505912)
,p_event_id=>wwv_flow_imp.id(8972376962343130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Admission History'
,p_static_id=>'refresh-admission-history'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9303619875505902)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714060427Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9304867017505914)
,p_event_id=>wwv_flow_imp.id(8972376962343130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh appointment History'
,p_static_id=>'refresh-appointment-history'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8972507766343132)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714060427Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9304719008505913)
,p_event_id=>wwv_flow_imp.id(8972376962343130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Visit History'
,p_static_id=>'refresh-visit-history'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8973555359343142)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714060427Z')
,p_updated_on=>wwv_flow_imp.dz('20260714060427Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Visit and Prescription'
,p_alias=>'VISIT-AND-PRESCRIPTION'
,p_step_title=>'Visit and Prescription'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260714074928Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720111243Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9332062825161543)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714074929Z')
,p_updated_on=>wwv_flow_imp.dz('20260714074929Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9306555158505931)
,p_plug_name=>'Prescription'
,p_static_id=>'prescription'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714102302Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102302Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9307393270505939)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prescription_item_id,',
'       prescription_id,',
'       medicine_id,',
'       dosage,',
'       frequency,',
'       duration_days,',
'       instructions',
'FROM prescription_items',
'WHERE prescription_id = :P7_PRESCRIPTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P3_PRESCRIPTION_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P3_PRESCRIPTION_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_on=>wwv_flow_imp.dz('20260720111243Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9308222637505948)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9308339747505949)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9307892451505944)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_label=>'500mg'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_updated_on=>wwv_flow_imp.dz('20260714105831Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9308045071505946)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
,p_label=>'Take after food'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
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
,p_updated_on=>wwv_flow_imp.dz('20260714105831Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9307967791505945)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency'
,p_label=>'Twice daily'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_updated_on=>wwv_flow_imp.dz('20260714105831Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9308100047505947)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9307710067505943)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(8197260000526473)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Medicine -'
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
,p_updated_on=>wwv_flow_imp.dz('20260720111243Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9307634121505942)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P3_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260714121428Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9307504818505941)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Item Id'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260714105831Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9307481026505940)
,p_internal_uid=>9307481026505940
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
,p_updated_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9341716443228785)
,p_interactive_grid_id=>wwv_flow_imp.id(9307481026505940)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9341886156228787)
,p_report_id=>wwv_flow_imp.id(9341716443228785)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9342320788228793)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9307504818505941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9343251500228796)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9307634121505942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9344155377228798)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9307710067505943)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9345064958228800)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9307892451505944)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9345989728228802)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9307967791505945)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9346871265228804)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9308045071505946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9347755198228806)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9308100047505947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9348602197228808)
,p_view_id=>wwv_flow_imp.id(9341886156228787)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9308222637505948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9305388983505919)
,p_plug_name=>'Visit Information'
,p_static_id=>'visit-information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9305199506505917)
,p_plug_name=>'Visit Selection'
,p_static_id=>'visit-selection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081126Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9306855674505934)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9307393270505939)
,p_button_name=>'SAVE_PRESCRIPTION'
,p_static_id=>'save-prescription'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Save Prescription'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260714102729Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140544Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305800623505924)
,p_name=>'P3_DIAGNOSIS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
,p_prompt=>'Diagnosis'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305522501505921)
,p_name=>'P3_DOCTOR_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
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
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9306085683505926)
,p_name=>'P3_FOLLOW_UP_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
,p_prompt=>'Follow Up Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305435587505920)
,p_name=>'P3_PATIENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
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
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9306666695505932)
,p_name=>'P3_PRESCRIPTION_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9306555158505931)
,p_prompt=>'Prescription Date'
,p_format_mask=>'DD-MON-YYYY'
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
,p_created_on=>wwv_flow_imp.dz('20260714102302Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102302Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9306420057505930)
,p_name=>'P3_PRESCRIPTION_ID'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714102302Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102302Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9306767805505933)
,p_name=>'P3_PRESCRIPTION_NOTES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9306555158505931)
,p_prompt=>'Prescription Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_row_css_classes=>'3'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714102302Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305790992505923)
,p_name=>'P3_SYMPTOMS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
,p_prompt=>'Symptoms'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305689958505922)
,p_name=>'P3_VISIT_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
,p_prompt=>'Visit Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305219370505918)
,p_name=>'P3_VISIT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9305199506505917)
,p_prompt=>'Select Visit'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ''Visit #'' || pv.visit_id',
'    || '' - '' || p.full_name',
'    || '' - '' || TO_CHAR(pv.visit_date, ''DD-MON-YYYY'')',
'        AS display_value,',
'    pv.visit_id AS return_value',
'FROM patient_visits pv',
'JOIN patients p',
'    ON p.patient_id = pv.patient_id',
'ORDER BY pv.visit_date DESC,',
'         pv.visit_id DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Patient Visit -'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081126Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9305958637505925)
,p_name=>'P3_VISIT_NOTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9305388983505919)
,p_prompt=>'Visit Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260714081726Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9352177220438201)
,p_validation_name=>'Prescription Required Before Items'
,p_static_id=>'prescription-required-before-items'
,p_validation_sequence=>10
,p_validation=>'P3_PRESCRIPTION_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please save the prescription before adding prescription items'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714121428Z')
,p_updated_on=>wwv_flow_imp.dz('20260714121428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9306172626505927)
,p_name=>'Load Visit Details'
,p_static_id=>'load-visit-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_VISIT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062317Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9306913167505935)
,p_event_id=>wwv_flow_imp.id(9306172626505927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Load Visit Details'
,p_static_id=>'load-visit-details'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P3_PRESCRIPTION_ID,P3_PRESCRIPTION_DATE,P3_PRESCRIPTION_NOTES',
  'items_to_submit', 'P3_VISIT_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'BEGIN',
    '    SELECT prescription_id,',
    '           prescription_date,',
    '           notes',
    '    INTO   :P3_PRESCRIPTION_ID,',
    '           :P3_PRESCRIPTION_DATE,',
    '           :P3_PRESCRIPTION_NOTES',
    '    FROM prescriptions',
    '    WHERE visit_id = :P3_VISIT_ID;',
    '',
    'EXCEPTION',
    '    WHEN NO_DATA_FOUND THEN',
    '        :P3_PRESCRIPTION_ID := NULL;',
    '        :P3_PRESCRIPTION_DATE := SYSDATE;',
    '        :P3_PRESCRIPTION_NOTES := NULL;',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260714104019Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9352575771438205)
,p_event_id=>wwv_flow_imp.id(9306172626505927)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9306555158505931)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714121428Z')
,p_updated_on=>wwv_flow_imp.dz('20260714121428Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9306249607505928)
,p_event_id=>wwv_flow_imp.id(9306172626505927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PATIENT_NAME,P3_DOCTOR_NAME,P3_VISIT_DATE,P3_SYMPTOMS,P3_DIAGNOSIS,P3_VISIT_NOTES,P3_FOLLOW_UP_DATE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P3_VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT p.full_name,',
    '       d.full_name,',
    '       TO_CHAR(pv.visit_date, ''DD-MON-YYYY''),',
    '       pv.symptoms,',
    '       pv.diagnosis,',
    '       pv.notes,',
    '       TO_CHAR(pv.follow_up_date, ''DD-MON-YYYY'')',
    'FROM patient_visits pv',
    'JOIN patients p',
    '    ON p.patient_id = pv.patient_id',
    'JOIN doctors d',
    '    ON d.doctor_id = pv.doctor_id',
    'WHERE pv.visit_id = :P3_VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260714081726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062317Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9307099477505936)
,p_name=>'Save Prescription'
,p_static_id=>'save-prescription'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9306855674505934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260714104431Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9307194672505937)
,p_event_id=>wwv_flow_imp.id(9307099477505936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P3_PRESCRIPTION_ID',
  'items_to_submit', 'P3_VISIT_ID,P3_PRESCRIPTION_ID,P3_PRESCRIPTION_DATE,P3_PRESCRIPTION_NOTES',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '    l_patient_id  patients.patient_id%TYPE;',
    '    l_doctor_id   doctors.doctor_id%TYPE;',
    'BEGIN',
    '    IF :P7_VISIT_ID IS NULL THEN',
    '        RAISE_APPLICATION_ERROR(',
    '            -20001,',
    '            ''Please select a patient visit first.''',
    '        );',
    '    END IF;',
    '',
    '    SELECT patient_id,',
    '           doctor_id',
    '    INTO   l_patient_id,',
    '           l_doctor_id',
    '    FROM patient_visits',
    '    WHERE visit_id = :P7_VISIT_ID;',
    '',
    '    IF :P7_PRESCRIPTION_ID IS NULL THEN',
    '',
    '        INSERT INTO prescriptions (',
    '            visit_id,',
    '            patient_id,',
    '            doctor_id,',
    '            prescription_date,',
    '            notes',
    '        )',
    '        VALUES (',
    '            :P7_VISIT_ID,',
    '            l_patient_id,',
    '            l_doctor_id,',
    '            NVL(:P7_PRESCRIPTION_DATE, SYSDATE),',
    '            :P7_PRESCRIPTION_NOTES',
    '        )',
    '        RETURNING prescription_id',
    '        INTO :P7_PRESCRIPTION_ID;',
    '',
    '    ELSE',
    '',
    '        UPDATE prescriptions',
    '        SET prescription_date = NVL(',
    '                :P7_PRESCRIPTION_DATE,',
    '                SYSDATE',
    '            ),',
    '            notes = :P7_PRESCRIPTION_NOTES',
    '        WHERE prescription_id = :P7_PRESCRIPTION_ID;',
    '',
    '    END IF;',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260714104431Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9307202525505938)
,p_event_id=>wwv_flow_imp.id(9307099477505936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9332062825161543)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714104431Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9308422767505950)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9307393270505939)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9308422767505950
,p_created_on=>wwv_flow_imp.dz('20260714104720Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104720Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Admissions'
,p_alias=>'ADMISSIONS'
,p_step_title=>'Admissions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715115411Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9749365055490880)
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
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115411Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9749410889490880)
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
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP:P10_ADMISSION_ID:\#ADMISSION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9749410889490880
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115411Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9752298497490900)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9750653624490891)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admission ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9753010265490903)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9752653486490901)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9751401052490897)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8952565166107094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9751067767490895)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8951993270107064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9751878232490899)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9740374288490713)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9753413799490904)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9758229008687655)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_ID:DOCTOR_ID:ROOM_ID:ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715115411Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115411Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9755556602490911)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9753866055490906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9749365055490880)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9754219732490906)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9749365055490880)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9754690200490908)
,p_event_id=>wwv_flow_imp.id(9754219732490906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9749365055490880)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715112124Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112124Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715045434Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715104847Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9353822860438218)
,p_plug_name=>'Appointment Summary'
,p_static_id=>'appointment-summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715052232Z')
,p_updated_on=>wwv_flow_imp.dz('20260715052232Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9498337156169757)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715045435Z')
,p_updated_on=>wwv_flow_imp.dz('20260715045435Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9354404432438224)
,p_plug_name=>'Doctor Summary'
,p_static_id=>'doctor-summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715060933Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060934Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9352957578438209)
,p_plug_name=>'Patient Summary'
,p_static_id=>'patient-summary'
,p_title=>'Patient Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045832Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050752Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9356400506438244)
,p_plug_name=>'Prescription'
,p_static_id=>'prescription'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715081930Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081930Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9713378931989803)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    prescription_item_id,',
'    prescription_id,',
'    medicine_id,',
'    dosage,',
'    frequency,',
'    duration_days,',
'    instructions',
'FROM prescription_items',
'WHERE prescription_id = :P5_PRESCRIPTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_PRESCRIPTION_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260715101346Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9714290859989812)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715101347Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9714354365989813)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715101347Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9713815177989808)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_label=>'500mg'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_updated_on=>wwv_flow_imp.dz('20260715101653Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9714017932989810)
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
  'min_value', '1',
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
,p_updated_on=>wwv_flow_imp.dz('20260715101727Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9713947471989809)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency'
,p_label=>'Twice daily'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_updated_on=>wwv_flow_imp.dz('20260715101709Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9714199109989811)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_label=>'Take after food'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715101746Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9713716413989807)
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
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT medicine_name AS display_value,',
'       medicine_id   AS return_value',
'FROM medicines',
'WHERE status = ''Active''',
'ORDER BY medicine_name'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_updated_on=>wwv_flow_imp.dz('20260715101532Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9713624266989806)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P5_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715101531Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9713516430989805)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Item Id'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715101346Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9713463132989804)
,p_internal_uid=>9713463132989804
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
,p_updated_on=>wwv_flow_imp.dz('20260715101347Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9720363258085094)
,p_interactive_grid_id=>wwv_flow_imp.id(9713463132989804)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715101347Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9720449253085095)
,p_report_id=>wwv_flow_imp.id(9720363258085094)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9720951373085102)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9713516430989805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9721750200085105)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9713624266989806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9722620380085107)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9713716413989807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9723592255085109)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9713815177989808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9724442470085111)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9713947471989809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9725338076085113)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9714017932989810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9726274250085115)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9714199109989811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9727173509085116)
,p_view_id=>wwv_flow_imp.id(9720449253085095)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9714290859989812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9714792895989817)
,p_plug_name=>'Previous Visits'
,p_static_id=>'previous-visits'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    pv.visit_id,',
'    pv.visit_date,',
'    d.full_name AS doctor_name,',
'    dep.department_name,',
'    pv.symptoms,',
'    pv.diagnosis,',
'    pv.notes,',
'    pv.follow_up_date',
'FROM patient_visits pv',
'JOIN doctors d',
'    ON d.doctor_id = pv.doctor_id',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'WHERE pv.patient_id = :P5_PATIENT_ID',
'  AND pv.visit_id <> :P5_VISIT_ID',
'ORDER BY pv.visit_date DESC,',
'         pv.visit_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_PATIENT_ID,P5_VISIT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104847Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9714880396989818)
,p_no_data_found_message=>'No previous visits found for this patient.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>9714880396989818
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104847Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715246712989822)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715403760989824)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715166236989821)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715699812989826)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Follow-Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103642Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715519115989825)
,p_db_column_name=>'NOTES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715313845989823)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715076791989820)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103632Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9714963644989819)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9737390791295179)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:VISIT_DATE:DOCTOR_NAME:DEPARTMENT_NAME:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715104847Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104847Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9354969407438229)
,p_plug_name=>'Visit Details'
,p_static_id=>'visit-details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9352643974438206)
,p_plug_name=>'Visit Selection'
,p_static_id=>'visit-selection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045832Z')
,p_updated_on=>wwv_flow_imp.dz('20260715045832Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9356935433438249)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9356400506438244)
,p_button_name=>'SAVE_PRESCRIPTION'
,p_static_id=>'save-prescription'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Save Prescription'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715095702Z')
,p_updated_on=>wwv_flow_imp.dz('20260715095955Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9355690346438236)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9354969407438229)
,p_button_name=>'SAVE_VISIT_DETAILS'
,p_static_id=>'save-visit-details'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Visit Details'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715073045Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073545Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353294308438212)
,p_name=>'P5_AGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9352957578438209)
,p_prompt=>'Age'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045949Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050437Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353970339438219)
,p_name=>'P5_APPOINTMENT_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9353822860438218)
,p_prompt=>'Appointment Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715052232Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9354052818438220)
,p_name=>'P5_APPOINTMENT_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9353822860438218)
,p_prompt=>'Appointment Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715052232Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9354360089438223)
,p_name=>'P5_APPOINTMENT_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9353822860438218)
,p_prompt=>'Appointment Time'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053026Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053026Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353477399438214)
,p_name=>'P5_BLOOD_GROUP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9352957578438209)
,p_prompt=>'Blood Group'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045949Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050437Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353143993438211)
,p_name=>'P5_CIVIL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9352957578438209)
,p_prompt=>'Civil Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045832Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050437Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9354616339438226)
,p_name=>'P5_DOCTOR_DEPARTMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9354404432438224)
,p_prompt=>'Doctor Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715060934Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9354535273438225)
,p_name=>'P5_DOCTOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9354404432438224)
,p_prompt=>'Doctor Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715060934Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9354768243438227)
,p_name=>'P5_DOCTOR_SPECIALTY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9354404432438224)
,p_prompt=>'Doctor Specialty'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715060934Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9355125606438231)
,p_name=>'P5_EDIT_DIAGNOSIS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9354969407438229)
,p_prompt=>'Diagnosis'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_row_css_classes=>'3'
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063925Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074237Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9355458791438234)
,p_name=>'P5_EDIT_FOLLOW_UP_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9354969407438229)
,p_prompt=>'Follow-Up Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072415Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074237Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9355303402438233)
,p_name=>'P5_EDIT_NOTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9354969407438229)
,p_prompt=>'Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_row_css_classes=>'4'
,p_colspan=>8
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072309Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074237Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9355089717438230)
,p_name=>'P5_EDIT_SYMPTOMS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9354969407438229)
,p_prompt=>'Symptoms'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_row_css_classes=>'3'
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715063801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074237Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353326297438213)
,p_name=>'P5_GENDER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9352957578438209)
,p_prompt=>'Gender'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045949Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050437Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353568145438215)
,p_name=>'P5_MOBILE_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9352957578438209)
,p_prompt=>'Mobile No'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045949Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050437Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9352827883438208)
,p_name=>'P5_PATIENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9352643974438206)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045832Z')
,p_updated_on=>wwv_flow_imp.dz('20260715045832Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9353032221438210)
,p_name=>'P5_PATIENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9352957578438209)
,p_prompt=>'Patient Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045832Z')
,p_updated_on=>wwv_flow_imp.dz('20260715050436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9356529826438245)
,p_name=>'P5_PRESCRIPTION_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9356400506438244)
,p_prompt=>'Prescription Date'
,p_format_mask=>'DD-MON-YYYY'
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
,p_created_on=>wwv_flow_imp.dz('20260715081930Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081930Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9356306041438243)
,p_name=>'P5_PRESCRIPTION_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9354969407438229)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715081930Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081930Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9356690510438246)
,p_name=>'P5_PRESCRIPTION_NOTES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9356400506438244)
,p_prompt=>'Prescription Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_row_css_classes=>'3'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715081930Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081930Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9354198394438221)
,p_name=>'P5_REASON_FOR_VISIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9353822860438218)
,p_prompt=>'Reason For Visit'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>12
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715052232Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9352760736438207)
,p_name=>'P5_VISIT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9352643974438206)
,p_prompt=>'Select Patient Visit'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    p.full_name',
'    || '' - Visit #''',
'    || pv.visit_id',
'    || '' - ''',
'    || TO_CHAR(pv.visit_date, ''DD-MON-YYYY'')',
'        AS display_value,',
'    pv.visit_id AS return_value',
'FROM patient_visits pv',
'JOIN patients p',
'    ON p.patient_id = pv.patient_id',
'ORDER BY pv.visit_date DESC,',
'         pv.visit_id DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Patient Visit -'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715045832Z')
,p_updated_on=>wwv_flow_imp.dz('20260715045832Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9356178017438241)
,p_validation_name=>'Validate Follow-up Date'
,p_static_id=>'validate-follow-up-date'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_visit_date DATE;',
'BEGIN',
'    IF :P5_EDIT_FOLLOW_UP_DATE IS NULL THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'    SELECT TRUNC(visit_date)',
'    INTO l_visit_date',
'    FROM patient_visits',
'    WHERE visit_id = :P5_VISIT_ID;',
'',
'    RETURN',
'        TRUNC(',
'            TO_DATE(',
'                :P5_EDIT_FOLLOW_UP_DATE,',
'                ''DD-MON-YYYY'',',
'                ''NLS_DATE_LANGUAGE=ENGLISH''',
'            )',
'        ) >= l_visit_date;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Follow-up date cannot be before the visit date.'
,p_associated_item=>wwv_flow_imp.id(9355458791438234)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715080022Z')
,p_updated_on=>wwv_flow_imp.dz('20260715080022Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9353678151438216)
,p_name=>'Load Clinical Visit Workspace'
,p_static_id=>'load-clinical-visit-workspace'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_VISIT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260715050226Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9356750481438247)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'set Value - Load Prescription'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P5_PRESCRIPTION_ID,P5_PRESCRIPTION_DATE,P5_PRESCRIPTION_NOTES',
  'items_to_submit', 'P5_VISIT_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'BEGIN',
    '    SELECT prescription_id,',
    '           prescription_date,',
    '           notes',
    '    INTO   :P5_PRESCRIPTION_ID,',
    '           :P5_PRESCRIPTION_DATE,',
    '           :P5_PRESCRIPTION_NOTES',
    '    FROM prescriptions',
    '    WHERE visit_id = :P5_VISIT_ID;',
    '',
    'EXCEPTION',
    '    WHEN NO_DATA_FOUND THEN',
    '        :P5_PRESCRIPTION_ID := NULL;',
    '        :P5_PRESCRIPTION_DATE := SYSDATE;',
    '        :P5_PRESCRIPTION_NOTES := NULL;',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715081930Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9714592546989815)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Prescription Items'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9713378931989803)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715101849Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9353775319438217)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'set Value - Patient Summary'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PATIENT_ID,P5_PATIENT_NAME,P5_CIVIL_ID,P5_AGE,P5_GENDER,P5_BLOOD_GROUP,P5_MOBILE_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P5_VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT',
    '    p.patient_id,',
    '    p.full_name,',
    '    p.civil_id,',
    '    TRUNC(',
    '        MONTHS_BETWEEN(',
    '            TRUNC(SYSDATE),',
    '            p.date_of_birth',
    '        ) / 12',
    '    ),',
    '    p.gender,',
    '    p.blood_group,',
    '    p.mobile_no',
    'FROM patient_visits pv',
    'JOIN patients p',
    '    ON p.patient_id = pv.patient_id',
    'WHERE pv.visit_id = :P5_VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715050226Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9715709158989827)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Previous Visits'
,p_static_id=>'refresh-previous-visits'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9714792895989817)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715103525Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9354284687438222)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>' Set Value - Appointment Summary'
,p_static_id=>'set-value-appointment-summary'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_APPOINTMENT_DATE,P5_APPOINTMENT_TIME,P5_APPOINTMENT_STATUS,P5_REASON_FOR_VISIT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P5_VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT',
    '    TO_CHAR(a.appointment_date, ''DD-MON-YYYY''),',
    '    a.appointment_time,',
    '    ast.status_name,',
    '    a.reason_for_visit',
    'FROM patient_visits pv',
    'JOIN appointments a',
    '    ON a.appointment_id = pv.appointment_id',
    'JOIN appointment_statuses ast',
    '    ON ast.status_id = a.status_id',
    'WHERE pv.visit_id = :P5_VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715053027Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9354854893438228)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'set Value - Load Doctor Summary'
,p_static_id=>'set-value-load-doctor-summary'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_DOCTOR_NAME,P5_DOCTOR_DEPARTMENT,P5_DOCTOR_SPECIALTY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P5_VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT',
    '    d.full_name,',
    '    dep.department_name,',
    '    sp.specialty_name',
    'FROM patient_visits pv',
    'JOIN doctors d',
    '    ON d.doctor_id = pv.doctor_id',
    'JOIN departments dep',
    '    ON dep.department_id = d.department_id',
    'JOIN doctor_specialties sp',
    '    ON sp.specialty_id = d.specialty_id',
    'WHERE pv.visit_id = :P5_VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715060934Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060934Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9355503238438235)
,p_event_id=>wwv_flow_imp.id(9353678151438216)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'set Value -Load Visit Details Form'
,p_static_id=>'set-value-load-visit-details-form'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_EDIT_SYMPTOMS,P5_EDIT_DIAGNOSIS,P5_EDIT_NOTES,P5_EDIT_FOLLOW_UP_DATE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P5_VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT',
    '    pv.symptoms,',
    '    pv.diagnosis,',
    '    pv.notes,',
    '    TO_CHAR(pv.follow_up_date, ''DD-MON-YYYY'')',
    'FROM patient_visits pv',
    'WHERE pv.visit_id = :P5_VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715072814Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072814Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9357068488438250)
,p_name=>'Save Prescription'
,p_static_id=>'save-prescription'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9356935433438249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715095955Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101947Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9713129021989801)
,p_event_id=>wwv_flow_imp.id(9357068488438250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P5_PRESCRIPTION_ID',
  'items_to_submit', 'P5_VISIT_ID,P5_PRESCRIPTION_ID,P5_PRESCRIPTION_DATE,P5_PRESCRIPTION_NOTES',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '    l_patient_id  patients.patient_id%TYPE;',
    '    l_doctor_id   doctors.doctor_id%TYPE;',
    'BEGIN',
    '    IF :P5_VISIT_ID IS NULL THEN',
    '        RAISE_APPLICATION_ERROR(',
    '            -20001,',
    '            ''Please select a patient visit first.''',
    '        );',
    '    END IF;',
    '',
    '    SELECT patient_id,',
    '           doctor_id',
    '    INTO   l_patient_id,',
    '           l_doctor_id',
    '    FROM patient_visits',
    '    WHERE visit_id = :P5_VISIT_ID;',
    '',
    '    IF :P5_PRESCRIPTION_ID IS NULL THEN',
    '',
    '        INSERT INTO prescriptions (',
    '            visit_id,',
    '            patient_id,',
    '            doctor_id,',
    '            prescription_date,',
    '            notes',
    '        )',
    '        VALUES (',
    '            :P5_VISIT_ID,',
    '            l_patient_id,',
    '            l_doctor_id,',
    '            NVL(',
    '                TO_DATE(',
    '                    :P5_PRESCRIPTION_DATE,',
    '                    ''DD-MON-YYYY'',',
    '                    ''NLS_DATE_LANGUAGE=ENGLISH''',
    '                ),',
    '                SYSDATE',
    '            ),',
    '            :P5_PRESCRIPTION_NOTES',
    '        )',
    '        RETURNING prescription_id',
    '        INTO :P5_PRESCRIPTION_ID;',
    '',
    '    ELSE',
    '',
    '        UPDATE prescriptions',
    '        SET prescription_date =',
    '                TO_DATE(',
    '                    :P5_PRESCRIPTION_DATE,',
    '                    ''DD-MON-YYYY'',',
    '                    ''NLS_DATE_LANGUAGE=ENGLISH''',
    '                ),',
    '            notes = :P5_PRESCRIPTION_NOTES',
    '        WHERE prescription_id = :P5_PRESCRIPTION_ID;',
    '',
    '    END IF;',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715095955Z')
,p_updated_on=>wwv_flow_imp.dz('20260715095955Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9713289179989802)
,p_event_id=>wwv_flow_imp.id(9357068488438250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.message.showPageSuccess("Prescription saved successfully.");')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715095955Z')
,p_updated_on=>wwv_flow_imp.dz('20260715095955Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9714657920989816)
,p_event_id=>wwv_flow_imp.id(9357068488438250)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9713378931989803)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715101947Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101947Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9355841110438238)
,p_name=>'Save Visit Details'
,p_static_id=>'save-visit-details'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9355690346438236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715073545Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075435Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9355999538438239)
,p_event_id=>wwv_flow_imp.id(9355841110438238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_submit', 'P5_VISIT_ID,P5_EDIT_SYMPTOMS,P5_EDIT_DIAGNOSIS,P5_EDIT_NOTES,P5_EDIT_FOLLOW_UP_DATE',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '    l_visit_date      DATE;',
    '    l_follow_up_date  DATE;',
    'BEGIN',
    '    -- Make sure a visit is selected',
    '    IF :P5_VISIT_ID IS NULL THEN',
    '        RAISE_APPLICATION_ERROR(',
    '            -20001,',
    '            ''Please select a patient visit first.''',
    '        );',
    '    END IF;',
    '',
    '    -- Get the selected visit date',
    '    SELECT TRUNC(visit_date)',
    '    INTO l_visit_date',
    '    FROM patient_visits',
    '    WHERE visit_id = :P5_VISIT_ID;',
    '',
    '    -- Convert the APEX Follow-Up Date item to Oracle DATE',
    '    IF :P5_EDIT_FOLLOW_UP_DATE IS NOT NULL THEN',
    '        l_follow_up_date :=',
    '            TRUNC(',
    '                TO_DATE(',
    '                    :P5_EDIT_FOLLOW_UP_DATE,',
    '                    ''DD-MON-YYYY'',',
    '                    ''NLS_DATE_LANGUAGE=ENGLISH''',
    '                )',
    '            );',
    '    ELSE',
    '        l_follow_up_date := NULL;',
    '    END IF;',
    '',
    '    -- VALIDATION',
    '    IF l_follow_up_date IS NOT NULL',
    '       AND l_follow_up_date < l_visit_date',
    '    THEN',
    '        RAISE_APPLICATION_ERROR(',
    '            -20002,',
    '            ''Follow-up date cannot be before the visit date.''',
    '        );',
    '    END IF;',
    '',
    '    -- Update only if validation passes',
    '    UPDATE patient_visits',
    '    SET symptoms       = :P5_EDIT_SYMPTOMS,',
    '        diagnosis      = :P5_EDIT_DIAGNOSIS,',
    '        notes          = :P5_EDIT_NOTES,',
    '        follow_up_date = l_follow_up_date',
    '    WHERE visit_id = :P5_VISIT_ID;',
    'END;')),
  'show_processing', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715073545Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075435Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9356056688438240)
,p_event_id=>wwv_flow_imp.id(9355841110438238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.message.showPageSuccess("Visit details saved successfully.");')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715074237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074237Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9714486201989814)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9713378931989803)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9714486201989814
,p_created_on=>wwv_flow_imp.dz('20260715101346Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101346Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Patients'
,p_alias=>'PATIENTS'
,p_step_title=>'Patients'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720105808Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8719884776394590)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8712057941394543)
,p_plug_name=>'Patients'
,p_static_id=>'patients'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT patient_id,',
'       civil_id,',
'       full_name,',
'       gender,',
'       date_of_birth,',
'       TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), date_of_birth) / 12) AS age,',
'       mobile_no,',
'       email,',
'       blood_group,',
'       address,',
'       emergency_contact_name,',
'       emergency_contact_no,',
'       created_at',
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
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260720105808Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8712134334394543)
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
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_internal_uid=>8712134334394543
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260720105808Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8716515583394577)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8207556569435837)
,p_db_column_name=>'AGE'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060721Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060721Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8716151455394575)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8713744654394565)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8717734241394582)
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
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8714934269394570)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8715732463394574)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8716980014394579)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8717350011394580)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8714191775394567)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8714515428394569)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8715320917394572)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8713396647394557)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8899124972831391)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT:AGE'
,p_created_on=>wwv_flow_imp.dz('20260713065816Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065816Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8718164916394584)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8712057941394543)
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
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8207893443435840)
,p_validation_name=>'Civil ID uniqueness'
,p_static_id=>'civil-id-uniqueness'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM patients',
'WHERE UPPER(civil_id) = UPPER(:P3_CIVIL_ID)',
'  AND patient_id <> NVL(:P3_PATIENT_ID, -1)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This Civil ID is already registered.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713065329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8207618109435838)
,p_validation_name=>'Date of birth cannot be in the future'
,p_static_id=>'date-of-birth-cannot-be-in-the-future'
,p_validation_sequence=>10
,p_validation=>':P3_DATE_OF_BIRTH <= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Date of birth cannot be in the future.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713065329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8207732476435839)
,p_validation_name=>'Mobile cannot be empty'
,p_static_id=>'mobile-cannot-be-empty'
,p_validation_sequence=>20
,p_validation=>'P7_MOBILE_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Mobile number is required.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713065329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8207913048435841)
,p_validation_name=>'Optional email validation'
,p_static_id=>'optional-email-validation'
,p_validation_sequence=>40
,p_validation=>'P7_CIVIL_ID'
,p_validation2=>'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Enter a valid email address.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713065329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8718579161394584)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8712057941394543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8718924907394586)
,p_event_id=>wwv_flow_imp.id(8718579161394584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8712057941394543)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054528Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054528Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Patient Details'
,p_alias=>'PATIENT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Patient Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713114455Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8707507285394396)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8698335758394374)
,p_plug_name=>'Patient Details'
,p_static_id=>'patient-details'
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
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8707900899394397)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8707507285394396)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8708414618394399)
,p_button_id=>wwv_flow_imp.id(8707900899394397)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8709720298394402)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8707507285394396)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8708904777394401)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8707507285394396)
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
,p_button_condition=>'P7_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8709365229394401)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8707507285394396)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8701930855394390)
,p_name=>'P7_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_grid_row_css_classes=>'3'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8207237435435834)
,p_name=>'P7_AGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Age'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713060205Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8701518808394390)
,p_name=>'P7_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_BLOOD_GROUP'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Blood Group -'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8699152160394386)
,p_name=>'P7_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Civil Id'
,p_source=>'CIVIL_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8703110920394392)
,p_name=>'P7_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_is_query_only=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713114455Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8700319065394387)
,p_name=>'P7_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Date Of Birth'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_OF_BIRTH'
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
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8701168879394390)
,p_name=>'P7_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8702303682394391)
,p_name=>'P7_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Emergency Contact Name'
,p_source=>'EMERGENCY_CONTACT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8702722402394391)
,p_name=>'P7_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
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
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8699508762394387)
,p_name=>'P7_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8699991201394387)
,p_name=>'P7_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_GENDER'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Gender -'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8700786567394390)
,p_name=>'P7_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
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
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8698714783394380)
,p_name=>'P7_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_item_source_plug_id=>wwv_flow_imp.id(8698335758394374)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8703595056394393)
,p_validation_name=>'P7_CREATED_AT must be timestamp'
,p_static_id=>'p7-created-at-must-be-timestamp'
,p_validation_sequence=>110
,p_validation=>'P7_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(8703110920394392)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8207350937435835)
,p_name=>'Calculate Patient Age'
,p_static_id=>'calculate-patient-age'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_DATE_OF_BIRTH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260713060205Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8207445143435836)
,p_event_id=>wwv_flow_imp.id(8207350937435835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_AGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P7_DATE_OF_BIRTH',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT CASE',
    '           WHEN :P3_DATE_OF_BIRTH IS NOT NULL',
    '           THEN TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE),',
    '                                     :P3_DATE_OF_BIRTH) / 12)',
    '       END',
    'FROM dual')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713060205Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8710906187394403)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8710906187394403
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8710116016394402)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8698335758394374)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Details'
,p_static_id=>'initialize-form-patient-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8710116016394402
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8710562970394403)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8698335758394374)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Details'
,p_static_id=>'process-form-patient-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8710562970394403
,p_created_on=>wwv_flow_imp.dz('20260713054526Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054526Z')
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713080520Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8917314600042792)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8911181191042752)
,p_plug_name=>'Doctors'
,p_static_id=>'doctors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.doctor_id,',
'       d.full_name,',
'       dep.department_name,',
'       sp.specialty_name,',
'       d.mobile_no,',
'       d.email,',
'       d.consultation_fee,',
'       d.status',
'FROM doctors d',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'JOIN doctor_specialties sp',
'    ON sp.specialty_id = d.specialty_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080520Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8911209198042752)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'#DOCTOR_ID#'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,:P9_DOCTOR_ID:\#DOCTOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8911209198042752
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080520Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8914840807042784)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8208269597435844)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713080500Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080500Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8912417892042767)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8914433802042782)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8912870992042775)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8914013127042781)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8208347949435845)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713080500Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080500Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8915239170042786)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8921699671233896)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS:DEPARTMENT_NAME:SPECIALTY_NAME'
,p_created_on=>wwv_flow_imp.dz('20260713080520Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080520Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8915643435042787)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8911181191042752)
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
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8208496156435846)
,p_validation_name=>'Consultation fee cannot be negative'
,p_static_id=>'consultation-fee-cannot-be-negative'
,p_validation_sequence=>10
,p_validation=>'CONSULTATION FEE'
,p_validation2=>'0'
,p_validation_type=>'ITEM_IN_VALIDATION_EQ_STRING2'
,p_error_message=>'Consultation fee cannot be negative.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713080459Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080459Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8208566681435847)
,p_validation_name=>'Email uniqueness'
,p_static_id=>'email-uniqueness'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM doctors',
'WHERE UPPER(email) = UPPER(:P5_EMAIL)',
'  AND doctor_id <> NVL(:P5_DOCTOR_ID, -1)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Another doctor already uses this email address.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713080459Z')
,p_updated_on=>wwv_flow_imp.dz('20260713080459Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8916054613042788)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8911181191042752)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8916476668042789)
,p_event_id=>wwv_flow_imp.id(8916054613042788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8911181191042752)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Doctor Details'
,p_alias=>'DOCTOR-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Doctor Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720111024Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8906689206042577)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8900063252042513)
,p_plug_name=>'Doctor Details'
,p_static_id=>'doctor-details'
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8907055411042578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8906689206042577)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8907566781042580)
,p_button_id=>wwv_flow_imp.id(8907055411042578)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8908884958042583)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8906689206042577)
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8908094328042582)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8906689206042577)
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8908489303042583)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8906689206042577)
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8903432833042574)
,p_name=>'P9_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_prompt=>'Consultation Fee (OMR)'
,p_format_mask=>'999G999G990D000'
,p_source=>'CONSULTATION_FEE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713074616Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8901217134042531)
,p_name=>'P9_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DEPARTMENTS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Department -'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713074615Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8900412794042524)
,p_name=>'P9_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8903000816042574)
,p_name=>'P9_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713074616Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8900827394042530)
,p_name=>'P9_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8902661992042574)
,p_name=>'P9_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
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
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8901989515042573)
,p_name=>'P9_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_prompt=>'Specialty Id'
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DOCTOR_SPECIALTIES'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Specialty -'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260720111024Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8903897318042575)
,p_name=>'P9_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_item_source_plug_id=>wwv_flow_imp.id(8900063252042513)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ACTIVE_STATUS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713074616Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8910079868042586)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8910079868042586
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8909264829042584)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8900063252042513)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor Details'
,p_static_id=>'initialize-form-doctor-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8909264829042584
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8909628258042585)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8900063252042513)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor Details'
,p_static_id=>'process-form-doctor-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8909628258042585
,p_created_on=>wwv_flow_imp.dz('20260713073327Z')
,p_updated_on=>wwv_flow_imp.dz('20260713073327Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Patient Admission'
,p_alias=>'PATIENT-ADMISSION'
,p_page_mode=>'MODAL'
,p_step_title=>'Patient Admission'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720112539Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9744930584490736)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112122Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9738604192490690)
,p_plug_name=>'Patient Admission'
,p_static_id=>'patient-admission'
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
,p_ajax_items_to_submit=>'P10_ROOM_ID'
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113714Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9745333230490737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9744930584490736)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9745715349490740)
,p_button_id=>wwv_flow_imp.id(9745333230490737)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9747084043490743)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9744930584490736)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9746251092490743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9744930584490736)
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
,p_button_condition=>'P10_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9746688070490743)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9744930584490736)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9740920176490733)
,p_name=>'P10_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Admission Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ADMISSION_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114302Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9739016561490699)
,p_name=>'P10_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112122Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9741767618490734)
,p_name=>'P10_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_prompt=>'Severe abdominal pain requiring overnight observation.'
,p_source=>'ADMISSION_REASON'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_grid_row_css_classes=>'4'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115615Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9741395188490733)
,p_name=>'P10_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_prompt=>'Discharge Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DISCHARGE_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115717Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9739807535490711)
,p_name=>'P10_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_DOCTORS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Doctor -'
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
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260720111348Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9739442228490707)
,p_name=>'P10_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PATIENTS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Patient -'
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
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260720111339Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9740280708490711)
,p_name=>'P10_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ROOM_NO || '' - '' || ROOM_TYPE AS D,',
'    ROOM_ID AS R',
'FROM ROOMS',
'WHERE STATUS = ''Available''',
'ORDER BY ROOM_NO;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'101 (General) 102 (ICU) 103 (Private)'
,p_lov_null_value=>'1 2 3'
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
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112539Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9742105868490734)
,p_name=>'P10_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_source_plug_id=>wwv_flow_imp.id(9738604192490690)
,p_item_default=>'Admitted'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted;Admitted,Discharged;Discharged'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715112122Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115615Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9715933260989829)
,p_validation_name=>'Discharge Date Validation'
,p_static_id=>'discharge-date-validation'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9_DISCHARGE_DATE IS NULL',
'OR :P9_DISCHARGE_DATE >= :P9_ADMISSION_DATE'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Discharge date cannot be before the admission date.'
,p_associated_item=>wwv_flow_imp.id(9741395188490733)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715120316Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120316Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9715893771989828)
,p_validation_name=>'Room Must Be Available'
,p_static_id=>'room-must-be-available'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM rooms',
'WHERE room_id = :P9_ROOM_ID',
'  AND status <> ''Available''',
'  AND room_id <> NVL(',
'        (',
'            SELECT room_id',
'            FROM admissions',
'            WHERE admission_id = :P9_ADMISSION_ID',
'        ),',
'        -1',
'      )'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The selected room is no longer available. Please choose another room.'
,p_associated_item=>wwv_flow_imp.id(9740280708490711)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715120051Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120051Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9716319000989833)
,p_name=>'Set Discharged Status'
,p_static_id=>'set-discharged-status'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_DISCHARGE_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260715123622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9716427490989834)
,p_event_id=>wwv_flow_imp.id(9716319000989833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_STATUS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'suppress_change_event', 'N',
  'type', 'STATIC_ASSIGNMENT',
  'value', 'Discharged')).to_clob
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P10_DISCHARGE_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715123622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9748258776490745)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9748258776490745
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121657Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9747451591490744)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9738604192490690)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Admission'
,p_static_id=>'initialize-form-patient-admission'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9747451591490744
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9747833153490745)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9738604192490690)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Admission'
,p_static_id=>'process-form-patient-admission'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9747833153490745
,p_created_on=>wwv_flow_imp.dz('20260715112123Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112123Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9716283440989832)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Synchronize Room Status'
,p_static_id=>'synchronize-room-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P10_STATUS = ''Admitted'' THEN',
'',
'        UPDATE rooms',
'        SET status = ''Occupied''',
'        WHERE room_id = :P10_ROOM_ID;',
'',
'    ELSIF :P10_STATUS = ''Discharged'' THEN',
'',
'        UPDATE rooms',
'        SET status = ''Available''',
'        WHERE room_id = :P10_ROOM_ID;',
'',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9716283440989832
,p_created_on=>wwv_flow_imp.dz('20260715121657Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121657Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9716008152989830)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Room Status After Admission'
,p_static_id=>'update-room-status-after-admission'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P10_STATUS = ''Admitted'' THEN',
'',
'        UPDATE rooms',
'        SET status = ''Occupied''',
'        WHERE room_id = :P10_ROOM_ID;',
'',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9747084043490743)
,p_internal_uid=>9716008152989830
,p_created_on=>wwv_flow_imp.dz('20260715120742Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120742Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9716156950989831)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Room Status After Discharge'
,p_static_id=>'update-room-status-after-discharge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P10_STATUS = ''Discharged'' THEN',
'',
'        UPDATE rooms',
'        SET status = ''Available''',
'        WHERE room_id = :P10_ROOM_ID;',
'',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9746688070490743)
,p_internal_uid=>9716156950989831
,p_created_on=>wwv_flow_imp.dz('20260715121501Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121501Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Medicines'
,p_alias=>'MEDICINES'
,p_step_title=>'Medicines'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713082804Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8939241530269859)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8933434301269821)
,p_plug_name=>'Medicines'
,p_static_id=>'medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.medicine_id,',
'       m.medicine_name,',
'       mc.category_name,',
'       m.unit,',
'       m.current_stock,',
'       m.reorder_level,',
'       CASE',
'           WHEN m.current_stock < m.reorder_level',
'           THEN ''Low Stock''',
'           ELSE ''Sufficient''',
'       END AS stock_status,',
'       m.status',
'FROM medicines m',
'JOIN medicine_categories mc',
'    ON mc.category_id = m.category_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8933561973269821)
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
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_MEDICINE_ID:\#MEDICINE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_attr=>'MEDICINE_ID'
,p_internal_uid=>8933561973269821
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8208764355435849)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713082750Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082750Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8936396639269849)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8934753588269837)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8935192274269843)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8936721991269851)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8937183095269852)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8208898915435850)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713082750Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082750Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8935901239269847)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8942832045370243)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS:CATEGORY_NAME:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713082804Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8943786556064740)
,p_application_user=>'ADMIN'
,p_name=>'report'
,p_description=>'rr'
,p_report_seq=>10
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS:CATEGORY_NAME:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713102348Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102348Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8943805998064741)
,p_report_id=>wwv_flow_imp.id(8943786556064740)
,p_static_id=>'ir-condition'
,p_name=>'Low Stock Medicines'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STOCK_STATUS'
,p_operator=>'='
,p_expr=>'Low Stock'
,p_condition_sql=>' (case when ("STOCK_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Low Stock''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#3692e7'
,p_created_on=>wwv_flow_imp.dz('20260713102348Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102348Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8937508004269854)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8933434301269821)
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
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8937984525269855)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8933434301269821)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8938372120269856)
,p_event_id=>wwv_flow_imp.id(8937984525269855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8933434301269821)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081120Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081120Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Medicine Details'
,p_alias=>'MEDICINE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713081117Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714130803Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8928923784269659)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8923454536269621)
,p_plug_name=>'Medicine Details'
,p_static_id=>'medicine-details'
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
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8929386524269659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8928923784269659)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8929890917269661)
,p_button_id=>wwv_flow_imp.id(8929386524269659)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8931117832269664)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8928923784269659)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8930337609269663)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8928923784269659)
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
,p_button_condition=>'P13_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8930793107269664)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8928923784269659)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8924570843269636)
,p_name=>'P13_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEDICINE_CATEGORIES'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082228Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8925639301269656)
,p_name=>'P13_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_prompt=>'Current Stock'
,p_source=>'CURRENT_STOCK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8923756959269629)
,p_name=>'P13_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8924194907269635)
,p_name=>'P13_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_prompt=>'Medicine Name'
,p_source=>'MEDICINE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8926076552269656)
,p_name=>'P13_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_prompt=>'Reorder Level'
,p_source=>'REORDER_LEVEL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8926403413269656)
,p_name=>'P13_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ACTIVE_STATUS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713082610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8925280176269655)
,p_name=>'P13_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_item_source_plug_id=>wwv_flow_imp.id(8923454536269621)
,p_prompt=>'Unit'
,p_source=>'UNIT'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:tablet;tablet,Syrup;Syrup,Injection;Injection,Capsule;Capsule,Cream;Cream,Other;Other'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260714130803Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8932344272269667)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8932344272269667
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8931541785269665)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8923454536269621)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Details'
,p_static_id=>'initialize-form-medicine-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8931541785269665
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8931956604269666)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8923454536269621)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Details'
,p_static_id=>'process-form-medicine-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8931956604269666
,p_created_on=>wwv_flow_imp.dz('20260713081118Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081118Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Low Stock Medicines'
,p_alias=>'LOW-STOCK-MEDICINES'
,p_step_title=>'Low Stock Medicines'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713102546Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713122210Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8945168706076569)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713102546Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8945993076076720)
,p_plug_name=>'Low Stock Medicines'
,p_static_id=>'low-stock-medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.medicine_id,',
'       m.medicine_name,',
'       mc.category_name,',
'       m.unit,',
'       m.current_stock,',
'       m.reorder_level,',
'       m.reorder_level - m.current_stock AS shortage_quantity,',
'       m.status',
'FROM medicines m',
'JOIN medicine_categories mc',
'    ON mc.category_id = m.category_id',
'WHERE m.current_stock < m.reorder_level',
'ORDER BY shortage_quantity DESC,',
'         m.medicine_name'))
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
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122210Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8946044550076720)
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
,p_internal_uid=>8946044550076720
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122210Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8948018981076747)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8948885608076750)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8947219268076735)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8947606322076745)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949209367076752)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949623785076754)
,p_db_column_name=>'SHORTAGE_QUANTITY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Shortage Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8950024885076756)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8948463229076749)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713102548Z')
,p_updated_on=>wwv_flow_imp.dz('20260713102548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8982595277774995)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:CATEGORY_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:SHORTAGE_QUANTITY:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713122210Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122210Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Appointments'
,p_alias=>'APPOINTMENTS'
,p_step_title=>'Appointments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720115845Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8962711607107253)
,p_plug_name=>'Appointments'
,p_static_id=>'appointments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.appointment_id,',
'    p.full_name AS patient_name,',
'    d.full_name AS doctor_name,',
'    dep.department_name,',
'    sp.specialty_name,',
'    a.appointment_date,',
'    a.appointment_time,',
'    ast.status_name AS appointment_status,',
'    a.reason_for_visit,',
'    pv.visit_id',
'FROM appointments a',
'JOIN patients p',
'    ON p.patient_id = a.patient_id',
'JOIN doctors d',
'    ON d.doctor_id = a.doctor_id',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'JOIN doctor_specialties sp',
'    ON sp.specialty_id = d.specialty_id',
'JOIN appointment_statuses ast',
'    ON ast.status_id = a.status_id',
'LEFT JOIN patient_visits pv',
'    ON pv.appointment_id = a.appointment_id',
'ORDER BY a.appointment_date DESC,',
'         a.appointment_time DESC'))
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
,p_created_on=>wwv_flow_imp.dz('20260713103053Z')
,p_updated_on=>wwv_flow_imp.dz('20260720115845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8962819786107253)
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
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,:P5_VISIT_ID:#VISIT_ID##VISIT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8962819786107253
,p_created_on=>wwv_flow_imp.dz('20260713103053Z')
,p_updated_on=>wwv_flow_imp.dz('20260720115845Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8965253254107280)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713103053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8964013673107271)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713103053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9717287437989842)
,p_db_column_name=>'APPOINTMENT_STATUS'
,p_display_order=>57
,p_column_identifier=>'M'
,p_column_label=>'Appointment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715135608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8965665087107282)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713103053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9717014469989840)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>37
,p_column_identifier=>'K'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715135608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9716926388989839)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>27
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715135608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9716884295989838)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715135608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8966328768107286)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713103054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9717103762989841)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>47
,p_column_identifier=>'L'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715135608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9717392824989843)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>67
,p_column_identifier=>'N'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715135608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8983078069775365)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260713122214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135608Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8968846273107295)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713103054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8967163564107290)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8962711607107253)
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
,p_created_on=>wwv_flow_imp.dz('20260713103054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8967528129107290)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8962711607107253)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713103054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8967978429107291)
,p_event_id=>wwv_flow_imp.id(8967528129107290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8962711607107253)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713103054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Book Appointment'
,p_alias=>'BOOK-APPOINTMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Book Appointment'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713103051Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720102805Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8951080622107049)
,p_plug_name=>'Book Appointment'
,p_static_id=>'book-appointment'
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
,p_created_on=>wwv_flow_imp.dz('20260713103051Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123616Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8958204186107100)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8958686608107100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8958204186107100)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8959125633107102)
,p_button_id=>wwv_flow_imp.id(8958686608107100)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8960442894107105)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8958204186107100)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8959610021107104)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8958204186107100)
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
,p_button_condition=>'P17_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8960043179107105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8958204186107100)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8953101367107095)
,p_name=>'P17_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Appointment Date'
,p_format_mask=>'DD-MON-YYYY'
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
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713111616Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8951464873107056)
,p_name=>'P17_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713103051Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8953531834107095)
,p_name=>'P17_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Appointment Time'
,p_placeholder=>'HH24:MI'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713111616Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8955043387107097)
,p_name=>'P17_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'New'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8970734292343114)
,p_name=>'P17_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_DOCTORS'
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
,p_created_on=>wwv_flow_imp.dz('20260713123544Z')
,p_updated_on=>wwv_flow_imp.dz('20260720102746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8970632820343113)
,p_name=>'P17_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PATIENTS'
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
,p_created_on=>wwv_flow_imp.dz('20260713123544Z')
,p_updated_on=>wwv_flow_imp.dz('20260720102732Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8969452664343101)
,p_name=>'P17_P_APPT_DOCTOR_DEPARTMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Doctor Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713111616Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8969580324343102)
,p_name=>'P17_P_APPT_DOCTOR_SPECIALTY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Doctor Specialty'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713111616Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8954657640107096)
,p_name=>'P17_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Reason For Visit'
,p_source=>'REASON_FOR_VISIT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_grid_row_css_classes=>'3'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713111617Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8970809415343115)
,p_name=>'P17_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_item_source_plug_id=>wwv_flow_imp.id(8951080622107049)
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_APPOINTMENT_STATUSES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713123544Z')
,p_updated_on=>wwv_flow_imp.dz('20260720102805Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8969834388343105)
,p_validation_name=>'Appointment cannot be in the past'
,p_static_id=>'appointment-cannot-be-in-the-past'
,p_validation_sequence=>80
,p_validation=>':P7_APPOINTMENT_DATE >= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Appointment date cannot be in the past.'
,p_associated_item=>wwv_flow_imp.id(8953101367107095)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713113157Z')
,p_updated_on=>wwv_flow_imp.dz('20260713113157Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8955484901107097)
,p_validation_name=>'P17_CREATED_AT must be timestamp'
,p_static_id=>'p17-created-at-must-be-timestamp'
,p_validation_sequence=>70
,p_validation=>'P17_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(8955043387107097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8969967415343106)
,p_validation_name=>'Validate appointment time format'
,p_static_id=>'validate-appointment-time-format'
,p_validation_sequence=>90
,p_validation=>'P17_APPOINTMENT_TIME'
,p_validation2=>'^([01][0-9]|2[0-3]):[0-5][0-9]$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Enter the time in 24-hour HH:MI format, for example 09:30 or 14:45.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713113157Z')
,p_updated_on=>wwv_flow_imp.dz('20260713113157Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8969652998343103)
,p_name=>'Show Doctor Details'
,p_static_id=>'show-doctor-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260713112404Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8969708843343104)
,p_event_id=>wwv_flow_imp.id(8969652998343103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_P_APPT_DOCTOR_DEPARTMENT,P17_P_APPT_DOCTOR_SPECIALTY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P17_DOCTOR_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT dep.department_name,',
    '       sp.specialty_name',
    'FROM doctors d',
    'JOIN departments dep',
    '  ON dep.department_id = d.department_id',
    'JOIN doctor_specialties sp',
    '  ON sp.specialty_id = d.specialty_id',
    'WHERE d.doctor_id = :P9_DOCTOR_ID')),
  'suppress_change_event', 'Y',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713112404Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051149Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8961690911107107)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8961690911107107
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8960876277107106)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8951080622107049)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Book Appointment'
,p_static_id=>'initialize-form-book-appointment'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8960876277107106
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8961226494107107)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8951080622107049)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Book Appointment'
,p_static_id=>'process-form-book-appointment'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8961226494107107
,p_created_on=>wwv_flow_imp.dz('20260713103052Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715141050Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715143603Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9785587641508312)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.appointment_id,',
'    p.full_name AS patient_name,',
'    d.full_name AS doctor_name,',
'    dep.department_name,',
'    a.appointment_date,',
'    a.appointment_time,',
'    ast.status_name AS appointment_status,',
'    a.reason_for_visit',
'FROM appointments a',
'JOIN patients p',
'    ON p.patient_id = a.patient_id',
'JOIN doctors d',
'    ON d.doctor_id = a.doctor_id',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'JOIN appointment_statuses ast',
'    ON ast.status_id = a.status_id',
'WHERE',
'    (',
'        :P18_FROM_DATE IS NULL',
'        OR a.appointment_date >=',
'           TO_DATE(',
'               :P18_FROM_DATE,',
'               ''DD-MON-YYYY'',',
'               ''NLS_DATE_LANGUAGE=ENGLISH''',
'           )',
'    )',
'AND',
'    (',
'        :P18_TO_DATE IS NULL',
'        OR a.appointment_date <',
'           TO_DATE(',
'               :P18_TO_DATE,',
'               ''DD-MON-YYYY'',',
'               ''NLS_DATE_LANGUAGE=ENGLISH''',
'           ) + 1',
'    )',
'AND',
'    (',
'        :P18_DEPARTMENT_ID IS NULL',
'        OR d.department_id = :P18_DEPARTMENT_ID',
'    )',
'AND',
'    (',
'        :P18_DOCTOR_ID IS NULL',
'        OR a.doctor_id = :P18_DOCTOR_ID',
'    )',
'AND',
'    (',
'        :P18_STATUS_ID IS NULL',
'        OR a.status_id = :P18_STATUS_ID',
'    )',
'ORDER BY a.appointment_date DESC,',
'         a.appointment_time DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P18_FROM_DATE,P18_TO_DATE,P18_DEPARTMENT_ID,P18_DOCTOR_ID,P18_STATUS_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143603Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9785697563508312)
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
,p_internal_uid=>9785697563508312
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143603Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9788456232508342)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143431Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9786817127508334)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9789141044508346)
,p_db_column_name=>'APPOINTMENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Appointment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141053Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9788846631508345)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141053Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9788034598508341)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9787650810508339)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9787296853508337)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141052Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9789556209508348)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715141053Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9801300825659417)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:APPOINTMENT_STATUS:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260715143603Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143603Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9784724213508164)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715141051Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141051Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9717404645989844)
,p_plug_name=>'Report Filters'
,p_static_id=>'report-filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715141219Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141219Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9718090353989850)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_button_name=>'APPLY_FILTERS'
,p_static_id=>'apply-filters'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Apply Filters'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9792434307599903)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_button_name=>'CLEAR_FILTERS'
,p_static_id=>'clear-filters'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clear Filters'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9717702158989847)
,p_name=>'P18_DEPARTMENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id AS return_value',
'FROM departments',
'WHERE status = ''Active''',
'ORDER BY department_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Departments -'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715142113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143539Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9717879726989848)
,p_name=>'P18_DOCTOR_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_prompt=>'Doctor Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       doctor_id AS return_value',
'FROM doctors',
'ORDER BY full_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Doctors -'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715142113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143539Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9717565913989845)
,p_name=>'P18_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715141219Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9717926057989849)
,p_name=>'P18_STATUS_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_prompt=>'Appointment Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT status_name AS display_value,',
'       status_id AS return_value',
'FROM appointment_statuses',
'ORDER BY status_id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Statuses -'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715142113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143539Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9717610375989846)
,p_name=>'P18_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9717404645989844)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715141251Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143538Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9792273121599901)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9785587641508312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9792389980599902)
,p_event_id=>wwv_flow_imp.id(9792273121599901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9785587641508312)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9792501983599904)
,p_name=>'New'
,p_static_id=>'new_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9785587641508312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9792630573599905)
,p_event_id=>wwv_flow_imp.id(9792501983599904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FROM_DATE,P18_TO_DATE,P18_DEPARTMENT_ID,P18_DOCTOR_ID,P18_STATUS_ID'
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9792760101599906)
,p_event_id=>wwv_flow_imp.id(9792501983599904)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9785587641508312)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715143112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143112Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715143944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715145007Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9802578576681483)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715143944Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143944Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9803315861681613)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    p.full_name AS patient_name,',
'    d.full_name AS doctor_name,',
'    dep.department_name,',
'    pv.visit_date,',
'    pv.symptoms,',
'    pv.diagnosis,',
'    pv.follow_up_date',
'FROM patient_visits pv',
'JOIN patients p',
'    ON p.patient_id = pv.patient_id',
'JOIN doctors d',
'    ON d.doctor_id = pv.doctor_id',
'JOIN departments dep',
'    ON dep.department_id = d.department_id',
'WHERE',
'    (',
'        :P20_DOCTOR_ID IS NULL',
'        OR pv.doctor_id = :P20_DOCTOR_ID',
'    )',
'AND',
'    (',
'        :P20_DEPARTMENT_ID IS NULL',
'        OR d.department_id = :P20_DEPARTMENT_ID',
'    )',
'AND',
'    (',
'        :P20_VISIT_DATE IS NULL',
'        OR TRUNC(pv.visit_date) =',
'           TO_DATE(',
'               :P20_VISIT_DATE,',
'               ''DD-MON-YYYY'',',
'               ''NLS_DATE_LANGUAGE=ENGLISH''',
'           )',
'    )',
'ORDER BY pv.visit_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P20_DOCTOR_ID,P20_DEPARTMENT_ID,P20_VISIT_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9803472749681613)
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
,p_internal_uid=>9803472749681613
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9805448102681625)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9806618946681630)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9805007432681623)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9807061510681632)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144902Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9804664290681620)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9806221849681629)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143945Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9805833077681627)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715143945Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144902Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9813180583743777)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715145007Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145007Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9792842599599907)
,p_plug_name=>'Visit Report Filters'
,p_static_id=>'visit-report-filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715144119Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144119Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9793226386599911)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9792842599599907)
,p_button_name=>'APPLY_VISIT_FILTERS'
,p_static_id=>'apply-visit-filters'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Apply Visit Filters'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715144504Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144504Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9793505825599914)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9792842599599907)
,p_button_name=>'CLEAR_VISIT_FILTERS'
,p_static_id=>'clear-visit-filters'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clear Visit Filters'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715144902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144902Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9793048658599909)
,p_name=>'P20_DEPARTMENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9792842599599907)
,p_prompt=>'Department Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id AS return_value',
'FROM departments',
'ORDER BY department_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Departments -'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715144406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144927Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9792961894599908)
,p_name=>'P20_DOCTOR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9792842599599907)
,p_prompt=>'Doctor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       doctor_id AS return_value',
'FROM doctors',
'ORDER BY full_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Doctors -'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715144119Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144927Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9793194034599910)
,p_name=>'P20_VISIT_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9792842599599907)
,p_prompt=>'Visit Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715144406Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144927Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9793661992599915)
,p_name=>'CLEAR_VISIT_FILTERS'
,p_static_id=>'clear-visit-filters'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9803315861681613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715144902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144902Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9793764856599916)
,p_event_id=>wwv_flow_imp.id(9793661992599915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_DOCTOR_ID,P20_DEPARTMENT_ID,P20_VISIT_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715144902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144902Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9793876622599917)
,p_event_id=>wwv_flow_imp.id(9793661992599915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9803315861681613)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715144902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144902Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9793384315599912)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9803315861681613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715144613Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9793432915599913)
,p_event_id=>wwv_flow_imp.id(9793384315599912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9803315861681613)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715144613Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Medicine Stock Report'
,p_alias=>'MEDICINE-STOCK-REPORT'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715145434Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715145642Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9814299827770562)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715145434Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145434Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9815010727770694)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    m.medicine_id,',
'    m.medicine_name,',
'    mc.category_name,',
'    m.current_stock,',
'    m.reorder_level,',
'    CASE',
'        WHEN m.current_stock < m.reorder_level',
'            THEN ''Low Stock''',
'        ELSE ''Normal''',
'    END AS stock_status',
'FROM medicines m',
'JOIN medicine_categories mc',
'    ON mc.category_id = m.category_id',
'ORDER BY',
'    CASE',
'        WHEN m.current_stock < m.reorder_level THEN 1',
'        ELSE 2',
'    END,',
'    m.medicine_name'))
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
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145642Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9815197289770694)
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
,p_internal_uid=>9815197289770694
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145642Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9817191462770703)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9817501868770705)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9816317800770699)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145641Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9816700892770702)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9817927904770707)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9818385814770709)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9818949843783277)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715145642Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145642Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9819536368815010)
,p_application_user=>'ADMIN'
,p_name=>'Medicine Stock Report'
,p_description=>'Medicine Stock Report'
,p_report_seq=>10
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715150159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715150159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9819626807815012)
,p_report_id=>wwv_flow_imp.id(9819536368815010)
,p_static_id=>'ir-condition'
,p_name=>'Low Stock'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STOCK_STATUS'
,p_operator=>'='
,p_expr=>'Low Stock'
,p_condition_sql=>' (case when ("STOCK_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Low Stock''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#6197e9'
,p_created_on=>wwv_flow_imp.dz('20260715150159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715150159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Admission Report'
,p_alias=>'ADMISSION-REPORT'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715151126Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715152214Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9821774856871895)
,p_plug_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.admission_id,',
'    p.full_name AS patient_name,',
'    d.full_name AS doctor_name,',
'    r.room_no,',
'    r.room_type,',
'    a.admission_date,',
'    a.discharge_date,',
'    a.status',
'FROM admissions a',
'JOIN patients p',
'    ON p.patient_id = a.patient_id',
'JOIN doctors d',
'    ON d.doctor_id = a.doctor_id',
'JOIN rooms r',
'    ON r.room_id = a.room_id',
'WHERE',
'    (',
'        :P24_STATUS IS NULL',
'        OR a.status = :P24_STATUS',
'    )',
'AND',
'    (',
'        :P24_ROOM_TYPE IS NULL',
'        OR r.room_type = :P24_ROOM_TYPE',
'    )',
'AND',
'    (',
'        :P24_FROM_DATE IS NULL',
'        OR a.admission_date >=',
'           TO_DATE(',
'               :P24_FROM_DATE,',
'               ''DD-MON-YYYY'',',
'               ''NLS_DATE_LANGUAGE=ENGLISH''',
'           )',
'    )',
'AND',
'    (',
'        :P24_TO_DATE IS NULL',
'        OR a.admission_date <',
'           TO_DATE(',
'               :P24_TO_DATE,',
'               ''DD-MON-YYYY'',',
'               ''NLS_DATE_LANGUAGE=ENGLISH''',
'           ) + 1',
'    )',
'ORDER BY a.admission_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P24_STATUS,P24_ROOM_TYPE,P24_FROM_DATE,P24_TO_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9821808286871895)
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
,p_internal_uid=>9821808286871895
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9825057810871909)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9823065228871900)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Admission Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9825456549871915)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151638Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9823831056871905)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9823453236871903)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9824274540871906)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9824696484871908)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9825888017871917)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715151128Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9831588932936543)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715152214Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152214Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9793929642599918)
,p_plug_name=>'Admission Report Filters'
,p_static_id=>'admission-report-filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715151637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151637Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9820942084871762)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8180246789483914)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715151126Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151126Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9794498433599923)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9793929642599918)
,p_button_name=>'APPLY_ADMISSION_FILTERS'
,p_static_id=>'apply-admission-filters'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Apply Admission Filters'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715152023Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152023Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9794788128599926)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(9793929642599918)
,p_button_name=>'CLEAR_ADMISSION_FILTERS'
,p_static_id=>'clear-admission-filters'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clear Admission Filters'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715152100Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152100Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9794283853599921)
,p_name=>'P24_FROM_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9793929642599918)
,p_prompt=>'From Admission Date'
,p_format_mask=>'DD-MON-YYYY'
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
,p_created_on=>wwv_flow_imp.dz('20260715151637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151637Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9794108118599920)
,p_name=>'P24_ROOM_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9793929642599918)
,p_prompt=>'Room Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:General;General,Private;Private,ICU;ICU'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Room Types -'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715151637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151637Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9794081464599919)
,p_name=>'P24_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9793929642599918)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted;Admitted,Discharged;Discharged'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Statuses -'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715151637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151637Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9794359586599922)
,p_name=>'P24_TO_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9793929642599918)
,p_prompt=>'To Admission Date'
,p_format_mask=>'DD-MON-YYYY'
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
,p_created_on=>wwv_flow_imp.dz('20260715151637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715151637Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9794589984599924)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9821774856871895)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715152023Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152023Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9794623458599925)
,p_event_id=>wwv_flow_imp.id(9794589984599924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9821774856871895)
,p_created_on=>wwv_flow_imp.dz('20260715152023Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152023Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9794860366599927)
,p_name=>'New'
,p_static_id=>'new_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9821774856871895)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260715152157Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152157Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9794979698599928)
,p_event_id=>wwv_flow_imp.id(9794860366599927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_STATUS,P24_ROOM_TYPE,P24_FROM_DATE,P24_TO_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715152157Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152157Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9795071415599929)
,p_event_id=>wwv_flow_imp.id(9794860366599927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9821774856871895)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715152157Z')
,p_updated_on=>wwv_flow_imp.dz('20260715152157Z')
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
,p_step_title=>'Al Noor Hospital Management System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8185965602484054)
,p_plug_name=>'Al Noor Hospital Management System'
,p_static_id=>'al-noor-hospital-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8187538839484087)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8185965602484054)
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
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186895787484077)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8185965602484054)
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
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8187299617484084)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8185965602484054)
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
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8186498691484074)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8185965602484054)
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
,p_created_on=>wwv_flow_imp.dz('20260712081728Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081728Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8191582386484105)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8191582386484105
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8191123640484103)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8191123640484103
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8187912632484090)
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
,p_internal_uid=>8187912632484090
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8188888230484098)
,p_page_process_id=>wwv_flow_imp.id(8187912632484090)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8189319577484098)
,p_page_process_id=>wwv_flow_imp.id(8187912632484090)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8188344185484096)
,p_page_process_id=>wwv_flow_imp.id(8187912632484090)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8189783247484100)
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
,p_internal_uid=>8189783247484100
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8190704535484101)
,p_page_process_id=>wwv_flow_imp.id(8189783247484100)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8190271824484101)
,p_page_process_id=>wwv_flow_imp.id(8189783247484100)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260712081729Z')
,p_updated_on=>wwv_flow_imp.dz('20260712081729Z')
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
