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
,p_default_workspace_id=>9477349479150644
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'ALNOOR_SCHEMA'
);
end;
/
 
prompt APPLICATION 104 - Al Noor Hospital Management System
--
-- Application Export:
--   Application:     104
--   Name:            Al Noor Hospital Management System
--   Date and Time:   09:43 Tuesday July 21, 2026
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     22
--       Items:                   74
--       Computations:             2
--       Validations:              3
--       Processes:               30
--       Regions:                 61
--       Buttons:                 33
--       Dynamic Actions:          7
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
--         LOVs:                   9
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1674119480691749
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ALNOOR_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Al Noor Hospital Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AL-NOOR-HOSPITAL-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'74BA8890B586FF885D007218C03E0E3DA60898EA22D1B9DDA2CD821384989B07'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(9496305076697405)
,p_application_tab_set=>0
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
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721085944Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461234111404
,p_version_scn=>'12149540'
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
,p_navigation_list_id=>wwv_flow_imp.id(9497259628697423)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(9497967108697519)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9493793904697392)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9492576933697390)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9494037910697392)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9494320437697393)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9492241944697390)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9495873388697395)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9492806058697391)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9493159259697391)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9495591284697395)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9493430770697392)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9491987324697369)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9494673858697393)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9495293733697394)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9494979562697394)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9497967108697519)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260712111403Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111405Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9510931293697629)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712111405Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111405Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9511544806697630)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(9510931293697629)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712111405Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111405Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9512030002697634)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(9510931293697629)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712111405Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111405Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9497259628697423)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:XUw0Tqm_sdlO-NnfnyexCGHfzO_JWiVeFxzCX8AfUHI'
,p_created_on=>wwv_flow_imp.dz('20260712111403Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10087969066491528)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admission-report'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
,p_created_on=>wwv_flow_imp.dz('20260714054539Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054539Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9819711627950581)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Admissions'
,p_static_id=>'admissions'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9876163637136460)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20260714044629Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044629Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9767137336793504)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Appointments'
,p_static_id=>'appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9832973494429302)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
,p_created_on=>wwv_flow_imp.dz('20260713081926Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081926Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9519028436980040)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260712120109Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9730477712598940)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Doctors'
,p_static_id=>'doctors'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9508429708697600)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10083208281482335)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
,p_created_on=>wwv_flow_imp.dz('20260714054407Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9748488477717882)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Medicines'
,p_static_id=>'medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10076397993433370)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
,p_created_on=>wwv_flow_imp.dz('20260714053557Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053557Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9792855676887345)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Patient Visits'
,p_static_id=>'patient-visits'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9709332705387531)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10878544126115218)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_parent_list_item_id=>wwv_flow_imp.id(9519028436980040)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260720112545Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112545Z')
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D797014577AFFBD9E4333D2A00B492319630E719ACD7AABCC02E6746DEDF5478CD70125E68821D9C4554EE5F026DEDAAAE48F1C15D726BB';
wwv_flow_imp.g_varchar2_table(2) := 'B1F7A864B3716D12DB411C9180AC9D4DD57A290CF61A4C16C71688C3312C2040E8C63AE79EDEEFEB990149D6885177CFD5FDC6FD75BF7EC7F77DEFF7FD78AFFB75ABAD40FE24020610900432009E6C0A4802491618424012C8107CB2B12490E480210424';
wwv_flow_imp.g_varchar2_table(3) := '810CC1271B4B02490E18424037810C59958D2D838024906542999F8E4802E50777CB589504B24C28F3D31149A0FCE06E19AB92409609657E3A2209941FDC2D6335F704CA00BADEDFDD3CAB6777537DF7AEDF6AECDEF9C443DD3BB7AEEDDED9F485AE6D5B';
wwv_flow_imp.g_varchar2_table(4) := '1EB383705FBBB53E53DF0903C68231C900BA9C57C92B815440F46DDBB2AC67C7965DDD3BB7FCA06BC7D6D3DD3BB686E321F7901A516F211ABB04D5F10154BC03557D4328E2356103E1BE26FA4C7D270C180BC684B14962F44F3D841963C718228FBF9C12';
wwv_flow_imp.g_varchar2_table(5) := 'E85653536DD7CEA6CD3DDBB73EDFBDA3E9673D3BB6DE8E29E2820AF13254F18C001E262C5C24729B1A015712A33F60CC183BC63081E596BFE5D1F97A5353F5D44DB3939B3302A980102E75AD50D56FA8027F0EA89F075041223763081086EAE75588BF10';
wwv_flow_imp.g_varchar2_table(6) := '8AF20D975B5DAB02C433E4E4977502A94F3FEDEADAB1E5F77BB66FB92804FE0BC05A12B9650501751D31E7751A952E746D6FFA2A639F1533E3946695407D4F35CDE91E1D3829205E82104BC6D995C9EC22B05408F547DD230327F8B2219BA6B246A05B3B';
wwv_flow_imp.g_varchar2_table(7) := '9A1E8CC5D45322715D93CD3E48DD6910A0117FA552123F796BDB961569AA18CECE0A817AB635AD57A09E20EFE69098B44935BA105045A3A288777AB7356DD2D5FE1E8D4C27108F3CAAA2FE94ECD2C51DEDE556080854C415F57FB23112994AA0CEA71F2B';
wwv_flow_imp.g_varchar2_table(8) := 'A591A785102B25915B6121504A23D1018E91996E994A20C768C90FC8B90749E4569808AC48C6C834EF4C2350CFF6A6DDE4D52E12B9153602BB92B132C54B530844AB9F5E55A82F9AE2915492750428562F983595994220B73BCE234F55D67B2E0D988540';
wwv_flow_imp.g_varchar2_table(9) := 'B563D4FD9419CA0C1328B16C2E9E35C3992CE9906AA74040007F9C88DD148533C8324CA0DE9D4D5F227B4B49E4564408A810CB93B133E4B56102A92AE4E883E2FC99113B4304BAB27BB7879EAA7FA138E1935E73ECF806C808128608E4898EAC21E38674';
wwv_flow_imp.g_varchar2_table(10) := '507BB9E50F01C559A2AE3662DE50F01DAA600219B12FDBE61901A33134442015AA24509E0960D4BCD118EA26900AD09D20D6C3C23F9B74CDD020A09B40BDBB9BFC04F06C12B9153702FEA1A79ED01D47DD047284E2BA8D1637DED6F33E1251EAF5F64A37';
wwv_flow_imp.g_varchar2_table(11) := '81C28A2A5FD9D08B7A81B533124BDD0442DC2109546044D0ED8E8158EA2690C301AF6E8765C38242C0A5A84EBD0EE926901A9753985ED00BAD5D5C08DD7FCCA99B408A2247A0B44428B2022383816E02A971FDAC2D167CBB0201740782C5E2AE6E3F8D0C';
wwv_flow_imp.g_varchar2_table(12) := '06FA0924E251DD1E1741C38E91518D3C4C224E1781CB7971513781F2E26D8E8C5E25F2DC0E8731DB5FAF09A7AF515E8ECC17951949A049E1BA323C8241224F45753516AE5EA34945F56C7C4C795C36A9BAED4F2581C651E0FAE818862211F8CA2BB078DD';
wwv_flow_imp.g_varchar2_table(13) := '06284E87268BD7AD87AFA2422BE33AE39AD83EA9D81E812400BDC12006422194FA6661D9868D70B8EE2E8D707AD9FA8D282DF36975FA82A1642B799004220E0C8523E81C0BC05B5A8AE51B37C151E2A6DC891BE77199C7EBC5CDB1310CD34835B1861967';
wwv_flow_imp.g_varchar2_table(14) := 'C5A7C3F6048AC655748C8E420881256BD7C1E929491B45A7D783256BD66A753B46C61053D5B475ED52607B02317998080F2C5B0E4F79F93DE3EEADAAC4DCA5CB1055E3B84EC4BB67038B57B035810642616D2AE28B66FFB2651987BA9EC8C66D0669EAE3';
wwv_flow_imp.g_varchar2_table(15) := 'BBB38C1B5AB0A26D09C45357275DCBD07C84C655ABE8C02F58661661A108347E7615A8116E8E066C3D95D99640BCC2CC53D7FCE52B329ABA30E9E7A928C73C1A89782AEBB1C1E38E49DDBF736A4B02056331F4D32DBBBBC403DFECD918EDEBD725BE9A1A';
wwv_flow_imp.g_varchar2_table(16) := 'B8DD6EF4D01240241EBF03AA9D12B624D02DBA65E720874341B4BF7D1CED6F1DD325E7DE7E0B615AA1665D299D9CCE83E4CDA4ED08C4A30FAF3657CF5F805FDBF19429C2BAF879991D4721256FD4CD93E1FEE42AF2C2C79F807F4B9329B270F357B4DEF0';
wwv_flow_imp.g_varchar2_table(17) := 'B4A8256CB4B31581E2B4F03740538EE270A262F55AD3C25C418B8BAC9397054C535A248A6C45205EB36112CDA3156731CD8AF34C63273C1ECC5DF308780AE3C722336D5FCCF56D45205EF8E360F9373ECA87B412A78BECAE9603F8E81FFE4E93EED603E0';
wwv_flow_imp.g_varchar2_table(18) := 'BCB40DA8A061C326DA0383367B46661B02F1C8331C89C2E3F3C1F7F04A2DD853EDC21D1D38F547CFA07DDF1E5C3BF18E2667F7EED1F2C237AE4FD544CBF3AD5A0D776919E408A4C161BDDD089147858A0736A41F7DD4581C675FFC1682438358F1F857F0';
wwv_flow_imp.g_varchar2_table(19) := 'C89F3E8735CFFE99960E50DEB917BF0DAE930E9D791B366ACFC8C6A2D174550A2EDFA843B6198146A2110DABBA8D89A9463B99B40B9C6FC7ED8E6B58B06E1D2A1A1743D07F8AA26869CEEBBF7A05C10F2F4E6A75F7B46EFD46ED84C9AA256CB0B30D8102';
wwv_flow_imp.g_varchar2_table(20) := 'D118D101F0D093F474711D23F2705929AD30F371BC9425F3021D57C7674F487B16273E15C96B4D130A2C7C621B0271503DE595D386D25D91288FD1A389C915A3C93C6779C5E4A23BE7C2ED42495919D8D69D4C8B276C41A0283DA78AD21A506975D5B4E1';
wwv_flow_imp.g_varchar2_table(21) := '2C5DB2541BA5BACF9FA7ABA5BB2F8BF1B553F7F973542650460F50A753525A558D105D4BDD6D3D5DEDE22FB30581C244200E95A77AFA2FD238EBEAB0E2C9EDE8A36B9DB67FFF57DC38F206AE9370BAFFEA557C6AC76FC3515DCDAAD28A976CC4897E4CDA';
wwv_flow_imp.g_varchar2_table(22) := 'B4952C54600B02F16B1B1C33EF3D82CF75EAB73E8987767F95EEC486D171A60DD74942C32378E8777E0FFE27B6729569A52469231AB7C718642B02B92B2BA70DBE56A808D4D2B3ADCFB51CC6C6EFFC23367DFF9FF168F301D43EF63840655A9D69769EAA';
wwv_flow_imp.g_varchar2_table(23) := 'C43419552DFE7A4712035B1028351894D0F492EC774607F7BC7970DD7F3F84CB95517DAE5442D7407C4C8D7A9CB6B2D88240A06B122D88C96B212D9DAD9D2234CD29D26A2716DED9824002420B61E8F66DED98CD5D686040539FE49196B6F2CE16047224';
wwv_flow_imp.g_varchar2_table(24) := 'A319BA9D086E36039A22904324489B4D5B85A0DB160472268319CCC108144C8E404E610B68618B5EF626DF420C0CF467FD1F6DCA466F72E53AEB06F36CC0F204E2EFFAF08B648CF358FFCC0834D67E168173EDDC346319EDEFD3EAF23BD26C5B3BB1F06E';
wwv_flow_imp.g_varchar2_table(25) := 'E6042A2230F843514C9EBA39F7A3A6E13E044786114B4E319974E3CCF7BF03964CEA729D686F2FC281006AEE9B03B6C9B6AD4E224B1288D780F9635083E1B0469CF9AB56A1AAA181638CE1331F68C74C762A2D06C66770EB9FD25D4DB6D8664DC37DDA87';
wwv_flow_imp.g_varchar2_table(26) := 'A998C8EC5326368BAD8E2509748D1E3DF09FEED4F8EBD1B87A0D841028A73407A7FF83F7F99015E94BEA9E55DFA0D964DBFC993C26B2554722CB1188FFCC98DF4BAEAAADC5C2358F00C95B78FE340B7F65ACF3FF4EDF5957349545345275BE771AB32AAB';
wwv_flow_imp.g_varchar2_table(27) := 'E04C7D5F886CF367F22A67D78049C4BE996AB30094598A40C1580CFC37EF1E6F291AD7AC85704CEC5E358D0CA1911184AE5C361DFAE0E54B880403A86E98F8FF2D519C0E2C5ABB0E6E8F977C0B22443E9A6E3C8F0A27229C47478C9AE66B0C9E26F8B8E8';
wwv_flow_imp.g_varchar2_table(28) := 'B3AB267CA22EA5BBA23E11DCC1B6CCAF83526DEF754CE9AC20924EAECB9FC85BBC72253D505191F271729D623DB70C81462351ED4DC0727A1A5E56337BCA7878E961AA931E8C761C3D0298F8B04A8DC571F5C81B60DD5E9AC2A632EEABABD33ED419A011';
wwv_flow_imp.g_varchar2_table(29) := 'C84A2FDDE7904053C16A5E5E281ED39455D4D669C7A9764200F72D6CC4C7376F60E8E4CFA7AAA22B6FE89DB730DCD38D398D8B00B28134BFCAA46F61225C9A2A45976D1902A582E2A30BD6E9A250B778091C4E27FE7FFF5E7346211AC93EDCDBAC8D3EB5';
wwv_flow_imp.g_varchar2_table(30) := 'A47B3ADBFC39182E4F919DD3C52E962150EAFD1BB7D73B6D4C1C6E171E58BA4C1B8586FFF7E4B47533291C3AF1730CF57491CEE5E06B9DE9DAF01F1E72B995DE56B40C813830994A0D4D356EB71B1FFDE77ED0956DA6CD3E598F471F1AC94A4ABCA8696C';
wwv_flow_imp.g_varchar2_table(31) := 'FC64B90D726C4920BEB59EBB7C0506AE5EC1C82F4EE90EF3D0A91318ECBC81B90F2EC7E42503DD4A8BACA12D09C4319ABD60014A68BA3BFBA37F419CD686386F26121F1D453BB5E58F9357CF9B3F93A696AA6B5B02A9B4725CE2F162B4AF17175FF8D6CC';
wwv_flow_imp.g_varchar2_table(32) := 'A6329ABA2E7EFB9B18BB7D5B5B20645D9662C50C3A530C049A417732AB1A0D8670E1F89B18BA3D008710E86C7B1F3D875A326B4CB5BA5AF7A3F34C9BD67670A01F174917EBA422DB6DB62350687818E78F1DC5C8E020AA4BDC585E5901B7A2E0CCDEFF40';
wwv_flow_imp.g_varchar2_table(33) := 'E0C2F97B1280DF0F6A3FB04F6BC36D59C730E9629D611D53E13D0D1678055B11883FE7DB7EEC4D04C6C6D040D73F73CBCAB451649ECF4753988AF7BEF93CA27D7D7743C6CF45C6DDA6457B7AF0DEDF3FAFD59D4F6D78F4621DAC8B759E7DF3A836ADDD55';
wwv_flow_imp.g_varchar2_table(34) := '60FD946D0834D8D989736F1F473412C13C5F19EABC1EA47EA5F4C0B39E08151C19C2A9E7FE0437F7BC82EE832D8804C61021B2719AF3DEFDFAD710A4518609E3A536A9F6AC8B75B2EEF6E3C7E8CEAC335564F9A32D08D47BE9237CF8EE4970671795CF42';
wwv_flow_imp.g_varchar2_table(35) := '25AD014D8EAC9F08C512181AC28543AD38DBFCAAF67621BF61C869CE0B0D0F81EB306126B7679DAC5B5155CD561F3D9D9F5CC78AE78CA915FB95E8134D4137DBDAF0CB3367E0A2EB9CC5449E327A8C9128FCE49E47A14F55558289D0386B16F8AF395838';
wwv_flow_imp.g_varchar2_table(36) := 'CD6D575019D7F964CB440EEBE6B64EB27599ECDEA40BED713360A292C5F68AC5FA73A73BB15004974F9EC00D1A094A1D4E2C2E2F4789C371A73C5D82AF6B98083E971342084D385D4AC4E3B274ED52F91EB2B18488EAA5E38D4B97709946BE5838922AB6';
wwv_flow_imp.g_varchar2_table(37) := 'DCD172046A3B7A04A70E1DC4E99FBC86BEAE5BDA9DD6A2721F9C8AC859F078045A4424AAA2A9B2EF56274EFFF76B9A4F67C8B79C39912343962190366AD028E1232977B9505352029E7AF82E49087DE4613D15A44B4F2C14B2F9005DACB30FEC0BEB62DF';
wwv_flow_imp.g_varchar2_table(38) := '58D8573D3A0BB18D7E02A962AC903A54456B3A8DF4AF9E65C12C1FE6949582A71E233EDE4F3A588F111DEC03EB609FD83716F6D5884EB3DBD2A27C40AF4EDD04124A6111482F00B21D602496BA09148B41376B217F0585809158EA26109458414D610515';
wwv_flow_imp.g_varchar2_table(39) := '916273C6402C7513C81D975358B1F1249DBF4662A99B4051A15A770A4B87B445F38DC452378184DB21A7308B10CA482C7513A8C35DC5DF4A095A04433B7723988CA52E0C741368E54B2F455401FD2F14EB725736321B018E21C752AF5EDD046283023806';
wwv_flow_imp.g_varchar2_table(40) := 'F92B6A048CC6D01081E29240454D1E76DE680C0D1128E8F4BD4B4EC8EB2002A148B7603286BADD3744A0052FBF1C54A1FE58B775CB352CAE0E71EC388646BC3644A08461F5BB89A3DC171F02C663679840F5CD87781A937763C5C79E53C9D819F2DC3081';
wwv_flow_imp.g_varchar2_table(41) := 'D8BAAA428E4228AE9F5931338540FECEBE5682EF0689DC8A03819BC99819F6D614028963C7A2C4E83F34EC8D54901304D4B8FA0CC7CC0C63A610881DA9DFDBFA63A1AADFE3B494C245806354BFEFE0EB6679681A81D8A15ADFECAF0B885F705ACA8C10C8';
wwv_flow_imp.g_varchar2_table(42) := '4965410BBF1C23338D994A2041CFC76231C76F92831F93C8ADB010E856E3AE27394666BA65C067A85700000214494441542A81D8B186FDFBAF8A98FA3940BDCAE7520A02816B10B12FF9F7EDEB36DB1BD309C40ED6ED3FF87EC4115F09882390BFFC22A0';
wwv_flow_imp.g_varchar2_table(43) := 'E268C4117BD8BFE7705B361CC90A81D8D1FB5F3DDC5F17C69729FD4312B9E5078117EA22E28B1C8B6C99CF1A81D861D1D212F337B73E43D31909C29C272527080454882709FBE73806D9B4985502A51CF7371FFCA1C3211602E22FE901DE75C85FB610B8';
wwv_flow_imp.g_varchar2_table(44) := '01157F45582FAE6F6E39902D23E3F5E684406CB0E6D5969BFEE696BFF187950580F80D929F82862612B91940809AC68410AF2B42FC7A5D58CCF7EF6DFD6BC69AF273B2E58C40A9DEF0904A443A4CF2655758540935BE4915E2592A7F85E42C4994446E53';
wwv_flow_imp.g_varchar2_table(45) := '23C0D89CA551E65515F89A12178F2A25E1AABA3D2D9B6BF7B4FC84B1458E7F3927D0F8FE55B7B40CD6ED3DF456FD9E96EFF99B5B77937C9AC445A0940B976880D3B1886E3F3F03817510E28BB404BFD90EC27D85D6E7D8671803C68231616C483EEDDFDB';
wwv_flow_imp.g_varchar2_table(46) := 'BAABBEB9F5BBB5FB5A8ED7FEDB6BC3E331CD753AAF044AD75906A5EEE5962EFF2B072EFBE9F6D3BFA7F5847F4FCBCF7809DE0EC27D4DF4F9701B63C0583026E9F0CA677E4112289F8048DB33434012686678C9DA931090049A04883C9D1902924033C3CB';
wwv_flow_imp.g_varchar2_table(47) := '3AB54DEA8924904940DA558D24905D236F52BF25814C02D2AE6A2481EC1A7993FA2D096412907655230964D7C89BD46F49209380B48F9A893D95049A88873C9B2102924033044C569F88C0AF000000FFFFAE11188A00000006494441540300B578FF8A58';
wwv_flow_imp.g_varchar2_table(48) := '657B620000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9499272622697543)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D698C1CC7757E337BCEDE0797C7DE4BED92222551A2784896ACC8409C44B11304361C0441ACC43602243002047002E7879118326220701C';
wwv_flow_imp.g_varchar2_table(2) := '390790D8B14E27826DC03A0C59B60E9EA62D51274F9114B9BC965C9EBBCB3D6776E7D8717D3D533535BB333BDD333D333DD38FDCEA7A55F5AAEAD557F5755757F5747BAFFFD9E7A2EC1803B78E012FF13F46C0C50830015CDCF9DC742226008F025723C0';
wwv_flow_imp.g_varchar2_table(3) := '047075F773E35D4C00EE7C4680A7403C065C8E005F015C3E00DCDE7C2680DB4780CBDBCF0470F900707BF399006E1C01DC668500134041C1821B116002B8B1D7B9CD0A0126808282053722C0047063AF739B15024C0005050B6E4060691B99004B11E1B0';
wwv_flow_imp.g_varchar2_table(4) := 'AB106002B8AABBB9B14B1160022C4584C3AE428009E0AAEEE6C62E458009B014110EBB0A011711C055FDCA8D35890013C02450AC569E083001CAB35FB9552611600298048AD5CA1301264079F62BB7CA24024C00934095B41A1B9F160126405A6838C10D';
wwv_flow_imp.g_varchar2_table(5) := '083001DCD0CBDCC6B4083001D242C3096E408009E0865EE636A645800990161A4E28070432B581099009214E2F6B04980065DDBDDCB84C0830013221C4E9658D0013A0ACBB971B9709012640268438BDAC112863029475BF71E36C4280096013905C4C69';
wwv_flow_imp.g_varchar2_table(6) := '22C00428CD7E63AB6D4280096013905C4C6922C00428CD7E63AB6D4280096013908E2A868D318D0013C03454AC588E083001CAB157B94DA611600298868A15CB1101264039F62AB7C934024C00D350B162292060D546268055C46CD20F2D2ED2D9E919C3';
wwv_flow_imp.g_varchar2_table(7) := '41B6A9582EC622024C008B80D9A1BE1059A43362F0CF86C3040719717694CD6558438009600DAF9CB5E723111A9E9E26FDAC0F79581002693957C005584280096009AEDC94FD610CFE190A47A34641BEFA7A8243201C5D14C498A180D041985D61106002';
wwv_flow_imp.g_varchar2_table(8) := '1406679A13D39DB3333314D106FFE6873F4170920448838E5FE816C82CD757534604706E5FCE86C2C6D97D313EF8EBEA1B8D815F595B4B702001E2D0028304D3B306611066975F049800F9C59716C40DEF85D959554B4353136DFEC4C3C6C09791060944';
wwv_flow_imp.g_varchar2_table(9) := '5C5D7D8311B54851BA30334B41B1526444F0216F083001F2062D19D39D73DAB4A7C6E7A3DB1FFA2DAAA8A959562BE2363DFC30D5D4F88CB4B0B85A9C1324C015C188E0435E106002E4055612E7704A3A8B575655D1E634835F9A802BC1A6871E22E8226E';
wwv_flow_imp.g_varchar2_table(10) := '41AC18E14A00995D7E106002E40757BA3CE737D6F851BCC7E3A14D0F7E9CAA1B62531CC4A573354D8DB4E98107C9EB89750DF609AEF8FDE9D4393E47046228E75808674F46606C7E8126161654E4C6FBEEA7BAB63615CE24D4B5B7D3869D3B49FEBBB9A4';
wwv_flow_imp.g_varchar2_table(11) := '3C19AF7C16B2468009903574A933621D5F3F63AFBF730B357776A6565E21B6B9AB8B06EEB85369E08A1210532215C1822D0830016C8131564854DCB85E9C9D33E6FF8859B5AE933A360C41CCCAADDEB8915675761979B17536A2956D44F2216704980039';
wwv_flow_imp.g_varchar2_table(12) := '439828E04A20400B8B1123022B3EFDDB7718722E87FE6DDB0865A18C797105B8E60F40646713024C009B80C46617E6FE28CE230E1BC4BCBFA2AA5248B9FD5588D5A3A11DF711CA444937E7E7C9CF8F4B000A5B1C13C00618B1563F3237A74AEADDB4D9D2';
wwv_flow_imp.g_varchar2_table(13) := '4DAFCA9846A85FD54E3D1B6F3752D554484CB78C08971F726D3E13205704457EDCF4E2894E2112767AD7C6072BC276B97520557DA3511CA65957782A646091EB810990238258F5995808AA5206EEDD4E62115F856D13BC1E5A2FEE076479E3629915F704';
wwv_flow_imp.g_varchar2_table(14) := '32CC7E76083001B2C34DE51AD536A9D6F6F58BA94FAB4AB35BC054684D6FAF512CA64257F92A606091CB810990037AD3C1907A6A138F2F74DFB52587D2CC65ED11FB0AA80BDAD3A144FD08B3B38E0013C03A66460E9C81B1EC6904C461E0CEBBA8A2BA4A';
wwv_flow_imp.g_varchar2_table(15) := '48F9FDABA8ADA17E6D838CEF0572C3BB8409905BC373CD8D471DF0B09A2CE7CCA10FE8ED179E2F881B3E7C48562B9644C334194CDC83A804164C21C004300553B2127ED872CD3F9F1C59C410DF0B640F3E13200BEC6E89559F7074318B9CF9C9821FCEF0';
wwv_flow_imp.g_varchar2_table(16) := '55203B6C990059E086DD58996DE7DF7D953EF9C2CB45713BBFF2556906C95D6815C18229049800A6604A28CD88959785F84F156B1B9BA8F1FE07138905961A3FF620F99A9A8C5AF1A37BEC4918013E98468009601AAA98A27EA61DFCF41F90A7A20810C6';
wwv_flow_imp.g_varchar2_table(17) := '4C31EA5EFFC8A7E221A231B139A6022C9842A078BD67CA3C672961AE8D2B00ACF2783CD4F17B89C187B862B8D5BFF308793C1EA3EA49716F82E7928C001F4C21C0043005534C09677FACFF23D4F7E04354D1DC0CB1A8AEA2BD9D7AEF7FC0B06191A2343E';
wwv_flow_imp.g_varchar2_table(18) := '9FF8259A11C98715116002AC084F72A2BED2D2F5FB9F4E4E2C6248B745B7B18826954CD54C00935D859F23CA273EEBDADAC9B769B3C99CC96A9189091AFDC1D374E21B5FA75F7FE151C3411EFDBF670869C9DAE642756217DAD7D46228C3CEF0A2BC4E19';
wwv_flow_imp.g_varchar2_table(19) := '517C58010126C00AE0E84978EE4786BB77DE27454BFEECFBEFD19B7FFB653AF9D20B74E5F00714989E341CE4932F3E6FA441C752A171E52EED47F4D3A1F2DD198E37D7368F096012CA69B1FC2955DBB66E93A2697FECE72FD3C16F3E460BDA0F67966646';
wwv_flow_imp.g_varchar2_table(20) := '1A74C67FF1CAD2A48CE1F67B1336E964CD98D1E50A4C00130320128D5220FEC25AAFD74BF55BEE31912BA112BC3442479F7E4A4574DC36485BFFE44FE9635FF97BC341469C5438FAF49314BA7245064DF9F55BB6AAD5A01961AB30D9543EB72B31014C8C';
wwv_flow_imp.g_varchar2_table(21) := '80A96048ACAFC414D78AC1EFA9A98E054C1CA391453AFE6FDFA2C548D8D0EEBEFB1E1AFAA3CF90AFAB9B3CF1FF901187342845C2213AFEF8B7282AF2226CC679EB7CB426FE94E8A218FDB3A20C33F9DCAEE3753B0066DA8F5D56A9B77AFB76299AF2E74F';
wwv_flow_imp.g_varchar2_table(22) := '9FA289918B866E4D7D3DF5FCF6270D39D50169D5420769E3E7CED2C2B96188A6DD9A6D89B750E8369B2EC0858A4C00139DAEFFF4B07143ECC7E926B2192AC19B370C1F87558343C6391F722A872B0274645AF0C675299AF21B6FDFA4F4E6F9CD110A8B95';
wwv_flow_imp.g_varchar2_table(23) := '841222C04ACDC86F5A401B4CD5DDB19F249AAD313835A5546B4DBC1B54D7094E4EAABC6684EAEE1EA5366F61FAA432B950600264E8F4053190A2F13B80FA551DE4A9ADC9902339B92EFE6637C4CE6BDF094038959B9F9951D13E2DAF8A5C41F08AE993AF';
wwv_flow_imp.g_varchar2_table(24) := '25F69B64BC3982770356002B9EC404880391CE9B8F4454524B6F9F92CD0AB5FD034A756C78585029FDB004D1C686CF287D3DAF8ACC20B46A36EA57AE0CD95C9BCC04C8D0F53A019AFAAC1300CFEAF4EC886D9C2DCCCDD2A5DDBBD2D638B2EB0D0AC6DF32';
wwv_flow_imp.g_varchar2_table(25) := 'D1B37D0755B4C6CEE66933A44868EC4D4CD174DB53A87294408009204058E96F41BB02D46B73EC95F22C4D1BFCAB2F5365756CEA74F9C8613AF3D31729307AD9B81AE0AC1F18BD4467C4EEF0E8D12346D6CA9A1A1AFCEBBF3164AB87869E044975DBAD96';
wwv_flow_imp.g_varchar2_table(26) := 'E3167D2640869E0E8B3575A952DDD62E454B7E455B1B6DF9C297549E9B6787E9D08F7F486F3DFE6DC31DFAF18FE8A658F6940A5BBEF897843C324C16846A519754D76D9771EC2723C00448C66359089B4A32D25B572745CB7EDB239FA2FBBFF675C25E40';
wwv_flow_imp.g_varchar2_table(27) := 'BACC48834EDBEF3E924E2563BC6E6324FECBB58C995CACC004C8D0F9780C42AA787DB10FD8C9B055BF61DB767AE03FFE9B367DE673D479CF56C24F2AEB5ADA847C2F6DFEEC1F1B69D0B15AAEAE5FA1D9A8DBAEEBB09C40C09B10594A8540D215A0363702';
wwv_flow_imp.g_varchar2_table(28) := 'A07C4C6DBA1EFD0BDAFC4FDFA08F3FFB1C3DF0D4B3427E8C3A3FFFE7594F7B50AE745E5FE22AC50490A8A4F79900E9B131529208A09D5D8D44071EF4AB14DF0364EE202640068CF4B3A87E76CD90AD68C91E8DA4BAED453328C78AF39D9D096001E168FC';
wwv_flow_imp.g_varchar2_table(29) := 'F34716B21441D5A3EAC437CB5480859408300152C29288F4C6DFB8809868C0F9DFE78ACE276CD46D87FDEC9623C004588E49528C873C2ABC38EF9CF7812AA396088B1A4999004BC049116402A400458FAAD0AE00FAE0D2759C242F06FCCA1CDD7615C942';
wwv_flow_imp.g_varchar2_table(30) := '12024C80243896072ABDFA152031BD58AEE98C9848FC59225853A991176176CB11703001961B5B8C189D00E1C9C9629860A9CEF054C2C64A2F776F26F018A10C08E9AFD8095CBF9641BBF8C9F3D71236EA7B18C5B7CC9916300156E897CB737E92EF0285';
wwv_flow_imp.g_varchar2_table(31) := '5AE0DA55788E76739A8DD3A110A10D8E36B8C8C63101D274C0A5B939C2A748F5E4D9ABA54500D88E36300980446AC70448810B068CFEED5FA9327375548A39FB915BB7E8E8D7FEC17090732E305EC04C8AF7093109E2E0A4F098004B40C1E0C78091D16B';
wwv_flow_imp.g_varchar2_table(32) := '7A7AA54833D7ADBDA541654C21DC7AEB5774E3E409C3414E52C921303B7653E55ED393F8913CDA342AA6742A9105030126800143ECB074DAB3A6B797FAB6EFA09655AB620AE218BC705E1C73FF8B04129B6ABA9C4BC90B6713EF116AEDE810B6EF24B441';
wwv_flow_imp.g_varchar2_table(33) := '96890F68A08D32CC3E1113203E0A3030F469CFBAFE7EEADFB683B094DEB4AA23AE453473E243253B4D983E99B0ADA97D95613BDA80B6485BD146B45586DDEE3301C408C080C0C010A2F1D7B5FE36EAC50B703D46901ADA133F859C387E2C16E9C0A36E5B';
wwv_flow_imp.g_varchar2_table(34) := '83BC6A8936A02D4C82D41DE67A0260CEAF0FFEEEA121EABEE71E22317028FEAF5E23C0D5A387E3B10EF3C486C5F56347634689CB569DFEFB65D1169000C48E2910A1CD7C4F40EE9E02E173A7B8399483A277E3EDD475D7161954BEB7B2921A9B631FA0C0';
wwv_flow_imp.g_varchar2_table(35) := '6B4B8223232ACD294270E42205E30FC235B7B492B7B222D9340F19C406C16502EE096E3AEC934AD2B642F9DE4255E4B47AB04974C59F78B607837FDD1D77A435B36DDD3A953675E87D253B4598FCE03D654AAB66AB8A8C0B2078CFD0867888E88A3F79B3';
wwv_flow_imp.g_varchar2_table(36) := '4F25B844702501F088C0A5D939D5C56BFBFA69A5C10FC596EE6E7886BBB47FAFE13BE97071F71BCA9C36B17AA5022984CEBBEEA2B5DA1BE44666FD044C52A8967D942B0980AF3DCADFCB36343753DFB6C4D75528CDBFDAA6266A100EC9136229346CE39E';
wwv_flow_imp.g_varchar2_table(37) := '00CACCC5614A367535F6410D4CD5AA4CBCBEA56FFB76AA6F6C32AA0D47175DFB8D61771240FBA0746FFCA312C648C870E8E8496C8A8DEDDF9341BB70C9E36F1E5095E936AAC834428F36E5C349218D5A5947BB8E00F87084FCDA638DCF478D6BD79AEEE0';
wwv_flow_imp.g_varchar2_table(38) := '16EDD588E75E7D95C4BCC174DE7C29E22B32E75F7F5D15DFAAEDFEAAC83442F3BA4E02064806267EED35F08873837310010A03373E77246B5AAD9DD165DC4A7E757D1D358A1516E8F8272768E69D83108BEA660EBE49B00546348BE5DA4A5F2D44734EAC';
wwv_flow_imp.g_varchar2_table(39) := '0C7568AF609F0A06CDE52B232DD71120108E7DAB0B7DD8D2D909CF925B7BDB7AA57FE1E597945C2CE1DC4BCFABAAD70CDCA664B3424B57E2E63EA0BD08D86CFE52D7731D014262C348765A6D53B3144DFBAD3D7D545D133BCB5E3F798282172F98CE6BB7';
wwv_flow_imp.g_varchar2_table(40) := 'E2FC99D334167FFE075399969E6ECB55D4C66FEC9131E4C27789BA8E0041EDDD3ECB368B300A32388FD743DD1B12EBE8977FFA62861CF94B1E7DE56555386CF278C49C46C59813BC15890DB31013C01C68A5AC95FEFB2CE65BD5D63F409555554686F3BF';
wwv_flow_imp.g_varchar2_table(41) := 'DC4721ED67884664010EA1D1513A7F60BF5153757535B5F50D18B2D583A7C2ABB2B8F14D7289D62B1858C8844045552575AEBFCD508B8AB3E6B9679E30E4AC0F59643CFDFDFF218A7FBB60DDE0E0F2471FB228D38D59980059F6FA6A310DAA16675E64BF';
wwv_flow_imp.g_varchar2_table(42) := 'F4CEDB1438710262419CFFE811BA2A1C2AABAAAAA6D5834310D965810013200BD090A5424C6AA180DC000006CB4944415481FAB44DB4934F7C970AB22F20E670A79E4E5C7106B66C1167FF4A98C42E0B049800598026B3B4897B81C6F8BEC0C485F33479';
wwv_flow_imp.g_varchar2_table(43) := '609F4CCA9B7F6BEF2E9A88AF3C35B6B450ABF64C4FDE2A2DE382BD65DCB6FC374D2CBA0C6CDDAAEA39FEE4F76951FBCEAF4AB049884C4ED287CF3CA54A1BB8773BE9BF5B20FE671901268065C89233F85A5B094F9322767E76864EFFD77720E6C59DFAF7';
wwv_flow_imp.g_varchar2_table(44) := '6F13EA40E1EBFAFBC9D7D20CB1A45DB18D6702D8D00372630C455D7EEF5DBAB56717445BDDC46BBF5037BE28B82ABE1907995DF6083001B2C78EA26257F98218F023A74F259572E47BDFA5F08D1B4971B9044257AFD21131BDD2CB18F9E814A16ED8A0C7';
wwv_flow_imp.g_varchar2_table(45) := 'B36C0D01268035BC94762414A2D3BF3A40D7B59F47CAD79187430B74EC5FFE99A2363C5C169D5FA0A3A2AC483864D42DEB4000759F113644842D08B3B38E0013C03A6614F2FBE9C49E3D34A9BD84AABDA68636893979953706E9B858151AFECFC7B3285D';
wwv_flow_imp.g_varchar2_table(46) := 'CB22963C4F7FE75FE9D6A5D86F905136EA405D52EB96B001B6C02619C7BE790462BD655EDFF59AFE89093ABE6737F9E7660D2CC4421075D5D551777D1DE1ECDCDFD0201666104B74F1CD5FD38D17134F6B1A192C1CAEFDE44774E9DDB78D1C281165A30E';
wwv_flow_imp.g_varchar2_table(47) := 'D4853A118744D8029B02B76E21C8CE0202452480052B1DA23A7579948EEFDF47C1F8D4C62B867A7F6303ADAAAD5116D6555650679D4F858FFEFFB33477C4FAAB5466DF7F8F8EFFF03955CE3A5126CA9611A81375C306C4C1A663C236D888303B730878CD';
wwv_flow_imp.g_varchar2_table(48) := 'A9B95C4B4C45AE9D3A49A7DE3948D1F8F337988E0C35375293D8115E8A0E066773FC31099181DE7AEC1F69FCE73FA3C8D4D452D56561ACF58FBDF2321DFCE6632AAD59D4D1511B7B045B450A01750F0A1B608B08527471D1B0F1FAA98F10646702012640';
wwv_flow_imp.g_varchar2_table(49) := '0690A262A5E7FCBBEFD045ED591F5F45056D686AA45AE1A7CBDE2BA644D5F1FB01E81C7AE27BB4F78B9FA75D9FFD43C31D7BEE0788361C6419BFF74B8FD2E127FFD788C70165F436D4434CE960CB90B005BE54B870E238AF10493032F8DE0CE9AE4E8E04';
wwv_flow_imp.g_varchar2_table(50) := '43F4D181FD74E3F225858371D615032ED3E787BC1E0F0D0ABDFACA4A95D7AA80BC280365AD94175700E8358A2B85D4C30A116CE7152289486A9F09901A170ACECED187E266776A7C5C69AC16D3900131E7CF342065063930714F00E2547932C38D3CD045';
wwv_flow_imp.g_varchar2_table(51) := '1E0C6A8465792BF9B069BDB0AD43BB1F81ED1F8AD52AB465A5BC6E4ECBDC232E44676E6C9C8EEDDD4D017FECE559586DE911531ADC88660307E6EF20CEE6D666BABBAD95EE166EADCFA78A822CE3378BA554E8228F52B020748A1529D80A9B912D2056AB';
wwv_flow_imp.g_varchar2_table(52) := 'D016AC5E21CC2E19012640321E34363C4CC77FB98FC2F1CDA5D899B591DAC43AFF1255C706612B4804DB6124DA726CDF5E1A3B7B1641761A024C0001C6FCD4B4181CE7E8E86BAFD2D9F80F4D4434E1061437980D5595089694C3FD006C471BA4E167C572';
wwv_flow_imp.g_varchar2_table(53) := 'ECB1D75FA3F173E7086D96F16EF65D4D80B75F789EE08EEC7E83CE1E394481B9D89407030237A0434D4D2BAEF440CFC90EAB5468439D7623EE9F9DA5E1C387086D46DBE19CDC867CDBE63A0278C5E6D54AA0E28CD927961D07C50A4EA557CEA457CA915D';
wwv_flow_imp.g_varchar2_table(54) := '9A58245219755945DA24A00DB812E0A63A53DB33A5DB6492A38AF13ACA9A0218D35A53BDAC16ACA163F5048F1AE0599B16B989B54CD3BE08ACF454897D0238C8F6959CBA24DC546F6C6922F8981E81E84B35DB5260B35427D7B0D3F2BB8E00788E46AEB8';
wwv_flow_imp.g_varchar2_table(55) := '487F43731361F5A4B9BAAA60FD83E909567CE02017A2620C7A5C09B05C0AA2CBF64BBF4BAC7415C20E27D5E13A0238097CB6A5F80830018ADF076C411111600214117CAEBAF80830018ADF076C4111112820018AD84AAE9A1148830013200D301CED0E04';
wwv_flow_imp.g_varchar2_table(56) := '9800EEE8676E651A0498006980E1687720C00470473F732BD320C00448038CADD15C986311600238B66BD8B04220C0042804CA5C876311600238B66BD8B04220C0042804CA5C876311600238B66BCAC330A7B78209E0F41E62FBF28A001320AFF072E14E';
wwv_flow_imp.g_varchar2_table(57) := '478009E0F41E62FBF28A001320AFF072E14E478009E0F41E62FBF28A401E099057BBB97046C016049800B6C0C885942A024C8052ED39B6DB16049800B6C0C885942A024C8052ED39B6DB16049800B6C0B8A4100E960C024C8092E92A36341F083001F281';
wwv_flow_imp.g_varchar2_table(58) := '2A9759320830014AA6ABD8D07C20C004C807AA5C66C920C0042899AE2A0D434BCD4A2640A9F518DB6B2B024C005BE1E4C24A0D012640A9F518DB6B2B024C005BE1E4C24A0D012640A9F518DB6B2B023612C056BBB83046A0200830010A023357E2540498';
wwv_flow_imp.g_varchar2_table(59) := '004EED19B6AB200830010A023357E2540498004EED19B6AB20083001EC8099CB285904980025DB756CB81D083001EC4091CB285904980025DB756CB81D083001EC4091CB285904980025DB75CE30BCD4ADF80D000000FFFFCBD77EFE0000000649444154';
wwv_flow_imp.g_varchar2_table(60) := '0300D0065939A0C7C0500000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9499555308697552)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC7D7B781CD595E7B9DDAD6E3D6DBD5B7EC996651B076C623013B021D833F37DB393DD9904B0B4492C43C8FC333B93CD37F9F2586649C210C8';
wwv_flow_imp.g_varchar2_table(2) := 'CEE4DBB0797CD93013BECC42B065422419D80913488231011212DB3C6C6C8C31B62C8CAD079625EBFDE8BE734E755775496A49DDADEA5B555D47AADB75EB3ECE3DE777EAFEEAD6BDD5D53EE03F468011F02C024C009E753D1BCE08003001F059C0087818';
wwv_flow_imp.g_varchar2_table(3) := '0126000F3B9F4DF73602643D1300A1C08111F028024C001E753C9BCD0810024C0084020746C0A308300178D4F16CB6B711D0AD6702D091E03D23E0410498003CE874369911D0116002D091E03D23E0410498003CE87436D9DB0898AD670230A3C17146C0';
wwv_flow_imp.g_varchar2_table(4) := '6308300178CCE16C2E2360468009C08C06C719018F21C004E03187B3B9DE4660BAF54C00D311E16346C04308300178C8D96C2A23301D012680E988F03123E0210498003CE46C36D5DB0824B39E0920192A9CC60878040126008F389ACD64049221C00490';
wwv_flow_imp.g_varchar2_table(5) := '0C154E63043C82001380471CCD667A1B81D9AC6702980D194E67043C800013C03427CBCF7F2C74E9CE5B4ABBEF6CACB9F8D94FADE8BBBDB1AE7BE78EB5179A1AAFECFAF48EAB7B76DD766DCFCEC6CD1C1C8801FA867C44BE229F91EFC887E44BF229F976';
wwv_flow_imp.g_varchar2_table(6) := '9ABB3D7FE84902E8FAE427EBBB7636DCD6D5B4E31B5D4D0D4F62780DC3FB1864776FD1E8F844E0929C901726C7273BC6A2F2B414E2A40FE431F08937A2D277382AE4210E0EC4007D433E225F91CFC877E443F225F9947C4B3EC640BE269F3FA99D03742E';
wwv_flow_imp.g_varchar2_table(7) := 'ECBC6DB517D9C01304D0BDB37153D7AE86AF773535BED0D5D4300881C82910D00620EE01804F60D884612906DEBC8100F99A7C8EBEC77380CE05E17B97CE8DCE5D0D073A77367CAD6BD7AD1FCE1528E6B2232709E0586363B07BE78EFFDCB56BC7839D4D';
wwv_flow_imp.g_varchar2_table(8) := '3B3AA490AF8184FB00E4CD08461106DE18816408140909DB8480FB41FA5F4742388DE7D1F73A9B1AFE94CEA96415DC9E965304D0BDAB710D3AEB1F2B83DAB0FD6990E26F0488156E7712EB6F1B0275782BF17702E0D7744E75EF6CF85F748ED9A64D161A';
wwv_flow_imp.g_varchar2_table(9) := '763D01743736167737EDF82B1CE2BF28A57C079DF53F11A76518786304AC4460991470379D635D4D0DBFE9DED978279D7B563660872C5713405753E3AD32285F9120FE1524DC640780DCA62711F828DE563E1C0DCA035D3B77FC272723309F6EAE24800B';
wwv_flow_imp.g_varchar2_table(10) := 'BB1AB663E7FF1DDED3EF4303AFC2C01B23A01C011C6D6E06219EA17391CE49E50A58D0A0AB0880865CDDBB1A1EF349781E3BFF0D16D8CF2218010B109037D039D9D5D4B09BCE510B042A13E11A02C07BFCAD38DC7F434AF8943274B82146203D0476C950';
wwv_flow_imp.g_varchar2_table(11) := 'F4757A482CBD6AF69576050160E7BF03B4AB3E78F2610DFB4E0F6E396D04A4A88F0AF95BED9C4DBBB2B5155291E668029000A21B975EB0F3FF04008218786304DC804090CED9EEA686FB9DAEAC6309801EBC40005B69E9C5E920B27E8C403204F002F6B5';
wwv_flow_imp.g_varchar2_table(12) := 'AE9D0D3FA1733959BE13D21C490072FBF6405550B62140B761E08D11702F0202EEA80CCA163AA79D68842309A07B59E5A3C89E7FE144C05827462003043E8EE7F4C319D4CBB84AAA151D47003879F22D54FED3187863047209815DF173DB5136398A003A';
wwv_flow_imp.g_varchar2_table(13) := '9B1ABE80932777390A21568611B00A01097769E7B855F22C90E31802E86ABAED4601F07F2CB0894530028E4500CFF107BA3FDDE898C7D61D4100DA2CA910B4D4E7087D1C7BF6B062B980805FFAE4C3DA399F256BD211EB880E571992F78114F5E928CE65';
wwv_flow_imp.g_varchar2_table(14) := '19011723B0463BE71D6080ED04D079FBAD1B40C2971D8005ABC008A84300CFF9CEA6C68DEA1A4CDE92ED0420A2FE6FA26A7E0CBC31025E42C02F40DAFEA4A0AD0480CB225BD1E39FC0C01B23E045043E61F58460BA20DA4A0038F4FF76BA0A7379462097';
wwv_flow_imp.g_varchar2_table(15) := '1088FA258D806D33C93602E8DAB5E316B49A4600B8E38D11F0260242C2B6EE5D8D7F6E97F5B6118004F105BB8CE676190127211005F9F776E9630B019CDF79DB4A643E7A45B75D7673BB8C806310A0BED0797B63DD4215CAA4BE2D04E0F7F93E8BCA0A0C';
wwv_flow_imp.g_varchar2_table(16) := 'BC31028C008010527E066CF8534E001200573FE04EE03F468011482020E10EAD6F245294C494134057D36DD7A3652B31F0C60830020904EAE27D2391A220A69C0084F0D1ECBF02D3B80946C05D0860DFC8783520534B7D9956CCB89E14CA8DCC5857AEC8';
wwv_flow_imp.g_varchar2_table(17) := '08A8444082F2BEA194007A3EF5A9A500F26A9598725B8C808B10F8486F63E36295FA2A2500E98BFC191AC7B3FF08026F8C401204C4789EFC5892F4AC25A9250021F9D77CB2E64A169C0B080801DB21CDBF8514574A00A8E8260CBC31028CC0EC0828ED23';
wwv_flow_imp.g_varchar2_table(18) := 'CA0840DE7B2FB5C5F7FFB33B9E731801426063BCAF503CEB813A65D61BA1067A4E1EA3CE5F40710E8C0023302B028517DF3EBA6ED65C8B339411801451BEFFB7D8792C2E3711981422E5DB808522A08C0000D41905FCC708B81801E1839C248055C07F8C';
wwv_flow_imp.g_varchar2_table(19) := '0023303F0212D6CF5FC89A120A470050638DCA2C8511C8750484B28BA54202904C00B97EDEB27D1621905A5FB1A2312504706F6C09B0C20A85590623E00104CA552D052A2180CF75BC5A844E0B60E08D116004E64720EFC2E1C3F9F3175B780925041088';
wwv_flow_imp.g_varchar2_table(20) := 'FAF8BDFF0BF7154BF010020515FEA00A739510C058442831460560DC0623A00281F9FA8C553A282100BF143C02B0CA632CC71308A8EA334A08607C32C2F7FF9E386DD948AB1050D5679410800F780460D589C172BC8180AA3EE35301A72F14E25B001540';
wwv_flow_imp.g_varchar2_table(21) := '731B3983C05C7DC64A239510803F0A3C0968A5D72C921591122858248EC55888804F82928BA6120218B7101816650D027DE3E3F0565FBF16FAC727AC11CA522C4360428EE70E0158860A0BB20401EAFC1D8343DAD59F46006707078149C012685D2744C9';
wwv_flow_imp.g_varchar2_table(22) := '08C075A8E4B0C27AE797261B294E244079A6648E3A1001AB556202B01A5107CBEB1D1B87B378E5A70E4F6A16141501058A531AE55DC23274CCC11B08300178C3CFD03B3606E786860C6BA9E35FB96D3B5C79F376830428F33D2C73894980A0F0446002F0';
wwv_flow_imp.g_varchar2_table(23) := '809B2F8E8EC17B43C340577932B7B0A804A8F307F2F32150900F440285C52594A595E94012E845C2D012F823A7116002C869F7025C9E9880F787870D2B8B172D822BB76F03EAFC7A628C04B6814E02947E0E0983EA529C833310C886164C00D940D52132';
wwv_flow_imp.g_varchar2_table(24) := '87272370766048BBAA934AD4F9D7E390DF1F0AD1E194E0CF0FE148601B5019CAA0D102D51D8D44E890438E22C00490A38E9D8846E1CCC02044E3DDBFA0B010D6DF7433F88379B35A4C2440654205B1B7B753DDD328631265CD5A89335C8D001380ABDD97';
wwv_flow_imp.g_varchar2_table(25) := '5CF9A894A0755C19D50AF80301587FE347813AB89630C70795F9D08D3781DF17FBFE161109C922997354E32C9722C004E052C7CDA6360DDDDB71A94F1FBA0B2160FD96AD102C299EADCA8CF410CE135CB1E5061042687923781B404B84DA017FD88240B6';
wwv_flow_imp.g_varchar2_table(26) := '1A6502C816B236C93D8F137E0338F1A737BF66D3B5505C55A51FA6BC2F0987A1FEEAC4EBE96942F0C2F048CAF5B9A03B10600270879F52D2923AFE07B8E4A7175EB26A1594D7ADD20FD3DE57D4AF86706DAD51AF7B74140627268D638EB81F012600F7FB';
wwv_flow_imp.g_varchar2_table(27) := '50B360322AA16330B1DC474B7ACB4D5770AD50061FB538822828A277BAC62AD33302F4FD81D8117FBA1D012600B77B30AE3F75CCC9F8A49F4FF860DD962DE00B2CFC0B6524631DCE21F87C3159342948CF08C49BE59D0204B2D904134036D15524FBE2D8';
wwv_flow_imp.g_varchar2_table(28) := '18D0F05F6F6EF5A64D102A893DD9A7A72D649F8F9382AB375E6D88A02F0D5DE2C7850D3CDC1C610270B3F750F7715CA33F3F94989CABAC59021575759863ED5681F301954B961A42E9E9421A0D18091C7125024C00AE745B42695A9EA307762825909707';
wwv_flow_imp.g_varchar2_table(29) := 'AB36FF1145B312565DBB19A80D124EF300F44E018A73702F024C00EEF51DD0507C7832312BBF6AC346F087667FD26FA1A6FA43415875E50643CC20B64DCB834602472C4720DB029900B28D7096E4D3033FE675F992C5A550B1CAFAA1FF74F5CB57AF36BE';
wwv_flow_imp.g_varchar2_table(30) := '2F4079661DE89883BB1060027097BF0C6DE92BBE74FFAF27D46DBE0E20F6E01E64F38F1E0EACC35B01BD0D7AE29027047534DCB76702709FCF809ECBEF1A494CFCD1033F05A58B955952585E0E35B52B8DF63A51171A9118091C710D024C00AE715542D1';
wwv_flow_imp.g_varchar2_table(31) := '9ED1319894892E37D8D707275F7C516918BADC6F284423111A9118091CB104011542980054A06C611B34FB4E8FE49A450E20015CEAE9069581DA34EB4023121A9998D338EE7C0498009CEFA3291AF68C8C6AB70053121D704023127A20C901AAB00A6920';
wwv_flow_imp.g_varchar2_table(32) := 'C0049006584E287AD1F404DE8AEB3E021B9BEEB0352CBF2EF1DC81F98B484EC08A75981F012680F931724C099A6D9F8C3FEF2F848035FFED7310DED1686B58FBD79F032162CB0F3417C0CF055873BAA892C204A00A690BDAE9191D35A4ACB8FE06F0E36C';
wwv_flow_imp.g_varchar2_table(33) := 'BC916053C45F5101CBFFE82346EB3C196840E18A0813802BDC04404FFCD19B797475977FEC2FF4A8EDFB15265DE84B496391D8ABC86C578C1598170126807921724601F3FDF5E2254BA17043E2DB79766B5878F52628A90E6B6AD0E2244F066A50B8E283';
wwv_flow_imp.g_varchar2_table(34) := '09C0056EA2A5BF4BE389DF58AEFFF82D00B1DB6E70C41FEAB286748A2BD33B36168FF12E130454D66102508976866D5D1E9F306AE6E51740D9B63F318E17129978FF1C5058880CBD6ED9F63F854030A41D1261D1AD8076C01F8E468009C0D1EE892967EE';
wwv_flow_imp.g_varchar2_table(35) := '4CCB71F24FE4C73A5A2C37BDCFDE677F0187BEF0DFE1B9DBFE125EF8FCDF6881E28731ADF7D967D213662AED2B2C98321938C0EF0E34A1E3DC281380737D6368665E5AABBCF63A233D9D88C461F9BBDF7D005EFDD183D0D77136FE7321310974DF7E09D3';
wwv_flow_imp.g_varchar2_table(36) := '5EFDD10F81CA48D3ED46AC446A9F95F485A47851F3A8259EC43B0722C004E040A798551A9A9C041A52EB69259BAED1A369ED8FFCC357E1CC8B2FCC5B87CA1CB9E7ABF3964B56A064D3B546F2583402BC1A60C091724475412600D588A7D99EF94A5AB56E';
wwv_flow_imp.g_varchar2_table(37) := '3DF83278D75FE7CF1E839E936F1B2D87AF580FD77EBA09B67CF1CB5AA07835A6E9057A4E9E80AED69FE98729EFFDA5A550B1BADE286FBE75311239E2280498001CE58E99CA9887FF61D3107B66C9E42963ED67E0D8E38F19992BB76C85FAFFF297908F4B';
wwv_flow_imp.g_varchar2_table(38) := '8902971228507C0DA6519E5EF0CDC7F6C07847877E98F2BEC6F468B059F794057041A508300128853BBDC6E85DFFA391C4AFF3965D931862A72AE9C22F7E0E32FED5E1C5B5B5B0140960B6BA944765289FEA743EF33445D30A65D76C36CAF308C080C2B1';
wwv_flow_imp.g_varchar2_table(39) := '112600C7BA0660249278DF9F100242ABD7A4AD6D7FFB59A3CED20D1BB56BBE91302D42A3012AA327F79F6DD7A329EF43F56B4008619437139891C891A408D891E8B3A3516E333504CC9DA76CE52A009F48ADA2A9545F47A2131754549A729247CD65FACE';
wwv_flow_imp.g_varchar2_table(40) := '9E4D5E688E54110840E9F2154609B30D4622471C83001380635C31539191C9C4F07F3111C0CC22F3A6145654196552796147249A788EBFA0ACCCA89B4EA4D4F47252B30DC07F8E438009C0712E492864BE7A9698DEC19728317FACBC3E312BDF7FE6F4BC';
wwv_flow_imp.g_varchar2_table(41) := '15FA71D2502F5486C3793D9ECEBED8A4ABD9867464705935083001A8C139A356464DDFAA2B5C519B918C4575AB8D7A1D870EC2E448E207448D8C7864726408DE3B78307E04B028430228620230304C356257392600BB909FA75DBA724AD3F37AF9A6FBEA';
wwv_flow_imp.g_varchar2_table(42) := '79AA4EC92EDFF6C7102C2CD2D2226363F0F6934F24258189E1212D2F321EFB224FA8B8042AFB0B26ED0000100049444154B6FF89562FDD8F9049577A49482AB71EE9B6C1E5AD418009C01A1C2D97421DC72C3410AE311FA61CF7E37DFCA6BFFDBC51BEFF';
wwv_flow_imp.g_varchar2_table(43) := 'C27938F8CF3F84F65F3D0BDD6FBCAE85F65F3E0387FEE541E8BF70C12877CDDF7D31A3878E4840A0A2827646986E8B91C111DB116002B0DD05C915305F35B56FD9A5BF0060085EB4F54658FF895B8D637AF6FFFCD12370EAB95F69E1FC9B4781D2F40257';
wwv_flow_imp.g_varchar2_table(44) := '367C128A3378E848AF2F824130AB6B7E94592FC37B6720C004E00C3FCCD0C24C00A1458B66E4A79BB0FC337F0537DEFF4F50585A3E6BD5225C26A4324B77EE9AB54CAA1985E5895140246AA697542578A79C9D963201D889FE1C6D9BFB4CA828760F3F47';
wwv_flow_imp.g_varchar2_table(45) := 'F194B20AAEDA0037FCE041B8FE7FDC0D1B77DE0E2B6FBA19EA6EDE0E1B9BEE80EBEFBA1BAEFFFE8340655212364FA16061A15182470006148E8B300138CE253185CC9D2654B2F011404C2A800FC9A4E4862D106EF8AFB0F68B5F81FA2F7C497BAB70C9F5';
wwv_flow_imp.g_varchar2_table(46) := '5BC05758A0175BF03E681AB5986D59B060166029024C0096C2699D30F32D40B0B8D83AC18A24058B123A330128023D8366980032004D45153301E495243A938AB6AD6823CF445A4C00B3236A770E1380DD1E48A57DE13E37F9FC7EC332FA66A171C01147';
wwv_flow_imp.g_varchar2_table(47) := '21E0BE33CB51F0654F192184217C7278F6A7F78C420E8BD08345BA4A3E932D7A1AEF9D8100138033FC30430BB363265C490023864D4224C8CC48E4882310309F678E508895882160BE6ACEF5FC7EACB4F33ECDA4E5E7FE9FD4414E48640270821792E810';
wwv_flow_imp.g_varchar2_table(48) := 'F0255C333192B89A2629EAC824F32D40C08573188E04350B4A25CEB22C086791992310300D9B278686321764534DF30820E0E321804D6E98B75926807921B2A780B9D30C5DFCC01E25326D351A8591BE4B466DF368C648E4882310600270841B662AD133';
wwv_flow_imp.g_varchar2_table(49) := '1AFB5A2EE544B1434DF6F450D41561A2BB1B48675DD9EE91C4CF9AEB695EDF3BC57E2600A77822AE077D6DA67D7008FAA6FD3ACF7867E2ABBAF1A28EDD8D779E9FA21BD94236916D5332F8C0760498006C77C154053AB0F3F74FEBFC5462F4C2D44E4569';
wwv_flow_imp.g_varchar2_table(50) := '0B0D43AFBF0614162A677AFDD1F33375259BC8B6E965F9D85E049800ECC57F4AEB67B1F3D3D5524FF4FB037A14464C2FEB30121710B9FCD28BF0BBFBEED1C2E5DFBDBC004933AB0E9BC8CA6C03D94636CEACC1297621C0046017F2D3DA6D1F1C9C32ECAF';
wwv_flow_imp.g_varchar2_table(51) := '59B102EA366E344AF5BDFB8E11B722D277E2B821A6FFF831236E45A4EFDD538698BAABAF8630DAA227300900E8583861CF0460B317E8BEF8CCC020F48F4F189A542D5D06B5D77D048A2A2B8DB4AEB7DE0269FA95202323D308351CAF6BE5B3FA726202BA';
wwv_flow_imp.g_varchar2_table(52) := 'DF3919970C505C51012BD116B2494F2412209B4D2AE859BC578C00138062C0CDCD510768C7CE6FFE0D3DEA2875D75F0FF418407EC92208E4E56955A29149183BFDAE1677F2C7285EFD75A20A0402406F33225BC8A6CA9A2586EA6433D94E1818891C518E';
wwv_flow_imp.g_varchar2_table(53) := '00138072C8630DD2894F1D803A422C05803A08751421E20FCEE0AED4340A1878FB2DBDA863F78327123A9656551B7A0A2160F50D5B341BF544B29D30202CF434DEAB458009402DDE466B67A75DF92BC261A8C70E2204F67AA314C022D32FFB5CB2F85EDD';
wwv_flow_imp.g_varchar2_table(54) := 'D48C65D15E938E8BAB12BF4A440D089FD06C245BE998029180972606C966270526001BBC717E7804FAF15E596FBA5CEBFC5B21D96FFF1555265EAED9733C7175D5EB3A6A1F95D075FC4D43A522BCFF370EF48846025BA1B432410EFDB8EC4998E84578AF';
wwv_flow_imp.g_varchar2_table(55) := '0E01260075586B2DF58E8D41CF68E2C938EA08DA95DF9FDC1585E5E5909717D4EA8E5CEE8331BCC7D60E1CF8317AEA248CC7BFBA1C0CE5434159F2DF16147E1FACDD7AE31412204C7AC7C61D68556EAB94FCACCB6D9B6DB36E221A857343896FF6151415';
wwv_flow_imp.g_varchar2_table(56) := 'C1DA2D5BC1E74FBC3D279972D5A665B40F5E7E31591147A4997533EB9C4C395FC00F6B6ED80285A67707BE3F340C938851B2F29C961D049800B2836B52A99D23A320F19F3269867CFD8D1F055F5EE2611F4A4F16CA962F3792CFBE7000E2228C34474470';
wwv_flow_imp.g_varchar2_table(57) := '26AFFDF9E70D55CC3A1B89D322FE601EACDBBA15FCB85A405951348C30A2782E0627DAC404A0C82B63B8867F0987FF7A73B5EB3F04C1E2D4DEF75F545109A150EC95DDC3977A61E4ADC4433CBA3CBBF72378EF3F3A7859538386FF8565B3FF00895628FE';
wwv_flow_imp.g_varchar2_table(58) := '112A2981DA2BD6C78F00E81689B03212389255047C5995CEC20D042EE2FD2D5E24B5E350410154D6AFD5E2297D0880EADAC428A0C781B701669D6A56AD02409D21C5BFCAFA3540A441C509A35EC48AE21CB28F001340F631D65A1830CDFA2FA9AB03E14F';
wwv_flow_imp.g_varchar2_table(59) := 'A387A08432D32FEEB6BFB01FA4692211B36DDD4897F6DFE0AD495C8BB26509B28A27CDB9A3F9801AC4442F64C64A4FE37D76106002C80EAE53A44EE2F218FDDCB79E58529DFE2FFD16E08C7A4969A9268266DA7BF7FF5A8B3BE1E3E273BF3266FF8B172F';
wwv_flow_imp.g_varchar2_table(60) := '86FCD2C569ABB5A83A6CD419C1DBA55CFB2D01C338874598001438C4DCF9A9B982B25847A6783A61E9BA2B8CE2A79EDA0780C46224D814919128BCF3D41346EBCB3F74A5114F275280C4612E3F3219311F723C4B083001640958B3D8888C1A87C1601084';
wwv_flow_imp.g_varchar2_table(61) := '486FF8AF575EBC6C19E417146A87033D3D30F08757B4B89D1F03AFFC16863E88BDADA8009735172F599A913AB41AA2AF069080A8A4D9008A71C826024C00D944372E3B623A978305B1D9FC78565A3B21042CBF22310A38BDAF25ADFAD928FCEE13AD8658';
wwv_flow_imp.g_varchar2_table(62) := '4DB7CCB84D9351C0BF28ACE1A0F283094001DAFADA3F35E5F7CDBFEE4FE5660B652B57028D2228BFE7D43B5979A30FC94E250C1E3A0817E3DF50249DCA6A71F63F958AB394F19B1E88A267026629E6BA64272BCC04E064EF24D1CDE7F7C3D2356B8C9CE3';
wwv_flow_imp.g_varchar2_table(63) := '3F7E08E70212B71846469623F495DF633FFE91D1CAB2B5EB40F81670F93724714425024C002AD1B6A8ADAAFAB5C628A0FFFC39E8C559788B44A72CA6F797CFC0407797569ED6F02BEBEBB5387FB80B01260077F94BD39626CC6AAFDAA0C5E9E3F8EE9F40';
wwv_flow_imp.g_varchar2_table(64) := '54E1AF07458786E058F3A3D4B416566ED800BEF8E3BC5A027FB806012600D7B86AAAA2E5ABEAA0B0B8444B1C1D1C80737B7EA2C5557C74EC7E24B1EEBF683194D7AE54D1AC2BDB70BAD23EA72BC8FA254740E0ED76DD35D71899277FF1348C985EC66164';
wwv_flow_imp.g_varchar2_table(65) := '581C193E7A044EE1F05F17ABE980BAE8C7BC7717024C00EEF2D7146D8BABAAA0D2B4EEFEFA771FC8EAAD401487FEAF7DE70143077A7F6161B2977E182538E2740498009CEEA179F4ABACAD354AD06F08763CFC63E3D8EA48FBBF3E0423FD89DFFCAB58B1';
wwv_flow_imp.g_varchar2_table(66) := 'C2D22624F050C252405310C6049002484E2D72F9C2053879F0E014F54EFDFA9730FCC6EB53D2AC38183A7C084E1FD83F45D43BD836E9302571010702E4026A3BAFAA1B34620270839792E8D873F2249CF8DD6F211A9DF9CCFCABDFF936442E5E4C522BB3';
wwv_flow_imp.g_varchar2_table(67) := 'A4C99E6E78F57B89A1BF2E25826D930EA48B9EC67B7721C004E02E7F014425B41F3A08A7DF3C6A5C2FF37C3E58B3A804684FE68C0E5C8623FF781F480BBE572F47C7E08D6F7E03C6F0FE9F64E789A96DD1359B74E978F5B0A61B95E1E01E049800DCE32B';
wwv_flow_imp.g_varchar2_table(68) := '884C4CC0DB2FBD085D1D1D86D6F97E3FACC3CE5F84EBF02B8B8B8CBBE88B674EC3A91F7EDF289751047BF7C9EF7E1B2EBD176B8FEED057961401B5456D52DBBADC0BEDED9A6E9189493D89F72E408009408193A8E32CB49989A16138BEFF79E88B7FF38E';
wwv_flow_imp.g_varchar2_table(69) := 'E495E4E5C15AECFC011C01D03175CC6AD3978DCEBEF41BE87EA28DB2320A9DAD8FC37B077F6FD40DA36C6A8312A84D6A9B74A0630AA4DB5BCF3F0F13F13703535A7A21815422969E04A794768B1E4C000A3C8517D205B532DCDB0B479F7F0E8687060C39';
wwv_flow_imp.g_varchar2_table(70) := 'E5A110AC2E29061F3D1060A402D414E483B9531ED9FD08F4BD907859A7A968229A44C14BFB7F0D6F3EB6C7284332C328DB48C008B54D3A9487827814DB86062FC3D1FDCFC1C8A5C46A412C27BDCF242AA527804BA7840013404A302DACD042AE66FDE7DE';
wwv_flow_imp.g_varchar2_table(71) := '87375F380013E38977E62FC12BF18AA2D87B01926946B702A1F8A880F20F7DFF3B70F46B7F0F17F6EE81AEB6162D5C32FD8027C5F5F4F37B77C391BBEF82C3FF3771FB10F2F9816492AC6461455111904E7A1EE97A1475EE7FFF7D3D29EDFD42304BBB31';
wwv_flow_imp.g_varchar2_table(72) := '0F57600250E0FC8CAE6658A9EBC45B70E20FAF8034BD1C833A62F5B42BF17413FC382A5885A383004ED8E9795DC78FC1311CD21F6D7E1428F49C4AFC822FC5298DC2F1D69F41F789E37A3520197578DF4F328DC42411D28974D3B364340A277EFF0A74BF';
wwv_flow_imp.g_varchar2_table(73) := 'FDB69E94D61ECD4FAB3C17CE0C012680CC70CB6A2D8933FD670EFE01DA8F273A2275409AE92F0D2686DB7329411374EB169740214E0ECE556EAEBC427F00484608271AE72AA7E7916EA423E9AAA79D39F6A6B66A4136E969B3EF73A3DBCF6E9FF3729800';
wwv_flow_imp.g_varchar2_table(74) := '14F8249DE16C647C024EBEF802749F7BCFD02C88C3799A70D327E08C8C7922B42C48F556151743383F1F16E1A46131120205CAD3AB539CD22850192A4B75D62281509E5E2E953DE9486D92CE7A795AB5209B6815434F4BBE4F209588252FC9A9D620C004';
wwv_flow_imp.g_varchar2_table(75) := '600D8E734A49F5BA363E3804C77002ADCFF4104F015E7DD72E5E04A95E859329B23898073585055087B705F5B86A40813ABA5E96E2944681CA5059AAA3E7A7BB275D89044877BD2ED9747CFFFE79560812482562BA04DE67030126806CA09A81CC81CE4E';
wwv_flow_imp.g_varchar2_table(76) := 'A099FE91E121A336754C1A5207F09EDE4874498496094977B2415779786810688560A02BF622113D5DDF4BE329063D85F7D946800920DB08A3FCD986B393A363DA7259FBC18370FCB72FC3E4C404968E6D95B8CC4757635A6A8BA5B8EF9374271B2AD016';
wwv_flow_imp.g_varchar2_table(77) := '5D7B5A2138FEF24B40368FE052E1A4E9E7D28C471BB1F06C986196A337B729C704A0C063D2D446FFA58BF0FB7D6D5A38FCEF3F8723CFEF87AEF89376548C4EFCA5385C5F36C7321F957353588EB6D03221D9A6EB4D3693ED879FFEB986056172B9AF57CF';
wwv_flow_imp.g_varchar2_table(78) := '36738191C611EB116002B01ED319127D290E6DE99E99EEC3AB70C26E86108B13E8EAAC8B34C7F534ABF7B44C48B6D1EA442AB253C52C15595C6676047CB367718E550894E405C0BC34365D2E75FC658585B8E4B6487BCE7E7A7E368ECDF7E60B99F04B47';
wwv_flow_imp.g_varchar2_table(79) := '375A21B802273497A2AD64F36C7569CE63114E5CCE96CFE9D621C004601D96B34AA209B1AB4A17437D4989116882EC4398F6E1F232ADE357E68766AD9F8D8C6224A5ABCA4A610306EA98D9686336995568EB3A2402B29D30202CCCD8905E7311E66C72ED';
wwv_flow_imp.g_varchar2_table(80) := '4E7763FB3E154AE70988A868C7C96D0821803A9D1EA8D399D7CAEDD09DAEB4767734C280B0D071A1BD1D5838AD4DBF2F9878F63B8BCA292180281340165DC8A2731181E8D898928BA61A0250644C2E9E086C9337118882CC210250648C374F15B6DA0908';
wwv_flow_imp.g_varchar2_table(81) := '58AD4330E057F2661525230055C658ED0496C708D8854044E4D0082010888ED80524B7CB08B81181905FE6CE2460E950DEB01B9DC03A33027621A0AACF28B905102D2DE32060CC2E30B95D46209B08582E1BFB8AD6672C173C53A01202D09A95D0A9EDF9';
wwv_flow_imp.g_varchar2_table(82) := '83116004E64640615F514700C00430B7D739971188212005B483A23F2600454073338C40CA0848A96CB4AC8E00049C4819002EC808B804816CA82984C8BD11808CC2EBC07F8C0023302F022AFB8AB21140404A2680795DCF05180100957DC5A70AF08A2B';
wwv_flow_imp.g_varchar2_table(83) := '36D28BE8A3AADAE37618019722301CEF2B4AD4574600E2DE7BA9F3BFA3C42A6E8411508040969A381AEF2B5912859922E60000062F494441543F55AC3202A0662548BE0D2020383002B323A0B48F282500017000F88F116004E64040ED455229010440FE';
wwv_flow_imp.g_varchar2_table(84) := '1C2D971878630418819908485F24EFFFCF4CCE5E8A5202A868DE770E401C01FE63045C8E4076D41747AA7EFAD3F3D9919D5CAA5202D05410F2196DCF1F8C00233015011BFA867202C0A5002680A96EE72346404340CAE8935A44E1877202A8292C7F19ED';
wwv_flow_imp.g_varchar2_table(85) := '3B8B81374680114820D0117EBFF750E2504D4C390188871E9A00018F00FF31022E45202B6A0B78581C38A0E43D8066FD951300351E89461FC63DAF062008BC310288C0644488FF877BE59B2D04B074EF3EBC0510BF546E2D37C808381381A797EE6EE9B0';
wwv_flow_imp.g_varchar2_table(86) := '43355B08800C8D0AF92DDA736004BC8E4054C0F7C0A63FDB0860C99ED60300E259E03F46C0450858AFAA7836D617AC979C8A44DB0840534E4CDEA5EDF98311F028023811F6153B4DB79500C27B9E78038D7F0A036F8C80171178AAA6B9E5A89D86DB4A00';
wwv_flow_imp.g_varchar2_table(87) := '64B810E2CBB81FC4C01B23E025048660D2FF25BB0DB69D00AAF7B49CC261D0D7ED0682DB6704E643C0DA7CF9E5F0E38FBF6BADCCF4A5D94E00A472785CFC0004BC44710E8C40EE23205E0E37B7FD8B13EC7404018896968800F15904846F051004DE721A';
wwv_flow_imp.g_varchar2_table(88) := '011CFAFB3EE3140B1D41000406DD0A809077623C8A813746201711C0735BDCEE84A1BF0EAE630880140AEF696BC391C05729CE811170120256E82201BE146E6E79C20A5956C97014019051D5CD2DDF9212E8BB0274C88111C809048494DFAF696EB5ED89';
wwv_flow_imp.g_varchar2_table(89) := 'BFD940741C0190A2E1E2F2BF0609BFA238074620071078A26ADDC62F3AD10E4712007D6538523C760B02B60F036F8C809B11782A5234B64BE5ABBED301CB910440062C7DE8DF86AB9B5B1B04C037E998032360170299B68BF7FCFF84E7F0AD742E672A23';
wwv_flow_imp.g_varchar2_table(90) := 'DBF51C4B006438767E89007E1D04D0B24984D23830022E40601C24ECC27BFEBBE91C76B2BE8E26001DB8F09ED647A54FDE88C76F63E08D11703202477D78AE86F7B6363B59495D37571000295BB3BBEDF7C379C59B7034F00D3C9EC0C01B23E0240426F0';
wwv_flow_imp.g_varchar2_table(91) := 'AA7F7F7551F9E6AADD6DCADFED972910AE210032B0EE914746713470AFCFEFDF2084F8374AE3C0086413811464E3AD3EB4E2F978255EF5EFA109EC14EA38A688AB084047ADEAD1C74F56EF69F93840F42600416F1906FE6304542380F7F70744446E0E37';
wwv_flow_imp.g_varchar2_table(92) := 'B736E2F9784A75FB56B4E74A02D00D0F37EF7B39DCDC729384E81600B91B6F0FC6F43CDE3302594140C0189E67787F1FBDA9BAB9F58FAB7FDAF65A56DA5124D4D504A06354D3BCEF957073DB1D9148DE72BC0FFB0A0869FBD72C75DD789F33089C464BEE';
wwv_flow_imp.g_varchar2_table(93) := '8AE03986B7A1BBC278F1C163D76F394100BA17963EF6D807781FF640784FDB1A90F2CF31FD4109F23DDCF3C608A48D8076EE08F9CF20C49F859B5BEB31FC6F3AC7D216E4E00A394500669CC37BDB9E45877DAEA6B9AD1644649394F07500F11B0018C2C0';
wwv_flow_imp.g_varchar2_table(94) := '1B23900C013C37F01C11708F90E21A3A77F062F2B7E13D2D39FB587ACE1280D9BBF4EEC19ABDADDFC4F9826D480AC520A3F578ABB003E70DEEC372F44EC2D771AFF45759B13DDEEC43807C4D3E47DFCBFBB47361D2BF86CE0DED1CD9D37A7FF5DE16CAB7';
wwv_flow_imp.g_varchar2_table(95) := '4F43452D7B8200A66319DEBBEF74786FEBBE7073DB3F849B5B6FC1700D8665184475F9507E306FB24CE489258160A036E413AB8594EBA220AE82A8FCB04F4437FBA4B88E83033140DF908FC857E433F21DF9907C493E25DF928F3190AFC9E7E87B3C07E8';
wwv_flow_imp.g_varchar2_table(96) := '5C70C0EBB9A69FA72A8E3D490073012B7EF08BB1B2479EECAB7EA4A5B3E2E19FBE57BABBE54CF5DEB6779634B71C0F3FD676A46ACFBE57ABF6B61CE6E0400CD037E423F25535FA8C7C473E245F924FC9B773F9DE9CE795381380573CCD76320249106002';
wwv_flow_imp.g_varchar2_table(97) := '48020A2731025E418009C02B9E663B19812408300124018593BC8D8097AC6702F092B7D95646601A024C00D300E14346C04B08300178C9DB6C2B23300D0126806980F0A1B711F09AF54C005EF338DBCB08981060023081C15146C06B08300178CDE36C2F';
wwv_flow_imp.g_varchar2_table(98) := '2360428009C0040647BD8D8017AD6702F0A2D7D96646208E0013401C08DE31025E448009C08B5E679B198138024C00712078E76D04BC6A3D1380573DCF7633028800130082C01B23E055049800BCEA79B69B11400498001004DEBC8D8097AD6702F0B2F7';
wwv_flow_imp.g_varchar2_table(99) := 'D976CF23C004E0F9538001F032024C005EF63EDBEE790498003C7F0A781B00AF5BFF1F000000FFFFA5A9387F000000064944415403009AEBF5C434EA46BE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9499808816697552)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000022A494441547801EC544D6FD340107D8E6DC51F6A1C44A8D2A4E9850F0169E10A45E55770E3A7800412078E48FC0604E28004027102840451801BB9F55002071A';
wwv_flow_imp.g_varchar2_table(2) := '6C93861422C5B15DB3E3E0365C9A5DB755A5CA2BBFDD99D9D1CCD3B3C739FBFAB5E83091C321AF8C40A640A6C09E14702280B097494E4DA0CBBA562E2FA37269195D48CC4BF7A422F0C70F505CBC0845D3A0E81A8AF5250C820069963001A63A9C30C4A0';
wwv_flow_imp.g_varchar2_table(3) := 'FB13CEEA6A8CC146178E1FA6E90F6102BF473E2EDCBC8D9377EEFE87A51BB740CA88B21026E0CD14A09F3D87C8F3F0E5FEBD1864536C689AA2FDC515304F9F899B044C7663761684A0D70372128C53E3BB3881731356402D9D884BAB7315E8D51A8CDA02';
wwv_flow_imp.g_varchar2_table(4) := 'D472791C3B5E8A4F914D98C016933E6960AD5C45E1CA4AE2220CFC6D9BD71022B0E18DD0FFD6DEAE1DF6FB202481FED7367A2C27F1794E6E02F4859BF545C8130A8CD6BF63D4591FF7D98A200F87D0CFD785A6819B80573C066B7E1E263B379B8D71D389';
wwv_flow_imp.g_varchar2_table(5) := '7DF3430333A5128AB51A86963571B3BBC94D4061E347A5AC6A156B8F1E20627F43F20911937DEDF14314D88749BE5A3800029244A50189C62DAFC17EFA04C922DB6431BAA39824FD4B26670AB815A03A117BCF9DD667E8AE03E7C533D86F5FE3C79B5770';
wwv_flow_imp.g_varchar2_table(6) := '5F3E87E6D8E8B45AA01CCAE50537815F8E8376E31D0CD785AEC8985315E06313D2A726CACCA698E1DA2CE73D2877DF092C843E2A6180BCBCC3D95414109266795966393E2837894D3B77AA4DCB3CA0FB8C40A6C0D15760DAF0FC050000FFFF5A2ED40000';
wwv_flow_imp.g_varchar2_table(7) := '000006494441540300AC450830298E385C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9498936565697540)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD07741C5B7ADFF95577038D9C018260CE2FE7C0F7DE48338A96ACD56A57475E4BB6C2B1B5B2E4D5EEDA472BEF715A8F95D6CA3E7B644BB2';
wwv_flow_imp.g_varchar2_table(2) := '258D268F3451D248A3194D78F3720EC3F41841F23181992080063AEFFD40820F24BB6E1580EAEE0A3F9085EEBEF1FB7EB7D0F75FF7DEBA953AFB8F7FA4CA0103CE01CE01CE01CE01CE81649D0329E1070210800004200081841110410024AEC971180210';
wwv_flow_imp.g_varchar2_table(3) := '800004208000E01C80000420000108248E803ACC088052E080000420000108248C000220610D8EBB1080000420907402D7FC47005CE3C06F08400002108040A208200012D5DC380B01084000024927B0E03F02608104AF108000042000810411400024A8';
wwv_flow_imp.g_varchar2_table(4) := 'B171150210800004924EE03DFF1100EFB1E01D042000010840203104100089696A1C850004200081A41358EC3F0260310DDE4300021080000412420001909086C64D0840000210483A819BFD4700DCCC834F108000042000814410400024A29971120210';
wwv_flow_imp.g_varchar2_table(5) := '800004924EE056FF1100B712E13304200001084020010410000968645C840004200081A413B8DD7F04C0ED4C0881000420000108C49E000220F64D8C831080000420907402B5FC4700D4A2421804200001084020E6041000316F60DC830004200081A413';
wwv_flow_imp.g_varchar2_table(6) := 'A8ED3F02A036174221000108400002B12680008875F3E21C0420000108249D809BFF080037328443000210800004624C000110E3C6C5350840000210483A0177FF1100EE6C8881000420000108C496000220B64D8B63108000042090740236FF1100363A';
wwv_flow_imp.g_varchar2_table(7) := 'C441000210800004624A000110D386C52D0840000210483A01BBFF08003B1F6221000108400002B12480008865B3E2140420000108249D8097FF08002F42C4430002108000046248000110C346C5250840000210483A016FFF1100DE8C48010108400002';
wwv_flow_imp.g_varchar2_table(8) := '10881D010440EC9A1487200001084020E904FCF88F00F04389341080000420008198114000C4AC4171070210800004924EC09FFF08007F9C48050108400002108815010440AC9A1367200001084020E904FCFA8F00F04B8A741080000420008118114000';
wwv_flow_imp.g_varchar2_table(9) := 'C4A83171050210800004924EC0BFFF0800FFAC4809010840000210880D0104406C9A1247200001084020E90496E23F026029B4480B01084000021088090104404C1A1237200001084020E90496E63F026069BC480D01084000021088050104402C9A1127';
wwv_flow_imp.g_varchar2_table(10) := '200001084020E90496EA3F0260A9C4480F01084000021088010104400C1A1117200001084020E90496EE3F0260E9CCC801010840000210883C010440E49B1007200001084020E90496E33F026039D4C8030108400002108838010440C41B10F321000108';
wwv_flow_imp.g_varchar2_table(11) := '4020E90496E73F026079DCC8050108400002108834010440A49B0FE3210001084020E90496EB3F0260B9E4C8070108400002108830010440841B0FD3210001084020E90496EF3F0260F9ECC809010840000210882C010440649B0EC3210001084020E904';
wwv_flow_imp.g_varchar2_table(12) := '56E23F026025F4C80B0108400002108828010440441B0EB3210001084020E90456E63F026065FCC80D0108400002108824010440249B0DA3210001084020E90456EA3F0260A504C90F0108400002108820010440041B0D93210001084020E90456EE3F02';
wwv_flow_imp.g_varchar2_table(13) := '60E50C29010210800004201039020880C8351906430002108040D20904E13F0220088A94010108400002108818010440C41A0C73210001084020E90482F11F01100C474A81000420000108448A00022052CD85B1108000042090740241F98F00088A24E5';
wwv_flow_imp.g_varchar2_table(14) := '400002108000042244000110A1C6C2540840000210483A81E0FC470004C792922000010840000291218000884C5361280420000108249D4090FE230082A44959108000042000818810400044A4A130130210800004924E2058FF1100C1F2A43408400002';
wwv_flow_imp.g_varchar2_table(15) := '1080402408200022D14C18090108400002492710B4FF0880A089521E04200001084020020410001168244C840004200081A41308DE7F0440F04C2911021080000420107A020880D0371106420002108040D209D4C37F04403DA8522604200001084020E4';
wwv_flow_imp.g_varchar2_table(16) := '041000216F20CC830004200081A413A88FFF0880FA70A55408400002108040A809200042DD3C180701084000024927502FFF1100F5224BB9108000042000811013400084B871300D0210800004924EA07EFE2300EAC7969221000108400002A125800008';
wwv_flow_imp.g_varchar2_table(17) := '6DD360180420000108249D403DFD4700D4932E6543000210800004424A000110D286C12C0840000210483A81FAFA8F00A82F5F4A87000420000108849200022094CD82511080000420907402F5F61F01506FC2940F0108400002100821010440081B0593';
wwv_flow_imp.g_varchar2_table(18) := '200001084020E904EAEF3F02A0FE8CA901021080000420103A020880D0350906410002108040D20934C27F0440232853070420000108402064041000216B10CC810004200081A413688CFF0880C670A61608400002108040A808200042D51C1803010840';
wwv_flow_imp.g_varchar2_table(19) := '00024927D028FF11008D224D3D108000042000811011400084A83130050210800004924EA071FE23001AC79A9A20000108400002A1218000084D5360080420000108249D4023FD4700349236754100021080000442420001109286C00C0840000210483A';
wwv_flow_imp.g_varchar2_table(20) := '81C6FA8F00682C6F6A83000420000108848200022014CD801110800004209074028DF61F01D068E2D4070108400002100801010440081A0113200001084020E9041AEF3F02A0F1CCA911021080000420D074020880A6370106400002108040D20934C37F';
wwv_flow_imp.g_varchar2_table(21) := '044033A85327042000010840A0C90410004D6E00AA870004200081A413688EFF0880E670A75608400002108040530920009A8A9FCA210001084020E9049AE53F02A059E4A917021080000420D04402088026C2A76A0840000210483A81E6F98F00681E7B';
wwv_flow_imp.g_varchar2_table(22) := '6A86000420000108348D0002A069E8A9180210800004924EA099FE23009A499FBA210001084000024D228000681278AA850004200081A41368AEFF0880E6F2A77608400002108040530820009A829D4A21100E02D57098811510482481663B8D0068760B';
wwv_flow_imp.g_varchar2_table(23) := '503F041A4CA052ADCAB9D9393972756AFE383F3727C54AA5C156501D0420D06C02088066B700F543A08104664B6539307955CECCCECA74A92433E6389D9B95C3460CE44C5C034DA12A08249C40F3DD470034BF0DB000020D21305928CAB1E96929D4B8DA';
wwv_flow_imp.g_varchar2_table(24) := 'D7B0A353D332592834C4162A8100049A4F0001D0FC36C00208D49DC054B1282766666A76FE0B9597AA153935336B4440712188570840A04E04C2502C02200CAD800D10A823814BF9BC1C9B9A91B299FBF7AAA66844C071334A7029CF4880172BE2211075';
wwv_flow_imp.g_varchar2_table(25) := '020880A8B720F643C042E0C25C5E748EBF22FED7FB6BCA53333939373767299928084060F904C2911301108E76C00A08044A403B715DDD7F3A97F375E57F6BE52A182672B3F3770BDC1AC7670840201E041000F16847BC80C04D04CE988EFF8CE9C05508';
wwv_flow_imp.g_varchar2_table(26) := 'DC14B1840F9A57EF16D0D180256423290420E041202CD10880B0B40476402000027A8FFF69D3F1EBD0BF76E001142917F2793969A60482288B32200081F010400084A72DB004022B267076764E74E8DF4FE79F69EF909674DA579D178D085061E12B3189';
wwv_flow_imp.g_varchar2_table(27) := '2000010B81F0442100C2D3165802816513D00E5FAFD2B5F3F753C8E0D0B0DCF9FE0FC83DDFF6ED323836E627CBBCB04004F842452208448200022012CD8491107027A0C3FE67CDB0BF5EA5AB10704F792DA6777858363EF6987474B44BEBC0806C78E041';
wwv_flow_imp.g_varchar2_table(28) := 'E91F59752DD2E3F785B939D1C5811EC9888600045C088429180110A6D6C016082C918076F87A557ED674CC7EB20EAC1A95ED4F3E2599B6B61BC95BCCFBAD4F3C2903A3AB6F84B9BDD1FAB4AE89D959B72484430002112180008848436126046E25A057FE';
wwv_flow_imp.g_varchar2_table(29) := '3AECAF1BFDDC1A57EBF3D0EA31D9F4F84E49A56F9FF74FA553B2E9A1876564EDBA5A596F0BD3B506275818781B170220602710AE580440B8DA036B20E08B806EEAA79DB076FE7A55EE9549AFEE373EF6B86432B777FE0B79336D595977FF03326884C242';
wwv_flow_imp.g_varchar2_table(30) := '98ED55EBD65B0D6D6988830004C24B000110DEB6C13208B812D02178BF3BF58DAC592B5B76EE94B4B9CA772DF07A4426DB2A5B8C50185EB3E67A88FD456DD0470BDB53110B01082881B01D0880B0B508F640C083802EF6BB3097F748752D7AC874E4EB1F';
wwv_flow_imp.g_varchar2_table(31) := '79545229FF7FEA4E3A251B1E7C48566DDC74AD108FDF3A12E1D71E8FA2888600041A48C0FFB742038DA22A0840A036017DAA9FEECCA75BF5D64EF15EA876FE9B1E7DDCD795FF7BB9AEBD4BB7B6CABA7BEF958131EF9100B545A702A68BA56B99F90D0108';
wwv_flow_imp.g_varchar2_table(32) := 'D42010BE200440F8DA048B205093C0D562514E4CE77C3DD667F5868DA29D7F2AE5D42CCB4F60BAA545B69AE98055EB3778265711A04F11440478A222010442430001109AA6C01008B813C897CBA257FEFAB85EF754D76274FE7EAD19C25F49E77FAD2411';
wwv_flow_imp.g_varchar2_table(33) := 'C708085D18B86AC346F1FA2955AB723A97933963AB575AE22190340261F4170110C656C126082C2250AC54647C6A5A0AE6755170CDB70323AB567CE57F6BC1E9968CACBFE75EE91B1EB935EAB6CFB3A6F37F777A46F416C5DB22098000044245000110AA';
wwv_flow_imp.g_varchar2_table(34) := 'E6C01808DC4CA06CAEAAF57E7B3F9D7F574F8F6C7CF4B1F9ABF69B4B59F9A754B655369BE980AE8E2ECFC25404A8CD88004F5424480C81703A8A000867BB601504E609E8B0BF2EFC9BFF60F995C96665F3CE27A4C574D496642B8AD2B2373EF288B4B577';
wwv_flow_imp.g_varchar2_table(35) := '789673A55010EE0CF0C444020834950002A0A9F8A91C02EE04B403BD6C3A52F714D762D2AD59D9F1C863D2DEE57D757E2DC7F27F770E0DCAE6FBEF9774CA7D43A185D275AF824BF9C2C2475E2190580261753C1556C3B00B02492670B55014ED40BD1838';
wwv_flow_imp.g_varchar2_table(36) := 'A9946CB9FF01E95A35E29534B0F8EEB131D9FCE0839272EC7718E80E853A82A1530281554E411080406004100081A1A4200804434017FDE96A7A9DFFF72A71B3E9FCFBD7AEF54A1678FCC0860DB2FE8E3B3DCBD5DB034F4EE7447DF24C4C0208C4924078';
wwv_flow_imp.g_varchar2_table(37) := '9D420084B76DB02C8104B4D33F3E3D23791F2BFED76CD92A43BA5B9FFD42BC6E1447EEBC53C6366FF62C3F572E893EB44847043C13930002106818010440C350531104EC04B483D47DF5674ADE3BEA0D9B61F8B17BEF136952E72FE647AB5E7BDF0332E8';
wwv_flow_imp.g_varchar2_table(38) := '63B740DDC4487D33D9F80F81441108B3B3088030B70EB6258AC0C5B9BC9C9F9BF3F4B9676858363CF090A452DA057B26AF6B02C7D8B0F9D1C7A46770C8B31E5DD3A042C0332109200081861040003404339540C04E4017CA6907A9A300B6949D9D9DB2F5';
wwv_flow_imp.g_varchar2_table(39) := 'E18725DD96B5256B685C2A9D92AD8F3C2AEDDDBD9EF59E9E9965A7404F4A24880F81707B82000877FB605D020894CC7CBF2E94D3F97F9BBB2DE98C6C7A7CA7B41811604BD78CB896CE0ED9FAD043D292B50B937CA53CBFA571336CA44E0840E066020880';
wwv_flow_imp.g_varchar2_table(40) := '9B79F009020D2730313B27BA50CEABE2CD0F3D2C9D7D7D5EC99A16DF3138209B1E7CD8B3FEE95249F411C29E09490081881308BBF9A9B01B887D10883301DD28E7B28FCD72C676DC29BD4DB8DD6FA9ECFB568FCAEA4DDE7706A800D0DD02975A3EE92100';
wwv_flow_imp.g_varchar2_table(41) := '81E0082000826349491058128142B9226772B3A2F7CADB3276F5F6CA9A1DDBC563DF1D5B110D8B731C47D6DC73AF7474755BEBAC4A55267273EC0F60A54464B40984DFFA54F84DC44208C48F80CEF79F98999152B562752ED3DA2A5B1E7D5C52998C355D';
wwv_flow_imp.g_varchar2_table(42) := '9822F5E9815B1E7954322D2D56B3580F60C5432404EA4E00015077C4540081DB09E83DF13AB68FBB650000100049444154177E7BCC7B218EE3C8A63BEF92B61EFBD5F47B39C2F3AE63A05F36DCFF80A74193C5A23015E089890411241005931100516825';
wwv_flow_imp.g_varchar2_table(43) := '6C8C1581E962C9D7FDFE231B36CAC0E62D91F57D70DD7A19F6B149D0A99959D1DB2023EB28864320A2041000116D38CC8E2601DD13FF5D33F4EF75BF7F575797AC6DF24E7F2B256C063064C3430F89AE61B095A5D3207A1BA42D0D711088168168589B8A';
wwv_flow_imp.g_varchar2_table(44) := '86995809817810D09DFE5404D8BC49675A64C3C33A871E9D797F377FD2ADADB2EE9E7B45D732B8A5D170BD0DF2C25C5EDF724000020D228000681068AA81C064A12817E60A9E20D66DDF2E5D83039EE9A292A067D52A59E3E3C981A773662AA0548E8A5B';
wwv_flow_imp.g_varchar2_table(45) := 'D8090157025189400044A5A5B033D2042AD5EAFC2D7F7AFB9BCD91A1D563B26ADB765B9248C68D6CD922FDAB46ADB62B1BDD0E59EF90B026241202100884000220108C14020177023ADFAF57B77ADB9B7B2A91B66C56D6DE738F483A7E7F9629C7918D0F';
wwv_flow_imp.g_varchar2_table(46) := '3D2C6D5D3D3604A20F0B3ACF54809511916127101DFBE2F74D131DF6589A10029385825CCC7BCC6F9B0E72F3C38F48B63B7AB7FCF96DC6D6F636D970D79DE2A4D3D62CE76667796090951091100886000220188E9402819A0474C1DFF9598FCEDFE45CBD';
wwv_flow_imp.g_varchar2_table(47) := '61A3748DDA87C84DB2C8FFEF5DB34646D7ADB7FAB1306262664DACE9888440180944C9260440945A0B5B2347E0DCDC9CE7837EDABBBA64CD8E3BC4899C774B37D8711C597DC71D92F11805982A1665BA545C7A05E48000047C134000F8464542082C8DC0';
wwv_flow_imp.g_varchar2_table(48) := '5CB92C177DCC67AFDBB65DD29D1D4B2B3CC2A95B3A3A64E3DDF77A0A1E7D4E4289618008B774124D8F96CF088068B517D6468480AEFA9FC8CD8A0E67DB4C1E1E1991BEF51B6C49621937A877050C0D597DD3DD014FCFE4AC6988840004964F0001B07C76';
wwv_flow_imp.g_varchar2_table(49) := 'E484802B015DCDAE876B0213914AA5E79F9CE7A413F86768E63BD6DD7997A43D1E1874B9509059F60630670BFFA340206A3626F09B276A4D84BD5123A057FFE767E73CAFFEC7D6AF976C5F5FD4DC0BCCDEB6E16159EBE35907BA8EA2CA544060DC290802';
wwv_flow_imp.g_varchar2_table(50) := '0B0410000B247885404004F4497FB9B27D47BBEEAE2E19BDE30E49FACFF0F6ED92CD66AD18F46981FAD4406B222221D07402D133000110BD36C3E2101328942BE267239BF5F7DC27E98EE42CFC736B329D02D8E0734120A3006E140987C0F208200096C7';
wwv_flow_imp.g_varchar2_table(51) := '8D5C10B88D802EF8BB90CF4BC563F07F64D5A8748EAEBA2D7F5203FA36AC97118F0581858A3F61955486F8DD7C0251B4000110C556C3E650129829963C6FFB73C49135F7DC234E8A3FBD8546741C4756DF75B7E782405D0BA0EB2B16F2F10A0108AC8C00';
wwv_flow_imp.g_varchar2_table(52) := 'DF422BE3476E08DC20707676D6F3EA7FDDE6CDD2DADB7B230F6FAE11681D1C920D5BB75EFBE0F25B1F12A422C0259A600834914034AB460044B3DDB03A6404664A25D1C36656676F9FF46DDD6E4B92DC3847A467FD46C9767459195CCA1744F707B02622';
wwv_flow_imp.g_varchar2_table(53) := '120210F0450001E00B1389206027A04FFBD33500B6543DAB5649BABD4DCA952A470D06A9B6ACF4AF5D634328FA6C85CB460458131109810613886A750880A8B61C768786C064A128393302E065D099830764D717FF4AF6FEDD5764EF57CDF1775F96BD1C';
wwv_flow_imp.g_varchar2_table(54) := 'F30CF67CE5CBF2AD2F7E51260C232F8E97F2F97921E0958E780840C04E000160E7432C04AC047451DA85B9396B9AC591E54A59667333323B638E5CCEBCE798351CF2B339332A62DF3B6181A3AE0538EB63A3A585F4BC42A0BE04A25B3A0220BA6D87E521';
wwv_flow_imp.g_varchar2_table(55) := '20A057FF336C55DBF096B86CA601F4614B0DAF980A211023020880183526AE349E80AE4AAF7ADCF7DF78ABE25F63C530BFE0E3498BF1278187CD2610E5FA1100516E3D6C6F2A01BDFAE72AB4794D305928C874B1D43C03A8190211278000887803627E73';
wwv_flow_imp.g_varchar2_table(56) := '08E8DCFFF925CCFD37C7CA78D7AA6B012EE6F3F17612EF424E20DAE62100A2DD7E58DF24029385A2E77DFF4D322D51D55E2D16B92320512D8EB341124000044993B2124140EFF7D73DFFBD9C6DEFEC949E9155E618E518590E831169EBECB262D69118DD';
wwv_flow_imp.g_varchar2_table(57) := '1CC89A884808D48940D48B450044BD05B1BFE104A6CD55A7D7DCFFD6BFF7FDF2D4473E258FFDC11F9BE38F38FE60190CFEF04FE4A90F7D54367DEFF759DBF8929906D0A7305A1311090108DC460001701B1202206027A0ABCFF5CAD32D55C65CF98F7EDB';
wwv_flow_imp.g_varchar2_table(58) := 'FB45528E88F9CF21B22C0622E2B4B4C8DAEFFF01C95A1E9DAC4F0ABC5228083F10682C81E8D78600887E1BE2410309E4CB6599322300B62A576DDD2659F6FCB7215A525CEBEA3119B9EF7E6B1E5D0C681365D6CC444220A1041000096D78DC5E1E019D6F';
wwv_flow_imp.g_varchar2_table(59) := 'D635006EB9532DADB2F6BBBE479CD616B724842F9180D3DA2A6BBEE3BBACB9784680150F91752010872211007168457C6808019DF7D7F9665B659D23C3D279F7BDB624C42D8340C71D7749FF864DAE395594E9C24C7D754D4404042070130104C04D38F8';
wwv_flow_imp.g_varchar2_table(60) := '000177023AF45FAA5ABA18C7918DEFFF4E49F5F7BB1742CCB208A43ABB64FDB77DBB35AF0AB4591F0F65B2164224047C1188472204403CDA112F1A40E06AA168ADA56B7048FA1F7DDC9A86C86512483932F081EF94F6DE5E6B01BA3F833501911080C00D';
wwv_flow_imp.g_varchar2_table(61) := '0208801B287803017702B95259F4704F21B2FABEFBA575C3065B12E2564020D5D32B638FEDB496A01B03E5CB156B1A2221B0520271C99F8A8B23F801817A12D0B9FF8AB80FFF3BE9B48CBCEFDBEA6942E2CB76326919FDEEEF9DBFA3D00D86DEA531C334';
wwv_flow_imp.g_varchar2_table(62) := '801B1EC22170130104C04D38F80081DB09E80A73AFFBCC87B76DE7D6BFDBD1051ED2B676BD8CEEB8D3B55C956893EC09E0CA87882008C4A70C04407CDA124FEA4440AF28F5C1336EC5EB5E3FEBBFF3BB25D5D5E59684F08008386D6DB2EE7FF8416B69FA';
wwv_flow_imp.g_varchar2_table(63) := '8440156DD644444200028200E02480800781498FC57FBDE6AAB4FBBE073C4A213A1002466D7519D6ED7DEE775AE8548DD7884D20B650482209C4C96904409C5A135F0227A057FF7AD80A5EBD73A7A447466C49880B9080DE12B8E9BBBEC75AA26ED8C4CE';
wwv_flow_imp.g_varchar2_table(64) := '8056444442801100CE0108D808CC144BD6C7CDB6F70FC890C7CA745BF9C42D8340CA911123005A3219D7CC73E5B2CC7137802B1F22964B205EF9180188577BE24DC004263D16948DDEFF8064B76E0BB8568AF32290191E91D50F3F6A4DA64F6DB4262012';
wwv_flow_imp.g_varchar2_table(65) := '020927800048F80980FBEE044A958ACC9A2B49F71422C38F3E668B0E679C2E953757C7D57C41AABABEC1F8291A164E6B6B5B954EC96A330A503BF25AA8EE09605BBC792D15BF21E09F40DC522200E2D6A2F8131801ED406CFD62E79A75D2B1694B60F5D5';
wwv_flow_imp.g_varchar2_table(66) := 'ABA0CA95CB92DFBD4BCE7FECC332FEEBBF26FB7FF583B2EB83FF4EDE34C71BFFE1DF98F7FF5E0EFCBFBF24E3BFF5EB72E1B37F2EF95D6F4BE5F2E57A991358B91DDB77484B5BBB6B797923DE72EC09E0CA87080820003807205083802E20BBA257C735E2';
wwv_flow_imp.g_varchar2_table(67) := '168206B66C91CCE8E8C2C770BD56AA523C755226FEEC93B2DB74FA2F99E35B5FF89C8CBFFAB29C7CEB4D39B76F8F5C3EB85FAE1C3C20E7F6EE96136FBC2EE32FBD206F7FF2E3F2DC2FFD07D9FD1BBF26673FF719299E3C112EBF165993EAE894D50F3EB4';
wwv_flow_imp.g_varchar2_table(68) := '28E4E6B7A56AD5F3D1CD37E7E013046C04E2178700885F9BE25100048AA603D505806E45392662F0AEBBCDEFF0FD2F9D3D2B673EFB67F2CABFFFB7B2E7D39F92F3A6932FCDE6FC1B6A3A4ECDB3FB131F95D77EE59764E2739F96F2F9F3FEF33728A5EE0C';
wwv_flow_imp.g_varchar2_table(69) := '386411006AC654B1A42F1C1080400D0208801A500882802E20AB5826C6D3998C74876DF19F99D79F3257F7AFFECA0765AFB9F29F9B5CF9307EEEFC59D9F3898FC96BBFFC41B9F2EC33A13B31BAEFBD4FC4513926357F741AA0A06B1C6AC6120801FF04E2';
wwv_flow_imp.g_varchar2_table(70) := '98321547A7F009022B2530ED31773C7CCF7DD2323CB2D26A02CB5F9D9B93335FFC0B79F5D77E4972A74F0556EE4241D3A74EC85B7FF07B32F1975F90AA079B853C8D78CD0C0D4BF7E86AD7AA740DC754D1FE1447D7CC444020E6041000316F60DC5B3A81';
wwv_flow_imp.g_varchar2_table(71) := 'A2B9629C2D95AD1907EFB95752DDDDD6348D8AACCCCCC851335CBFF7A37F2A55637BBDEA2DE7F3B2E7231F92A31FFE1351C151AF7A9652AE934ACBD893EFB366D1AD81754D8735119110B01288672402209EED8A572B20A0F3C62A026C45F48464FEBF6A';
wwv_flow_imp.g_varchar2_table(72) := '3AE5637FFE4919FF9B2FDACC0D346EFC4B7F2DC73FF5F140CB5C766166F47FF0E14724E5B87F95E90880577B2EBB7E324220C204DCFF6A22EC14A643602504B4C3B0CDFFF76FDE22AD03832BA92298BC95AA9CFBC6D764FCAFFF2A98F29650CA112338CE';
wwv_flow_imp.g_varchar2_table(73) := '9AE9802564A95BD2B60D1BA5BDABD3B5FC72B5CAAE80AE7488F04320AE691000716D59FC5A3601AF7BC787B6ED10DD896ED9150494717ADF5ED9F3A77FECBBB48EE111D9F4BE6F93077EF4C7E4B17FFEF3F2C42FFCE2FCA1EF354CE3DA4D1A3F05EA54C3';
wwv_flow_imp.g_varchar2_table(74) := 'BE3FFB844CBFFD969FE4754D936A6B93E17BEFB7D63153621D801510918924904AA4D7380D011702BAFB9FD77071FF5D778998A16769E24FF9D225D96B3A7F3F0BF23A8787E5EE1FFA9FE5819FF84959FDD84EE9185B2B99F60EE382337FE87B0DD3384D';
wwv_flow_imp.g_varchar2_table(75) := '73D70FFD4FA279C4E347D704ECFBE887A5925BC22D861E652E2BDA7164E8B1C7AD59BDD674583313997002F1751F0110DFB6C5B365109829952D37FF89B40D0C48C7E6ADCB2839D82C175F7D59A68E8D7B16BAE6FE07E4BE9FF829E9DDA2363B9EE91D23';
wwv_flow_imp.g_varchar2_table(76) := '09FAB66C9BCF3366F27A65B86A6C38FF8DAF7A25AB7B7CD73DF789934EBBD693AF54CC34807D61A76B662220105302088098362C6E2D8F80DEFF6FCB39603AC7F4D0902D49DDE34AE7CEC9619DF73773DBB6CA363FF1A46CF8AEEF315DBA634B5633CE31';
wwv_flow_imp.g_varchar2_table(77) := 'B9369ABC9B9F78A266FCE2C0837FF179293779EBE04C7FBFF4AFDFB0D8AC9BDE972A559909D1ED8B3719C787501388B371088038B72EBE2D89806E18E3D5490CDE7D8F38D9EC92CA0D3AF1E5B7DFF4BCD77FFD830FCAE8134FADB8EAD127DE27EB1E78D0';
wwv_flow_imp.g_varchar2_table(78) := '5A4EDE4C479CFFC6D7AC69EA1EE938B2FA51F76980AA19D7D1DB01EB6E0715402042041000116A2C4CAD2F01DD352E5FAEB85692319D4C9F8F6171D7020288A84C4DC9A9E79EB596D43332226BBFE3BBAD699612B9EE3BBF5B7A3C16079E7EF185A51459';
wwv_flow_imp.g_varchar2_table(79) := '97B4038F3C26A994FB575ACE8C00780C9AD4C52E0A8D328178DBEEFED7126FBFF10E02B711D0CEBF62AE146F8BB81E30B0759B64BA7BAE7F6ACE4B71E28C5C3D75D25AF9468F8D71AC995D22373C651F4D989C382D450FBB5C8A0E2C38BB79B364BBBA5D';
wwv_flow_imp.g_varchar2_table(80) := 'CBD3C59DA5AABBC073CD480404624A000110D386C5ADA513982BDB1789F56EDB26FA04BAA5971C5C8EA9C387A470C57D8FFF2E73A5DEB539F84714776FDE2A9DA66C374F2A85825C79F30DB7E8C6843B29E9D9B4C9B52EDD165845806B022220700B81B8';
wwv_flow_imp.g_varchar2_table(81) := '7F4400C4BD85F1CF37019D02B025EE58B55A9CB6E6CEFF5F1D3F6C335156EDB8C31ABF92C8553B76B866AF1AF17475FC886B7C43221C91BE2DDB44CC548DB8FCCC59A6785CB2100C81D8124000C4B669716C290474AFF86245AF11DD73B58F8DB9473628';
wwv_flow_imp.g_varchar2_table(82) := 'A63897B7D6D4B36EAD357E2591BD6BD759B3CF9E3B678D6F4464E7FAF5924ABBDF0EE835CAD3081BA9232A04E26F270220FE6D8C873E08E89561D9637EB875A8F94FFF2BCCDA37DDC9F60FF8F0767949B203F6B2E7A62697577080B93ACD0840DA430094';
wwv_flow_imp.g_varchar2_table(83) := '2AAC03081039454598000220C28D87E9C111D015E265CB12F14C5BBBA4DADB83AB701925554B65C9CFCE5973A69BA202D600001000494441548C9DD6042B88F42ABB606CD3A9801554B1E2AC2D83439249B98F00E4CD5485DEEEB9E28A2820F60492E020';
wwv_flow_imp.g_varchar2_table(84) := '022009AD8C8F9E045400D82600067401605B9B6739F54CE0A41C4959E6B7C5FCE8FDEEE6A52EFFBDCAAE56CAE2583ADFBA18754BA1A96C56BA2C1B3569E79F671DC02DD4F89854020880A4B63C7EDF20A0F3FFB3E6CAF046408D377D9BB688936DAE0090';
wwv_flow_imp.g_varchar2_table(85) := '544A5A3C4448657656EAF553F628BBB5A353C491E6FE98FA3B3DD66AE48D5069AE91D41E7E02C9B01001908C76C64B0B01BDF22F5AE6854D9F22DAA938D9564B298D89CA7A4C43E8AE7CF5B2C4ABECF69EE6EE91B0E077F746F75B01350D23004A810302';
wwv_flow_imp.g_varchar2_table(86) := '220800CE82C413D011003DDC4038E6B2B67D4DFD56D7BBD55B2B3CE33102E0B54950AD32FD865D3D69DF80A8ADAF5FC2F0D3B17E83A45ADCC59A4DEC85C17E6C683E81A4588000484A4BE3A72B019D17D65100B7042947A4A58EABEBDDEAAD15DEE531BC';
wwv_flow_imp.g_varchar2_table(87) := '7DE1D0C15AD90209BB70F080B51CDB263CD68C0147B6E9744D3AE55A6AA9E2B59AC1352B1110881501F7BF9258B98933107027E07545D83E342C298F2B6FF7D2838DE9DEBA5D9C94FB9FEDD5B367257734F80D79A68F1C96A9F3EEF7F9A75A5BA5F77EFB';
wwv_flow_imp.g_varchar2_table(88) := '43838225E15E5A667050D2ADEE1B3655A42AB6111FF79289490681E478E9FE4D921C06789A70024573456843D0BD71A338960EC59637E8B8ECBAF532604480ADDC23CF3F678B5E725CD57498E32FD8CBEC191D95AC875D4BAE7899199C9616E9181810B7';
wwv_flow_imp.g_varchar2_table(89) := '1FEDFC8B96351F6EF9088740DC082000E2D6A2F8B36402458F55E1DD6BD74BAAAB73C9E5D62343AAAF4FC6763E612D7AEAFC7939F974708FE73DF1F5AFC9F4850BEE753A8EACD9F9A48823A1F9E91D5BE36A8B6EF7C04240573C898F4812000440925A1B';
wwv_flow_imp.g_varchar2_table(90) := '5F6B122878DC17DEB9361C0B00178C1F786CA7B48D8C2C7CACF9FAEE5B6FC9C44B2FD48C5B4AE099179F9793DF7ADB9AA5B5B75746BEEF07AC691A1DD9B371A3AB1ED1110DDD10A8D136511F04C246000110B616C19E8612D0FBFF8B1E5300ED6BD635D4';
wwv_flow_imp.g_varchar2_table(91) := '26AFCA5AC6C664DBDFFBFB5EC964FCA517E5F8D7BF6A06F06D4B1C6B17A39DE43193F7E8CB2FD54EB0106AAEFEB77EF7F74ADA8C4C2C0485E1B573E36671BB634269E4CD14808E0484C1566C08138164D9820048567BE3ED2D044AA62328599E0190311D';
wwv_flow_imp.g_varchar2_table(92) := '5CC6329F7C4B710DFB38F4ED1F906E8F87F3A831A7CCD5FBEE8F7D446696B0305017FCEDFEE887E5B4C9AB65D88EAED5AB65F50FFF035B92A6C4B56DD828999616D7BA0BE5B2E86240D704444020010410000968645C7427503257FF7AB8A5E8ECE99154';
wwv_flow_imp.g_varchar2_table(93) := 'DA7D6F79B77CF50E4F0F0ECA8E1FFC1FC5CFCFF4F9F3F2AD2F7C5EF67FF26372FEB5572477FAA4946673F323037AA55F9A9D990F3B67E2DEF9C4C764D75F7EC13EE77FBD525DF97FE78FFCA83821B943E2BA59F32FE9FE01C964DC05808EFAE862C0F9C4';
wwv_flow_imp.g_varchar2_table(94) := 'FC82C07502497B410024ADC5F1F72602FA0020DB95605B778F8819059010FEF47EE0BBE4CE1FFA61DF965D9A989043CF3D2B6FFFD9A7E4D53FF8AFF2D2EFFEF6FCF1EA1FFCFE7CD8611377F9EC84AFF21CC7911D661AA2F7FDDFE12B7DA3133999B4642C';
wwv_flow_imp.g_varchar2_table(95) := '3B3796CDA88F4E0534DA2EEA834098082000C2D41AD8D27002B6E17F3526D3D121B6FBEE354DB30EBDDD6DECC7FEB16CFEFEC62FC05BFBF84E59F393FF44C491D0FEA42DBB01964DEF5F65114068DBAE398625AF560440F2DA1C8F1711289B2980451F6F';
wwv_flow_imp.g_varchar2_table(96) := '7BDBDADB27E284B797735A5B65D34FFDB46CF8C0774A437E0C8B350F3F2ADBFFE52F8AA4C3FDF591B63C3741A73E2A0D01462510082F8170FF0587971B96C584806DF85F5DCC0E0D49980580981FA7B545B6FEDCCFCB9D3FF20FC5A9E3E378D36DED7287';
wwv_flow_imp.g_varchar2_table(97) := 'A9E3CE7FF3FF880A0F5375A8FF672C02400D67044029702C1048E22B022089AD8ECF3708788D00A4B25949B577DC481FD637DA21AFF9473F2E0FFDEFFF42B23A6A11B0A1ED23ABE4C19FFDDF64AD9972107D3842C0E5D7A3B816337D632BB7CC14800D0F';
wwv_flow_imp.g_varchar2_table(98) := '7109208000484023E3A23B01AF4E40D700847DA87BB177FD1FF80ED9F96BBF21DBBEFF07C4B61FFEE23CB6F7ADDD3DB2FD077E5076FEC6EF48DFFB3F604B1ABAB88C8770F36AFBD0398441752490CCA21100C96C77BCBE4EA0E4711598E9E8BC9E323A2F';
wwv_flow_imp.g_varchar2_table(99) := 'BA51D0869FF93979DF6FFCB66CFFDEEF938EDE3E49B7B58993F6BE9D51D3A4B36DD23D36263BBEEFEFCBCEFFF82BB2FEA7FF99A47B7BA303E0BAA55E020801701D142F89258000486CD3E3B812F0E8FF25ED318CAC6584F568D9B051D6FFDCCFCB931FFA';
wwv_flow_imp.g_varchar2_table(100) := '983CF1CBFF49EEFE87FF48D6EE7C4246EEB94FFA376F95B6E111E9185B23FD5BB6C9AAFBEE97B54F3C2577FFD88FCB53BFF9BBF2F8EFFD3759F7CFFEB9B46EDA1C56F73CEDCA74DAA76E10009E08139320A98E220092DAF2F83D4FC071E65F5C7FA53D86';
wwv_flow_imp.g_varchar2_table(101) := '915D338629C2F8D8B675AB8CFEC8FF2277FCDFFF56EEFBE55F93877FFB3FCBFBFEF04FE4C9FFF287F2F06FFDAEDCFB1F7F55EEF857FF5A467FF847A475DD3A11934722FE93F618BD6123A0883730E6AF98000260C5082920CE041CCB76B291F73B069DBC';
wwv_flow_imp.g_varchar2_table(102) := 'AD0DD266F426D3E93E85E37107A8AD68E2624520B9CE200092DBF689F7BCEA8340CAE356321F4590A44904D26604C071DCBFE218016852C3506D6808B8FF7584C6440C8140FD0878AD0148B5B5D5AF724AAE2B81ECEAD562BB65D18F00ACAB81141E0A02';
wwv_flow_imp.g_varchar2_table(103) := '4936020190E4D6C7774F0208004F44A14DE0CC6F05ECB8DAC74640AE68884808010440421A1A3797472035DF892C2F2FB99A4B206DA66F1CCBA6454C0134B77DC2517BB2AD400024BBFDF1DE422095327F1E5EB70958F213D55C024E362B8E63DAD0C50C';
wwv_flow_imp.g_varchar2_table(104) := 'A6005CC0109C1802EE7F1D894180A310A84D4037C56198B8369B2884CE6FE3DC9271351501E08A2631114977140190F43300FF5D09CC2F109CFFE59A84881013A856F4797FEE6B00D474448052E0482A010440525B1EBFAF11B0F40FD572491CC792E05A';
wwv_flow_imp.g_varchar2_table(105) := '09FC0E29816AA120D552D16A1DAD6BC513F348DC4300700E2496807EF9EBE1064087FFB94274A313FEF0CADC9C54CB3A0A50DB565BDBD7CE412804E245000110AFF6C49B8009540BF9804BA4B84611A8160B625BE98F0068544B84B31EAC124100701624';
wwv_flow_imp.g_varchar2_table(106) := '9A80E3E1BD5E457A24213AA4048A972E8958D670388E57EB87D431CC8240400410000181A4987812A8CCCEC6D3B10478559ABC620480FB1480658B8004D049BA8BF8AF0410004A8103022E0410002E6022105CCECD48717ADAD552471CD7382220900402';
wwv_flow_imp.g_varchar2_table(107) := '088024B4323EBA12701C7B27506604C0955DD8234A33B9B09B887D4D2240B5D7082000AE71E077420978FD0154F2730925137DB77504C0E6855DFAD9721207817810F0FAFE8B8797780101170229AF110004800BB9F00797E7EC7770A4534880F0B7623D';
wwv_flow_imp.g_varchar2_table(108) := '2CA4CC050208800512BC269240CA4B00308C1CD9F3A23C675FC099F668FBC83A8EE110F0490001E01314C9E24920E3D1099473CC2347B5E58B1E6D97B63C2828AA3E63B7370152BC470001F01E0BDE259040469FF867F1BB989B91CA94FB4A724B56A29A';
wwv_flow_imp.g_varchar2_table(109) := '4CA0E42100BCC45F93CDA77A08D49D0002A0EE88A920CC043229FB3C70FEE205633E1B021B0891FBAFE2CD66346B006C74E21A875F8B09200016D3E07DE208785D05CE9C3A25B6DDE412072C2A0E57AB529C9EB25A9B621F002B1F22E34F20157F17F110';
wwv_flow_imp.g_varchar2_table(110) := '02EE04D2661ED83606303779452AA5927B01C4849240652627C539F75B38B5CD53FA2B94D66354BD0850EECD04100037F3E053C208E830B063B9122C148BC2F300A27752942E9C9352A9EC6A78CA31AD6E0ED704444020010410000968645C7427305530';
wwv_flow_imp.g_varchar2_table(111) := '1DBCB8CFF1172A15299C9D702F80985012C8BF7B5C2A65F7919BB29922982C1442693B46D58B00E5DE4A0001702B113E278640CE0CED5FCCDB378B5118F97367F585234204664F9D9492C74640174CFC9419E189905B980A814009200002C549615121A0';
wwv_flow_imp.g_varchar2_table(112) := '5FFC47A6A645AFF0BD6CCE5F382F551F42C1AB1CE21B4740176F562D233B6A89B6FDF1E919992EBA8F14683A8E7810C08BDB0920006E674248CC095C35C3FE2767725231C3C07E5C9D3E7952AA0C17FB41159A3433E7CF7974FFD74CD5A9001501571909';
wwv_flow_imp.g_varchar2_table(113) := 'B80684DF89228000485473E3AC0EFB9F309DBF5EFDF9A53179F08088992EF09B9E74CD2550AD54647AC2FFBA8D52B5222A081909686EBBD5B7764AAF450001508B0A61B124A057FE47CDB0BF7EE12FC5C1C2CCB45411004B41D6D4B495A92929581600D6';
wwv_flow_imp.g_varchar2_table(114) := '32AE6844C3B1E969D1A9A15AF18441208E041000716C557CBA8D805EDD9DCAE5A4E473D87F710125D3F9576338445CAD985972D3F12DF6350EEFCB57AE48B95C59B22B3A1DA023014C072C195DE83360606D020880DA5C088D11815CA92C3ACFBB9461FF';
wwv_flow_imp.g_varchar2_table(115) := 'C5EEEB5A81E2E9538B8322FD7E6EEF1E19FF4FBF2A6FFCEC3F95577FEE67E488799FD7698E487BF59EF1F963E35235C3FAEF85F87FA7E7C889E9199931A2CF7F2E5242209A041000D16C37ACF64940AFE68E9BA1DDD2323B04AD46070D0A97F49900FA29';
wwv_flow_imp.g_varchar2_table(116) := 'DAC7EC9EDDF2F207FF9D8CBFF68A5CB97841A62E9C93A3E6FD6BBFF241C9EF7F27DACE5DB73E7FE28454CBEE9B005D4FE6FA52320DAE53454C07B8228A5804E6BA114000B891213CF20472E62AEED41217FCD572DA0C94CBEC990989C33A80939FFB8C94';
wwv_flow_imp.g_varchar2_table(117) := '6A0CFBCFCDCCC8C4D7FE4E56D271D662D78C30DD0360A57E2C4C0720029AD182D4D9280208804691A69E8612D021DCF1A9695FF7F93BA994B4A4D3E2F6A3FB044E9F325795B959B724D108371DFFE5F1C3AEB65E397552CA972EB9C64725223771C66A6A';
wwv_flow_imp.g_varchar2_table(118) := '4B478765F3E7F7B2EA74C071A603DE0312D17798ED4E0001E0CE86988812D0617F9DC7D5AB382F17DADBDA64F3633B65EDD66DE2388E6BF2F3BB7749752EDA02A05A32C3E26678DBCDC9A99327A5321B6D1FF50E801933B5E1E6A3E33832B6E34EB9E3FE';
wwv_flow_imp.g_varchar2_table(119) := 'FBA5BDB3D32DD98D703D878E4DCD7077C00D22BC89130104409C5A135F24673A391DF6CF9BAB5D2F1CADEDEDB2F9E1476470F56AE95FBF5EDABB7B5CB3CC150A523057C8AE09A21031DFF9BB8B1CBDDB4156B056220C08E60EEE9759D3566EB67475744A';
wwv_flow_imp.g_varchar2_table(120) := 'FF9A31E9D9B445363DF09064B36D6E496F84970C13BD3B2067A6946E04F226220430D346000160A3435CA408E87CAD2EDED2A15B2FC3B3D9ACDCF1F84EE95AB5CA5CF98BB498ABC18EBE3ED76C7A25983F7ECC359E88701098FAD6DB92B7DCB2D9D1DB2B';
wwv_flow_imp.g_varchar2_table(121) := '2D2DAD222947BA578DC88EA79EBAF6D9C37C3DA78E9A910044800728A223452015296B3116022E04E6EFF39F9915BD5A73497223B8DDCC016F7BF229691F18B81126A99474F52FFAFC5ECC8D7753470E4B657AFAC667DE848FC0E57D7BAC5B3C77F5F589';
wwv_flow_imp.g_varchar2_table(122) := 'E9FB6F18DE6E3EEFD8B9D3D774809E5BEF4EE77876C00D7AE17F8385760208003B1F62234040AFCA74B156BE62E6B83DEC6D359DFFD6471F97CEFEFEDB52D60A5B9CE8A2AE03C8E51607F13E4404AAB3B372F58C7D0BE04ED3E1DF6A72E7F0B06C7EF021';
wwv_flow_imp.g_varchar2_table(123) := '69F5311DA0E7D88999199935534DB796C36708448D0002206A2D86BD3711D0057FDAF9EBD5D94D11353EB4B5B7CB8EC79F908EC1DA57FAAD5D5DD29A69A991F35A502E3723A50BE7AF7DE077E80814C78F58E7FF5BBB7BA4B5BBBBA6DD5D23237287990E';
wwv_flow_imp.g_varchar2_table(124) := 'D0A9A19A091605EA7480DE61A2779A2C0AE66DE80860901781945702E221105602FA05AC0BFEF40BD9CBC66C7B876C7BF27DD2D1DFB012BD410000100049444154E79A3493C948774FED0E423315CA15C91D1DD7B71C61235015C999E1FF926503A02E23';
wwv_flow_imp.g_varchar2_table(125) := '005296AB7C9D0ED8BAF349E97011098B5D56C1A90B0375EA697138EF21102502A928198BAD105820A0C3FE477DDEE79FEDEC3457FE3BA5A3D77D95BF969B4A39D23D38A46F6B1EE56A45A6CC55667576AE663C814D2450ADCA953DBB8D01460998DFB5FE';
wwv_flow_imp.g_varchar2_table(126) := '770EF48B9349D78ABA11D6654687B63CF4B0B47678DF223867C4868E3EE9EB8D0278131A0218E24D0001E0CD88142123B030EC5F365FFA5EA6E9BDDEDB1EDF29EDE6CBDF2BADC67799F9602755BB93D0AEE5E2EE6F49657A4A9372848840B59097CBC78E';
wwv_flow_imp.g_varchar2_table(127) := '8AB6512DB3D28E117735D67DD44ADB313828773CF1A4B465B3B5A26F0AD391009D0E6024E0262C7C8808010440441A0A33AF11C895CAE277D8BF5517FC3DF53EE9ECEBBB96D9C7EFB6FE0149B7645C534E5DBA2495CBD1DF2DCFD5C188461427CEC89465';
wwv_flow_imp.g_varchar2_table(128) := '81664B3A6DDDE7E156B7DBCD68D1D6279E92F62EF729A1853CC54A45743A40A7A416C2786D3601EAF7430001E0871269424120572A89DF61FF7633DF7BA7CEF977752DC9F674B655DA3BDDF3E8977DE1E4BB4B2A93C47526602EFB67F7EE9182199277AB';
wwv_flow_imp.g_varchar2_table(129) := 'A9CD9C0F9956F7059EB5F2E994C1D6871F96363385542B7E7198DE1DA0E726D3018BA9F03EEC0452613710FB20A004F2E6CB5DAFFC75C8553FDB8ECEEE6ED9FAD863D2D6E37DF556AB9CCEDEDE5AC1F361A6AF91E92347E6DFF32B2404AA15B96AA6666C';
wwv_flow_imp.g_varchar2_table(130) := 'D6749BA91D7196FE75D761A603B63DFE84E81D24B6F2354EA7A44ECCE444CF55FDCCD13C02D4EC8FC0D2FF22FC954B2A080446403B5DFD62CD1911E055685687FD9F789F74583A71AF32BA070624258E6BB22BE347A47CE1826B3C118D25502D14E4F2A1';
wwv_flow_imp.g_varchar2_table(131) := '83AE953AA994740D0D89A549C5F6D3D1D72BDB9E7852DACD28822D9DC6E928D599DCAC7533224DC7018130104885C1086C80801B01EDFC4FCECCC88C19FE774BB310DE69BEA075D8BFADAB63216859AFFA45DF9249BBE6BD70E4B094CC9CB36B02221A4A';
wwv_flow_imp.g_varchar2_table(132) := 'A078ECA84C5FBDEA5A673A93916C7FEDBD1F5C33DD12D1D1D727DB1F7E44DA7BEC779268B6C9625154B0EAB9AB9F391A4D80FAFC1248F94D483A083483C0B9D939B9942F7856DD6186FD373FF6B8647BBA3DD37A25D039DFCE8141D76473468C4CEF7ADB';
wwv_flow_imp.g_varchar2_table(133) := '359E88061230BDEC95975F14DBC39FBA3A3AA5A5B575C546B50DF4CB96471EF5351D70C58C4A5C9CCB0B3F100833010440985B27E1B65D361DFFC4ACF7E369DBBABA64C7FBBFC30CFB7B5F9DF941EA98CEA2DB22004C9F2397F6EE91F2C58B7E8A234D1D';
wwv_flow_imp.g_varchar2_table(134) := '09E8ED7F132FBD203AFFEE564DDFF0B0A4DC6774DCB2D50CEFD4918027DF275973CED54CB028F0742E272A041605F1B60104A8C23F0104807F56A46C20015D48A5B7567955D96EAEEEB63FF194B42E7185B7B55CD359F48C8D5993E83440F9CC296B1A22';
wwv_flow_imp.g_varchar2_table(135) := 'EB4F40B7FFBD6C1162A974467A57AD0AD410BD4550A703B296BB45B442158ABA1E40EF1CD1CF1C10081B010440D85A047BE63773396F864F2BF3EFDC81E8DCEEC6FBEF97F66EF7DBF6DC73DB63DACC5C6FA7E5F6AF3933CFAB8F9EB597426C5D0954AA32';
wwv_flow_imp.g_varchar2_table(136) := '6D86FF4B958A6B355DFD7D921D1C748D5F6E84DE1DA0E75ECAE3CE02DDA6FA746ED6E34C5EAE15E4BB9D00214B218000580A2DD23684C0B4E95C2F9B3954AFCAB63CF890F4AC5EED956C59F12933663CBC769D6B5E1D72BEB08F690057400D88A8160B72';
wwv_flow_imp.g_varchar2_table(137) := 'F6B557AD9DEBC0AAD5E2A4D375B1A66F7454363DF8A067D93A0DA0770778262401041A4C0001D060E054E74D60C25C31553CB6F95D73C79DD26FE9A0BD6BF14ED167CA4F9B2164B794E78F8C4BF934D3006E7CEA1D5E3872582E9D3FE75A4DC65C9DF78C';
wwv_flow_imp.g_varchar2_table(138) := '063BFC7F6B65831B36CAE896ADB706DFF6F9BC19D1AA7A9CD3B7652260C904C8B034020880A5F122759D09CC5F2D79DCEF3F34BA5AC68C0058EE7DDD7E5DC89A6900DBF442BE9097E96FBDE5B738D20549C00CFB5F7DE525B1EDBCD73330206DDD2BBF2B';
wwv_flow_imp.g_varchar2_table(139) := 'C466B6E388ACBBE71EE95B6D5F33326946B4FC8C6AD9EA220E0241134000044D94F2964D4087D575D194AD804C7B87ACBFEF3ED1217A5BBA40E2CC97FBD0D81AD7A27491D7E577DE91329B02B932AA5744B55094F36FBE6E1DFE1F5CB75E9C54FDBFE252';
wwv_flow_imp.g_varchar2_table(140) := 'E9B46CB8FF01D13529367F2766E7D820C80668C57114B05402F5FFEB58AA45A44F2C814BF9BCE8A2291B80B1AD5BA5C5C72D58B6329612A75BC8B6B6665DB35C3C7E548A278EBBC613511F02C5F1C3727962C2B5F05426235D63AB5DE3838E68EB689775';
wwv_flow_imp.g_varchar2_table(141) := 'DBB65B8BD5BB01FCEC69612D8448080448201560591405816513D0A15C9D27B515D0D6D12523EB37D892041ED7D63F203D83EEBBC84DE766E5EA6BAF065E2F055A0898E1FFC9575FB66EFED3D7D72F2DD9364B21C1470D6DDD2E2D6DF63ACFCDCD890A81';
wwv_flow_imp.g_varchar2_table(142) := 'E06BA744082C9D000260E9CCC851070297F305CF2F469D6BD5A7F5D5A17AD722532947FA47475DE3F556C52BC7C6A57CE9926B1A22822550352345675F7FCD3A9C3E68AEFE1D3385136CCDF6D2D22D6959BB6387359176FE8C02581111D94002088006C2';
wwv_flow_imp.g_varchar2_table(143) := 'A62A7702578B45F74813D36DAEE8FAD6B8CFC79B2475FBDF35322A8EE3DE9B5C7CF784948C08A89B01147C1381C2F811B970E6CC4D618B3F64DB3BA4C7B4D9E2B046BD1F5AB75E7A2CBB48AA1D7A9BABBE72044980B296430001B01C6AE40994805E15E9';
wwv_flow_imp.g_varchar2_table(144) := 'CE7F6E85EA42AEB5DBB689B918774B52D7F0968E0EE9D3A7C9B9D492CBCDC8E5E79F1329BB6F48E392B5B1C1A95463EBAB436DD55249AE3CFFAC94AAEEAC7B868724D3D35D87DABD8B4CB5B6CAEACD9BAD09759D4B3EECE78AD50322E34220FADF087169';
wwv_flow_imp.g_varchar2_table(145) := '8904FB912B95ADABB9DBBA7BA56BA4BEF773DBF0EBC5FFD0FA0DE23606A077039CDABB474A615F0C68E9346DFE8729AE72F1A29C78E669AB497DA3ABADF1F58EEC32F567B359D76A4A95AAAFA75BBA1640C46D0408581E0104C0F2B8912B2002DA794E97';
wwv_flow_imp.g_varchar2_table(146) := 'ECC3FF7D830392CAAEFC696E2B31B967F5987551D995F3E764E69597575245FDF32AECFAD752D71A269F7F4626E7DC9FB2D7D69A95AE01F7459B7535EE7AE1E9968C0CAE1AB9FEE9F6175D37C234C0ED5C08693C010440E39953E32202A54A4572C5F2A2';
wwv_flow_imp.g_varchar2_table(147) := '909BDF3AE66397C79CAA4952F7FF99D616E9B1EC29AF7DEB99D75E91CAD5AB75B725A915546666E4E473CF9AD122A55D9B42FF1A23D4DA3B6A473628D4711CD18D81F4DC75AB72C64C65B87BE1968BF0DA04085D2E81D47233920F024110D0F9D059CBCE';
wwv_flow_imp.g_varchar2_table(148) := '7F2DE9B474F4F70751D58ACB185C6FDF58E6FCC91332F3E2F32BAE87026A13987BFD35B974E2DDDA91D743756B5ED3FF5EFFD4BC97F6C161EBC640BAEEA56CA6029A67213543400401C059D05402FA455835D7746E467499E1DCD636F7F954B77CF508EF';
wwv_flow_imp.g_varchar2_table(149) := '1A1E96DEA161D7A2F385829C7DE179D15DEA5C1311B12C02D55C4ECE3EFD552959F6D3EFEC1F900E73BE2CAB82803365CC39DBD6D9E55AAA5EFDABF8754D40846F02245C3E0104C0F2D991330002258FABA00E732595B23C902700137C1791696991E18D';
wwv_flow_imp.g_varchar2_table(150) := '9BACE927C68F4861D7DBD634442E9D407EEF6E39B1678F6BC6542A35BFFADE714DD1F888768F3B11BC1E78D5788BA93169041000496BF190F95BF25899DED6DB239272426375EFEA5169B5ECF636379B934BDFFCBA58063542E34B540CA9CECDC9A5E79F';
wwv_flow_imp.g_varchar2_table(151) := 'B56E13DD69AEFEFB9BB44F841BC76C57B75BD47CB8D7B93F9F885F1E04885E090104C04AE89177C504AC23006632B7A5A575C5750459403A9D96318F3DDF4FEFDD2B85FDFB82AC36D165158F1F93775F7AD1CA6064E346D1FDFFAD891A1CA9E78AAD4AEB';
wwv_flow_imp.g_varchar2_table(152) := 'B96FCB481C0402228000080824C52C8F803E01D02DA7E3389236C3EE12B29F41330DD0D1EEBED2FCF2E415B9F2FC3321B33ABAE64CBEF292E42C0B45DB3B3BA577D5AAD039D8D2DA62B549D7BF581310E94980042B23800058193F72AF9080D73C68D8AE';
wwv_flow_imp.g_varchar2_table(153) := 'EAD4DD4C4B4686D6AFD7B7AEC7D9B7DE94D2A993AEF144F823503A7D4A4EBEFCA275DFFFD1CD5BC5EB213CFE6A0B3655BAC5BE78952980607953DAD209200096CE8C1C0112B00900C77124653A5B09E1CFE0BA75D26A1905B874EE9CCCBCF842082D8F96';
wwv_flow_imp.g_varchar2_table(154) := '4939BDF5CFF2D8DF8C9922D25BFFC2E8950AC5AC65BD884E01942AEE5B1A87D1A770D984352B258000582941F22F9B80DE0AA5876B014E4A9C54DA35BA9911AD3D3D32BAC97DCF771DDE3DF5C27352B5EC5AD74CFBA35077D988A833CF3D635D4F39BC76';
wwv_flow_imp.g_varchar2_table(155) := 'ADA45B33A17427954E5B778FD4E9AF92E5B6C6503A8551B122908A95373813290255F3E5671300A99423E29843C2F933B871A331CFDDBE73274FCAF497FF3A9CC647C0AA1933F47F7AFC88ABA5ADD97619D9BCC535BED911A996164967D2AE66A800B08D';
wwv_flow_imp.g_varchar2_table(156) := '80B96624629E00BF564E20B5F222280102C924D09ACDCAD0DA75AECE972A6579F7EB5F95B26508DB3573C22374FDC4B1BFFBB26827E9866270F5A8CCDF26EA96A0C9E12DEDEDE2987F6E66E828914D00BBE5231C0241114000044592729247C01159B56D';
wwv_flow_imp.g_varchar2_table(157) := 'BBA453EE7F46674F9F964B8C022CF9DC987CE69B72C1B0B365D4AD996DF1CD8E73CC14969873C4CD0E3300267AB8C5136E23405C1004DCBFB982289D32201073021DBDBDD267D97E5687788F3FF38C948E1D8D3989E0DC2B1E3A28479FFE9A542CB3FFC3';
wwv_flow_imp.g_varchar2_table(158) := '6BD64A87857B70D6501204E24B000110DFB6C5B30610D0250AA35BB65A6B9A9C9C940B5FFC4B6B1A22AF11A8160A72E96B5F912B172F5E0BA8F15B2FAA5719E68E65E4A54636826244005782218000088623A5249840E7AA51E91F5DED4A401F767444B7';
wwv_flow_imp.g_varchar2_table(159) := 'B2DDB7D7350D11D708E4F7BF23E3CF3E73ED83CBEFEE8141E91C1C748925180210F04B0001E09714E920E042C0C9A465EDD66DB6E95E992D1665E2F39F762981602530FFC4BFBFFD6B99C9E7F563CD239D69917577DF2D56D8C24FBC09E05D5004100041';
wwv_flow_imp.g_varchar2_table(160) := '91A49C4413E8181E9291F51BAC0C4EECDA25B3AFBE6C4D93E4C8B95D6FCBBB6FBC6E45B07AC306E91C1EB6A621120210F0470001E08F13A9206027E0383276D7DDD2D69A754D375B2AC989CF9951008F4720BB1610E388CAE4A4BCFBB9CF48DE307273B3';
wwv_flow_imp.g_varchar2_table(161) := '25DB26C39B3673F1EF062821E1B8191C81547045511204924DA0B5A35DD66CB16F4C73F2D06199F9C657930DAA86F7B9375E9393E3E33562DE0B5A7FE75DD2DAD3FD5E00EF20008115114000AC081F99217033817E23003A7B7A6F0E5CF4496F6D1BFFEC';
wwv_flow_imp.g_varchar2_table(162) := 'A7A53A3BB72834D96F75CBDF77FFE27352ADBAEF8BDFD3DB27439B36251B14DE8B08108224800008922665259E40BAB555D6DF7D8F19A6D69BD56AE33877EEAC4C7DE9AF6A47263074F299A745374C72733D954AB1F0CF0D0EE11058010104C00AE09115';
wwv_flow_imp.g_varchar2_table(163) := '02B508F48CAE92D10DEB6B45CD87E9F6AF87BEF039294F9C99FF9CE45FC5C387E4D0DF7C51CA96A7E28D8CAD91CED1D12463C2F7EB04780996000220589E94060111C791911D77494BDAFD413057723939F6FBFF45CCB8B724F5A73A9393131FFD5399BA';
wwv_flow_imp.g_varchar2_table(164) := '3AE98A20D3D22AABCDDCBFFB788A6B56222000010F0208000F404443603904DABA3A646CD366D7AC3A0A706CCF6E3315F0D7AE69E21E71F94B5F9463FBF659DD5C7BC70E69EDEEB2A621322904F03368020880A089521E04AE1318D9B65D3ABADD57AD57';
wwv_flow_imp.g_varchar2_table(165) := 'A52AFB3FF571291E3F763D47725E0AEFEC932366E8BF5229BB3ADDDDD129431B58F8E70A880808AC900002608500C90E013702A9F63659BB7D87A4C471361AA4A700001000494441544B2293662AE0D487FE48AAC5A26B9AB84554E7E6E4E8473F249396';
wwv_flow_imp.g_varchar2_table(166) := 'A17F25B6E6EEBB25DDDA1237F7F1679904C8163C8154F04552220420B040A06F6C8D0CAD767F4E80A63B6AA60226CD70B81910D08FB13F2E7DE1B372E2E041AB9FABD6AC919E356BAD698884000456460001B0327EE486809580D392916E8F15ECE56A55';
wwv_flow_imp.g_varchar2_table(167) := '767DFC63523874C05A561C22E78CD839FCE52F792E7EEC1A1C1227A5E30071F01A1F564E8012EA4120558F42291302105844209359F4A1F6DB42B924C73EFAA7A20FC4A99D22FAA1BAF9D1D13FFD63999A9AF274A69A72BF83C23333092000015F041000';
wwv_flow_imp.g_varchar2_table(168) := 'BE309108024B27A05BFE9FD8B74FC65F7FCD57E693EFEC93CB7FF7B79E57C7BE0A0B61A2F39FF9A49C397AD49765E3BBDE96137BF74A5521FACA41A23813C0B7FA104000D4872BA5269C40A95C91E36FBD29A7F7BF235533C4EF0747C5A47BE7931F97C2';
wwv_flow_imp.g_varchar2_table(169) := 'C1037E92472A4D7EDF5E39F0E5BF15DD0AD98FE1D54A454E1FD82FC776EF9672821648FA61431A0804450001101449CA81C07502A562490EBFFC929C3BE6EF6AF77AB6F9177D62E0F8C73F22151FC3E4F31922F0AB3A3B2B077EFFF7243FB7F4E71F9C3B';
wwv_flow_imp.g_varchar2_table(170) := '72480EBCF6AA14F38508788A89F52140A9F5228000A81759CA4D248199CB5764DF334FCBE4D98965FB7F72EF1E39FF377F251287E16FE3C3692368CE9F3EB56C1E531313B2FFB96725377975D96590110210B89D0002E076268440605904A62E5E9283AF';
wwv_flow_imp.g_varchar2_table(171) := 'BC24B35757DE51EDFBCC9FCBD48BCF2DCB8E3065BAFAB5AFC8A1AF7E65C57738E6AE4ECA81175F90A973E7C3E41EB634800055D48F0002A07E6C293941042E9C3829EF3CFFAC1472B940BCD65B03BFF547FF4DE6CC6840200536A190FCC103B2EB231F92';
wwv_flow_imp.g_varchar2_table(172) := '52A91448ED85D99CEC7FE945B978EA7420E5510804924E000190F43300FF5744A05A1539BB7FBF8CBFF19A54CBEEDBDA2E54A277B60F66B332DADE2EBDADAD0BC1355FE7A6AECAC13FF9EF525AC1F079CD821B1058BE62A6427EE737656E76D65A5BC649';
wwv_flow_imp.g_varchar2_table(173) := 'CDB3E8F760B15048A55C92236694E58C615E31D30B0BE1BCC695007ED5930002A09E74293BD6042AC5921CDFB54B8EBDB34F74D5BA97B3DAF90FB7B5C9DACE0E59D5DE266B3ADA453B405BBE73C78ECA894F7D22528B02ABB37372F8777F532E9E3F6773';
wwv_flow_imp.g_varchar2_table(174) := '4D5A5229D9D2D335CF62DD7526D60CD7238DE69277F7ED95937B764BB9E42DBAAE67E3050210B8850002E016207C84801F02F9D9BC1C7EE375397BE490880E0378644A398EACEFEA94D5A6D35F48AA1DE0DACE76EBB30234EDF80BCFC9B9BFFC8254031A';
wwv_flow_imp.g_varchar2_table(175) := '4AD732EB76985190339FFC889C309DB3571D6B3A3AA42D7D6DC31FC771E64702361846CACA2BAFC69F397C480EE91D024688E9678EF811C0A3FA124000D4972FA5C790406E6A5A0EBFF89C5CF63934DF6AAE74379A8EADAFC630B74E030CB765AD94F48A';
wwv_flow_imp.g_varchar2_table(176) := '77DFE73F2BD32FBD604DD7F44863E8E4334FCB3B5FFA92A7293A12D25BE3413FCA684367A7F8150193674ECBC1E79FE30E014FE22480C0ED041000B733210402AE04AE9E3F2FFBBEF9B44C4F4EBAA6591C913557B89BBBBBA4BBA56571F04DEF57995101';
wwv_flow_imp.g_varchar2_table(177) := '5BBC26D60D7476FDC97F97B9DDBBF463288FB9FDFBE4ED3FFA43332052B1DAD761982C1E09B935718F1106DB7BBA25EB733BE0E9CB97E4C02B2FCBD4D9B3B716C5E74813C0F87A134000D49B30E5C786C08553A7E5C00B2F48B9E86F531AEDD4B7694766';
wwv_flow_imp.g_varchar2_table(178) := '3A3C1B04C744AE3773E03A5260DEBAFE9FBD7A55F69A0EB674EAA46B9A6645942F5F966F9979FF623E6F3541D73CAC31BEAACFB684F3C2A9A74B7A2DC26971FEC2F494EC7FF515B974FAF4E260DE430002160208000B1CA220A004748AFFF4810332FEEA';
wwv_flow_imp.g_varchar2_table(179) := 'CB52A9F85B74D66B86FB37992BFFB499DBD632BC8E8C9926D03B03BC86BE2F9F3C21E31FFDB0548C18F02AB351F1955C4E0EFDE7DF92A98B173DAB1C69CF4A878F872369412A8874DD84DE21E02518347DA5589443BA03E3A143FA9123E20430BFFE0452';
wwv_flow_imp.g_varchar2_table(180) := 'F5AF821A20105D02E562498E9961F7137BF798A16D33C9EDE18A7654ABDBDB45E7FCF5BD47F29BA2FBB3ADB2AAADEDA6B05A1FDE7DED1599F8FC67A55AF0371271A38CA51A7423A3FB1BB5E1F4A73E31BF22DF3DD5B518BDFD51E7FEAF7DF2F75B05918A';
wwv_flow_imp.g_varchar2_table(181) := '009D32F06BFED13DBBE5F85B6F4999DB04FD4126556209200012DBF438EE45A05428CA9137DF907387FD5D51EAF0F65847878CB47B77E26E750FB565A5C7C7B0F73B7FF51772F6F39F91EA52F6D777522BDE914F16FDE81EFFE78C1039F0A52F2E0AADFD';
wwv_flow_imp.g_varchar2_table(182) := 'B6CB5CF5EBD07FED58EF50150E7A878032F64C6D866C268E8ECBB1375E978211709EE94910420298D4080208804650A68EC811989B9A967DCF7E532EFB9C6FD78E699D99DBD60E7C25CEEA15EFBAAECEF97BE46DE5544D57BEE7D37F26E3FFF5FF93D219';
wwv_flow_imp.g_varchar2_table(183) := '33EFEDE76AD7112959EE9B37D122E98CADDA6B71958A942F5D9223BFF7BBB2FBD39FF21C19C99AE90DDDFBC0B9967BD9BF755A4545403675EDD641AF822E9C78570E9A36CC4FCF7825251E02892480004864B3E3B48DC0D5B3E764FFCB2FFADED35FAF6E';
wwv_flow_imp.g_varchar2_table(184) := 'B7F5764B4FABFB4A7F5B7DB7C6651C47D6EBAD70E2DD651E7DE17979E95FFFA29CFAF34FC895975E90D96347A5343929C54B976F1CA5CBE6BD39AA6604606E2E776B75373E972B6529964A529E9991D2A2FCF3659D3F2FB3478EC895179E93E31FFBB0BC';
wwv_flow_imp.g_varchar2_table(185) := 'F87FFD0B39F6F2CB37F2BABD718C0F6B8D2FBAA8CF2DCD52C2BB5A32B2DDB0EE34230A7EF2CD1816FB8DCD577DAC4FF0531E691A43805A1A430001D018CED41201023AC37FF9D46939FCFA6B929F9AF265B12E50D32B765DB0E62B83CF44DAD1ADE96CF7';
wwv_flow_imp.g_varchar2_table(186) := '955A6D7DE7337F2EAFFFD6AFCB0BBFF07FCA37FFC98FCB333FF353378E6FFEAFE6FD4FFFA47CE31FFC901937702FB2522CCA4BBFF07FC8D33FF1A3F2CD45F9E7CBFAD97F2A2FFCAB7F29AFFFCE6FCAA1BFFC82E427AF88D78F63128C9AE910F5C5BC0DEC';
wwv_flow_imp.g_varchar2_table(187) := 'BF8E92E802CB5AFB08D4AA64CE089AC32FBE28174F9FB1FA5F2B2F611088330104409C5B17DF7C13D0CE7FE2E0C1F9A7F915F373BEF2E9A2B67A74FE0B950F64B39ECF0B10B71F330F6EC6E6AFED52A8EFDDD2B9856B9EC5875B3A4B786F6BEB8AD64358';
wwv_flow_imp.g_varchar2_table(188) := '8A16BDBB62635797681BD8D22DC4158B0539F2EACB72EEE02144C00294D0BE6258A30820001A459A7A424BA064E6B48FBEF186BCBB67B72F1BF5CA5687E8D79A397F7DEF2BD33213E9BA02BFF7C22FB38ABA64D33D10D674F81BC1588901DA06A3EDED66';
wwv_flow_imp.g_varchar2_table(189) := 'A2C1BB94AA69E7E37BF7C8F8DB6F4BC5B216C2BB245240201E041000F16847BC58268182E9088EBDFAAA9C3F7ECC570929D3D5E84234BD65CF57861526D22BDD312334B4435D61510DCBAEF7F9AB70D1BD0D1A51A93E58699511017EEAAA562B7261FC88';
wwv_flow_imp.g_varchar2_table(190) := '8C7FEB6D29E597781BA59F0A48B3620214D03802A9C655454D10081781B9E919D9FFCCD3666EF8942FC3B433DEACBBD399A16D5F19024AA4EB0B3675759AE98096804AAC5F31BA26624B7797E75D0C415BB0AABD4DB6F6748BB2F253F64523F8DE79E139';
wwv_flow_imp.g_varchar2_table(191) := '29CCCEFA494E1A08C49200022096CD8A535E0426CF5F90775E7C5E662727BD92CEC7EB53EBB674778BDFD5E7F39902FCE538CEFC9D016366585D85488045075294DE06A91B20E990BC2ED20BA4D02516A26DA38B03FD8E96E4AE5C91BD4F3F2DB94B9797';
wwv_flow_imp.g_varchar2_table(192) := '5813C9EB4780921B490001D048DAD4150A02972626E4F0ABAF48617ADA973DBA318F5E5DB667FCDD7FEEABD06524D28E5537C4D1C56FFA409D7AAF3FF06BA2DE06A9D322BA0192DAE8375F3DD2A950D3E907BF22A030372BFB5E7C41AE9873A21EF65026';
wwv_flow_imp.g_varchar2_table(193) := '04C24C000110E6D6C1B6C0094C1C3E2C875F7AD1CCFFFA5BE93FD2D626DAB985E9AA5B6FABDBD6DB23DBCDA157DC43D9ECFCC884EE1F504F51A065B7A452F34F36D43AD77576CA0E63C31633F4AE3605DE58CB2C506DD491006D3B3F45940B79396844C0';
wwv_flow_imp.g_varchar2_table(194) := 'C4F8F8FC8D137EF290A63E0428B5B104528DAD8EDA20D01C029572594EBCFDB61CDFBDCB7CC9EB4D7F763BB4C3D7D5E5A366C8BDD957B56E96EAD5AEDE06A7D3022A52B423D6433B3F1D25583874EA42C334AD76E26EE569B8A6D14E7DB399C75FC8AFAF';
wwv_flow_imp.g_varchar2_table(195) := '9BBABA64B39902D96CC2D7757688EECD3F906D15B541F385ED503FB5EDD676748863FE79D9A767C4F1B7DF92937BF758774BF42A8778084489402A4AC6622B049643A094CFCBA1D75F97D3E347AEDD17EF518876FE6B4CC7A10BCB1C8FB46188761C677E';
wwv_flow_imp.g_varchar2_table(196) := 'D19D76C63A0FAE5316BA49CEC2A157E71AA643F4B61DF954E88CB6B7CD77EA3A84BE905F5F7B5A5B44CBD13AF40A5BD386C1779B0DDA76836D5951C192F22102B4ACD3070FC8F15D6F4BA958D48F1C0D2540658D26906A7485D407814612C8E566E58019';
wwv_flow_imp.g_varchar2_table(197) := 'F2BFE2734FFF6C2A2D7AC5DCA8DBFC1AC942858D57C75DD2CD7F1A695403EAD2B6D4351C7EEF10B870EC981C30530273B3FEA6891AE0025540A02E04100075C14AA1CD26A043BA53172EC8C16F7C5DA62F5DF2658E5EF5EA6D7ECD5EECE7CBD86524D22B';
wwv_flow_imp.g_varchar2_table(198) := '623D6C592B311400EAAFB6A94E5FE808867EF63AA62F5E9483CF3D2757CE9DF34A4A7C400428A6F10410008D674E8D752650A95465E2D871D96FAEFCF385BCAFDA74885C3B08BF5789BE0A2551A80864D3E9F9BD023A7C3E486876FAAA1C7AED553973E8';
wwv_flow_imp.g_varchar2_table(199) := '9054CA9550F98231100882000220088A945137025E43D68B2B36FDBE5CBD7C59F63DF78CBCFBE6EBA20FB7591C5FEBBD5E11EB6A715D24572B9EB07811D06910157A2AF8B4EDBDBCABE4F3F2EEEE5DB2DF4C095CB97459CA3AB4E495E97ABC8EA6C47440';
wwv_flow_imp.g_varchar2_table(200) := 'E5BA8741BE5056330820009A419D3A7D11A8164B5235FFBC12EB17EDF49549396AAED6DE79FA1B3263866FBDF22CC4EB6A763D163EF31A7F022A0254F0AD6A6F9794CFC58153E7CFC9C1E79F95E36FBE213357A7C44FC75E2A16A45C2AC51F281E469640';
wwv_flow_imp.g_varchar2_table(201) := '2AB2966378EC0968C73E7566424A535352999E968ABE9A237FE58A4C9E3D2B13478FCAD13D7B64FF6BAF992BB4E7E5C2C913BE99E84A76ED0474631DDF9948182B02ABDADB644377E7FC9305FD3856359DB93E3362FF8BCFCBBE975F92A37BF7C9D9E3C7';
wwv_flow_imp.g_varchar2_table(202) := '6472E2AC142E5F79EF1CCDE5A45C28C8F48913929F99F15374E2D300A039041000CDE14EAD3E0854CDD5FF91D75F93779EF9A6ECFFE6D372E0D967649F79D543376E39FED69B72EEE00199321D7F79CEFF8AED8E7446F4BE791D06F6610649624C40CF01';
wwv_flow_imp.g_varchar2_table(203) := '1582EDE9B46F2F4BA6839F3E735ACE1D78478EBFF1861C7CE905D9FBCCD3F3E7A69EA3FBBFF175D9F7952F1B81B0578A256E27F40D96840D2780006838722A5C0A814AB52239733535658EAB663E76A6589442A522153F63B0352AD205601BCD559FDE2F';
wwv_flow_imp.g_varchar2_table(204) := '5F239AA00412D0734105E15244C002265D12A0E7A29E9333D7CF513D5773E63CAD1801BB908E571B01E29A450001D02CF2D4DB50022933D73B6AE67CB77477CD6F9AD3D0CAA92CF404F40E816D3DDDA20B4297B2F034F48E6120042C04529638A2205057';
wwv_flow_imp.g_varchar2_table(205) := '028EE9941B7191A45FEE3ACCAB73BE49FE72771CC7DA9E29D31E8E39AC89621CE938CEFC16C7BA73603695AABBA77A2EEA51F78A425E01E6358F40FDCFF2E6F946CD6127E088E9FF7510B53E869AE2E7AFE8B69B2B3BDDC6B63EB544A754E5A1879BC52D';
wwv_flow_imp.g_varchar2_table(206) := '294752A6139484FFF4B5B68A3E6C491788A6EA2888B2E994E8039C841F08348940AA49F5522D04E6BF5AB34B587CE51799AEF0D7E1FE7BFAFBE6AFE8E8D4DE23974EB94B8008B298330000093049444154F64C46D808E91A2BBD5570ACA35DEEE8EB117D';
wwv_flow_imp.g_varchar2_table(207) := '4052C609FEAB329B4E99E928F7F69044FCE0643309047F5637D31BEA8E1C01BDDA4A0570D5A95FA3BACDAB5EB5E993EB923EDCEF7622F4B6B4D68C4A19393694CD4A004D51B3FCA806AA985CDBD9211BBB3BE785807ED6736DA5FE6819FDADCA5BDFADB4';
wwv_flow_imp.g_varchar2_table(208) := '34F24360790452CBCB462E080443409F34B7A1B353FACDB0AB5E7D3AE2FD2F6D7A294DDB65AE58F5EA4CE76CF511B67AE8555B7B261D8C71312C451F8CA32BDE074C67DF61F86553695111A66B24DAE1E6DAE27AA7800A813BFB7A45CF337DCCB09E7B1A';
wwv_flow_imp.g_varchar2_table(209) := 'AEE7A29E935E67AE0ADD05DEFA8865A6A5445C8113D1100208808660A6121B819ED61659DFD529FAE57ADF409F781D3AB4AF69B798B97DFD52D6CE2C9B4EDBAA206E1101EDF05534E9AA771DE256414067B40890E5AD63E2F45C1B6CCB8A9E7BFA94413D';
wwv_flow_imp.g_varchar2_table(210) := '17F59CF43A6FEF3553520BBCF59C3745F11F024D258000682A7E2A87000420905402F8DD6C02088066B700F5430002108000049A400001D004E8540901084020E904F0BFF9041000CD6F032C80000420000108349C0002A0E1C8A91002108040D209E07F';
wwv_flow_imp.g_varchar2_table(211) := '18082000C2D00AD80001084000021068300104408381531D04200081A413C0FF7010400084A31DB002021080000420D05002088086E2A63208400002492780FF61218000084B4B6007042000010840A0810410000D844D5510800004924E00FFC3430001';
wwv_flow_imp.g_varchar2_table(212) := '109EB6C01208400002108040C30820001A869A8A20000108249D00FE87890002204CAD812D1080000420008106114000340834D540000210483A01FC0F17010440B8DA036B200001084000020D2180006808662A81000420907402F81F36020880B0B508';
wwv_flow_imp.g_varchar2_table(213) := 'F6400002108000041A400001D000C8540101084020E904F03F7C041000E16B132C82000420000108D49D0002A0EE88A90002108040D209E07F18092000C2D82AD804010840000210A8330104409D01533C04200081A413C0FF7012400084B35DB00A0210';
wwv_flow_imp.g_varchar2_table(214) := '800004205057020880BAE2A57008400002492780FF61258000086BCB6017042000010840A08E04100075844BD110800004924E00FFC34B000110DEB6C13208400002108040DD082000EA86968221000108249D00FE8799000220CCAD836D108000042000';
wwv_flow_imp.g_varchar2_table(215) := '813A114000D4092CC542000210483A01FC0F37010440B8DB07EB2000010840000275218000A80B560A85000420907402F81F76020880B0B710F641000210800004EA4000015007A8140901084020E904F03FFC041000E16F232C84000420000108044E00';
wwv_flow_imp.g_varchar2_table(216) := '011038520A84000420907402F81F0502088028B412364200021080000402268000081828C541000210483A01FC8F0601044034DA092B2100010840000281124000048A93C220000108249D00FE47850002202A2D859D1080000420008100092000028449';
wwv_flow_imp.g_varchar2_table(217) := '5110800004924E00FFA3430001109DB6C252084000021080406004100081A1A42008400002492780FF5122800088526B612B04200001084020200208808040520C04200081A413C0FF6811400044ABBDB016021080000420100801044020182904021080';
wwv_flow_imp.g_varchar2_table(218) := '40D209E07FD4082000A2D662D80B01084000021008800002200088140101084020E904F03F7A041000D16B332C86000420000108AC98000260C508290002108040D209E07F14092000A2D86AD80C01084000021058210104C00A01921D02108040D209E0';
wwv_flow_imp.g_varchar2_table(219) := '7F34092000A2D96E580D01084000021058110104C08AF0911902108040D209E07F54092000A2DA72D80D01084000021058010104C00AE0911502108040D209E07F74092000A2DB76580E01084000021058360104C0B2D1911102108040D209E07F940920';
wwv_flow_imp.g_varchar2_table(220) := '00A2DC7AD80E01084000021058260104C032C1910D02108040D209E07FB4092000A2DD7E580F01084000021058160104C0B2B0910902108040D209E07FD4092000A2DE82D80F01084000021058060104C032A0910502108040D209E07FF4092000A2DF86';
wwv_flow_imp.g_varchar2_table(221) := '780001084000021058320104C09291910102108040D209E07F1C082000E2D08AF80001084000021058220104C01281911C02108040D209E07F3C082000E2D18E780101084000021058120104C09270911802108040D209E07F5C082000E2D292F8010108';
wwv_flow_imp.g_varchar2_table(222) := '4000021058020104C01260911402108040D209E07F7C082000E2D3967802010840000210F04D0001E01B150921000108249D00FEC7890002204EAD892F108000042000019F0410003E41910C02108040D209E07FBC082000E2D59E7803010840000210F0';
wwv_flow_imp.g_varchar2_table(223) := '450001E00B138920000108249D00FEC78D0002206E2D8A3F108000042000011F0410003E20910402108040D209E07FFC082000E2D7A67804010840000210F0248000F044440208400002492780FF712480008863ABE213042000010840C0830002C00310';
wwv_flow_imp.g_varchar2_table(224) := 'D110800004924E00FFE349000110CF76C52B08400002108080950002C08A874808400002492780FF71258000886BCBE217042000010840C04200016081431404200081A413C0FFF8124000C4B76DF10C021080000420E04A0001E08A8608084000024927';
wwv_flow_imp.g_varchar2_table(225) := '80FF712680008873EBE21B042000010840C0850002C0050CC110800004924E00FFE34D000110EFF6C53B084000021080404D0208809A580884000420907402F81F77020880B8B730FE410002108000046A104000D480421004200081A413C0FFF8134000';
wwv_flow_imp.g_varchar2_table(226) := 'C4BF8DF110021080000420701B0104C06D480880000420907402F89F0402088024B4323E420002108000046E218000B805081F21000108249D00FE278300022019ED8C97108000042000819B0820006EC2C10708400002492780FF49218000484A4BE327';
wwv_flow_imp.g_varchar2_table(227) := '04200001084060110104C02218BC85000420907402F89F1C020880E4B4359E420002108000046E104000DC40C11B08400002492780FF4922800048526BE32B042000010840E03A0104C07510BC40000210483A01FC4F16010440B2DA1B6F210001084000';
wwv_flow_imp.g_varchar2_table(228) := '02F3041000F318F80501084020E904F03F69041000496B71FC85000420000108180208000381FF10800004924E00FF9347000190BC36C763084000021080802000380920000108249E00009248000190C456C7670840000210483C010440E24F01004000';
wwv_flow_imp.g_varchar2_table(229) := '02492780FFC92480004866BBE3350420000108249C000220E12700EE430002492780FF49258000486ACBE3370420000108249A000220D1CD8FF3108040D209E07F7209200092DBF6780E0108400002092680004870E3E33A0420907402F89F6402088024';
wwv_flow_imp.g_varchar2_table(230) := 'B73EBE4300021080406209200012DBF4380E0108249D00FE279BC0FF0F0000FFFFC16E2FDA0000000649444154030031DE00A5DF5EBBF70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9500116026697553)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9501486931697554)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
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
 p_id=>wwv_flow_imp.id(9759270132793497)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/appointments_appointment_time
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9782643991887337)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9509927808697619)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(9509927808697619)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111405Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9510513120697628)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9510275213697626)
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
 p_id=>wwv_flow_imp.id(9721071364598910)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9721760309598926)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9757770481793496)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9740083551717874)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9757070756793494)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9811129739950573)
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(9501756376697559)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(9496758301697415)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10088974892491529)
,p_short_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20260714054539Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054539Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9826267066950725)
,p_short_name=>'Admissions'
,p_static_id=>'admissions'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9877158299136499)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260714044629Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044629Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9773638724793655)
,p_short_name=>'Appointments'
,p_static_id=>'appointments'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9833862803429350)
,p_short_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260713081927Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081927Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9519938258980079)
,p_short_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260712120109Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9736946073599103)
,p_short_name=>'Doctors'
,p_static_id=>'doctors'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9496988553697418)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10084294066482336)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20260714054407Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9754514078718032)
,p_short_name=>'Medicines'
,p_static_id=>'medicines'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10077239033433396)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260714053558Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9799653726887486)
,p_short_name=>'Patient Visits'
,p_static_id=>'patient-visits'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9717311818387737)
,p_short_name=>'Patients'
,p_static_id=>'patients'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10879495769115295)
,p_short_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260720112546Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112546Z')
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
 p_id=>wwv_flow_imp.id(9497561112697437)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>3294906487728305352
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
,p_version_scn=>'SH256:zf-9XuS0QNd6hthKzsD_irHsbbnyFmEvMrIuV9chVoA'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260712111403Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111424Z')
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
 p_id=>wwv_flow_imp.id(9496068660697395)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
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
 p_id=>wwv_flow_imp.id(9496305076697405)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260712111402Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111402Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712111404Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9509300116697607)
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260712120108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9519395828980064)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712120109Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9520109186980215)
,p_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT ''Total Patients'' AS kpi_name, COUNT(*) AS total_count FROM patients'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712120110Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120110Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9520725075980228)
,p_query_column_id=>1
,p_column_alias=>'KPI_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Kpi Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260712120110Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9521103577980234)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Total Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260712120110Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9513420108865102)
,p_name=>'New'
,p_static_id=>'new'
,p_title=>'Todays Appointments'
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT COUNT(*) AS total_count FROM appointments WHERE appointment_date = TRUNC(SYSDATE)'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713050213Z')
,p_updated_on=>wwv_flow_imp.dz('20260713050213Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9513507213865103)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Total Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713050213Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9513620847865104)
,p_name=>'New'
,p_static_id=>'new_1'
,p_title=>'Active Doctors'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT COUNT(*) AS total_count FROM doctors WHERE status = ''Active'''
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713050502Z')
,p_updated_on=>wwv_flow_imp.dz('20260713050502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9513777620865105)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Total Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713050502Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9513850523865106)
,p_name=>'New'
,p_static_id=>'new_2'
,p_title=>'Current Admissions'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT COUNT(*) AS total_count FROM admissions WHERE status = ''Admitted'''
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713050554Z')
,p_updated_on=>wwv_flow_imp.dz('20260713050554Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9513981225865107)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Total Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713050554Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9514099987865108)
,p_name=>'New'
,p_static_id=>'new_3'
,p_title=>'Low Stock Medicines'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT COUNT(*) AS total_count FROM medicines WHERE current_stock < reorder_level'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713050626Z')
,p_updated_on=>wwv_flow_imp.dz('20260713050626Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9514120887865109)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Total Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713050626Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9514278133865110)
,p_plug_name=>'New'
,p_static_id=>'new_4'
,p_title=>'Patients by Gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713051511Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081623Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9514341810865111)
,p_region_id=>wwv_flow_imp.id(9514278133865110)
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
,p_created_on=>wwv_flow_imp.dz('20260713051511Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081623Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(9514422680865112)
,p_chart_id=>wwv_flow_imp.id(9514341810865111)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT gender AS label, COUNT(*) AS value FROM patients GROUP BY gender'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260713051511Z')
,p_updated_on=>wwv_flow_imp.dz('20260715081622Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9514762675865115)
,p_plug_name=>'New'
,p_static_id=>'new_5'
,p_title=>'Appointments by Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260713051721Z')
,p_updated_on=>wwv_flow_imp.dz('20260715083027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9514818306865116)
,p_region_id=>wwv_flow_imp.id(9514762675865115)
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
,p_created_on=>wwv_flow_imp.dz('20260713051721Z')
,p_updated_on=>wwv_flow_imp.dz('20260715083027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(9514953405865117)
,p_chart_id=>wwv_flow_imp.id(9514818306865116)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Number of Appointments'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.department_name AS label, COUNT(*) AS value',
'FROM appointments a',
'JOIN doctors doc ON a.doctor_id = doc.doctor_id',
'JOIN departments d ON doc.department_id = d.department_id',
'GROUP BY d.department_name'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260713051721Z')
,p_updated_on=>wwv_flow_imp.dz('20260715083027Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9515083903865118)
,p_chart_id=>wwv_flow_imp.id(9514818306865116)
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
,p_created_on=>wwv_flow_imp.dz('20260713051721Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051721Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9515159599865119)
,p_chart_id=>wwv_flow_imp.id(9514818306865116)
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
,p_created_on=>wwv_flow_imp.dz('20260713051721Z')
,p_updated_on=>wwv_flow_imp.dz('20260713051721Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9849072469643218)
,p_plug_name=>'New'
,p_static_id=>'new_6'
,p_title=>'Medicine Stock Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715084113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084114Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9849199702643219)
,p_region_id=>wwv_flow_imp.id(9849072469643218)
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
,p_created_on=>wwv_flow_imp.dz('20260715084113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084114Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(9849249825643220)
,p_chart_id=>wwv_flow_imp.id(9849199702643219)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  CASE WHEN current_stock < reorder_level THEN ''Low Stock'' ELSE ''Normal'' END AS label,',
'  COUNT(*) AS value',
'FROM medicines',
'GROUP BY ',
'  CASE WHEN current_stock < reorder_level THEN ''Low Stock'' ELSE ''Normal'' END'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260715084113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084113Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9849310745643221)
,p_chart_id=>wwv_flow_imp.id(9849199702643219)
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
,p_created_on=>wwv_flow_imp.dz('20260715084113Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084113Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9849428290643222)
,p_chart_id=>wwv_flow_imp.id(9849199702643219)
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
,p_created_on=>wwv_flow_imp.dz('20260715084114Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084114Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9849577583643223)
,p_plug_name=>'New'
,p_static_id=>'new_7'
,p_title=>'Admissions by Room Type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715084502Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9849677462643224)
,p_region_id=>wwv_flow_imp.id(9849577583643223)
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
,p_created_on=>wwv_flow_imp.dz('20260715084502Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(9849707407643225)
,p_chart_id=>wwv_flow_imp.id(9849677462643224)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS label, COUNT(*) AS value',
'FROM admissions a',
'JOIN rooms r ON a.room_id = r.room_id',
'GROUP BY r.room_type'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260715084502Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9849898981643226)
,p_chart_id=>wwv_flow_imp.id(9849677462643224)
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
,p_created_on=>wwv_flow_imp.dz('20260715084502Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9849995871643227)
,p_chart_id=>wwv_flow_imp.id(9849677462643224)
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
,p_created_on=>wwv_flow_imp.dz('20260715084502Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084502Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9850066184643228)
,p_plug_name=>'New'
,p_static_id=>'new_8'
,p_title=>'Monthly Patient Visits'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(9850105388643229)
,p_region_id=>wwv_flow_imp.id(9850066184643228)
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
,p_created_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(9850258774643230)
,p_chart_id=>wwv_flow_imp.id(9850105388643229)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  TO_CHAR(visit_date, ''YYYY-MM'') AS label,',
'  COUNT(*) AS value',
'FROM patient_visits',
'GROUP BY TO_CHAR(visit_date, ''YYYY-MM'')',
'ORDER BY TO_CHAR(visit_date, ''YYYY-MM'')'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9850341256643231)
,p_chart_id=>wwv_flow_imp.id(9850105388643229)
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
,p_created_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(9850415251643232)
,p_chart_id=>wwv_flow_imp.id(9850105388643229)
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
,p_created_on=>wwv_flow_imp.dz('20260715084610Z')
,p_updated_on=>wwv_flow_imp.dz('20260715084610Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Prescriptions'
,p_alias=>'PRESCRIPTIONS'
,p_step_title=>'Prescriptions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260720112545Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720115215Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10878884748115287)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260720112546Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10879620470115298)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260720112546Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10889692464115695)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(10880433688115306)
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
,p_created_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_on=>wwv_flow_imp.dz('20260720115215Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10891445687115701)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10890923551115699)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10895478519115714)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10897445140115719)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10896413176115716)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10898478437115721)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10894430817115711)
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
'SELECT medicine_name AS d, medicine_id AS r ',
'FROM medicines ',
'WHERE status = ''Active'' ',
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
,p_updated_on=>wwv_flow_imp.dz('20260720115215Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10899462281115724)
,p_name=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Patient Visit Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10893455850115708)
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
,p_parent_column_id=>wwv_flow_imp.id(10883231141115486)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10892486056115704)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10889792959115695)
,p_internal_uid=>10889792959115695
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
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10890478401115698)
,p_interactive_grid_id=>wwv_flow_imp.id(10889792959115695)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10890502775115698)
,p_report_id=>wwv_flow_imp.id(10890478401115698)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10891932489115703)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10891445687115701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10892968064115705)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10892486056115704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10893906121115711)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10893455850115708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10894915632115714)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10894430817115711)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10895929938115716)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10895478519115714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10896967878115719)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10896413176115716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10897970540115721)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10897445140115719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10898976669115723)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10898478437115721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10899984105115726)
,p_view_id=>wwv_flow_imp.id(10890502775115698)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10899462281115724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10880433688115306)
,p_plug_name=>'Prescriptions'
,p_static_id=>'prescriptions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
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
,p_created_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10882256438115478)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10881708834115473)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10886219133115494)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10888286345115499)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10885225087115492)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10887270407115497)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10883231141115486)
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10884237700115489)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Visit Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10880543304115457)
,p_internal_uid=>10880543304115457
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
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10881244852115467)
,p_interactive_grid_id=>wwv_flow_imp.id(10880543304115457)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10881361990115469)
,p_report_id=>wwv_flow_imp.id(10881244852115467)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10882714951115482)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10882256438115478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10883731458115488)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10883231141115486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10884738079115491)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10884237700115489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10885705951115494)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10885225087115492)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10886728930115496)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10886219133115494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10887738168115499)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10887270407115497)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10888796284115501)
,p_view_id=>wwv_flow_imp.id(10881361990115469)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10888286345115499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10880032983115301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10879620470115298)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260720112546Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112546Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10900458143115726)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10889692464115695)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10880032983115301)
,p_internal_uid=>10900458143115726
,p_created_on=>wwv_flow_imp.dz('20260720112550Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10889205046115505)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10880433688115306)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescriptions - Save Interactive Grid Data'
,p_static_id=>'prescriptions-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10880032983115301)
,p_internal_uid=>10889205046115505
,p_created_on=>wwv_flow_imp.dz('20260720112548Z')
,p_updated_on=>wwv_flow_imp.dz('20260720112548Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714044628Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714053116Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9877325710136634)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_id, p.full_name patient_name, d.full_name doctor_name,',
'       dep.department_name, a.appointment_date, a.appointment_time,',
'       s.status_name, a.reason_for_visit',
'FROM appointments a',
'JOIN patients p ON p.patient_id = a.patient_id',
'JOIN doctors d ON d.doctor_id = a.doctor_id',
'JOIN departments dep ON dep.department_id = d.department_id',
'JOIN appointment_statuses s ON s.status_id = a.status_id',
'WHERE a.appointment_date BETWEEN NVL(:P5_DATE_FROM, a.appointment_date) AND NVL(:P5_DATE_TO, a.appointment_date)',
'AND (:P5_DEPARTMENT IS NULL OR dep.department_id = :P5_DEPARTMENT)',
'AND (:P5_DOCTOR IS NULL OR d.doctor_id = :P5_DOCTOR)',
'AND (:P5_STATUS IS NULL OR s.status_id = :P5_STATUS)'))
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
,p_created_on=>wwv_flow_imp.dz('20260714044630Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053116Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9877455298136634)
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
,p_internal_uid=>9877455298136634
,p_created_on=>wwv_flow_imp.dz('20260714044630Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053116Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9880189262136666)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9878533863136651)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9880578357136667)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9879793011136664)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9879310527136663)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9878964881136660)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9881358256136671)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9880993800136669)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714044631Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044631Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10075637186405206)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_NAME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260714053116Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053116Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9876548277136491)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714044629Z')
,p_updated_on=>wwv_flow_imp.dz('20260714044629Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9847602620643204)
,p_name=>'P5_DATE_FROM'
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
,p_created_on=>wwv_flow_imp.dz('20260714052817Z')
,p_updated_on=>wwv_flow_imp.dz('20260714052817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9847795501643205)
,p_name=>'P5_DATE_TO'
,p_item_sequence=>30
,p_prompt=>'Date To'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714052817Z')
,p_updated_on=>wwv_flow_imp.dz('20260714052817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9847889954643206)
,p_name=>'P5_DEPARTMENT'
,p_item_sequence=>40
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT department_name d, department_id r FROM departments ORDER BY 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714052817Z')
,p_updated_on=>wwv_flow_imp.dz('20260714052817Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9847938281643207)
,p_name=>'P5_DOCTOR'
,p_item_sequence=>50
,p_prompt=>'Doctor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name d, doctor_id r FROM doctors ORDER BY 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714053006Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053006Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9848062766643208)
,p_name=>'P5_STATUS'
,p_item_sequence=>60
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT status_name d, status_id r FROM appointment_statuses ORDER BY 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714053006Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053006Z')
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
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713053923Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9717493667387737)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9709711411387684)
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
'       TRUNC(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS AGE,',
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
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713053923Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9709834202387684)
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
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_PATIENT_ID:\#PATIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9709834202387684
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713053923Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9714152629387722)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9515216264865120)
,p_db_column_name=>'AGE'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713053923Z')
,p_updated_on=>wwv_flow_imp.dz('20260713053923Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9713862100387720)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9711486567387710)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9715326751387726)
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
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712629610387716)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9713447932387719)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9714519616387723)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9714940889387725)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9711857448387713)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9712270087387714)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9713077692387717)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9711062209387700)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713052551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9718014379390622)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260713052621Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9715758538387728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9709711411387684)
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
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9716197590387728)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9709711411387684)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9716580051387732)
,p_event_id=>wwv_flow_imp.id(9716197590387728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9709711411387684)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713052552Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052552Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721063423Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9516758287865135)
,p_name=>'Admission History'
,p_static_id=>'admission-history'
,p_parent_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_template=>4073835273271169698
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ad.admission_date, ad.discharge_date, r.room_no, r.room_type, ad.status, ad.admission_reason',
'FROM admissions ad',
'JOIN rooms r ON ad.room_id = r.room_id',
'WHERE ad.patient_id = :P7_PATIENT_ID',
'ORDER BY ad.admission_date DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516819475865136)
,p_query_column_id=>1
,p_column_alias=>'ADMISSION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Admission Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517339324865141)
,p_query_column_id=>6
,p_column_alias=>'ADMISSION_REASON'
,p_column_display_sequence=>60
,p_column_heading=>'Admission Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516956294865137)
,p_query_column_id=>2
,p_column_alias=>'DISCHARGE_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Discharge Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517034498865138)
,p_query_column_id=>3
,p_column_alias=>'ROOM_NO'
,p_column_display_sequence=>30
,p_column_heading=>'Room No'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517147671865139)
,p_query_column_id=>4
,p_column_alias=>'ROOM_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Room Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517223681865140)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064134Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9705394607387519)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9515518685865123)
,p_name=>'New'
,p_static_id=>'new'
,p_title=>'Appointment History'
,p_parent_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_template=>4073835273271169698
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_date, a.appointment_time, d.full_name AS doctor_name, s.status_name, a.reason_for_visit',
'FROM appointments a',
'JOIN doctors d ON a.doctor_id = d.doctor_id',
'JOIN appointment_statuses s ON a.status_id = s.status_id',
'WHERE a.patient_id = :P7_PATIENT_ID',
'ORDER BY a.appointment_date DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064016Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064016Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9515647013865124)
,p_query_column_id=>1
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064016Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9515754333865125)
,p_query_column_id=>2
,p_column_alias=>'APPOINTMENT_TIME'
,p_column_display_sequence=>20
,p_column_heading=>'Appointment Time'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064016Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9515889222865126)
,p_query_column_id=>3
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064016Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516042847865128)
,p_query_column_id=>5
,p_column_alias=>'REASON_FOR_VISIT'
,p_column_display_sequence=>50
,p_column_heading=>'Reason For Visit'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064016Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9515989852865127)
,p_query_column_id=>4
,p_column_alias=>'STATUS_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Status Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064016Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9516104578865129)
,p_name=>'Visit History'
,p_static_id=>'visit-history'
,p_parent_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_template=>4073835273271169698
,p_display_sequence=>140
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.visit_date, d.full_name AS doctor_name, v.symptoms, v.diagnosis, v.follow_up_date',
'FROM patient_visits v',
'JOIN doctors d ON v.doctor_id = d.doctor_id',
'WHERE v.patient_id = :P7_PATIENT_ID',
'ORDER BY v.visit_date DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064056Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064056Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516587167865133)
,p_query_column_id=>4
,p_column_alias=>'DIAGNOSIS'
,p_column_display_sequence=>40
,p_column_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064056Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516381382865131)
,p_query_column_id=>2
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064056Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516607998865134)
,p_query_column_id=>5
,p_column_alias=>'FOLLOW_UP_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064056Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516471889865132)
,p_query_column_id=>3
,p_column_alias=>'SYMPTOMS'
,p_column_display_sequence=>30
,p_column_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064056Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9516267200865130)
,p_query_column_id=>1
,p_column_alias=>'VISIT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Visit Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064056Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9705791299387520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9705394607387519)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9706183621387523)
,p_button_id=>wwv_flow_imp.id(9705791299387520)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9707450587387527)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9705394607387519)
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
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9706624314387526)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9705394607387519)
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
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9707060052387527)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9705394607387519)
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
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9700170420387515)
,p_name=>'P7_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11078038283768001)
,p_name=>'P7_AGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260721063023Z')
,p_updated_on=>wwv_flow_imp.dz('20260721063023Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9699714088387515)
,p_name=>'P7_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:O+;O+,A+;A+,A\2212;A\2212,B+;B+,AB+;AB-,O-;O-,B-;B-')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260721062103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9697306771387511)
,p_name=>'P7_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9701341312387517)
,p_name=>'P7_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075707Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698535849387512)
,p_name=>'P7_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_prompt=>'Date Of Birth'
,p_source=>'DATE_OF_BIRTH'
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9699328759387515)
,p_name=>'P7_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_prompt=>'Email'
,p_source=>'EMAIL'
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9700503997387515)
,p_name=>'P7_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9700959002387516)
,p_name=>'P7_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9697740609387511)
,p_name=>'P7_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698163533387512)
,p_name=>'P7_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260720104859Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9698907429387514)
,p_name=>'P7_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
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
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052549Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9696997618387503)
,p_name=>'P7_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_item_source_plug_id=>wwv_flow_imp.id(9696542595387492)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713052549Z')
,p_updated_on=>wwv_flow_imp.dz('20260714075441Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9515308644865121)
,p_validation_name=>'Civil ID Unique'
,p_static_id=>'civil-id-unique'
,p_validation_sequence=>10
,p_validation=>'SELECT 1 FROM patients WHERE civil_id = :P7_CIVIL_ID AND patient_id != NVL(:P7_PATIENT_ID, -1)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'This Civil ID already exists for another patient.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713054822Z')
,p_updated_on=>wwv_flow_imp.dz('20260714100420Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9708601818387530)
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
,p_internal_uid=>9708601818387530
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260721063423Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11078152542768002)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Compute Age'
,p_static_id=>'compute-age'
,p_process_sql_clob=>':P7_AGE := TRUNC(MONTHS_BETWEEN(SYSDATE, :P7_DATE_OF_BIRTH)/12);'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11078152542768002
,p_created_on=>wwv_flow_imp.dz('20260721063423Z')
,p_updated_on=>wwv_flow_imp.dz('20260721063423Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9848895867643216)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Patient ID'
,p_static_id=>'generate-patient-id_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P7_PATIENT_ID IS NULL THEN',
'    SELECT NVL(MAX(patient_id),0) + 1 INTO :P7_PATIENT_ID FROM patients;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9848895867643216
,p_created_on=>wwv_flow_imp.dz('20260714094322Z')
,p_updated_on=>wwv_flow_imp.dz('20260714095328Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9707874824387528)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9696542595387492)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Form'
,p_static_id=>'initialize-form-patient-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9707874824387528
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9708273195387530)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9696542595387492)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Form'
,p_static_id=>'process-form-patient-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9708273195387530
,p_created_on=>wwv_flow_imp.dz('20260713052550Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052550Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Doctors'
,p_alias=>'DOCTORS'
,p_step_title=>'Doctors'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9737052363599103)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9730835969599065)
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
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9730953337599065)
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
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_DOCTOR_ID:\#DOCTOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9730953337599065
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9734507227599094)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9732923479599085)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9721071364598910)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9732162971599080)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9734150337599093)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9732529178599083)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9733743446599091)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9733356780599089)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Specialty'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9721760309598926)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9734996457599096)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9737672732605043)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:DEPARTMENT_ID:SPECIALTY_ID:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713060205Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060205Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9735326955599098)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9730835969599065)
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
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9735749410599098)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9730835969599065)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9736129159599099)
,p_event_id=>wwv_flow_imp.id(9735749410599098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9730835969599065)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713060105Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060105Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720105525Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9726340128598930)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9719791732598897)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9726733500598930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9726340128598930)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9727212718598934)
,p_button_id=>wwv_flow_imp.id(9726733500598930)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9728508593598937)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9726340128598930)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9727727827598936)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9726340128598930)
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
,p_button_condition=>'P11_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9728169536598937)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9726340128598930)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9723110409598927)
,p_name=>'P11_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9720984653598909)
,p_name=>'P11_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260720105525Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9720116625598904)
,p_name=>'P11_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9722717625598927)
,p_name=>'P11_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_prompt=>'Email'
,p_source=>'EMAIL'
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9720535276598908)
,p_name=>'P11_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9722331525598927)
,p_name=>'P11_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9721652058598926)
,p_name=>'P11_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
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
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9723579311598928)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_item_source_plug_id=>wwv_flow_imp.id(9719791732598897)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713061612Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9729772362598939)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9729772362598939
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9728995937598937)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9719791732598897)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor Form'
,p_static_id=>'initialize-form-doctor-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9728995937598937
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9729360010598939)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9719791732598897)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor Form'
,p_static_id=>'process-form-doctor-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9729360010598939
,p_created_on=>wwv_flow_imp.dz('20260713060103Z')
,p_updated_on=>wwv_flow_imp.dz('20260713060103Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Medicines'
,p_alias=>'MEDICINES'
,p_step_title=>'Medicines'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715113827Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9754625907718032)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9748896857718013)
,p_plug_name=>'Medicines'
,p_static_id=>'medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  MEDICINE_ID,',
'  MEDICINE_NAME,',
'  CATEGORY_ID,',
'  UNIT,',
'  CURRENT_STOCK,',
'  REORDER_LEVEL,',
'  STATUS,',
'  CASE WHEN CURRENT_STOCK < REORDER_LEVEL THEN ''Y'' ELSE ''N'' END AS LOW_STOCK_FLAG',
'FROM MEDICINES'))
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
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113827Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9748988005718013)
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
,p_internal_uid=>9748988005718013
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113827Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9850592140643233)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715113827Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113827Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9751754967718025)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9850649668643234)
,p_db_column_name=>'LOW_STOCK_FLAG'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Low Stock Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715113827Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113827Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9750191596718017)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9750507414718020)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9752143300718027)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9752509043718028)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9751321611718024)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9755249308728810)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713062242Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113827Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9752916784718030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9748896857718013)
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
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9753339237718030)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9748896857718013)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9753742612718030)
,p_event_id=>wwv_flow_imp.id(9753339237718030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9748896857718013)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713062054Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062054Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Medicine Form'
,p_alias=>'MEDICINE-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9744346742717878)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9738761802717870)
,p_plug_name=>'Medicine Form'
,p_static_id=>'medicine-form'
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9744753461717878)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9744346742717878)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9745229740717880)
,p_button_id=>wwv_flow_imp.id(9744753461717878)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9746506373717881)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9744346742717878)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9745704584717881)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9744346742717878)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9746129059717881)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9744346742717878)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9739912016717874)
,p_name=>'P15_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9741049176717876)
,p_name=>'P15_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9739179766717872)
,p_name=>'P15_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9739561813717873)
,p_name=>'P15_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9741436886717876)
,p_name=>'P15_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9741865307717877)
,p_name=>'P15_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9740643315717876)
,p_name=>'P15_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9738761802717870)
,p_item_source_plug_id=>wwv_flow_imp.id(9738761802717870)
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
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9747739473717882)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9747739473717882
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9746936759717881)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9738761802717870)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Form'
,p_static_id=>'initialize-form-medicine-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9746936759717881
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9747343649717882)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9738761802717870)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Form'
,p_static_id=>'process-form-medicine-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9747343649717882
,p_created_on=>wwv_flow_imp.dz('20260713062053Z')
,p_updated_on=>wwv_flow_imp.dz('20260713062053Z')
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713122256Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9767505284793631)
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
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122256Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9767670604793631)
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
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_APPOINTMENT_ID:\#APPOINTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9767670604793631
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122256Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9770018711793644)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9768804076793636)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_APPOINTMENT_ID:#APPOINTMENT_ID#'
,p_column_linktext=>'#APPOINTMENT_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122256Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9770445906793646)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771617489793651)
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
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9769628171793642)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9757770481793496)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9769276684793640)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9757070756793494)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771296679793649)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9770828672793647)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9759270132793497)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9774338557796038)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_ID:REASON_FOR_VISIT:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260713063354Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063354Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9773773376793655)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9772077367793653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9767505284793631)
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
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9515489164865122)
,p_validation_name=>'Appointment Date Not In Past'
,p_static_id=>'appointment-date-not-in-past'
,p_validation_sequence=>10
,p_validation=>':P{16}_APPOINTMENT_DATE >= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Appointment date cannot be in the past.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713063655Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063655Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9772430025793653)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9767505284793631)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9772834631793654)
,p_event_id=>wwv_flow_imp.id(9772430025793653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9767505284793631)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063330Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063330Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Appointment Form'
,p_alias=>'APPOINTMENT-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721070734Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9756117770793490)
,p_plug_name=>'Appointment Form'
,p_static_id=>'appointment-form'
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9763098324793500)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9763474082793500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9763098324793500)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9763909336793501)
,p_button_id=>wwv_flow_imp.id(9763474082793500)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9765251649793502)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9763098324793500)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9764435250793502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9763098324793500)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9764820763793502)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9763098324793500)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9758315645793497)
,p_name=>'P17_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9756563030793493)
,p_name=>'P17_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9758758818793497)
,p_name=>'P17_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_prompt=>'Appointment Time'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121017Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9760254081793498)
,p_name=>'P17_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_default=>' SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9850779318643235)
,p_name=>'P17_DOCTOR_DEPARTMENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
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
,p_created_on=>wwv_flow_imp.dz('20260715120153Z')
,p_updated_on=>wwv_flow_imp.dz('20260721070734Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9757606721793496)
,p_name=>'P17_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9850883551643236)
,p_name=>'P17_DOCTOR_SPECIALTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_prompt=>' Specialty'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715120235Z')
,p_updated_on=>wwv_flow_imp.dz('20260721070734Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9756922071793494)
,p_name=>'P17_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PATIENTS.CIVIL_ID'
,p_lov_display_null=>'YES'
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110306Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9759899892793498)
,p_name=>'P17_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_prompt=>'Reason For Visit'
,p_source=>'REASON_FOR_VISIT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9759184723793497)
,p_name=>'P17_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9756117770793490)
,p_item_source_plug_id=>wwv_flow_imp.id(9756117770793490)
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
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9851012569643238)
,p_name=>'NewShow Doctor Details'
,p_static_id=>'newshow-doctor-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260715121018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9851150516643239)
,p_event_id=>wwv_flow_imp.id(9851012569643238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P17_DOCTOR_DEPARTMENT,P17_DOCTOR_SPECIALTY',
  'items_to_submit', 'P17_DOCTOR_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT d.department_name, s.specialty_name',
    'INTO :P17_DOCTOR_DEPARTMENT, :P17_DOCTOR_SPECIALTY',
    'FROM doctors doc',
    'JOIN departments d ON doc.department_id = d.department_id',
    'JOIN doctor_specialties s ON doc.specialty_id = s.specialty_id',
    'WHERE doc.doctor_id = :P17_DOCTOR_ID;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715121018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9766474371793503)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9766474371793503
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9765677833793502)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9756117770793490)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment Form'
,p_static_id=>'initialize-form-appointment-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9765677833793502
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9766021544793503)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9756117770793490)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Form'
,p_static_id=>'process-form-appointment-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9766021544793503
,p_created_on=>wwv_flow_imp.dz('20260713063329Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063329Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Patient Visits'
,p_alias=>'PATIENT-VISITS'
,p_step_title=>'Patient Visits'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713064932Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9799711897887486)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9793279376887465)
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
,p_created_on=>wwv_flow_imp.dz('20260713064908Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064932Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9793312006887465)
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
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_VISIT_ID:\#VISIT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9793312006887465
,p_created_on=>wwv_flow_imp.dz('20260713064908Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064932Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9794915540887472)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Appointment'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9782643991887337)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9796811387887480)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9795694982887475)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9757770481793496)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9797659584887483)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9797268235887481)
,p_db_column_name=>'NOTES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9795258654887474)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9757070756793494)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9796401767887478)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9796037093887477)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9794511121887469)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Visit ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713064908Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064908Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9800317198889840)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:VISIT_DATE:SYMPTOMS:DIAGNOSIS:NOTES:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260713064932Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064932Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9798036076887485)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9793279376887465)
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
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9798439462887485)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9793279376887465)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9798838613887485)
,p_event_id=>wwv_flow_imp.id(9798439462887485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9793279376887465)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713064909Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064909Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Visit Form'
,p_alias=>'VISIT-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Visit Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9788768251887341)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9517506900865143)
,p_name=>'New'
,p_static_id=>'new'
,p_title=>'Prescription'
,p_parent_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_template=>4073835273271169698
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.prescription_id, p.prescription_date, p.notes,',
'       pi.medicine_id, m.medicine_name, pi.dosage, pi.frequency, pi.duration_days, pi.instructions',
'FROM prescriptions p',
'JOIN prescription_items pi ON p.prescription_id = pi.prescription_id',
'JOIN medicines m ON pi.medicine_id = m.medicine_id',
'WHERE p.visit_id = :P19_VISIT_ID',
'ORDER BY p.prescription_date DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9518119410865149)
,p_query_column_id=>6
,p_column_alias=>'DOSAGE'
,p_column_display_sequence=>60
,p_column_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9800831051921901)
,p_query_column_id=>8
,p_column_alias=>'DURATION_DAYS'
,p_column_display_sequence=>80
,p_column_heading=>'Duration Days'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9518293098865150)
,p_query_column_id=>7
,p_column_alias=>'FREQUENCY'
,p_column_display_sequence=>70
,p_column_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9800907191921902)
,p_query_column_id=>9
,p_column_alias=>'INSTRUCTIONS'
,p_column_display_sequence=>90
,p_column_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517933488865147)
,p_query_column_id=>4
,p_column_alias=>'MEDICINE_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Medicine Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9518067125865148)
,p_query_column_id=>5
,p_column_alias=>'MEDICINE_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Medicine Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517831417865146)
,p_query_column_id=>3
,p_column_alias=>'NOTES'
,p_column_display_sequence=>30
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517780210865145)
,p_query_column_id=>2
,p_column_alias=>'PRESCRIPTION_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Prescription Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9517624496865144)
,p_query_column_id=>1
,p_column_alias=>'PRESCRIPTION_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Prescription Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713065501Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9781759484887332)
,p_plug_name=>'Visit Form'
,p_static_id=>'visit-form'
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9789188606887342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9788768251887341)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9789617285887343)
,p_button_id=>wwv_flow_imp.id(9789188606887342)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9790976967887344)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9788768251887341)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9790136974887344)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9788768251887341)
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
,p_button_condition=>'P19_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9790526115887344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9788768251887341)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9782506635887337)
,p_name=>'P19_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9784888514887339)
,p_name=>'P19_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_prompt=>'Diagnosis'
,p_source=>'DIAGNOSIS'
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9783682703887338)
,p_name=>'P19_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9785680371887340)
,p_name=>'P19_FOLLOW_UP_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9785214846887339)
,p_name=>'P19_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9783272195887338)
,p_name=>'P19_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9784429970887339)
,p_name=>'P19_SYMPTOMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_prompt=>'Symptoms'
,p_source=>'SYMPTOMS'
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9784087849887338)
,p_name=>'P19_VISIT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
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
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9782138987887335)
,p_name=>'P19_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_item_source_plug_id=>wwv_flow_imp.id(9781759484887332)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9792132285887345)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9792132285887345
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9791347509887344)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9781759484887332)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Visit Form'
,p_static_id=>'initialize-form-visit-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9791347509887344
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9791760043887344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9781759484887332)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Visit Form'
,p_static_id=>'process-form-visit-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9791760043887344
,p_created_on=>wwv_flow_imp.dz('20260713064907Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064907Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Admissions'
,p_alias=>'ADMISSIONS'
,p_step_title=>'Admissions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713070032Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9820122696950704)
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
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070032Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9820282265950704)
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
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ADMISSION_ID:\#ADMISSION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9820282265950704
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070032Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9823038634950717)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9821425601950709)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admission ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9823881226950720)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9823428850950718)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9822246989950713)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9757770481793496)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9821816185950712)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9757070756793494)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9822632375950715)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9811129739950573)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9824242019950722)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9826933829955788)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_ID:DOCTOR_ID:ROOM_ID:ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713070032Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070032Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9826310197950725)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9824653185950724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9820122696950704)
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
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9825023428950724)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9820122696950704)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9825421293950724)
,p_event_id=>wwv_flow_imp.id(9825023428950724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9820122696950704)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713065941Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065941Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Admission Form'
,p_alias=>'ADMISSION-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Admission Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721085944Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9809424926950571)
,p_plug_name=>'Admission Form'
,p_static_id=>'admission-form'
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9815728522950578)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9801285310921905)
,p_name=>'Currently Admitted Patients'
,p_static_id=>'currently-admitted-patients'
,p_parent_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_template=>4073835273271169698
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.full_name, d.full_name doctor_name, r.room_no, ad.admission_date, ad.admission_reason',
'FROM admissions ad',
'JOIN patients p ON p.patient_id = ad.patient_id',
'JOIN doctors d ON d.doctor_id = ad.doctor_id',
'JOIN rooms r ON r.room_id = ad.room_id',
'WHERE ad.status = ''Admitted'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713081752Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081752Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9801657263921909)
,p_query_column_id=>4
,p_column_alias=>'ADMISSION_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Admission Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713081752Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9801772493921910)
,p_query_column_id=>5
,p_column_alias=>'ADMISSION_REASON'
,p_column_display_sequence=>50
,p_column_heading=>'Admission Reason'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713081752Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9801413094921907)
,p_query_column_id=>2
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713081752Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9801384386921906)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713081752Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9801544349921908)
,p_query_column_id=>3
,p_column_alias=>'ROOM_NO'
,p_column_display_sequence=>30
,p_column_heading=>'Room No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713081752Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9816169140950578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9815728522950578)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9816675610950579)
,p_button_id=>wwv_flow_imp.id(9816169140950578)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9817869883950580)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9815728522950578)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065940Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9817146818950579)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9815728522950578)
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
,p_button_condition=>'P21_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065940Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9817402736950580)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9815728522950578)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065940Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9811720990950575)
,p_name=>'P21_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9809897817950572)
,p_name=>'P21_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9812520288950576)
,p_name=>'P21_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_prompt=>'Admission Reason'
,p_source=>'ADMISSION_REASON'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9812187915950576)
,p_name=>'P21_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9810647020950573)
,p_name=>'P21_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9810225392950572)
,p_name=>'P21_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PATIENTS.CIVIL_ID'
,p_lov_display_null=>'YES'
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260720105649Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9811041972950573)
,p_name=>'P21_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
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
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065939Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9812905497950576)
,p_name=>'P21_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_item_source_plug_id=>wwv_flow_imp.id(9809424926950571)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted;Admitted,Discharged;Discharged'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713065939Z')
,p_updated_on=>wwv_flow_imp.dz('20260721085944Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10903526230514001)
,p_validation_name=>'Discharged Patient Requires Discharge Date'
,p_static_id=>'discharged-patient-requires-discharge-date'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P21_STATUS = ''Discharged''',
'       AND :P21_DISCHARGE_DATE IS NULL',
'    THEN',
'        RETURN FALSE;',
'    END IF;',
'',
'    RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Discharge date is required for discharged patients.'
,p_when_button_pressed=>wwv_flow_imp.id(9817402736950580)
,p_associated_item=>wwv_flow_imp.id(9812187915950576)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260720123703Z')
,p_updated_on=>wwv_flow_imp.dz('20260720123703Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9819074834950581)
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
,p_internal_uid=>9819074834950581
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9818262943950580)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9809424926950571)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Admission Form'
,p_static_id=>'initialize-form-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9818262943950580
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065940Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9818667849950580)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9809424926950571)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Admission Form'
,p_static_id=>'process-form-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9818667849950580
,p_created_on=>wwv_flow_imp.dz('20260713065940Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065940Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9801160941921904)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Room Status'
,p_static_id=>'update-room-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE rooms',
'SET status = CASE WHEN :P21_STATUS = ''Discharged'' THEN ''Available'' ELSE ''Occupied'' END',
'WHERE room_id = :P21_ROOM_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9801160941921904
,p_created_on=>wwv_flow_imp.dz('20260713070517Z')
,p_updated_on=>wwv_flow_imp.dz('20260713075014Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260713081926Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721072928Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9803270890921925)
,p_name=>'Appointment_Summary_Region'
,p_static_id=>'appointment-summary-region'
,p_title=>'Appointment Summary'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_date AS "Date", a.appointment_time AS "Time",',
'            s.status_name AS "Status", a.reason_for_visit AS "Reason"',
'     FROM appointments a',
'     JOIN appointment_statuses s ON s.status_id = a.status_id',
'     WHERE a.appointment_id = :P22_APPOINTMENT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713104758Z')
,p_updated_on=>wwv_flow_imp.dz('20260713104758Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803372936921926)
,p_query_column_id=>1
,p_column_alias=>'Date'
,p_column_display_sequence=>10
,p_column_heading=>'Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104758Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803657642921929)
,p_query_column_id=>4
,p_column_alias=>'Reason'
,p_column_display_sequence=>40
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104758Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803587796921928)
,p_query_column_id=>3
,p_column_alias=>'Status'
,p_column_display_sequence=>30
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104758Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803450419921927)
,p_query_column_id=>2
,p_column_alias=>'Time'
,p_column_display_sequence=>20
,p_column_heading=>'Time'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104758Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9833222709429347)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713081927Z')
,p_updated_on=>wwv_flow_imp.dz('20260713081927Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9803764833921930)
,p_name=>'Doctor_Summary_Region'
,p_static_id=>'doctor-summary-region'
,p_title=>'Doctor Summary'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.full_name AS "Doctor Name", dep.department_name AS "Department",',
'            sp.specialty_name AS "Specialty"',
'     FROM doctors d',
'     JOIN departments dep ON dep.department_id = d.department_id',
'     JOIN doctor_specialties sp ON sp.specialty_id = d.specialty_id',
'     WHERE d.doctor_id = :P22_DOCTOR_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713104851Z')
,p_updated_on=>wwv_flow_imp.dz('20260713104851Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803945083921932)
,p_query_column_id=>2
,p_column_alias=>'Department'
,p_column_display_sequence=>20
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104851Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803870814921931)
,p_query_column_id=>1
,p_column_alias=>'Doctor Name'
,p_column_display_sequence=>10
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104851Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9804000164921933)
,p_query_column_id=>3
,p_column_alias=>'Specialty'
,p_column_display_sequence=>30
,p_column_heading=>'Specialty'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104851Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9802580111921918)
,p_name=>'Patient_Summary_Region'
,p_static_id=>'new'
,p_title=>'Patient Summary'
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS "Name", civil_id AS "Civil ID",',
'       TRUNC(MONTHS_BETWEEN(SYSDATE,date_of_birth)/12) AS "Age",',
'       gender AS "Gender", blood_group AS "Blood Group", mobile_no AS "Mobile"',
'FROM patients WHERE patient_id = :P22_PATIENT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_on=>wwv_flow_imp.dz('20260713104612Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9802886970921921)
,p_query_column_id=>3
,p_column_alias=>'Age'
,p_column_display_sequence=>30
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803070956921923)
,p_query_column_id=>5
,p_column_alias=>'Blood Group'
,p_column_display_sequence=>50
,p_column_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9802730079921920)
,p_query_column_id=>2
,p_column_alias=>'Civil ID'
,p_column_display_sequence=>20
,p_column_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9802925117921922)
,p_query_column_id=>4
,p_column_alias=>'Gender'
,p_column_display_sequence=>40
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803122454921924)
,p_query_column_id=>6
,p_column_alias=>'Mobile'
,p_column_display_sequence=>60
,p_column_heading=>'Mobile'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9802601560921919)
,p_query_column_id=>1
,p_column_alias=>'Name'
,p_column_display_sequence=>10
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713104518Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9805109997921944)
,p_plug_name=>'Prescription_Region'
,p_static_id=>'prescription-region'
,p_title=>'Prescription'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_query_where=>'patient_visit_id = :P22_VISIT_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Prescription'
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
,p_created_on=>wwv_flow_imp.dz('20260713114154Z')
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9848453446643212)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9848524127643213)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9805616215921949)
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9847350585643201)
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9805708366921950)
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9847457564643202)
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9805589886921948)
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
,p_lov_source=>'SELECT medicine_name d, medicine_id r FROM medicines WHERE status=''Active'' ORDER BY medicine_name'
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9847527570643203)
,p_name=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Patient Visit Id'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P22_VISIT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9805480984921947)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Prescription Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9805343006921946)
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
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9805277168921945)
,p_internal_uid=>9805277168921945
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
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9852956411644232)
,p_interactive_grid_id=>wwv_flow_imp.id(9805277168921945)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9853001764644236)
,p_report_id=>wwv_flow_imp.id(9852956411644232)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9853472519644246)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9805343006921946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9854399620644249)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9805480984921947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9855212252644251)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9805589886921948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9856152554644253)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9805616215921949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9857044998644255)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9805708366921950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9857977146644257)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9847350585643201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9858816444644259)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9847457564643202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9861486479700994)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9847527570643203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10094863839786641)
,p_view_id=>wwv_flow_imp.id(9853001764644236)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9848453446643212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9804102224921934)
,p_name=>'Previous_Visits_Region'
,p_static_id=>'previous-visits-region'
,p_title=>'Previous Visits'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT visit_date AS "Visit Date", symptoms AS "Symptoms", diagnosis AS "Diagnosis"',
'     FROM patient_visits',
'     WHERE patient_id = :P22_PATIENT_ID',
'     AND appointment_id != :P22_APPOINTMENT_ID',
'     ORDER BY visit_date DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713105005Z')
,p_updated_on=>wwv_flow_imp.dz('20260713105005Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9804445780921937)
,p_query_column_id=>3
,p_column_alias=>'Diagnosis'
,p_column_display_sequence=>30
,p_column_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713105005Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9804335845921936)
,p_query_column_id=>2
,p_column_alias=>'Symptoms'
,p_column_display_sequence=>20
,p_column_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713105005Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9804211951921935)
,p_query_column_id=>1
,p_column_alias=>'Visit Date'
,p_column_display_sequence=>10
,p_column_heading=>'Visit Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713105005Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9804536069921938)
,p_plug_name=>'Visit_Details_Region'
,p_static_id=>'visit-details-region'
,p_title=>'Visit Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713105112Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110625Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9804948732921942)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9804536069921938)
,p_button_name=>'SAVE_VISIT'
,p_static_id=>'save-visit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Save Visit'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713112245Z')
,p_updated_on=>wwv_flow_imp.dz('20260713112245Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9801802566921911)
,p_name=>'P22_APPOINTMENT_ID'
,p_item_sequence=>10
,p_item_display_point=>'AFTER_LOGO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713101242Z')
,p_updated_on=>wwv_flow_imp.dz('20260713101242Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9804768882921940)
,p_name=>'P22_DIAGNOSIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9804536069921938)
,p_prompt=>'Diagnosis'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713111559Z')
,p_updated_on=>wwv_flow_imp.dz('20260713111705Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9802048271921913)
,p_name=>'P22_DOCTOR_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9833222709429347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713101920Z')
,p_updated_on=>wwv_flow_imp.dz('20260713101920Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9802242889921915)
,p_name=>'P22_FOLLOW_UP_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9804536069921938)
,p_prompt=>'Follow Up Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713103850Z')
,p_updated_on=>wwv_flow_imp.dz('20260713110625Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9804878273921941)
,p_name=>'P22_NOTES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9804536069921938)
,p_prompt=>'Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713111705Z')
,p_updated_on=>wwv_flow_imp.dz('20260713111720Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9802167932921914)
,p_name=>'P22_PATIENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9833222709429347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713101921Z')
,p_updated_on=>wwv_flow_imp.dz('20260713101921Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9804607785921939)
,p_name=>'P22_SYMPTOMS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9804536069921938)
,p_prompt=>'Symptoms'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713111256Z')
,p_updated_on=>wwv_flow_imp.dz('20260713111509Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9801971782921912)
,p_name=>'P22_VISIT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9833222709429347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713101920Z')
,p_updated_on=>wwv_flow_imp.dz('20260713101920Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(9802442828921917)
,p_computation_sequence=>20
,p_computation_item=>'P22_DOCTOR_ID'
,p_static_id=>'p22-doctor-id'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT doctor_id FROM appointments WHERE appointment_id = :P22_APPOINTMENT_ID'
,p_created_on=>wwv_flow_imp.dz('20260713103955Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103955Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(9802347735921916)
,p_computation_sequence=>10
,p_computation_item=>'P22_PATIENT_ID'
,p_static_id=>'p22-patient-id'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT patient_id FROM appointments WHERE appointment_id = :P22_APPOINTMENT_ID'
,p_created_on=>wwv_flow_imp.dz('20260713103850Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103850Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9848924899643217)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Existing Visit Data'
,p_static_id=>'load-existing-visit-data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*) INTO v_count',
'  FROM patient_visits',
'  WHERE appointment_id = :P22_APPOINTMENT_ID;',
'',
'  IF v_count = 0 THEN',
'    :P22_FOLLOW_UP_DATE := NULL;',
'    :P22_SYMPTOMS := NULL;',
'    :P22_DIAGNOSIS := NULL;',
'    :P22_NOTES := NULL;',
'  ELSE',
'    SELECT follow_up_date, symptoms, diagnosis, notes',
'    INTO :P22_FOLLOW_UP_DATE, :P22_SYMPTOMS, :P22_DIAGNOSIS, :P22_NOTES',
'    FROM patient_visits',
'    WHERE appointment_id = :P22_APPOINTMENT_ID;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9848924899643217
,p_created_on=>wwv_flow_imp.dz('20260714111656Z')
,p_updated_on=>wwv_flow_imp.dz('20260714111656Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9848665825643214)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9805109997921944)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription_Region - Save Interactive Grid Data'
,p_static_id=>'prescription-region-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9848665825643214
,p_created_on=>wwv_flow_imp.dz('20260714063450Z')
,p_updated_on=>wwv_flow_imp.dz('20260714063450Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9805064147921943)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Visit Process'
,p_static_id=>'save-visit-process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, symptoms, diagnosis, notes, follow_up_date)',
'VALUES (:P22_APPOINTMENT_ID, :P22_PATIENT_ID, :P22_DOCTOR_ID, :P22_SYMPTOMS, :P22_DIAGNOSIS, :P22_NOTES, :P22_FOLLOW_UP_DATE)',
'RETURNING visit_id INTO :P22_VISIT_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9804948732921942)
,p_process_success_message=>'Visit saved successfully.'
,p_internal_uid=>9805064147921943
,p_created_on=>wwv_flow_imp.dz('20260713113328Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055756Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714053557Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714054227Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10076600673433392)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714053558Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053558Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10077483752433541)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.full_name patient_name, d.full_name doctor_name, v.visit_date,',
'       v.symptoms, v.diagnosis, v.follow_up_date, dep.department_name',
'FROM patient_visits v',
'JOIN patients p ON p.patient_id = v.patient_id',
'JOIN doctors d ON d.doctor_id = v.doctor_id',
'JOIN departments dep ON dep.department_id = d.department_id',
'WHERE (:P24_DOCTOR IS NULL OR d.doctor_id = :P24_DOCTOR)',
'AND (:P24_DEPARTMENT IS NULL OR dep.department_id = :P24_DEPARTMENT)',
'AND (:P24_VISIT_DATE IS NULL OR v.visit_date = :P24_VISIT_DATE)'))
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
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054227Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10077511587433541)
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
,p_internal_uid=>10077511587433541
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054227Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10081169139433573)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080344964433569)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10079103702433564)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10080715850433571)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10078714964433556)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10079994039433567)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10079558798433565)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714053559Z')
,p_updated_on=>wwv_flow_imp.dz('20260714053559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10082576971472331)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE:DEPARTMENT_NAME'
,p_created_on=>wwv_flow_imp.dz('20260714054227Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054227Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9848228902643210)
,p_name=>'P24_DEPARTMENT'
,p_item_sequence=>30
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT department_name d, department_id r FROM departments ORDER BY 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714054052Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9848170617643209)
,p_name=>'P24_DOCTOR'
,p_item_sequence=>20
,p_prompt=>'Doctor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name d, doctor_id r FROM doctors ORDER BY 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714054052Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9848384380643211)
,p_name=>'P24_VISIT_DATE'
,p_item_sequence=>40
,p_prompt=>'Visit Date'
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
,p_created_on=>wwv_flow_imp.dz('20260714054052Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054052Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Medicine Stock Report'
,p_alias=>'MEDICINE-STOCK-REPORT'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714054407Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720072821Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10083615864482336)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714054407Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054407Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10084439926482462)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.medicine_name, c.category_name, m.current_stock, m.reorder_level,',
'       CASE WHEN m.current_stock < m.reorder_level THEN ''Low Stock'' ELSE ''Normal'' END stock_status',
'FROM medicines m',
'JOIN medicine_categories c ON c.category_id = m.category_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260720072821Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10084513472482462)
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
,p_internal_uid=>10084513472482462
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260720072821Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10086180182482470)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10086505468482472)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10085762555482467)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10086910434482474)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10087356033482475)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054408Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054408Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10679407830159285)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260720072821Z')
,p_updated_on=>wwv_flow_imp.dz('20260720072821Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Admission Report'
,p_alias=>'ADMISSION-REPORT'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260714054539Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720072621Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10089106506491657)
,p_plug_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.full_name patient_name, d.full_name doctor_name, r.room_no, r.room_type,',
'       ad.admission_date, ad.discharge_date, ad.status',
'FROM admissions ad',
'JOIN patients p ON p.patient_id = ad.patient_id',
'JOIN doctors d ON d.doctor_id = ad.doctor_id',
'JOIN rooms r ON r.room_id = ad.room_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260720072621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10089278197491657)
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
,p_internal_uid=>10089278197491657
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260720072621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10092088570491669)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10092436786491671)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090843260491665)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10090430059491662)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091258031491666)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10091601427491668)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10092831607491673)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714054540Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054540Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10678592621147273)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260720072621Z')
,p_updated_on=>wwv_flow_imp.dz('20260720072621Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10088320304491529)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(9496758301697415)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714054539Z')
,p_updated_on=>wwv_flow_imp.dz('20260714054539Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9502315380697568)
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9503978114697588)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9502315380697568)
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9503239549697583)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9502315380697568)
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9503625047697587)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9502315380697568)
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9502847979697581)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9502315380697568)
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
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9508026792697597)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9508026792697597
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9507669290697597)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9507669290697597
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9504378301697591)
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
,p_internal_uid=>9504378301697591
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9505387622697595)
,p_page_process_id=>wwv_flow_imp.id(9504378301697591)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9505878722697596)
,p_page_process_id=>wwv_flow_imp.id(9504378301697591)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9504892259697594)
,p_page_process_id=>wwv_flow_imp.id(9504378301697591)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9506261085697596)
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
,p_internal_uid=>9506261085697596
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9507263298697597)
,p_page_process_id=>wwv_flow_imp.id(9506261085697596)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9506718600697597)
,p_page_process_id=>wwv_flow_imp.id(9506261085697596)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260712111404Z')
,p_updated_on=>wwv_flow_imp.dz('20260712111404Z')
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
