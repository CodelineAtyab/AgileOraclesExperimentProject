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
,p_default_workspace_id=>19499716226878370035
,p_default_application_id=>111146
,p_default_id_offset=>19500309225890736518
,p_default_owner=>'WKSP_HOSPITALMANGMENT'
);
end;
/
 
prompt APPLICATION 111146 - Hospital Management System
--
-- Application Export:
--   Application:     111146
--   Name:            Hospital Management System
--   Date and Time:   13:11 Tuesday July 21, 2026
--   Exported By:     ALMAJEED9266@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     19
--       Items:                   70
--       Validations:              4
--       Processes:               19
--       Regions:                 52
--       Buttons:                 29
--       Dynamic Actions:          5
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             16
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_HOSPITALMANGMENT')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Hospital Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'HOSPITAL-MANAGEMENT-SYSTEM105')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'83FA0AD890C901CC89227DA1A9FA860E6607F18ADF8E823F6B1790DFF79C5D1D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(19508121356294788037)
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
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721124704Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461234120853
,p_version_scn=>'15790584117011'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(19508122303408788053)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(19508123051858788122)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508117242313788023)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508120254983788027)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508117580068788023)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508117842015788023)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508120002305788026)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508119399160788025)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508120610232788027)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508120858059788028)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508119028808788025)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508116952901788007)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508119675773788026)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508118164728788024)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508118817493788025)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(19508118519394788024)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(19508123051858788122)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:xwB1lgd17HFK1RvSp2ShO_YU6tIi3y7Vjs9QNWPk1Gg'
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508136745569788219)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508137092647788219)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508137662060788221)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(19508137092647788219)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508138199761788223)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(19508137092647788219)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(19508122303408788053)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:Bfqy5cVvDZwnoo08ZkZATF5J1zA7rO67g1ladwZD8xs'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260721114236Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508442652927140912)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Admission Management'
,p_static_id=>'admission-management'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
,p_created_on=>wwv_flow_imp.dz('20260714103221Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103221Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508676140332561740)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admission-report'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20260715104153Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104153Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508262443394142069)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Appointment Booking'
,p_static_id=>'appointment-booking'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508649263480099917)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20260715064758Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064758Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508355067234527203)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Appointments'
,p_static_id=>'appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
,p_created_on=>wwv_flow_imp.dz('20260713122018Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508328615762687155)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20260713075043Z')
,p_updated_on=>wwv_flow_imp.dz('20260713075043Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508177521168997728)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Doctor Management'
,p_static_id=>'doctor-management'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508133928029788187)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508252292297819613)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Medicine Management'
,p_static_id=>'medicine-management'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508670425165522167)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508151165897824546)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Patient Management'
,p_static_id=>'patient-management'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508276132755365120)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
,p_created_on=>wwv_flow_imp.dz('20260713065121Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065121Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19508660327298282245)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
,p_created_on=>wwv_flow_imp.dz('20260715071802Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071802Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19829986762042257828)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20260721104137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104137Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC9D797014577EC7BF3D97C4E8401202494842800542201018340281397D610E3BDE124871CA180907B39B4AEC381B57EDFEB1DEADCD56922A';
wwv_flow_imp.g_varchar2_table(2) := 'EFDABB9B8DD7418037950299EC6E0CE5DDB27162EC984387394C6CC4252421840542A0FB98A3F37E4FC26B408851778F7ADECC9BEAD73DD3F38EDFEFFBFBF0FAF57B3DC802F9920AE8504002A4433C59149000490A74292001D2259F2C2C01920CE85240';
wwv_flow_imp.g_varchar2_table(3) := '02A44B3E5958022419D0A580668074B52A0B878C0212A09009A5398E4880CCD13D645A9500854C28CD714402648EEE21D3AA04286442698E23122073740F9956471F203FA4FB747D594C65E1CEE4EA8DBB1EA8D858965B59B4A3A0AA78E72395C5DBD785';
wwv_flow_imp.g_varchar2_table(4) := '43AA225F99CFE43B69405A90267E4837EA594C054885AA5417EF9C5151BC7D5365D1F65F556EDC515D5954D6EF70A21D56DF159FE23DAF283801A88754D5F701CBBE2F1C12F795F94CBE9306A4056942DA708D3696FD0B6946DA918630F135AA001D2BDC';
wwv_flow_imp.g_varchar2_table(5) := '31BEAAA86C7D4551D93F5416971DA82ADA71C3A7FA4E2BAAB20B50B64151E703B0B324B7A115B0738D147C9B3423ED4843AE65F1F61F57B21EFA70E1F684A18B06E6AC2530D5DE5D2BFD4BF15A50A002AF28C0F7A0E261966B2C4B72D3A7C058D2525595';
wwv_flow_imp.g_varchar2_table(6) := 'EF43555EB15A2C4C639549ACAF527F4B071CA0EABFFCB5BDB2A8ECF9AAA21D35AAA2FE1733AC8025B9054681C58AA2EEAF2ADE719AF5F2A5A47D609AF953AD0105E870E1DBA9BE36FB11D6DC5B2C4D67496EA3A1808A2CD6056DF7B5DB0ED3B021904D06';
wwv_flow_imp.g_varchar2_table(7) := '0CA0A3853B66DAAC9E0A7ECD0EA407B2EEE11458E0B1FA8E5416BF356BB84C7ABE0B0840D5C5654B2C56F530332C95258336598D36059407A05A0F5516EF58A6ADFCF0A50C07887A1E9F8AF759B37280CC4408928D0DB4D53F04A2273214A0EA75BF765A';
wwv_flow_imp.g_varchar2_table(8) := '6CEA5E269A9325B90597024EA8B6728A919166190A902FCAFE2BA89869A481B22E23155067F1181958A561005516953DC7668C3719689BAC2A200AA86CD69F62654CE5860074B8F09D310A949F1A6392AC65141478CDA84B99210059AD1D9BD84C73FC28';
wwv_flow_imp.g_varchar2_table(9) := '382E9B304681046F94ED5923AAD20D1003475114BC88E07D49CB86508005FEAF2976437C35A253AC9E11E5BF2B735571D9636CE09C75D717F244502BA002D93C763AADD40D107C8AEC7D7406C1B4E206C44E17401F3DB733120A1E314D00D9B03E0558EC';
wwv_flow_imp.g_varchar2_table(10) := 'E806484F25BA008AEEF52C648DEBAA8395979B790A58ECD6B67C3DCDEB0ABEAA5A08203DEDCBB2262BA03786FA0052540990C900E86D5ED51943CD00D12DA00265895E0782B97C38D8C662A8AB13D00C5055E1AE2426F03896E426B6024915CFBEAD398E';
wwv_flow_imp.g_varchar2_table(11) := '9A01824DD1DCA8D87A879EF58A5B4DD6EA9576807CAA7C6443ABEAC1564E472CB503649100051B079AEDD1114BED00C13746B3C1B2607029A0FA6C5A0DD20E908E6E4FABB1B25C80145060D75AB37680AC16D903DD4B75D1CEEBE80CB403E4D34EAD68FA';
wwv_flow_imp.g_varchar2_table(12) := '86BCBD3A3A03ED00298A27E485950EDE5701ED00DDB76A99211C14900085439403E8A3042880E28643D512A03BA2DCE7ED477B7F175A7BDB7183A51E4FDF1D39E4C76F2A20011A548380A96D6BC2C5B62B68EA6CC1D5EE1B6866A9BEFD2BD4B4D6838E81';
wwv_flow_imp.g_varchar2_table(13) := '8769D018810E610F90DBE7415DFB150E8C5BF5226DEA24CC589083DC87E663DADC6C24A5A7C011E900C143103577B7C2A7FA040A71604D0D6B800884868E66F47AFA913C692216AE5D86C9F3A6233123193113E291F4402AA6B966C1B566297216CD435C';
wwv_flow_imp.g_varchar2_table(14) := '623CBBAC75E0627B13BC12224E665800D4E9EEC1F5DE365CE96AC1A58EABB8DA73036D6C9CD3C43EBBBD1E64644D4566DE4C58ED562ECA50BBB889E390B36C3EA6CCCC84DBEB6597B96B43650BBB73210D50BFD7CD2F4F8D0C9A6BDD37D1D6D7852E0653';
wwv_flow_imp.g_varchar2_table(15) := '6B4F3BAEB0714E677F0F129212919E33D5EFC0A7664F46E69C2C564F2F5A7ADAFC2E17AA19431620BA93A241315D9EC6252762A66B0E163C5A8082A75662DECA7CDEEBD0F8268B5DA2461ADCE469E970463B194037D978481D69F190CA1F9200D1C0F84A';
wwv_flow_imp.g_varchar2_table(16) := 'D775D81C76CC5A988BECC57391903E0191314E58AC1644C5C7F05E87C6375696474B4453A6A4F162DD9E5E7E0CD75D480274B9F31A545545765E0EE253C70724B6B16C404D1577BABBE9607632ADFD9003886EB7E9B29592918AB1C9817B6C3B8AF56216';
wwv_flow_imp.g_varchar2_table(17) := 'AB15348EA2013ACD2375F477A3974D449A164D131A0E498048C7E4A969740848EAB8761335473F878FDD8D797C5ED0009D261EA9E7AB631391676F3480EEF0E8BB8018104495861C40B77A800867A4E132B75EBA8A131F56E0E427D56869BA8AB8D44464';
wwv_flow_imp.g_varchar2_table(18) := '16E420F7C9C598B37611A62D99CDE69092F8C0BA9DDDF1D5B65DE6D305861B124415861C4074EB4EFADA22ED74302C5D3A75015F567E8ECEB60ECC5EBB104FFEE2053CF2CFCF62DE771EC5F40DF9C82A5E84B9DB1EC18A9F3C83D53F7E16592BE6719068';
wwv_flow_imp.g_varchar2_table(19) := 'BA807A27C30C09B28A4206A06E772F9F20EC674B13A4715FD7F07747AAD7878E9636349D6940EDB11AD41C3A89BA136771B5F632BA5A3BA88AAF13C1537FF622BF935BFD934D98515C004782F3EBEFEF7C133D251173B6ACC09A7F2AC19858275F98FDAA';
wwv_flow_imp.g_varchar2_table(20) := 'FBFA9DD942E2B3F00035B3B5A9336CCCD1C096246882D0E7F30D0486DD850DBCB97D4FE05C39DB808AF73EC6C98FAB50FB7F67D174B1112D5F5D43E385069C3D7E1AC73FAAC067EF1FC2E59A7AD47F7E1E044F62461256FCA818D119FE0FCC9D697178F8';
wwv_flow_imp.g_varchar2_table(21) := '87CF203A2116377B3B71A3EF76306FB74CCC4FC2024403545A04BDD1DB81A8D868643D380B7397E7F1F5AC25DF7A1811D163EE8A484F7B178E7D7814174E9D054DFF4D5F9A8B95DF2DC4BA9F3D8F6FED7A911F97BFF4347256E7A3BFAF1F17BF38874BE7';
wwv_flow_imp.g_varchar2_table(22) := 'EA40F347052F3F058BC37A579DF73B11392106CBBFB78167A34B19D9CD3F04C94EAF19420244CFECD08226BF5D9F9C8A392BF2307E4A0AA2C78D852D62E8B14FE7F5367C76E0087A3ABB91F1E074ACFBF956E46E5D857173D34141B6D82DFC387EC16464';
wwv_flow_imp.g_varchar2_table(23) := 'FFC562ACFFE50BC85DBF18F45AFA374F21625C14BDD594C6A4C422E73117686EAA85ADC969AA24480B090910DD227BD9A56A5AEE0C3C303F9BCF2E0FA7AFBBA70F5F1C39C1B32C2A791CAE97D7C21E3BFC5D9A2D3A02D337E6A3F03FFE1663B39379593D';
wwv_flow_imp.g_varchar2_table(24) := 'BBCC3FCB832DD281F6BE4E3DD5045D59E100BADEDB8E3E8F1BE35393909499E697A0174E9C81BBCF8DBC3F5F85B45533FD2A6374267B4C0426CD9DC6EFCC4269F9432880688DABA5E7267FC02BF3C16CBF62DCC9EEB468CE263D371393D7E4FA55265099';
wwv_flow_imp.g_varchar2_table(25) := 'E2D31279D574E9E56F4260271440EDFD5D7C1C9132390D56877F3FE76EAE6FE2619ABE7A3E3F9AB98B491FB883F3AA5E33CD30B46DA100EAF70EFC9631860D96FD55E1DA95AB3C6BC2EC547E347317317660EEC8778F2906336DD3DAB65000D1258C1C8D';
wwv_flow_imp.g_varchar2_table(26) := '49F0EF4F9179DD1E78D8D827213D898A999EFADABAB90D564528D9B9CD77ED064F08E589CA676F98E58AC276F7DF3CBD6E9E29213D308F74F0CA47B06BABBFC6733BAC434F35F02F05DB0905904D1998C8EBBED17E4F99FB3A7B70E9CB5A7CF9E9713EA3';
wwv_flow_imp.g_varchar2_table(27) := '4C19ED6322E8607A6A3A7591DB2001E2328CFE2ED2E6E08D76B5DD3D97D2D3D18D9A23A750C59620EA4FD7A2B5F93A3CEC1296342D0D4973327839B3775DD707C0E7CB2E6C3AC26C7B8C685FA81E28DA3E30086DAABD749BEF97BEA8C5671F1C464B5333';
wwv_flow_imp.g_varchar2_table(28) := '26CE9C8CA5DF59CF1732691270E9AB1B40B3CBB71530E9C3CA1F14217BD583A0F53A5AD6B8D076191DFD03E322934CD2DDAC500045B0B183D31E816EB61C71F9741D77BEF6D819D4D7D4F2F7AE675661F1F79F465241266821939F0CA25D446234724A96';
wwv_flow_imp.g_varchar2_table(29) := 'E3C95FBE80D94FE4C3CDEE2AE921347A9A3188CC1C91294201449E4D7026D00117BF3C8FBA9367D94AFA25C44E88C313FFB819194F983B51C80DF363E7887762C6338BF1D0B7D7F1DCD41B893A3B2D1C4091560726460FCCE8369E6F8062B5E0A1979F46';
wwv_flow_imp.g_varchar2_table(30) := '54BA787F303179F1342CD9BA9643443D91D727DE04E3C801E2EE9ABB8B7544E1D6807A41E1B2A0BC5CF9AB50CAD2E998BD6621687158C4E7858404882614693D29293315196BE6F91BABA0CD3775F55C281645C8E7A78504E8E6E02311598FCD67C2072D';
wwv_flow_imp.g_varchar2_table(31) := '177E1B4663A229AE997C502DDA584848807A067F0D1A3DB838E977A482386372CE246E1DFD7E9FBF11642724401E36D8A42EDF39314E1099EF6F6644ECC01CD7AD5F95DCBF4470E41016A0B894442856FFD6C48243EAE1AD70C40E3CC36D51C4F2494880';
wwv_flow_imp.g_varchar2_table(32) := '144541F710CB19C38728B8BFFD134062856414AD352E80B418498BA67DD7BB8CABD4E49A6E3DEA6151C40A8958D60E06D96119781CA2B321747EAC77A5FA02F72ECA1EC98FA2EC840428DA3E305E686B681145E7FBDA79E1F017A0F14F8C7D60307DDF02';
wwv_flow_imp.g_varchar2_table(33) := '4192414880621C4ED8AD369C3E500D4F577F9048A9DD8CCB076BD07DA303D1CC2F45918368ED4A8EA06442642C13BD1355BFF8236E3DA83882E24193B5F76A072ADEFE80DB33D611CD8F22ED84EC8148E0F88818D078A1F1D4059CFF6D259D122EF9DC3E';
wwv_flow_imp.g_varchar2_table(34) := '1CFAE93E78FB3D888D88E2FE88E684B00091D013A3C7F34BD9F1DF7F8AEA9FBD074F471F9D1622F5B776A3EAF5F7D07AA9998333312A5108BBEF34520480EEB4F9EBCF5676CB9B11938C089B0317ABCFE08F7FBF132DC7EABFFE3E18DF78FB3CACC7ACC2';
wwv_flow_imp.g_varchar2_table(35) := 'FE97FE0D0D27CE618C2D02A9D11382D154BF6C121A20F2D066B1624A6C0ABF04F4B677E3A3D77E8BFD2FBC894F5E7D0727FEF5000FD6C57DC760663A5B7E14556FFC01FFFDCABFE377253FC7F1DFFD2FE053911C95808CD8647EF745BE88988407E896E8';
wwv_flow_imp.g_varchar2_table(36) := '740998149BC4EE64C6A0B7A31BCDE71A71EED3533C58D5E50761663AB9EF30EA2A6BD0DA780D603759F19131C81C9B8A38368E83E0AF900188E2E0B445228D5D0EA6C6A5B2CBC278FE2F7CBC330E8963C69A9A2638E39116330153C64E4456DC24243913';
wwv_flow_imp.g_varchar2_table(37) := '58AF131AD287861744CF3792C36203CD15D1BFF07191040F41645EA229876836F9493F0A5014D6057DC356D1DF5A447740DA6FAE02122073F517BEF5900648F8E808E0800448802005B389DA01F279C5FE4D6E304765B46DF3FA7AB436A91D208B2201D2';
wwv_flow_imp.g_varchar2_table(38) := 'AA7AB095D3114BED00C1A299DA60D34FDAA33D96DA01F2C91E2864C0D3114BED00E9E8F64246F8507144472C3503A428DA075E41AF7B9819A827969A0152DDF212162A9CE989A566802CF1FDF49388E1FFA652A8281CDA7EF40EC65293979A015AF0D656';
wwv_flow_imp.g_varchar2_table(39) := '376BB18225B989AD40C5602C3579A119206A4D050E42BE8456406F0C750164814F0224343E80DE18EA02A833D27694E927C7414C0441B7DEC1186A365F17402B766D66F0A8EF6A6E3DE40A8AE690FAEE400CB5DBAD0B206AD6A7AAAFD35126F114302276';
wwv_flow_imp.g_varchar2_table(40) := 'BA015A58FEFC511590776382F14331A3D8E9355B3740648045F642248350C9A8981902506773E37F32F51A59929B180A5C1E8C996E6B0D0168C5C1573D8AAAFC956E6B6405A3A380A26EA39819D1982100912179E525EF4251DEA0F73205B1022C46AEDD';
wwv_flow_imp.g_varchar2_table(41) := '5BF61B65A1610091419618F777D9B18A25B98D4C8151CAAD1C1C8C118C7A190A10ADA97861D9001537215FC1A640B34FF116518C8C34CC5080C8B0457B36D7298ABA92BD1FF87B4CEC8DDCCC5580DDB2D7AB2A1E5BB8FBF966A32D311C2032306FCF96E3';
wwv_flow_imp.g_varchar2_table(42) := 'AAC3B6000A3EA4CF3299AAC0FFC0619B9F5F5E7A3210560404203234FF379BAED779621E57B30DF985000001D5494441548037E9B34C2628A0E2B53A6FCCA3148B40B51E3080C8E00D7B3778F3F6946E635DE836F659FCFF0D933921C8D6032845AEF2D2';
wwv_flow_imp.g_varchar2_table(43) := 'BFA3182080AF800274CBEEFC3DA56F7ABCB6A950951FB073B7FFC15376426E8629D0C87AFC5799D6D35C7B4ACA0DAB75988A4605206ABF60EFA6CBAEF2921FB12E750AEB919E868AF7D979F696EDE5A6590156D00B55D9AF425DCBB49DCC7AFC1F92D6EC';
wwv_flow_imp.g_varchar2_table(44) := 'FCA86CA306D02D6FA84B653DD2EF5DE5A58F5BBC9E78F8D46550D51701E56DA83805C0C392DC8656C0431A290A7EC3D24B5094E5FDDD88779597ACCFDFB3E53DD276E862813B3BEA007DD395057BB7B6B9DED9F289AB7CCB1BACCB7DCE555E3AC7B5A7D4';
wwv_flow_imp.g_varchar2_table(45) := 'CE448985D7926251AD99AA8AB980B258512C8F4251D78743E2BE329FC977D280B4204D481BD2286F77E926965E77ED2EF978C9BED20E98F83215A07BF94DA2B8F66EFE6A41F97317E8F6D3B5A7E470DEEECD075C6C0A3E1C12F795F94CBE9306A4056972';
wwv_flow_imp.g_varchar2_table(46) := '2FBDCC3C1F94009929886C7B640A488046A697CC7D870212A03B04911F47A6800468647A854E6E833C9100192464B85623010AD7C81BE4B704C82021C3B51A0950B846DE20BF2540060919AED54880C235F206F92D013248C8F0A9E6764F2540B7EB213F';
wwv_flow_imp.g_varchar2_table(47) := '8D500109D0080593D96F57E0FF010000FFFFAB0F3C1F00000006494441540300907AD28AEC27AAEF0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(19508124459192788146)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D7B741CD579FF6957BBD2AEDE0F4BB26C21EBE1976C6CFC36B18D21367E04032104920281348747D2869C96E624E7B40D0D6DC86973DAD0';
wwv_flow_imp.g_varchar2_table(2) := 'A44DDB14F25FC9490E3D8794473924E518300663C03636C6EFB7DE6F69575AED53BDDFAC666625F45849B3AB993B9F8E66E6CE9D3BDF7CDFEF9BDFCCBDDFDC7BD771F8ABBF1AE68531B0EB3DE000FF3102364680096063E7B3E9001380EF025B23C004B0';
wwv_flow_imp.g_varchar2_table(3) := 'B5FBD9781B13809DCF08701588EF019B23C06F009BDF0076379F0960F73BC0E6F633016C7E03D8DD7C26801DEF00B659438009A041C1093B22C004B0A3D7D9660D012680060527EC880013C08E5E679B350498001A149CB00302636D64028C4584F76D85';
wwv_flow_imp.g_varchar2_table(4) := '0013C056EE6663C722C004188B08EFDB0A012680ADDCCDC68E458009301611DEB71502362280ADFCCAC6268900132049A0B8989C083001E4F42B5B9524024C802481E2627222C00490D3AF6C55920830019204CAD2C558F9091160024C080D1FB003024C';
wwv_flow_imp.g_varchar2_table(5) := '003B78996D9C100126C084D0F0013B20C004B08397D9C6091160024C080D1F900181A96C60024C85101F971A012680D4EE65E3A64280093015427C5C6A04980052BB978D9B0A0126C05408F171A91190980052FB8D8D33080126804140B2186B22C004B0';
wwv_flow_imp.g_varchar2_table(6) := 'A6DF586B831060021804248BB126024C006BFA8DB5360801268041409A4A0C2B9334024C80A4A1E2823222C00490D1AB6C53D208300192868A0BCA8800134046AFB24D4923C004481A2A2E680504A6AB231360BA887179A910600248E54E3666BA083001';
wwv_flow_imp.g_varchar2_table(7) := 'A68B1897970A01268054EE6463A68B001360BA887179A91090880052F9858D4913024C803401CD973127024C0073FA85B54A13024C803401CD973127024C8034F825140DA333D087E6814E5CF1B5E27C6F234E775FC1B9DE6BB8D8D78CABBE3674047A31';
wwv_flow_imp.g_varchar2_table(8) := '181E4A83367C8944049800896818988E0EC7D035D48FCBFD2DCA4DDE296EF0FEE00002E12022B1A872A5682C062207DDF85D82204484B382143D419F723CE915179C31024C80194337F18903E180B8E99BD031D883A14868E282E31C890952B40D74E342';
wwv_flow_imp.g_varchar2_table(9) := '5F1306F88D300E42C66631010CC433363C8CD6812E5CF3B5839EEEAAE84CB70B15D59568D8B41AEB6EBD119BF76DC7D6BB7762FDEE2DB87EEB5AD4AE5C8CBC823CB5B8B20D4723424E1BDA06BB957D5EA50601268041B80E8B9BFFAAA8DFF706FD9AC40C';
wwv_flow_imp.g_varchar2_table(10) := '47066A572CC6E6DB6E42FDFA06142F9C074F7E0E32B35C4A99EC5C0F0ACA8B51B9B41AAB776EC2BA1D37A26AF12264BA3295E3B4EA19F229D5A898A852D13E2FC622C0043008CF467FFBA8EA4E7179293688277CE5B26A40102199CB780A7350BDAA1E1B';
wwv_flow_imp.g_varchar2_table(11) := 'F76E43D1BC62ED14AA465D13F28731ACE571C21804980093E0480DD9BED0009AFC1DB8D4DFAC446D287A43511C6ADCB688EA0E355829BA93585FAFACA942C3D61BE0F6664F227DE2430E97132BB6ADC1FCEA055A216A3C931E5A0627140466BB62028C83';
wwv_flow_imp.g_varchar2_table(12) := '20DDF854F73ED7730D2DFE4EF842830846C25ABD3E22A238F454EE13D59D36D160A5E88E2AA6B4621E6AD72E557767BECDC840DDFAE5A8595EAFC9F08702E81191252D8313B34680093006427F785089C0F488BAF7984353EEE615E661C9A6EBA72C379D';
wwv_flow_imp.g_varchar2_table(13) := '020B1A168DAA0E750CF581DB03D34170F2B24C80047C286EDFE8EB008522D5EC82E202542FAD45C3C65558B7F3466CFDD24EA551BBF6F39B50BF6A29F2C571883F4FAE172BB6AC8523D37848EBD62C135788FF936E890DED782EAF678A80F1DE9AA92673';
wwv_flow_imp.g_varchar2_table(14) := '7C5EB7A85A50DC5E552353D4C397ADBF1ED7DFB201552B6B515C55064F410E90016466BBE12DCA43C5E22AAC12C7D78BD0E69A9D9B457E3CBA0383FFB2F3BC0A0955B1D4EE50D3BC9D1D028ED99D2EC7D9D4806D171FAD546B4A2A4AB17ED716945697AB';
wwv_flow_imp.g_varchar2_table(15) := '59936EB34568D3E14C2D94F3EBAB341DE81B412012D4F63931730452EBB599EB95C499C614A1FA74D3408726ACB8BC04CBB7DC209EE66E2DCF0C89CC6C17BCA29A85913FFADA3C92E4CD2C10B03D013AA951198B2910D207A825EB572A6933AE8ACA4A34';
wwv_flow_imp.g_varchar2_table(16) := 'B582D1B096E6C4CC11B0350186C587A5DE8468CFE21B968B27BF6BE668A6F8CCC2848F634C0063C0B63501FCE10062C3F1AFAB6ED1B02DB92EB93ABF31D04F4FCA7034865050EF5847BD48E9A31C2D677BAE2AA1DB4BFD2D68141FEDFAC5C73BEA9A31BD';
wwv_flow_imp.g_varchar2_table(17) := '2BD8B3B4AD09E0131FB854B7179516AB49536DFD9D7DB8F0D1291C7AE52D9C3B766A5CDD88C4D4300E4642F00B9B9AC5C73BEA56DD3CD089216E2C8F8B999A696B02244652F24B0A554C4CB10DFA02F8F4C0511C7BEB03B45C6E4234121F43A02897C48A';
wwv_flow_imp.g_varchar2_table(18) := 'DE00F485FA727FAB782BB483AB4CE383666B02C4127A58E695148C8FD01CE45E397E1E1FFCFE20BADBBB465DBD626915363EB0137B9EFA1A6E7FE611DCF5ECE3B8E7F92770C7CF1FC3EEBFB91F373D7E27D6DD7BB3F86631BA2AE70F0570A9AF99BB568F';
wwv_flow_imp.g_varchar2_table(19) := '4233BE636B024447A23F04057DD8A2ED5C2E91A1304EECFF10D7CE5DD6D47079DC587BCF76DCF98B6F61DB93F7A07AEF2AE4D5CF4376591E32BDF1067B56490EF29794A37C731D6AEF5C8B1D7F7F3FF63EFD10966EBF41934309EADE71D5D726DA3DF1A8';
wwv_flow_imp.g_varchar2_table(20) := '17E5D97DB135011C19199AFFA3A188969E8BC460AF1F47DE780F7DDDBDDAE557EEDD847DE2E95EF7C57570177AB4FC6412B98B4AB0EAD1CF63DF3F3D8CEA754BB55368F825558BC2B1B9B55753688E138E39BE7E5A2FEF0F0F2AD5007A0A9EEB6D144FC2';
wwv_flow_imp.g_varchar2_table(21) := '7804889418F2076833A3251689A1EB5A3B4E1FFC181FBF71181FBEF60EDEFDDD7E1C7AE94D9C7CEB082E1D3D83D6F3D7D0D7D68D9888E68CBDC890A8EF535D3F34148FF238329DD8FE9D2F62F9035BB4A7FCD87392DDF754E463E313B761EB37F7217364';
wwv_flow_imp.g_varchar2_table(22) := '200E4590AEF9DA85FDFC26909E00D1E1A8324C914285D4D18DAA01F4148CC646372A87FC83C9DE535AB9A07F4889D0BCF7F29B3875F8383A5B3BE0EBEDC7D0E090B8D1A3888423E8E9EC46D3C56B38FFF1199C78E708DE17D19CCB47CF829EF82488C8F3';
wwv_flow_imp.g_varchar2_table(23) := 'E97BC7101B69E4BABD59D8F583FB50B6A9960E1BB6CCDFB604BB7FF420B272B21499448226113255762CB4325A55A90940614E9A76847A4FC646E2FDE301E8124FC6BCD2E4A340D15018978F9DC507AFBFA344688613DA12AAFCA205A528AFD707B4A8F9';
wwv_flow_imp.g_varchar2_table(24) := '14CD69BC785554770E89B7C5FB38256EFE41DF8072382BCF839D4FDEA7D4F1950C8357DECA026C136F1655ECD83E506ABE9DB6D21280466BD1132EB1A14B5D1DE6D72CC4CA1BD7207170FAA67DDB414FDE641CDF79B905874515A7F1C2D551C56B372DC7';
wwv_flow_imp.g_varchar2_table(25) := 'CD7F7617EEF8D9A34A6466E74F1EC44D4F7D4549DFFECF8F62C7F7EE551AB36E4FFC094C27FB7A7DE869EFA6A4B26CF9E63EE4541529E954AD8A562EC0C6FB7740FDA35EB089E16035DF2E5BE908404FFAAB22D241A3B5542752DD97BA39D06C0C756B97';
wwv_flow_imp.g_varchar2_table(26) := 'A1B0B2048983D3D572936DA9AA72EEFD4F70FAA393A0A73895A5EED19F7B782FBE24C291EBBEB317F336D420AB34970E8D5AB2E7E5A278F5425063F6B69F3D8215BB378C3A4E3BD56B97A2E4862A4AA67CA9FEC26A942F5EA85D8726E5D2766C96908E00';
wwv_flow_imp.g_varchar2_table(27) := '577DADA366582B5B508E0DBBB7A2BC4E54471C7AD4673A7EA6FAF9C7FB0FA3ADB1553B6DC94DABB1E71FBF8105B72C8773241CA91D9C249199E346C383DB70DB3F7C03CA8079519608BAFAEB378B54FAFE373CB647BB18B5890623F69C954E2A02B40E74';
wwv_flow_imp.g_varchar2_table(28) := '894FFFF1480A7977D1F23AD01045A7CB49BB335B44A0E8F4A11318E88F4F77E22DCA55AA33AB1FDB01350E3F13C1DE8585D8F283BBB1F7470F61CF8F1F02C5F2672267A6E778E6E7A361D77AEDF4C44E815AA60D121622C0E4DEE80F0D801ABB6AA9EAE5';
wwv_flow_imp.g_varchar2_table(29) := 'B558D850031AC18559FC5D3E710EDD6D9D8A842CD148BDF5EF1E50AA334A8601ABDC1A511D13A14A03444D5B44EDAED5DA39FEF0CCC3C09A100B26A42000D5FBE9E9AFE23F4F547BAA1A6AD5DD196FA9235AE3B92BCAF98E4C076EF9EE97E12EF22AFB32';
wwv_flow_imp.g_varchar2_table(30) := 'AC3CF30BB46E138421458564B06B3A364841809E60BFF8A823EA2AC2728AF42C5EDF2052B3FFBF70ECB42664EBB7EE007541D03224492C5825DE9223B6F8C587C291A46D3672102061504B4D433D1CE24BEA6C3DD8DDD80E5F5F7C9666EA8456BEB976B6';
wwv_flow_imp.g_varchar2_table(31) := '224D797ED90A3DF23414D5DB4FA65436054A599E0041E1B4C8C8575D9A8BB3ACA6D210989ACEEB71FE25BBD61A22D38C42BC95FA7787E8381FF4CCA8B3913A599E00BE90DE85615E6539320C989D813AC6F575C53BA5D19424F3D6EBD50423C14F5A560A';
wwv_flow_imp.g_varchar2_table(32) := '0B667ADD9A74EA36A2EDD82461790224BEB6A9F16B84DF7A5ABA3431CB76AC11552ACBC3A4D9333641DF25D43C7E03A84858681B19A9FE90CADEC25CDACC7AF177F769324A962DD4D23226C27DFA0730A7435EA24FE43BCB5B1C4E2000FD10C544864E27';
wwv_flow_imp.g_varchar2_table(33) := '7F68508F89BBF33DD339D5726543FDBAADCE0CCBDF0ED3C6DFF21627766B76BA33A70DC078270412099037B329CEC7936BC6BC509FDE86723B5D665431A53A599E004E87DECD211A3466B2A84402B80AE47E03F49CD7FB37653BF506714AEFBA69084F75';
wwv_flow_imp.g_varchar2_table(34) := '51CB13C0954080F00C08101A0CA2EB6A1BAE7D725119D175F8D5B7B5C129047E8673661DE8E85C2B2C170F9ED4D4CCCED4BB6A6B9992272C4F80C437C0605FBCC3DA943E1B1E464F73274E1D3C86C3AF1DC0A90F4EE0CA998BCA882E7558A22A23169677';
wwv_flow_imp.g_varchar2_table(35) := 'D8E0506BBF82836A2B859413830A6ABECC5BCB13C093F0DAEE6ED127B99DC8693D4D1D38FCBF0770F2BD63E86A8D77729BA8ECDA2FDF0487CBF2104D64DEA8371D15A23114F4F34F2D039D08DB64D0BCE5BD9BE7D63BA77552AFCD789720F2E7A88506B4';
wwv_flow_imp.g_varchar2_table(36) := '5C3C721A270F7D8CB14FF9D2451558FF959BB1FB870FE0F69F3E82BBFEF3DBCA48AEBABBF4EEC2A38449B2E35D58845BFFEA8F50B5BA6E94457DC1015CE86D42D7901E0E1E5540A21D87D56DC9126F0097331EFD8984C2E814F5F9B136057AFD38FAC621';
wwv_flow_imp.g_varchar2_table(37) := '345F6A1C7568C5AE0DB8FD994771CBD3F7A1E68EB5C85F5C86ECF23C247E1C1A7582843B850DF3B1F97B7782E61DDAF8B59DC8CAD1A35E1D83BDCA845A2189DF06262640F2775B7176BE56F8C2F1D38886F5191F067B7C38FAE6610412667DA8FFDC4AE5';
wwv_flow_imp.g_varchar2_table(38) := 'C66F78681BB2CB8CF978A62960D184BBD083EA3DABF085671EC6F29DEB342B82D130AEF6B742D6B68143B3D4C289A2AC3CB89D2EC582B0780B9C79FF0420AA42E14010C70F1E813A170F8D0CA3F971D6FCE92EBEF115B43EBBA2B7DFCA3FDE8E1DDFBF17';
wwv_flow_imp.g_varchar2_table(39) := '841795A09BFF8AAF1532F615928200E4A48A9C62DA280B8DE0A219954F1C3882C84868D45390835B9FBC1F343F8E528857932250BC6A2176FEE557A1CE62118E464053AF4F7A92050F4A43006F66368A3DF99A0B5AAE34419D6FC791E9C0CDDFBF0779B5';
wwv_flow_imp.g_varchar2_table(40) := 'A5DA714E4C8D40FE92726CFF8BBBA10E2B0D84C53713C91AC6D21000E2AFCC5384FCAC1C911AFDBFED4FEE406EB5FE86187D94F72643A0707905D6DCB50DEA1F358C87A2F20C9C918A00E4A4CA9C52381DBA59346155D9A65A3A649DC5649AD6DFBD0115';
wwv_flow_imp.g_varchar2_table(41) := '4BF491631D833D26D370E6EAE877CACC6598EACCA0783A45474636653832B0E2DE2DA6D2CFAACAACF9FA0E4D751A3C1F14D1212DC3C209E908D019D03FDE2CD9BE1AD97334E58885EF897155A72A64DD8D2BB4639D81F888392DC3A209A908101B8E81FA';
wwv_flow_imp.g_varchar2_table(42) := 'B3A8BEA8DF2BEF585ED5C6746EEBF7E87812CEB161116B4EA70229B8965404F0274CEE5450F55CA9350000063A494441545E0CEF82C21440665F91F9F5F390575AA00120C3748A52116030E11711176D5AA6398A13C62150BB65A5262C15BF56AF094F53';
wwv_flow_imp.g_varchar2_table(43) := '422A0284440358C5ADA8AE424DF2D640044A97EAD3CEC8D010968A00E184F1C19E12EEE363E07DAF89CA2EC9D3D29104BCB54C8B25A422404C348255FCB38A99002A16466EB3CB7402C8D037482A024447E2FFE4705741366D78311801875B1F836DB0E8';
wwv_flow_imp.g_varchar2_table(44) := '39112715011C19191A88615F504B73C23804227EBD1B8423C3FAB78F892C98BD939C0EFDE914EA1D9CBD4096F019042203FA83C5C904F80C3E739AE176C447869112A1BE006D783118818166BD1F1013C06070672B2E3B615A8FDE8BFA7C37B395CBE7EB';
wwv_flow_imp.g_varchar2_table(45) := '08749D6BD176D441485A860513525581122776BA7CE89405DD617E953BCEEAE3AA735CD69F344C2A02E4B8B29191116F08775E6943A0A5DFFC779485340CF506D07C2AFE9351A4360D42A2AD9517A908405189DC84A7D2D9970E5BC33716D1F2F2EBC735';
wwv_flow_imp.g_varchar2_table(46) := '4D693A1AC7C8C346CBB460422A0210FE8933449C7DFB38069BE4E8B64BB6CDE512EC1AC0C9D7F5074A51C24C1C73A9D76CAF2D1D013CA2219CE3D6EBA69FFCE6C06C31E2F305021FFDF2F7DA040359992E7805CE90E04F3A02904FCA3C7A37E82B47CEA1';
wwv_flow_imp.g_varchar2_table(47) := 'EDDDF394CDCB0C11683B74014D272F6967977B4BB4B4D513521220CBE946A947EFB7FECE2F5F81FF92FEB34756775A3AF5F75FEAC4A1E75ED32E59949D27CDD39F8C9292006458A9780B6467BA29099A17F4CD9FBC00DFC5C927C3550AF34A43C07FA51B';
wwv_flow_imp.g_varchar2_table(48) := '6FFCF8B70805E2DD1F680ACA328FFEAB925AC15924E6FA54690940C02ECC2D43E648F78840FF20FEF0B7CFA3FDFD8B7488972910683D781EFFF7D4F3A0DF4FA0A24E8703D7E5956B6166CA9361919A0074F393D3684BCEA23943DFFAF9EFF0C133AF8A6F';
wwv_flow_imp.g_varchar2_table(49) := '04FAE0793AC64B1C81882F8823FFF23A0EFCDB4B088FCCAA47F855E755C095D0D5245EDAFA6BA90940EE713B5DA829A884577C24A37D5A2E7F7806AF7CF75738F1DC7E0CB5FB28CBF64BA82780D3BF7E172F3DFE1FB870E8A48687DB9989EBF22BB4B957';
wwv_flow_imp.g_varchar2_table(50) := 'B5039224A42700F9C999117F7D53BB80F6D5E5F4FEA378F9CF9FC5FEBFFE352EBD7404FDE7DA31D4E64364205EE755CBC9B68DF883E20DD88FDE4F9B71E1C50F71E0A917F03FDFFE779C78F5D0A899B5A9C15B935F89C44E86B261610B02A84EA3C850B5';
wwv_flow_imp.g_varchar2_table(51) := '789A795CA37F0BABF3522B3EFCED9B78FD87FF85979F78162F3EFAAF78E1FE9F4ABBBCF8D82FC41BF039FCE1E9DFE0C87FBF8DD6B3D75488942D357617E695A1DC5B2C5D9D5F31306135870448D0228D49FA5046F5D94505F35198953B6A1AC534AA61CA';
wwv_flow_imp.g_varchar2_table(52) := '4B5175A732B71475050B90D8A5C494CA1AA494ED08A0E2463D472B724AB0B8B00AF45628F31621DFED4596089D3A1D72C3E210F6B944DD9EC2C4055939201C6A443BA956DCF8F9EE1C15225B6CE5F674922EA4B702F521AACC9D879AFCF90A2996155743';
wwv_flow_imp.g_varchar2_table(53) := 'D66589203D3DE517095BE7E7942A6FC22C112C48122EA98A3101A472271B335D049800D3458CCB4B850013602EDCC9D7340D024C00D3B88215990B04980073813A5FD3340830014CE30A56642E106002CC05EA7C4DD320C004308D2BECA188D9AC640298';
wwv_flow_imp.g_varchar2_table(54) := 'CD23AC4F5A116002A4156EBE98D910600298CD23AC4F5A116002A4156EBE98D910600298CD23AC4F5A11482301D26A175F8C11480A0126405230712159116002C8EA59B62B2904980049C1C4856445800920AB67D9AEA41060022405D32C0BF1E9A64580';
wwv_flow_imp.g_varchar2_table(55) := '09605AD7B062E9408009900E94F91AA6458009605AD7B062E9408009900E94F91AA6458009605AD7C8A198D9AD600298DD43AC5F4A116002A4145E166E7604980066F710EB9752049800298597859B1D012680D93DC4FAA51481141220A57AB37046C010';
wwv_flow_imp.g_varchar2_table(56) := '04980086C0C842AC8A0013C0AA9E63BD0D41800960088C2CC4AA083001ACEA39D6DB1004980086C0384608EF5A06012680655CC58AA6020126402A50659996418009601957B1A2A9408009900A5459A66510600258C655D650D46A5A3201ACE631D6D750';
wwv_flow_imp.g_varchar2_table(57) := '04980086C2C9C2AC860013C06A1E637D0D45800960289C2CCC6A083001ACE631D6D750040C2480A17AB13046202D083001D202335FC4AC083001CCEA19D62B2D083001D202335FC4AC083001CCEA19D62B2D0830018C8099655816012680655DC78A1B81';
wwv_flow_imp.g_varchar2_table(58) := '0013C0081459866511600258D675ACB8110830018C4091655816012680655D670EC5ADAEC5FF030000FFFFDBAB44B300000006494441540300A6916D79DB3923020000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(19508124805816788147)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D099814D775EF4F552FB32FECC3BE2F02B10ECC0062359210968C160B31606D6C268E9F1DBF672B4EF42C074B4E9EBFD87E2F8963E72562';
wwv_flow_imp.g_varchar2_table(2) := '91E54F024CE478552439B6906409980101422076C4BE0DCCBE767755EEE999AE5EA667A6BBA7BAAABAEBDF5F55D7AD5BB7EEBDE7776EFDBBEA56D56D99F0010110B02D0108806D5D0FC3418008028056000236260001B0B1F361BABD09B0F51000A68019';
wwv_flow_imp.g_varchar2_table(3) := '046C4A00026053C7C36C1060021000A68019046C4A00026053C7C36C7B1308580F010890C012046C4800026043A7C3641008108000044860090236240001B0A1D361B2BD09845A0F0108A5813008D88C0004C0660E87B920104A0002104A036110B01901';
wwv_flow_imp.g_varchar2_table(4) := '0880CD1C0E73ED4D20D27A08402411AC83808D0840006CE46C980A02910420009144B00E0236220001B091B361AABD0944B31E02108D0AE240C026042000367134CC048168042000D1A8200E046C420002601347C34C7B13E8CC7A08406764100F023620';
wwv_flow_imp.g_varchar2_table(5) := '00018870F2A965FF9471F0A16D85E52BB61595976D1D7AF88997471E5CBD6DECDE155B27EE5DF5E2943D2BB7CED8BBFAC562CCD663E0F78DF011FB8A7DC6BE631FB22FD9A7ECDB0877DB7ED59602B07FE54BA3CB57BEF848F9AACDDFD957B6F997E52B37';
wwv_flow_imp.g_varchar2_table(6) := '1F2C2FDB7259CC6A55414EB32753A92287729548BDD0E2F19CF528CA49D9A11E9555F9B043520FC88ABC1FB3F518F87D237CC4BE629FB1EFD887EC4BF629FBB6BC6C8B2AE6CBEC73BFEF451BE0B650B17AEB283BAA812D04A07CF5B669C2E9CF95AFDAF2';
wwv_flow_imp.g_varchar2_table(7) := '8E58D62B92EF3449F26BA44ADF96487A9024699A70FE203163B2078141EC73897D2FDA00B7055551CF70DB10F3EEF2B2CDDFDAB772CBD47441D1951D6929004757FCDC5DB17ADB6785237F525EB6E50229CA4101E17952698158E6881913084423C06D63';
wwv_flow_imp.g_varchar2_table(8) := '2191F48224D121D176CE96AFDAFA0FE5659B97709BA234FCA495001C58B1798CB8E6FBBB0647DD5955517E47247D8988868A19130824426024A9EA5F1049FFC56D6A5FD996BFE5364669F449790138BAE2C7B915659BD70AE7BCE77348A7C435DF5F0BFF';
wwv_flow_imp.g_varchar2_table(9) := '0C16332610D093C06089E8596E63E28CE0DDF2B22D4F73DBD3B30033F24A69011007FDC30D8EACBD2A495B8473E699011065DA9180345F58BDAD41CEDABD6FF5D6A5226CD9A9BB8AA5A4005494BDB8A8BC6CEB1E71D0FF42FCE24FEACE486C0781A41090';
wwv_flow_imp.g_varchar2_table(10) := 'D4624951DFE0B6C86D3229652439D39412003EE5123DF9DB5592DF1607FEEC24B341F6201023017536B7C9F2B2CD3FE3361AE34E96489632022054766E8323F3B0E8C92FB304395402043A10901E6F70641CDABBFAC5E20E9B2C1A91120220EEC93E297E';
wwv_flow_imp.g_varchar2_table(11) := 'F1C5AF3ED9F2610D8BB61D542B2A0169B4ACC81FB4B5D9A8090C8B8CA5204B0B804AAA243AFAFE56DC93FDA930C62D664C20900A04DCDC66C559EB0B56AFAC6505801FBCA828DBF6EFA2A3EF59AB4344FD40203A01F55B15ABB6FC94DB72F4EDE6C75A52';
wwv_flow_imp.g_varchar2_table(12) := '00DE5EB4C9D9E0A87B4D9CF63F623E22D400041227A0AAF4A468CBBBB84D279E4BF2F6B4A40064170D7D5998FC80983181403A10589E5334649B9186C45A96E504A0A26CEBF7C469FFAA580D403A10480D02D2E3DCB6AD56574B0980B85EFA9AE8F8FBA6';
wwv_flow_imp.g_varchar2_table(13) := 'D520A13E20A007016EDBDCC6F5C84BAF3C2C2300158F6DBE4B5C2FFD502FC3900F0858918068E33FD8BF6A8B651E5BB78400702FA92A13DFEAB3447DACD87050A7B421E0F0A9B48DDB7CB22C8A275F4B1C708D8EFAE789A4D1840F08D88080E8E31AD3D6';
wwv_flow_imp.g_varchar2_table(14) := 'E6CD37D67401A858B9F94E716DF40DF351A00620601C016EF3FBBFB06DB27125462FC974015024FAAEA89A43CC9840C04E041C3E9FCFF427054D1580F2B2AD73251E97CD4E6E87AD20D04E80DBBEDE1D82ED59C7BC30550088D4EFC75C532404813424A0';
wwv_flow_imp.g_varchar2_table(15) := 'A8FE3360D32C334D00F6ADDAFC90B07AAE983181809D092C2C5FB5F93EB300982600922A7DCD2CA3512E08588A802AFD9559F53145003E5CBD79B8309887E8160B4C20607B020BF6AD7871644F2924B2BF2902E051A435A2B29298318100081049E4909F';
wwv_flow_imp.g_varchar2_table(16) := '22133E860B80B8FFC907FED326D88A2241C0B204C441F164FBB161681D0D17807D2B37970A63F912C05043511808589CC0483E368CAEA3E102E0901CDCFB6FB49D280F042C4F4092E484EF06246A9CE102204E730C37325138D80F040C2660F8B161A800';
wwv_flow_imp.g_varchar2_table(17) := '7C58B66590003A45CC984000042208884BE392FD2BFEB520223AA9AB860A8097E85E618DB0537C63020110882420A9B26359646432D70D15005595F06F3EC9F426F24E79020AC98BE235A227E9E59EEC1CF7BE923A2DEE7DB00308D88980C1C7886102A0';
wwv_flow_imp.g_varchar2_table(18) := '6EDA248B737F5CFFDBA931C3D6B809886364321F2B71EF98E00E860940C5C9E17CF06725584FEC06027621907DE0C4F07146196B9800A88A82EB7FA3BC8A72529A80AAF862BE54EEA9A1860900A9926146F5140AF60701530948B261C78A6C94A112A923';
wwv_flow_imp.g_varchar2_table(19) := '8C2A0BE580402A135048996054FD0D130092A8C828A3500E08A432018924C37E2C8D13008200A472A344DD0D2510D38FA51E35324400366DDAC4E5F4D1A3C2C803046C40A0B751B702F9C04C3ACFBB3F1C9A230A718A1913088040F7045C070E0CCCEC3E';
wwv_flow_imp.g_varchar2_table(20) := '59CF5318220039B2ECE87955910308D88780C3E1761B61AD210220E7390C31C608602803048C20D0DD31A3571D0C11008F2AE10C402F8F211F5B1030EA9831440014AF07D7FFB668B630522F02461D338608808F7006A057C3403EF62060D431638800B8';
wwv_flow_imp.g_varchar2_table(21) := '7009608F560B2B7523D0D531A35B21222343044022199D80840F08C44E20ADCE00885A62B71C2941000448A156433ACE0D3903803F410004AC490002604DBFA05620109580DE911000BD89223F104821021080147216AA0A027A138000E84D14F981400A';
wwv_flow_imp.g_varchar2_table(22) := '118000A490B350557B134886F510806450459E20902204200029E22854130492410002900CAA16CC5355556AF179A8C1D344D52D7554D95443556259DBDA408DDE66E2ED16AC36AA946402108024033633FB56C54BB79A6BE8D3DAAB74A2EA029DABB942';
wwv_flow_imp.g_varchar2_table(23) := '17EB6ED0B586DB4200AAE9BA585EA9AFA40BB5D7E964F545BA5C7F935810CCAC33CA8E4E2059B1108064913531DF665FABFFA03F5B7D996E365653B3B7B5DBDAF019405D6B235D1182704A88C1CDA66AF2A9BE6EF74382D4260001486DFF75A8FDEDE65A';
wwv_flow_imp.g_varchar2_table(24) := 'FAB4E66AD4833EBF77010D183A90868D1D4123EE18E30F178838D919FED8B94F51E896B844382D04A4565C2274280411694300029026AEF42A3EBA50779D6E34568559E4CE74D3C8896368D6D2BB68CAE25934B664120D9B3286864C1CE10F4F1671731F';
wwv_flow_imp.g_varchar2_table(25) := '5C4C53E61553DF81FDC2F6E5B3023E23B8D6782B2C1E2BE94300029006BEF4A98AFF94BFD1D31C66CD90D1C3A8F8DEB934F88E119491DBF5FFB2E60FE84513E64EA59265F3FC6708A1195537D78BBE83EBA151081B482099454100924957A7BCF9D79DAF';
wwv_flow_imp.g_varchar2_table(26) := 'EB9BBC2DE4111D7B91D95EAABF419C26109FD72B9F8A97CCA111D3C691C3E50C44C7B4746767FACF10A62D9A45CE907D1B84B85C69A88C290F244A1D0210000BFAAA55DCAEE3DB74E76BAFD1F1DBE7E974F525FF753DAF9F11D7E51CC761EEE1E783B2C9';
wwv_flow_imp.g_varchar2_table(27) := '131C6FA177BF3E347571096515F25F31246E5C6E9F029AF69952CA148210C8A5B6A581B88F21B08E65EA13800058C8877CCD7DB3A98ACE8ADB7595A2179E7FF13BAB1E6FE31E7E3E28036972F2F3C469FC14228974F9648ACB86698B4B29B7204FCB8FEF';
wwv_flow_imp.g_varchar2_table(28) := '0E443B0BD112209052042000167117DFAA3B5B7B59F4BED7265423B7E8EC9B3C7F3A45F6E8279459C84ECE4C174D28B993486A531516293EEB207C0C2190EC422000C9261C43FE352DF5FE4E3C8F2F78DF9D0FE8216387D3A4D953A9F89E3934E7738B68';
wwv_flow_imp.g_varchar2_table(29) := 'DEE7EF169D74F369DAA2121A32663839DA6FDFB933DC3465FE4C720A1188A1B8B89364E6E7D0F0B123B4FDF892839F28D422104859021000935DC78FE55E6D08DE66E35FF0D193C7D1CCFBE6D1882963A9D7E07E94250E4087DBE9AFA93B3B8372FBE4D3';
wwv_flow_imp.g_varchar2_table(30) := '88A963A9F4FE05346EFA1D347D89B856CFCFF66F4FD6D7E03B46524656F0EFEAAA856825AB2CE46B1C01088071AC3B94C4CFE05F6BBCADC53B335C347D61090D1C378C6447F7AE61B1E83F6A30B9B232B43C9215909D328D993A5ECBBECED3487CFB518B';
wwv_flow_imp.g_varchar2_table(31) := '4020250974DFCA52D22CEB575A5155BA5C2F6EABA96D75E55B6ED3C5A97D4F7BEFDB724BCE379F8D385DED4F0D8A7AE33220399C03B91AB184001841394A197C0BCFA7B45FF3CB12DD39773A75F7B04E946C0C8FCA2B2CD0CAE48E4B6D05819424000130';
wwv_flow_imp.g_varchar2_table(32) := 'C16DFCD0CEEDE61AADE4E16347526EDFE081A56DB06020B7305FAB558BAFFB978CB4C40858920004C004B7D4B4D693B802F097CCBDFD83270CF78753E12BA72057AB669310007E5E8167EE14E44791F921262D01029627000130C145FC586DA0D8FE838A';
wwv_flow_imp.g_varchar2_table(33) := '74BF771FC85BB7A5B8DEAFAFACA14F0F9FA433474E68D92A8A42954D35FEF99AB893C12F23F1434CC7ABCEFB6F6BF243436C2B3F3BA0ED84404C048C4A0401308A744839A1A7CE8503FA846CB15650F12974E5F8792A7FFD5D3AF44E055D3A7D813C2D9E';
wwv_flow_imp.g_varchar2_table(34) := 'EE2B290483FB07F895E28B75D7E954F545FFC0241082EED1199D0202603471519E4FFC728A857FCAEEE133FBFE4CF4FE5254BA71EE0AED7FE34F74F6E8296A6D0EBFD6CFC8C9A061D3C6D2B8855369F2FDB369C6A30B68E23D3345DC18CA2AC8E9501BBE';
wwv_flow_imp.g_varchar2_table(35) := 'E3C18F2D9FA9B94C35185FA0031F3323200006D38F7C8EDEE976195C83AE8BF3B57AE8C83B07E8E487C73A1CF8234BEEA045FFF3115AFE6F5FA6D2673E4753BFB88426AC9E4BA31F9E49939E5E20E296D3033FD948CBFF7123CD5DFF592A9A302CAC30AF';
wwv_flow_imp.g_varchar2_table(36) := 'B8EB7155DCFABC587783145509DB8615730840000CE61EF9F08CDCFE38AFC1D5885A5C4B7D331D7ABB826A6E576BDB1DE2BEFF9407E6D083FFFC259AF917CBA8DFCC11DAB6CE02197D7368F0E20934FFB947E973FF6F034DBA775658527E7EE05CED55FF';
wwv_flow_imp.g_varchar2_table(37) := '20A5611BB0E22760E41704C040DA7C0DEC8D789FDFDB1CC335758C7554BC3EF234B550536D033554D5913796EBF5F6BC1BABEAE9D0EE7DD454DFD81E4334AAF40E5AFEA33FA3F1ABE690BB5796161F4F20B37F1E4D7C6A3E3D28F21933F74E6D578FCFEB';
wwv_flow_imp.g_varchar2_table(38) := 'EF286431D02211309C000420C9C8EB3D4D74B9FEA6FF9DFE135517E852DDCDB0121B6BEAC3D6E35DA9BF257AE70F9DA4BDBF7D873EF8D5DBB4EFF5F7E8C0EFF7D0C13FEEF3C7ED117147C4AFFAE98A6374E584E8C46B0ABF9EE7F25AEA9BE8A3772BB40E';
wwv_flow_imp.g_varchar2_table(39) := '3E4996A8F4C97BA8F8ABCBC899A7CF63C6EEDED934FDCBF7D29C354B4972B4353B164466D3E2D34F04D91ECCB11368F344ECE991324602FC920F777A5D12D7BB75AD8D6123F68466D1DA183E8C57E8B6AEC2D7CF5CA6FDAFFF49FC6A8BDEF933173AFDB5';
wwv_flow_imp.g_varchar2_table(40) := 'F789B3829ADB3574EDC2153AFBF1492110EFD2C9BD47A8EE66DB83488A57A1637B0E9357A40B94B7E02B0FD1B0A59303ABBA2E87DC3D89EEFEAB955A9E8AAAD2A5FA1B78AF4023626C0002A0336F7E108647EBE1B1F7F934B7ABEC5D196E2A288AEF3660';
wwv_flow_imp.g_varchar2_table(41) := 'E5B9AB54210EFC53873EA1E6A6E8E291DBA7808AC60D255E462BFFC6E5EB7458FCE21F14670AC7C5C1DF501B3C0B297DE21EEA5F3232DA6EBAC5154E1C480BBEF2A0961F73E233012DC2C601A34D8700E8489CDFEBE7076178B49ED06CF30AF369F88451';
wwv_flow_imp.g_varchar2_table(42) := '34757E31CDBCF72EEDDDFED20716902BCB1D9AB4D3B0CFE3A38F771FA0E31F1EA5968803BF7244472F0000100049444154F7D0013477C367E9811FACA3CFBFF4355AF64FEB68FEDFACF02F1FD9FA555AF6DDA768C1FF584EE3174F0BCBBF41F415DCBE11';
wwv_flow_imp.g_varchar2_table(43) := '7C15997BF987DD979C5FFEB082C5CA80D9A3A9F8D18522D436F15384FC4F456D6BF8368A00044027D2FC724FE87BFD9C6DDF4103A8F8EE39347549090D9D348AF2FAF7A2CCBC2C0ABCDBCF696299F91AFDB0B8A6AFBE153EE4F7F845D3C4C1FD242DF9DE';
wwv_flow_imp.g_varchar2_table(44) := '1768F0A2099435B0806457B84B1D194ECA1DD98706CC194353D67FC69FBEDFA8411D8AE57106A6AE59DC213E9911A31E2EA6D0BAF08343C92C0F79772420778C424CBC04F891577ED025B09F53DCDB9FB670164D983339EA83318174B12C9B6A1AE8E0DB';
wwv_flow_imp.g_varchar2_table(45) := 'E5D418D23BDF7B687F5AF6774FD1940D9F110777DF58B2D1D2E48EEC4B8B5E28A3BB36DE4FA16F1F963E752FB9F233B5744605667D71A9569457F1F9FFB7508B4020E90420003D44CC1D7CA1BF5C3C8AEEF4C525BABCDDC7B7083F7EFF20795B83BDE433';
wwv_flow_imp.g_varchar2_table(46) := '562C14BFF88F53EEF0F8FA0E22CD1CB4603C7DF687EBA8F489BB69CEDAFBA868DED8C82486ACE70CED4513164FD3CAE2770BB4159B05CC305736A3D07429B355DCBEBA1A3256BE3B2B83A62E9A15F6CBDA135B8FED39A45DEF4B92449FF9CB1534FAA1E2';
wwv_flow_imp.g_varchar2_table(47) := '9E6419B6AF33D74DC3EE9B4243964C0C8B377A65D4D2E95A917C16D0E2EB78AB524B8080AE0420003DC079B5F116F16D2CCE829FE89B326F86E8D4D3E7BEF9E54F3EA55A71FB8EF3E6F9AE3F7B80FA4C1DCAC1B49BF92C60C89D2335BBF8AC4A5B4120A9';
wwv_flow_imp.g_varchar2_table(48) := '04200009E2E527D89A42FE9063F4A4B1C4A3E726985DD86EDEE6563A7FE28C163743F4960F34E9145DAB449203C34A276825F0C353DA0A02492500014810EF8DA6608F7C766E36F51F3D38C19C3AEE76FEE333A4F854FF86F10BA7D168D15BEE5F49E3AF';
wwv_flow_imp.g_varchar2_table(49) := '8291FD35EBF855626DC52601B3CC84002440BE595CA3B678831D7363674C24499212C8A9E32EDCEB7FF5FC65FF0677969BEE5CB3C81F4EF7AFACA2FC3013B92F202C022B4921000148002B9FFE0776CBC9CFA3BC7E8581D51E2F6F5EB8AAE5316AF6A40E';
wwv_flow_imp.g_varchar2_table(50) := 'F7F5B58D69167064B988DF3C0C98E58D78692A108FA5BE04200009F00CBD46ED5B14DF7DF8EE8ABB7EF19A9664E8DCE075B11699C6819C5EC1FF20F428ED2326A7B1BD56300D029080175ABCC1DB5485713ECBDF5571CDB50DDA6D3F4E973F76002F6C33';
wwv_flow_imp.g_varchar2_table(51) := '3B33828F452B649F0143CC743004204EFA2AA9DAAD3FDE352B2F9B17BACCF555755A3E797D0B6C73FA1F30BA29E4D56887E4084463994402108038E17A234E4D65A733CE1C3A4FDE12F26A70C1407D2F2D3A2FD51A5B5471D7A3A9363818894342D334C2';
wwv_flow_imp.g_varchar2_table(52) := '33A01C276525622C3BD9A91FC2E6C626AD36F945BDB4B01D02ADD5C1839FED753B5CBCC09C6402FAB5DE2457D42AD93B224E4D7D710CBBD59D0DA1AFF9E616E97767A1BB72ADB0BDF65C70A42497C3490E9B9C0198CD1E0210A7079C72F8B5694CE3E447';
wwv_flow_imp.g_varchar2_table(53) := '298307E0BC75E13A5DFCF82C1DFFE030EDFFCFF7E9F6F5E0BBF9AECC60875894DDD32EEAD2BE939A4D594E7D1EA7D63244A0530210804ED174BEC12107B1358A9EFBCE5376DC5277A38A8EEFF9882ADEFC137D527184CE9F384B95576F52E8E93FEFE56B';
wwv_flow_imp.g_varchar2_table(54) := 'F5F2C236F385834101E09781426FB5DA06820986065BB20985A76A91998EE02F54D5B5CA98CCA8BA74930EBEB5970EBF77802AAFDCE8721F775606F51A37B0CB34E9B4B1B5AA895A43062B6DF17A88C752E4D195F83F07D3C956ABD9020148C02379EE2C';
wwv_flow_imp.g_varchar2_table(55) := '6DAFCAAB5D1FCC3C94D7A97D47E9E8BEC3D450171C7B2F90C1E04923A9F8B145C4437AF19F6EDCF3AD55F4C08F3752EE889EBDEF1FC83F1596EE5E593477FD32CA0E791088EBCDAF5B5F6BB8453CC6A2270D9F0C641BCD9E2100097820D715BCF7EF69F5';
wwv_flow_imp.g_varchar2_table(56) := '50F595E8670175376BE8C0EF3FA0EB97828FF772713C0CD6FC3F5F4E8FBCF8159AFBECC334EAC119FE21BDF84F370AEF18483C8C17A7B3D33C78F11D74FF3F6FA0A59B1EF7FFDD189F0505ECE73116F96C80C75C0CC461A90F010840021CB92330CF1D14';
wwv_flow_imp.g_varchar2_table(57) := '8133474E128F711F9A55EDF52AE291775B9B5AB4E8AC821C9AF7A5CFD1C2EF9451D15D63C891EDD2B621D046207F6C7FFFDF8D2DFBFE1A1A3A754C5BA4F866BE57C5D9000FBF265631E94440D6291FDB65D32F3B789FBEA9BE912E89DEFC0084A69A06FA';
wwv_flow_imp.g_varchar2_table(58) := '78EFA1C0AA7F397ED1345AF6C375C4EFF5E30E971F49975FEE5ED934FB2F97D3822F2FA7D097846E35D5F8FF69B8CB9DB131660210809851852774CB4E2ACC0CBEBC72FEE439AABE7A8B3CA233EBC8FB074969FFA30D1E01981B310FE0E9C872866782B5';
wwv_flow_imp.g_varchar2_table(59) := '6E090C983B8696BEF0246587FC8B320FC01AFA4666B79958308155AA0401E88127FA6616848D0370ACFC233A2A0EFED6F671FB9D192E5AFAFC13C48DB807C5D87E571E326CC973ABC89D9DA1B1B8D250493E156F0C6A40120C40001204C7BB715FC0E0DC';
wwv_flow_imp.g_varchar2_table(60) := '7E44ED6381F0AF7E7D4DFB0B3D226EE1D71E266EBC844F8F096416E5D3E2671E25D9D9D6647D8A4257EAA377BEF6B8301B65D046D34606EB6D6AAE2B8B06E5F4ED90EDAC554BA8F794211DE211913881FC710388EF9E047268F034534D6B436015CB0408';
wwv_flow_imp.g_varchar2_table(61) := '4000128016B94BBE3B87B25CC1D3D3FE2307D188FBA74626C3BA0E04FA978EA2D1732669395536556BE1540958A99E10001DBCC10FAC34858C103C79E57C1D7245169D119854368F2487B8C612093C3E2F6118710122C109029020B8D0DDF87F0103EB45';
wwv_flow_imp.g_varchar2_table(62) := 'E38650EFC9FA8D101CC817CB20818CBE3934F19E595A04CE0234147107200071230BDF4125956A43AE43C7DD33233C01D6924260D43D53B47C5B7C1EE2598B4020660210809851454FD8284EFDD5B621FC89EF06F4993A8CF0493E01BE2BD07BE800ADA0';
wwv_flow_imp.g_varchar2_table(63) := '464F9316B672C06A758300F4D0234DDE662D87C113479233C75EEFF16BC69B1018313B386A7243881F4CA84ACA160901E8A1EB424F3DFB8E1ED4C3DCB07B3C047A8D2ED292B7F88223356B9108744B0002D02DA2AE13B488EBCF408AAC3EB98120960610';
wwv_flow_imp.g_varchar2_table(64) := 'C8EC9DA395E28918AC55DB8040970420005DE2E97EA337E43DF5ACDEC17703BADF13297A4A20234400445F2CF922066CED69FE7AEF6FC5FC20003DF44AA0FF8FB3C928CCE60566830848CEF0F119BD380B889BBC1CF71ED8218C00BFA71E88505AEC358E';
wwv_flow_imp.g_varchar2_table(65) := '5FC06EB3964A73F00F5ACDAA43AA970B01E8A1071D72F057A825E48F2D7A982D768F81802F6248767E392B86DD902484000420044622C1D046D75C851753126198E83EADD5C17BFF922459FABF04C8A21F08400F1DE3969D5A0E55E7AF6B6104924FA0FA';
wwv_flow_imp.g_varchar2_table(66) := '6C90B72BE44C2CF925A74F0910801EFA32F44F2CCE1F3841DC1BDDC32CB17B8C042A4F5DD152663933B53002B1138000C4CE2A6ACAEC9086D7D2D042B5A7BB1E263C6A26888C9B80E251C82FB8ED7BE6B82000ED28E25A4000E2C2D53171A6D34DA1FD00';
wwv_flow_imp.g_varchar2_table(67) := '57F79FEE980831BA13B8517E9642FF962DC795A57B197A6568E57C20003A78A72023F804E0D1B7F693A726F87E800ED9238B2804CEBC7D588BCD11BFFE0E0CB5ACF18827000188875627697B65E49124B50D50C1FFE977EA57159DA444B41E04AA3FB946';
wwv_flow_imp.g_varchar2_table(68) := '573E39AF65D53BB3400B23101F0108407CBCA2A6E64B001681C0C663FFB59F5A2A3BFE0D58603B968913F0B57869CFBFFC4ECB20C3E1223E03207C1222000148085BC79DFA6415902CB7E1547D2AEDFBD1EBA4B462D8EA8EA47A1673EAB572AABF55A365';
wwv_flow_imp.g_varchar2_table(69) := '529463EDFF50D42A6AD1405B8BB568E552A95A7C0D3A30A4315E3F7D893EFCC99B84F753F4F3E2E5DDC7E9C8EB7BB50C7B67E653E86D586D030231138000C48CAAFB8479AE6C0AED103C57719C3EDAFC87EE77448A6E099CFBCD41FAE0C5D7B5E72CDC0E';
wwv_flow_imp.g_varchar2_table(70) := '27F5CB2AEC763F24E89A0004A06B3E716F2DCAEE4D7C6B30B0E3C9770ED3BB9B7E4E9EBAE09F8406B661D93D01C5ABD0E17FFD03EDDFF1B69698FB5C86E60DD03A5EB50D08C44D00021037B2AE77902489B871BA45E75420E5F55397E88D67B6D2A53F1C';
wwv_flow_imp.g_varchar2_table(71) := '23EE1F08C463D9358196CA067AE7DB3BE8E4BBC15B7E7CF00FCF2F2257C823D85DE762DED65428190290042F717F0037D2D0EBD3E6BA26DAB3F50DFAFD375FA65B872E26A1D4F4C9B2E95A2D1DFDE97BF4DBAF6FA6CAF3D734C35C0E0731571CFC1A921E';
wwv_flow_imp.g_varchar2_table(72) := '0720003D46183D8380081466E68625A8B97A8BFEF8FD5DF4D6D75FA2933BF652CD89E00B2D61096DB65277B692CEBF7E98F6FEFDAFFD07FEB1B72A88FF6B3180213F238746E60FC22F7F00884E4B08804E203BCBA628BB8FB824E81FF6B830A7ADB9769B';
wwv_flow_imp.g_varchar2_table(73) := '0EFFE6037AEBF95768D717FE2FFDF1AF5FA1033F7A834EEDDA47E77EFD61DACFA75FABA0833F7E8BFEF86C9BFD6F3CF73295BFF207BA7838FC516A595C520DCAED4B8372FA922CA1B972DBD17306513D697692578E2B8B46150CA67ED9851478562032E9';
wwv_flow_imp.g_varchar2_table(74) := 'AD0BD7E9ECDE6374E897EFD3FE9DBBD37E3EF88BF7E8F4071FD3AD4E5EA1E603BF4F563E8D2E1C42F9EEE0E09F91DCACBA9E2AF5820018E4297F83CE2CA0D1420806E4F4A61C77167AB123D8B338E6B832FD42C9077EBFAC5E18E4238291DEABB2DE1922';
wwv_flow_imp.g_varchar2_table(75) := 'BFAE09382499F8B1E1A1B9FD697CAF6134A26020F1D36C7DB30AC85E73210D10B74C078AD3FB2179FD6964C1201A5738545C2E0DA03E42289953D724B1550F0210003D28F6208F4C879B0A3372C5C15F68B3B9807A65E6518138BDCF159748FC4C7F0F30';
wwv_flow_imp.g_varchar2_table(76) := '62D704094000120487DD40A03302A9140F0148256FA1AE20A033010880CE40911D08A4120108402A790B7505019D09400074068AECEC4D20D5AC8700A49AC7505F10D0910004404798C80A04528D000420D53C86FA82808E0420003AC24456F626908AD6';
wwv_flow_imp.g_varchar2_table(77) := '1B22005E726374CC546C1DA8B369045CE46A35A2704304C0412A04C0086FA28CB421E0918C39660C1100A38C491BEFC310DB1330EA47D3100130CA18DBB71A00308D80DE05CB4E9757EF3CA3E567880018654C3403110702A948C0954E97008E7A6F532A';
wwv_flow_imp.g_varchar2_table(78) := '3A01750601B3082875BEF4E90474BB721ACD028972412015091875CC1872093069D763AC66F8678C546C89A873B7049290A0A5FD984942D6E1591A22005CA44A748D9798410004BA2660E4B16298000893210002022610E88E8044F42919F43150005408';
wwv_flow_imp.g_varchar2_table(79) := '80414E4531A94EC0B863C5300190493E9EEA6E41FD4120924032D62592D3F00C40550E113E200002DD1330F05891BBAF8D3E2924D90101D0072572497302461E2B860940F1F8F32785DF143163020110E89C4063FBB1D2790A1DB7182600D2A64D0A4974';
wwv_flow_imp.g_varchar2_table(80) := '4AC7BA232B10309540320A57898EF88F9564641E254FC304C05FB6AAE232C00F025F20D009015532F418315400549276776236A24100049880A4A6B1003894DF0A1B553163020110E848407511FDBA6374F2620C3D0398FDCA864BC2948FC48C0904529A';
wwv_flow_imp.g_varchar2_table(81) := '40922AFFD18C1DEBAE2429EFA8D91A2A005C0389A4377889190440209C8019C786E10240E4830084FB1D6B20E027E0537DBFF4070CFC325C00A47CE57DD10970DE401B511408A40001E942D3F5CBFB8DAEA8E10230F3DF367A84912F89191308A4248164';
wwv_flow_imp.g_varchar2_table(82) := '545A2575DBE2DD9B0C190730B4FE860B0017EE92D56D62294E04C43726100001AFC3E7DD6A0606530460C6ABEBCF934A6F996130CA0401AB1110BFFEBF9BB96BE30533EA658A00B0A192A47C8F979841C0EE046452FFC12C06A609C0AC1D1B768BB38037';
wwv_flow_imp.g_varchar2_table(83) := 'CD321CE58240220474DF47A537FDC782EE19C796A16902C0D55389BEC94BCC20605702B2537EC64CDB4D1580D23D407F2A000004F5494441549DEB0E8BEB9F5F9909006583805904B8EDCF7C65CD11B3CAE7724D1500AE80D347DF106702F51CC60C0236';
wwv_flow_imp.g_varchar2_table(84) := '22D0E0509D5F37DB5ED305A078D7FAD3B244CF990D02E583407704F4DC2E7EF4BE3173E7D367F4CC3391BC4C1700AEF4396FDE8F04903F71183308D880C0FBA53BD6FD7F2BD8690901786CD7633EA74F5D2344009702566815A843320934C8AAE3A96416';
wwv_flow_imp.g_varchar2_table(85) := '104FDE961000AE70FBA5C0D322AC88191308A4230145FCC83D618553FF005CCB08005768D6F675AF914AFF9BC39841C04A04F4A88B24D1D7C5A9FF7FE891975E79584A00D8A8929DEBBE4712F1BB02BC8A1904D2838024FDA3F88133ED89BFCE205A4E00';
wwv_flow_imp.g_varchar2_table(86) := 'B8A2729E772391F47BC20704D283C07FCC1A7FE17F59D1144B0A00BF322C37781E22927E41F880400A13E0877DE406EFE3460EF51D0F2E4B0A001B30F3371B1B67ED58F32891F45DC207044C249078D1D2FF29D9B1EE616ECB89E791DC3D2D2B006CB644';
wwv_flow_imp.g_varchar2_table(87) := '925AB263ED73AA4A7CDBC4C7719841200508B4924A8F8BB6FB2CB7612BD7D7D202100057BA73DDCB32497789CEC11381382C41C09204543A226EF5DD253AB35FB164FD222A2547AC5B7675E68EB5FB1A32E46902EE7744253D62C604025622C06DF205B9';
wwv_flow_imp.g_varchar2_table(88) := 'C05B2C6EF5193EB65FA220524600D8C0C52FAD69167037A9AAEF4E52A5DF701C661048268118F256C58FD2BF3B7CEAC4921DEBBECD1DD831EC639924292500016AA53BBF78B264E7DAE592A2CE1371EF8B191308984040DA2D91CABFF82B8A77AD3F6D42';
wwv_flow_imp.g_varchar2_table(89) := '057A5C644A0A40C0EA593F5FFFBE50DD798AAACC112AFC3311DF22664C20904C022DA22FEA15FEF129D9B176F1AC1DEB0F26B3B064E79DD2021080337BE786BDE2D2E04959F20E21529F11B3E9AF5906EA8665DA1038AB4AD237B98D956C5FF738FFF8A4';
wwv_flow_imp.g_varchar2_table(90) := '83656921000147CCDCBEB1B264C7FA1F88798C2A4BF7914A3F11DB2E8A191308C44D40EC20DA8EFA2F92A4DC5BB263DDE8D2ED6BFF9EDB98884F9B29AD0420D42BA5AFAE7DB364E7BA2F0BC70D13BD34D3C459C173E2D4ED5D91A641CC9840201A8186F6';
wwv_flow_imp.g_varchar2_table(91) := '36F26D92E5E9DC76C48FC99FCFDABE216D1F4B4F5B0108F56EE9CE75878523BF5BB27DDD42E1D45C49964693AA7C9E24F5797E549354F590486FE8BFB28AF2309947E00AFBDCEF7BD10648B40559758CE1B6D1DE465E2879750DB709F36A6850C9B61080';
wwv_flow_imp.g_varchar2_table(92) := '4896B35E5D7BB664E7865F946C5FFF37A53BD63F54B2733DABFD60D100A45E350D99AE66B917F9E48144D2B00C976B944B96C7293E69922229537DAA54ACC8CA4CCCD663E0F78DF011FB8A7DC6BE631FB22FD9A7EC5BF6B19807B3CFFDBE176DA044B485';
wwv_flow_imp.g_varchar2_table(93) := '9916189E8B4CF8D85200BAE23CF63FBFDA32FD976BAA4B76ADB956B263EDC5A93F7BF2DCF457D79C9ABD6BEDB1D9DB377C3467E7DA0F67BFBAE10066EB31F0FB46F8887DC53E63DFB10FD997EC53F66D57BE0FDD66973004C02E9E869D2010850004200A';
wwv_flow_imp.g_varchar2_table(94) := '144481805D084000ECE269D8090251084000A2404194BD09D8C97A08809DBC0D5B41208200042002085641C04E04200076F2366C058108021080082058B53701BB590F01B09BC7612F088410800084C0401004EC46000260378FC35E1008210001088181';
wwv_flow_imp.g_varchar2_table(95) := 'A0BD09D8D17A08801DBD0E9B41A09D0004A01D04162060470210003B7A1D3683403B0108403B082CEC4DC0AED64300ECEA79D80D028200044040C0040276250001B0ABE761370808021000010193BD09D8D97A08809DBD0FDB6D4F000260FB2600007626';
wwv_flow_imp.g_varchar2_table(96) := '0001B0B3F761BBED0940006CDF04EC0DC0EED6FF37000000FFFFDB9712ED00000006494441540300927A3DD38D7F64170000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(19508125068711788149)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000224494441547801EC944D6B13511486DFCC349999CCA4A99D58AA25359A1009C65AC15644C1CFAA3B5111DCB813412CE81F10FC0B2E043759F827DCD6BA535C88';
wwv_flow_imp.g_varchar2_table(2) := '1B4537625B259AE67326F39D98BB194A9AF64C23520A33709873CFBDE79D87F7CEBDDCFBBBA5EE6E06875D7E4280D081D081BDEB80E5D9A89A4D18AEF54F37C98E1C703A2E6A560B755B83905391BB7A121367B2A88F98434370413BDD8E07739C43E67C';
wwv_flow_imp.g_varchar2_table(3) := '11E97305A43293E0780E8222E160F130DAEE701081015A4E1BE9C21144A5180459F4B9AD9601DDD0A15EC923363F89DF460D5EB7E3CF530909C06C6F440C085349F0C2086AAB7F505EF909DD3351FEF10B0DAD8999C505E46ECFE1E8BDB338FDF4162A76';
wwv_flow_imp.g_varchar2_table(4) := '83FAAE3F4F02683091BD3083E9E359589A094FE631FBF83A7277E631FBE41A4E3C5AF0C558A21C1AC758FE004B03050920A412BE50B35243FEC6297FBC55329A56B79ADA5427015CD3816B39A896D7A1645408296593487F41DE9F44DDD3FBCB03C72440';
wwv_flow_imp.g_varchar2_table(5) := 'A46EC316BA38F6F022B2BD7D1EA8D2579CBA54C0DCB39B6846E93B820460DAD3978BECB5A3102712907AFF03D54402B053C0C76394CEC07971343EB0BEB14802C85109DAF7CAC69E40B9D776B0F6EE1BB9960410F8283E9796B1FE71051DCB2305D91D54';
wwv_flow_imp.g_varchar2_table(6) := 'FDB48A0FCF5F631F2793EB4900A610D7397C7DB98CB78BAFB074BFB46DBC7950C297174B10D71C3078D6BF5D040260024A6F2B543189943446462216071789B036320203904A432E080142074207FEBB03D4E9FC0B0000FFFF58ADA55500000006494441';
wwv_flow_imp.g_varchar2_table(7) := '5403008C33F8019CA262070000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(19508124168378788144)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD07785CE77DE7FBDF9982412F044002ECBD17B18A128B7AB5E422B9256EB293DCF46C9C384E71E2E4269BC44936D964EF7D9E7BF7EE9364';
wwv_flow_imp.g_varchar2_table(2) := '93BDBBD9ECC68F1367E3B8C996D50B552851222552EC04011004D1DB14EC798792CC827366004C39E50B6908E0BCEF79CFFBFFBC8339FF794F99C8F31FFFCB491E18F01CE039C07380E700CF81703D0722E20B010410400001044226209100846EC80918';
wwv_flow_imp.g_varchar2_table(3) := '01041040000112009E03082080000208844EC004CC0C8051E081000208208040C80448004236E0848B00020820107681CBF193005C76E05F0410400001044225400210AAE126580410400081B00BBC1B3F09C0BB127C4700010410402044022400211A6C';
wwv_flow_imp.g_varchar2_table(4) := '42450001041008BBC00FE32701F8A1053F218000020820101A011280D00C35812280000208845DE0CAF84900AED4E06704104000010442224002109281264C0410400081B00B5C1D3F09C0D51EFC86000208208040280448004231CC0489000208201076';
wwv_flow_imp.g_varchar2_table(5) := '816BE32701B85684DF1140000104100881000940080699101140000104C22E707DFC2400D79BB004010410400081C00B9000047E8809100104104020EC0253C54F0230950ACB10400001041008B8000940C00798F01040000104C22E3075FC240053BBB0';
wwv_flow_imp.g_varchar2_table(6) := '14010410400081400B9000047A78090E0104104020EC024EF1930038C9B01C010410400081000B9000047870090D0104104020EC02CEF1930038DB508200020820804060054800023BB4048600020820107601B7F84900DC742843000104104020A00224';
wwv_flow_imp.g_varchar2_table(7) := '00011D58C2420001041008BB807BFC2400EE3E942280000208201048011280400E2B412180000208845D2057FC2400B984284700010410402080022400011C5442420001041008BB40EEF84900721B5103010410400081C0099000046E48090801041040';
wwv_flow_imp.g_varchar2_table(8) := '20EC02F9C44F02908F12751040000104100898000940C00694701040000104C22E905FFC2400F939510B01041040008140099000046A3809060104104020EC02F9C64F0290AF14F51040000104100890000940800693501040000104C22E907FFC2400F9';
wwv_flow_imp.g_varchar2_table(9) := '5B5113010410400081C008900004662809040104104020EC02D3899F04603A5AD44500010410402020022400011948C2400001041008BBC0F4E22701989E17B51140000104100884000940208691201040000104C22E30DDF84900A62B467D0410400001';
wwv_flow_imp.g_varchar2_table(10) := '040220400210804124040410400081B00B4C3F7E1280E99BB106020820800002BE172001F0FD1012000208208040D80566123F09C04CD458070104104000019F0B9000F87C00E93E0208208040D80566163F09C0CCDC580B0104104000015F0B9000F87A';
wwv_flow_imp.g_varchar2_table(11) := 'F8E83C0208208040D805661A3F09C04CE5580F0104104000011F0B9000F878F0E83A0208208040D805661E3F09C0CCED5813010410400001DF0A9000F876E8E8380208208040D80566133F09C06CF458170104104000019F0A9000F874E0E83602082080';
wwv_flow_imp.g_varchar2_table(12) := '40D80566173F09C0ECFC581B0104104000015F0A9000F872D8E8340208208040D805661B3F09C06C05591F0104104000011F0A9000F870D0E8320208208040D805661F3F09C0EC0D6901010410400001DF099000F86EC8E8300208208040D8050A113F09';
wwv_flow_imp.g_varchar2_table(13) := '40211469030104104000019F099000F86CC0E82E0208208040D8050A133F0940611C69050104104000015F099000F86AB8E82C0208208040D8050A153F0940A12469070104104000011F099000F868B0E82A0208208040D8050A173F0940E12C69090104';
wwv_flow_imp.g_varchar2_table(14) := '10400001DF089000F866A8E8280208208040D8050A193F09402135690B0104104000019F089000F864A0E8260208208040D8050A1B3F0940613D690D0104104000015F089000F86298E8240208208040D8050A1D3F0940A145690F0104104000011F0890';
wwv_flow_imp.g_varchar2_table(15) := '00F86090E8220208208040D8050A1F3F0940E14D6911010410400001CF0B9000787E88E8200208208040D8058A113F0940315469130104104000018F0B9000787C80E81E0208208040D8058A133F0940715C69150104104000014F0B9000787A78E81C02';
wwv_flow_imp.g_varchar2_table(16) := '08208040D8058A153F0940B16469170104104000010F0B9000787870E81A0208208040D8058A173F0940F16C6919010410400001CF0A9000787668E8180208208040D8058A193F09403175691B0104104000018F0A9000787460E8160208208040D8058A';
wwv_flow_imp.g_varchar2_table(17) := '1B3F0940717D691D0104104000014F0A9000787258E8140208208040D8058A1D3F0940B185691F0104104000010F0A9000787050E8120208208040D8058A1F3F0940F18DD9020208208000029E132001F0DC90D0210410400081B00B94227E12805228B3';
wwv_flow_imp.g_varchar2_table(18) := '0D0410400001043C264002E0B101A13B08208000026117284DFC2400A571662B082080000208784A8004C053C341671040000104C22E50AAF849004A25CD76104000010410F090000980870683AE2080000208845DA074F1930094CE9A2D218000020820';
wwv_flow_imp.g_varchar2_table(19) := 'E019011200CF0C051D410001041008BB4029E3270128A536DB420001041040C0230224001E1908BA8100020820107681D2C64F02505A6FB686000208208080270448003C310C74020104104020EC02A58E9F04A0D4E26C0F0104104000010F0890007860';
wwv_flow_imp.g_varchar2_table(20) := '10E8020208208040D8054A1F3F0940E9CDD9220208208000026517200128FB10D0010410400081B00B94237E128072A8B34D041040000104CA2C400250E60160F308208000026117284FFC2400E57167AB08208000020894558004A0ACFC6C1C01041040';
wwv_flow_imp.g_varchar2_table(21) := '20EC02E58A9F04A05CF26C17010410400081320A900094119F4D2380000208845DA07CF1930094CF9E2D2380000208205036011280B2D1B3610410400081B00B94337E128072EAB36D041040000104CA244002502678368B00020820107681F2C64F0250';
wwv_flow_imp.g_varchar2_table(22) := '5E7FB68E00020820804059044800CAC2CE461140000104C22E50EEF84900CA3D026C1F0104104000813208900094019D4D2280000208845DA0FCF19300947F0CE801020820800002251720012839391B440001041008BB8017E22701F0C228D007041040';
wwv_flow_imp.g_varchar2_table(23) := '0001044A2C40025062703687000208201076016FC44F02E08D71A01708208000020894548004A0A4DC6C0C0104104020EC025E899F04C02B23413F10400001041028A100094009B1D9140208208040D805BC133F098077C6829E20800002082050320112';
wwv_flow_imp.g_varchar2_table(24) := '809251B3210410400081B00B78297E12002F8D067D410001041040A0440224002582663308208000026117F056FC2400DE1A0F7A83000208208040490448004AC2CC461040000104C22EE0B5F84900BC3622F407010410400081120890009400994D2080';
wwv_flow_imp.g_varchar2_table(25) := '000208845DC07BF19300786F4CE81102082080000245172001283A311B400001041008BB8017E32701F0E2A8D0270410400001048A2C40025064609A470001041008BB8037E32701F0E6B8D02B0410400001048A2A400250545E1A47A0BC02939A546632';
wwv_flow_imp.g_varchar2_table(26) := 'A35426AD6426A5897432FBB35936699795B7776C1D81700878354A1200AF8E0CFD4260060266C76E76F2C3C931F58D0FEAC2489F3A867B7466A84BA7073B756AB0CBFEDEA5734317D43D7249BD63031A9818D6686A3C9B20CC6093AC8200023E152001F0';
wwv_flow_imp.g_varchar2_table(27) := 'E9C0D1ED700B6426273566EFB4CD4EBE73A45767EC1DFBF1FE733ADEDF61EFE43B7576A85B6679EFF880862646359E4A2A994E2B6DCF04BC9B205C1A1B54F7E8259D1FBE985DFFE4C0799D18E8C8AE6B128311BB7D3373106E69A24760B602DE5D9F04C0';
wwv_flow_imp.g_varchar2_table(28) := 'BB6343CF10B84EC0ECC0072646EC9D768F4E9B9DFC70AFFAEC1DB979C73F914E65A7F7D3998C26ED04213BC33F795D13572FB0CB4D5D935098F54CA2601206333B60928A73C3177471AC3F3B436057BD7A5D7E4300015F0B9000F87AF8E87CD00526EDBD';
wwv_flow_imp.g_varchar2_table(29) := 'B8999E373BE113F6BBFBA3FD67D5614FDF0FDA4940C6DED117337E93188C26C7B387114E0D74DAB30BE7D465CF368CA5278AB959DA462050025E0E8604C0CBA343DF422D6076FCE7877AB253F2E658FE783A293B1F289B49D29E6130870DCE0E76AB67B4';
wwv_flow_imp.g_varchar2_table(30) := '5F66D6A06C9D61C30820306B0112805913D20002851548D9C7E93B867BB2C7F2CD747FBAC8EFF4A7DBFB94DDBF9ED13E1DEB3BA3CE918BCA2626D36D84FA088442C0DB419200787B7CE85DC804CCD4FEE9C12E0D8C0F97F5DD7E3EEC6606A06F6C287B02';
wwv_flow_imp.g_varchar2_table(31) := 'A13944617ECF673DEA20808037044800BC310EF402015DB0DF559BCBF3CC59FA7EE2303302E610C58981731A4E8EFAA9EBF41581A20A78BD711200AF8F10FD0BBC8039B3DF4CF95FB48FABCF2658CBB254595DA9E6F9AD6A5FB1504B36ACD4AA1D1BB461';
wwv_flow_imp.g_varchar2_table(32) := 'DF566DBD6BB7763CB84F3B3F788BB6DDB7475BEEBA511B6EDDA6D5BB37D9F55668DEE2F96A9CD3A858342ABB99197523994EEB9C7DE8C2243299C9CC8CDA60250410289D000940E9ACD91202D7090C4C0CEBED818ECB53FED795E6B1C0926AE7D46BF186';
wwv_flow_imp.g_varchar2_table(33) := 'E5DA7CFB4E6DBBF766ADBB698B56DCB0568BD62ED5BC25ED6A9ADBAC9AFA5A5556249488C6555D5DA5BAFA3A3535CFD1DC05F3EC7ACBB46AE77A6DBC6D87763EB05F1B766F559B9D10C4E2314DF7CB5C99601219736F01333330DDF5A98F407004BC1F09';
wwv_flow_imp.g_varchar2_table(34) := '0980F7C7881E0650C05CDE676ED463DEF99B9DE674428C46A29AB7A85D6B776DD2CEF7EDD3965B776AF1DAE5AA6BAC57C49ADD9F74341655E3FC66ADB413825D0FEED7A6BDDBB560F922C5E3F1E97451831323D99B0A0D2547A6B51E951140A07402B37B';
wwv_flow_imp.g_varchar2_table(35) := 'B5285D3FD9120281123077DA3337F099CE657D56C4D2FC650BB5F5EEDD5AB56B835A16CD532291B0A7ECADA2D89864A2615E93966D5DA3ADF7DCA485AB972812B5F2DE563A93D1D977EE5990F74A54442020027E088304C00FA3441F032560CE9837C7C9';
wwv_flow_imp.g_varchar2_table(36) := 'F30D2A6276FC4B176AE7DD7BB47CDB5A55D654E5BB6AC1EA55242AB474D32AEDB877AF16AD5A2A2BDF4460523A377C4197C6060AD6171A420081C208900014C6915610C84B6028392A738C3CDF77FE757575DA74CB4E2DDFBE56153595796DA398952A2A';
wwv_flow_imp.g_varchar2_table(37) := '135AB279A5B6DCBE4B95F5D5F96DCA4E02BA462EA97F6238BFFAD442C0F702FE088004C01FE3442F0320602E9133B7F1CD98FBF4E78AC79E695FB66AB936DFB1537573EA73D52E79796D7D9DB6DDBE5B4BD62CB70F41E4B7F9F3C33D2401F951510B8192';
wwv_flow_imp.g_varchar2_table(38) := '0890009484998DF859C0DC133F3D99C97ED04E32F3CE07EE4CA695B19799B2C93CDECE9B6BFBBB467AED75ECB7C339302A2B2BB579CF762DD86CEF5CA3DEFD138DD87D5BB471B96ED8BF4B7535B539A2B28BEDD04D12603EB8C8FE8DFF1108AC805F02F3';
wwv_flow_imp.g_varchar2_table(39) := 'EEAB8B5F04E967E0045299B4C65213D933D9CDF1FAF32317B377BB3B3DD8A9771F6706BBD561BFA3EDB4CBCC4D7006ECE9ED89746A4A0B93289C19EA9653F9952BCD5BD096BD66BF7E5E93FCF255D3529F9DA968B3FB9EB3CF761270CEB6309F7390B32E';
wwv_flow_imp.g_varchar2_table(40) := '151040A0A802240045E5A571AF0B989BF08CA4C6B277E13B3DD895BD74EDE4C0799D19EACAEEE0CDC97AE6B6BC2621303B7073B31BF3DDFC6E3E36B77F7C58BDE3033A3F7C51A706CF67D7378941FFC450F62374C7D3499DB577784987E4E04A9FF94B17';
wwv_flow_imp.g_varchar2_table(41) := '68E58D1B14AD885DB9D8173F5BF1A856EEDEA8F9CB16E5EC6FC63E049235B167537256A60202BE13F04F874900FC3356F4B4400266CAFEDD9DBE79676E76FCE6C4BC91E498C653C9EC547F3A939199DECF63763F7BCF7E53D7AC63D63709C3F9213B2118';
wwv_flow_imp.g_varchar2_table(42) := 'E8CC260423C9F19C3D9FB7B04DCBB6ADB38FA7DB07FF73D6F66E85655B57AB65E1BC9C1D34B2D4CAB9000010004944415456DD23976C5E7B4A20676D2A208040310448008AA14A9B9E1448D953FBE6FAFBE3FD1D3A3DD0953D1BDFBC93B7F742C5EB6F1E';
wwv_flow_imp.g_varchar2_table(43) := 'FBB7B9ED73B337DEB1FCBDEFCF1A5A96A5353B37AAB9AD35FBBBDB3F43C991EC6116B73A9421E037013FF59704C04FA3455F672460DE9DF78F0F65A7E2CDBBCE7CA6E367B4A119ACD4D0DC684FFB6F941589CC606D6FAE62452CADB20F65D4B734BA76D0';
wwv_flow_imp.g_varchar2_table(44) := '3E1220738E85999171AD4821020814452038AF3A45E1A151BF0B981DFFDBFDE7B2C7E8B3EFF63D1450A232A135376D56241ABC3FC3582CA635BB37299E70BF85B03964620EBF786858E80A02B310F0D7AAC17BE5F1973FBD2D92406632A3EED14B3267F0';
wwv_flow_imp.g_varchar2_table(45) := '9BA9FF226D66E6CDDAD3FD6B776C94B9C3DECC1BF1F69AE636C52B76ACCFD9C99EB17E0E05E454A202028517200128BC292D9659C05CB37F66B05BBDA303D913F4CADC9D29373F7FF142D5F9E852BF2983C863614B5BABDA562C74AF3929990F4672AF44';
wwv_flow_imp.g_varchar2_table(46) := '2902DE17F05B0F4900FC3662F4D755C05C7667EEB637D3EBCC2396A5DA865A2D5AB3542BB7AED33A7B8A7ED32D3BB4F5EE9BB4FDC17DDAF6C01E6DBE6397D6DACB976D59A5F9AB16A979E15C55D65649F6BB7AE5F155535DADC59B57E451331855966E5E';
wwv_flow_imp.g_varchar2_table(47) := 'A5445DA56B30E672CCC1093E39D0158942040A2C1029707B348740D904CCDDF6CE0E756B26779AABAAADD692F52BB4F5CEDDBAC17E2CD9B8526DCB17A879FE5C35B434AAA6AE465515095527AA54DF58AF167BF982954BB47CF31AADBB71B3B6DEB55B9B';
wwv_flow_imp.g_varchar2_table(48) := 'F6EF50DBB205321FA9EB8460E7175AB57DBD621571A72A815B1E8B44B576FB26E54A90CCA1808C3933507C21E04701FFF539E2BF2ED36304AE17303B7D734DFF74CEF08F46225AB064A176DC75B3B6DD7DB316AD5BA6AAFA9AEB1BCF6349D4DEC9994461';
wwv_flow_imp.g_varchar2_table(49) := 'E5B675DAF5BEFDDAB06B8BDADADB948855281A89C8ECF86BE2955ABF738B6AE7BA9F1D9FC7E67C57A5AEB941EDF3DB5DFB3D9E9AD0583AF73D135C1BA1100104F21688E45D938A087854C09CE4676EC99BEFCEDFB22CCD6D9FA72DB7EDD2B21D6BB39F6A';
wwv_flow_imp.g_varchar2_table(50) := '672F52A1BECC0C40D3A256ADBC79A33D9B70A3566F5AA71537ACD5C63B77C92C2FD476FCD6CE423BC1528EC324E6EE8A7E8B8BFE226004FCF82001F0E3A8D1E7F704CCCEDF4CFBE7BBF39FDB3A573B6EDDADD5376F527563ED7BED14EB87784D42CD2BDB';
wwv_flow_imp.g_varchar2_table(51) := 'EDC3090B15AFAE28D6667CD16EA2A15AF3727C5E80F9C4440E03F86238E96400044800023088610D61D20EDCDCAB3FDFEBFB976D58A9D5FB372B316766D3FCF6E6F87F96020BD72F97DB2CC0782629738740F18580AF04FCD95912007F8E1BBDB605BA46';
wwv_flow_imp.g_varchar2_table(52) := '2ECADCE8C7FED1F5FF8A785C9B6EDEAA056B97BAD6A3B0F8025575D56A686972DE909DD5F58D0F399753820002051320012818250D9552C09CF4D737967B4751535D2D73195F437B7329BBC7B65C049AE7B7BA944AE6839ACCA11DD74A1422E02101BF76';
wwv_flow_imp.g_varchar2_table(53) := '8504C0AF2317E27E9B9D43D7486F4E812AB3F3BF6DA7AA1A98F2CF8955C20A4DF35BE47618C07C38934902C417020814558004A0A8BC345E0C01F30132E69A7FB7B6CDB4FFBA9B372B56199EEBEDDD3CBC5496A8AA54E31C97C30092929994FD2FFF23E0';
wwv_flow_imp.g_varchar2_table(54) := '0701FFF69104C0BF6317CA9E9B77FF398F115BD2DA9D9B54DD50FCB3FC433908B30C3A6245D4BA709E6B2BF95ED5E1DA08850820E02A4002E0CA43A1970426EDCE9877FFE6E37DED1FA7FEDFDEF9AF5CBF5AF5ED73A62E67A92704728DCF843D03C0E580';
wwv_flow_imp.g_varchar2_table(55) := '9E182A3A9143C0CFC524007E1EBD90F57D70625897C6065DA36E6B6E55DBDAC5AE75282CBF40A2BA4AF14AE7FB22984300E3E989F277941E201060011280000F6ED042EB1EB9E41A523C1AD3922DAB5CEB50E80D01F3A14B89EA4AC7CE98433D260970AC';
wwv_flow_imp.g_varchar2_table(56) := '4001029E10F077274800FC3D7EA1E9BDF9743FB353700CD89EFA5FB068A1E28DD5E2CB1F029535558E1D358779CC983B56A0000104662D4002306B421A2885C05072D4753355B184DAD62D76AD43A1B7042A6BDC933573AF0793044C9AEB02BDD5757A83';
wwv_flow_imp.g_varchar2_table(57) := '4056C0EFFF9000F87D0443D07FF3CE7F2839E21AE982958B150BF9BDF65D813C5818AB72BF44D35CEA693EE7E1F46097CCF7734317641EE7877B64EE03616E03DD3B36A08189610DD909A2B977C0587A42974F20CC783062BA8480B7044800BC351EF466';
wwv_flow_imp.g_varchar2_table(58) := '0A017332D8783A3945C9E5459665A975E582CBBFF0AF2F04C6C7C63536E89ED49940D2998C4693E3329F1238383122F3E81FBF7C32E8C5D17E99F3423A867A7476B05BA707BA74B2FFBC4EF477C8240D2641300981698707028517F07F8B2400FE1FC3C0';
wwv_flow_imp.g_varchar2_table(59) := '4760DEDDB9CD0237B5CE51B4221678075F0738A9EC0EBFFBD8591DFAC18B7AE11B4FA8D3FEB9183199F307CC07449904E1D440A74E0C74C82403E67994CAA48BB149DA44C097022400BE1CB67075DA4CEDBA45DC32DFFDA6326EEB52565C817432A59E93';
wwv_flow_imp.g_varchar2_table(60) := '9D7AE3B197F4E2779ED65B078FA8AFE792DC12BA42F6C82403E3A9A44C32909D25B00F27748F5ED2E5730B0AB925DA0A9B4010E2250108C228063806732998DBBBB65824AA263EE8C753CF0073039FFE0B97F4D6F387F4EC3FFF40475E3CA4DEDE5E4DDA';
wwv_flow_imp.g_varchar2_table(61) := 'B300E5EEA839AFA0777440D99901FB5081991930CFB172F78BED23500E01128072A8B3CDBC05CC99E0E949E713BA6A1A6A15AF4EE4DD1E158B2860EFE0073B2F65DFEDBFF6C48BEA3ED369EFF4ED8545DCE46C9A36C98099193833D89D3D9170366DB16E';
wwv_flow_imp.g_varchar2_table(62) := 'D80482112F094030C631905198CBBFC652E3AED3C5B58DF5818CDD5741D96FEDFBCFF4E8B5EFBDA0834FBDA8BEDED24DF117C2C92402E6444273AE80F99C093383518876690301AF0B9000787D8442DC3F73FC36D7F4ACDBDDE4424C57B2D0C7FB4674F8';
wwv_flow_imp.g_varchar2_table(63) := 'FB2FEBF5170EAABFAFBF30DBB524CBB214894414B50FF1545655AAA6BE560DCD8D6A6C9DA35AFBE7446542F158CC2E8F64EBCA5E47B3FC1A4F25D5397251A7073B65669E66D91CAB07582028A14582120871044FC04C1EBB4DFF9B882BEC9D83F9CEA3B4';
wwv_flow_imp.g_varchar2_table(64) := '02E9545A675E7B5B07BEF78C2E5EEAD56CDE354762512DD8B642DB7FE456EDF9A90774FB173EA2BB7FFB13BAEF2B8FE87DFFFEC775EF9F7E4E77FFF16774FBEF7F42B7FDEEC775D71F7D46F7FDD98FE9FE3FFF09BBFC2774EFEF7D4AB7FCC287B4F5A3FB';
wwv_flow_imp.g_varchar2_table(65) := 'B5F8A6B56A58DCA298CBE70CB84AD94F3A7305C199C12E9D1C386F2702EE37A0726D8B42043C2E4002E0F1010A73F7CC0C40AE1D4B3CC7CD64C2EC57ACD887FA0675F0D1E775EAAD13333EC61FAB8CAB6545BBB67FE276DDF5E51FD5AE9FBA4FCBDFB74D';
wwv_flow_imp.g_varchar2_table(66) := 'F3F7AD56F30D8B54BF6AAEAA17342AD152A37843A5627589CB8F7AFBE7FA447659455355B6BC76598BE6EE5AA6951FD8A15D3F739FF6FEFC07B4EF17DEAFCD0FEDD1BC758B15AF72FED021B97C651381A1EEECCD87DC4E44756982A2400A0427281280E0';
wwv_flow_imp.g_varchar2_table(67) := '8C65E02231E700645C4E003401CFF89D9E5999C7B4052E9EEAD4C1C79ED7C8D0F0B4D7352BD4B4356ADDFDBB74C7973EAE5BFFCF1FD1F2FB6F50FD8A56C56AEC9D7401A6F1AD88A5EAF90D6AD9B2586B1EBE51FBBFF461DDF19B1FD7FA7B76A8AAA1C674';
wwv_flow_imp.g_varchar2_table(68) := '617A0F7B46C0DC7CE8D4E0798DA7F974C2E9E151DBEB0224005E1FA110F72F3B03E076C1B8BDC3200128CD13643233A9E3078EE8F081439A4CDB7BC5696CB6A2B652ABEFDEA6FBFEE811DDF7EF3EA78D9FD8ABFAE5ADB20FF34FA3951956B59F23754B5B';
wwv_flow_imp.g_varchar2_table(69) := 'B4E1D3FB759F3994F0EB3FA28D77ED54F5349381643AADD3F661017333A119F684D5022210A430480082349A018B65D2ECFC27A7B7B309188127C2C924D33AF2F82BEA3875765AFD3177675CB267BD6EFB8D8F6AF3276F51EDC239A5D9E93BF4326A1F2E';
wwv_flow_imp.g_varchar2_table(70) := '6AD8D8AE758FECD3FE5F7E58EBEEDCA68A9A8443EDEB17A73399EC6712982B05AE2F650902FE132001F0DF9885A6C7962CC9ED6DA29D1B649229F1553C81D47852AFFFE0255DBC78715A1B69DBB844B7FDDA47EC63F2F7AA7E498BACA83D96D36AA1B895';
wwv_flow_imp.g_varchar2_table(71) := 'EB56B468E3676FD59DBFF5A35A71D30659B1487E1BB49F73E64A81AE91DE599DF898DFC6A8E53D8160F528CF677DB082261A7F08D8AFB5CAB5DB48DBEF4EFD118DFF7A991E99D01BF6CEBFBF3FBFCBFBCCD9FC0B6F5CADBB7FFF53DAFB6B0FAB694DBBE7';
wwv_flow_imp.g_varchar2_table(72) := '83AE59D4A46D3F778FEEFBC347B4FC968DF9F5D77E625E1A1BCC7E22617A92CF16C80F8D5A5E142001F0E2A8D0A7AC807971B572A400E9096600B25805FE27393AA1577F704003838379B5DCB8A4557BBFF041DDF853F7A96169898EEFE7D5B3FC2AD5CC';
wwv_flow_imp.g_varchar2_table(73) := '6FD4B61FBB4BB77EF1C36A59333FAF95FAC7877466B05BB92E55CDAB312AF94220689D240108DA88FA301E73B29F79113537FD194B4FC89C756D3EB0E5FCF045A5727C7ADBD8E0CCCE462F3793897962644CC3DD03EA3BD1A5EED74EE9EC736FE9E4536F';
wwv_flow_imp.g_varchar2_table(74) := 'E8D8F75FD591EFBCA443FFF29CFD7856471E7D49471F7F55279E7D43675E3AA6CE432775F1688786BBFA94B4DFA517FA3489C964466F3E7550C323237931CDDBB2547BBEF021CDDBB444918A685EEB78B192394CD1BA65B1F6FCE207B570DBCABCBA682E';
wwv_flow_imp.g_varchar2_table(75) := '15EC1EB9C4E180BCB4A8E435011200AF8D4888FA632EABBA38D6AF3343DD32B7613DDE7F4E27FBCF67AFBB361FD8924CE77E773FD093DFF474B9592727D21ABF30A48B6F75E8D8D387F4E2BF3CA503DF7C4A2F3FF9BC0EBDF49ADE7AEBA84E9E3DADB39D';
wwv_flow_imp.g_varchar2_table(76) := '1DEAECED56CF40AFFAEC69E6BEB121F5F4F5AAEB42B7CE9DEBD0A9132775ECCD633AFCEA1BF6BA07F4C2379FD0CBDF784A6F3FF3BA2E1C39ABD1AE014DA69C3F3B21978339C3FFD8B387D497E7B4FFDAF7EFD2DE5FF990AAE7D4E66ADA37E515F595DAFD';
wwv_flow_imp.g_varchar2_table(77) := '4BEFD7E68FEC558E0928992F3313D033DA677EE4116881E005470210BC31F57444E61DFD707254E7877BB29FC87661A44F23C931A5D269CDE49DEC50AF7713804C3AA38173BD3AF1F461BDFCCD67F4CA532FE8C8A1C3EA3CDFA9B1F1B1CBEF1AEDE3C9B3';
wwv_flow_imp.g_varchar2_table(78) := '19B08C8D3632667B769CD75B6FBCA9834FBFA857FEF5699D397054439D7D9AB4FB9077FB765F8E3FFFBABABABB73AE9268A8D2CECFDEA58D1FDDAB8865E5ACEFB70A26A4D51FD8A59B7FF6014513F19CDDEF1D1F50FF843F67A372064785C00A90000476';
wwv_flow_imp.g_varchar2_table(79) := '68BD159899DEEF19EDD7A9C1CEEC71D3FEF1E1CB3BC0597633399E54C66327028E0F8EEADCABC7F5EAB79ED56BCFBDAC73E7CF65939C6436C9B1F7B2B38CD969757358219B604D8CE9D4A9537AD54E065EFBD6F3EA7CF5A4C67B73EF9CBA8E9CD6F98E4E';
wwv_flow_imp.g_varchar2_table(80) := 'A7E6DF5B5ED552A73D3FF3A096DEB9496647F95E41C07E30B12DB869B56EFD958715CB7537417B583BED435666562B600C84F38E4010BF91000471543D14D3486A4CA7ED9DFEDB7DE7D4634F9326F398D6F750F7A7D595E1DE01BDF1D42B7AE13B4FE9C4';
wwv_flow_imp.g_varchar2_table(81) := 'D1E31A1A1DB16735EC3DC3B45A295C65333B30303AA463478FE9C063CFEAF0F75ED260E7A5293730D0D5A763878F4E5976E5C2445D55F62E7ECD1B175EB938D03FCF59375F77FCC6C754515DE11AA749C0CE0D5DE0A44057250ABD244002E0A5D108505F';
wwv_flow_imp.g_varchar2_table(82) := 'CC47AC9A77446706BBED77BFE3458BACB1B5499178B468EDE7D3F058CF908E3FF5BA0E3EF6827A3B7B64EE5F94CF7AA5AC63764EE6437B0E3DF3B2DE7AFCA0862E0EBCB7F9E4D8848E1E783D67B252595FA53D3FFD80AAE6D6BDB76E587EA85FDEAABDBF';
wwv_flow_imp.g_varchar2_table(83) := 'F490CCAD86DD629EB013DCD3835DF6ECD6CCCFC3706B9FB272090473BB2400C11CD7B2453569EFFDCEDB53A1C7E4D94CD40000100049444154FB3BD4373E9473A7329B8E4623112D5AB77C364DCC6A5D33D57FECC9437AE9F1E7D4D179DE7ED12FDFBBFD';
wwv_flow_imp.g_varchar2_table(84) := '7C03496732EABE7041AF3CF6BC5E7FEA65755EE8D2E1E70E6A746CD4B509CBB2B4FD47EF50F39645AEF5825CD86CCF04ECF9D9076545DD5F36C75313327F0341B620B66008B83F93831123519448209549EBAC3D05DA6FEFF80BBE494BF6F166EB9D8754';
wwv_flow_imp.g_varchar2_table(85) := '575BABCD7B77A8AA0C679F9B93FB3A0F9FCE7E225E6757E7EC76FC9689CB3CACECC974D14844B14854898A846AEA6A545955A95834962DB3ECBA320F15E6EB52E7451D7BFC350DE47125C58E4FDF91FDA4BEC26CD9BFADB4EF5EA9ED9FBA3D6700E652D6';
wwv_flow_imp.g_varchar2_table(86) := 'DEB11FCEB2E45C810A9E16086AE722410D8CB84A276076FC66BAFF58FF590D4FB8BF93CCD5AB58655C35F31AD4BCB44D0BD62FD5F2ED6BB56EEF0DBAE1CE1BB5F3817DDAFDC15BB5EB9E7DDA72CF6ED5B4D6ABD45F63FDC37AEDD11774EC8DB7640E73CC';
wwv_flow_imp.g_varchar2_table(87) := '68FBF64EBCBEBE4ECB36AED286FDDBB4FD03FBB5E733F7EAD65F7848777FF913BAF70F1FD13D5FF98CEEF8BD4FEAEE3FFC8CEEFF93CFEAFEAF7C5677FDC68F6AFFCF7E403B3F79A7D6DFBF4B8B77AE56E392B9799DA53EA37EBEB3D2F2DD1BB4F4EECDEF';
wwv_flow_imp.g_varchar2_table(88) := 'FCC6B7A5B76FD2FAFB76E684B830DA97F33E16391BA102024514200128226E189A36EF74CC35FC66BADF9EFD9F76C89665A9A6A94EED6B9768ED2D376477EC1B6FDAAAD55BD769C9DAE56A5FB240CDF35A546BEF302B2A2A14B5DF1DC7A7F1012ED3EE90';
wwv_flow_imp.g_varchar2_table(89) := 'CB0A17DE3EA797BFFFBC06F3BC3BDE554D59523C51A1056B97DA3BFBFBB4E7973FA4CD3F71BBD67E669F967D6487DAEF5AA7E65D4B54BBAA55550B1B949857AB446BCDE5C7BC3A7B59A31AD6B769DE4D2BB4F4BECDDAF089BDDAF56F1ED09E9F7B50FB7F';
wwv_flow_imp.g_varchar2_table(90) := 'EE035A77DB56D53735281E8BAB90B3046DEB9768CB8FE77EC7AB107D59514BAB1FD8A979AB17B9466DCEBBB8349EDF9D145D1BA2B0CC02C1DD7C24B8A11159B105CC547FF6AC67FBB8F274B7D5D8DEAC953BD669FBFD7BB4E5B65D5AB161955A5A5A5415';
wwv_flow_imp.g_varchar2_table(91) := '4B286E4F799B1D7DC48AC8B2ACE9365DF0FA93C9B44E3FFFA6DE7CE5B0D2E9E9DFFBDDEC986FB8E726DDFD3B9FD4CDBFF590E6DB3BFBDA952DAA68A9512431F313180D4DF5FC06B56C5BAC8D3F7E9BEEFE0F9FD31DBFFE516DBE6DA7EAEAEA66ED108945';
wwv_flow_imp.g_varchar2_table(92) := 'B5ED91DB15AB8ACFBAADA035106FACD40D9FBCD57E7EBA47D6672700E66E81EEB52845A03C0291F26C96ADFA5DC01CDF9CEE894E66873577519BB6DF7DB336D8EFF2DBEC77F7959595D9E3DB5EF5480D4FE8F00F5ED6E93367A6D5C5DA39F5D977E5F7FF';
wwv_flow_imp.g_varchar2_table(93) := 'C123BAFBCF3FAB559FBA49D58B1BA7D5C6742B5B114B756BE769CDE7F6E9CE7FF719EDFBDCFD9ABF66896469465FE63043CDFCA619AD1B8695EA57B46AFD1D3BE4F695B693E38B63DEBD59955BDF29BB2C10E47F4900823CBA458ACDECFCCDFDCFA7D37C';
wwv_flow_imp.g_varchar2_table(94) := '53EB9CEC3BFDD5BB36AAAAAE5A261998CEFAE5A89BEC1BD56B8F1D506F7FFEB7798DC663DA70CF4EDDF2AB1FD686476E51CD9239B26225FE33B377F8B1DA0AB5DDB15637FEE203DAFB930FA869418B6D6E17E409D9601F4E58F5C07629FF5514C6AF550F';
wwv_flow_imp.g_varchar2_table(95) := 'EF52EBEA05AEA10F2547656E84E55A894204CA2050E257A63244C8260B2A608E694E67E7DF34678EB6DEB24B1BF66F536D53E94FDA9B69F07D1D17F5F20F9ED7F0D848DE4DCC5FBF54F7FEEEA7B4FED3FB54BDB0B1F43BFE297A1AAB4FA87DDF6ADDF195';
wwv_flow_imp.g_varchar2_table(96) := '4F6BDFCF3CA8BA9686296A5DBD286E4FF9DFF4F30F285653717501BF5D2710AFAFD4E687F72AEA722F0ACE05B88ECD470B82DD551280608F6F41A333C733BB467AF36AD3BCC35FB661A536DCBA55352DFED9F19BE0FACE5DD4EBCFBEA28954D2FC9AF351';
wwv_flow_imp.g_varchar2_table(97) := 'D958A3DB7FFBE3DAF3A587EC69FEA69CF5CB51C1B2FFD2E7DDBC5277FDD167B4F9FD37A9A23AE1D88DED9FB843756BE639965370B540D3FAF9DA70DF8D572FBCE6B74B63831A4D15EF8658D76C8E5F11C84BC07E59C8AB1E95422E3062BF78750EDB3BFF';
wwv_flow_imp.g_varchar2_table(98) := '3CEE75138FC7B569CF769933DE6532011FD98DF40CE8C80BAFE57D03A3796B16E9F6DFFCB89A57CFF74594D1CA98D67CF426DDF6F987B562E73A7B78AE9EE35F7BDB0D5AB0678D2F62F14A27AD88A5E5F76F55BCBAC2B14BCC0238D278BA20E89D230108';
wwv_flow_imp.g_varchar2_table(99) := 'FA0817203E73BDBBB9CE3F9FA6EAEAEBB267A1D7CFF3E63B61B71892FDA33AFCCC41A5D229B76AD93233E5BBF523FBB5EF4B1F564D7B4376996FFEB1F7F9F5EBDBB4F5E7EEC95E42D8662731F3562ED0E60FDCACF53FBA4F918A995F99A0907EC5EB12D9';
wwv_flow_imp.g_varchar2_table(100) := '7B33B8856F3EF5323DC92D82DD8C282BAD00094069BD7DB9B54E7BDADF2401B93A3FB77D9E36DDB6337B925FAEBA5E2B4F0D8FEB8DA75ED6E844EE69DADAD606DDF1EB1FD3CA0FEE90B926DC6BB1E4DB1F7372E2DCDDCBB5EFB73EA2FDBFF3317B6660B7';
wwv_flow_imp.g_varchar2_table(101) := 'A2D5F17C57A7DE35028BF6AC53957D38E89AC5EFFD9ACAA4659280F716F083C70582DF3D1280E08FF1AC22349FE097CF8BD6A2154BB4FAE64D8A94FA8CF759457779E5C97446479F7D5D83A3B94FF86B59D1AE5B7FF5C36A58D37679E520FC6BD9419887';
wwv_flow_imp.g_varchar2_table(102) := 'FD8DFF672E603E2469F1F6D5AE0D0C4C0C6BD2FECFB512850894488004A044D07EDCCC70724C3D795CC3DCD2D6AA255B56F931C46C9FCFBDF2B62EF6F5667F76FBA769F15CDDF433EF5395DFA6FCDD82A2ACA0028B6F5EAB48DCF910CA706A4C497B26A0';
wwv_flow_imp.g_varchar2_table(103) := 'A01BA5B1A20884A1511280308CF20C6234272D5D18BDA45C6F56EA1BEAB5EAC68D924FDF41F69EE9D6C993A794EBCB7CEEC0DE5FFEA02ADBFC754543AEB8282FAC40DD9216B56F5AEAD8682693D1582AF76126C7062840A08002240005C40C525317C6FA';
wwv_flow_imp.g_varchar2_table(104) := 'EC17AA09D79062F1B856DFB449D198F33B1ED706CA5C38313EAE63AF1CCED98BBA0573B4FF0B0FA9B2A536675D2A845B205A15D7B2DDEB5D11CC1535AE1528F4804038BA4002108E719E5694E6843F73B73FB79522114B1B6FBE419535556ED53C5D76E2';
wwv_flow_imp.g_varchar2_table(105) := 'D5A39A9870BFD6BFB2A946BB3E7BB76A17CEF1742C74CE3B0273D6CE5734E2FCD23A6A1F5AE33C00EF8C57987BE2FC2C0DB34AC863CFE793FD966D5EADDA3CEE2AE755CAE1DE015D38DD99B37BBB7EFC1ECD59373F673D2A20F0AE404553B5EA5B9C2F83';
wwv_flow_imp.g_varchar2_table(106) := '9DC8A4B829D0BB581EFD1E966E91008465A4F38CD3DCADAC7F62C8B5F69CD666B52D5FE85AC7CB85E6FC86132FBF95B38B6BEFDFA1B99B97E6AC470504AE143037066A5DB5E0CA4557FD6C9E7F4313A3572DE31704CA214002500E750F6FD3DCEA379D71';
wwv_flow_imp.g_varchar2_table(107) := 'BE59896549CBB7AC9665D93F78380EB7AE5D3A7341FD393EE0A7617EB3D67F748F2CFE42DC28297310685DB75056D4F9C933921ACBFB6E930E9B6071D104C2D3B0F333343C0644FA8E80F9D4B2B194FB897FADEDF354D950F3CE1AFEFC76F6AD93F68BAF';
wwv_flow_imp.g_varchar2_table(108) := '73DF639571EDFCDC5D3277FB73AE450902CE028DABDB94A8733E3F663C9D14770574F6A3A434022400A571F6FC56CCB464FFB8FBD47F3412D1A20DCB3D1F8B5B0787BBFB343030E056456BEED9AEA6B51CF77745A2D055A06A7EA31A5A9B1CEB98930033';
wwv_flow_imp.g_varchar2_table(109) := 'DC16D8D1A79C0561DA3609409846DB25D691D4B8CC0C804B15B52F5EA0AA7AFFBEFB9F9C944EBF79D2F5DE0695D5955A7EFB66C9BF4738C457F9052CFBF9D3D4D6ECDC11FBB998C975930DE7B52941A0200224000561F47F2323398E495A9675F9D3FD7C';
wwv_flow_imp.g_varchar2_table(110) := '1CEAF0A501F55EB8E81AC18607768BEBFD5D8928CC53A026C75532CC00E40959D26AE1DA180940B8C6DB31DA5CF7FB9FBB609EE23509C7F5FD50D073BAD33EF66FBFF572E86C4D739D96DCBDC9A194C5084C4F205153293B6F765C8973001C6928289140';
wwv_flow_imp.g_varchar2_table(111) := 'A444DB61331E1630EF44C6D3CE27FF9917B1E6F9733D1C411E5DB3E7FFBBCFB85FF7BFF2E64D327772CBA335AA209053205A693E59D13E16E05033C5670238C8946F71D8B64C0210B6119F225E73ED7FC6DE414E51945D148FC4D5D0EE723C335BCBDBFF';
wwv_flow_imp.g_varchar2_table(112) := '0C77F76B22E99CE434B4366AE19E35DE0E82DEF94A209A300980739749009C6D28298D40A4349B612B5E16C875F25F636B93FC7ABFFF77DD7B4E77B99EFCD7BE6EA9CC99DBEFD6E73B02B3158856C4E4FCFE5F4A3303305BE202AF1FBEE64800C237E657';
wwv_flow_imp.g_varchar2_table(113) := '459CCCA494EBF8FF9CF6D6ABD6F1DB2F9974463D9DDDAEDD6EDFB14256D4EDE5DA75750A11B84EC0DC4FC2B29C9F539C03701D190B4A2C4002506270AF6D6E229DD278C6E50371ECD7AF06B7CB99BC16D014FD19BD34A4D1A4F347B09A93FF1AD7B44DB1';
wwv_flow_imp.g_varchar2_table(114) := '268B1098B9402461CF00449C3F2933C37D00668E5B8435C3D82409401847FD8A98C7CDC97FCE27C6ABB2B6C6F727C6F5F7F4BA4EFF2FDEB946D16A7F5FE170C590F2A3870426B9D6DF43A34157AE152001B8562464BF9B43006E21D735D5D9C731ED6900';
wwv_flow_imp.g_varchar2_table(115) := 'B74A1E2FBBD47DC9B987F65FC0FCED2BC53DFF9D89289999407A3CA54C3AEDBCB2E5EFBF2BE7C0FC5812CE3EDB2F7FE10C9CA82F0BE43A0E99A872BF96F9722BDEFD773233A9D1BE41C70EC6E371D52F6D712CA70081990AA4469D0F3B9936A3649D8681';
wwv_flow_imp.g_varchar2_table(116) := '4719052265DC369BF68080EB7148FB0D4A65A5BFA7C6270646E576B955B53DC311ABAEF0C048D085A009244726EC0300CEC7D722CC007866C8C3DA111280B08EFC3B719B0F017AE7C7EBBE59F6E47F853D03705D818F168C0D8FBADEFDAF6E9EF307B6F8';
wwv_flow_imp.g_varchar2_table(117) := '284CBAEA418189C151D75E45C4CBAF2B10854517E0195874626F6FC0ED0349CC3B940ABFCF00900078FB0918E0DE8D9B04C0790240110E017864F4C3DB0D1280F08E7D3672B71900F3025551E9EFE9F1B1A131D769D81AFB104016827F1028B0C0D8E088';
wwv_flow_imp.g_varchar2_table(118) := '6B8BD1082FBFAE4014165D806760D189BDBB01973727D94E9B4300B184FBED4CB3153DFCCFD8989D00B8045A515FE5E1DED335BF0A983B6B0F0F0CB976BF2212732DA7B0340261DE0A09408847DFB263B7ECE3FCF6B729FF3787005CF69D53AEE3A98576';
wwv_flow_imp.g_varchar2_table(119) := 'E727C69DEFFF6FFAEAF74F383431F0F0A2C0A486FA9DAF3E313D8E930018061E651420012823BE1736ED7622B2B944303DE17297402F04E0D2077BFFAFA4CB0700D5CC6D90DF67385CC2A7A88C02633D431AEB1B76EC41C49EFE8FBADC25D071450A0A2C';
wwv_flow_imp.g_varchar2_table(120) := '10EEE64800C23DFEF6FB7FE7A780393F2039E6E70420A3A44B02138DC714AD8C87FC1940F8C510B8F0DA698DF53B9F039088C66566D88AB16DDA44205F01E757FF7C5BA09EAF05A211E7A780B9426062CCFD66265E0E3E9949BB7E04B0F9B4B68A06CE01';
wwv_flow_imp.g_varchar2_table(121) := 'F0F218FAB56FE70E1CD5643AE3D8FDAA58C24EBE2DC7720A4A2310F6AD38BFFA875D2624F1475D2E45BA3C03E07E0CDD2B4CE6C536353CAED19E41F59DEE56C71B2775F4B94332770274EA632416559C04C08987E53314C8A432EA7EEB9CE3DA11FBB85B';
wwv_flow_imp.g_varchar2_table(122) := '75ACD2B19C02044A254002502A698F6E27EA960068525E9C013067589B1BFCF49EE9D69957DFD61BDF7F4907FED7137AFE5B4FE9C51F3CA7432FBCAAE3878FA9EFFC4557F54C2AA5894BCED3B4AE2B5388808340DF9BE75DFF6E6291982AA3FEBEBC5681';
wwv_flow_imp.g_varchar2_table(123) := 'F822081280903F07A26E27224D4AA3A3A3AE9FA4572A3E331BD17BBE47470FBCAE97BFF9B45EF9F6B33AF2C26B3A75F4847A7B7B359E4A2A33E93CE53A553FD3A9B49203635315B10C8119094CDAEFFE3B5E38E6FA3793CCA43496F6EFA1B519C1B09227';
wwv_flow_imp.g_varchar2_table(124) := '0548003C392CA5EB94DB0C80E9C550DF803D0F606702E697523FECB7FAE33DC3EA38783CFB0EFF8DA75F51D7A9F31A1919C9DEDF3FC608EF9200001000494441546397CFA64B19FB186D6622359B26581781AB04267A4774EEB513572DBBF61793CCF68F';
wwv_flow_imp.g_varchar2_table(125) := '0F6B3CEDDF136CAF8DC98FBFD367890420E4CF828A485C9665392A0CF70D697CBCB4EF56263319F59FBAA023DF7D492F3EFEAC8E1F3BAEF189C29F8B10C958AAA8E358ACE3E053306D81D1AE010D74F6E65C6F70624427063A7472E0BCCCCF2629C8B912';
wwv_flow_imp.g_varchar2_table(126) := '151028B040A4C0EDD19CCF04E2D1A8CC19C96EDDCEE705CD6DFD7CCBCC897CFD27BAF5FA770EE8F5175F55CFC0257B5ABF78B30F6DAB16A97A4973BEDDA31E02390546BAFA73D679AF82FDD41E4B4DE8DCD0059D1BBEA0E12487A3DEB329FA0F6CC00890';
wwv_flow_imp.g_varchar2_table(127) := '001885103FA256543571F777C1FD5D978A2E34D0D1ABD7BF7B40AFBDFCAAFA86068ABAE337C1B4B4B76AE53D37D8B31FE6371E0814462099E3CE934E5B199A18D599C1AEEC8CC068AAB4336E4E7D6279F0054800823FC63923AC895749CE4701D4DFDDAB';
wwv_flow_imp.g_varchar2_table(128) := '743AAD627CA5862774E2993774E8B957B23B7ED9EF8A0AB61D1393FD3047382CCB92B9F14FCBF276DDF8D97B74EB9F7C4A35CB78F72FBE0A2A3067C3C2ECF36CA68D9A1981B343DD1A613660A68479AD47A5CB0291CBDFF837CC02E6AE64964B06309E9C';
wwv_flow_imp.g_varchar2_table(129) := 'D050CF34A636F3C09C4C4FAAFF68A75EFEEE333AD7D1A18C7DDC3F8FD5A6AE6249558D359ABF6E8956EFDDAC4D77EDD4F60FEDD34D9FBC5BFB7FE201DDF6F30FE9AE2F7E4CF77CF913DAF7C587B4F8CE0DB2F381A9DB622902B310A8B30F29EDFCEC5DAA';
wwv_flow_imp.g_varchar2_table(130) := '6CA899712B69FB6FE1B43D1B600E0D4C70A2E08C1D5931B70009406EA3C0D7B064B95E976C4E50BA70BEBB600E69FB5DFFD9A78FE8F0A1C33297EFCDB4E18AEA84E6AF59A2ED0FDFA2FD9FFF906EFAE207B5E5A7EFD4DA47F669F987776AE1BD1B35EF96';
wwv_flow_imp.g_varchar2_table(131) := 'D56ABE71A91A36CF57CDF266C5EA1233DD1CEB21905BC09216DDB24EB77EE161ADBB67876AE6D4E55EC7A1863939D0CC06F48FBB7FAAA0C3EA2C7614A0E05D011280772542FEBDBEA2DA55E0C2E9F34AB9DC57DF75E52B0ACD4952AF7EFF804E759FCB5E';
wwv_flow_imp.g_varchar2_table(132) := 'CA7745515E3F56D65569CD1D5B75FBAF7E540FFCC5FFA13D5F7E58CB3FB45DF52BE72A5211CDAB0D2A21506C81BAE52DDAF8E9FDBAF7CF7E4CB7FED2C35AB2638DAC6864DA9B9D48A7747EF8A2FDE8D16C2F7B9DF6C65921F002D37F46069E249C0156C5';
wwv_flow_imp.g_varchar2_table(133) := '2B158B38EF40D3C9B43ADE3C35631C338B70FE8D537AED9997353C3EBDBBEF4513312DDAB64AB7FFBA3D8DFF878F68D3A76F51F366FB586B757CC6FD6145044A21108947D4BA7D8976FCDC7DBAF7F73EA52DEFBF59AD4BDB65C5A6F7D2DB3F3EACD3839D';
wwv_flow_imp.g_varchar2_table(134) := 'E204C1D98F1A2DFC50607ACFC21FAEC74F011330E70154DB49805B58678E9DD2F0E0B05B9529CB3213691D7DEA55BD7DF8A892F63B9A292B392C6C5DBD407B7FFA41DDF8F907D4BC71812A9AAA34DD174F87A6598C40C9044C2250BBA459AB3FB65BFB7E';
wwv_flow_imp.g_varchar2_table(135) := 'F3C3BAE95377AB79499BA6F3654E103C6527017DE383D3598DBA08380A900038D284ABC092A5C68A5AD7A02733933A75E8986B9D6B0B93A3137AF5B117D4DD75E1DA22D7DF5B96B5EBD6CF3FA45BBFFC31CDDDB94C56C472AD4F21027E118856C5B5E0CE';
wwv_flow_imp.g_varchar2_table(136) := 'F5BAEDDFFE886E7EE45ED5D6BAFFDD5D15D7A4D435D2AB9ED1BE825E3073D53602FD0BC15D29400270A546C87FAE8A279488C55D157A3B2E68F0627E5704A4C6937AF5F1031A1ACCFF24A639CBE669DFCFBF5FFB7EE3C36ADDB154765E22BE1008A28049';
wwv_flow_imp.g_varchar2_table(137) := '6A17DC652702BFFB23DA78CF4EC5AB2BF20AD3DC01BB67B45F97C606F2AA4F25049C0448009C6442B8DCB2F7B62D958DB22CCB35FAB70F1EC979025FDA9EF67FE3F197353A94DFF1FE8ABA2A6D7978AF6EF9B58FA86DF74AC5AADD1311D70E5288808F04';
wwv_flow_imp.g_varchar2_table(138) := '2AE7D569ED27F7EAB65F7C588BD72D97DCFFFCF4EE57F7E8255DB01FEFFECEF7DC02D4B85A8004E06A8FD0FF565751AD8684FB35CC43970675E6F07147AB4C32AD379E78490303F9BD43A999DBA0DB7FFBE35AFDD02EC56AF37B17E4B8710A10F0A18099';
wwv_flow_imp.g_varchar2_table(139) := '0D68D8D0AE1BBFF441EDFDB1FB158BC77247611F0EB868CF02F4DA8FDC95A981C0F50291EB17B124EC022D79CC029C3B724AE74F9DBB9ECA9E9F7CF3E957D5DF97DF6182055B57E8AEDFFBA4EADA9BAE6F8B2508844DC092DA6F5BABDB7FE5239AB3A835';
wwv_flow_imp.g_varchar2_table(140) := '77F47612C04C406EA6CB35F8F75A0112806B45F83D7B396053A22EA7C4F1178FA8BFA7EFAA7A275E7E53177B2E5EB5CCE99755B76DD1CE9FBA57F15A6ECEE364C4F2700A98D980DD3F79BFDAD72CCE0D602701662680AB03725351E36A011280AB3DF8ED';
wwv_flow_imp.g_varchar2_table(141) := '1D81E6AA866C22F0CEAF537E33D7F6BF61AEEB1F1ACE9E1370E17887CE9D383B65DD6B176EFFF8ADBAE1C7EF60E77F2D0CBF23F08E40CDB266EDFEFC835A76C3EA7796B87CB393007375C07072D4A552B88B88FE7A011280EB4D58620B44AD88E655CFB1';
wwv_flow_imp.g_varchar2_table(142) := '7F72FFDF9CEC77C83EDE7FE6F4191D3D78D8BDB25D1AAF8869FF4F3EA8E50F6EB37FE37F0410701388D525B4E3571E904998739D1C681F7D53D7C8256526336E4D5286C07B022400EF51F0C3B502E684C0D6EAC66B175FF77B72645CE75E3CA64CC67E1B';
wwv_flow_imp.g_varchar2_table(143) := '725DE90F175896A55D9FB84BF3F6AFFAE1427E4200819C02CBDEB74DDB1FDA9FB39EF9F0A0CE915E4DDAFFE5AC1CAA0A043B950009C0542A2C7B4FA0B9B2410D89DAF77E9FCD0F5B3FB857F3EF5C379B26581781500AD813725AFEA11D5A7FF316E59A09';
wwv_flow_imp.g_varchar2_table(144) := '18181FD6A531EE1628BE720A9000E424A2C2DCEA2655C76777A2DEF21BD769C58777828900023315B0A4B59FDBAF256B97E76CC15C1A38CE4709BFE7C40F530B90004CEDC2D22B04CCF900F36B5A158FE6716DF215EBBDFBE382F54BB4E953B7BEFB2BDF';
wwv_flow_imp.g_varchar2_table(145) := '1140608602E636C21B3EBE57CDEDEE9708A63269750E5F94395177869B62B5100890008460900B11622C12555BF51C45EDEFD369AFBAA9565B3E7DBB2A9AAAA6B31A751140C041A066658BB67DF276C573DCB6DB7C7260FFC4F43FBCCB61B33E5E4CD79D';
wwv_flow_imp.g_varchar2_table(146) := '0448009C64587E9D404DBC2A9B045C57E0B0205211D5BE5FF8806A1671931F07221623302381C61B1668F72377CBB2ECE3022E2DF48CF6693C3DE15283A2300B90008479F467107B75BC5255B1445E6B6EBA6FB7EA57CFCBAB2E951040607A026DB7AED1';
wwv_flow_imp.g_varchar2_table(147) := '9A5D1B5D573287027A437E42A02B50C80B490042FE04986EF8512BA2FA1C9F1560DA9CBB6CBE567E6087F9910702081443C07EF3BFFA63BBD534BFD9B5F501FB30409A7B03B81A85B5900420AC233FC3B8CDF5C5FDE3393EDED77E61DAF0FEDD8A24A233';
wwv_flow_imp.g_varchar2_table(148) := 'DC0AAB2180403E0209F34982F7EC94ECBF39397C991301C37B9B6007141667054800B20CFC93AF403293D6588E638A0B362E57D3C605F936493D0410988540DB8D2BD43ADFFD505B9F9DB49B9B04CD6233AC1A40011280000E6A3143CABE9370BBE19FFD';
wwv_flow_imp.g_varchar2_table(149) := '4E64FD076E54B43A5ECC6ED0360208BC23606E17BCF1A19BE5360B904CA7640E0528645F84EB2E4002E0EE43E9150263F63B7F7397B12B165DF7E3928D2BD5B8AEFDBAE52C400081E20934EF5AA6F6E50B5D376012007308CFB51285A112200108D570CF';
wwv_flow_imp.g_varchar2_table(150) := '2E5873ECDF9C55ECD44A3411D3BA87763B15B31C01048A2460D9AFE46B1FD8A578A2C2710B13F62CC0D0C4A86379F00A88289780FDB4C95585720494FD6891A1E4882BC522FBD87FDDEAB9AE7528440081E208B4EC5AAA65DBD6B8366E0EE165CCC706BA';
wwv_flow_imp.g_varchar2_table(151) := 'D6A2302C0224006119E959C639961A57329D766C251A8F69E5DD5B1DCB29400081E20B2CBFE706D78D8CA4C64273632057080AB30224005906FEC925309C1C73ADD2BAA44D350BE7B8D6A11001048A2B9068A95565ADF36DB7CD9B7F930414B717B4EE17';
wwv_flow_imp.g_varchar2_table(152) := '011200BF8C5419FB698EFBE77AD168DBB44C158DCE2F3C65EC3E9B46203402F1FA4A2DDEBEDA355EF31901AE1502514810F90844F2A9449D700B4C6492328700DC14E66E5AE4564C1902089440C08A5A5AB07395DC2E0934F703E06A00F1650B9000D808';
wwv_flow_imp.g_varchar2_table(153) := 'FCEF2E309A9A90DB894315D509D52E72BF1DA9FB1628450081420934AD6D5765B5F36C9CB999D7783A59A8CD79B21D3A959F0009407E4EA1AE3592723FFEDFB666B1A255DCF827D44F1282F78C80F95B6C59EE7C2F0E736BE0911CE7F47826183A525401';
wwv_flow_imp.g_varchar2_table(154) := '1280A2F206A3F1643AE5188815B1B470DB4AB94D398A2F041028A9C0FC1B96CB8A3ABFBC0F25476512819276AA641B6343F90A383F43F26D817A811630C70A332E9F24565D5FAB96CD8B036D407008F84DA069459B12F5D58EDD36E7F4A4269D2FEB755C';
wwv_flow_imp.g_varchar2_table(155) := '918240099000046A380B1F8C395E98C9DE0668EAB66BE7D429D1523375214B1140A02C02358B9A5433A7D671DB99C94999AB7B1C2BF8B880AEE72F400290BF55286B8EA727ECA9C28C63EC354D758E651420804079042289B86A9AEAE5F6957699D9735B';
wwv_flow_imp.g_varchar2_table(156) := '8FB2E008900004672C8B12C9E54B869C9BAE6C747E97E1BC16250820504C01CB92AA1BDCFF36833903504CD5E0B54D0210BC312D584419FB1DC2B8B95C68D2B9C984CB5DC79CD7A20401048A2D50DDEC3E3B97E61C80620F81E7DB2701F0FC1095AF83E6';
wwv_flow_imp.g_varchar2_table(157) := '2CE164C6F90A00D3B38A9A4AF38D070208784CA0DACCCED933014EDD3209BE53995F97D3EFE90990004CCF2B54B5339A543AE37CFCDF60C4AB13E61B0F0410F09880B90AC072B93E3733E932B5E7B158E84E710448008AE31A8856CD0C80B90CD02D9878';
wwv_flow_imp.g_varchar2_table(158) := '1D33006E3E9421502E814834A2883919C0A103C14B001C0265B1A3000980230D05E6FD8149029C242CCB52ACBAC2A998E50820504601CBFE03769F01709FDD2B63D7D974890448004A04EDCFCD98F7FFF6AB8843E723B1A822B18843298B1140A09C0293';
wwv_flow_imp.g_varchar2_table(159) := '99495996E5D885CC64B01200C740297014E0D5DB918682499BC03CEC6F53FE9F7D0171AB30E55A2C44008152084CA633729BC12B451FD886B7054800BC3D3EE5ED9DD9B9BB9C28645E6032296E275ADE4162EB084C2D90310980CC1FF1D4E5C15A4A3433';
wwv_flow_imp.g_varchar2_table(160) := '11200198895A48D6312710452351E768EDD796D4C88473392508205036814CC67D062062F1F25FB6C1F1C8867906786420BCD80DF30211CDF122313138EAC5AED32704422F606600DC10CCDFB75BB99FCAE8EBCC04480066E6168AB52296A57824E61AEB';
wwv_flow_imp.g_varchar2_table(161) := 'C4D0986B39850820501E81C964DAF500403447725F9E5EB3D5520A90009452DB67DBB2944702304C02E0B361A5BB2111484DA4EC04C03E4EE7106F241294977F8700599C538067404EA21057B0670062E61C00CBD960628004C059871204CA2730DCDB2F';
wwv_flow_imp.g_varchar2_table(162) := '3B0370EC408C1900479BB01490008465A46710A7D9EF5744E3F63C80F969EA06C6873907606A199622505E81FEF3175D3B10B5A2AEE57E29A49F3317200198B95D28D6AC88C4EC04C039541200671B4A102897C0E8F901F5E54A00380450AEE1F1CC7649';
wwv_flow_imp.g_varchar2_table(163) := '003C3314DEEC883909D0ED6CE1C18B034A7218C09B8347AF422B3074B6572397861CE3B78FEE296627F78E157C53404767234002301BBD10AC6B5996A211E7A7C948DFA0FA0E9F175F0820E01D81FE13DD4A8E3ADFA3C31CDAE31C00EF8C57B97AE2FCCA';
wwv_flow_imp.g_varchar2_table(164) := '5EAE1EB15DCF0954469D3FF027954CE9DC0B475D4F36F25C40740881800BF49EE8748DB0365E2DB7993DD7953D54485766274002303BBF50AC9D7049000CC0B9374E2A3391323FF2400081320B4CA632EA39E59C005896A5DA7855997BC9E6BD204002E0';
wwv_flow_imp.g_varchar2_table(165) := '8551F0781F12D1B8DCCE041CE91FD2D049F7338EC51702089444207BFC7FD0F9F87FD48AC86D56AF249D2CC8466864B6022400B3150CC1FA15760290C8FB0178A70000100049444154310BD07DF0942633CE371D0901132122507E01FB4FF0CC336FDA7F';
wwv_flow_imp.g_varchar2_table(166) := '8BCE5D3109BD65395FDAEBBC26254113200108DA8816211E7325404DACD2B5E5AEC3A795EAE7A640AE481422506481E4E0988E3DF19AEB56AA0332FDEF1A248579099000E4C544A5BA8A6AB91D06E83C7A46FDC7BBC5170208944FA0EBF9B735DE3FE2DA';
wwv_flow_imp.g_varchar2_table(167) := '81AA1CB379AE2B531828011280400D67F182A98C251437B70576D844667252679F7BCBA194C50820506C81D4D0848E3FF1BAEB6612B10A55D887F45C2BF9A2904E16428004A0108A2168C31C31AC89DBB3002EB1BEFDFC1BEA7BF59C4B0D8A1040A05802';
wwv_flow_imp.g_varchar2_table(168) := '970E77E8E2E92ED7E6EBED99BCECE77BB8D6A2302C0224006119E902C4596727006E9F209649A675F81F9FD3647AB2005BA3090410988EC0B1475F516A22E9BC8A9DC5D755D43897FBA884AE16468004A0308EA168A5CA3E0C50154DB8C6DAF1D629EE0C';
wwv_flow_imp.g_varchar2_table(169) := 'E82A442102851718EB1A54C71B275D1BAEB777FE15DCFED7D5286C852400611BF159C41BB12C3524DCDF419873018E7CED59A5475DDE89CCA20FAC8A0002D708D8136E47FEFE6965D2996B0A7EF8AB99B96B4AD4FD7081AF7FA2F38512200128946448DA';
wwv_flow_imp.g_varchar2_table(170) := '315388F168CC35DAB36F9ED485A7DF76AD432102081446A0EBA9633AF6FC1BAE8D99C377E6445ED74A14864E80042074433EBB80EDC3889A53592FB74B0265BF2379F33B2F69A2D7FD7224F1850002B31218B7A7FE5FFBA7A7353969FFD1B9B434A7B2CE';
wwv_flow_imp.g_varchar2_table(171) := 'F54FD66555CF15D1A1C209900014CE32342D35266A73DE4AB4FB4CA74E7EF5C5D098102802E51038F6F503BAD4D1E3BAE9EA78A5125CFBEF6A14D6421280B08EFC2CE2B6ECF712AD558D395B38F2E42BEAFEF6919CF5A8800002D317B870E0A48E3C79D0';
wwv_flow_imp.g_varchar2_table(172) := '7545CBB22ECFD8B9D6F253217D2DA4000940213543D4564DBC4A7515EEF705184F25F5E2DF7D5F03073B422443A808145FC01C5E7BF1AFBFA34CCAF9C43FD38B5AFBEFD43CCCCF3C10B8568004E05A117ECF5B605EF51C55E43821706862542FFDF5A31A';
wwv_flow_imp.g_varchar2_table(173) := '3BD79F77BB544400016701F371BF6F7EED390DF60D3A57B24BCC0D7FCCDFA8FD6360FE2790C20A900014D63354AD991798EC098139A2BE70E1820EFEC747B934308713C508E423F0F6D75FD49BDF7FC5B5AAB964777E6D8BCCDFA86B450A432D400210EA';
wwv_flow_imp.g_varchar2_table(174) := 'E19F7DF00D895A99930273B574FAED933AF6DF9F5366229DAB2AE508203085C0A43DDB7FE25F0FEAE0D79FCE79D67F4B55A3AA737C82E7149BF0F822BA5768011280428B86ACBDEC0981D54D79BDD338F4E80BEAF8FE6199CB0443C644B808CC4E6052EA';
wwv_flow_imp.g_varchar2_table(175) := '78FC880EFCFF8FCADC72DBADB1EA7822AFA4DCAD0DCAC2214002108E712E6A94512BA2F69A66C992EB97B94BE073FFED519DFADACB9ACCD8AF68AEB52944008177054E7DE7353DFB9FBFF5EEAFCEDFEDBFC1B6EA6645ECBF49E74AFE2CA1D78517200128';
wwv_flow_imp.g_varchar2_table(176) := 'BC69285B345705E47369602695D6817F7C4C47FEE60925FBC7426945D008E42B60A6FDCF3D76582FFDCF1FE47CE76FDA6CAE6C5045346E7EE481404E0112809C4454C857C0BCF8D45454E5AC9E494FEAD0770FE8E0FFF75D8D77BA9FC99CB3312A201050';
wwv_flow_imp.g_varchar2_table(177) := '0173BECC896FBEA267FFFADB4A8D4CE48CB2A5AA41F924E1391BF264053A550C01128062A886B8CD767BFAD1CC06E44370E295B7F4D41F7C55836F75E7539D3A08844660AC7758CFFCE9D7F5E27FFD9ECCAC59AEC0CDC9B8E6C4BF5CF52847E04A011280';
wwv_flow_imp.g_varchar2_table(178) := '2B35F879D602E6B2A3B69A39799D14683676F162AFBEFF87FF53179E7A5B396E676EAAF34020D002E66FA0E795D37AF4B7FF4E1D874EE415ABB914377B0E4E5EB5FD59895E17478004A038AEA16E351E8969616DAB727D6AE0BB48E313E37AFCFFF9BA8E';
wwv_flow_imp.g_varchar2_table(179) := '7DF5799969CF7797F31D813009A4C7527AEB6BCFEBB13FFDAA467A07F20ABDB1B24E73AB9BF2AA4B2504AE152001B85684DF0B22603E7A745EF51C452C2BAFF6CC1502AF7CED493DFA6B7FABF38FBDA9C9345709E40547A540080C77F4E9F17FFB3FF4EA';
wwv_flow_imp.g_varchar2_table(180) := '579F54BE57C8985B71B7D97F638100700D82C262099000144B967665EE41BEB8BE4D89699C95DCD775494FFEA77FD1E3BFF3F7EA7CEA985243B94F7E821A013F0A98E9FEE1F37D3AF45F9FD0B77FEBBFA8E74467DE61D45754CBDCE92FEF15A888C01402';
wwv_flow_imp.g_varchar2_table(181) := '240053A0B0A8700295D10AB5D7B6C87C24E9745AED3EDEA127FFE33FEBB93FFF675D7CF1B432C9CC7456A72E029E15C8EEF8ED77FCAFFF97C7F5833FFE071DFEC60B4A8D25F3EE6F7DA2C6FE9B6A9565FF97F74A3EAE48D78B274002503C5B5A7E47C024';
wwv_flow_imp.g_varchar2_table(182) := '018BEAE6CABC70BDB328AF6FE63040C7E153FADE9FFD831EFB8DFFA68EEF1D566A703CAF75A984801705FADEEAD4D37FF28FFAC617FF4A87BF7540C3DDF91DEB37B14423117BC7DFACF9352DECFA0D088F590B9000CC9A9006F21130EF56DA6B9A35AF66';
wwv_flow_imp.g_varchar2_table(183) := '8E22F60B593EEB5C59E76247B79EFAAB7FD577BEF8377AE12B5FD7E97F3EA8C137BB3499E3E350AF6C839F1128B5C0C4A551F5BE7A5647BFF6821EB30F6B7DF7F7FE4E1D078F4FFB76D8B515555A583B570D15B5A50EA1CCDB63F3C514200128A62E6D5F';
wwv_flow_imp.g_varchar2_table(184) := '25609280A6449D96D4CD9BF621816C4393D2D0C0904EBE764CCFFDF747F5F85FFCA35EFCF7DFD0D97F7E5523277A951A18577A24A9CC785A66F620BB0EFF2050020173E29E79CE99E7DEF88521753EFBB67D6CFF713DF91FFE498FFFDFFFA457FEE1095D';
wwv_flow_imp.g_varchar2_table(185) := '387A2EEF13FCDEEBB22599EBFBCDCEBF2A96786F313F2050088148211AA10D04A6239088566891FD6E66416DAB66F3A236D23F2C7333A167FEFEBBFAE697FF56DFFDD5BFD5B35FF947BDFE578FE9F8D75F52E75347D5F766A746BB07652EB132C75E79D8';
wwv_flow_imp.g_varchar2_table(186) := '6F3EED440A87993B64EC59A7E4D0B846BA06D4F776B7BA5F3AA9D3DF7F5D47BEF6AC9EFCE3AFEA5FBEF0977AE2FFFA27FBD8FE015D7CAB43C9E1991DB64AC42AB4B4BE5DE60E7FD3F9FB0A525D6229AE000940717D69DD41C0B22CD555546BA19D04981B';
wwv_flow_imp.g_varchar2_table(187) := '99CCEAA0A6BD434B67321A1C1854C7DB6774E4C9837AE9ABF6BBAFFFF77FE9D13FF87B7DF3D7FFB3BEF1F9BFD4B73FFF577AF457FE46DFB313051E7F8BC3349F07DFB59F3BDFFEA5BFD637FECD7FD2377EE92FF5AD2FD986BFFFF77AE22FFE492FFCF577';
wwv_flow_imp.g_varchar2_table(188) := '74E86BCFA8EBC859A5536987677D9E8BED77FD8D95B55A6CCF9455DAC9729E6B510D81690B90004C9B8C150A29108D44B3373259D1B040CD550D79DF3C28671FECB7B8665A3663BF189B33ACC706863570A14F97CE5F54EFB91E1E184CFB39D0673F7706';
wwv_flow_imp.g_varchar2_table(189) := 'BA2F69B46F5813C3634A8D4E283D9ECCDEAA77D27EBEE57C4EE6A8108D44D45459A7E5F5F3D556DDACA815F697E71C6014CF5A8067D8AC0969A01002F1482CFB41268BEC4303261130B7142E44BBB48180D705CC1D339BABEAEDD9B0B93237CFAA98C67D';
wwv_flow_imp.g_varchar2_table(190) := '33C41702B310200198051EAB165EC0BCF8994F345BD1B8400BEB5A6776B260E1BB458B08145C20118BCBDC23C3CC7EB55635CDEA7C988277CE030DD285E20B900014DF982DCC40C092A5DA78B5CC89820BEBE6CA7CDA5934C2D3750694ACE21101CBB2B2';
wwv_flow_imp.g_varchar2_table(191) := '1F9265CE7D313BFE45B5F3D45051E391DED18D300AF08A1AC651F751CCE638A8B9A5707B4DB39637CC576B7563F645D44721D0D5100B987B5ED4C42BB3E7B92CAD6F9399D93249ADD9F17398CBED894159290422A5D808DB40A01002512BAAE6CA062DB3';
wwv_flow_imp.g_varchar2_table(192) := '138145F6AC4063655DF61041857DCC341AE1A95C0863DA989E8065598A4622D9A4D47CE645553CA1DA8AAAEC0E7F89BDC35F56DFAE05B57365AE7449442BEC792D4B7C21E0158188573A423F10C857206A455413AF525BF59CECA552E67229F3AE6A6E75';
wwv_flow_imp.g_varchar2_table(193) := '53F6D2C2CA58852AECA480471C87023E0FCC317BF3DCAAB177F0E690547355437647DF56DD2C93909A1DFE92BA36999BF6981DBEB9C7453C12CBFB1331F37DFE87A11E3196468004A034CE6CA58802662AB53A56997D97651281C5F68B70F6C5D87E07C6';
wwv_flow_imp.g_varchar2_table(194) := 'F73661502003FB79659E5B0B6B5AD5563347AD558D3277B6ACABA856C27E771FB113D3223ECD691A81820B9000149C9406CB2D1031D3B2F68B719447F65A721C220571303BF888FDDCB22C8BA9FCA2FE91D378A90448004A25CD76104000010410F09000';
wwv_flow_imp.g_varchar2_table(195) := '0980870683AE20800002611720FED209900094CE9A2D218000020820E019011200CF0C051D41000104C22E40FCA514200128A536DB420001041040C0230224001E1908BA81000208845D80F84B2B4002505A6FB686000208208080270448003C310C7402';
wwv_flow_imp.g_varchar2_table(196) := '01041008BB00F1975A8004A0D4E26C0F0104104000010F089000786010E802020820107601E22FBD000940E9CDD9220208208000026517200128FB10D00104104020EC02C45F0E01128072A8B34D041040000104CA2C400250E60160F308208040D80588';
wwv_flow_imp.g_varchar2_table(197) := 'BF3C022400E57167AB08208000020894558004A0ACFC6C1C01041008BB00F1974B8004A05CF26C17010410400081320A900094119F4D23800002611720FEF209900094CF9E2D2380000208205036011280B2D1B36104104020EC02C45F4E01128072EAB3';
wwv_flow_imp.g_varchar2_table(198) := '6D041040000104CA244002502678368B000208845D80F8CB2B4002505E7FB68E00020820804059044800CAC2CE4611400081B00B107FB9054800CA3D026C1F0104104000813208900094019D4D22800002611720FEF20B9000947F0CE801020820800002';
wwv_flow_imp.g_varchar2_table(199) := '251720012839391B44000104C22E40FC5E102001F0C228D0070410400001044A2C40025062703687000208845D80F8BD214002E08D71A01708208000020894548004A0A4DC6C0C01041008BB00F17B458004C02B23413F10400001041028A100094009B1';
wwv_flow_imp.g_varchar2_table(200) := 'D914020820107601E2F78E00098077C6829E20800002082050320112809251B32104104020EC02C4EF250112002F8D067D410001041040A0440224002582663308208040D80588DF5B022400DE1A0F7A83000208208040490448004AC2CC4610400081B0';
wwv_flow_imp.g_varchar2_table(201) := '0B10BFD7044800BC3622F407010410400081120890009400994D208000026117207EEF099000786F4CE81102082080000245172001283A311B40000104C22E40FC5E142001F0E2A8D0270410400001048A2C40025064609A47000104C22E40FCDE142001';
wwv_flow_imp.g_varchar2_table(202) := 'F0E6B8D02B0410400001048A2A400250545E1A47000104C22E40FC5E152001F0EAC8D02F0410400001048A28400250445C9A46000104C22E40FCDE152001F0EED8D0330410400001048A26400250345A1A46000104C22E40FC5E162001F0F2E8D0370410';
wwv_flow_imp.g_varchar2_table(203) := '400001048A2440025024589A45000104C22E40FCDE162001F0F6F8D03B0410400001048A2240025014561A45000104C22E40FC5E172001F0FA08D13F0410400001048A2040025004549A44000104C22E40FCDE172001F0FE18D1430410400001040A2E40';
wwv_flow_imp.g_varchar2_table(204) := '025070521A44000104C22E40FC7E102001F0C328D1470410400001040A2C40025060509A43000104C22E40FCFE102001F0C738D14B0410400001040A2A400250504E1A43000104C22E40FC7E112001F0CB48D14F0410400001040A28400250404C9A4200';
wwv_flow_imp.g_varchar2_table(205) := '0104C22E40FCFE112001F0CF58D1530410400001040A26400250304A1A42000104C22E40FC7E122001F0D368D1570410400001040A2440025020489A41000104C22E40FCFE122001F0D778D15B0410400001040A2240025010461A41000104C22E40FC7E';
wwv_flow_imp.g_varchar2_table(206) := '132001F0DB88D15F0410400001040A2040025000449A40000104C22E40FCFE132001F0DF98D163041040000104662D4002306B421A40000104C22E40FC7E142001F0E3A8D1A379B5650000045F494441546704104000010466294002304B405647000104';
wwv_flow_imp.g_varchar2_table(207) := 'C22E40FCFE142001F0E7B8D16B04104000010466254002302B3E5646000104C22E40FC7E152001F0EBC8D16F04104000010466214002300B3C5645000104C22E40FCFE152001F0EFD8D173041040000104662C400230633A5644000104C22E40FC7E1620';
wwv_flow_imp.g_varchar2_table(208) := '01F0F3E8D177041040000104662840023043385643000104C22E40FCFE162001F0F7F8D17B041040000104662440023023365642000104C22E40FC7E172001F0FB08D27F041040000104662040023003345641000104C22E40FCFE172001F0FF18120102';
wwv_flow_imp.g_varchar2_table(209) := '0820800002D31620019836192B20800002611720FE200890000461148901010410400081690A90004C138CEA08208040D805883F18022400C11847A2400001041040605A022400D3E2A232020820107601E20F8A00094050469238104000010410988600';
wwv_flow_imp.g_varchar2_table(210) := '09C034B0A88A000208845D80F883234002109CB12412041040000104F2162001C89B8A8A08208040D805883F48022400411A4D62410001041040204F0112803CA1A886000208845D80F88325400210ACF1241A041040000104F2122001C88B894A082080';
wwv_flow_imp.g_varchar2_table(211) := '40D805883F68022400411B51E2410001041040200F0112803C90A882000208845D80F88327400210BC312522041040000104720A9000E424A202020820107601E20FA200094010479598104000010410C82140029003886204104020EC02C41F4C011280';
wwv_flow_imp.g_varchar2_table(212) := '608E2B51218000020820E02A4002E0CA4321020820107601E20FAA000940504796B81040000104107011200170C1A10801041008BB00F10757800420B8634B64082080000208380A900038D25080000208845D80F8832C400210E4D12536041040000104';
wwv_flow_imp.g_varchar2_table(213) := '1C0448001C60588C000208845D80F8832D400210ECF1253A041040000104A61420019892858508208040D805883FE8022400411F61E2430001041040600A01128029505884000208845D80F8832F400210FC312642041040000104AE132001B88E840508';
wwv_flow_imp.g_varchar2_table(214) := '208040D805883F0C02240061186562440001041040E01A0112806B40F81501041008BB00F187438004201CE34C940820800002085C254002701507BF20800002611720FEB00890008465A489130104104000812B044800AEC0E04704104020EC02C41F1E';
wwv_flow_imp.g_varchar2_table(215) := '011280F08C3591228000020820F09E0009C07B14FC80000208845D80F8C324400210A6D12656041040000104DE1120017807826F08208040D805883F5C022400E11A6FA2450001041040202B40029065E01F04104020EC02C41F36011280B08D38F12280';
wwv_flow_imp.g_varchar2_table(216) := '00020820600B9000D808FC8F000208845D80F8C327400210BE3127620410400001044402C0930001041008BD00006114200108E3A813330208208040E805480042FF1400000104C22E40FCE114200108E7B813350208208040C805480042FE04207C0410';
wwv_flow_imp.g_varchar2_table(217) := '08BB00F18755800420AC234FDC0820800002A116200108F5F0133C0208845D80F8C32B400210DEB127720410400081100B90008478F0091D0104C22E40FC6116200108F3E8133B020820804068054800423BF4048E0002611720FE700BFC6F000000FFFF';
wwv_flow_imp.g_varchar2_table(218) := '4DE83FF70000000649444154030005238CA58A3DE3C50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(19508125339852788150)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(19508126685328788150)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
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
 p_id=>wwv_flow_imp.id(19508266748651142089)
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19508135495405788209)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(19508135495405788209)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(19508136212135788216)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(19508135820660788214)
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
 p_id=>wwv_flow_imp.id(19508168995972997710)
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19508169646947997720)
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19508265230765142087)
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19508243952692819580)
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
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19508264621092142085)
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19508445461918141015)
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(19508126951464788155)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(19508121730535788045)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260721114236Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508443602697140980)
,p_short_name=>'Admission Management'
,p_static_id=>'admission-management'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508677189145561743)
,p_short_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260715104153Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104153Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508263448042142073)
,p_short_name=>'Appointment Booking'
,p_static_id=>'appointment-booking'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508650128756099959)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260715064759Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064759Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508356057096527248)
,p_short_name=>'Appointments'
,p_static_id=>'appointments'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260713122018Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508329598516687157)
,p_short_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260713075043Z')
,p_updated_on=>wwv_flow_imp.dz('20260713075043Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508183019649997892)
,p_short_name=>'Doctor Management'
,p_static_id=>'doctor-management'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508184290456997896)
,p_parent_id=>wwv_flow_imp.id(19508183019649997892)
,p_short_name=>'Doctor Management'
,p_static_id=>'doctor-management-2'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508122020023788050)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508258371906819846)
,p_short_name=>'Medicine Management'
,p_static_id=>'medicine-management'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508671398422522225)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260715103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508158366484824726)
,p_short_name=>'Patient Management'
,p_static_id=>'patient-management'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508159684419824732)
,p_parent_id=>wwv_flow_imp.id(19508158366484824726)
,p_short_name=>'Patient Management'
,p_static_id=>'patient-management-2'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508277157813365124)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260713065121Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065121Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19508661345862282271)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260715071802Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071802Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19829987791916257832)
,p_short_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260721104137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104137Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
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
 p_id=>wwv_flow_imp.id(19508122653619788062)
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
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
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
 p_id=>wwv_flow_imp.id(19508121100897788028)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
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
 p_id=>wwv_flow_imp.id(19508121356294788037)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260712120852Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120852Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712120853Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721124704Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508363415854532445)
,p_plug_name=>'Active Doctors'
,p_static_id=>'active-doctors_1'
,p_icon_css_classes=>'fa-nurse'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--showIcon:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) FROM DOCTORS WHERE STATUS = ''Active'''
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&"COUNT(*)".')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714114752Z')
,p_updated_on=>wwv_flow_imp.dz('20260721124704Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19839737840251495114)
,p_name=>'COUNT(*)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT(*)'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260721123408Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508637164100872025)
,p_plug_name=>'Admissions by Room Type'
,p_static_id=>'admissions-by-room-type'
,p_title=>'Admissions by Room Type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19508637268705872026)
,p_region_id=>wwv_flow_imp.id(19508637164100872025)
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
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19508637376317872027)
,p_chart_id=>wwv_flow_imp.id(19508637268705872026)
,p_static_id=>'room-type'
,p_seq=>10
,p_name=>'Room Type'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.ROOM_TYPE AS LABEL, ',
'       COUNT(*) AS VALUE',
'FROM ADMISSIONS A',
'JOIN ROOMS R ON A.ROOM_ID = R.ROOM_ID',
'GROUP BY R.ROOM_TYPE'))
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19508637490190872028)
,p_chart_id=>wwv_flow_imp.id(19508637268705872026)
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
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19508637571466872029)
,p_chart_id=>wwv_flow_imp.id(19508637268705872026)
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
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508364681872532458)
,p_plug_name=>'Appointments by Department'
,p_static_id=>'appointments-by-department'
,p_title=>'Appointments by Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715055902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19508364743904532459)
,p_region_id=>wwv_flow_imp.id(19508364681872532458)
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
,p_created_on=>wwv_flow_imp.dz('20260715055902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19508364875728532460)
,p_chart_id=>wwv_flow_imp.id(19508364743904532459)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'appointments'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEP.DEPARTMENT_NAME AS LABEL, COUNT(*) AS VALUE',
'FROM APPOINTMENTS A',
'JOIN DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN DEPARTMENTS DEP ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'GROUP BY DEP.DEPARTMENT_NAME'))
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260715055902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19508365165373532463)
,p_chart_id=>wwv_flow_imp.id(19508364743904532459)
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
,p_created_on=>wwv_flow_imp.dz('20260715060659Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19508365283711532464)
,p_chart_id=>wwv_flow_imp.id(19508364743904532459)
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
,p_created_on=>wwv_flow_imp.dz('20260715060659Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060659Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508363590798532447)
,p_plug_name=>'Current Admissions'
,p_static_id=>'current-admissions'
,p_title=>'Current Admissions'
,p_icon_css_classes=>'fa-badge-check'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--showIcon:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) FROM ADMISSIONS WHERE STATUS = ''Admitted'''
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&"COUNT(*)".')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714114752Z')
,p_updated_on=>wwv_flow_imp.dz('20260721124436Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19839738007096495116)
,p_name=>'COUNT(*)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT(*)'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260721123408Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508134851519788193)
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
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508363628293532448)
,p_plug_name=>'Low Stock Medicines'
,p_static_id=>'low-stock-medicines'
,p_icon_css_classes=>'fa-medication-pill'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--showIcon:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) FROM MEDICINES WHERE CURRENT_STOCK < REORDER_LEVEL AND STATUS = ''Active'''
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&"COUNT(*)".')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714114752Z')
,p_updated_on=>wwv_flow_imp.dz('20260721124704Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19839738150057495117)
,p_name=>'COUNT(*)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT(*)'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260721123408Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508636696330872020)
,p_plug_name=>'Medicine Stock Status'
,p_static_id=>'medicine-stock-status'
,p_title=>'Medicine Stock Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19508636766767872021)
,p_region_id=>wwv_flow_imp.id(19508636696330872020)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19508636921340872022)
,p_chart_id=>wwv_flow_imp.id(19508636766767872021)
,p_static_id=>'stock-status_1'
,p_seq=>10
,p_name=>'Stock Status'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE WHEN CURRENT_STOCK < REORDER_LEVEL ',
'         THEN ''Low Stock'' ',
'         ELSE ''Normal'' ',
'    END AS LABEL,',
'    COUNT(*) AS VALUE',
'FROM MEDICINES',
'WHERE STATUS = ''Active''',
'GROUP BY CASE WHEN CURRENT_STOCK < REORDER_LEVEL ',
'              THEN ''Low Stock'' ',
'              ELSE ''Normal'' END'))
,p_series_type=>'pie'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260715061159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508365350973532465)
,p_plug_name=>'Patients by Gender'
,p_static_id=>'patients-by-gender'
,p_title=>'Patients by Gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715060822Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19508365494276532466)
,p_region_id=>wwv_flow_imp.id(19508365350973532465)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260715060822Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19508365577384532467)
,p_chart_id=>wwv_flow_imp.id(19508365494276532466)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Gender '
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GENDER AS LABEL, ',
'       COUNT(*) AS VALUE',
'FROM PATIENTS',
'GROUP BY GENDER'))
,p_series_type=>'pie'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260715060823Z')
,p_updated_on=>wwv_flow_imp.dz('20260715061159Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508363198209532443)
,p_plug_name=>'Today''s Appointments'
,p_static_id=>'today-s-appointments'
,p_icon_css_classes=>'fa-calendar-alarm'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--showIcon:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) FROM APPOINTMENTS WHERE TRUNC(APPOINTMENT_DATE) = TRUNC(SYSDATE)'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&"COUNT(*)".')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714114752Z')
,p_updated_on=>wwv_flow_imp.dz('20260721124704Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19839737989022495115)
,p_name=>'COUNT(*)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT(*)'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260721123408Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508362979888532441)
,p_plug_name=>'Total Patients'
,p_static_id=>'total-patients'
,p_icon_css_classes=>'fa-person-standing'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--showIcon:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT COUNT(*) AS TOTAL_PATIENTS FROM PATIENTS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'METRIC', '&TOTAL_PATIENTS.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714114752Z')
,p_updated_on=>wwv_flow_imp.dz('20260721122343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19839736756022495103)
,p_name=>'TOTAL_PATIENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PATIENTS'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260721121211Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Patient Management'
,p_alias=>'PATIENT-MANAGEMENT1'
,p_step_title=>'Patient Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712122740Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508158445147824727)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508151617194824683)
,p_plug_name=>'Patient Management'
,p_static_id=>'patient-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PATIENT_ID,',
'    CIVIL_ID,',
'    FULL_NAME,',
'    GENDER,',
'    DATE_OF_BIRTH,',
'    TRUNC(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH) / 12) AS AGE,',
'    MOBILE_NO,',
'    EMAIL,',
'    BLOOD_GROUP,',
'    ADDRESS,',
'    CREATED_AT',
'FROM PATIENTS'))
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
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508151626956824683)
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
,p_internal_uid=>7842401066088165
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508156122181824717)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508101480663164222)
,p_db_column_name=>'AGE'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712122740Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508155706849824716)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508153317070824705)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508157284311824722)
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
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508154454278824711)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508155254900824714)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508153685315824707)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508154107678824709)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508154837134824712)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508152887020824697)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508160083270826648)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260712121517Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122740Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508157633461824724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508151617194824683)
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
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Patient Management'
,p_alias=>'PATIENT-MANAGEMENT'
,p_step_title=>'Patient Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720102128Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508159030113824731)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712121458Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121458Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508139143580824527)
,p_plug_name=>'Patient Management'
,p_static_id=>'patient-management'
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508147973522824539)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508149298644824541)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P3_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508148426551824540)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508148831161824541)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P3_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19508149632088824541)
,p_branch_action=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508142773372824536)
,p_name=>'P3_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508142359046824536)
,p_name=>'P3_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260720102128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508140004839824534)
,p_name=>'P3_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508143925907824537)
,p_name=>'P3_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508141202331824535)
,p_name=>'P3_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508141966903824536)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508143190766824536)
,p_name=>'P3_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_prompt=>'Emergency Contact Name'
,p_source=>'EMERGENCY_CONTACT_NAME'
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508143528601824536)
,p_name=>'P3_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508140335541824535)
,p_name=>'P3_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508140765602824535)
,p_name=>'P3_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260720102128Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508141565009824535)
,p_name=>'P3_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
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
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508139608679824528)
,p_name=>'P3_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_item_source_plug_id=>wwv_flow_imp.id(19508139143580824527)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19508101537596164223)
,p_validation_name=>'New'
,p_static_id=>'new'
,p_validation_sequence=>10
,p_validation=>'SELECT 1 FROM PATIENTS WHERE CIVIL_ID = :P3_CIVIL_ID AND PATIENT_ID != NVL(:P3_PATIENT_ID, -1)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Civil ID already exists.'
,p_associated_item=>wwv_flow_imp.id(19508140004839824534)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260712123654Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123654Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19508101633319164224)
,p_validation_name=>'New'
,p_static_id=>'new_1'
,p_validation_sequence=>20
,p_validation=>'P3_MOBILE_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Mobile number is required.'
,p_associated_item=>wwv_flow_imp.id(19508141565009824535)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260712123654Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123654Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508150102689824544)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19508139143580824527)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Management'
,p_static_id=>'initialize-form-patient-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7840876799088026
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508150498936824545)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19508139143580824527)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Management'
,p_static_id=>'process-form-patient-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7841273046088027
,p_created_on=>wwv_flow_imp.dz('20260712121456Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121456Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Doctor Management'
,p_alias=>'DOCTOR-MANAGEMENT1'
,p_step_title=>'Doctor Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713114752Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508183058211997893)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508177844036997859)
,p_plug_name=>'Doctor Management'
,p_static_id=>'doctor-management'
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
,p_created_on=>wwv_flow_imp.dz('20260712124342Z')
,p_updated_on=>wwv_flow_imp.dz('20260713114752Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508177983744997859)
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
,p_internal_uid=>7868757854261341
,p_created_on=>wwv_flow_imp.dz('20260712124342Z')
,p_updated_on=>wwv_flow_imp.dz('20260713114752Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508181449124997888)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508179961570997880)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(19508168995972997710)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124342Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124342Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508179166773997875)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124342Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124342Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508181095377997886)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508179548094997879)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124342Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124342Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508180661436997884)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508180379379997882)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Specialty'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(19508169646947997720)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508181853929997889)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508353680061331483)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:DEPARTMENT_ID:SPECIALTY_ID:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713114752Z')
,p_updated_on=>wwv_flow_imp.dz('20260713114752Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508182315243997891)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508177844036997859)
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
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Doctor Management'
,p_alias=>'DOCTOR-MANAGEMENT'
,p_step_title=>'Doctor Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720104534Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508183696353997895)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712124343Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124343Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508167653015997698)
,p_plug_name=>'Doctor Management'
,p_static_id=>'doctor-management'
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508174310404997724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508175584024997725)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508174824931997725)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19508167653015997698)
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508175214146997725)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P5_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19508175948378997725)
,p_branch_action=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508171109122997721)
,p_name=>'P5_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508168857121997709)
,p_name=>'P5_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DEPARTMENT_NAME AS DISPLAY, DEPARTMENT_ID AS RETURN FROM DEPARTMENTS WHERE STATUS = ''Active'' ORDER BY DEPARTMENT_NAME;'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260720104534Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508168106262997706)
,p_name=>'P5_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508170658171997721)
,p_name=>'P5_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508168501867997708)
,p_name=>'P5_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508170227431997721)
,p_name=>'P5_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
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
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508169598267997720)
,p_name=>'P5_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_prompt=>'Specialty'
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT SPECIALTY_NAME AS DISPLAY, SPECIALTY_ID AS RETURN FROM DOCTOR_SPECIALTIES WHERE STATUS = ''Active'' ORDER BY SPECIALTY_NAME;'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260720104534Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508171446134997722)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_item_source_plug_id=>wwv_flow_imp.id(19508167653015997698)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Status --'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712125746Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508176344119997726)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19508167653015997698)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor Management'
,p_static_id=>'initialize-form-doctor-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7867118229261208
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508176783616997727)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19508167653015997698)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor Management'
,p_static_id=>'process-form-doctor-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7867557726261209
,p_created_on=>wwv_flow_imp.dz('20260712124341Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124341Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Medicine Management'
,p_alias=>'MEDICINE-MANAGEMENT1'
,p_step_title=>'Medicine Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715120913Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508258489507819846)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508252657698819799)
,p_plug_name=>'Medicine Management'
,p_static_id=>'medicine-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    M.MEDICINE_ID,',
'    M.MEDICINE_NAME,',
'    C.CATEGORY_NAME,',
'    M.UNIT,',
'    M.CURRENT_STOCK,',
'    M.REORDER_LEVEL,',
'    M.STATUS,',
'    CASE ',
'        WHEN M.CURRENT_STOCK < M.REORDER_LEVEL ',
'        THEN ''Low Stock'' ELSE ''Normal'' ',
'    END AS STOCK_STATUS,',
'    CASE ',
'        WHEN M.CURRENT_STOCK < M.REORDER_LEVEL ',
'        THEN ''red'' ELSE ''green'' ',
'    END AS STOCK_COLOR',
'FROM MEDICINES M',
'JOIN MEDICINE_CATEGORIES C ON M.CATEGORY_ID = C.CATEGORY_ID'))
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
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508252824542819799)
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
,p_internal_uid=>7943598652083281
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508638700158872040)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115958Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115958Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508255615244819832)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_html_expression=>'<span style="color:#STOCK_COLOR#; font-weight:bold;">#CURRENT_STOCK#</span>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508254017078819816)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508254345809819826)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508255998925819833)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508256341585819835)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508638960232872043)
,p_db_column_name=>'STOCK_COLOR'
,p_display_order=>47
,p_column_identifier=>'L'
,p_column_label=>'Stock Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715120345Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120433Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508639043609872044)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>57
,p_column_identifier=>'M'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715120913Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120913Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508255204960819830)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508259371381869914)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713050018Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120345Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508256790779819837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508252657698819799)
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
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19508257158234819837)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19508252657698819799)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19508257559644819842)
,p_event_id=>wwv_flow_imp.id(19508257158234819837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19508252657698819799)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713045158Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045158Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Medicine Management'
,p_alias=>'MEDICINE-MANAGEMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720110147Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508248194611819601)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508242630642819556)
,p_plug_name=>'Medicine Management'
,p_static_id=>'medicine-management'
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
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508248612240819601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508248194611819601)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(19508249071282819604)
,p_button_id=>wwv_flow_imp.id(19508248612240819601)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508250415793819608)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19508248194611819601)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508249538715819607)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19508248194611819601)
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
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508249961818819608)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19508248194611819601)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508243891242819579)
,p_name=>'P7_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_prompt=>'Category'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MEDICINE_CATEGORIES.CATEGORY_NAME'
,p_lov_display_null=>'YES'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110147Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508245012405819597)
,p_name=>'P7_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_prompt=>'Current Stock'
,p_source=>'CURRENT_STOCK'
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
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508243075787819570)
,p_name=>'P7_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508243430810819578)
,p_name=>'P7_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_prompt=>'Medicine Name'
,p_source=>'MEDICINE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508245376116819598)
,p_name=>'P7_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_prompt=>'Reorder Level'
,p_source=>'REORDER_LEVEL'
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
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508245727887819598)
,p_name=>'P7_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
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
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508244530989819597)
,p_name=>'P7_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19508242630642819556)
,p_item_source_plug_id=>wwv_flow_imp.id(19508242630642819556)
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
,p_created_on=>wwv_flow_imp.dz('20260713045155Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045155Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508251624240819612)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7942398350083094
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508250824477819609)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19508242630642819556)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Management'
,p_static_id=>'initialize-form-medicine-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7941598587083091
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508251186325819612)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19508242630642819556)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Management'
,p_static_id=>'process-form-medicine-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7941960435083094
,p_created_on=>wwv_flow_imp.dz('20260713045156Z')
,p_updated_on=>wwv_flow_imp.dz('20260713045156Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Appointment Booking'
,p_alias=>'APPOINTMENT-BOOKING'
,p_step_title=>'Appointment Booking'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721082522Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508263699693142084)
,p_plug_name=>'Appointment Booking'
,p_static_id=>'appointment-booking'
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508262894559142072)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508270545904142092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508271866866142094)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P8_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508271066945142093)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19508263699693142084)
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
,p_button_condition=>'P8_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508271510757142094)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P8_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19508272247831142094)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508265924832142088)
,p_name=>'P8_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124323Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508264053305142084)
,p_name=>'P8_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508266299327142089)
,p_name=>'P8_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Appointment Time'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:08:00 AM;8:00,08:30 AM;8:30'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124323Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508267807299142090)
,p_name=>'P8_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124323Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508102675300164234)
,p_name=>'P8_DEPT_DISPLAY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713061230Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082409Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508265179936142087)
,p_name=>'P8_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Doctor'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT FULL_NAME AS DISPLAY, DOCTOR_ID AS RETURN FROM DOCTORS WHERE STATUS = ''Active'' ORDER BY FULL_NAME'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110233Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508264473659142085)
,p_name=>'P8_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Patient'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT FULL_NAME || '' - '' || CIVIL_ID AS DISPLAY, PATIENT_ID AS RETURN FROM PATIENTS ORDER BY FULL_NAME'
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110233Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508267332033142090)
,p_name=>'P8_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Reason For Visit'
,p_source=>'REASON_FOR_VISIT'
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
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124323Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508102818677164235)
,p_name=>'P8_SPEC_DISPLAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Specialty'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713061230Z')
,p_updated_on=>wwv_flow_imp.dz('20260721082522Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508266661800142089)
,p_name=>'P8_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_item_source_plug_id=>wwv_flow_imp.id(19508263699693142084)
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT STATUS_NAME AS DISPLAY, STATUS_ID AS RETURN FROM APPOINTMENT_STATUSES'
,p_lov_display_null=>'YES'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110233Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19508101966502164227)
,p_validation_name=>'New'
,p_static_id=>'new'
,p_validation_sequence=>10
,p_validation=>'TO_DATE(:P8_APPOINTMENT_DATE, ''MM/DD/YYYY'') >= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Appointment date cannot be in the past.'
,p_associated_item=>wwv_flow_imp.id(19508265924832142088)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260713055438Z')
,p_updated_on=>wwv_flow_imp.dz('20260714070811Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19508102433837164232)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260713061230Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124946Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19508102541502164233)
,p_event_id=>wwv_flow_imp.id(19508102433837164232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P8_DEPT_DISPLAY,P8_SPEC_DISPLAY',
  'items_to_submit', 'P8_DOCTOR_ID',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'BEGIN',
    '    SELECT DEP.DEPARTMENT_NAME, SP.SPECIALTY_NAME',
    '    INTO :P8_DEPT_DISPLAY, :P8_SPEC_DISPLAY',
    '    FROM DOCTORS D',
    '    JOIN DEPARTMENTS DEP ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
    '    JOIN DOCTOR_SPECIALTIES SP ON D.SPECIALTY_ID = SP.SPECIALTY_ID',
    '    WHERE D.DOCTOR_ID = :P8_DOCTOR_ID;',
    'EXCEPTION',
    '    WHEN NO_DATA_FOUND THEN',
    '        :P8_DEPT_DISPLAY := NULL;',
    '        :P8_SPEC_DISPLAY := NULL;',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713061230Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124946Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508272699375142096)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19508263699693142084)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment Booking'
,p_static_id=>'initialize-form-appointment-booking'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7963473484405578
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508273056552142097)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19508263699693142084)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Booking'
,p_static_id=>'process-form-appointment-booking'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7963830661405579
,p_created_on=>wwv_flow_imp.dz('20260713054535Z')
,p_updated_on=>wwv_flow_imp.dz('20260713054535Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260713065121Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713072551Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508105338177164261)
,p_name=>'Admission History'
,p_static_id=>'admission-history'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.ADMISSION_DATE,',
'    A.DISCHARGE_DATE,',
'    A.ADMISSION_REASON,',
'    A.STATUS,',
'    R.ROOM_NO,',
'    R.ROOM_TYPE,',
'    D.FULL_NAME AS DOCTOR_NAME',
'FROM ADMISSIONS A',
'JOIN ROOMS R ON A.ROOM_ID = R.ROOM_ID',
'JOIN DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID',
'WHERE A.PATIENT_ID = :P9_PATIENT_ID',
'ORDER BY A.ADMISSION_DATE DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105511736164262)
,p_query_column_id=>1
,p_column_alias=>'ADMISSION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Admission Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105684322164264)
,p_query_column_id=>3
,p_column_alias=>'ADMISSION_REASON'
,p_column_display_sequence=>30
,p_column_heading=>'Admission Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105540423164263)
,p_query_column_id=>2
,p_column_alias=>'DISCHARGE_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Discharge Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508106050711164268)
,p_query_column_id=>7
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105872432164266)
,p_query_column_id=>5
,p_column_alias=>'ROOM_NO'
,p_column_display_sequence=>50
,p_column_heading=>'Room No'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105990430164267)
,p_query_column_id=>6
,p_column_alias=>'ROOM_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Room Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105735959164265)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>40
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072226Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508103987933164247)
,p_name=>'Appointment History'
,p_static_id=>'appointment-history'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.APPOINTMENT_ID, A.APPOINTMENT_DATE, A.APPOINTMENT_TIME,',
'       D.FULL_NAME AS DOCTOR, S.STATUS_NAME AS STATUS, A.REASON_FOR_VISIT',
'FROM APPOINTMENTS A',
'JOIN DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN APPOINTMENT_STATUSES S ON A.STATUS_ID = S.STATUS_ID',
'WHERE A.PATIENT_ID = :P9_PATIENT_ID',
'ORDER BY A.APPOINTMENT_DATE DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104154897164249)
,p_query_column_id=>2
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104124364164248)
,p_query_column_id=>1
,p_column_alias=>'APPOINTMENT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Appointment Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104228741164250)
,p_query_column_id=>3
,p_column_alias=>'APPOINTMENT_TIME'
,p_column_display_sequence=>30
,p_column_heading=>'Appointment Time'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104391161164251)
,p_query_column_id=>4
,p_column_alias=>'DOCTOR'
,p_column_display_sequence=>40
,p_column_heading=>'Doctor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104623391164253)
,p_query_column_id=>6
,p_column_alias=>'REASON_FOR_VISIT'
,p_column_display_sequence=>60
,p_column_heading=>'Reason For Visit'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104474938164252)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713071641Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508276604237365123)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713065121Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065121Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508102986445164237)
,p_name=>'Patient Information'
,p_static_id=>'patient-information'
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, CIVIL_ID, GENDER,',
'       TRUNC(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS AGE,',
'       MOBILE_NO, BLOOD_GROUP, ADDRESS',
'FROM PATIENTS ',
'WHERE PATIENT_ID = :P9_PATIENT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103704542164244)
,p_query_column_id=>7
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>70
,p_column_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103370837164241)
,p_query_column_id=>4
,p_column_alias=>'AGE'
,p_column_display_sequence=>40
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103600267164243)
,p_query_column_id=>6
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>60
,p_column_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103151942164239)
,p_query_column_id=>2
,p_column_alias=>'CIVIL_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103089906164238)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103253571164240)
,p_query_column_id=>3
,p_column_alias=>'GENDER'
,p_column_display_sequence=>30
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508103428486164242)
,p_query_column_id=>5
,p_column_alias=>'MOBILE_NO'
,p_column_display_sequence=>50
,p_column_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508104649138164254)
,p_name=>'Visit History'
,p_static_id=>'visit-history'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    V.VISIT_DATE,',
'    V.SYMPTOMS,',
'    V.DIAGNOSIS,',
'    V.NOTES,',
'    V.FOLLOW_UP_DATE,',
'    D.FULL_NAME AS DOCTOR_NAME',
'FROM PATIENT_VISITS V',
'JOIN DOCTORS D ON V.DOCTOR_ID = D.DOCTOR_ID',
'WHERE V.PATIENT_ID = :P9_PATIENT_ID',
'ORDER BY V.VISIT_DATE DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072107Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104961892164257)
,p_query_column_id=>3
,p_column_alias=>'DIAGNOSIS'
,p_column_display_sequence=>30
,p_column_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105281683164260)
,p_query_column_id=>6
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105169983164259)
,p_query_column_id=>5
,p_column_alias=>'FOLLOW_UP_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508105108066164258)
,p_query_column_id=>4
,p_column_alias=>'NOTES'
,p_column_display_sequence=>40
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104888224164256)
,p_query_column_id=>2
,p_column_alias=>'SYMPTOMS'
,p_column_display_sequence=>20
,p_column_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508104820666164255)
,p_query_column_id=>1
,p_column_alias=>'VISIT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Visit Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713072057Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508102846665164236)
,p_name=>'P9_PATIENT_ID'
,p_item_sequence=>10
,p_prompt=>'Patient Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME || '' ('' || CIVIL_ID || '')'' AS D, ',
'       PATIENT_ID AS R ',
'FROM PATIENTS ',
'ORDER BY FULL_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Patient --'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713065905Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070109Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19508103822940164245)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_PATIENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260713070830Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19508103858863164246)
,p_event_id=>wwv_flow_imp.id(19508103822940164245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19508102986445164237)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070830Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19508288576545565419)
,p_event_id=>wwv_flow_imp.id(19508103822940164245)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_1'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19508105338177164261)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713072551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19508288709043565420)
,p_event_id=>wwv_flow_imp.id(19508103822940164245)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19508103987933164247)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713072551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19508288789102565421)
,p_event_id=>wwv_flow_imp.id(19508103822940164245)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19508104649138164254)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713072551Z')
,p_updated_on=>wwv_flow_imp.dz('20260713072551Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Visit and Prescription'
,p_alias=>'VISIT-AND-PRESCRIPTION'
,p_step_title=>'Visit and Prescription'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260721104137Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721112455Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19829987118039257831)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260721104137Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104137Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19824197761906483020)
,p_plug_name=>'Patient Visits'
,p_static_id=>'patient-visits'
,p_title=>'Patient Visits'
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
'    PV.VISIT_DATE,',
'    PV.DIAGNOSIS,',
'    PV.SYMPTOMS',
'FROM PATIENT_VISITS PV',
'JOIN PATIENTS P ON PV.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D ON PV.DOCTOR_ID = D.DOCTOR_ID',
'ORDER BY PV.VISIT_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Patient Visits'
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
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721111131Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19824197897863483021)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>19824197897863483021
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721111131Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19824198394252483026)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104513Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19824198134401483024)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104513Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19824198024677483023)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104513Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19824198488753483027)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104513Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19824198298036483025)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104513Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19824197956091483022)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_VISIT_ID:#VISIT_ID#'
,p_column_linktext=>'#VISIT_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260721104513Z')
,p_updated_on=>wwv_flow_imp.dz('20260721104647Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19837178018418783967)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:PATIENT_NAME:DOCTOR_NAME:VISIT_DATE:DIAGNOSIS:SYMPTOMS'
,p_created_on=>wwv_flow_imp.dz('20260721111131Z')
,p_updated_on=>wwv_flow_imp.dz('20260721111131Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19824198575446483028)
,p_plug_name=>'Prescription'
,p_static_id=>'prescription'
,p_title=>'Prescription'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PRESCRIPTION_ID,',
'    VISIT_ID,',
'    PATIENT_ID,',
'    DOCTOR_ID,',
'    PRESCRIPTION_DATE,',
'    NOTES',
'FROM PRESCRIPTIONS',
'WHERE VISIT_ID = :P10_VISIT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P10_VISIT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260721104857Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105216Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199083360483033)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Doctor Id'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721105216Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199257335483035)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
,p_updated_on=>wwv_flow_imp.dz('20260721104858Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824198929863483032)
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
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721105216Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199187872483034)
,p_name=>'PRESCRIPTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Prescription Date'
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
,p_updated_on=>wwv_flow_imp.dz('20260721104858Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824198705638483030)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721105216Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824198842118483031)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Visit Id'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P10_VISIT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721105216Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19824198615545483029)
,p_internal_uid=>19824198615545483029
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
,p_updated_on=>wwv_flow_imp.dz('20260721104858Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19832545118975301886)
,p_interactive_grid_id=>wwv_flow_imp.id(19824198615545483029)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721104858Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19832545226432301886)
,p_report_id=>wwv_flow_imp.id(19832545118975301886)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19832545641487301888)
,p_view_id=>wwv_flow_imp.id(19832545226432301886)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19824198705638483030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19832546551729301890)
,p_view_id=>wwv_flow_imp.id(19832545226432301886)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19824198842118483031)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19832547428671301892)
,p_view_id=>wwv_flow_imp.id(19832545226432301886)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19824198929863483032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19832548399518301894)
,p_view_id=>wwv_flow_imp.id(19832545226432301886)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19824199083360483033)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19832549271850301896)
,p_view_id=>wwv_flow_imp.id(19832545226432301886)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19824199187872483034)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19832550197088301898)
,p_view_id=>wwv_flow_imp.id(19832545226432301886)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19824199257335483035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19824199305329483036)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_title=>'Prescription Items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PRESCRIPTION_ITEM_ID,',
'    PRESCRIPTION_ID,',
'    MEDICINE_ID,',
'    DOSAGE,',
'    FREQUENCY,',
'    DURATION_DAYS,',
'    INSTRUCTIONS',
'FROM PRESCRIPTION_ITEMS',
'WHERE PRESCRIPTION_ID = :P10_PRESCRIPTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P10_PRESCRIPTION_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Prescription Items'
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
,p_created_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_on=>wwv_flow_imp.dz('20260721105835Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199872218483041)
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
,p_updated_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824200075521483043)
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
,p_updated_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199925657483042)
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
,p_updated_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824200179201483044)
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
,p_updated_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199775663483040)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MEDICINE_NAME AS D, MEDICINE_ID AS R',
'FROM MEDICINES',
'WHERE STATUS = ''Active''',
'ORDER BY MEDICINE_NAME'))
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
,p_updated_on=>wwv_flow_imp.dz('20260721105835Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199655013483039)
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
,p_default_type=>'ITEM'
,p_default_expression=>'P10_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721105835Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19824199547852483038)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Item Id'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260721105835Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19824199493108483037)
,p_internal_uid=>19824199493108483037
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
,p_updated_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19834344989716684165)
,p_interactive_grid_id=>wwv_flow_imp.id(19824199493108483037)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260721105453Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19834345045498684165)
,p_report_id=>wwv_flow_imp.id(19834344989716684165)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834345525829684167)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19824199547852483038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834346453709684169)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19824199655013483039)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834347379380684172)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19824199775663483040)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834348255070684174)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19824199872218483041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834349106270684176)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19824199925657483042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834350018461684177)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19824200075521483043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19834350906415684179)
,p_view_id=>wwv_flow_imp.id(19834345045498684165)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19824200179201483044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19824200574220483048)
,p_name=>'P10_DOCTOR_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19824197761906483020)
,p_prompt=>'Doctor NameDoctor Name'
,p_source=>'SELECT D.FULL_NAME FROM DOCTORS D JOIN PATIENT_VISITS PV ON D.DOCTOR_ID = PV.DOCTOR_ID WHERE PV.VISIT_ID = :P10_VISIT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721110825Z')
,p_updated_on=>wwv_flow_imp.dz('20260721110825Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19824200453473483047)
,p_name=>'P10_PATIENT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19824197761906483020)
,p_prompt=>'Patient NamePatient Name'
,p_source=>'SELECT P.FULL_NAME FROM PATIENTS P JOIN PATIENT_VISITS PV ON P.PATIENT_ID = PV.PATIENT_ID WHERE PV.VISIT_ID = :P10_VISIT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721110557Z')
,p_updated_on=>wwv_flow_imp.dz('20260721110557Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19824200348213483046)
,p_name=>'P10_PRESCRIPTION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19824197761906483020)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721110253Z')
,p_updated_on=>wwv_flow_imp.dz('20260721110253Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19824200282783483045)
,p_name=>'P10_VISIT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19824197761906483020)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721110253Z')
,p_updated_on=>wwv_flow_imp.dz('20260721110253Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19824200637803483049)
,p_name=>'Refresh Prescription Items'
,p_static_id=>'refresh-prescription-items'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_PRESCRIPTION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260721111105Z')
,p_updated_on=>wwv_flow_imp.dz('20260721111105Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19824200750946483050)
,p_event_id=>wwv_flow_imp.id(19824200637803483049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19824199305329483036)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260721111105Z')
,p_updated_on=>wwv_flow_imp.dz('20260721111105Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19839736509388495101)
,p_name=>'Set Prescription ID'
,p_static_id=>'set-prescription-id'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19824198575446483028)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_created_on=>wwv_flow_imp.dz('20260721112455Z')
,p_updated_on=>wwv_flow_imp.dz('20260721112455Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19839736678611495102)
,p_event_id=>wwv_flow_imp.id(19839736509388495101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_PRESCRIPTION_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_expression', 'this.data.selectedRecords.length ? this.data.selectedRecords[0][this.data.model.getFieldKey("PRESCRIPTION_ID")] : ""',
  'suppress_change_event', 'N',
  'type', 'JAVASCRIPT_EXPRESSION')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260721112455Z')
,p_updated_on=>wwv_flow_imp.dz('20260721112455Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Admission Management'
,p_alias=>'ADMISSION-MANAGEMENT'
,p_step_title=>'Admission Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714103221Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260720110438Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508443797081141000)
,p_plug_name=>'Admission Management'
,p_static_id=>'admission-management'
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508443023233140973)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508450118997141024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508451226618141034)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P11_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508450439446141033)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19508443797081141000)
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
,p_button_condition=>'P11_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508450905462141034)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P11_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19508451702214141034)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508446032807141020)
,p_name=>'P11_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508444160186141000)
,p_name=>'P11_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508446865394141021)
,p_name=>'P11_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508446513124141020)
,p_name=>'P11_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103222Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508444980184141013)
,p_name=>'P11_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_prompt=>'Doctor'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DOCTORS.FULL_NAME'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110438Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508444586005141008)
,p_name=>'P11_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_prompt=>'Patient'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME || '' - '' || CIVIL_ID AS DISPLAY, ',
'       PATIENT_ID AS RETURN ',
'FROM PATIENTS ',
'ORDER BY FULL_NAME'))
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110438Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508445415313141013)
,p_name=>'P11_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_prompt=>'Room'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT ROOM_NO || '' ('' || ROOM_TYPE || '')'' AS D, ROOM_ID AS R FROM ROOMS WHERE STATUS = ''Available'''
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110438Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508447296325141021)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19508443797081141000)
,p_item_source_plug_id=>wwv_flow_imp.id(19508443797081141000)
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
,p_created_on=>wwv_flow_imp.dz('20260714103222Z')
,p_updated_on=>wwv_flow_imp.dz('20260714105253Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19508362743124532439)
,p_validation_name=>'New'
,p_static_id=>'new'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM ROOMS ',
'WHERE ROOM_ID = :P11_ROOM_ID ',
'AND STATUS = ''Occupied'''))
,p_validation_type=>'EXISTS'
,p_error_message=>'This room is already occupied.'
,p_when_button_pressed=>wwv_flow_imp.id(19508451226618141034)
,p_associated_item=>wwv_flow_imp.id(19508445415313141013)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714110058Z')
,p_updated_on=>wwv_flow_imp.dz('20260714110058Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508452087529141036)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19508443797081141000)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Admission Management'
,p_static_id=>'initialize-form-admission-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8142861638404518
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508452510341141037)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19508443797081141000)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Admission Management'
,p_static_id=>'process-form-admission-management'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8143284450404519
,p_created_on=>wwv_flow_imp.dz('20260714103223Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103223Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508362618334532437)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit'
,p_static_id=>'submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- When admitting a patient',
'UPDATE ROOMS SET STATUS = ''Occupied''',
'WHERE ROOM_ID = :P11_ROOM_ID',
'AND :P11_STATUS = ''Admitted'';',
'',
'-- When discharging a patient',
'UPDATE ROOMS SET STATUS = ''Available''',
'WHERE ROOM_ID = :P11_ROOM_ID',
'AND :P11_STATUS = ''Discharged''',
'AND :P11_DISCHARGE_DATE IS NOT NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8053392443795919
,p_created_on=>wwv_flow_imp.dz('20260714104246Z')
,p_updated_on=>wwv_flow_imp.dz('20260714104246Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260713075043Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260721080855Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508290583346565439)
,p_name=>'Appointment Summary'
,p_static_id=>'appointment-summary'
,p_template=>2665811232373458102
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.APPOINTMENT_DATE, A.APPOINTMENT_TIME,',
'       S.STATUS_NAME, A.REASON_FOR_VISIT',
'FROM APPOINTMENTS A',
'JOIN APPOINTMENT_STATUSES S ON A.STATUS_ID = S.STATUS_ID',
'WHERE A.APPOINTMENT_ID = :P12_APPOINTMENT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713075246Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112048Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290679069565440)
,p_query_column_id=>1
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290737866565441)
,p_query_column_id=>2
,p_column_alias=>'APPOINTMENT_TIME'
,p_column_display_sequence=>20
,p_column_heading=>'Appointment Time'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290967692565443)
,p_query_column_id=>4
,p_column_alias=>'REASON_FOR_VISIT'
,p_column_display_sequence=>40
,p_column_heading=>'Reason For Visit'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290838835565442)
,p_query_column_id=>3
,p_column_alias=>'STATUS_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Status Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508328928723687156)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713075043Z')
,p_updated_on=>wwv_flow_imp.dz('20260713075043Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508291040125565444)
,p_name=>'Doctor Summary'
,p_static_id=>'doctor-summary'
,p_template=>2665811232373458102
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.FULL_NAME, DEP.DEPARTMENT_NAME, SP.SPECIALTY_NAME',
'FROM DOCTORS D',
'JOIN DEPARTMENTS DEP ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'JOIN DOCTOR_SPECIALTIES SP ON D.SPECIALTY_ID = SP.SPECIALTY_ID',
'WHERE D.DOCTOR_ID = :P12_DOCTOR_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713080520Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112048Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508291299712565446)
,p_query_column_id=>2
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508291180615565445)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508291379972565447)
,p_query_column_id=>3
,p_column_alias=>'SPECIALTY_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Specialty Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19508289844740565432)
,p_name=>'Patient Summary '
,p_static_id=>'patient-summary'
,p_template=>2665811232373458102
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, CIVIL_ID,',
'       TRUNC(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS AGE,',
'       GENDER, BLOOD_GROUP, MOBILE_NO',
'FROM PATIENTS WHERE PATIENT_ID = :P12_PATIENT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713075246Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111848Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290163521565435)
,p_query_column_id=>3
,p_column_alias=>'AGE'
,p_column_display_sequence=>30
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075246Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290341318565437)
,p_query_column_id=>5
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>50
,p_column_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290032547565434)
,p_query_column_id=>2
,p_column_alias=>'CIVIL_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075246Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290012651565433)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075246Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290257922565436)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>40
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19508290510461565438)
,p_query_column_id=>6
,p_column_alias=>'MOBILE_NO'
,p_column_display_sequence=>60
,p_column_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713075247Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508292325428565456)
,p_plug_name=>'Prescription Medicines'
,p_static_id=>'prescription-medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    PRESCRIPTION_ITEM_ID,',
'    PRESCRIPTION_ID,',
'    MEDICINE_ID,',
'    DOSAGE,',
'    FREQUENCY,',
'    DURATION_DAYS,',
'    INSTRUCTIONS',
'FROM PRESCRIPTION_ITEMS',
'WHERE PRESCRIPTION_ID = :P12_PRESCRIPTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12_VISIT_ID'
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
,p_created_on=>wwv_flow_imp.dz('20260713104729Z')
,p_updated_on=>wwv_flow_imp.dz('20260720110338Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508362235324532434)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260714074858Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508362370526532435)
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
,p_updated_on=>wwv_flow_imp.dz('20260714074858Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508292921611565462)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_updated_on=>wwv_flow_imp.dz('20260714074859Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508293100056565464)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
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
,p_updated_on=>wwv_flow_imp.dz('20260714074859Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508292966838565463)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency'
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
,p_updated_on=>wwv_flow_imp.dz('20260714074859Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508293221973565465)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_updated_on=>wwv_flow_imp.dz('20260714074859Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508292679302565460)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Medicine'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MEDICINE_NAME AS D, ',
'       MEDICINE_ID AS R ',
'FROM MEDICINES ',
'WHERE STATUS = ''Active''',
'ORDER BY MEDICINE_NAME'))
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
,p_updated_on=>wwv_flow_imp.dz('20260720110338Z')
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508292572000565459)
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
,p_default_expression=>'P12_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715122718Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19508292512260565458)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Item Id'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124240Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19508292360697565457)
,p_internal_uid=>7983134806828939
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
,p_updated_on=>wwv_flow_imp.dz('20260715123725Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19508339756072041548)
,p_interactive_grid_id=>wwv_flow_imp.id(19508292360697565457)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715123725Z')
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19508339895056041549)
,p_report_id=>wwv_flow_imp.id(19508339756072041548)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508340379069041551)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19508292512260565458)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508341299934041554)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19508292572000565459)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508342133795041556)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19508292679302565460)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508344024730041560)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19508292921611565462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508344845783041562)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19508292966838565463)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508345784270041564)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19508293100056565464)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508346702669041566)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(19508293221973565465)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19508437401395969175)
,p_view_id=>wwv_flow_imp.id(19508339895056041549)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(19508362235324532434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508291465100565448)
,p_plug_name=>'Visit Details'
,p_static_id=>'visit-details'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112048Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508293251625565466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19508292325428565456)
,p_button_name=>'Create_Prescription'
,p_static_id=>'create-prescription_1'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Create Prescription'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713104729Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135757Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19536993020053608943)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(19508291465100565448)
,p_button_name=>'GO_TO_PRESCRIPTION'
,p_static_id=>'go-to-prescription'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Go To Manage Prescription'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_VISIT_ID:&P12_VISIT_ID.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260721080855Z')
,p_updated_on=>wwv_flow_imp.dz('20260721080855Z')
,p_created_by=>'ALMAJEED9266@GMAIL.COM'
,p_updated_by=>'ALMAJEED9266@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508292111385565454)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(19508291465100565448)
,p_button_name=>'SAVE_VISIT'
,p_static_id=>'save-visit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Save Visit'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112047Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508361915964532430)
,p_name=>'P12_APPOINTMENT_ID'
,p_item_sequence=>60
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714073129Z')
,p_updated_on=>wwv_flow_imp.dz('20260714073129Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508291797260565451)
,p_name=>'P12_DIAGNOSIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508291465100565448)
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
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112048Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508362116308532432)
,p_name=>'P12_DOCTOR_ID'
,p_item_sequence=>80
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714073130Z')
,p_updated_on=>wwv_flow_imp.dz('20260714073130Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508292025081565453)
,p_name=>'P12_FOLLOW_UP_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19508291465100565448)
,p_prompt=>'Follow Up Date'
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
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112047Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508291905627565452)
,p_name=>'P12_NOTES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19508291465100565448)
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
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140211Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508361985286532431)
,p_name=>'P12_PATIENT_ID'
,p_item_sequence=>70
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714073129Z')
,p_updated_on=>wwv_flow_imp.dz('20260714073129Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508641183290872065)
,p_name=>'P12_PRESCRIPTION_ID'
,p_item_sequence=>100
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715134006Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134006Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508291717566565450)
,p_name=>'P12_SYMPTOMS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508291465100565448)
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
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112048Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508362150085532433)
,p_name=>'P12_VISIT_ID'
,p_item_sequence=>90
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714074239Z')
,p_updated_on=>wwv_flow_imp.dz('20260714074239Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508292194705565455)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_static_id=>'new'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO PATIENT_VISITS (',
'    APPOINTMENT_ID, PATIENT_ID, DOCTOR_ID,',
'    VISIT_DATE, SYMPTOMS, DIAGNOSIS, NOTES, FOLLOW_UP_DATE',
') VALUES (',
'    :P12_APPOINTMENT_ID, :P12_PATIENT_ID, :P12_DOCTOR_ID,',
'    SYSDATE, :P12_SYMPTOMS, :P12_DIAGNOSIS, :P12_NOTES, :P12_FOLLOW_UP_DATE',
')',
'RETURNING VISIT_ID INTO :P12_VISIT_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Saved'
,p_internal_uid=>7982968814828937
,p_created_on=>wwv_flow_imp.dz('20260713080521Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140648Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508293504711565468)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_static_id=>'new_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO PRESCRIPTIONS (VISIT_ID, PATIENT_ID, DOCTOR_ID, PRESCRIPTION_DATE)',
'VALUES (:P12_VISIT_ID, :P12_PATIENT_ID, :P12_DOCTOR_ID, SYSDATE)',
'RETURNING PRESCRIPTION_ID INTO :P12_PRESCRIPTION_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Prescription created'
,p_internal_uid=>7984278820828950
,p_created_on=>wwv_flow_imp.dz('20260713104729Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140211Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508362465152532436)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19508292325428565456)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Medicines - Save Interactive Grid Data'
,p_static_id=>'prescription-medicines-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8053239261795918
,p_created_on=>wwv_flow_imp.dz('20260714074858Z')
,p_updated_on=>wwv_flow_imp.dz('20260714074858Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Appointments'
,p_alias=>'APPOINTMENTS'
,p_step_title=>'Appointments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713122018Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713124333Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508356325311527387)
,p_plug_name=>'Appointments'
,p_static_id=>'appointments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.APPOINTMENT_ID,',
'    A.PATIENT_ID,',
'    A.DOCTOR_ID,',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    DEP.DEPARTMENT_NAME,',
'    A.APPOINTMENT_DATE,',
'    A.APPOINTMENT_TIME,',
'    S.STATUS_NAME AS STATUS,',
'    A.REASON_FOR_VISIT',
'FROM APPOINTMENTS A',
'JOIN PATIENTS P ON A.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN DEPARTMENTS DEP ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'JOIN APPOINTMENT_STATUSES S ON A.STATUS_ID = S.STATUS_ID',
'ORDER BY A.APPOINTMENT_DATE DESC'))
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
,p_created_on=>wwv_flow_imp.dz('20260713122020Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508356385134527387)
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
,p_internal_uid=>8047159243790869
,p_created_on=>wwv_flow_imp.dz('20260713122020Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508358814554527438)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122020Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508357624100527422)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>20
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::P12_APPOINTMENT_ID,P12_PATIENT_ID,P12_DOCTOR_ID:#APPOINTMENT_ID#,#PATIENT_ID#,#DOCTOR_ID#'
,p_column_linktext=>'Open Visit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122020Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508359186930527440)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122020Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508361240212532424)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122131Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508361734892532429)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713124333Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508361216591532423)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122131Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508361675775532428)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Patient Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713124333Z')
,p_updated_on=>wwv_flow_imp.dz('20260713124333Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508361115439532422)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122131Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508359942269527444)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122020Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508361343552532425)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713122131Z')
,p_updated_on=>wwv_flow_imp.dz('20260713123725Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508369445678566853)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:REASON_FOR_VISIT:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713122652Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122652Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508355453837527242)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713122018Z')
,p_updated_on=>wwv_flow_imp.dz('20260713122018Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715064758Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508650354507100119)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.APPOINTMENT_ID,',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    DEP.DEPARTMENT_NAME,',
'    A.APPOINTMENT_DATE,',
'    A.APPOINTMENT_TIME,',
'    S.STATUS_NAME AS STATUS,',
'    A.REASON_FOR_VISIT',
'FROM APPOINTMENTS A',
'JOIN PATIENTS P ON A.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN DEPARTMENTS DEP ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'JOIN APPOINTMENT_STATUSES S ON A.STATUS_ID = S.STATUS_ID',
'WHERE (A.DOCTOR_ID = :P14_DOCTOR_NAME OR :P14_DOCTOR_NAME IS NULL)',
'AND (A.STATUS_ID = :P14_STATUS_ID OR :P14_STATUS_ID IS NULL)',
'AND (A.APPOINTMENT_DATE >= TO_DATE(:P14_DATE_FROM,''MM/DD/YYYY'') OR :P14_DATE_FROM IS NULL)',
'AND (A.APPOINTMENT_DATE <= TO_DATE(:P14_DATE_TO,''MM/DD/YYYY'') OR :P14_DATE_TO IS NULL)',
'ORDER BY A.APPOINTMENT_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P14_DOCTOR_NAME,P14_STATUS_ID,P14_DATE_FROM,P14_DATE_TO'
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
,p_created_on=>wwv_flow_imp.dz('20260715064800Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508650514922100119)
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
,p_internal_uid=>8341289031363601
,p_created_on=>wwv_flow_imp.dz('20260715064800Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065635Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508653129967100153)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508651550974100136)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508653547438100155)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508652774173100152)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508652343714100150)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508651928400100147)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508654420328100159)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508654018502100157)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715064801Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064801Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508656514678151999)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260715065635Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065635Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508649572118099953)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715064759Z')
,p_updated_on=>wwv_flow_imp.dz('20260715064759Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508638104923872034)
,p_button_sequence=>50
,p_button_name=>'SEARCH'
,p_static_id=>'search'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Search'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715065634Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508637837683872032)
,p_name=>'P14_DATE_FROM'
,p_item_sequence=>30
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
,p_created_on=>wwv_flow_imp.dz('20260715065634Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508637944322872033)
,p_name=>'P14_DATE_TO'
,p_item_sequence=>40
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
,p_created_on=>wwv_flow_imp.dz('20260715065634Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508637632727872030)
,p_name=>'P14_DOCTOR_NAME'
,p_item_sequence=>10
,p_prompt=>'Doctor Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME AS D, DOCTOR_ID AS R ',
'FROM DOCTORS',
'ORDER BY FULL_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All Doctors --'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715065634Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508637729450872031)
,p_name=>'P14_STATUS_ID'
,p_item_sequence=>20
,p_prompt=>'Status Id'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STATUS_NAME AS D, STATUS_ID AS R ',
'FROM APPOINTMENT_STATUSES'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All Statuses --'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715065634Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071559Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715071802Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715074042Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508660806674282267)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715071802Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071802Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508661613504282414)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    DEP.DEPARTMENT_NAME,',
'    V.VISIT_DATE,',
'    V.SYMPTOMS,',
'    V.DIAGNOSIS,',
'    V.FOLLOW_UP_DATE',
'FROM PATIENT_VISITS V',
'JOIN PATIENTS P ON V.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D ON V.DOCTOR_ID = D.DOCTOR_ID',
'JOIN DEPARTMENTS DEP ON D.DEPARTMENT_ID = DEP.DEPARTMENT_ID',
'WHERE (D.DOCTOR_ID = :P16_DOCTOR_NAME OR :P16_DOCTOR_NAME IS NULL)',
'AND (DEP.DEPARTMENT_NAME = :P16_DEPARTMENT ',
'       OR :P16_DEPARTMENT IS NULL)',
'AND (TRUNC(V.VISIT_DATE) = TO_DATE(:P16_VISIT_DATE,''MM/DD/YYYY'') ',
'       OR :P16_VISIT_DATE IS NULL)',
'ORDER BY V.VISIT_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P16_DOCTOR_NAME,P16_DEPARTMENT,P16_VISIT_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074042Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508661694402282414)
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
,p_internal_uid=>8352468511545896
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508663682360282433)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508664881976282439)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508663322924282432)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508665305310282440)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508662909461282427)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508664515210282437)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508664046245282435)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715071804Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071804Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508667053966332070)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715072609Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072609Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508638549156872039)
,p_button_sequence=>40
,p_button_name=>'Search'
,p_static_id=>'search'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Search'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715072608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072736Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508638388498872037)
,p_name=>'P16_DEPARTMENT'
,p_item_sequence=>20
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPARTMENT_NAME AS D, DEPARTMENT_NAME AS R ',
'FROM DEPARTMENTS ',
'ORDER BY DEPARTMENT_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All Departments --'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072736Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508638292580872036)
,p_name=>'P16_DOCTOR_NAME'
,p_item_sequence=>10
,p_prompt=>'Doctor Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME AS D, DOCTOR_ID AS R ',
'FROM DOCTORS ',
'ORDER BY FULL_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All Doctors --'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072736Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508638473142872038)
,p_name=>'P16_VISIT_DATE'
,p_item_sequence=>30
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
,p_created_on=>wwv_flow_imp.dz('20260715072608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072736Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Medicine Stock Report'
,p_alias=>'MEDICINE-STOCK-REPORT'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715103517Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715103613Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508670785428522218)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715103517Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103517Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508671543562522363)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    M.MEDICINE_NAME,',
'    C.CATEGORY_NAME,',
'    M.UNIT,',
'    M.CURRENT_STOCK,',
'    M.REORDER_LEVEL,',
'    CASE ',
'        WHEN M.CURRENT_STOCK < M.REORDER_LEVEL ',
'        THEN ''Low Stock'' ',
'        ELSE ''Normal'' ',
'    END AS STOCK_STATUS',
'FROM MEDICINES M',
'JOIN MEDICINE_CATEGORIES C ON M.CATEGORY_ID = C.CATEGORY_ID',
'WHERE M.STATUS = ''Active''',
'ORDER BY M.CURRENT_STOCK ASC'))
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
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508671706186522363)
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
,p_internal_uid=>8362480295785845
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508673290964522385)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508674055955522388)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508672866257522379)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508674524226522390)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508674832789522392)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508673699757522386)
,p_db_column_name=>'UNIT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103519Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103519Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508675434007527779)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_NAME:CATEGORY_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715103613Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103613Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Admission Report'
,p_alias=>'ADMISSION-REPORT'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715104153Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715104221Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508677379373561877)
,p_plug_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    P.FULL_NAME AS PATIENT_NAME,',
'    D.FULL_NAME AS DOCTOR_NAME,',
'    R.ROOM_NO,',
'    R.ROOM_TYPE,',
'    A.ADMISSION_DATE,',
'    A.DISCHARGE_DATE,',
'    A.STATUS',
'FROM ADMISSIONS A',
'JOIN PATIENTS P ON A.PATIENT_ID = P.PATIENT_ID',
'JOIN DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID',
'JOIN ROOMS R ON A.ROOM_ID = R.ROOM_ID',
'ORDER BY A.ADMISSION_DATE DESC'))
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
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104221Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19508677500622561877)
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
,p_internal_uid=>8368274731825359
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104221Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508680282122561894)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508680665113561896)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508679086742561889)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508678680595561885)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508679446277561891)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508679830698561892)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19508681077822561897)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104154Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104154Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19508681468372564593)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715104221Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104221Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508676619449561742)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(19508121730535788045)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715104153Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104153Z')
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
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_last_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19508127579837788160)
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
,p_created_on=>wwv_flow_imp.dz('20260712120853Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120853Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19508129468494788177)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19508127579837788160)
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
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508128332950788171)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19508127579837788160)
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
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508129204324788176)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508127579837788160)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508128753292788175)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19508127579837788160)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19508128084664788170)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19508127579837788160)
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
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508133552555788185)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7824326665051667
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508133141137788184)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7823915247051666
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508129919662788179)
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
,p_internal_uid=>7820693772051661
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19508130834677788183)
,p_page_process_id=>wwv_flow_imp.id(19508129919662788179)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19508131334785788183)
,p_page_process_id=>wwv_flow_imp.id(19508129919662788179)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19508130342159788182)
,p_page_process_id=>wwv_flow_imp.id(19508129919662788179)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19508131782625788183)
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
,p_internal_uid=>7822556735051665
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19508132727200788184)
,p_page_process_id=>wwv_flow_imp.id(19508131782625788183)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19508132268663788184)
,p_page_process_id=>wwv_flow_imp.id(19508131782625788183)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260712120854Z')
,p_updated_on=>wwv_flow_imp.dz('20260712120854Z')
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
