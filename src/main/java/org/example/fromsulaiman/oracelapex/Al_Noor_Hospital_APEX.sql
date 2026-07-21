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
,p_default_workspace_id=>8542961988728206
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'AL_NOOR_HOSPITAL'
);
end;
/
 
prompt APPLICATION 101 - Al Noor Hospital Operations System
--
-- Application Export:
--   Application:     101
--   Name:            Al Noor Hospital Operations System
--   Date and Time:   12:57 Thursday July 16, 2026
--   Exported By:     SULAIMAN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     31
--       Items:                   63
--       Validations:              3
--       Processes:               42
--       Regions:                 71
--       Buttons:                 55
--       Dynamic Actions:         10
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             20
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
--   Version:         26.1.0
--   Instance ID:     1742726106706913
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'AL_NOOR_HOSPITAL')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Al Noor Hospital Operations System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AL-NOOR-HOSPITAL-OPERATIONS-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E1AB71156E8E7C53DB4EF48696FB3D01A72D73533831036FA54EFD884563FB88'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(8659289997769927)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Al Noor Hospital Operations System'
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
,p_substitution_value_01=>'Al Noor Hospital Operations System'
,p_created_on=>wwv_flow_imp.dz('20260715065436Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715141000Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461237065438
,p_version_scn=>'6792479'
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
,p_navigation_list_id=>wwv_flow_imp.id(8660188353769936)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(8660959735769999)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8655227808769915)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8658163715769919)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8655451451769915)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8655709443769916)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8657899614769919)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8657281960769918)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8658442106769919)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8658720606769920)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8656934937769917)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8654914221769902)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260715065436Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8657593323769918)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8656093911769916)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8656685676769917)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8656336925769916)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8660959735769999)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8674183993770088)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8674709087770089)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8674183993770088)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8675268294770092)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8674183993770088)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8660188353769936)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:TCpPOBt-9lY4NWWcn8JoUh30fRw74EK0ov3A4JcUxxk'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134203Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9127717931599346)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admission-report'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bed'
,p_parent_list_item_id=>wwv_flow_imp.id(9136170357788941)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
,p_created_on=>wwv_flow_imp.dz('20260715115929Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123208Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9092471678318152)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Admissions'
,p_static_id=>'admissions'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37,38'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9109554813542738)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_parent_list_item_id=>wwv_flow_imp.id(9136170357788941)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
,p_created_on=>wwv_flow_imp.dz('20260715115003Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123131Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8797178964018707)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8986378000187843)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Appointments'
,p_static_id=>'appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24,25'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134139Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9194217094958573)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stethoscope'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134145Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8684524681846881)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Departments'
,p_static_id=>'departments'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8771819289928600)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Doctor Specialties'
,p_static_id=>'doctor-specialties'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8860396342122930)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Doctors'
,p_static_id=>'doctors'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-md'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134136Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8671556455770067)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8784839749008747)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9122298749579027)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-medkit'
,p_parent_list_item_id=>wwv_flow_imp.id(9136170357788941)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
,p_created_on=>wwv_flow_imp.dz('20260715115606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123156Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8955173340982076)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Medicines'
,p_static_id=>'medicines'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-medkit'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134138Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8994668689204235)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
,p_created_on=>wwv_flow_imp.dz('20260715105338Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134141Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9115915601566423)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stethoscope'
,p_parent_list_item_id=>wwv_flow_imp.id(9136170357788941)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
,p_created_on=>wwv_flow_imp.dz('20260715115400Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123143Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8832975037048024)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Patients'
,p_static_id=>'patients'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134115Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9053119604225407)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_parent_list_item_id=>wwv_flow_imp.id(9027190306218810)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
,p_created_on=>wwv_flow_imp.dz('20260715105710Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134203Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9136170357788941)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Reports'
,p_static_id=>'reports'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260715123105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8811465492036287)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Rooms'
,p_static_id=>'room-form'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bed'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120208Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9027190306218810)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
,p_created_on=>wwv_flow_imp.dz('20260715105604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715134143Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D0B701C55763DAF47A319FDA5912CCB3FFCC5B67060BDFE60B0CD12C0326403A6926C28F2594B2C954D914A6D4855B2A45862490EA12A6C';
wwv_flow_imp.g_varchar2_table(2) := '41A06AB3B54B082B9B1459308418D604DBF2072F96D7C4D8C6FF00F6FA6F195BFFD18C349AE9DE7B7B46B6246BB4A3EE9E194DF76BF7ED7EDDFDDEBDF79D7BE6BDD7AF5B6D0572910898404012C80478B22820092459600A01492053F0C9C292409203A6';
wwv_flow_imp.g_varchar2_table(3) := '10900432059F2C2C092439600A01C30432655516B60D029240B609657A2A2209941EDC6D635512C836A14C4F452481D283BB6DAC4A02D92694E9A98824507A70B78DD5D4132801E8BEBFF13B05753B6A2AFE695BF5CCB51FFEF9D79EDDF6D8D2FAC69AAA';
wwv_flow_imp.g_varchar2_table(4) := 'FACD350F3942A8AE5C67AE3B63C0583026094097F22C692590A641D46DAE995BDFB8BABA7E6BF58FEB1BABF7D13E94971BE91461ED92AAE24BCDE53A1851D5DDD0B42D50B4F71C215457AE33D79D31602C1813C68631AADB5AF36FF5841963C718A69C35';
wwv_flow_imp.g_varchar2_table(5) := '030CA69440CF7DF0D8B8BA2DD5ABEA1A6BFE79EDD6EAAD6B1BABDB84A21D87261AC8A727A06121EDDD24721D1E01376324A0FD150833C68E31642C895CCF72EB5CF7E1E3BEE18B26E76CCA08C4BF943E77642955FE29A1694F6BC00AAA5211895CCD2150';
wwv_flow_imp.g_varchar2_table(6) := '14C3F207D43A3F85ACBEA58CB5399589974E3A817EBAEFBBEEFAAD357F41BF941380F81F08B11472491602CB8426DE5FDBB8FA787D63F5E38C7DB20CF5EB4D2A819EDDB67A52737BEF1E407B850CCE26916B4A101073A0E1D5E6B6DE261E3624D364D208';
wwv_flow_imp.g_varchar2_table(7) := '54D7F8D82D1155ECA58AF0B826997590BAE323B0A8CFADEE59BBBD7A5EFC2CE6AE248540B55BBFBD5C686A13B93689C4A255AA3188C04C2D82DD6BB77CFB6E83E5472C663981B8E551A06C26AB72804C208C91B54813CA07C968892C2550DDFBDFCDA596';
wwv_flow_imp.g_varchar2_table(8) := '670381964B22D7B18540AE16C69B1C232BDDB29440C213FA3139770B895CC7220202F36231B2CC3BCB08B4764B4D0D84566D996752517210A018E9B1B248BB25047AB1E98F7334457BD1229FA49A2423A009ED05ABBA324B08E4F7E755D3ED7A4992EB2D';
wwv_flow_imp.g_varchar2_table(9) := 'D55B87804FF184565BA1CE3481348D3A2EA13E69853349D221D50E8300B542DFE3D80D736954A74C13A87E5BCDFD00CD7C422E198640653476E6BC364D20A141B63EC8CCC58AD8992250DD8E1A2F3DE7AACA4CF8A4D71C3BBE013283842902218C3BC8B8';
wwv_flow_imp.g_varchar2_table(10) := '391DA440AE694340E9ECCE5B62C6BAA9E05361269019FBB26C9A11301B432A6FBC061AF416C8B8025932ED08988DA16102456F01B5E5694720890E3843B566AA17314CA0FA9D35E309E05212B9663602E39F6B5C6D388E8609A4689A61A3998DB7FDBC0F';
wwv_flow_imp.g_varchar2_table(11) := '2BA2C268AD0C1308AA90AF6C18457DAC9533114B13048A48028D352218F547351E4BC304128A2BC7A8BFB2DCD84240839265D423C3040A6BC6596BD459592E3908288A30FCC79C8609A40845B640F1E29961E7CD34068609248471D6660ABE5D2D01B064';
wwv_flow_imp.g_varchar2_table(12) := '8ABF46FD544C3406860984881A36EA7026946B6BF6A3AB35A80BA733C1E774F8689C40E9F03645365B2F7621D8D58BF2D2F1BA70BAED52578AAC67961949A021F16AB9D0899EEE104A8A7C5878CB125D7CC53E04FD2130B1866477FCA124D0000AB45FF6';
wwv_flow_imp.g_varchar2_table(13) := 'A337D08782FC42DCFE3BCBA008972E8BE72D45517E914E2CCE33A088E3938AE3118801E06F0B22D0D98BFCBC02DC79DB5DC8725D9F1AC972B9B1E4B665C8CFCDD7F374B7F7C44AC99D24107180BBACCEAB01E47A7375F2B8B3B2E9ECE0D59DE5C11D5FBB';
wwv_flow_imp.g_varchar2_table(14) := '0B39DE1C745CE9D65BAAC139AC38CA3C1D8E27901A51D14E775C80C0E25BEF44B6DB83788BC7EDC5E2797740A1BC7C67A646B478591D735E714C4DE354542782AA61CE8CB9C8CF298C93EBFAE982BC62CC9A36072A138FC64CD7AF3833A538B3DAD15AF3';
wwv_flow_imp.g_varchar2_table(15) := '98A77FD03C6BD29CE8C904B6B3A6CC45210DB4B9EB0B7685122861DF2C8E2510B7209D5F758366D4B1A07231288144172EF3752A2320F4F190462D58A265ED96CFB104EA6A0942D5A8EB9A5E9950D73534F0DCDDCDA66E8F89C833D643AF3BE5D891040A';
wwv_flow_imp.g_varchar2_table(16) := '8722E8EEE88127DB4B1386A568F7B718125F61290DBAB3C1530091B00A272E8E245027DD8673B07B433DD873E097D8BD7F9721D973F06384FAA263209E06609D6992B499751C81B8F5E9A1D9E629E5D3F0F0B23FB544A6944FD59F9D39B115721C81BA63';
wwv_flow_imp.g_varchar2_table(17) := 'B3C8F77E7D15EE9BF70796C83DF31FD25B8000758B7AC2411B471148A34133DFBA67292EDC3AE976CBC27CEBE425609D818E5ECB74668A2247112848CFBA98440BE6D08C333D9AB02A489E2C2FE6CF5E82084D2EF6D0537BABF466821E4711A8C7DFA7C7';
wwv_flow_imp.g_varchar2_table(18) := '64E1ACBBF47DBC4D4F3888C623EF60DD472FEAD278F4BFC1E7E2E5E7F3FD3A7972918F9D228E2110B73CBD8110F2BCF9A8AC581037BECD9DE7F0DC5B4FE2BDA69FE3D3FFDFA3CB7BBBFF4B3F77B9EB7CDC72F3262C426E762E7ABAA3248D9BD166171C43';
wwv_flow_imp.g_varchar2_table(19) := 'A05E0AAC46C1BBBD925A1F41896156558D60DDB697E00F76A2EAF687F0F837FF06DFF9E6F7F4B43FD081F5DB5F06E719A62868521A8B2A97EBCFC8423D99F3B62F4C2ECE215030DA322C9811FF7B10BF6E39810B57CE6261E59D985A3E1342115014454F';
wwv_flow_imp.g_varchar2_table(20) := '2FAC5C8A73974FE34CEB1788B72C98B94CBF14A269023DE1808D630814EE8DE8E19CEA8BFF9F065D6C3BA3E7292928D3F703372534EBCCC797DACFF26E589952324B3FDF4733DD7AC2011BC710A8AF378C82BC42705783384B81B758BF12EABBF18DC3FE';
wwv_flow_imp.g_varchar2_table(21) := '73F95ED2A1E7BA71E3766523D79B8730D9BAF1AA3DCF388240FCC053A527E6C579BE11A3785359B405F9E2DC31D094D1B5BC9CFEFCEC719D7B53CBE2B7605CA028AF04E13EE73C17730481FA035A943F32817CB9E57870E92334D63983B77736A0E9D836';
wwv_flow_imp.g_varchar2_table(22) := 'EC26E1F4F9AFCE60D5F23F439177641D25053E229F06A73CD6700481B4D8ABA7C5D43A702B319254CDFB16FEE81BD5E80E76E1D8A9C3384ED21DF4E35B77D7E0DECA87472AAA5F2B8CD9E0564F3F61F38D2308C4EFFD701C0B72A3631C4EC7132104EE9E';
wwv_flow_imp.g_varchar2_table(23) := 'FB205E7CFCE778FAD117F0CC9FBC84E71F5B8F6FCCF97D0811E7FE7F80B2C2980D3546DA0197EC958CD5C61104D268FCC3F5E5F109EF1312E24A45E14D282F98842C57E21FAF288A8DB3547AAC91909D0CCFE408028167102950FD2D112593B60A085D37';
wwv_flow_imp.g_varchar2_table(24) := '0FBCF584CD378E209088D5B233D096F47076C46C08112552D20DA6D9400CDA347B9164F3826694D94457773BEF922A1DDD51922A2E49A0A4029D4AE52E57F477D2DEDD9A74B39D311B8A2450D2B14E99017EE99D8D75F8A3AD03A793256D5D5192FADB6E';
wwv_flow_imp.g_varchar2_table(25) := '9CCD4E96CD74EA8DFE34D3E941926DF3777DF8D32C6CA6CDDFC2BB84E5E495A33875E558C2F939637BCC86FE4D21FD4FA6F9AC7D65F404CA202CF87B3E4C9E49E32761C2B8893439E847474FB48548A41AAF6FFB115EDFFEA344B2EA79DA035711EC0D62';
wwv_flow_imp.g_varchar2_table(26) := '42F944B04D9D4436FF30953D0944B7ED4C9E9EEE102ACA2660FEECC5282FADD083FC65F3117D9FC8465355A82489E4E53C9F5F3EC43B8C2F8DDA64DB4C60F6A57F2A41CF60A38D2D09D44ABF7A264F79D9782CB8650940B7D4E34AC6839713E70FF22E29';
wwv_flow_imp.g_varchar2_table(27) := '72FCEC67BADEF212222BD964DBFC993CF6A5ADB94BBF66B78DED08E46F0D820356E61B8785954B20E81F07CDE3F6EA5F193B72EA80FEB093CF5929AAA6E2C8A9FD282E2C813BF67D21B6CD9FC92B2D2ED53F91C7BE5969732CE8B21581FA7A23FA677973';
wwv_flow_imp.g_varchar2_table(28) := '3C395854790714E11A8471795905BA7BFCB8D8717AD0792B0ECEB79D426F5F0FC6938D81FAD88745F3EE84977CEA6A0980FFB071E0F54C4FDB8640FCE880EFB868F88305F316C3E5BAFE89BAFE2095FBA2DDD8E797A26395FEF356ECFB75F677950375F2';
wwv_flow_imp.g_varchar2_table(29) := 'B3B4F97317EAC320F6514F0CCC90C169DB102814EC43B82FA27721C5F9A5C386A438DF47DD8B1B7B8EEDB0B41B53D5089A8E6CD375C77B605B5A344EEF42F975573BBD749F42020D1B53CB4E46883CACACACE4C6F799F97C5404A64D9E81E6960B38747E';
wwv_flow_imp.g_varchar2_table(30) := '4FF49405DB83E79A70B5E32BCC98127DA3319ECAD29271FA2526BA9EB0C1C636040AC75E23F5158D442060FAC49B9145DDDBA64FDEB2A415E2BF37DBB4F74DBDF59936716402F98AA3BE456264B7017F601B0269B1777EBCD923FF1F30EE2C37664D9BA3';
wwv_flow_imp.g_varchar2_table(31) := 'B742472E7C623A869F514B76A5FD326E9E3E4727E6480A733DB9FA65D5462F9BD987403C7AE6F008DE8C2CD327CCD43F0CF5E1BE0DA65A216E7D3ED8FB16BCD95E4CAD9831B2519B5EB50D8146131F457161CEF44A9CFBEA0C8E5DFA74344507E53D4C2D';
wwv_flow_imp.g_varchar2_table(32) := '5873EB05CC265D7CBB3EE8A2430E1C49208EED94F1D391E3F162C3AEFF4020E4E753A392605F37367CF42A72BCB9985C3E755465ED94D93604A22707D1B8F47765D1A3B85B558BC043937BAD9D57B1FEA37F1D5557A6D1A4D3CF76BC808EEE769D842AE9';
wwv_flow_imp.g_varchar2_table(33) := '8A6BC8E617328140A30B410263A0505F2FF61CDC85F6CE36288AC0B15F1FC28EE31B13B6D378F41D9C387D582FDBDAD1AAEB629D092BB05146DB10881A8584C2C28F323E3EB0131DFE0EE41678503EAD04AE2C051B3F7E03A75B4EFC561DFC7ED02F9ADE';
wwv_flow_imp.g_varchar2_table(34) := 'D2CB7059D6C1BA5867A0A7FBB796B75B06DB10E85A17364284F865AFDDFB7722D8134061692E8A2BF2A1B8047C130AE8E982869F7EF02FE8085E7FE94CEF0D0730B32D7005FFFEBF3FD4F3FA2616E8655907EB629D1FEFDF41C44CFE5B8F235431E59794';
wwv_flow_imp.g_varchar2_table(35) := '945B4C93C1CBAD17D174E097E80BF7A1848893EFBB3E5FE4F666A18008C57F81FAFCDBDFC7A6836F60DBD177D11BA227FB249CE6733F7CE729FD612C13C6EDC9BA5613D6C53A5977D3815DB8DC7AE9DA35BB2714BB547040437143954E5FFA12FB8EEC05';
wwv_flow_imp.g_varchar2_table(36) := 'B75265938B90435DD7D04C05442896AE6027367FF22E36EE7E0341220F0BA7F99C3FD805CEC384195A9E75B26E088D6CFD0A679A4F0ECD62CB63DB1088C9315C848ED300F9E81787C1E39CB22945C8CEB9DE720CCDCFAD50C54C1F980865930BC1036C16';
wwv_flow_imp.g_varchar2_table(37) := '4E7359BEC6798696EB3F66DD9CCFE55270E4F343387EFA50FF25DBEE6D43A06B11D2072EA0AE2A844F8FEDC1A97327C1DDCDB89B8A90953DF8FDA06B65062498304C84EC1C37B55842174E675337C7D706641D36C936C64D2DD26D9E3A7B12FB8FEF4538';
wwv_flow_imp.g_varchar2_table(38) := 'D2376C5E3B9CB40D81FABBB05DFBB663D3AE77B1A569139AAF36EB775A6553A835A15621550153C816DBE46EEDD2958BD8BCFB17BA4FEC5BAA7C48951DDB10C8435D93875A0D166FAE1B79455E944E2A04DF2509216064F1E66783C5485921843E58671F';
wwv_flow_imp.g_varchar2_table(39) := 'D8170FF9C4BEB16493AF46748EC5328A51A722420B182D9B8C7239851E94D2B885C547C4292ACF0307CD8C2DD6C1624607FBC03A9848EC1B0BB74C66745A5D56D5D4A0519D860994255C638A40460190E50033B1548C02A8A911C3AC356A53964B0E0266';
wwv_flow_imp.g_varchar2_table(40) := '6269984050640B949C70A641AB89589A20D0D81A03A50176FB98548CC7D2308154D565DF2ECC3ED448A826666269984070A972109D507832209389581A26D0C582EC1682A68744AE998D404F2C96866A619840AF2C7A85E6E7C55E435665A1318480D81B';
wwv_flow_imp.g_varchar2_table(41) := '8DA531970C1328666E676C2F77998B80A9189A22103DB734653C7331B78FE76663688A40C8C2AF084A390E22103274ED89C5D0B0FBA60854774F0391476C346CDD760533AD4262633486C6FD36452036AB022F412E19898015B1334DA0FAAA06EAC6E4DD';
wwv_flow_imp.g_varchar2_table(42) := '58E63148EC8DC6CE9CE7A609C4E685806C8590598B5531B38440AAEBF4DBD0703EB32074B436CE88BC000002A049444154B717F4985900812504AABB67671842FB6B0BFC912A5281802A9ED06366812D4B08C47ED456ADDF08215EE6B494318C00C5A8F6';
wwv_flow_imp.g_varchar2_table(43) := 'FE86F7ADF2D03202B14315C5D97F4FFBFF2391EBE81048496E01EC8CC5C8327B9612E82FE9F99816168F9077ED24721D5B085C7609F7A31C232BDDB29440EC58DDEF359C16D0EE8580F51F63865C8C21A09D1111D7FD3F58F1EA6563E5E397B29C406C6A';
wwv_flow_imp.g_varchar2_table(44) := '4DD5FA036E688BA8C96CE46329E94340086DBB5B60E19A075E8BFE3F0C16BB921402B18F4FAF58DF32B72DF0003DACFB091F4B490302022FCC6D0DAEE45824CB7AD208C40E3FF2C886485DD5BA2784269EA0E310895C53834090A6551EAD5DB1EEEF3806';
wwv_flow_imp.g_varchar2_table(45) := 'C934995402F53BBE6665C34F5C8A364368A8A573E748E49A0C04F4C95CAD8EB0BEB976C5FA37936162A8CE9410888D3E73DFFA0B6B56AE5B5BD916980E4DFB43406C06403D1C6DE56A18012A18A11B169ED779B0B23D308DE6E3EA196B3A9F92356504EA';
wwv_flow_imp.g_varchar2_table(46) := 'AF0D37A9B52BD7BF5B5BD5F080079E124DC5DD44A827A1897594E730499844AEC323C0D81CA65FDD7A01F1B742537FD79BE32AA1AE6A556DD5BA4D8CEDF0C5927736E5041A58957FA87AA5A3EEFE75BB88502FD7AE6CA821106E237177075C855A9698A0';
wwv_flow_imp.g_varchar2_table(47) := '2898252291F92E45590621564215AB1C215457AE33D75D210C180BC684B121B98DC695D56BAA1A5E5AB3F2F58F9E5AFE5AD7404C539D4E2B81E255F6F9875FEBAABBA7A1F91FEF5B7772CD03FFF9D933F7FDACA97645C3569E827784505DB9CE5C77C680';
wwv_flow_imp.g_varchar2_table(48) := 'B1604CE2E195CEF3639240E90444DA1E1D029240A3C34BE61E828024D01040E4E1E81090041A1D5EF6C96D514D24812C02D2A96A24819C1A798BEA2D096411904E552309E4D4C85B546F49208B8074AA1A4920A746DEA27A4B025904A473D40CAEA924D0';
wwv_flow_imp.g_varchar2_table(49) := '603CE4D1281190041A256032FB60047E030000FFFF456959D8000000064944415403007603E28A9B55D1270000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8662379316770013)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69701CC7757EB338168BFB06B1200E82006F1214258B14134995940FC52EA79294ED1F4EE5A8D8712A7F52D1CF58951F2957ECAAA42A71';
wwv_flow_imp.g_varchar2_table(2) := '94A45C51454A94D8AAB225C54533521252112FD07278DF8708DE0401903817BB8B051658A45F0FA6A777B18B99DD9DDD9DD979247AE675F7EBD7AFBFEE6FB6A7A777D6F317877F6F990261E0D631E001FA4708B8180122808B3B9F9A0E4004A051E06A04';
wwv_flow_imp.g_varchar2_table(3) := '8800AEEE7E6ABC8B09409D4F08D01488C680CB11A04F00970F00B7379F08E0F611E0F2F613015C3E00DCDE7C22801B4700B559204004105090E0460488006EEC756AB340800820A020C18D081001DCD8EBD466810011404041821B10486C23112011118A';
wwv_flow_imp.g_varchar2_table(4) := 'BB0A012280ABBA9B1A9B8800112011118ABB0A012280ABBA9B1A9B8800112011118ABB0A011711C055FD4A8D35890011C02450A4569C0810018AB35FA9552611200298048AD48A1301224071F62BB5CA240244009340395A8D9C4F89001120253494E106';
wwv_flow_imp.g_varchar2_table(5) := '0488006EE8656A634A04880029A1A10C3720400470432F531B5322400448090D65140302466D2002182144F9458D0011A0A8BB971A67840011C00821CA2F6A04880045DDBDD438230488004608517E512350C40428EA7EA3C659840011C02220C98C3311';
wwv_flow_imp.g_varchar2_table(6) := '200238B3DFC86B8B10200258042499712602440067F61B796D110244008B80B4951972C634024400D35091623122400428C65EA53699468008601A2A522C46048800C5D8ABD426D30810014C43458A4E40205D1F8900E9226691FED2620C261E057840D9';
wwv_flow_imp.g_varchar2_table(7) := '22B364264D04880069026685FA627409C61FCCC0FC5C94079431CD0ADB64233D048800E9E195B5F6E2823AF8979662C216CAE30F038079229184BC204004C80BCC6A25D1C8228C3F9C81586C992754FAAA000346628C1098179D5FC428853C214004C813';
wwv_flow_imp.g_varchar2_table(8) := 'D00B6CBA33CEE6FCFAE0AF84FDBB5FE2A1D257C9BDC03CBC2F586044E10974C839024544809C63957105DAE05F5E56AFFCD595D56CE0BF0CDEB20A1EF6EF7E19300D2B102498A34F02C423D78108906384F1E676F2F1ACA8A5A6AA860DFE97F8C0D71291';
wwv_flow_imp.g_varchar2_table(9) := '08FBD9A781460224CAE4E3002C45F5FB044D97CED6224004B016CF386BCB6CAE8F531ABCAA6386CFEB8317065E84B2522F46E302A6ED637915E5153C1DCB4C0C07006DF0043AE4040122404E60558D4EB22BBFB6C65F56520638C071A0ABB9AB8F5E3625';
wwv_flow_imp.g_varchar2_table(10) := 'DA3BF0CB8C20653C73912D97A20D1EA1434E102002E4045680E9B1205FE347F31E4581BD03BF04951555185D3354FB6AE0F95D2F009641457C5630F3348422851C204004C801A8A1E9088403F3C2F29E1D7BA1AEBA41C48D84FAEA26D8B3FD79A1C6EDCD';
wwv_flow_imp.g_varchar2_table(11) := 'E8F6448626D03963048800194397BC20AEE3CB57EC6D7D3BA0ADA13DB9F21AA96D8D7ED8DAB75D68CC3C0902DA16092458820011C012185523B87A3335125423ECB8AEB91D36F8FB9994D95FAF7F13B4B7FA79615C409D1A0DC2CA4A2A4FA343F6081001';
wwv_flow_imp.g_varchar2_table(12) := 'B2C75058088C87016F5C31C1E7AD8081CDCFA29855D8D5BF077C6CF5088DE05689D989308A142C428008601190F8B02BC4E6FE9AB967B7EF83D2127535474BCBE48C36F66CFF8C281A9C9A03DC52211248C80A01224056F0A98571AD5E9EFA6CEEDD9AD6';
wwv_flow_imp.g_varchar2_table(13) := '4DAF6A25F5116F8AFB7B360B05752A84932291E45A21DB861301B24590959F791202DCD1C944C027BD1BD7EB8315D3AC08FD5D5BC576099C66059ED254C80A5C890059A2882B33E1597D8912E7FD0A28595A5D5D5C6136776DDE233242331188CE2F8938';
wwv_flow_imp.g_varchar2_table(14) := '0999214004C80C37510AAFFE5AA4CBDF6DE9D447B3AB9D1B6A9A607D7B9716855976D32D2224648400112023D8D44291E002685B9771ABC3969E1D6A460E8F5B591D5817561109B3FA69D7284291712002640C1D002E7B6AC5B7B2075E65A5E55A3467E7';
wwv_flow_imp.g_varchar2_table(15) := 'F2326FFC0332DA269115D60E264056EDCEBA7098CDC1F166543374E9E679F8E0F84FF3122EDDBCA055CBEE0316616E7641C449480F0122407A78716D7CE21B9898E3B21D0E81F1901DDC70A40F44800CBA0D37BAE1777833289A9322B8E59A3E05328396';
wwv_flow_imp.g_varchar2_table(16) := '0890016EA1A98828F58D5F7B155EFFD6BB05097FF0CAABC28FD0B47D3E9184530E1088006976D27C382AF6FBE0DEFD9D1D7BD3B4609DFAAEF57BA1C657CB0DE26A5494DE28C1B148E7400448072DA62BEFF7F99567BE081E4F094BCDF3DF4A7558F74B03';
wwv_flow_imp.g_varchar2_table(17) := '5F588901C8BE894412D6448008B0263CF1994BD1258884D415174551607FFFE7E3150A10DBD7FF59501485D78CF701B125DA23C4C13079200298040AD5E42BEC735BF64395579D7E605EA1429DAF119ED9B48F578FAB53B83CCB237430850011C0144CAA';
wwv_flow_imp.g_varchar2_table(18) := '125E615509E0C56DAF6862C1CF2F6ED3A74173ECE974C11D7290034400939D853798DA8ECFFAEA46E869DA62B264BC5A203205FF79FE87F04F87FF125EFBD137794019D3302F5EDB5C6C63CB76A8A9AAE3CAE8676C89DE27C4C13071F098D02115864024';
wwv_flow_imp.g_varchar2_table(19) := '146547F56FA04FFF828A9A62EE787DE41C7CF727AFC2A1D307E0EADD0B301B9AE101654CC33CD431672D5E6BA0F73991807B9444A4C804AB9B43043089E8FCCACD2FAA6FED7C064F6985C14FFF0B7E70F07B108EA47E6A8B79A873F2D6FFA4651B95659F';
wwv_flow_imp.g_varchar2_table(20) := '64B2621E85D408100152632372626C6505D7D931A144F1407FEB4E144D87B1C02378FFF8DB42BFBBBD17BEFCE257E11B5FFA531E50C6344D0175C783235AD4D4B97FDD2E50D87F54C6671578438C3285B5112002AC8D0FCF8D4857FF2D3DBBA0ACC4FCAE';
wwv_flow_imp.g_varchar2_table(21) := 'CF586C09FEF57FFF0696D8198D6DDBB00B3EF7ECAF435B5D07E0EA250694310DF3506771290A6F7FFC778065316E265494FA6053D736AE8A837F21BCC8653AAC8D0011606D7C782E7EE19D0BECB0BD5BFF56168B1AFE3D98BA05C34F1F72BD4A6F25BCB0';
wwv_flow_imp.g_varchar2_table(22) := 'ED57B99CEC8079A88379F7476FC3F0CC5D144D871D3DFA5B281622FA3D8B69032E54240298E8F445E9AB87DD2D9B4C94D05526834F456443471FBFEA8B8404013F0D7AFC7D227532F844C866849E16FDBBC851C9673365DDAAE3200214AE8BA2D21E9BB6';
wwv_flow_imp.g_varchar2_table(23) := '9AF56939128C04847E6545B5905309553E5D2730379D4A2D697A6B6D8748C7770889080929112002A48446CDC02FBD689B0B1A6B9BA13CC9ABCD55CDE4C7D65ABFC808CDE96F8D13890982AC23974D504B1AF59555416D553DCFE37E6B8EF3143A244380';
wwv_flow_imp.g_varchar2_table(24) := '08900C15294D9EFEF89BBBA41C73627B7DB750BC3732B4E6AB0DF1E6F5DEE321A12F97158906C2FA16DDC745E993CBA0986BB38900065D1F5DD05F3DE26FEA34D05E9D8D7B7506FAD48754E148183EB9F6F16AA59514CC0BCFABEFFBD9C5CAD456987FA3';
wwv_flow_imp.g_varchar2_table(25) := 'F48A0968977C947DD7F2E91C8F0011201E8F5531792EBDAE217D02A0C1AFECFF433175BA76F7121C3EFB33189B19E69F06F8B25B940F9FF9195CBB7B19D5B9EED7F67F8BCBE91E641F65DFD3B5E3167D2280414FC7A47D3575958D06DAC9B3EB2A1AE1B7';
wwv_flow_imp.g_varchar2_table(26) := '5EFA5D91797FE40E1C3CF12EBCF9C1F77940F9FEE81D91FF95977F1F6AE5ABBFC83116641F65DF8D4BBA53830860D0EFCB31FD4ED2CB1E3619A8A7CCDEDFF779F8E32FFFD99ABF1283BF20833AFB367E36A51DA38C8A329F5089B127D822424252048800';
wwv_flow_imp.g_varchar2_table(27) := '4961D113E30850A6FE809D9E9B9EB4B57D0F7CFB6B7F0B5FF8CC6FC0F60DBBA1DA57C3DF2487F22BCFFF26CF439DF4ACC66B974B24C51FDA8BCFA55822024480444412E2F220C2ED0609D96947716AF3A5677E1BFEE873AFC1777FE72DF8CED7DFE0F217';
wwv_flow_imp.g_varchar2_table(28) := '777F3DE3698FEC84ECE3B2347D937548D6112002E8582495E44F00F9EA9A54D906895EE9534A26AF0D5CB3A50B4400836E9107917C75352856B06C6F4971DD03E41A48228001C28A941F5BD69F0948C9F612714391E611AEB16A329D93224004480A8B94';
wwv_flow_imp.g_varchar2_table(29) := '280DA8F945FD85589286ADC4F9C539E18FE291E92B92499010200248602413E541B4E0340248E44DD6364A032002188C028F74158D485757836205CB9E8FEA9F524A8952303F9C523111C0A0A73CD22072C62780BA97089B555242DD8B38AC156C8CD05A';
wwv_flow_imp.g_varchar2_table(30) := '6EE72FCF230DA2D9C84CFE2ACEB0A6D939DD478F44DE0CCD157D31228041172F4B2B2913B36306DA85CF967D949F6114DE337B7A400458A35FA6C742301FD6BF5BFB7466740D6D7B643D0DE83E4698EFD8067B78664F2F880029FA657A3408E1807E4389';
wwv_flow_imp.g_varchar2_table(31) := '6AE30E20C0F874FCA714B6814880BD973C100192E0323DC606FFACFEDBBF9ACAD8D4634DCCFA8CAF417CFDC33F070C28676D70C540321F9104F2CFB9AEA8D2892140046020C87F7CF007F4C1BF7E9DFE25F8F1E9F4DED220DB4D942F3DF8050C3DBAC103';
wwv_flow_imp.g_varchar2_table(32) := 'CA71F959442603E3A2B4EC7B6826024402018D108800020A0075DA230DFEF62E18D8F41C34D53709ADC733F7859C8D20AFD7CB72363687A7F52FD53437B670DFD7B33668369104D8462D4E67A00761DA20C0811196A63DDDFE1E18E8C7174D298C002D9A';
wwv_flow_imp.g_varchar2_table(33) := '1ADC79725DC876136E8FE9BE35D53533F714DE066C0B8BF03F6C23B69547E84004C0318003020706CA187AD6F7C28E3EFD05B80D75FA57218786AFA28A2DC3D0F035E157639DFEA9856D21120868E2044F5CCC85119C17CB83BFB7AB0FB6F70EC421D150';
wwv_flow_imp.g_varchar2_table(34) := 'A30FA6EBF72FC5E5D92582CF2B6E3E50BF540FA0F06F9A81F40F49B081115B4BC23663DBB5B85BCFAE2640706A0E705EAC757E7FCF66D8DAB3FACDCF259E52A8ABA9E36A73F361180DA8EFFAE40936398C061EC0DC82BA13B4A1B601D0E744D7B63162F7';
wwv_flow_imp.g_varchar2_table(35) := '76EAAF5EC4B6CB3FF99AA85F8878BEEB742D01F08DCF81717DDF0C0E7EEDEDCAC93AA1ADA95D24DF787C41C87611AE0F9F17AEB435B7093951D8BA6127F475F78BE499F1F8877D22C325822B09805B0470DEAFF57197BF5BBC5A5C4B4B3CB7B7E8EFDD3C';
wwv_flow_imp.g_varchar2_table(36) := '7DE3786276C1E3F8522DCD898E56FDED705A9A7CDEDCBD033ADBF537D64D8DCE024EA1641DB7C8AE2440683A02DA571DEBAAEB60679FF12BCFAB7DB5505355C3C7C5C327F76032F484CB76388CB229D9D8A4FA831A3855AB28AF34746B57FF1ED11E7C7D';
wwv_flow_imp.g_varchar2_table(37) := '0A626258A808155C4B00AD2F37F7AA3F2AA1C5D73A77B4E957D6B377EDF32970F1DE27C2ED8E36F36FAFDBDCBB5D9473EBBD80EB08B030B708DAAF3DFABC15D052BF4E0C0223C12F4D834E5C3A648B69432CB60427AF7C245CF7B79827405B433BF8BC3E';
wwv_flow_imp.g_varchar2_table(38) := '5E16318946DCF7AB321EDE7A5B1CF2E34424B8202AEA58D729643382CF5B05F56C850575A7835370E5F169140B1A2E0F9F02F4059D68AC6F04F9B528986614DA5B3B84CA9C848D482C72C1750458905E19BEAE49EF7CB3FDDCD3B141A81EB97850C88512';
wwv_flow_imp.g_varchar2_table(39) := '3EBA704054DDEDEF15B259615DB35FA8D2278080A27885D8624C34AEBA52BDA9150926047F731778CB2BB8266E661B9979C0E5421C1E4E0EC1FD91DBBC6A9CCAF89BF48D7B3CD1C4A1A6B25668E13448445C22B8EE136029AABFDB27D9C322A37E571405';
wwv_flow_imp.g_varchar2_table(40) := 'FABAF475F423570AF72970ECEA87C2DD8DB8B6CF7C130926058F471F02F2C5C16471C7ABE9AD777C53CC35407FD7B339FD645AEBDBBAA1B4A48C679DBA761C2642F15F42E119393E3C0D3E86D3D707792DE565E5D0D9DAC3E5740F1EA54414D196864582';
wwv_flow_imp.g_varchar2_table(41) := '0B04D711C08A3EC5C1BFA1732337155B8EC181FFFB372E677CC8A0E07B27DF8465F61F8BF6325F3C1E7D20631A0573081001CCE1B44AABB7A30FF0CA8B1917864EC1DDF11B28E6250C3DB90CDAA6BCF2D232E8F1EBFB7BF2E24011554204C8B033F15360';
wwv_flow_imp.g_varchar2_table(42) := '8BF420E9BD41764596DE2091A159C362B865E1FD936F0BBD6DFD3B21937B1961C0E5021120BBA6E3CB000006AC494441548B01D0D9D6239E0BE0F688730FD4397916260D8B9EB9770C869FAADF4AC36D0F1D2DFA9E1EC3C2A4B00A0122C02A48D24BD8D9';
wwv_flow_imp.g_varchar2_table(43) := 'BF5B1478EFF85B105A981571AB85D9F919F88F41FDEA3FB0C9780F93D53E149B3D2240963D8A3F4C8DBB49D14C682E08EF9CF8471473127E78F475C03AD0387EC3AB66E547B131EED45068BF890016F480F6600C4D5DBE7D164EDF3D82A2A5E193A1C3E2';
wwv_flow_imp.g_varchar2_table(44) := 'C6170D97977BF144214B04880059008837A4176F9D855BF76EC659F9F1917F86C9B075DBA52782A3F0EED1B7E2EAC03AB16EF4212E832269214004480B2E5D7971290AA7AE0CC2A3910722D1B3F22AF585C50578F3D05F437449DF782794D2141616E7E1';
wwv_flow_imp.g_varchar2_table(45) := '8D437F058B3175A7A656079AC1BA4F5D3D09E80BC629A48F0011207DCC20B2108693E78FC2F894FE12AACADA0A68ED6980925215525C157A67F01F32B0AE17C1ABFBBF1FFF3E8C8C3FE489681BEBC0BA78023B8C4F3EE5BEA04F2C4A7F6922A0F6569A85';
wwv_flow_imp.g_varchar2_table(46) := 'DCAC3E139C8213678F40301C1430D4B554417D5B15784A14686CAF016525E7ECCD4FE0E3EBFA6ECD9564D3A78FAEBE0F1787CE087DB48D75605D58A79681BEA04F81D0B49644679308149000263DB491DAD8C430BBDA1E8385A83AB5511436E0FD355055';
wwv_flow_imp.g_varchar2_table(47) := '5F21BC2CAB28855A46082DE1C0891FC1ADB1F45FA5727DE41C1CFCF98F353350DB5C09685B4BC03A1B59DD8AA2D20D7D1A3C770CD0474D87CEC60810018C31E21AB71FDD8033574F896F81959478A0B9B30E2AAACA79BE7CC0C1A9A5E37E9DBF3FF01D18';
wwv_flow_imp.g_varchar2_table(48) := 'BCF5DF1064EBF8B25E3219D7FA4F7CFA21FCE0E0F74436DAAA6E50BFB925129980E9CD9DB580BEB028F32DC67DBCFD28FEA61CF32824478008901C17918AF3F00B374FC38D3BFA6B07CBCA4BA0A5BB0ECABC25422F516858570D3867D7D27F72E44DF8F6';
wwv_flow_imp.g_varchar2_table(49) := 'DBDF843F79E3AB3C1C38F98E9605286BE9AF319D778FFE8BC8431B684B24240865DE5268EEAA03F449CBBA71E71AD00A9186C6DA6722C01AF844D96ACE2F2E9F80E1B147428B5F75D980937F3A49644A82C256849AD92744399B1249C9698958166DA0AD';
wwv_flow_imp.g_varchar2_table(50) := 'B50A22499004DE4A758B36EAE20A11FA4E2B448846EA400448814D381282C1F34760727A4268E034449E778B8C14021F988C04387FAFA82C17539514EA3CB9844DAD90645806073FDAE01906074551A0A9A336EE7E047D3F79EE08605B0C8ABB369B0890';
wwv_flow_imp.g_varchar2_table(51) := 'A4EBA76627601007CE5C98E7E26D667D6B15BF11E509691E38713A6AA0ADB701FCFD4DE067A1A6D127ACA0ACA5A30E920CCB088534843A76038EBE6A4582738CC8AC2DB87AA5A5D159478008A063C1A5FB23B7E1E7E78F437451FD6D304551A0915D592B';
wwv_flow_imp.g_varchar2_table(52) := 'EB2A78BE130EE82B7E1A280A5217785B06CF1D85FBA3FAEF0738A11DF9F09108C0500ECECDC083D1BB70E4F421B8724B5FB2C4E9470B9BEFCB736BA6EE883FF4197DC736680E5FF9F4221C3B73181E8EDD056CB396EEE6B3AB09F0C1F19F028663A73F86';
wwv_flow_imp.g_varchar2_table(53) := 'CB9F5E80309B2E6883016F40710095B2151F2DCD6967F41DDB806DD17CC78766976E5E006C33B61D8396E7C6B3EB08A028EAB4205567E31513971DF106D468A527950D33E9F2CA8E2C9B299B8E0EB601DB8237D58AB276DB1565EDFC74EA758AAEEB0850';
wwv_flow_imp.g_varchar2_table(54) := '59EB5DD537B8965EC59EE6E25683B60D0DE0AB59ADB3AA509609DE955521241CAEFA6469CEB038DE54B776D743356B274E8FB0DEC442C9B049D4C9366EB7F2AE23401D5BCDD1565CB4334E1370F5A4A2BA3C6FFD830FD170C507098753957C545C52E601';
wwv_flow_imp.g_varchar2_table(55) := 'DCA68137C858AFD67EED8CD8E4C30F3BD5E13A02D8097CF2A5F00810010ADF07E4410111200214107CAABAF00810010ADF07E4410111C823010AD84AAA9A104881001120053094EC0E048800EEE8676A650A0488002980A1647720400470473F532B5320';
wwv_flow_imp.g_varchar2_table(56) := '400448018CA5C964CCB60810016CDB35E4583E102002E40365AAC3B60810016CDB35E4583E102002E40365AAC3B60810016CDB35C5E198DD5B4104B07B0F917F39458008905378C9B8DD112002D8BD87C8BF9C224004C829BC64DCEE081001ECDE43E45F';
wwv_flow_imp.g_varchar2_table(57) := '4E11C8210172EA371927042C41800860098C64C4A90810019CDA73E4B7250810012C81918C3815012280537B8EFCB60401228025302618A1A86310200238A6ABC8D15C204004C805AA64D3310810011CD355E4682E102002E40255B2E9180488008EE92A';
wwv_flow_imp.g_varchar2_table(58) := '6738EA342F89004EEB31F2D75204880096C249C69C860011C0693D46FE5A8A0011C05238C998D310200238ADC7C85F4B11B0900096FA45C60881BC204004C80BCC54895D112002D8B567C8AFBC204004C80BCC54895D112002D8B567C8AFBC204004B002';
wwv_flow_imp.g_varchar2_table(59) := '66B2E1580488008EED3A72DC0A04880056A048361C8B0011C0B15D478E5B810011C00A14C9866311200238B6EBECE1B8D3BDF87F000000FFFFADE6BDEF00000006494441540300DFA55F79031CD5290000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8662647045770020)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D09741C4799FEAB47E768745AB6244BB67C450EBE6327C48913876C2C136021C06E78C026B1026FE1B1FB16F2203C16165B233BBBB0BBEC';
wwv_flow_imp.g_varchar2_table(2) := 'E35A58363C622B0E848590600824B16CECC476129CF88AE3D8C4671CDF97EE7334D35B7FCFF431D2489A194D57D74CFFF3BAA6ABABABFEFAFFEFAFFAA6BAAABB4701FA100284806B11200270ADEBC97042008008805A0121E0620488005CEC7C32DDDD08';
wwv_flow_imp.g_varchar2_table(3) := 'A0F5440088020542C0A5081001B8D4F164362180081001200A14080197224004E052C793D9EE4640B79E08404782F684800B11200270A1D3C9644240478008404782F684800B11200270A1D3C964772360B59E08C08A06C5090197214004E0328793B984';
wwv_flow_imp.g_varchar2_table(4) := '80150122002B1A1427045C86001180CB1C4EE6BA1B81A1D613010C45848E090117214004E0226793A984C050048800862242C784808B1020027091B3C954772310CB7A228058A8501A21E0120488005CE26832931088850011402C54288D107009024400';
wwv_flow_imp.g_varchar2_table(5) := '2E713499E96E0446B29E08602464289D107001024400439CFC833FFE53AE7F5B43090F958FBCF8E094752FDE3F7DDDE686EBFC5B1E9CD3B8E58105FEAD0F2E5EFBC2AA2514E4C3007DA3F988FB0A7D86BE431FA22F792841DF0E71B7EB0F5D4900EBB6AE';
wwv_flow_imp.g_varchar2_table(6) := '9AD9D8D2F071FF96554D4D2D0DBF6D6A59B58F87B33CA8ADD91D7D6C506DE5E17C7020743A34A09C0831F56DA6860E292A3BC042A13DAA02AF53900F03F48DE623EE2BF45988FB0E7D88BEE4A1157D8B3EE6017DCD7DDEF05B6C03E1B6F099196E640357';
wwv_flow_imp.g_varchar2_table(7) := '10807F73C3A2A62D0DAB9BB6AC7A913BBF2B1482630AA8BF612AAC0150EFE18E5FC4C3641E68730702E86BEE73F51E6C03E1B6103C8E6D83FF206C5FDBB2EA9B6B9FFFCCC24C8162343B329200FCBFBA37A77173C307B9437FCCC369C6D47DA0AA6B4185';
wwv_flow_imp.g_varchar2_table(8) := 'E51C8C021E6823046221C0DB867A870AB04EF504F7F3B67382FF707CAF69F3AABBB04DC52A90EE69194500FEE7EF9BC59DF56FACD47B4261EA1FB873BEC0C3141E6823049241603AFFE1F81230D8826DCABFA5E15FB18D252348D632694F00FE6DF7FAD6';
wwv_flow_imp.g_varchar2_table(9) := 'B6347C86B3F50EE6F11CE5CEFA3A07BB9A07DA0881542250CD54F51BD8C6785B7B69EDE686066C7BA9ACC00959694D004D9B1FF8180B785F5541FD1907EF361E682304442070BBCAD4F52CE8DDDED472FFFB4554986C1D63954B4B02F0B734BC8FB3F02B';
wwv_flow_imp.g_varchar2_table(10) := 'C0D8D3C060EE5846D27942C01604545802A03C8F6D11DBA42D75D82C34AD0800875CFECDAB9E64A06EE3B82CE581364240060496629BE44B8A1BB18DCAA050BC3AA40D01F8B73E782B1BF41E600C3E19AF71948F101089005F52BC8FB7D1FD789398C87A';
wwv_flow_imp.g_varchar2_table(11) := 'C753575A10005F977D808542F8ABEFCA9B35C6E3602A2B1C8199AA022F639B155EF3900AE339949A005415182EBDA800CDDC981C1E682304D201811C6CB3FE9655EB6457565A02C01B2FD66D79E0295C7A911D44D28F1088850003F8262781666CCBB1CE';
wwv_flow_imp.g_varchar2_table(12) := 'CB90262501F8B7BD2F4B29F5FE4605F6711940221D08816411E024F0006FCBBFC6369DAC0C3BCB4949006CB0F67115E0AFED349C641302A210E06DF92310AC5D2FAA3EAC27DE201D01346D69F83657FE533CD04608640C02B8421069DB52D9241501AC6D';
wwv_flow_imp.g_varchar2_table(13) := '69780854F56B522144CA1002A94280B76DAD8DA74A5E0AE44843006B37AF5AA682FA5F29B089441002D222C0DBF8771A5BEE97E6B675290800674955A62DF549A18FB4AD8714CB04043C0A28EBB1CDDB654C2272A5E870ACAC602D577A260FB411026E40';
wwv_flow_imp.g_varchar2_table(14) := '6056A4CD3B6EABE304E07FE1FE79FCBAFF61C791200508019108A8EAC37C3E60BEC82A63D5E5380130C5F30857CCC3036D84809B10F0F0E5C1754E1BEC2801E0033E9177F2398D03D54F083880807A4FAA27041335C2510260C1E07F26AA30E527043209';
wwv_flow_imp.g_varchar2_table(15) := '0105B411B06326394600FE2D0D1F05C66E75CC72AA9810900201F50EDE17EE764A15C70880A9F010D08710200480F7857F760A064708E091AD9FADE5D7FECB9D329AEA2504E442405DBEEE85FBA78F57A764CA3B4200C150F041AE2CE381364280100060';
wwv_flow_imp.g_varchar2_table(16) := '21C5B30A1CF80827007CC90740A8C1015BA94A42406204D407C27D43AC8AC209804F78DC0CC0F82500D0871020044C04A687FB86992022269C0014061F05FA100284C0300478674C7A356098B03813789D71E64C59B690702353A63A092204EC454078DF';
wwv_flow_imp.g_varchar2_table(17) := '104A008D9B3F331954B6C05E0C493A2190AE08A8EFFD76CBE78A456A2F94003C105AC98DA3D97F0E026D84400C04D8001BF8408C74DB928412800A40FFE6639B2B49702620A086E07D90E0673CD9851200305804F421040881911110DC47841180DFEFE7';
wwv_flow_imp.g_varchar2_table(18) := '75A974FD3FB2EBE90C21C01150E787FB0A8F0AD878A714500B5671EB29ECFCF918A5400810022322E0855B4ED58D7836C527841100AF88AEFF53EC3C12979908281E88FB5219C6F9E1FD729C12E22CCE2700851915A74A948D10901201917D451801F009';
wwv_flow_imp.g_varchar2_table(19) := 'C06952A24D4A1102B221A0C2F5A254124800A14A5146513D84405A23C042C27E2CC51180CA8800D2BA5592F2C21088B3AFA4421F21041059D698900A85490621E00204CA227DC67653851040CF0DA70BB825593CD0460810026323900D4BCEE58D9D6DFC';
wwv_flow_imp.g_varchar2_table(20) := '39841080B728E419BFAA248110701102BE811C11D60A210018080A3146046054072120048131FA4CAA74104200D9F92A8D0052E53192E30A0444F5192104A0F666D3F5BF2B9A2D19992A0444F51921043018A21140AA1A06C9710702A2FA8C1002F0E410';
wwv_flow_imp.g_varchar2_table(21) := '01B8A3D99295A94260B43E93AA3A508E10028050882601116DC94228A472D7A8926945EA20024155CC8FA61802408B284885406FD7005C3CD1AA853E1E974A3952063C4400D40AEC42A0B7B31FDACE7782AAAA5A68E5712201BBD0965B2E8D00E4F64FCA';
wwv_flow_imp.g_varchar2_table(22) := 'B5C3CEDF7AA10BAC037F8C2309E0B994574802538A40AA851101A41A5189E5F574F403767E5D456F7E0160C0638D043831F4F23C784CC11D081001B8C3CFD0D3DE076D17BB0C6BBDF95EB875D1722D783911E8275A791E240AFD98F6998D00114066FB57';
wwv_flow_imp.g_varchar2_table(23) := 'B3AE1B3BFFA56E2D8E5F3EAF8F77FC3B20373B4F0B48043E6F219ED20212454F7BBF16A7AFCC46800820B3FD0B7DDD03D06EE9FC850585BCF32FD73ABE6E3A12C12D0B6F872812B8D4A595D5F3D0DE7904ECD08008C00E54259119E81B84D6F3E6B01F3B';
wwv_flow_imp.g_varchar2_table(24) := 'FF2D0B97437656EE300D73B2730149A0B0A0C838876503FD41E398229987001140E6F954B328381882ABE73AB4653E4CC8CFF3C2D205B7F3CE3FF23D5948024B17DC06F9B9E147D17199F0DAD90E087159288342E621400490793E0535A4C255ECB8419C';
wwv_flow_imp.g_varchar2_table(25) := 'DB07C8F264F1CEBF0CB0838F652EE6792F27018F127E803318E444C26521198C5596CEA71F024AFAA94C1A8F85C0B5F39D3038A00FDD19DC34FF16F0E6F9C62A669CF7E517C28DF36FE6C7E1FF710D70597839C01368730801BBAA2502B00B5987E4B65F';
wwv_flow_imp.g_varchar2_table(26) := 'EE86FE9E8051FBC2EB17415951B9711C6FA4BCB802E6CF5E6864C7C9C48E2B3DC631453203012280CCF0A3660576FCEEB63E2D8E5FB5D5D3A06652F26F989E5A311D6AAAA6A2282D74B5F6C240AF492E5A227DA53502440069ED3E53F910BF56B7DEE587';
wwv_flow_imp.g_varchar2_table(27) := '4B7A73662C303324199B3F6B1144DD28C45715708E214971544C32048800247348B2EA60E74712C0F20A6370D3BCA5A0B0F0441EA6251B50465856B8A9E0A420DE2894AC3C2A9738027696087BD5CE1A48B6ED08E09D7E38FCD72B9A57C77FB51398F4D3';
wwv_flow_imp.g_varchar2_table(28) := 'CB8DB4F7E517C1DC3A7334818F12D3330323A1955EE94400E9E5AF61DA060341E8B86C4ECE559457C2948AE4AFFB87551049C0F980CAF2AAC811004E36E2BD06460245D212012280B4749BA9340EFDF535FA2C4F362CAC5B629E4C716C41DD62C03A502C';
wwv_flow_imp.g_varchar2_table(29) := 'BE4DA8ED82799721A651483F048800D2CF6786C6F8FCFE40DFA0713C67D6BC51EFF433322619C9CECA81F7CC9A6B94EEE72B02B83C68245024E508D82D9008C06E846D92AFAA00D675F9E2C2625B86FE43D59FCA2F2FACCF0B582F3F86E6A563F9112002';
wwv_flow_imp.g_varchar2_table(30) := '90DF473135EC69EF03EB35F8C2D9F60DFDA31560B070F662236990CF41D0FB030C38D22E420490762E03ED5EFFCEABE6C41FDEF053E82D166649B1AF14A654D51AF5A12E38223112289236081001A48DAB4C45BB5AFBA25EE7DDDED106BBDFDC25347474';
wwv_flow_imp.g_varchar2_table(31) := 'B5190AE1480447244602455282800821440022504E611DA1A00A784BAE55645B671B5CBE76496868EF6CB7AA00DA2820C42726A252E9407604880064F7D010FDB0F3EBCB7E434E397A88CB82784392A34A50E509234004903064CE16E8E9301FF65930F3';
wwv_flow_imp.g_varchar2_table(32) := '46B867D9A71D0DF3679A938FD607919C45896A8F17012280789192205F4F473FE02500AAC280C127967D0EEE9AFB3147C3276EFD1CD784A14ADAAA04DD17A04131EE2F5102880044219D827AACBFB08BEA6E86A2BCD214481D9F88E2FC325838EB264388';
wwv_flow_imp.g_varchar2_table(33) := '5547239122D222400420AD6BA215C33BFE02FDE65D7FCBE7DE1D9DC1C1A3DBE799BAE04349786F8083EA50D5092040049000584E66EDB1BCE8A3A2AC0A6694CF71529DA8BA674D9C07E5C5938C34ABAE462245A4448008404AB7442B8533EC3D9DE61F75';
wwv_flow_imp.g_varchar2_table(34) := 'FCD5A20F0363E1EBEEE89CCE1C31C6E0AEC51F362AC7B90AE38022092320B200118048B493ACABBF7BC028999B9D074BA62D378E938EF025FBCB9DE70003F078D2722205974CBF037222FF3780848597029153B49318012200899DA3ABD6D76DBE870F27';
wwv_flow_imp.g_varchar2_table(35) := 'FFF48EA69F4F64FFCAB116F8F6D35F862FFDF45E58F7E497B480F17F7FFA2BF0CAF196444445E5CDCBCA8705B3CC25C13E0B694565A403A910200290CA1DB195B18E00E64CB92176A631520782FDF0C48EEFC3937F7A14CE5D7937EA475FE565CF5E390D';
wwv_flow_imp.g_varchar2_table(36) := '4F6E7D149ED8F9030804CD11073F15F73677AA4900FD16D28A5B0065148E00118070C813AB70A07730EABEFFBACA058909C0DCBC87FFE8B926D87D78271E8D1A76BFB5037EF47C134431C4A825CC93B3AB161A07B81280C148A0485C0888CE4404201AF1';
wwv_flow_imp.g_varchar2_table(37) := '04EBB30EA5A74FAE83829CC2042500B41C7A0A4E9E3B6A949B59331BEE59FE49F8EC871ED202C66756D781FE3971F66DD8F2D6D3FA61DC7B5F6E314CAD980EFA8746013A12F2EE8900E4F58DA659BFE55A7AFE34F3397CED641C5FE7DADF81675FF99591';
wwv_flow_imp.g_varchar2_table(38) := '73F1ECA570E7C20FC0C4A24ABE92005AC0F89D8B3E088BEBF0DF8040FB3CFBF22FE142C7BB5A3C91AFF9D36F34B25BC9CB48A4885408100148E58E686542C110E0DF72E9A9B3AB17E9D1B8F73B0F3F0FFAC343D513A6C00DB39602C45A41E469375C770B';
wwv_flow_imp.g_varchar2_table(39) := '4CE679807F42AA0ABB8E6CE6B1C4B6EB2D3AD24A4062D839919B08C009D4E3AC3360F96B6EC618D494CC88B3A499EDEC95778C83BA69F3808B318E8746F0DCEC69E63BFFCE5E393534CB98C735A533781D9C4D2239CDFF288C24D06E44049C384104E004';
wwv_flow_imp.g_varchar2_table(40) := 'EA71D619B0DCFA5B33B136AA63C52902CE5D3A6D642DF19519F1912225BE09C6A97397CDB246E218118F920595136A8C5C561B8C448A488300118034AE18AEC8A0650430B97CEAF00C71A4945AFE18349EBFF4B2E629F295C651C3F02C533859E9A9018B';
wwv_flow_imp.g_varchar2_table(41) := '0D7A1AEDE5418008401E5F0CD3246019014C9E901C015867E5E319D29FB97CD2D0A3B66286114F245255566B64A74B00030A2923440052BA25AC94B5F3549698C3EAF0D9F8BE6BCACD65B9378EEE81BE81DE110BF60EF4C01BC7F618E7A74C9C69C41389';
wwv_flow_imp.g_varchar2_table(42) := '54959ABA5A492C11196ECBEB94BD44004E213F46BDD8F9554B9E494566A7B2248F195D327DF19CAFDB0000100049444154397873BC5ABEFEC17E68797D13F4F60F2781DEFE1E7EEE77303018BE0BB020DF0758562B98E0578545577C61A8F5B222415194';
wwv_flow_imp.g_varchar2_table(43) := 'DD660488006C063859F1F89F7FD6B265DE49D6C3B8E3857925F0E9155F30F25FBC76017EDEF2BFB0F3E016387CFA0D1E0EC08E832D3CED51B8C4CFE91957ADF86252371D61F9A2FCE8C9C6C1400893294888001180844E419542963E830FFF30662EADE1';
wwv_flow_imp.g_varchar2_table(44) := 'F944C2829AA5507FE347A28A1C79E74DD8F5C69F78D8067F79E750D4B90FDCFC37707D5572CF1CA0A06C4F0EEE8CA05A8D3152292203024400327821860EAAE515DB3E6F618C1C89257D78F1FDF0D0C79AA0649499FDD2C2095A9E0F2CFC6462C263E42E';
wwv_flow_imp.g_varchar2_table(45) := 'B12C39E2E3C131B250520401277744004EA23F4ADDFADD7B98C59B5B80BB71871913E7C0D7EFFD1EFCFD871E868F2CFB14DC78FD32B879CEED700F8F7FEE435FE5E7BE0B9867DC157101F9B9E179071E355E648A710A7221400420973F0C6DACBF9A05DE';
wwv_flow_imp.g_varchar2_table(46) := '22237DBC91FC6C2FCCAFBE1956CCFD383CB0FC21F8BBDBBE0877F1F8BCEAF7425E56FE78C51BE5ADA316EB68C6C840112910200290C20DC395B0769A82148D0086D7625F8A75D4622533FB6A24C9C9204004900C6A02CA5809C09BE71350636AABF0E699';
wwv_flow_imp.g_varchar2_table(47) := 'F3166AD032A399DA6AD25E9AD306100138ED8138EA1FC702401CD2EDC9E26166D352AD3734D8531D494D1201D34B490AA062F62060EDF4A3DDBD674FEDE3978A7715EA529892FC12A62E83F6F6204004600FAEE396CA98D9697A63DCB937EE0A6C166025';
wwv_flow_imp.g_varchar2_table(48) := '2D8B2936D74AE2134580082051C404E5671E9300FA067A04D59ABA6A7AFA4D9D6904101B571952890064F0420C1D148FE99AFE511EE08951548AA43E0B01782CB648A11C29612060B6322389223220A0584600D65F5319748B47875E0B012859D4CCE2C1';
wwv_flow_imp.g_varchar2_table(49) := 'CC893CE41927508FA34EEB08A0ADE36A1C25E4C9125243D0D9DD66286425332391225220400420851B862BD1DD6A3EB21BE41DAAADE7CAF04C92A6B4F65C06D45957AFEB9A698B9EE6F6BD2CF61301C8E2098B1ED7CE75426F57F8B97C3DF96AF7453D2A';
wwv_flow_imp.g_varchar2_table(50) := 'FDFE4AD785281DD116B4292A910EA4408008400A37984AB49EEF8458EFD3BFDC71DECC94A2D8DB170F0086148933C45C89A12BDA84B6199928220502440052B821AC047610FCB50C1F0178148F1E85CBEDA92580FDA75F86FFDEF48816DE38F3AA514F2A';
wwv_flow_imp.g_varchar2_table(51) := '22565DAD36A06D68632AEA2019A94180082035388E5B0A0E91B183E8826A2AA7C0DCEBE6EB8770FAD209239E8AC8C98B7F31C49CB870D888A722F2CEC5E38698B9D72D00B4454F401BDD4E023A1632EC89009CF6820A809D1F87C8BA2A5593AA6161DD12';
wwv_flow_imp.g_varchar2_table(52) := '282D32DFD17FFCCC610886827A9671EF55E01547A4A4F25EFDC160004E9E3F16910C9A0D680BDAA4272209A0CD1615F453B4178C00118060C0A3AAE37DF0DA906B7EEC288B67DFC4B331F0E51741B6279BC7010679E73FD766BEB25B4B94F0EB4CDB0908';
wwv_flow_imp.g_varchar2_table(53) := '715D51B52C4F16B7019F0A64803655945762B21690F0D07622010D0EC7BE14C76A7679C5F8AB8B1D003B820E057610EC2860B9797E42A9390A3879D91CB6EB6564DB9FBA64EA3871C224533D6ED392F72C05B4514F44DB110322011D11F17B2200F1986B';
wwv_flow_imp.g_varchar2_table(54) := '35E275307600ED807F55F0CEB2640EFE7127E347E65656526E1C1C3F7FC4888F37125DCB78A599E58F9F33E713CA8A4DF2C21C8C31401B27715BF1180362A091001EB820C866221180031EE9B8DC1DB5D437A96C122CE69D9F011BA64D99E5AFBD8E9D7D';
wwv_flow_imp.g_varchar2_table(55) := '6BD8F96413F8D547B245472C87EF317CFB5D5347ABEE7A21C66D4412282F35890D49A0E3B2F9F0909E97F6F6234004603FC65135F4B4F741575B9F913681778425739782C2CC253FE3248F14FB4A21272B3C0FD0D9DD0167F935364F1EF7C6C62D61B880';
wwv_flow_imp.g_varchar2_table(56) := '775B8F416FE4C9C5DC9C3C282A28199E89A7A0AD37CDBB15D0767EA86D5D6DBDD0D3D1AFC5E94B1C024400E2B006FC979CF64BDD468DBEFC02B869EE2D23767E3D637595F9BF807B4FBEAC278F6B6FC708609F45B7EA8A9A51F54312B8918F7A7C5E9F91';
wwv_flow_imp.g_varchar2_table(57) := '0FB109D1EBC30C3C4444880044A01CA9A3F36A8F31DF8533E437CD5F061E252B7276E45D55F964E3E46B875F021C6A1B094946523D02409D5E7DEB45439BAA89D5467CA448165FE1B869DE2DE0E1AB05980765745ECDDCE706D046D9021180208F0C0E04';
wwv_flow_imp.g_varchar2_table(58) := 'A386B875D3AF076F5E415CB5971696431E1F5263E6B6AE563875D59C69C7B46442AA470027AF1E86EEDE4E4D151CFE5BFF18444B1CE1CB9BE783EB6A671B67F11209B1321228622B024400B6C26B0AC786AD1FE5E7E6436DD54CFD30AE7D75E51423DF7E';
wwv_flow_imp.g_varchar2_table(59) := 'CB50DB487438B2EF8479693275726D42DA4C9F3C139034B0101213CD05201262021180189CA1BF2760D4545B3D8D5FF727067DD544F39AFAD5432F42FFA039916808762882BAEC7E6B87517B5579B5118F27A2281E404CF4BC56ACF434DADB834062ADD0';
wwv_flow_imp.g_varchar2_table(60) := '1E1D325E2A4E6C05F825806E687949851E8D7B5F5C5002C585C55A7E9C697FEDE4762D2EC3D7EE137F3266FF8B7DC550E80DEB99886E134BCD9B8602FD8390697F2692081622F3120108403BD01F7D0F3F76E664AA9D65B956DEBA77534A260393D1C35A';
wwv_flow_imp.g_varchar2_table(61) := '066FFBDDBAF7F746D275D3DE63C413890C258D414E028994A7BCC9214004901C6E0995524378651B2E92939D03C0929B83AF2C9D0CF979F9809FABED57E0CD73AF61D4D170F0EC6EB8D6117E5B91972F6B56945525A50FAE8664455603504028686286C7';
wwv_flow_imp.g_varchar2_table(62) := '14EC418008C01E5CA3A45A87B3380118753291034E1CD65140CBDEA713291D9537390A8A12A11DB4ECFBADB6C7AF59B575B84B3AE4E787C90D055831C3630AF6204004600FAED152F1C99F488AE2897DC75FE4F498BB9A4953411B45F09CA7CE1F4FFA8D';
wwv_flow_imp.g_varchar2_table(63) := '3EA9F87D3D7C7E0F9CBE107E4F01EA5433B1966B95FC96A584EF78D4245830D38ED3F84B66D5890064F64E0CDDF00EBA1953CC25C4A776AC077C0B6F8CACB626E1BB097EFDD263461D336BAFE35736A91A57186229623302440036036C87F869936719A3';
wwv_flow_imp.g_varchar2_table(64) := '800BD7CEC2EE13DBECA8665499AF1EDF0257DA2F6979700DBFB6728616A7AFF442800820BDFCA5698B1366D7CF98ABC5F16BD3CB4F40FFA0B85B687B033DF0BB5DBFC0AAB5F09E99730075D20EE82BAD102002482B7799CA4EA9A8059F17DFB603D0DDDB';
wwv_flow_imp.g_varchar2_table(65) := '05CFEE353BA499CB9ED8B37B371AEBFE45BE22A81EE7B5BF3D5ACA2155762D880064F7D088FA31985FB7D038FBE2FEE7E1E495C3C6B15D916397DE841D07B618E2E7D72D32E214493F048800D2CF6786C6654513A1B2BCCA38DED0F27D5B2F0570E88F75';
wwv_flow_imp.g_varchar2_table(66) := 'E8154E9E540D25BE09FA21EDD31001228034749A5565EB4342AD9D5761D36BCDD6D3298D3FB3FB31E8E836FFF36FF224F3F9845454A41A0F4BA7421AC9880701228078509234CFE5D60BB0EFD0EB51DAED3CB8158E5E3A1895968A8323E7F7013E846495';
wwv_flow_imp.g_varchar2_table(67) := 'B5EFADD70175B0A68D27CE808DA7B87465D34121228074F0520C1D4F9E3B0ABB0FBE12F31E80F52F7C17DA7BAFC528955C526BCF65B00EFD7529782F00EA80BAE869B44F2F048800D2CB5F7C90ACC281A37BE0AD636F1A9A7BB21428AF29028F27ECCEAE';
wwv_flow_imp.g_varchar2_table(68) := 'DE4EF8E9E66F41203860E449363230D80F3F79FE5BD0D3D7AD89C03AB4BA789D5A02FF425DDE3CB64FD38D1FD2964608845B4C1A29EC6655078301FEABBF13CE9C3F6DC09095E38189538B21273F1B4AAB0A8DF4D3174FC12F77FDD8384E2682AFE8DAF8';
wwv_flow_imp.g_varchar2_table(69) := 'D2F7E0FC95778DE25807D6857562DDFA8977CE9DD2741B0C0EEA49B44F03048800D2C049A822BE0360D7BEED70A535FCE41DA6E57AB361E294625022BFFC39F9595058968FA7B4F0DA915DB0EDF0262D3EF42B9EABEDAD879E8603C7CC3986C2322F279A';
wwv_flow_imp.g_varchar2_table(70) := 'F03B0CB14EAC1B75D065A36E2FEFDF0E7D913703EBE96EDCA78BCD4ABA28EA663DDBBB5A61E79E6DD0D5D365C0E02DCA8509D545C094E8AE5C38C10BD64EF9CC8E2760CF29F36D3DBA80E88781A28F30CFEE93DBE0772FFF12A35A40998513F2B5B8FE85';
wwv_flow_imp.g_varchar2_table(71) := '75A30EA88B9ED6D9DD093BB8AE1DDDE66A817E8EF6F2214004209F4FA234BA78F52CECDAF7220C04CCEBF922DEC94B2A7C51F9AC07384CCFCAF61849CD9B7F003F7C6E0D3CF7C6FFC1D643CF68E1D405F30F3C4FF2B89EFEDC815FC20FFEB81A9E68312F';
wwv_flow_imp.g_varchar2_table(72) := '1F5016CA34040E89A02EA8939E8CBAEEDCFB225CBC76564FA2BDA408100148EA1854EBF89923F0FAA1DD516FFE29ADF481CF32CCC77C4383C2470565930B0187E9FAB9A3EF1E86E75E7D0A36EDFA85164E9D3FAA9F028CEBE9CFFDF937708CD7AB9F543C';
wwv_flow_imp.g_varchar2_table(73) := '0C34595CA69E166B8F3AA16EFA39550DC1EB6FEE86E367DFD693682F21024400123A455555D8FF97D7E0C809F3D65EECD4E535C5905F981B97C6384187137539B9E16BF6B80A0DC994CDCB4E9C5A02286BC8A99887A81BEA88BAEA198E1C3FA4AD5AA04D';
wwv_flow_imp.g_varchar2_table(74) := '7A5AA6EFD3C93E2200C9BC15181C80570FEE80B317CF189A69CB7C7CB20F27F98CC438225A39BE4250C657077CA5F990579003B97CB500832732718862308E6918300FE6C53248202803F3C41B50C772AEABB51CAE5AA04DB88A11AF1CCA270601220031';
wwv_flow_imp.g_varchar2_table(75) := '38C7550BAEB5EFDCB70DAEB55D35F2676BCB7CF1FF0A1B052D913C5F0E14957BB5A1FC849A22C090CBC940CF82E7310D4319BF74C0BC98A69F4F748F2306240FD45D2F8B36EDE2AB18B442A02322C79E08400E3FC095F68BB073EF36E8E935FF25177F8D';
wwv_flow_imp.g_varchar2_table(76) := 'CBF92FB8C2AFC32551336E3570FE0175C7D503BD10AE62E00A01DAAAA759F7F42C80150D317122003138C7AC6520D00FED7CB9ECC0DBAFC39F0FBC0C8141F3CF430A8AF3B45F6CC658CCB2E34DB4496C945A8C316DA9126DD14FE00A01DA8A36A3ED8881';
wwv_flow_imp.g_varchar2_table(77) := '7E2E13F6E966031180608FB5B65F833FBCF48C165A5EF9A3B6BE7FE68279A71DAA8343F0E2490518B52DF07946DB640F158CB6589709F13CDABC73CF36400C743CDA3A5AF114058108100108009BB1F87EC5F19A1967D17112CE6EB598C5F371AA372E95';
wwv_flow_imp.g_varchar2_table(78) := '7099106DC3F9817804B131961DE3914179C646C0D20CC6CE4C39924300AF83AD4B6343A5E0725BF1C40298585B02388B3EF4BC1DC7F97C6250979BE7CBD5A3B6EED1B649DCC6E2F202409B47AA0CB1CAF5E68C749AD253880011400AC11C499492A540C5';
wwv_flow_imp.g_varchar2_table(79) := '8C52ED89BD723E0BAF878A69A530F9BA098033E60525792315B7253D872F0756CE2883CA9965C2484737A4A0344FB3196D470C743CF43DEA948E139FBA7DE9B45744281B642CFACFF144542A591D8C31DED1B2A382275B71544BEC64F86BEBA412880192';
wwv_flow_imp.g_varchar2_table(80) := '913538A98F34752B8A79EFB78D4A0969811E22001B5D48A2331181E080981F4D210420CA984C6C0864933B11C8523288004419E3CEA64256CB8040AA7560F901216F5611320210654CAA9D40F20801A71008F466D0082010CCEA750A48AA9710484B0472';
wwv_flow_imp.g_varchar2_table(81) := '3C9933090893BACD1BDCD3D21BA43421201801417D46C825807FEEAF91CDFA054348D511024210B0A192FE489FB14174B448210410AE52BD10DED3372140088C8E80B8BE229000142280D1BD4E6709810802CAA948C4F69D627B0D660544002616142304';
wwv_flow_imp.g_varchar2_table(82) := '464340585F1147000C8E8C66319D2304D211015B74669079230006B01FE843081002632220B2AF081B018482400400F42104C64640645F114600F0CA347C417C686CF3290721E06A047A227D450808C208C0EFF7F3CEAF9AFF4621C43CAA8410B00F017B';
wwv_flow_imp.g_varchar2_table(83) := '24B383E1BE628FF4A152851140B862852E03C240D03721101B011584F61105047E980ADB813E840021302202220176E988000006134944415427005109A10410CC0E3CCB2B5579A08D1020048623A00641F9DDF064FB52841240D39D3F3F034C7DC33E73';
wwv_flow_imp.g_varchar2_table(84) := '4832212006015B6AE17DA369E563E76C913D8250A10410D641793EBCA76F4280108846407CDF104E00AA0A4400D15EA72342404320A4C26F41F04738015495E6EC0250DF116C27554708C88EC0699675EA75D14A0A2780CFDFF8680040D920DA50AA8F10';
wwv_flow_imp.g_varchar2_table(85) := '481502F6C861EBFD776E1FB447F6C85295914FD977C6A378D673E9B41AC041A08D10E0080C8620F818DF0BDF1C21806FDEF5337E09C0360BB7962A2404A44480FDA1A97EE3692754738400D050FEF3FF6DDC532004DC8E00EF0BDF730A03C708C05FBF61';
wwv_flow_imp.g_varchar2_table(86) := '3B007B01E84308A41102A95795BD10EE0BA9971C8F44C70800956341E56BB8A74008B8150106F055276D779400D6DCFDD80100B609E84308B81201B6694DFD86834E9AEE2801A0E16A70F061BEEFE2813642C04D08742B8AFA15A70D769C00FC773F718C';
wwv_flow_imp.g_varchar2_table(87) := '015BED3410543F21301602A93CCF54F6F0EABB9A8FA7526632B21C270054FAFAD6EE1FF2FD4E1E682304DC80C0AE352B37FC440643A520804F7CE2D74135187C90034297021C04DA321A013EF48755B25828050120187829C0F70D3C8478A08D10C84404';
wwv_flow_imp.g_varchar2_table(88) := '42A0AAF7CB30F4D7C195860050A1C6FAE6DFF0F9807FC138054240260452A10B6FDB5F695CF9F833A990952A195211001AC59745F00E417C56000F29100299810063DFE76DDBB13BFE4602513A0240452B4B733F0F2AB4609C022190F608307846DD39ED';
wwv_flow_imp.g_varchar2_table(89) := 'CB32DA212501E023C36A7FEE4719A84FCB081AE94408C48F00DBA4F6E6DEE7F7E36BF1E32F252AA7940480C6FB3FFC68CFEA158FFFAD0AF0081E5320049C4220E97A55F8D69A151B3E866D3969193617949600D06EC68700FEFAE6D50C00974D82984681';
wwv_flow_imp.g_varchar2_table(90) := '104803040680C17D8D2B9BBF816D58667DA526001DB835F5CD8FB350681980FA173D8DF68480A4081C0CA9A1658D2B9A7F2EA97E516AA50501A0C66BDEBFF1CF6A96B208803501408007DA080199100880AAAEE313D84B9A566E14FE6EBF648150922DE8';
wwv_flow_imp.g_varchar2_table(91) := '4439FF9D1BFA1AEB37F855A6CEE343ACDF3BA103D5E92E04E2B0963747784A0D06E7F035FE3538811D471969B2A41501E8A8F9573CFE361F627D84A9701B4FDBC5036D84807004F8DCD4763E4DB564CDCAE67B2377B20AD761BC15A62501E84673E07735';
wwv_flow_imp.g_varchar2_table(92) := 'D637DF1602760B9F1FD8C8D3FB79A08D10B013016C633FC71F1F3E3775E79AFAC7F7D95999DDB2D39A0074709AEA37BCDA58FFF8036AD6400D67657CC38AE38F59EABAD13E631038C1187C0DDB58637DF37DF8E3930996650401E88EF0DFF9E49535F5CD';
wwv_flow_imp.g_varchar2_table(93) := 'DFE10E9A0510BA5B05F6637EEE5D1E68230412468017C0B6F33FC0D84ADEA666AE59D1FC1FD8C6787AC66C19450056AF34D66FC4972DFE2377DC5416F42CE22383D5C0E0259EA79B07DA08815808746B6D84B135AACA6EC0B6C3C33F34AED890B1B7A567';
wwv_flow_imp.g_varchar2_table(94) := '2C0158BD8BEF1E5C53DFFC48E38AE63BB8437D2AF3CCE4F3067FA332580BE17712EE0700A1FFCACAEBA3CD3904D0D7DCE76C13B6016C0B8A02B3B06D686D64C58675FE951BF879E7141455B32B08602898FE158F9DE0F3064FFB57343736D66FF868637D';
wwv_flow_imp.g_varchar2_table(95) := '33B27D35DFB3D240519E9AC54A79A8F2E42853959CD00C4565752A53E68698BA505594252C043752900F03F48DE623EE2BF419FA0E7D88BEE4A1147D8B3EE6017D7D4323F73DB6016C0B323DA33FB4BDDA79EC4A02180DD02F7EF087FDFE3B37B4F170E1';
wwv_flow_imp.g_varchar2_table(96) := '9B77AC7F77F51D1B4FAE5EB9E1A87FC5FAB79A563CFE86FFAEF57BD7BCBF790F05F93040DF683EE2BE429FA1EFD087E84B1EDAD0B7A3F9DE7ACE2D712200B7789AEC2404622040041003144A2204DC820011805B3C4D7612023110200288010A25B91B01';
wwv_flow_imp.g_varchar2_table(97) := '37594F04E0266F93AD84C0100488008600428784809B1020027093B7C9564260080244004300A1437723E036EB8900DCE671B29710B0204004600183A28480DB102002709BC7C95E42C082001180050C8ABA1B01375A4F04E046AF93CD84400401228008';
wwv_flow_imp.g_varchar2_table(98) := '10B42304DC880011801BBD4E361302110488002240D0CEDD08B8D57A2200B77A9EEC2604380244001C04DA0801B7224004E056CF93DD84004780088083409BBB1170B3F544006EF63ED9EE7A0488005CDF04080037234004E066EF93EDAE478008C0F54D';
wwv_flow_imp.g_varchar2_table(99) := 'C0DD00B8DDFAFF070000FFFF9D44EC1B000000064944415403009DD594C4FB2EEC7B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8662902503770021)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000227494441547801EC94CD6ED34010C7FF6E633B4ED3C6D42EA945C387DA0AF121D123822B42BC0537907803B8F51D780684B871690F1C0A882248E01224E41621';
wwv_flow_imp.g_varchar2_table(2) := '11C982439C341F6D13DBB18D772B9B7269765DA9952A5BFAEFCCCE8E667E1A7B3DB1FAE661789A9AC0293F194036816C02C79A80DB0D40749C9B9C1AC0EB875859BC4D45FCB410A9009C7D0FCBC64DC8629E6AC9B80177304AC5C00F1002C3CE08EDAE8D';
wwv_flow_imp.g_varchar2_table(3) := '9FD616D54EB78541C73B1980E19E8BC70F9EE1C9BDD5FFF4E8FE5390C9F052704F40461197B5AB707D072F369F53119FC4A4A0C0DB1FDC0097F465DAA43768439B99A3EA0F3B100401156D899EF12CDC006A41A7F5F5A281726901F36A05DA5499C64A8A';
wwv_flow_imp.g_varchar2_table(4) := '462DCFC20DE07AC3A4FECAC5BBB855B993EC7D9FFF43E402D8EF39B0EC46D270CFE981280E58F62F0CA29C78CF629901C817BE38771DD1BF2FA9DBDCFD8DE6EE1FBA0FC3105EE0E08A7E8DEB363003140415F3B317509A5651B73ED3A68797BAF5099AAA';
wwv_flow_imp.g_varchar2_table(5) := 'C3D016A060E6F0D1913E33C09454A485CA11C45AED2546C1BF3F9FE7BB58FFFA0AE7CF1934A7284F53CBB23003C4C50441405E91F1F6FBEB38848DC857943CBD8A0741E1C030AC5C00E43D9B8D3AFAB0F17E6B0DD51FEF50DDDEC087ED75F4C226CCC637';
wwv_flow_imp.g_varchar2_table(6) := '901C86BE490A3340AB63A3666EA22FB420CA3914664598ED2ACC9D5AE44B3446C0BE981F4172930E631C660051F321AA0172E2645252524410C5819C34899C1AE545B9716C9C6506185728ED7906904DE0EC4F60DCEDF80B0000FFFF9E22E07900000006';
wwv_flow_imp.g_varchar2_table(7) := '494441540300F75C0C9094CF4EEC0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8662065797770012)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD099464575ADFF9BD888CDCF73D6BDFA4AA52955455DA5A929B6E680F18B0193718637CC067C6C3D89CC370663C073C3E87E301337DEC06';
wwv_flow_imp.g_varchar2_table(2) := 'CE8C318CC1D82C8D816EDC34F4AAA6BBE9456A2D552A956A916A55956A53ED4BEE4BEC917E5F9452CACA8A77DF8BC858DEF2CBCAC88878F7BBF77EDFEF46C5FBBFBBBDD8AF7EF37F5AE401033E037C06F80CF019E03310ADCF404CF88100042000010840';
wwv_flow_imp.g_varchar2_table(3) := '206204441000916B7202860004200001082000F80C4000021080000422474003A6074029F080000420000108448C000220620D4EB81080000420107502F7E24700DCE3C05F08400002108040A408200022D5DC040B01084000025127B0143F02608904CF';
wwv_flow_imp.g_varchar2_table(4) := '108000042000810811400044A8B109150210800004A24EE083F811001FB0E015042000010840203204100091696A02850004200081A813581E3F0260390D5E4300021080000422420001109186264C0840000210883A81FBE34700DCCF83771080000420';
wwv_flow_imp.g_varchar2_table(5) := '00814810400044A29909120210800004A24E6065FC08809544780F0108400002108800010440041A9910210001084020EA041E8C1F01F020138E40000210800004424F000110FA2626400840000210883A8152F123004A51E11804200001084020E40410';
wwv_flow_imp.g_varchar2_table(6) := '00216F60C2830004200081A813281D3F02A034178E42000210800004424D000110EAE625380840000210883A01A7F811004E64380E0108400002100831010440881B97D0200001084020EA049CE3470038B32105021080000420105A020880D0362D8141';
wwv_flow_imp.g_varchar2_table(7) := '0002108040D40998E2470098E890060108400002100829010440481B96B0200001084020EA04CCF12300CC7C4885000420000108849200022094CD4A5010800004201075026EF12300DC08910E0108400002100821010440081B9590200001084020EA04';
wwv_flow_imp.g_varchar2_table(8) := 'DCE34700B833C202021080000420103A020880D0352901410002108040D40978891F01E0851236108000042000819011400084AC4109070210800004A24EC05BFC08006F9CB082000420000108848A00022054CD493010800004201075025EE347007825';
wwv_flow_imp.g_varchar2_table(9) := '851D0420000108402044041000216A4C42810004200081A813F01E3F02C03B2B2C21000108400002A1218000084D5312080420000108449D4039F12300CAA1852D0420000108402024041000216948C2800004200081A813282F7E044079BCB086000420';
wwv_flow_imp.g_varchar2_table(10) := '000108848200022014CD48101080000420107502E5C68F00289718F6108000042000811010400084A01109010210800004A24EA0FCF81100E533230704200001084020F0041000816F4202800004200081A813A8247E044025D4C8030108400002100838';
wwv_flow_imp.g_varchar2_table(11) := '010440C01B10F7210001084020EA042A8B1F015019377241000210800004024D000110E8E6C3790840000210883A814AE34700544A8E7C108000042000810013400004B8F1701D0210800004A24EA0F2F8110095B3232704200001084020B0041000816D';
wwv_flow_imp.g_varchar2_table(12) := '3A1C870004200081A813584DFC0880D5D0232F04200001084020A0041000016D38DC860004200081A813585DFC0880D5F123370420000108402090041000816C369C860004200081A813586DFC0880D512243F0420000108402080041000016C345C8600';
wwv_flow_imp.g_varchar2_table(13) := '04200081A813587DFC0880D533A40408400002108040E008200002D764380C01084000025127508DF81100D5A04819108000042000818011400004ACC170170210800004A24EA03AF12300AAC391522000010840000281228000085473E12C0420000108';
wwv_flow_imp.g_varchar2_table(14) := '449D40B5E24700548B24E5400002108000040244000110A0C6C2550840000210883A81EAC58F00A81E4B4A820004200001080486000220304D85A31080000420107502D58C1F01504D9A94050108400002100808010440401A0A37210001084020EA04AA';
wwv_flow_imp.g_varchar2_table(15) := '1B3F02A0BA3C290D02108000042010080208804034134E420002108040D409543B7E0440B589521E04200001084020000410000168245C840004200081A813A87EFC0880EA33A54408400002108080EF0920007CDF44380801084000025127508BF81100';
wwv_flow_imp.g_varchar2_table(16) := 'B5A04A99108000042000019F134000F8BC81700F0210800004A24EA036F123006AC3955221000108400002BE268000F075F3E01C0420000108449D40ADE24700D48A2CE5420002108000047C4C0001E0E3C6C1350840000210883A81DAC58F00A81D5B4A';
wwv_flow_imp.g_varchar2_table(17) := '86000420000108F8960002C0B74D83631080000420107502B58C1F01504BBA940D010840000210F0290104804F1B06B7200001084020EA046A1B3F02A0B67C291D021080000420E04B0208005F360B4E410002108040D409D43A7E0440AD09533E042000';
wwv_flow_imp.g_varchar2_table(18) := '010840C0870410003E6C145C820004200081A813A87DFC0880DA33A60608400002108080EF0820007CD724380401084000025127508FF81100F5A04C1D108000042000019F114000F8AC4170070210800004A24EA03EF12300EAC3995A20000108400002';
wwv_flow_imp.g_varchar2_table(19) := 'BE228000F05573E00C0420000108449D40BDE24700D48B34F5400002108000047C440001E0A3C6C0150840000210883A81FAC58F00A81F6B6A82000420000108F8860002C0374D81231080000420107502F58C1F01504FDAD405010840000210F0090104';
wwv_flow_imp.g_varchar2_table(20) := '804F1A0237200001084020EA04EA1B3F02A0BEBCA90D021080000420E00B0208005F34034E400002108040D409D43B7E0440BD89531F042000010840C0070410003E68045C800004200081A813A87FFC0880FA33A74608400002108040C30920001ADE04';
wwv_flow_imp.g_varchar2_table(21) := '380001084000025127D088F811008DA04E9D108000042000810613400034B801A81E0210800004A24EA031F123001AC39D5A210001084000020D25800068287E2A870004200081A8136854FC08804691A75E08400002108040030920001A089FAA210001';
wwv_flow_imp.g_varchar2_table(22) := '084020EA041A173F02A071ECA919021080000420D03002088086A1A7620840000210883A8146C68F0068247DEA8600042000010834880002A041E0A9160210800004A24EA0B1F123001ACB9FDA210001084000020D2180006808762A85803F082C2EFAC3';
wwv_flow_imp.g_varchar2_table(23) := '0FBC80401409343A660440A35B80FA215067028B8545999B48CAF8D519FB312D739349C9E70A75F682EA2000814613400034BA05A81F027524904DE7E4F6E52999195F9074322B99544E66EE2EC8DD2BD392B55FD7D115AA8240C409343E7C0440E3DB00';
wwv_flow_imp.g_varchar2_table(24) := '0F20501702A9B98C4C5C9F2D79B5AF3D00E3769ADAD4C5192A8100041A4E0001D0F026C00108D49E407A212B53B7E64A9EFC976A2FE40B327D7B5E10014B44788640ED08F8A16404801F5A011F205043020BD3E9E2957FC11EFB77AB266F8B80C91BB3B2';
wwv_flow_imp.g_varchar2_table(25) := '30937633251D02100838010440C01B10F7216022303F95B2C7F8E765B18CE9FEBA30407B027472A0A96CD22000814A09F8231F02C01FED801710A83A013D814FDF99172F57FE2B2B57C1A0930375B5C0CA34DE430002E120800008473B120504EE23A027';
wwv_flow_imp.g_varchar2_table(26) := '7E3D81DF77B08237BA5A407B032AC84A160840C081805F0E2300FCD212F801812A10285EB9DF5910EDFAAF4271C522E6A75332756BBEF89A3F10804078082000C2D396440201991D4FCADC54D21389D6449B3435C53DD92ECCA464C61E4EF0648C110420';
wwv_flow_imp.g_varchar2_table(27) := '6020E09F2404807FDA024F205031019DE337756BAEB8AB9F974206FA07E5B93D1F9167F77E8F8C0DAEF192C5161688004FA03082404008200002D250B809012702DAED3F3BBEE079E9DE60DF90ECDBFE94B4B5B74B777B9FECDAB64786FA879D8ABFEFF8';
wwv_flow_imp.g_varchar2_table(28) := '5C7155C1C27DC7780301087827E0274B04809F5A035F205001019DA4A733FEBD641D1E1895271F79565A12ADEF9BB734B7168F8D0E8EBD7FCCF442EB52C161B2210D0210F03F8198FF5DC4430840A01401BDF2D76EFF058F9BF6E809FEF1ED4F4B3CFEE0';
wwv_flow_imp.g_varchar2_table(29) := 'B87F2C1693471FDE276B47D697AAEA8163B31349D1BA1F48E00004206020E0AF240480BFDA036F20E089809EFC67C7939EBBFDF5E4BF4F4FFE86497FCD4D2DB26BEB63323AE4AD2740854735961A7A0A18230840A0EA04100055474A8110A83D013DF96B';
wwv_flow_imp.g_varchar2_table(30) := '57BC979AD60CAF957D3B9E9658DCFDBF7BA2A9591EB76DD70C799C18389914360BF2D20AD84040C46F0CDCBF11FCE631FE4020E20416A6539ED7F98FD927F2C71E7A42627617BF576C96650F073CB44FD68F6EF494458703AAB9EF80A74A31820004564D';
wwv_flow_imp.g_varchar2_table(31) := '0001B06A84140081FA1148CF678B77ECD32100B75AF5E4AF57FEA5C6FCDDF236D93D018F6C7D54463D2C11545F742840EF38E8562EE910882E01FF458E00F05F9BE011044A1248CD678A13EFF4663D250D961DDCB066A3ECDDFE945896B5EC68792F9BE2';
wwv_flow_imp.g_varchar2_table(32) := '09797CE7D3764F80FBC44015017A17C14C325B5E25584300020D23800068187A2A86807702B94CBE78E5AFB7EB75CB3536BC46766DD92BE574FB3B956959963CB2758F6C18731F0ED09B0E4DDF5910F5D5A93C8E4320AA04FC183702C08FAD824F105846';
wwv_flow_imp.g_varchar2_table(33) := '209F2BC8F8B519D1E765874BBE1C1E18917DDB9FAECAC97FA902ED09D8B165B7E806424BC79C9EB3E99C684FC062C14B3F8553291C870004EA410001500FCAD401810A09E88974EAE69CA7937F7767B7EC79F8C95575FB3BB9998837CBE33B9E928E8E0E';
wwv_flow_imp.g_varchar2_table(34) := '2793F78F67EDDE0ADD23408705DE3FC80B08449A803F834700F8B35DF00A02450253B7E725ED615C5DD7F03FBEF343D29C682EE6ABC59F44A245F66E7F42DA5ADA5D8B4FCE653CAF54702D0C030840A02604100035C14AA110583D81F9A9942467D3AE05';
wwv_flow_imp.g_varchar2_table(35) := '35EBD5F9AE27A5A3ADD3D576B506BD9D03B2FBE1C7241E8BBB16A52B0374B32057430C201072027E0D0F01E0D796C1AF481348D957D0B3E3EE37DDB1AC987D42DE23033DDE6EE6530DA8C37D63F2E8C37BC5B2DC5718E87D0A745E4035EAA50C0840A0BA';
wwv_flow_imp.g_varchar2_table(36) := '041000D5E54969105835019DECA757CF3AABDEADB0471FDA236343EBDCCCAA9EBE7678833CBC79876BB93A0F60EAD6BCA7390CAE856100814012F0AFD30800FFB60D9E4590809EF475167D2E9B778D7ECBFA6DE275B73ED7C22A30D8B66E876C5ABBC535';
wwv_flow_imp.g_varchar2_table(37) := 'A7F6004CDF9A73B5C3000210A82F0104407D79531B049C092C4A715FFD4C2AE76CF35E8AEEF2B763D36EFB9D7B37BC6D54B3DF47B63C6AF740AC752D3FB59015DD32D8D5100308848C809FC34100F8B975F02D5204E6A753E2E5063FFDDD83B2FB216F63';
wwv_flow_imp.g_varchar2_table(38) := 'F0B5066859B1E2CA80FEDE41D7AA744E83EE66E86A88010420501702B1BAD4422510808091807693EB09D2686427B6B777C8DE9D8F8B2EFBB3DFFAE237168BCBDE1D4F48577BB7AB3F337716249B761FDE702D080308048280BF9D4400F8BB7DF02E0204';
wwv_flow_imp.g_varchar2_table(39) := '0AF982E844391DFF3785DBD4D4244FEC785ADA5ADC37E33195538BB4B6E676796CFB3E6949B4188BD7B90D3377E68D3624420002F5218000A80F676A81802381D9F1A47D55EC3EEEBFC73EC17677F63A96D3E884DEAE7E79F4E17DAE6EE8C646CC0770C5';
wwv_flow_imp.g_varchar2_table(40) := '84410808F83D040480DF5B08FF424D4037CAD1875B90DB36EC90D1FEFA2FF773F36B65FA48FFA86C5CBB69E5E107DECF8D2F78DAE4E8818C1C800004AA460001503594140481F20814BBC3EF2E88AE9537E5ECE9EC916D1B1E1269EC847FF1F46359B273';
wwv_flow_imp.g_varchar2_table(41) := 'D36EE9ECE8329A2FDAA9DAF3A17B1ED82FF985400809F83F240480FFDB080F434840C7FBA76FCD8B8EFF9BC24B342564DFCEA7241E6B3299F92A2D1E4F88DE33407D3739A60248770A34D990060108D48E0002A0766C2919028E04E62692AE37F9B12C4B';
wwv_flow_imp.g_varchar2_table(42) := '766CDD291D6DE6AB69C74A1A98D0D3D927BBB63DE6EA812E0BF472BF03D782308080CF0804CCBF5A8F0000100049444154C11D0440105A091F434520BD9095F9C9A46B4CEB4737CA8691ADAE767E35D0ED82C786D7B8BA375D5C1AE83E09D2B5200C2000';
wwv_flow_imp.g_varchar2_table(43) := '81B2082000CAC2853104564740C7BCA76ECE898E819B4AEAEAEC929D9B1F35990422EDD16DFBA4BBB3C7E8AB0E83E83248A311891008148160388B0008463BE1654808E84E7FF97CC1184D933DDEFFD8B6C745D7FD1B0D039098686A961D9B77893E9BDC';
wwv_flow_imp.g_varchar2_table(44) := 'CDA673323F9532999006010854990002A0CA40290E024E04F416BF0B1E4E72DB363D2CBDDDFD4EC504EEF850DF883CBCD1FDCE81BA41900A81C00588C310584120286F1100416929FC0C34015DEA37A34BFE5CA2181D1A932D6B1F72B10A5EF2C6B12D32';
wwv_flow_imp.g_varchar2_table(45) := 'DC3F6A745C87457469A0AE90301A9208010854850002A02A182904026602BA07BE2E7B3359B5B4B4D8DDE5BBC5B2C2F7DFD28A59F2E8C37BA5A3ADD38440745580970992C642488440430904A7F2F07DD304873D9E4684802E73D33BFD99C2B5C4923DDB';
wwv_flow_imp.g_varchar2_table(46) := '9F908E56F309D25486DFD35A9BDB64C7969D12B3E246577589642EC30D838C9048844015082000AA00912220E0444067FDCF4DBA4F6E5BBF66930CF58E3815139AE323FD6B65DD1AF396C63A14307D67DE7587C4D04021905011085230088020B516BE06';
wwv_flow_imp.g_varchar2_table(47) := '8E805ECDBA4D6CD36EF187363C1CB8D82A71D8B22C7968FD0E698A9B7B0174AF844C92BD012A614C1E0878258000F04A0A3B08944940BBB117A6DDAFFEB76D7A485A9BDBCB2C3DB8E61AEB8EADBB5C03D0550185BCF607B89A6200019F1008961B088060';
wwv_flow_imp.g_varchar2_table(48) := 'B517DE0684C0626151BCCCFA1F1E1C9235831B021255F5DCDC38BA450607068D056633795111603422110210A8980002A062746484803381D442B638A3DDD942246EC564C7E64725663F9BECC29966C9C31B77DA43010963780BB369711B423116402204';
wwv_flow_imp.g_varchar2_table(49) := 'EA48206855210082D662F8EB7B02BAE65FC7FEDD1C5DB7768374B599B7C9752B23C8E97D9D83B265C316D7107412A5327535C4000210288B0002A02C5C1843C09D806E66E376D5DAD9D1599C0CE75E5AB82D36AF79485A9A5B8C41EA324ADD45D1684422';
wwv_flow_imp.g_varchar2_table(50) := '041A4E20780E200082D76678EC6302BAD98F973DED776EDD2D2D89361F47521FD79AE209D9E96542A0EEA2B8C884C0FAB40AB544850002202A2D4D9C7521A0277FB7EEEA91E15119EC09FF9A7FAFC07512E4E0E080D15CF75398F7B09F82B11012215043';
wwv_flow_imp.g_varchar2_table(51) := '02412C1A0110C456C3675F12D0B5EB0BD369A36F969DBA63D3AE884EFCB3832FF16B59966CDFB8CB7542E0EC445274754589223804010854400001500134B240A014019DF8E776F5BF79C356E96CED2E953DD2C77ADB0764EBA66D4606CA566FA76C3422';
wwv_flow_imp.g_varchar2_table(52) := '11020D2110CC4A63C1741BAF21E02F02996456F461F2AAA7B347368E6C157E4A10B0BB46D60EAC97F6D68E12891F1CD21E16B709961F58F30A02103011400098E89006018F04BC6CFA33D83B222D89D66237B67665F358FC80457E519A9B5A656C60AD91';
wwv_flow_imp.g_varchar2_table(53) := '783E5F90E48C7998C558008910A80181A0168900086ACBE1B76F08E812B54C2AE7EACFF9AB67E59BAF7D555E3CFC37F6E39BF2E21BF6338F2287176C0ECAE6FCB5B3AE1CB517402705BA1A62000108180920008C7848848099805EC5EBCC7FB3D507A9F9';
wwv_flow_imp.g_varchar2_table(54) := '425E16920BF6635E1652F6338F2287647A4194CD07A49C5F15161745E75B385B9002817A12086E5D0880E0B61D9EFB8040722EE33AF6EF033743E7C2823D0CC05C80D0352B01D5990002A0CEC0A92E5C04F44A94ED69EADFA6BA22A09C9E97FA7B488D51';
wwv_flow_imp.g_varchar2_table(55) := '2110E4381100416E3D7C6F28011DFBD79DFF1AEA44842B4FCD6644F75E8830024287C0AA08200056858FCC5125A063FFAC496F6CEBEB5C8085E954639DA0F688130876F8088060B71FDE3788805EFD7B99F9DF20F722536D6A3E2BAC08884C7313689509';
wwv_flow_imp.g_varchar2_table(56) := '2000AA0C94E22240C01EF49F9B72BFF26C6FEB105DFBCF63A4420EC3D2E1B23190CE05D0098111F8D411A20F0904DD250440D05B10FFEB4E209DCC4A2E9337D6FB913D3F209FFCE94FC9FFFD0FFF238F0A19FCF23FFC1DF9C44FFDBE7C78F7F71B59EB30';
wwv_flow_imp.g_varchar2_table(57) := '0073318C8848844049020880925838080167023AFB5CAF3C9D2CDA9ADBE5896D1F16CBB2EC87F0B02A6320763EBD5DF0F7ECFA3BD2DED22E4E3F3A04A013029DD2390E81DA10087EA90880E0B72111D491805EF9A7E633C61A37ADD926EB7BCD37B63116';
wwv_flow_imp.g_varchar2_table(58) := '40E27D04063BC7E4E10D8FDE776CE59BF9E954715BE195C7790F01083813400038B32105020F10701B6FD62BD667777ECCF5D6B60F14CC0147028978B33CB3FD7B1DD335417B011666B94780B2E0511F0261A805011086562486BA10C8A6F3A2E3CDA6CA';
wwv_flow_imp.g_varchar2_table(59) := '06BA8764EBF02E9309691510D834B85DD60D6D34E6D4A11959349A900801082C23800058068397103011482F64A450309D612CF9D0231F95AE965E5331A45540A035D1214FEEF8B031A70ECF64D3EE376532164222043C1108871102201CED4814752090';
wwv_flow_imp.g_varchar2_table(60) := '9ACF1A6BE9EF1E90DDEB9F34DA905819819815932737DBE2AABDDB5880DE9BC16840220420F03E0104C0FB287801016702D9544EF4E16C21B273E36332DABDC16442DA2A08743477C99EAD4F1B4B48CF67842581464424568140588A400084A52589A3A6';
wwv_flow_imp.g_varchar2_table(61) := '048AB3CC179DBBFFE3B1B8ECDBFA5C4D7D887AE1F158933CB3FD6F1B31E8304026C9308011128910788F0002E03D103C41C08980CE30D7AD7F9DD2F57871E95F1F4BFF94452D1F23DDEB64DBFA1D8E55A844736B2BC7CC2440C01381F0182100C2D39644';
wwv_flow_imp.g_varchar2_table(62) := '5223029964D665F29F882EFD6B4B74D4C8038A5D22D01C6F918FECFEA1A5B7259FD30B59EE0F50920C0721703F0104C0FD3C7807810708B85D51AE195C2F0F8D9837AA79A0500E5444C0B2AC22EB9E0EE79516BA4B63923D012AE24B26770261B2400084';
wwv_flow_imp.g_varchar2_table(63) := 'A93589A5EA04743C591FA68275625A5FFB90C984B42A12684F74CAB3BB3F662C31399366674023211221208200E05300010301EDFECFE70B8E163D1D7DF2E886A71CD349A83E01CBB2E443DB3E2689A626C7C2B399BCE884404703122050118170654200';
wwv_flow_imp.g_varchar2_table(64) := '84AB3D89A6CA04DCD695EFDCB447D6F56EAD72AD14E746407B5C766F79C268A673018C06244220E204100011FF0010BE3381827DE59F73D9596EF746FB24643997E1C7145DCD5858CC4B369F915C3E2B85C582E8313FFAEAE4936E0CF4A187BFCF29B978';
wwv_flow_imp.g_varchar2_table(65) := '3C359F11F3CE8D4533FE40C03381B0192200C2D6A2C45335023AF94F9795391538DABB56D6F66D764AF6CDF1D9F4949CBF7B42FEFAF8A7E5532FFD86FCFEB7FF9DFCCED73F21FFF1F95F95DF7EFE57E477BFFEFFC8EF7FE793F25F5FFEF7F2EDD39F9777';
wwv_flow_imp.g_varchar2_table(66) := 'EE1E97D9F4A46FFC777264E3C043D29268754A2E0E01B86DDEE4989904084480000220028D4C88E51358B42F8993B3E6DBFE6E18D92A031D23E5175E871C7A557F67EEBA7CE3F85FC81F7EF3FF95FFFC95DF90AF1FF8A21C3D73484E5C382AE7AE9C948B';
wwv_flow_imp.g_varchar2_table(67) := 'B7CECAA55BE7E4ACFDFAC4F92372F8F401F9D2CB7F2EFFFF173E51CCF3ED935F90DBB3D7EAE06D6555B426DA65D7E6BD8E99F5EA5F7B011C0D4880405904C2678C00085F9B12511508E8E63F99947947B9AD6B9D37A4A9820B151731317F5BBE75E2F3F2';
wwv_flow_imp.g_varchar2_table(68) := '5B5FFC15F9EA81CFC985EB6F4B2A9BF45C9E8A9F0BD7CFCA975EFD8CFCA7E7FF5DB1ACA9E45DCFF9EB65A83B03EEDCB0CF581DF3008C78488C38010440C43F00845F9A809E38F444583A55A429DE241B06FDB5F39F5EF59FB9714C7EF7F97F2BCF1FF8AC';
wwv_flow_imp.g_varchar2_table(69) := 'CC2C4C39B9EFF9F8F8EC6DF9F2FE3F2F9679F4F22B9EF3D5CB70DBC82EB12CE74918F94C5EF259E7551CF5F2937A824F208C11C4C21814314160B504320BE63BFF3DBC7EB7F4B60FAEB69AAAE5CFE452F2DD53CFCBEF3DFF49B93D7DBD6AE52E157473F2';
wwv_flow_imp.g_varchar2_table(70) := 'AA7CFADBBF272F9CFAB2E40AE69E91A53CF578EE6D1B94A19E51C7AA740E477AC13C94E398990408849C000220E40D4C78E513D0EEFF6C3A6FCCF8F0DA5DA277A7331AD52931999D97E70FFFB97CE1D53F15ED05A855B5995C5ABEF0CA9FCA970EFD8964';
wwv_flow_imp.g_varchar2_table(71) := '6CC151AB7ACA295757033CFED0B3C62C695BCC2D16540A18CD488480814038931000E16C57A25A05013D61A8083015B16564A729B96E69997C5ABE7EE473F2E29B7F5DB73ABFFBE6D7E4AF8FFCB7BAD567AAC8B22C7964FDE3C661002FED69AA83340884';
wwv_flow_imp.g_varchar2_table(72) := '95000220AC2D4B5C151348CF67C434FEBF7E78B3F4B4F7575C7EB532EAD5FEEBEFBC282FBCF9D56A15E9B99C176C11F0E2A9AF78B6AFA5E158EF06E968EF74AC425703B02BA0231E123C1008AB090220AC2D4B5C1513709BFDBF79EC21D1B1E78A2BA852';
wwv_flow_imp.g_varchar2_table(73) := 'C68B77CEC85FBDFC29CFA50D740ECA533B9F931FF9F04FC84FFDC0CFCACFFCDD7F517CE86B3DA669FDB68D970217170BF2FC6B9F95B76FBEE9C5BCA636CDF156D9BE6EB7B18E74326B4C271102512480008862AB13B3238142BE20859C79D6F8D6B19DC6';
wwv_flow_imp.g_varchar2_table(74) := '2E67C7C2AB9830939A94CFBFFCC7922F98E72A6895FD5D83F2FD4FFF887CFCA33F2D7AE3A291DE35D2D6DC66C720C587BED6639AF6A3B6CDF73FF523A279C4E527934BCB175FFD334965175C2C6B9B6C59963CBAC97C3F06B7391DB5F590D2834D20BCDE';
wwv_flow_imp.g_varchar2_table(75) := '2300C2DBB6445601814C3227A6E962BD76D7FFBAFE2D15945CDD2CC72F1F922BE3975C0B7D64F31EF9D18FFCB46C1CDE5A3CD9BB65B0CFA5B271646B31CFCE4D8FB999CB35DB87D7DF79C1D5AED6065B877749CC8A3B5693CFE68B3B033A1A9000810812';
wwv_flow_imp.g_varchar2_table(76) := '400044B0D109D999804E18734E15D930BAC5EEFE1F3099D43C6D72E18EBC704CC7FD4D5245E4899DCFC873BBBECFD3897FA5D32A04FED6EE8FC9E376192BD356BEFFE6E12F8BF648AC3C5ECFF7DDAD7DB27668BD6395DAABA3777674342001020E04C27C';
wwv_flow_imp.g_varchar2_table(77) := '180110E6D625B6B208E886316E27896D6B1F9144BCA5AC72AB6D7CE6DA31D7B5FEBBB7EE957D5B9F5975D58FDB65ECB2CB321534BD302187CEBF6832A9799A6559F2D816E76100954A6EE2AEE64E5201047C460001E0B306C19DC611C86937B161D7B858';
wwv_flow_imp.g_varchar2_table(78) := 'CC92ED6BF634CE41BBE685CC9C1C3EFBAAFDCAF977B077489ED9F9BDCE0665A63C6B9735D03364CC75E4DC01637A3D1277AD7F42E296F3579A4EEE5C5C5429500F6FA8231C04C21D85F3FF9670C74D74107880802E15339D20368E6E958E16E7E5660F14';
wwv_flow_imp.g_varchar2_table(79) := '588303E3F337E5E6C43563C94FEC78CE985E49E2933BCD65DE9EBC297766ABBF036139BEAEE9DD2CED6DCEEDA37B3B14F208807298621B6E02088070B72FD19541400580C97CE3C836696DEA3099D43CEDDDBBEFC84C72CAB19E81EE21593FB8D931BDD2';
wwv_flow_imp.g_varchar2_table(80) := '042D73A06BD0317B369F91D3D78F3AA6D723C1124BD60D6E3256A522C068402204961108FB4B0440D85B98F83C13701300835DA3D2DCD4D8F1FF2BB72F1AE3D9B2EE6163FA6A12B7ACDFEE98BD50C8CB953B171CD3EB9360C9065DED600B01A7FADCDAD8';
wwv_flow_imp.g_varchar2_table(81) := '291FC721104602088030B62A31954D60B1B0286E5787433D6365975BED0CE96CCA58E4D8C03A63FA6A12C706D61AB34FCCDE31A6D73AD1B22B18EB5B2FF198F372C05CDA3F3732B2DDE5D7D704C2EF1C0220FC6D4C841E08E89561216FDE00A8CF0777FF';
wwv_flow_imp.g_varchar2_table(82) := '4BA593C6687A3AFA8CE9AB49ECEEE837669F5D9831A6D73CD15600EB06B6DA02C0F96B2D9BC9BB6EF454733FA900023E21E0FC3FC5270EE20604EA41A03843DCEE0570AAAB35D12A2D8936A7E4BA1CCF1772E226005A9A5A6BE64B4BDC5C763A9DF2B433';
wwv_flow_imp.g_varchar2_table(83) := '61CD1CB40BEE6D1F9058C2D003600B809CCB4E8F7631FC4240A280000110855626465702450160B0D20980CD35EE48C9DB00001000494441543CB91AAA7E3FC9B26262D98FF70F9478D1C8556EF94241622EFE9570B9AA8712F166E336C63ACCA3BD3D55';
wwv_flow_imp.g_varchar2_table(84) := 'AD94C220105002B180FA8DDB10A81A015DFAE73636BC7E648B34DB2797AA555A41417A726D6971B90ACF9A87082AA8F6FD2C29973DFFDBDBDAC5B2EC7EF8F773D4FF85655932DC679EAB91CFBADF3FA1FE9E53A3BF0844C31B044034DA99280D04F4AA59';
wwv_flow_imp.g_varchar2_table(85) := 'AF0C0D2632D433DAF01D00D5BFD616F330C4F4C2A49AD5E431B3E0BCFC502BEC6AEFD6A7863FD60E989702D203D0F026C2019F104000F8A42170A37104740540C130FE6F59968CF49867C0D7CBFB9644B3B12AB74D828C995D126F8C9B3720EAEAE87529';
wwv_flow_imp.g_varchar2_table(86) := 'A13EC9A3BDEB6DB19670ACCC4DEC396624213204A2122802202A2D4D9C8E04DCBA84EDF3BF74B7D56E76BDA363251286FBD69438FAC1A18BD7CF7DF0A6CAAF2E5E3F6B2C71DDC046637ABD12D7F66D969861296081DD00EBD514D4E3730208009F3710EE';
wwv_flow_imp.g_varchar2_table(87) := 'D59E403EB768ACA4AF6B501A3D0170C9C18D83DB8C13EDEE4EDD96ABE3E6CD8296CA2AE7F9CADD0B323EEDBCCE3F114F48A3EF93B0144F4F6BBFDD03E0DC5352ECF141042CE1E2F90102D1398000884E5B13A9038182CBB2B0B5FD1B8D271487626B7278';
wwv_flow_imp.g_varchar2_table(88) := 'B87B9D6C1AD9662CFBD0A9FDA2F31A8C4665246A595AA629CB50DFA8ACEBDD6A32A95B5A3C9690BE2EE71E1B9DF45970D9F3A16ECE5211041A480001D040F854ED0F02B99C7956F8E8C03A694B74F8C2D9AE965ED9B3ED43465FF44AFDE099EADD9EF7C0';
wwv_flow_imp.g_varchar2_table(89) := 'A9EFC8C4CC5DC73A2DB164EFB667C4B22C479B7A26A817C3FDCE733654D03011B09E2D12ACBAA2E42D02204AAD4DAC2509E4B3E61D00477A9D4F26250BACF1C147373C25FD9D43C65A4E9C3F2647CFBF66B4F19278E49D0372EAE25B46D3CEB61EF9F0F6';
wwv_flow_imp.g_varchar2_table(90) := 'BF63B4A96BA2AD00D60E6E14FBA974B5B60240009446C3D16811400044ABBD897605816C3AE77A0F80919E752B7235F6ED60E7987C64AFFB09F7F0E9D764FF89172A1A0EB0CF91F2EA896FCB9133078DC15AF669F6C38FFD6DE96CE931DAD53B51876D9A';
wwv_flow_imp.g_varchar2_table(91) := '13A5F74CD0191FB96CDEE6A2AFEAED19F5F99B40B4BC430044ABBD89760581427E510A86F1E058CC92EEB6DE15B91AFFF6892DDF2363FDEEC2E4D4A537E50B2FFF5959130375C29FE6397DE9B86BA043BDA3F2B15D1F77B5ABB7C168CF464934392F05CC';
wwv_flow_imp.g_varchar2_table(92) := 'D9BD3E2A72EAED17F541C04F0410007E6A0D7CA93B013DF9176C11E054715757B7C4624D4EC90D3BAE33DD3FF6F8DFF554BF8EDF7FFDC097E42B07FE9B1CBFF486DC9EBE2EC94CD2BE0296E2239959905BF6B1B72E1E922FEFFF73F9C66B5F368EF92F55';
wwv_flow_imp.g_varchar2_table(93) := '9A686A961FFED08F4B2DEF3FB05457B9CFDDAD7DD294706E379DF8A9AB01CA2D17FB7013885A740880A8B538F1DE47404FFE3A2BFCBE83CBDE74B6758A4FE6B62DF3EADECB27367D54BEFFC9BF7FEF8D87BFB7C66FCAC113AFC8975FFE0BF9F4DFFC67F9';
wwv_flow_imp.g_varchar2_table(94) := 'C3AFFE87E2E3D37FF35FE42BF6B1D74FBE2AB7276E7928496C26967CD41E86D8B7E17BC48F3FF1585C9A0D9B2615B4D7871100E127DA041000D16EFFC8475F3C111828B436B78BEEC16F30695852532C213FB8E727E4238FFD60DD7DD8BBED69F97BFB7E';
wwv_flow_imp.g_varchar2_table(95) := 'BA2804EA5EB9C70A9B9B5A1C2DF5EADF24FC1C3392106202D10B0D0110BD3627E265040A86EE7F35D319EE96F8F7BF89DEFDEEEF3FF54FE4433B3F2AF5F8B12C4B1EDDF284FCF447FE77F1AB305AE2D0EC300950D3F5E21F01A024784499807FBFD9A2DC';
wwv_flow_imp.g_varchar2_table(96) := '2AC45E37027A2568AAACAF63C8D757B9EABB8A809F78EE9FCB0F3DFD0F6A7A526EB14FA83FF4D43F909FF9DBFF976F3646D2F89D1EAD8936A7A4E27126011631F0E73D02517C420044B1D589F97D02A69B00A9517353B32F27B9A96FCB1F2A027E68EF4F';
wwv_flow_imp.g_varchar2_table(97) := 'CA3FF9FEFF4DBADB7A962755E5F540D7B0FCE3EFFBE7F2837BFF514D4546559C7DAF90D696F6F75E957E72137FA573711402E1218000084F5B12490504DC04406B710E40BC82921B93E5894D1F917FF1A39F90EFDDFB83A2E265B55E74B674C9F7EDFB61';
wwv_flow_imp.g_varchar2_table(98) := 'F9851FFBA43CBEC99F13FE9C626C73E901701BFE712A97E3612410CD981000D16C77A27E8FC0A2CE067FEF75A9A7B684F92AB2549E461F1BEC1C931F7BFA67E4177EFC93F291BD3F20DDED3DA2DDF7A63BE42DF9AC36CD4D2D32D23726DFBBEF07E5E73F';
wwv_flow_imp.g_varchar2_table(99) := 'FECBF2A34FFD53E96CE95E3209CCB3691F000DA25030EF00A9363C20106602088030B72EB1B912701B076E6D368F23BB56D04083B1EE0DF2E34FFF33F9C44FFDBEFC1F1FFF37F2F79EF909D9BBED43F2F0BADDB261788BF4750EC970CF1AD938BC4D76AC';
wwv_flow_imp.g_varchar2_table(100) := '7F54F63DF48CFC8FCFFEA4FCCB1FFF35F9A51FFF6DF9B1A77E46D6F46C6A6004ABABBAB5B9C358004300463C914A8C6AB00880A8B63C717B22D0E2D28DECA990061B599625EBFAB6CAFFB0FBC7E47FF9D82FCACFFFF0AFC82F7EFCD7E5DFFCE3DF957FFD';
wwv_flow_imp.g_varchar2_table(101) := '8F7E4B7EE1E39F949FFBA15F967FFA7DBF50DCD56FA47B9DD8591AECF5EAAB6FB3876F4CA520004C74488B02010440145A99182B26A06BED2BCEECF38C6138C99B10B7DAC3376D865E000480895E94D2A21B2B0220BA6D4FE41E08B434057708C04378A1';
wwv_flow_imp.g_varchar2_table(102) := '3669B57B002CCB728CD16DF8C7312309100809010440481A9230CA27E0E504D092287D47B9F26B2347BD090C768EDA43192601A0DB01D5DB2BEAF31B8128FB83008872EB13BB2B81E6B8F376B2AE99316828011DBEB1C472F4C18B0074CC4C0204424000';
wwv_flow_imp.g_varchar2_table(103) := '011082462484DA11D00D766A573A25D79280F6DE5896410014E801A825FF60941D6D2F1100D16E7FA23710B02CFDEFE17C02316425C907049AE3AD6215DBD0C119CEFF0E60381C1502FA0D1795588913026511688AC565D1FE5756268C7D43407B6F12B1';
wwv_flow_imp.g_varchar2_table(104) := '26477F685B47349149887AA00880A87F0288DF9140F16E710C143BF2F17B82A7133CBD007E6F46FCAB210104400DE152B4BF09B875EEE717F362596E56FE8E31CADE65F319C91772660434AF994FA853090E01C06720BA045CBEFCB507C0D355647409FA';
wwv_flow_imp.g_varchar2_table(105) := '3AF24C2E25F945E7FDFE5D9ADFD7B1E11C04AA410001500D8A94115C022E6701BD8A0C6E70D1F63C97CF8A8A38470AF4EE38A2894202318A2000F814449A80E5127D269776B120D9AF04A6531362EAC1E1FCEFD796C3AF7A114000D48B34F5049240DAEE';
wwv_flow_imp.g_varchar2_table(106) := '460EA4E3382D73A969630F801573937F400C2F012253020800A5C023BA045C2E03D3B96474D9043CF254664116D273018F02F721503B020880DAB1A5E400107039FF4B3A8B00084033967431995D28797CE9A065D103B0C4226ACFC47B8F0002E01E07FE';
wwv_flow_imp.g_varchar2_table(107) := '46948065994F02E92C730082FAD148DA3D0041F51DBF21500F0208807A50A60EDF12B02CB300C8E653BEF51DC7CC04B25973DBC5E2E6B637974E6A7009E0F9120104C012099E2349C072390924330C0104F583917659C1C124C0A0B62C7E578B0002A05A';
wwv_flow_imp.g_varchar2_table(108) := '2429279004622E33C17522592003C36949A6E78D146271BEFE8C80429A48581F10E07FC0072C78154102B126F37F8164665E16B2CC240FE24723E5D27BE326FE8218333E43A01C02E66FBF724AC21602012410771902989E9F10E18640016C59B17B00CC';
wwv_flow_imp.g_varchar2_table(109) := 'AB00980310C8665DA5D3645F4E0001B09C06AF234720E6D20D7C6BFA9A7137B9C8010B48C0BA05F07C7AD6E82D73008C78488C00010440041A99109D09B85D05CECE4F4B3E9F772E80145F1248E516249D715E05A0F3FF2D4BFFFAD27D9CAA11018ABD9F';
wwv_flow_imp.g_varchar2_table(110) := '0002E07E1EBC8B1801BD0AB42CE713413693950C4B0103F7A9985AB82BF99CB370B32C4B2CCB0A5C5C380C816A12400054932665058E407ADE7CC7B85CAE20E373B7021757D41DBE397345F205670150585C94E41C9B3C45EB7342B42B0920005612E17D';
wwv_flow_imp.g_varchar2_table(111) := '6408645239999F76EE265E023131777BE925CF0121A07337DC76719C9F4A497A211B9088701302D5278000A83E534A0C0001FDE21FBF3A637713175CBD9D9CBB6B0F0370B5E80ACA470677A6AE8B4E0434B994B77B7726AFCF4A26890830710A4B1A713C';
wwv_flow_imp.g_varchar2_table(112) := '480001F020138E849C406A3E2353B7E65C4F104B186E4D5D935C9E93C4120FDF3F2F8A8C4FDFF1E4A60E054CDC9813FD4C78CA8011044244000110A2C624147702DAEDAF277FBDFA73B7BE6771E9D639C92FE6EEBDE1AFEF0914A42077A66E7AF6B3902F';
wwv_flow_imp.g_varchar2_table(113) := 'C8F4AD7986033C130BA2213E9722800028458563A124A0577913D766A490B72F11CB88703E352FF90202A00C640D354D66E624972BAFBDF2B60898B087037468A8A1CE533904EA4800015047D854D53802FAC53E7D7B5E0A85F24EFEEA71DE3E99E40AE1';
wwv_flow_imp.g_varchar2_table(114) := '1B02282CDAD7CA05F73910CA20488FD9F494E809BD5C9F75CE80F60EA9502C372FF6FE268077A50920004A73E168880864533999BC392BF95C65273B3D31DC99BB1E1A2217C64FC91FBDF41BF289CFFD9CFDF879F9A3EFFEBABC3B792E34F15D9FBEE479';
wwv_flow_imp.g_varchar2_table(115) := '7EC7CAA0F5333275734E32C9F27A105696C37B08048100022008AD848F151348CF6764E2C66CD9DDFECB2B5CB43B0D8AF704587E30A0AFCFDF3D25BFFD855F9563670EC9F8D4B8E864B9636FBF21BFFB957F2B9726DE0E6854F7BBAD4B00F38BCE7B00DC';
wwv_flow_imp.g_varchar2_table(116) := '6FFDE0BB82DD4BA44345E9F9F0F5FA3C186D148E10A31301048013198E079E4071C29FDDEDAF5775AB0AC6560077676F492E04F300BEFDD6E7ED6190077B421652F372F0EDEF48DEB079CEAA18D631F3EDE96B768C950B0075B560B7F9D4ED394104280D';
wwv_flow_imp.g_varchar2_table(117) := '1E61258000086BCB463C2E5DDBAD57715E4EFE312B264D89B838FDD81D007273F2AAA473492793401C2FD863FE976F5D70F4F5C6F855994D4D3AA60725E1EECC2DA3AB6D8976F1B20970DE1E329AB47B8FF4B3642C90445F13C039670208006736A40494';
wwv_flow_imp.g_varchar2_table(118) := '40DAEEF69FBAE56DC25F5B6B9BECDBF1B46C59BF4D6286D3C2B9AB2724934B0594C83DB7F5EA5EE733DC7BF7E0DF9B93D7032F72163273323973F7C1E0DE3B12B32CD9BA61BB3CFAC81E696FEB78EFA8F353C1EE09D021249D44EA6C450A04824920164C';
wwv_flow_imp.g_varchar2_table(119) := 'B7F11A02A509E884BF29BBDB3F9775EF026E49B4CA9EED8FCBE8D0A8AC195A2F1D1D5DA50BB58FA69219B93377CD7E15E4DF45B1CF7F8E01E47259D1139EA34100122E4F9C95743AE3E8697B7B878C0DAD9175839BE5D187F64A6B738BA3ED52822E1B9D';
wwv_flow_imp.g_varchar2_table(120) := 'BE352799141303979804E7194F4D041000263AA4058A805EA58D5F9FF534DBBFC5FEE27FEAB16764A067D88ED192F6E60EE9E9E8B15F97FED52BE71BD3EF964EE4A86F089CBBF99664D2CE93F7BABBBA25D19410CBFE37D83B2C4F3DFAB7249148B8FA9F';
wwv_flow_imp.g_varchar2_table(121) := 'B3870326AECF0822C015150601228000085063E1AA33013DF917D7F9E71F9CE0B6329776FB3FB9EB59FB84DFF77E9265C5A4B7BBFFFDF7A55E5CB97B4192D9F952491CF303814591776E9C322E01ECE9EA152B66BDEF6DB72DFA9EDCF58CB7E180FCA2DC';
wwv_flow_imp.g_varchar2_table(122) := '5B22E82C30DE2F9817BE20801366020800331F52034040BBFD276FCE89976EFFB6E67679FC91A7A5B7EB8393FF5288A58E2DA5E9F3D9AB2724955BD0973C7C48209D4FCAED49F304C0EECEDE073CEFEF1E94C7B6EF13ED157A2071C501FD8CE9672D9B66';
wwv_flow_imp.g_varchar2_table(123) := '3860051ADE0690000220808D86CB1F10D0097F3A49ABE0F5CAFFD10F496F67E92BFDF6D60E6377F042725EA693E31F54CE2B5F11B83E7349D229E7F1FF8ED62EE968ED2CE9F340F7903CFDD8739E4480AE0E18BF660F077017C1922CFD73104FDC082000';
wwv_flow_imp.g_varchar2_table(124) := 'DC0891EE5B02BA5B9B76FBEB17B29B936D2DEDF2D4AEE7A4BBA3D7D1B4299E101D237632C8650B726DE2A25332C71B4840E7685CBC438E319B00001000494441547B5A0A39E72BF3AE8E6E6989B73A7AD9DDDE2B4FDAC3019DED5D8E364B09051D0EB835';
wwv_flow_imp.g_varchar2_table(125) := '2F1944C012129E03482016409F711902C5C9583A292B97731FF36F6FE99027773F2D7A0230A1D3B1E1FE9ED2BD039AAF60F732E83C8074C097036A2C617B2CCAA29CBB7EC2FEEB1C595F779FC4627167033BA5B7AB5FF6ECD827EDB660B4DF1A7F753840';
wwv_flow_imp.g_varchar2_table(126) := '6F259C4DBBAF38311644624D0850A83B0104803B232C7C46406FD63275635674CB5637D73ADA3AE4895D1FB2AFFCFBDC4C8BE9FD7657B06E0C547C53E2CFD96B2725999D2B91C2A14612C8E53372F5CE6547172CCB925E5B00381A2C4BE8ED1C90271F7D';
wwv_flow_imp.g_varchar2_table(127) := '565A5A5A961D2DFDB2608B42DD704A27A196B6E02804FC4B0001E0DFB6C1B3120474C29F76FB7BB9F2D7097F4F69B77FA7F3F2BE9555F474F449C21E0A58797CE9FDE4F4B8CCA483BF5BDE523C61791E9FBF25F3B3CE2B34128926E934ECF3B09243577B';
wwv_flow_imp.g_varchar2_table(128) := 'B73CF5C8B3D2D9567ACEC072FBBC2D02F433C970C0722A8D7E4DFD5E08C4BC186103013F10D093BFD775FE9DF638EED38F3D2B1DEDEE5FE0CB634B34351B978415EC2187DBB3579767E17583092C2E8A5CB87B4A7239E7AEF80EFBF3601276A542E8E9EA';
wwv_flow_imp.g_varchar2_table(129) := '933D3B9F109D1C5A2A7DF9B1E270C0F559C9321CB01C0BAF7D4E0001E0F306C2BD7B047299BCE80E7FDAE57AEF88F3DF4EFBA4FFF8CEA7A4D3BE8A73B6724EE9EE76EE31B0CF357275DC793F7DE75249A915814529C8B99B278CC50FF60C896595FF75D7';
wwv_flow_imp.g_varchar2_table(130) := 'DBD95F1C426A6B6D3396AF893A2435756B4EF4B3AAEF79348E00357B2350FEFF086FE5620581AA11D02B3CFD62CD7A587BADB3FD9FDEFD9C7475389FC4DD1CEBEBEA17CBFA60B39895F6EFDEBEC072C095501AF83E97CFC8A59BE71C3DB0EC137F5FF780';
wwv_flow_imp.g_varchar2_table(131) := '63BA5B42B7FD597AD21E0EE86A735F1DA09FD199BB0BC6CD88DCEA231D02F5228000A81769EAA988809EFCA76FCF1567FDBB15D0D5D12D1F7AEC39696BED703335A677D963C54D4D71479B776F5C94F1859B8EE924D497C08DD9CB323B37EB586953BC49';
wwv_flow_imp.g_varchar2_table(132) := '7ADA7B1DD3BD247477F6C89E479E102F22A03849F596F37C042FF561B31A02E4F54A0001E09514760D213037B1200B3369D7BA3BED31DE7D3B9E920E0F57696E85E95DE2743998939DEE357FEED671A7648ED79180AEFF3F7EE5A0B1DBBDA3A35D1289E6';
wwv_flow_imp.g_varchar2_table(133) := '557BA51344F7EE7C52DA3D0C072467D3323F15ECBB47AE1A1805F89E0002C0F74D145D07F54B747622E90AA0A3B5539EDBF351BBDBBFDBD5D68B4153AC59FA7ACC5DC6EF5C3F2533A9092FC561534302D942468E9E3F60EC721FEC1F126BD9FEFFAB7147';
wwv_flow_imp.g_varchar2_table(134) := 'B7127ED21E62D2CF9C5B393377E62539EBBC33A15B7ED22B23402EEF041000DE59615947023A916ACA43376A7B5BBB3CB9FB19FB0A2F5155EF46FBC78CE55DBE715EEECEDF30DA90587B02D7A72FCAC484B3106B8AC565A87FA4AA8E74B577CBDE471EB7';
wwv_flow_imp.g_varchar2_table(135) := '7B02DA8DE5EA84D199BBF39EEE4E692C884408D4880002A0466029761504EC6FCEB9C9A4F1AA4E4B6F8A35C9AE6D7BA4D3EEFED7F7D57C74DA5FF29DEDCE730932A9AC9CBDF95635ABA4AC320968F7FF89EB0745D7E13B65D52BF6DEF67EA7E48A8FF776';
wwv_flow_imp.g_varchar2_table(136) := '0E143F7B3AC1D054483E5710ED0930D990564D0294550E01044039B4B0AD0B01DD55CD4BD7E9633BF6CA70DF684D7CB22C4BD68CAC732CBBB0B8283A0C309DE2E6408E906A9CA0DDFF272E1E36D6323A3826312B6EB4A93471B87F541E7B78AF6BF6E45C';
wwv_flow_imp.g_varchar2_table(137) := '867B06B852C2A0110410008DA04E9D460233E30BAE57FF0F6DDC2E6383CE276863051E13C786D6493CDEE468FDEEB50B0C0338D2A97DC2B5A98B7267E28E6345B1784C06FBAADBFDBFB2B275231B64F3DA2D2B0F3FF07E6E32E5FA997E201307CA264086';
wwv_flow_imp.g_varchar2_table(138) := 'F2082000CAE385758D09E8C43F5D4B6DAA46AFEA1EDAB0C336715EAB6F27AEFAB7B3B5DB1E5E701E0648653272EE16C300AB065D410185C5829CB876504C9F95FEEE3EBBFD3A2B28BD9C2C96ECD8BC5B465CE68CE8D2C0E40C1302CB218B6DED0920006A';
wwv_flow_imp.g_varchar2_table(139) := 'CF981A3C12D09DD474131593796BA24D766EDD2D96559F8FEEE8D05A933B72E1C6DB3295BC6BB421B1FA0472F9AC9CBA7CD458F09A91F562D5E173128BC565D7B6C7246EE82D52476727EC9EADC2A2BEE4511302145A2E81FA7C8B96EB15F69124B0309D';
wwv_flow_imp.g_varchar2_table(140) := '129D34650A7ECBFA6DD2DE52EBABBA0F3C18EC1D94E666E7BBC25DB97559B837C007BCEAF5EAFACC45B93DEEBC19934E101DEE35AFE4A8A6AF6DADEDB26DE343C622F5B3BDE0614F0B63212442A08A041000558449519513D0657FF3F638A9A9848ED60E';
wwv_flow_imp.g_varchar2_table(141) := '5937BADE6452F534DDFCA5BFC77916F9C2FC829CBA6E9E885675A7225EA076FF9FBCF6BAE4B2054712BDBDBDD262106E8E195791B0796C9BB4249CC5A2163D37917415B96AC7A37C02E4289F0002A07C66E4A80101BD32322DE7D22AB76FD9258926F317';
wwv_flow_imp.g_varchar2_table(142) := 'ACDA55F3A15DC8C303238E45EA52B42BB72FB2299023A1EA2764F369397EF1B07152DDE8E01ABBE2DACE11B12BB8EF5787001EDAB8FDBE632BDFE8675C3FEB2B8FF31E028D208000680475EA7C80406ACE3C41AAB7BB4F46FBF54BFD81AC353F30D83322';
wwv_flow_imp.g_varchar2_table(143) := '96FDCFA9A26BB7AF88EE47EF94CEF1EA12D0CD7F6EDE71EEFE6F6B6993C1BEE1EA56EAB1B4B523EBA5DF6517C9CC42D663699879278065250410009550234F5509E8D8682E9B772CD3B262A263FF5695B67375ACC821A1ADB94D06FA07C5E927B9B020C7';
wwv_flow_imp.g_varchar2_table(144) := '2EBF2ADA35ED64E387E3CAD10F7EACC6877C212747DFB559E79DBBFFFB7B07A5A3C5FDCE7DABF1C3296F53BC5936AEDDEC945C3C9EB73FEBA6CF7BD1883F10A8030104401D20538599403695331A74B577C9606F63AEE88A8E5996AC1BDE507C59EA8FCE';
wwv_flow_imp.g_varchar2_table(145) := 'EB3E7BE9B4DC9ABD522AD937C716179D4F9ABE71D2C59199D484BC7EE6BB46AB9181FA4DFE2BE5C850EF8871FE413EBF2899A4F9335FAA5C8E391320A532020880CAB891AB4A0416EDB3673A69EE12EDEF1D90847D6555A52A2B2A66B87FCCF8A57E67E2';
wwv_flow_imp.g_varchar2_table(146) := 'B69CBCF17A456593C93B81A3575E15DD2BC229474B4B8BF475F53925D7E578229E90E12167C1BA687FE875B7CBBA384325103010400018E090547B0205BB2B37E37235D4D7ED3C0BBFF61EDEAB21D194701DDB7DEBC22199CFCCDCCBC0DFAA134866E7E5';
wwv_flow_imp.g_varchar2_table(147) := '8DB32F8BAD191DCBD64DA25AEC211B47837A24D83D4623036B8C356554F49A0231E626F17E02BCAB940002A05272E4AB0A817CB620B9B473776853535C7A3A1B7B45B714E8DAE1F512B39CFFCB5CBF754D8E5F7F6DC99CE72A1378FBF611B97EEBAAB1D4';
wwv_flow_imp.g_varchar2_table(148) := '75231BC5B22CA34D3D12FB3AFBED5EAB26C7AA0AB982140AC11F92710C9084401070FE360B84FB38197402F95CDE7845D76B77E76AB7AE1FE21CE819129D60E6E44B269391A3E7F74B366F1ED270CACF716702A9EC821C3CF7827DD274BE6CEEB58562AF';
wwv_flow_imp.g_varchar2_table(149) := '7DE2752EA57E29CD4DADD266B89BA446A1E2B77E1E85B72622AB9C0002A07276E4AC0281425EBF0A9D0BEAB74FBAF198F3959473CEEAA734D9C3001BC636190BBE74ED829C1F3F6EB421B17C0217274EC9990B271D335A96251BD79967DF3B66AE514257';
wwv_flow_imp.g_varchar2_table(150) := '9B792542816D816B449E62BD1240007825855D4D0814F2E66ED0AEB66EB1EC7F35A9BC824247FA46A525D1EA9833994ACAA18B2F1A37A971CC4C424902995C4A8E5E7AD5B8835E6F77BF8C0DAE2D99BF51073BDA3A8D55175CC4AF313389EF11E0693504';
wwv_flow_imp.g_varchar2_table(151) := '1000ABA147DE5513307D095A9625894462D57554B380583C2E5B3798F77C3F7BE9945C9E7CBB9AD546BAAC9BB357E4C8D98346061BED9E19BFF4142D391A6F32F75C155CC4EF52393C43A056041000B5224BB99E0898BF042D6972B9C39AA74AAA6CB47E';
wwv_flow_imp.g_varchar2_table(152) := '6493B4B7B53B963A3D3D2DC7DE7DD5319D84F2081CBF7A50B286BD22DADB3A1ABB4F844338BA72C421A9785837C02ABEE04FC504C8B83A020880D5F123F72A092C1AC6412DBBEC78DC5F3D00B64BD2645FD9E996AFFADAE971EAF231B93377DD2999E31E';
wwv_flow_imp.g_varchar2_table(153) := '09DC9DBF2147CF1D340EA96C5EBB455A9A9D87653C565575B34453B3B14C5D09603420110235268000A831608A3713309CFF45EC21003FF60088FDB376689DB41AD69BDF19BF2DC7AF1FB02DF95D0D81D3370FCBEDBBCEFBFEEB495697FEADA68E5AE56D';
wwv_flow_imp.g_varchar2_table(154) := 'B28562AB4198E4ED210044C06AE89377B5041000AB2548FECA09E8028045FD53BA889858128FC5C48F3F1D6DDDB2C9BEF274F24DBB770F9FDB2F995CDAC984E32E042617EEC8E1775E315AAD1959670F13F9AF97489D6E8AC7C5B484557BBF580920FC34';
wwv_flow_imp.g_varchar2_table(155) := '90803FBF5D1B0884AAEB4760D1B8038088553CF9EB4080F8F267BDCBA633D76F5E950397BFE14BDF83E0D4891B07E5D2950B8EAEEAC975D3D866C7F4462734D9C357F158DCD10D1500FA703420C14880C4D5134000AC9E212544944073738BE8EE804EE1';
wwv_flow_imp.g_varchar2_table(156) := '6B17EF8153DF9189855B4E261C7720A0F3275E39FE2DE3C63FA3036BA4B3BDDBA184C61F6EB587882CCB59C06A2F91DE17A0F19EE24154092000A2DAF2C45D15029BD76E9358CCF9BFD18D9BD765FF3BDFA84A5D512AE4C8BB2FCBCD3BE649946BEDEE7F';
wwv_flow_imp.g_varchar2_table(157) := '3F33316D1BAD7E1B46BF349987910089D520E0FCCD558DD22903022127D0DDD92DFDBDFD8E51EA15DEC1D32FC98D99CB8E3624DC4FE0EAD43B72E0C4778C33FFD70CAF951E9F6CFB7BBFF7BC83407008200082D35678EA4B02966C5EB7D5E8D9CCF4B4BC';
wwv_flow_imp.g_varchar2_table(158) := '7CF6AB461B12EF11C8E633F2DA856FCBC4D4C4BD030E7F37ADDD2A6E57D80E59391C020284501D020880EA70A494081318EC19919181514702BACEE1D0C957E4D2C469471B12EE11B83C79565E3FF1F2BD370E7FFB7B06A4AF6BC02195C3108080570208';
wwv_flow_imp.g_varchar2_table(159) := '00AFA4B0838003819815972D1BB639A4DE3B9C4E67E5DB27BF78EF0D7F4B1248E516E495335F9354CA79E9A4CEACDFBE7967C9FC1C8C0A01E2AC16010440B548524EA409F4770DCAFAD10D4606A72F1C975337DF30DA4439F1FCDD1372FCDC112382F56B';
wwv_flow_imp.g_varchar2_table(160) := '36487FF790D186440840C01B010480374E5841C08580250F6F7C445A9A9DB77FCDD8BD00DF7AEBF3C6C96D2E958436792E3D2DDF7CF30B92CDE61C636C49B4CA461FAFFB77749C84AA12A0B0EA114000548F2525459C406B4B9B6C5E6F9E1078FEF23BF2';
wwv_flow_imp.g_varchar2_table(161) := 'C69517224EEAC1F0CFDC3A2297DE3DFF60C2B223DB37EF908ED6AE654778090108AC8600026035F4C80B811504368E6E91EE8E9E15473F78ABCB02BF71E4F392CEA53E3818F157930B77E4DB6F7E490A8685F13DDD3DF610CBA68893227C111854930002';
wwv_flow_imp.g_varchar2_table(162) := 'A09A34292BF2049AE2CDB263EB23621948DCBE7D4BF65FFC9AC1225A49BAE9CF8D5B371C838E5B31D9B179979D6EA26A27F30B01089445000150162E8C21E04E60A87744D68F6D301A7EF3F097647CC1F92E77C6CC214ABC3A755E5E38F25529140A8E51';
wwv_flow_imp.g_varchar2_table(163) := '8D8E8E892EB574342021320408B4BA041000D5E5496910B00958B26DFD0E89C79D6F043337332F9F3BF85F223D2130955D90E78FFC99CCCCCDD8CC4AFF269A9AE5E10D8F944EE4280420B02A02088055E12333044A13686BED904DEBCD77AA3B7DEEB83D';
wwv_flow_imp.g_varchar2_table(164) := '14F0F5D20584FDE8A2C8FE0B5F9333E74F19237D68E3C3D2DED269B421312A0488B3DA041000D5264A7910788FC0E635DBA4ABDD79D6BA7D0E94AFBEFE59B939F3EE7B39A2F37469F28C7CE7D8D7A4B0E8DCF5DFD1D12EEB4799F8179D4F0591D69B0002';
wwv_flow_imp.g_varchar2_table(165) := 'A0DEC4A92F32045A9ADA64AB7D056B59CE93D77428E04B47FE5872F96C64B8E80A882F1FFA53D17B249882DEBE7997E8CE7F261BD2A2438048AB4F0001136BA07D0000100049444154507DA6940881F7098C0EAC91D1E1D1F7DF977A71FADC0979F5C2D7';
wwv_flow_imp.g_varchar2_table(166) := 'C5B00AAE54B6C01E7BF1EC97E4FCBBE78CFEAF19B5B9F5AD31DA90080108AC8E00026075FCC80D01238178AC49867ACD02A0609FF9BFF4F267E4EA94F9A468AC28208917EE9E94978E7DC3163B3A00E2EC747FCFA058165F4FCE84A29642BCB520C0FFB0';
wwv_flow_imp.g_varchar2_table(167) := '5A50A54C082C231097A665EF4ABFCCE572F2E537FE4C74667C698BE01FD5AEFF2FBEFE27323B37EB1A4C4CF86A7285840104564980FF65AB044876083811D05DFFCE5E3A2DC7CE7ABB0190DA1EBCF82DD7AB63A7FAFC7EFC5BA7FE522E5FBBE8C9CDE367';
wwv_flow_imp.g_varchar2_table(168) := 'DF92B3974ED92C9C27097A2A08A350102088DA104000D4862BA5469C40215F9013EF1C9373EF9EB14F62E6EEEE25542A18BE72E0CFE54A0887022E8E9F96EF1E71EFFAFF8045C166F7B69C3A7F2252132497E2E71902F5208000A80765EA8814815C2E2B';
wwv_flow_imp.g_varchar2_table(169) := '6F9C7A4DDEBD71A9ECB833E99C3C7FE833B290992B3BAF5F33A47349F9EC2BBF27A94CF9F73FB874FDBC1C3D7948B2D98C5FC3C3AF9A13A0825A114000D48A2CE54692C0CCDC94EC3FFA92DC99BC5571FC672E9D9497CFFEB5718D7CC585D739A3F66AFC';
wwv_flow_imp.g_varchar2_table(170) := 'F59B9F91EBB7AE575CF3EDA95B72E0AD976576DE79C7C08A0B272304224C000110E1C627F4EA12989C9990374E1E94D9E4EA4F545F7BED2FE5AD6B07AAEB60034A7BFDF2B7E5E537BFB5EA9AF5E47FE8F87E199FBEB3EAB228205804F0B676041000B563';
wwv_flow_imp.g_varchar2_table(171) := '4BC9112270FDF65579EDAD5724995EA84AD485C2A2FCC58B7F2817C64F55A5BC4614F2EEE439F9FC4B7F22B95CAE2AD527334979E3F801B971BBF2DE84AA384221100809010440481A92301A43607151E4FCD5B7E5CDB70F4BA190F7E4447B77AB74F5B7';
wwv_flow_imp.g_varchar2_table(172) := '4B5B67B3D17E6E6156FEEAD54FC9DDB91B463B3F26CEA5A7E5BF7EE73725994A1ADD8BC563D23560B3E86A31DA2D25E66CC647CF1C94F357DE96455B242D1DE739AC0488AB96041000B5A44BD9A12690CF67E5F4F9E3F2F6C5D35230EC69BF04C1B25F74';
wwv_flow_imp.g_varchar2_table(173) := 'F6B549EF48877DD26B93EEA10E89C52DFBA8F3EF959B97E46BC73E2B0B19F7B5F3CEA5D43745D7FBFFC94BFF41EE8C9BBBEBE3F6C97F606DB774F5B7DD63623F7BF1D4D65C72E6E2293973E984E4F3D5E95DF0522F3610081B010440D85A9478EA42209D';
wwv_flow_imp.g_varchar2_table(174) := '49C9B13347E4E2F5774427BAB9556A5996F48E764AF760FBFBA6F1A698F40E778A6559EF1F2BF5E28D53AFCA8BA79F977CC1FF27BBBC7D85FEB5B73E639FA04F940AE5BE633DC31D926889178F599625DA13D037DAE5CAA398C1FE73E1EA3B72E4D41B92';
wwv_flow_imp.g_varchar2_table(175) := 'CBFA9F8BED2EBF1510204B6D0920006ACB97D24348607E7E4E5E3FFEAADC1CF73616AD27FAFEB12E692BD1CDDD6A0F0374F6B61A29E915EF375EFF821CBFF69AD1AED1892A848EBCFBB2BC78F8EBAEAE74DA316BEC2B0DDBBA9AA56FCC5D142DE5BB3D79';
wwv_flow_imp.g_varchar2_table(176) := '430E9E785566E7A7970EF10C010878248000F0080A3308288189A93BB2FFD88B32E371495A53222EDACDDDD291D0EC251F9DF618784BBB73BA66D293EBE75EFA949CBF7B52DFFAF27179E26DF98B17FEC01E0E51C9E2EC62A2A5C9EE09E9703468ED6896';
wwv_flow_imp.g_varchar2_table(177) := 'A10D3DA2EC1C8D96254CCD4EC8E19387647CFAF6B2A3BC0C3E0122A835010440AD09537E6808DCBC7DDDBEF2DF2F197BECDF4B507A522F9EC89AE34673BBF75BFA463AA5C91E123019EA52B8CFBDF4077267EE9AC9AC2169B3A929F9D4377F53D2D9B4B1';
wwv_flow_imp.g_varchar2_table(178) := 'FE58DC12EDFA17F3A88734D9CC5438A9183016F85EE27C6A56DE38F1BADCBCEBAD57E6BD6C3C4120D2041000916E7E82F7466051CEBFFBB61C3EF3BAE43D4CF6D332F5C4D5BFA65BAC98CB994E8DED47CC3EF9770DB68B6599EDAFDFBD2A5F39F46999CF';
wwv_flow_imp.g_varchar2_table(179) := 'CCD8B9FCF1AB3730FAD3977F4B741F04378F741264736B939B59313D9E8849DF6867C9A193A2C18A3F395B981D3E75B0382F6345126F034800976B4F0001507BC6D4106002B9424E4EBD7342CE5CD2F5F8E6AEEDA53075A25FFF9A2EFB64BE74C4DB735B';
wwv_flow_imp.g_varchar2_table(180) := '578BE88C7837EB63E70EC9774E7E51B2F9C66F8FAB3E7CFDCDCF7A9AF4A7CB1F5500B8C5B73C5D05948A00656A2D4F30BC3E7DFE849C78E74D2914B8919001134910E09E9B7C0620E044209BCDCA5BA7EFCDF477B2597EBCD8BD3DD421E59EE49697D1D1';
wwv_flow_imp.g_varchar2_table(181) := 'D72A3A74B0FC58A9D7DF3AF495A208D02577A5D24B1DB32CFB14EAA261D4A454DE52C7D2B9A47CE7F417E5C5A35F2B957CDFB1E6B684E8F2C7FB0E96F14699F68D7589EE1BE0964DE74B5CBE7E41DE3A7B4472761BBAD993EE4702F8540F02F400D48332';
wwv_flow_imp.g_varchar2_table(182) := '75048EC07C724E0E1CFBAEDC18F736DEAE27FF5E7B1CBFA3B77555B15A9665777B7749DC1E123015A4E7F1AFBEF639F9EC81FF2477E76F8AB77D082CC9E59D372BB2C49298659EAF20F68FD635939A94CFBCFA3BF2D5FD9FB3EB5EB48F3AFFEA64BEDEE1';
wwv_flow_imp.g_varchar2_table(183) := '0E67038F29BA6A407B03B43C2F59AEDDBE22AF1D7F451652735ECCB18140E408200022D7E404EC46E0EEE4EDE296B3B3C95937D362BA5EDD0EADEF111DF72F1E58E59F58DC1215139665B996F4C6E9FDF2EF3FFF4BF28D37FF42DE7AF735B93E7949E652';
wwv_flow_imp.g_varchar2_table(184) := 'D332939C5CF1981259B4249574DE994FD7F0EB9AFA64667E45DE49999CBF2357272EC8B1CBFBE5F9C37F26BFFEB97F2947DF3EE8EA9F46A057FE3AA9CFD5D88381F68E0C6DEC11AFF308A6E7A6E4E05BFB65726ADC43E998F885007ED4870002A03E9CA9';
wwv_flow_imp.g_varchar2_table(185) := '2520046EDDBD2EC7CE1CB64FA2739E3CD6717B9DC11F4FB85F397B2AF03D233DD1F5D8C309EFBD353ECDD942E56BAFFF95FCC1D7FF3FF935FBC4FC4B7FF2BFCABFFED39F5DF1F867F27FFEE14F8AE95A5D27D1FDDA5FFEA2FCAB3FFE9F57E4FD59F9954F';
wwv_flow_imp.g_varchar2_table(186) := 'FF9CFCC65FFE2BF9A36FFCA67CEBC8576436396DF469295137F75181B4F4BE1ACF96651597567A155C0BA9793974F280DCBC1BBC2D95ABC18B3220E0440001E04486E3912370E1CA3979E3D4414967539E62D7496DF74EFEB5F96FD4DED3226EF70B7076';
wwv_flow_imp.g_varchar2_table(187) := '544FF5CB1FCE96A55396E7D5D7A5AD4C47D5F74E8FDBFB9ACA299566C52CD189961D3DADA5921F3896CD67E5C8E9D7E5C2B5730FA471C06F04F0A75E046AF3CD552FEFA90702552050C817E4CDB387E5F4C5139E4AD36E6D1D8BD6AE6D7BD8DC539E4A8D';
wwv_flow_imp.g_varchar2_table(188) := '7A863BAB36B450A90F95E42BA707A392F297F2E89E02DACBB0F4DEF4BCB8589033174ECA89B7DF141DEE30D99206812810400044A19589D191808E791F3BFB865CBDF9AEA3CDF204CBB24467A36BD7FFF2E3B57AADF3017428404FA8B5AAA3DAE5EAF8BC';
wwv_flow_imp.g_varchar2_table(189) := 'CE61D0BD0DAA5D76A9F274E9A43E4AA5AD3CB6B8B828976F5D288A804CAEF1CB2857FAC77B1118D48F0002A07EACA9C967041692F372E0CD97E4C61D8F33FDED6EE7E2EE749DCD758D249E8815BBBBBD8E79D7D5B91595A93052466EAB1856645BF55BED';
wwv_flow_imp.g_varchar2_table(190) := '05185CD7235EEBBD7AE7B21C7CF31549A59D2745AEDA290A8080CF0920007CDE40B8571B02E353778BB3C36716BC4D66D3A56703EBBAA5B9CDDB2E76D5F6DAB2B4E7A15374439C982D44AA5DFE6ACBD3F5F9DD03EDA2C3223A3EBFDAF22AC9AF6DA3BB2F';
wwv_flow_imp.g_varchar2_table(191) := '7AED2D99999F96578F7D57A6E6262AA98E3C352140A1F52410AB6765D405013F10B83D7E538E9E7A5D16D2DE66FAB7B6276470438FE84D6C1AE9BF6559C54D8674F25BA37D59CEA1B92D213A274227FC5996CE90589E5ADFD78996B8E8F0835711A03D00';
wwv_flow_imp.g_varchar2_table(192) := '87DE3A2077266ED6D7516A83800F0820007CD008B8503F0217AF9D97374EBD26E99CF9A6354B1E1577A05BD3257EBAEAD613AEDE64686843AFE8063B3A135EC7DDD5C75A9E7EB5EC783C56DCA950EBD413EDF0C65E19B47B46BC9E7097B8D6F259870174';
wwv_flow_imp.g_varchar2_table(193) := '1842DBCE4B3D3A17E0F5130744770F14E342492FA561B31A02E4AD2F0104407D79535B83081416F372F2C29B72FAC271595C745FD666599674F5B78B8E2D5B96D520AFCDD5EAD56E7B4FAB740FB58B4E4C1C5CDF2303F638B8F610F48F75C9D2434F8603';
wwv_flow_imp.g_varchar2_table(194) := 'B688D1658B6E91E8895D8585E659CA5F7CB6F30FD827FAFEB5DDA2277EADB3BDBB45AAB5C18F39D2CA527548A267A8C3F3420DBD7FC0DB174F493E9FABAC4272412060046201F31777215036814C366D77F91F964B572F783AF9EB95F4BDE5656DE2D373';
wwv_flow_imp.g_varchar2_table(195) := 'FF7D0C2CCB12BDEAD59371735B5371D9A06E9BBBF4D0ABF3968E66D199F271C3864596658B9E81367BA8235EBCCA5FCA5F7CB6F337DB5DFD2A3AB42ECB729312D2F81FDBC58EDE56E91DEDB4DBD17E23EE3FEF5C392B27DF794B72B9ACBB311655264071';
wwv_flow_imp.g_varchar2_table(196) := 'F5268000A83771EAAB2B81647241DE38F99ADCF4B8A7FFD2643FBDBAADABA375A8CC8A5BAE4319F99C7BEF8804EC4757260CAEEF2E8A242FAE5FB975595E3FBE5F5229560878E1854D7009200082DB7678EE4260627A5C5E7DF345999CF136CBBBC5BEC2';
wwv_flow_imp.g_varchar2_table(197) := '1D58DB655F0137B9941CCCE4E23570F18FB3FF5E86479C73FB3745274DEAB046A239EEC9C9C9D9093978FC55D1FB4278CA80D1AA095040FD092000EACF9C1A6B4CA05028C895EB97E5D0890392CE789BECA76BEC758CDBD4455E63B729BEC60474886470';
wwv_flow_imp.g_varchar2_table(198) := '7D8F34B77813787A8F85A3A70FC9C5ABEF887EA66AEC1EC543A0EE04100075474E85DE092C4AAC8CB1E6C5C2A24C4D4FCA6BC75E96B7DE3922B9BCB7715C9D2DAE13E7BCFB8565500958314BFAD7768B2EEDF41283AE103875E178714860726A52F433E6';
wwv_flow_imp.g_varchar2_table(199) := '259FDA143C4C36553B1E4A8047230820001A419D3A3D11D0FDDA3D7D87DA463373D3A25BFA16BBFCCBD8D84537D6D1872787300A058158FC9E08286785C7F8F41D3978E2653971EE98CCCDCFDA1CDCE74A64B3195B84B2A2C086C5AF4F0920007CDA30B8';
wwv_flow_imp.g_varchar2_table(200) := '25F6D55641EE4CDD94F9CCAC24B373B2909D2D3E669353C5B1D9CBD72EC9E9774ECAE1E3878A5768D76F5FF58C2D1E8F895EF5EBD5BFE74C18868A80AE8AE81BEB145DF5E1253015A4EFDEBA24078FEF9743C75E9333E74FC9951B97E5CEE42DD1CF6432';
wwv_flow_imp.g_varchar2_table(201) := '3B5FFC9CA6720B92CD65E4E6E45559482D78293AF23600680C01044063B853AB07027A8D75ECEDC372E0E84BC53DFB5F7BF365D97FECBBF2EAD1EFCAEB27F6CB89F347E5C2F5B37273EA9AA4B3290F25DE33D10961FAC5AFE3FEF78EF037AA04F433A042';
wwv_flow_imp.g_varchar2_table(202) := 'D0EBE440E594CA2CC8ED999B72FEDADBF2D6B923C5B926FA99DC7FECC5E2E7549FBF7BE49BB6383D25D9ACB761282D970704EA4D0001506FE2D45716019D7C954E6724B9902E3ED2C9ACE47305A974B6BAEE98A75FF8BAA6BD2C47300E2D01FD2CF48D55';
wwv_flow_imp.g_varchar2_table(203) := 'BEFA433F8BFA994C2533C5CFA87E56D3A94CC59FD1D082760C8C8446114000348A3CF5D6958065E92637EDA24BC174239BBA564E65BE27706F854077F15E0B96E5B256D2F7D1E02004BC11400078E384558D082C6A3F7F8DCA5E2A5637F7D1AB7E1DF3B5';
wwv_flow_imp.g_varchar2_table(204) := '6211FE727739B1291B179325A4A17CB62C4B7442A86E75AC9F995A07798F77843F8FEF01E6A9710410008D631FF99A2DB16ACA404BD7497E431B7B8A5BDBD6B4B200146E9FDF448A7FA4E44F3C6E899E944A2646E8605B57B3E87E011DBDAD362EAB6691';
wwv_flow_imp.g_varchar2_table(205) := '372562A2BB33D6AC020A86800B81984B3AC910A81D01FBBB55BB5EAB5D81CEF0D71BF98C6EED2F5ED159965D51B52B096879A619EF89D6266178E45EC3C66C31A437121ADED42B7A83A458BCFA5F95FAD987F73DDEFC6D0C81EA7FAA1B1307B50694405B';
wwv_flow_imp.g_varchar2_table(206) := '677355AEB2F414DF94884BA77DD5D6BFB64BBA06DA84ABD9073F14CAFBC1A3526C835A5FF14A007FF404AD3786D23B22EADD14E3B610D0CF5A3542D1FB4D5856B54AAB8647DBDC810E000008BC49444154941135020880A8B5B8CFE2D53BCDF58D754A5B';
wwv_flow_imp.g_varchar2_table(207) := '578B3435C544BF0EDD1E7A151BB76D75EF7EBD3AEB1DEE90A18DBDA2576BDD431DA1DDCBBF1A4DD7D6DD227DA35DA2271F5D11A1A24945C1802D9A74796435EA086319CD6D4DD23BD221235BFA8A9F3515052A0894A17E162DCB72FFECDA364BBC754E4A';
wwv_flow_imp.g_varchar2_table(208) := '735B42A2FE43FC8D25106B6CF5D40E01115D8BDD37DA29C39BFB64ECA101D78776ED8FD8B6BA777FF18BB8A755B43B1596DE08B4D963DC3AD14DC7B95534F58D750927236FECD44A3F6B45E1690B0265A89FC5B16DFDAE9F5BB519B6871494B77EE6B52C';
wwv_flow_imp.g_varchar2_table(209) := '1E10682401044023E9533704200081C81220F04613400034BA05A81F021080000420D0000208800640A74A08400002512740FC8D278000687C1BE001042000010840A0EE04100075474E8510800004A24E80F8FD400001E08756C007084000021080409D';
wwv_flow_imp.g_varchar2_table(210) := '092000EA0C9CEA20000108449D00F1FB830002C01FED801710800004200081BA124000D415379541000210883A01E2F70B0104805F5A023F2000010840000275248000A8236CAA82000420107502C4EF1F020800FFB4059E40000210800004EA46000150';
wwv_flow_imp.g_varchar2_table(211) := '37D4540401084020EA0488DF4F0410007E6A0D7C81000420000108D4890002A04EA0A90602108040D40910BFBF082000FCD51E7803010840000210A80B0104405D30530904200081A813207EBF114000F8AD45F00702108000042050070208803A40A60A';
wwv_flow_imp.g_varchar2_table(212) := '08400002512740FCFE238000F05F9BE011042000010840A0E604100035474C0510800004A24E80F8FD480001E0C756C127084000021080408D0920006A0C98E221000108449D00F1FB930002C09FED8257108000042000819A124000D4142F8543000210';
wwv_flow_imp.g_varchar2_table(213) := '883A01E2F72B0104805F5B06BF2000010840000235248000A8215C8A86000420107502C4EF5F020800FFB60D9E410002108000046A4600015033B4140C01084020EA0488DFCF0410007E6E1D7C83000420000108D4880002A04660291602108040D40910';
wwv_flow_imp.g_varchar2_table(214) := 'BFBF092000FCDD3E7807010840000210A8090104404DB0522804200081A813207EBF134000F8BD85F00F02108000042050030208801A40A54808400002512740FCFE278000F07F1BE121042000010840A0EA04100055474A8110800004A24E80F8834000';
wwv_flow_imp.g_varchar2_table(215) := '01108456C2470840000210804095092000AA0C94E220000108449D00F1078300022018ED849710800004200081AA1240005415278541000210883A01E20F0A010440505A0A3F2100010840000255248000A8224C8A82000420107502C41F1C020880E0B4';
wwv_flow_imp.g_varchar2_table(216) := '159E42000210800004AA460001503594140401084020EA04883F48041000416A2D7C8500042000010854890002A04A20290602108040D409107FB008200082D55E780B010840000210A80A0104405530520804200081A81320FEA011400004ADC5F01702';
wwv_flow_imp.g_varchar2_table(217) := '108000042050050208802A40A40808400002512740FCC1238000085E9BE13104200001084060D5041000AB46480110800004A24E80F88348000110C456C367084000021080C02A092000560990EC10800004A24E80F88349000110CC76C36B0840000210';
wwv_flow_imp.g_varchar2_table(218) := '80C0AA08200056858FCC10800004A24E80F8834A000110D496C36F084000021080C02A08200056018FAC10800004A24E80F8834B000110DCB6C37308400002108040C504100015A3232304200081A81320FE2013400004B9F5F01D021080000420502101';
wwv_flow_imp.g_varchar2_table(219) := '044085E0C80601084020EA04883FD8041000C16E3FBC87000420000108544400015011363241000210883A01E20F3A010440D05B10FF210001084000021510400054008D2C10800004A24E80F8834F000110FC36240208400002108040D9041000652323';
wwv_flow_imp.g_varchar2_table(220) := '0304200081A81320FE3010400084A1158901021080000420502601044099C03087000420107502C41F0E02088070B4235140000210800004CA228000280B17C610800004A24E80F8C3420001109696240E084000021080401904100065C0C21402108040';
wwv_flow_imp.g_varchar2_table(221) := 'D409107F78082000C2D3964402010840000210F04C0001E019158610800004A24E80F8C344000110A6D6241608400002108080470208008FA03083000420107502C41F2E02088070B527D1400002108000043C11400078C2841104200081A81320FEB011';
wwv_flow_imp.g_varchar2_table(222) := '400084AD458907021080000420E0810002C003244C20000108449D00F1878F0002207C6D4A44108000042000015702080057441840000210883A01E20F23010440185B9598200001084000022E0410002E804886000420107502C41F4E02088070B62B51';
wwv_flow_imp.g_varchar2_table(223) := '410002108000048C041000463C2442000210883A01E20F2B010440585B96B82000010840000206020800031C9220000108449D00F18797000220BC6D4B64108000042000014702080047342440000210883A01E20F33010440985B97D820000108400002';
wwv_flow_imp.g_varchar2_table(224) := '0E0410000E60380C01084020EA04883FDC041000E16E5FA283000420000108942480002889858310800004A24E80F8C34E000110F616263E08400002108040090208801250380401084020EA04883FFC041000E16F6322840004200001083C400001F000';
wwv_flow_imp.g_varchar2_table(225) := '120E40000210883A01E28F02010440145A9918210001084000022B0820005600E12D04200081A81320FE6810400044A39D8912021080000420701F0104C07D38780301084020EA04883F2A041000516969E2840004200001082C23800058068397108000';
wwv_flow_imp.g_varchar2_table(226) := '04A24E80F8A3430001109DB62652084000021080C0FB041000EFA3E00504200081A81320FE2811400044A9B58915021080000420F01E0104C07B207882000420107502C41F2D02088068B537D1420002108000048A041000450CFC81000420107502C41F';
wwv_flow_imp.g_varchar2_table(227) := '35020880A8B538F1420002108000046C0208001B02BF10800004A24E80F8A347000110BD362762084000021080802000F81040000210883C010044910002208AAD4ECC10800004201079020880C87F0400000108449D00F147930002209AED4ED4108000';
wwv_flow_imp.g_varchar2_table(228) := '04201071020880887F00081F0210883A01E28F2A010440545B9EB8210001084020D2041000916E7E82870004A24E80F8A34B000110DDB6277208400002108830010440841B9FD0210081A81320FE2813400044B9F5891D0210800004224B000110D9A627';
wwv_flow_imp.g_varchar2_table(229) := '70084020EA04883FDA04FE3B000000FFFFB2B3F6EB000000064944415403005C8C11A52AF34DE70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8663260239770022)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8664585463770027)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
 p_id=>wwv_flow_imp.id(8978022268187828)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8673029774770082)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(8673029774770082)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8673760880770088)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8673301495770086)
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
 p_id=>wwv_flow_imp.id(8850924801122917)
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctor_specialties_specialty_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8851609594122923)
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8976557151187827)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8946739632982045)
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8975871124187817)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9083714451318137)
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8664884955770031)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8659637059769930)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8689810034847086)
,p_parent_id=>wwv_flow_imp.id(8688510289847081)
,p_short_name=>'5'
,p_static_id=>'5'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9128773179599349)
,p_short_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
,p_created_on=>wwv_flow_imp.dz('20260715115929Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115929Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9098984716318331)
,p_short_name=>'Admissions'
,p_static_id=>'admissions'
,p_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>37
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9110590970542742)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>39
,p_created_on=>wwv_flow_imp.dz('20260715115003Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115003Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8801274894018857)
,p_short_name=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8992714711188003)
,p_short_name=>'Appointments'
,p_static_id=>'appointments'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9199308541958620)
,p_short_name=>'Appointments'
,p_static_id=>'appointments-2'
,p_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>29
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8688510289847081)
,p_short_name=>'Departments'
,p_static_id=>'departments'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8776339912928787)
,p_short_name=>'Doctor Specialties'
,p_static_id=>'doctor-specialties'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8866866067123077)
,p_short_name=>'Doctors'
,p_static_id=>'doctors'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8659815608769933)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8789380285008903)
,p_short_name=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9123245379579029)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
,p_created_on=>wwv_flow_imp.dz('20260715115606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8961193335982256)
,p_short_name=>'Medicines'
,p_static_id=>'medicines'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8995610524204238)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20260715105338Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105338Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9116987952566426)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
,p_created_on=>wwv_flow_imp.dz('20260715115400Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115400Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8841061536048170)
,p_short_name=>'Patients'
,p_static_id=>'patients'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9054167284225410)
,p_short_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20260715105710Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105710Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8816799281036435)
,p_short_name=>'Room Form'
,p_static_id=>'room-form'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260715073902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073902Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9028108092218814)
,p_short_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
,p_created_on=>wwv_flow_imp.dz('20260715105604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
 p_id=>wwv_flow_imp.id(8660588178769945)
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
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
 p_id=>wwv_flow_imp.id(8658951555769920)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
 p_id=>wwv_flow_imp.id(8659289997769927)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
,p_created_on=>wwv_flow_imp.dz('20260715065437Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715065437Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home Dashboard'
,p_alias=>'HOME'
,p_step_title=>'Hospital Operations Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.t-MetricCards{gap:16px;padding:8px 0 18px}.t-MetricCards-item .t-MetricCard{border:0;border-radius:14px;box-shadow:0 8px 22px rgba(28,55,72,.12);min-height:96px;overflow:hidden;transition:transform .18s ease,box-shadow .18s ease}.t-MetricCards-item '
||'.t-MetricCard:hover{transform:translateY(-3px);box-shadow:0 12px 28px rgba(28,55,72,.18)}.t-MetricCards-item:nth-child(1) .t-MetricCard{background:linear-gradient(135deg,#1565c0,#42a5f5)}.t-MetricCards-item:nth-child(2) .t-MetricCard{background:linea'
||'r-gradient(135deg,#00897b,#4db6ac)}.t-MetricCards-item:nth-child(3) .t-MetricCard{background:linear-gradient(135deg,#6a1b9a,#ab47bc)}.t-MetricCards-item:nth-child(4) .t-MetricCard{background:linear-gradient(135deg,#ef6c00,#ffa726)}.t-MetricCards-item'
||':nth-child(5) .t-MetricCard{background:linear-gradient(135deg,#c62828,#ef5350)}.t-MetricCard-title,.t-MetricCard-metric{color:#fff!important}.t-MetricCard-title{font-weight:600;opacity:.92}.t-MetricCard-metric{font-size:2rem;font-weight:800}.a-Chart{'
||'border-radius:16px;background:#fff}.t-Body-mainContent{background:#f5f7fa}#R8966918061094536::before,#R8967454060094541::before,#R8967952041094546::before{display:block;margin:10px 0 0 18px;color:#263238;font-size:1.05rem;font-weight:750;letter-spaci'
||'ng:.01em}#R8966918061094536::before{content:"Appointments by Department"}#R8967454060094541::before{content:"Patients by Gender"}#R8967952041094546::before{content:"Medicine Stock Status"}'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715141000Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8672442124770071)
,p_plug_name=>'Al Noor Hospital Operations System'
,p_static_id=>'al-noor-hospital-operations-system'
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
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8966503965094532)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Total Patients'' title, count(*) metric, 1 sort_order from patients',
'union all',
'select ''Today''''s Appointments'' title, count(*) metric, 2 sort_order from appointments where trunc(appointment_date) = trunc(sysdate)',
'union all',
'select ''Active Doctors'' title, count(*) metric, 3 sort_order from doctors where upper(status) = ''ACTIVE''',
'union all',
'select ''Current Admissions'' title, count(*) metric, 4 sort_order from admissions where upper(status) = ''ADMITTED'' and discharge_date is null',
'union all',
'select ''Low Stock Medicines'' title, count(*) metric, 5 sort_order from medicines where current_stock <= reorder_level'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'LAYOUT', '5cols',
  'METRIC', '&METRIC.',
  'TITLE', '&TITLE.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715113549Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140254Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8966776459094534)
,p_name=>'METRIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'METRIC'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260715113549Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8966861637094535)
,p_name=>'SORT_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_ORDER'
,p_data_type=>'NUMBER'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260715114146Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8966690875094533)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20260715113549Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8966918061094536)
,p_plug_name=>'New'
,p_static_id=>'new_1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715114347Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140733Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8967010935094537)
,p_region_id=>wwv_flow_imp.id(8966918061094536)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
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
,p_created_on=>wwv_flow_imp.dz('20260715114347Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140733Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8967145922094538)
,p_chart_id=>wwv_flow_imp.id(8967010935094537)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.department_name label, count(*) value',
'from appointments a',
'join doctors dr on dr.doctor_id = a.doctor_id',
'join departments d on d.department_id = dr.department_id',
'group by d.department_name'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260715114347Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114347Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8967243310094539)
,p_chart_id=>wwv_flow_imp.id(8967010935094537)
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
,p_created_on=>wwv_flow_imp.dz('20260715114347Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114347Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8967383271094540)
,p_chart_id=>wwv_flow_imp.id(8967010935094537)
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
,p_created_on=>wwv_flow_imp.dz('20260715114347Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114347Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8967454060094541)
,p_plug_name=>'New'
,p_static_id=>'new_2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715114516Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140255Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8967534101094542)
,p_region_id=>wwv_flow_imp.id(8967454060094541)
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
,p_created_on=>wwv_flow_imp.dz('20260715114516Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140255Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8967610238094543)
,p_chart_id=>wwv_flow_imp.id(8967534101094542)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>'select gender label, count(*) value from patients group by gender'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260715114516Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140255Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8967952041094546)
,p_plug_name=>'New'
,p_static_id=>'new_3'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>12
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260715114546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140733Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8968056175094547)
,p_region_id=>wwv_flow_imp.id(8967952041094546)
,p_chart_type=>'lineWithArea'
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
,p_created_on=>wwv_flow_imp.dz('20260715114546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140733Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8968102230094548)
,p_chart_id=>wwv_flow_imp.id(8968056175094547)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when current_stock <= reorder_level then ''Low Stock'' else ''Normal'' end label, count(*) value',
'from medicines',
'group by case when current_stock <= reorder_level then ''Low Stock'' else ''Normal'' end'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260715114546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140255Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8968252918094549)
,p_chart_id=>wwv_flow_imp.id(8968056175094547)
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
,p_created_on=>wwv_flow_imp.dz('20260715114546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114546Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8968343801094550)
,p_chart_id=>wwv_flow_imp.id(8968056175094547)
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
,p_created_on=>wwv_flow_imp.dz('20260715114546Z')
,p_updated_on=>wwv_flow_imp.dz('20260715114546Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Departments'
,p_alias=>'DEPARTMENTS'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715070750Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8688695526847081)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8684903259847052)
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
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070750Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8685041554847052)
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
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_DEPARTMENT_ID:\#DEPARTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Open Clinical Visit" class="fa fa-stethoscope" title="Open Clinical Visit"></span>'
,p_internal_uid=>8685041554847052
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070750Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8686210503847065)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8686672107847074)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8687042495847076)
,p_db_column_name=>'FLOOR_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Floor No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8687461877847078)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8690028402849221)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_ID:DEPARTMENT_NAME:FLOOR_NO:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715070750Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070750Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8687835339847079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8684903259847052)
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
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'DEPARTMENT'
,p_step_title=>'5'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715074206Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8678198502846852)
,p_plug_name=>'5'
,p_static_id=>'5'
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
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8689282967847086)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715070728Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070728Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8681383106846873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8682619669846876)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8681877269846875)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8678198502846852)
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
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8682206195846876)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8683055932846877)
,p_branch_action=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8678582475846863)
,p_name=>'P5_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_item_source_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8678939971846868)
,p_name=>'P5_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_item_source_plug_id=>wwv_flow_imp.id(8678198502846852)
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
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8679319265846869)
,p_name=>'P5_FLOOR_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_item_source_plug_id=>wwv_flow_imp.id(8678198502846852)
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
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8679758198846871)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_item_source_plug_id=>wwv_flow_imp.id(8678198502846852)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715071702Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8683444559846878)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8678198502846852)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 5'
,p_static_id=>'initialize-form-5'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8683444559846878
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8683853783846880)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8678198502846852)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 5'
,p_static_id=>'process-form-5'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8683853783846880
,p_created_on=>wwv_flow_imp.dz('20260715070726Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070726Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Doctor Specialties'
,p_alias=>'DOCTOR-SPECIALTIES'
,p_step_title=>'Doctor Specialties'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715072112Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8776471503928787)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8772258852928725)
,p_plug_name=>'Doctor Specialties'
,p_static_id=>'doctor-specialties'
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
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072112Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8772303692928725)
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
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_SPECIALTY_ID:\#SPECIALTY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8772303692928725
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072112Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8773519474928750)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Specialty ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8773914436928763)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8774321910928767)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8777087365929478)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPECIALTY_ID:SPECIALTY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715072112Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072112Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8774749290928770)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8772258852928725)
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
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8775127491928771)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8772258852928725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8775525903928775)
,p_event_id=>wwv_flow_imp.id(8775127491928771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8772258852928725)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072105Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072105Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Doctor Specialty Form'
,p_alias=>'DOCTOR-SPECIALTY-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Doctor Specialty Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8767764673928592)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8765234645928581)
,p_plug_name=>'Doctor Specialty Form'
,p_static_id=>'doctor-specialty-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8768114780928592)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8767764673928592)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8768639700928593)
,p_button_id=>wwv_flow_imp.id(8768114780928592)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8769935953928597)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8767764673928592)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8769102996928596)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8767764673928592)
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
,p_button_condition=>'P7_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8769592300928597)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8767764673928592)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8765603165928586)
,p_name=>'P7_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8765234645928581)
,p_item_source_plug_id=>wwv_flow_imp.id(8765234645928581)
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8766077409928590)
,p_name=>'P7_SPECIALTY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8765234645928581)
,p_item_source_plug_id=>wwv_flow_imp.id(8765234645928581)
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
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8766456178928591)
,p_name=>'P7_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8765234645928581)
,p_item_source_plug_id=>wwv_flow_imp.id(8765234645928581)
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
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8771175625928599)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8771175625928599
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8770391381928598)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8765234645928581)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor Specialty Form'
,p_static_id=>'initialize-form-doctor-specialty-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8770391381928598
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8770739993928599)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8765234645928581)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor Specialty Form'
,p_static_id=>'process-form-doctor-specialty-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8770739993928599
,p_created_on=>wwv_flow_imp.dz('20260715072103Z')
,p_updated_on=>wwv_flow_imp.dz('20260715072103Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Medicine Categories'
,p_alias=>'MEDICINE-CATEGORIES'
,p_step_title=>'Medicine Categories'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073431Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8789495448008903)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8785293300008878)
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
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073431Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8785330677008878)
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
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_CATEGORY_ID:\#CATEGORY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8785330677008878
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073431Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8786522593008891)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Category ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8786935551008895)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8787395428008897)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8790090572009384)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CATEGORY_ID:CATEGORY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715073431Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073431Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8787721489008899)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8785293300008878)
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
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8788128775008899)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8785293300008878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8788583485008900)
,p_event_id=>wwv_flow_imp.id(8788128775008899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8785293300008878)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073426Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073426Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Medicine Category Form'
,p_alias=>'MEDICINE-CATEGORY-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Category Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715073424Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8780771459008738)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8778317312008725)
,p_plug_name=>'Medicine Category Form'
,p_static_id=>'medicine-category-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715073424Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073424Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8781126823008739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8780771459008738)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8781652495008741)
,p_button_id=>wwv_flow_imp.id(8781126823008739)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8782953348008744)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8780771459008738)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8782119896008743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8780771459008738)
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
,p_button_condition=>'P9_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8782555559008743)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8780771459008738)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8778762280008731)
,p_name=>'P9_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8778317312008725)
,p_item_source_plug_id=>wwv_flow_imp.id(8778317312008725)
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8779068975008736)
,p_name=>'P9_CATEGORY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8778317312008725)
,p_item_source_plug_id=>wwv_flow_imp.id(8778317312008725)
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
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8779434308008737)
,p_name=>'P9_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8778317312008725)
,p_item_source_plug_id=>wwv_flow_imp.id(8778317312008725)
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
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8784135669008746)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8784135669008746
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8783383120008744)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8778317312008725)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Category Form'
,p_static_id=>'initialize-form-medicine-category-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8783383120008744
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8783790900008746)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8778317312008725)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Category Form'
,p_static_id=>'process-form-medicine-category-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8783790900008746
,p_created_on=>wwv_flow_imp.dz('20260715073425Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073425Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Appointment Statuses'
,p_alias=>'APPOINTMENT-STATUSES'
,p_step_title=>'Appointment Statuses'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073622Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8797575416018835)
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
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073622Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8797644187018835)
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
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_STATUS_ID:\#STATUS_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8797644187018835
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073622Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8798852339018847)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Status ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8799212781018851)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8801969071020492)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS_ID:STATUS_NAME'
,p_created_on=>wwv_flow_imp.dz('20260715073622Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073622Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8801344936018857)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8799691171018853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8797575416018835)
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
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8800042997018853)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8797575416018835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8800437075018854)
,p_event_id=>wwv_flow_imp.id(8800042997018853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8797575416018835)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Appointment Status Form'
,p_alias=>'APPOINTMENT-STATUS-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Status Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8791261155018692)
,p_plug_name=>'Appointment Status Form'
,p_static_id=>'appointment-status-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8793060824018701)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8793402141018702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8793060824018701)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8793905846018702)
,p_button_id=>wwv_flow_imp.id(8793402141018702)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8795266710018705)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8793060824018701)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8794456810018704)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8793060824018701)
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
,p_button_condition=>'P11_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8794863920018705)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8793060824018701)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8791630070018697)
,p_name=>'P11_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8791261155018692)
,p_item_source_plug_id=>wwv_flow_imp.id(8791261155018692)
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8792023237018700)
,p_name=>'P11_STATUS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8791261155018692)
,p_item_source_plug_id=>wwv_flow_imp.id(8791261155018692)
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
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8796485643018706)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8796485643018706
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8795617176018705)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8791261155018692)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment Status Form'
,p_static_id=>'initialize-form-appointment-status-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8795617176018705
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8796023364018706)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8791261155018692)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Status Form'
,p_static_id=>'process-form-appointment-status-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8796023364018706
,p_created_on=>wwv_flow_imp.dz('20260715073604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Room Form'
,p_alias=>'ROOM-FORM'
,p_step_title=>'Room Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715073924Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8816856684036435)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715073902Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073902Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8811802995036417)
,p_plug_name=>'Room Form'
,p_static_id=>'room-form'
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
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073924Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8811984203036417)
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
,p_internal_uid=>8811984203036417
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073924Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8814331716036429)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8813198131036422)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Room ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8813509469036425)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8813973036036427)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8814795211036431)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8817408542038652)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROOM_ID:ROOM_NO:ROOM_TYPE:DAILY_RATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715073924Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073924Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8815151952036433)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8811802995036417)
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
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8815573800036433)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8811802995036417)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8815902672036434)
,p_event_id=>wwv_flow_imp.id(8815573800036433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8811802995036417)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073901Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Room'
,p_page_mode=>'MODAL'
,p_step_title=>'14'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715074232Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8803417985036281)
,p_plug_name=>'Room Form'
,p_static_id=>'14'
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074138Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8807349992036284)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8807779794036285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8807349992036284)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8808240477036285)
,p_button_id=>wwv_flow_imp.id(8807779794036285)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8809546081036286)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8807349992036284)
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8808795244036285)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8807349992036284)
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8809183404036286)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8807349992036284)
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8805048298036283)
,p_name=>'P13_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_item_source_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_prompt=>'Daily Rate'
,p_source=>'DAILY_RATE'
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8803893804036282)
,p_name=>'P13_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_item_source_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8804217029036283)
,p_name=>'P13_ROOM_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_item_source_plug_id=>wwv_flow_imp.id(8803417985036281)
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8804615561036283)
,p_name=>'P13_ROOM_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_item_source_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_prompt=>'Room Type'
,p_source=>'ROOM_TYPE'
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8805434823036284)
,p_name=>'P13_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_item_source_plug_id=>wwv_flow_imp.id(8803417985036281)
,p_prompt=>'Status'
,p_source=>'STATUS'
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
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8810772001036287)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8810772001036287
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8809997810036286)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8803417985036281)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 14'
,p_static_id=>'initialize-form-14'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8809997810036286
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8810397121036286)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8803417985036281)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 14'
,p_static_id=>'process-form-14'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8810397121036286
,p_created_on=>wwv_flow_imp.dz('20260715073900Z')
,p_updated_on=>wwv_flow_imp.dz('20260715073900Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Patients'
,p_alias=>'PATIENTS'
,p_step_title=>'Patients'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715121243Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8841128821048170)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8833305634048142)
,p_plug_name=>'Patients'
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
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121243Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8833487065048142)
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
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_PATIENT_ID:\#PATIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8833487065048142
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121243Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8837850631048162)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8837498107048160)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8835068620048149)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8839018037048167)
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
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8836209475048155)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8837011689048158)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8838254755048164)
,p_db_column_name=>'EMERGENCY_CONTACT_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emergency Contact Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8838683006048165)
,p_db_column_name=>'EMERGENCY_CONTACT_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Emergency Contact No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8835406567048151)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#FULL_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121243Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8835836260048153)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8836600722048156)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8834690874048147)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8842209617061409)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:EMERGENCY_CONTACT_NAME:EMERGENCY_CONTACT_NO:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260715074311Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074311Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8839488924048169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8833305634048142)
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
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8842763382086601)
,p_validation_name=>' Validate Unique Civil ID'
,p_static_id=>'validate-unique-civil-id'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM patients',
'WHERE UPPER(TRIM(civil_id)) = UPPER(TRIM(:P15_CIVIL_ID))',
'  AND patient_id <> NVL(:P15_PATIENT_ID, -1)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This Civil ID is already registered for another patient.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715075136Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075136Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8839862955048169)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8833305634048142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8840234503048169)
,p_event_id=>wwv_flow_imp.id(8839862955048169)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8833305634048142)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715074059Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074059Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8828832085048021)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8829227176048022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8828832085048021)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8829758307048022)
,p_button_id=>wwv_flow_imp.id(8829227176048022)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8831039000048023)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8828832085048021)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8830247954048023)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8828832085048021)
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
,p_button_condition=>'P19_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8830627682048023)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8828832085048021)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8823237700048016)
,p_name=>'P19_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8822891348048015)
,p_name=>'P19_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8820413281048014)
,p_name=>'P19_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8824462871048016)
,p_name=>'P19_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8821682083048015)
,p_name=>'P19_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8822455338048015)
,p_name=>'P19_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8823617117048016)
,p_name=>'P19_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8824042098048016)
,p_name=>'P19_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8820850690048014)
,p_name=>'P19_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8821218939048014)
,p_name=>'P19_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_prompt=>'Gender'
,p_source=>'GENDER'
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8822066158048015)
,p_name=>'P19_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
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
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8820032760048013)
,p_name=>'P19_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_item_source_plug_id=>wwv_flow_imp.id(8819649005048012)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8824872519048018)
,p_validation_name=>'P19_CREATED_AT must be timestamp'
,p_static_id=>'p19-created-at-must-be-timestamp'
,p_validation_sequence=>110
,p_validation=>'P19_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(8824462871048016)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8832223217048024)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8832223217048024
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8831495282048023)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8819649005048012)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Patient Form'
,p_static_id=>'initialize-form-patient-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8831495282048023
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8831861944048023)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8819649005048012)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Patient Form'
,p_static_id=>'process-form-patient-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8831861944048023
,p_created_on=>wwv_flow_imp.dz('20260715074057Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074057Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Doctors'
,p_alias=>'DOCTORS'
,p_step_title=>'Doctors'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715103955Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8866949743123077)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8860788877123054)
,p_plug_name=>'Doctors'
,p_static_id=>'doctors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCTOR_ID,',
'       FULL_NAME,',
'       DEPARTMENT_ID,',
'       SPECIALTY_ID,',
'       MOBILE_NO,',
'       EMAIL,',
'       CONSULTATION_FEE,',
'       STATUS',
'  from DOCTORS'))
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
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103955Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8860891386123055)
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
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_DOCTOR_ID:\#DOCTOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8860891386123055
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103955Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8864413740123072)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8963413666094501)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Department Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(8850924801122917)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103954Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8862014136123060)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8864059623123070)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8862471419123063)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8863693541123068)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8963556771094502)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Specialty Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(8851609594122923)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103533Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103955Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8864843217123073)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8943258529963022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715101326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103534Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8865201579123075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8860788877123054)
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
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8865669933123075)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8860788877123054)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8866082349123076)
,p_event_id=>wwv_flow_imp.id(8865669933123075)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8860788877123054)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075328Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075328Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Doctor Form'
,p_alias=>'DOCTOR-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Doctor Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715104231Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8856211919122925)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8849639992122914)
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8856610789122926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8856211919122925)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8857179349122927)
,p_button_id=>wwv_flow_imp.id(8856610789122926)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8858449400122928)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8856211919122925)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8857692035122928)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8856211919122925)
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
,p_button_condition=>'P21_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8858016708122928)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8856211919122925)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8853006479122924)
,p_name=>'P21_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_prompt=>'Consultation Fee'
,p_source=>'CONSULTATION_FEE'
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8850823221122916)
,p_name=>'P21_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id   AS return_value',
'FROM departments',
'WHERE status = ''Active''',
'   OR department_id = :P17_DEPARTMENT_ID',
'ORDER BY department_name'))
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075539Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8850067389122915)
,p_name=>'P21_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8852640383122924)
,p_name=>'P21_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_prompt=>'Email'
,p_source=>'EMAIL'
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8850468989122915)
,p_name=>'P21_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8852296988122923)
,p_name=>'P21_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8851564927122923)
,p_name=>'P21_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_prompt=>'Specialty Id'
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT specialty_name AS display_value,',
'       specialty_id   AS return_value',
'FROM doctor_specialties',
'WHERE status = ''Active''',
'   OR specialty_id = :P17_SPECIALTY_ID',
'ORDER BY specialty_name'))
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075610Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8853483569122924)
,p_name=>'P21_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8849639992122914)
,p_item_source_plug_id=>wwv_flow_imp.id(8849639992122914)
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
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104231Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8859677973122929)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8859677973122929
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8858802054122928)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8849639992122914)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Doctor Form'
,p_static_id=>'initialize-form-doctor-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8858802054122928
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8859247325122929)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8849639992122914)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Doctor Form'
,p_static_id=>'process-form-doctor-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8859247325122929
,p_created_on=>wwv_flow_imp.dz('20260715075326Z')
,p_updated_on=>wwv_flow_imp.dz('20260715075326Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Medicines'
,p_alias=>'MEDICINES'
,p_step_title=>'Medicines'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715104617Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8961273002982256)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8955566099982215)
,p_plug_name=>'Medicines'
,p_static_id=>'medicines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEDICINE_ID,',
'       MEDICINE_NAME,',
'       CATEGORY_ID,',
'       UNIT,',
'       CURRENT_STOCK,',
'       REORDER_LEVEL,',
'       STATUS',
'  from MEDICINES'))
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
,p_created_on=>wwv_flow_imp.dz('20260715101638Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104617Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8955682723982215)
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
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_MEDICINE_ID:\#MEDICINE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8955682723982215
,p_created_on=>wwv_flow_imp.dz('20260715101638Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104617Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8963643219094503)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715104617Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104617Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8958369021982245)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8956734632982230)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8957168482982239)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8958720907982248)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8959146655982250)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8957970058982243)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8971192788146583)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715104402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104617Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8959523869982251)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8955566099982215)
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
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8959928713982252)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8955566099982215)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8960388163982253)
,p_event_id=>wwv_flow_imp.id(8959928713982252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8955566099982215)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715101639Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101639Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Medicine Form'
,p_alias=>'MEDICINE-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Medicine Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715101636Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715101850Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8951023138982067)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8945581465982030)
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8951477509982068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8951023138982067)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8951951486982070)
,p_button_id=>wwv_flow_imp.id(8951477509982068)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8953265811982073)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8951023138982067)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8952449769982072)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8951023138982067)
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
,p_button_condition=>'P23_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8952894876982072)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8951023138982067)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8946608008982044)
,p_name=>'P23_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT category_name AS display_value,',
'       category_id   AS return_value',
'FROM medicine_categories',
'WHERE status = ''Active''',
'   OR category_id = :P19_CATEGORY_ID',
'ORDER BY category_name'))
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101850Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8947734228982064)
,p_name=>'P23_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8945819684982038)
,p_name=>'P23_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8946233170982044)
,p_name=>'P23_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8948134734982065)
,p_name=>'P23_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8948556183982065)
,p_name=>'P23_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8947315682982064)
,p_name=>'P23_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_item_source_plug_id=>wwv_flow_imp.id(8945581465982030)
,p_prompt=>'Unit'
,p_source=>'UNIT'
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
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8954439683982075)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8954439683982075
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8953658128982073)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8945581465982030)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Medicine Form'
,p_static_id=>'initialize-form-medicine-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8953658128982073
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8954067929982075)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8945581465982030)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Medicine Form'
,p_static_id=>'process-form-medicine-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8954067929982075
,p_created_on=>wwv_flow_imp.dz('20260715101637Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101637Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);

wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(230000000000001)
,p_validation_name=>'Current stock cannot be negative'
,p_validation_sequence=>80
,p_validation=>':P23_CURRENT_STOCK >= 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Current stock cannot be negative.'
,p_associated_item=>wwv_flow_imp.id(8954769063187463)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(230000000000002)
,p_validation_name=>'Reorder level cannot be negative'
,p_validation_sequence=>90
,p_validation=>':P23_REORDER_LEVEL >= 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Reorder level cannot be negative.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);

end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Appointments'
,p_alias=>'APPOINTMENTS'
,p_step_title=>'Appointments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715121745Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8986642437187968)
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
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121745Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8986797690187968)
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
,p_detail_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29:P29_APPOINTMENT_ID:\#APPOINTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8986797690187968
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121745Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8989133036187989)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#APPOINTMENT_DATE#'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121745Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8987913644187983)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8989581939187990)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8990796068187995)
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
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8988780452187987)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8976557151187827)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8988304616187986)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8975871124187817)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8990354156187994)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8989987122187992)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8978022268187828)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9134816162694829)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_ID:REASON_FOR_VISIT:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260715121524Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121524Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8992896252188003)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8991169941187997)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8986642437187968)
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
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8991551636187998)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8986642437187968)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8991966921187999)
,p_event_id=>wwv_flow_imp.id(8991551636187998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8986642437187968)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105056Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105056Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715105223Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8974909134187808)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8982247446187833)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8982655566187834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8982247446187833)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8983131289187836)
,p_button_id=>wwv_flow_imp.id(8982655566187834)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8984427364187840)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8982247446187833)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8983664901187839)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8982247446187833)
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
,p_button_condition=>'P25_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8984055675187840)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8982247446187833)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_APPOINTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8977181346187828)
,p_name=>'P25_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105223Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8975393833187814)
,p_name=>'P25_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8977540729187828)
,p_name=>'P25_APPOINTMENT_TIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_prompt=>'Appointment Time'
,p_source=>'APPOINTMENT_TIME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8979071551187829)
,p_name=>'P25_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8976403638187827)
,p_name=>'P25_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8975704339187817)
,p_name=>'P25_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105223Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8978664613187829)
,p_name=>'P25_REASON_FOR_VISIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_prompt=>'Reason For Visit'
,p_source=>'REASON_FOR_VISIT'
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
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8977939070187828)
,p_name=>'P25_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_item_source_plug_id=>wwv_flow_imp.id(8974909134187808)
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPOINTMENT_STATUSES.STATUS_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8979456808187830)
,p_validation_name=>'P25_CREATED_AT must be timestamp'
,p_static_id=>'p25-created-at-must-be-timestamp'
,p_validation_sequence=>70
,p_validation=>'P25_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(8979071551187829)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8985667812187842)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8985667812187842
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8984891489187840)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8974909134187808)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment Form'
,p_static_id=>'initialize-form-appointment-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8984891489187840
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8985224675187842)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8974909134187808)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Form'
,p_static_id=>'process-form-appointment-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8985224675187842
,p_created_on=>wwv_flow_imp.dz('20260715105054Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105054Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);

wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(250000000000001)
,p_validation_name=>'Appointment cannot be in the past'
,p_validation_sequence=>80
,p_validation=>':P25_APPOINTMENT_DATE >= TRUNC(SYSDATE)'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Appointment date cannot be in the past.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);

end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260715105338Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9011863623204620)
,p_plug_name=>'Appointment History'
,p_static_id=>'appointment-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(8996654942204239)
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
,p_created_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9013655206204627)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9013117210204625)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9017668922204638)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9014655995204631)
,p_name=>'APPOINTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9018633932204641)
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
,p_is_required=>true
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
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9021577823204648)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP'
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
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9016655213204636)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9015655070204633)
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
,p_parent_column_id=>wwv_flow_imp.id(8999475097204396)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9020612085204646)
,p_name=>'REASON_FOR_VISIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_FOR_VISIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason For Visit'
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
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9019657379204644)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105342Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9011940835204620)
,p_internal_uid=>9011940835204620
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
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9012607506204623)
,p_interactive_grid_id=>wwv_flow_imp.id(9011940835204620)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9012767422204624)
,p_report_id=>wwv_flow_imp.id(9012607506204623)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9014164263204628)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9013655206204627)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9015182734204633)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9014655995204631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9016172296204635)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9015655070204633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9017108561204638)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9016655213204636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9018163620204640)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9017668922204638)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9019192925204643)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9018633932204641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9020170600204646)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9019657379204644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9021094179204648)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9020612085204646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9022086926204651)
,p_view_id=>wwv_flow_imp.id(9012767422204624)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9021577823204648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9138417953824414)
,p_plug_name=>'Appointment History'
,p_static_id=>'appointment-history_1'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(8996654942204239)
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
,p_created_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9138759057824417)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9138699589824416)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9138870260824418)
,p_name=>'APPOINTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140023340824430)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9139018391824420)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140284604824432)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140104956824431)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9138956554824419)
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
,p_parent_column_id=>wwv_flow_imp.id(8999475097204396)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9139975970824429)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9139856551824428)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9139766162824427)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9138554344824415)
,p_internal_uid=>9011940835204620
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9163783356886745)
,p_interactive_grid_id=>wwv_flow_imp.id(9138554344824415)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9163838641886745)
,p_report_id=>wwv_flow_imp.id(9163783356886745)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9165361311886749)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9138759057824417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9166284832886751)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9138870260824418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9167164292886753)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9138956554824419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9168083499886755)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9139018391824420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9168962603886757)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9139766162824427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9169896463886759)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9139856551824428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9170758131886761)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9139975970824429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9171605697886763)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9140023340824430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9172552863886765)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9140104956824431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9173403065886768)
,p_view_id=>wwv_flow_imp.id(9163838641886745)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9140284604824432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9140396921824433)
,p_plug_name=>'Appointment History'
,p_static_id=>'appointment-history_2'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ADMISSIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(8996654942204239)
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
,p_created_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9141820227824448)
,p_name=>'ADMISSION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Admission Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9141694167824446)
,p_name=>'ADMISSION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9142012115824450)
,p_name=>'ADMISSION_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Admission Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140652570824436)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140521379824435)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9141958292824449)
,p_name=>'DISCHARGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCHARGE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Discharge Date'
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140904415824439)
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9140861292824438)
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
,p_parent_column_id=>wwv_flow_imp.id(8999475097204396)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9141720897824447)
,p_name=>'ROOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Room Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9157257753884301)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9140472730824434)
,p_internal_uid=>9011940835204620
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
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9164322823886746)
,p_interactive_grid_id=>wwv_flow_imp.id(9140472730824434)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9164492093886746)
,p_report_id=>wwv_flow_imp.id(9164322823886746)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9174761704886771)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9140652570824436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9175681581886773)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9140861292824438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9176503526886775)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9140904415824439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9177415178886777)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9141694167824446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9178367586886779)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9141720897824447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9179261342886781)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9141820227824448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9180150596886783)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9141958292824449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9181027232886785)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9142012115824450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9181986180886787)
,p_view_id=>wwv_flow_imp.id(9164492093886746)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9157257753884301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8995060913204237)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715105338Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105338Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8995873308204238)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105338Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105338Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8996654942204239)
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
,p_created_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9007444508204417)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>300
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8998400513204390)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8997909691204385)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9006402035204414)
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
,p_max_length=>3
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9000455054204399)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9010429831204424)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP'
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9003442230204407)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9005410834204412)
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
,p_max_length=>150
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9008428364204419)
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
,p_max_length=>150
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9009470170204422)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9001420008204402)
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
,p_max_length=>150
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002498110204404)
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
,p_is_required=>true
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9004421400204409)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8999475097204396)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8996751505204372)
,p_internal_uid=>8996751505204372
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
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8997401276204381)
,p_interactive_grid_id=>wwv_flow_imp.id(8996751505204372)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8997513172204383)
,p_report_id=>wwv_flow_imp.id(8997401276204381)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8998953357204395)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8998400513204390)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8999958003204398)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8999475097204396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9000982670204401)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9000455054204399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9001934499204404)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9001420008204402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002951535204406)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9002498110204404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9003901052204409)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9003442230204407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9004943041204411)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9004421400204409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9005953629204414)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9005410834204412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9006975774204416)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9006402035204414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9007983886204419)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9007444508204417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9008945945204421)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9008428364204419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9009922321204424)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(9009470170204422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9010978486204427)
,p_view_id=>wwv_flow_imp.id(8997513172204383)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9010429831204424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8996256602204238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8995873308204238)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260715105338Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105338Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9022521486204651)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9011863623204620)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appointment History - Save Interactive Grid Data'
,p_static_id=>'appointment-history-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8996256602204238)
,p_internal_uid=>9022521486204651
,p_created_on=>wwv_flow_imp.dz('20260715105343Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105343Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9139699355824426)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9138417953824414)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appointment History - Save Interactive Grid Data'
,p_static_id=>'appointment-history-save-interactive-grid-data_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8996256602204238)
,p_internal_uid=>9139699355824426
,p_created_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9141529623824445)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9140396921824433)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appointment History - Save Interactive Grid Data'
,p_static_id=>'appointment-history-save-interactive-grid-data_2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8996256602204238)
,p_internal_uid=>9141529623824445
,p_created_on=>wwv_flow_imp.dz('20260715124723Z')
,p_updated_on=>wwv_flow_imp.dz('20260715124723Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9011488552204428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8996654942204239)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Patient Profile - Save Interactive Grid Data'
,p_static_id=>'patient-profile-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8996256602204238)
,p_internal_uid=>9011488552204428
,p_created_on=>wwv_flow_imp.dz('20260715105340Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105340Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Visit and Prescription'
,p_alias=>'VISIT-AND-PRESCRIPTION'
,p_step_title=>'Visit and Prescription'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260715105604Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715132403Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9027551887218813)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715105604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9028349892218814)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9041359289218993)
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
,p_master_region_id=>wwv_flow_imp.id(9029115816218816)
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
,p_created_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9043292816219002)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9042738956218999)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9047223127219012)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9049279619219017)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9046255649219009)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9048262981219014)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9044212624219004)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9045248098219007)
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
,p_parent_column_id=>wwv_flow_imp.id(9031912863218961)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9041498203218993)
,p_internal_uid=>9041498203218993
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9042258046218998)
,p_interactive_grid_id=>wwv_flow_imp.id(9041498203218993)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9042379957218998)
,p_report_id=>wwv_flow_imp.id(9042258046218998)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9043707710219004)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9043292816219002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9044750988219007)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9044212624219004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9045770392219009)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9045248098219007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9046727020219011)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9046255649219009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9047766894219014)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9047223127219012)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9048750603219016)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9048262981219014)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9049763592219019)
,p_view_id=>wwv_flow_imp.id(9042379957218998)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9049279619219017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9157345084884302)
,p_plug_name=>'Prescriptions'
,p_static_id=>'prescriptions_1'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(9041359289218993)
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
,p_created_on=>wwv_flow_imp.dz('20260715125010Z')
,p_updated_on=>wwv_flow_imp.dz('20260715132403Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9157676468884305)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9157584339884304)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715125010Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9158699812884315)
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
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9158828593884317)
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
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9158775784884316)
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
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9158955913884318)
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
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9158519695884314)
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select medicine_name d, medicine_id r from medicines order by medicine_name'
,p_lov_display_extra=>false
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
,p_updated_on=>wwv_flow_imp.dz('20260715132403Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9157732438884306)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(9044212624219004)
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715125144Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9158416144884313)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9157425286884303)
,p_internal_uid=>9041498203218993
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
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9184123647903517)
,p_interactive_grid_id=>wwv_flow_imp.id(9157425286884303)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715125011Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9184243235903517)
,p_report_id=>wwv_flow_imp.id(9184123647903517)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9185080745903520)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9157676468884305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9185911299903522)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9157732438884306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9186850015903525)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9158416144884313)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9187744417903527)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9158519695884314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9188683086903529)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9158699812884315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9189550038903534)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9158775784884316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9190491386903536)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9158828593884317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9191366627903539)
,p_view_id=>wwv_flow_imp.id(9184243235903517)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9158955913884318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9029115816218816)
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
,p_created_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9030924202218959)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9030483128218957)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9032974929218964)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9037929017218976)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9034974212218969)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9039987623218981)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038988408218979)
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
,p_max_length=>2000
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9033911714218966)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9036953566218974)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9035934874218972)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9031912863218961)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9029204685218949)
,p_internal_uid=>9029204685218949
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
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9029922741218956)
,p_interactive_grid_id=>wwv_flow_imp.id(9029204685218949)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9030028667218956)
,p_report_id=>wwv_flow_imp.id(9029922741218956)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9031450405218961)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9030924202218959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9032438237218964)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9031912863218961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9033429738218966)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9032974929218964)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9034413471218969)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9033911714218966)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9035458645218971)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9034974212218969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9036480113218974)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9035934874218972)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9037446533218976)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9036953566218974)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038411813218979)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9037929017218976)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039446338218981)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038988408218979)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9040487351218984)
,p_view_id=>wwv_flow_imp.id(9030028667218956)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9039987623218981)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9028726599218815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9028349892218814)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260715105604Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105604Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9050296162219019)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9041359289218993)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescriptions - Save Interactive Grid Data'
,p_static_id=>'prescriptions-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9028726599218815)
,p_internal_uid=>9050296162219019
,p_created_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9158390343884312)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9157345084884302)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescriptions - Save Interactive Grid Data'
,p_static_id=>'prescriptions-save-interactive-grid-data_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9028726599218815)
,p_internal_uid=>9158390343884312
,p_created_on=>wwv_flow_imp.dz('20260715125010Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125010Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9040900490218984)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9029115816218816)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Visit and Prescription - Save Interactive Grid Data'
,p_static_id=>'visit-and-prescription-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9028726599218815)
,p_internal_uid=>9040900490218984
,p_created_on=>wwv_flow_imp.dz('20260715105606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Prescription Items'
,p_alias=>'PRESCRIPTION-ITEMS'
,p_step_title=>'Prescription Items'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260715105710Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9053556978225409)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715105710Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105710Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9054345684225410)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715105710Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105710Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9055162422225411)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
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
,p_created_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9056904626225564)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9056487583225562)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9060938209225574)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9062996560225580)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9059941532225572)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9061972663225577)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9057954655225566)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058943503225569)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9055234178225554)
,p_internal_uid=>9055234178225554
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9055949019225561)
,p_interactive_grid_id=>wwv_flow_imp.id(9055234178225554)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9056019336225561)
,p_report_id=>wwv_flow_imp.id(9055949019225561)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9057409896225566)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9056904626225564)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058427032225569)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9057954655225566)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9059435962225572)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9058943503225569)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9060496416225574)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9059941532225572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9061412906225577)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9060938209225574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9062416751225579)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9061972663225577)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9063495366225582)
,p_view_id=>wwv_flow_imp.id(9056019336225561)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9062996560225580)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9064315113225592)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items-2'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(9055162422225411)
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
,p_created_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9066243360225600)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9065714025225597)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9070267080225610)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9072261714225615)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9071292721225613)
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9073250692225618)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9069295886225608)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Medicine Id'
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9068257141225605)
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
,p_parent_column_id=>wwv_flow_imp.id(9057954655225566)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9067216917225602)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9064417060225592)
,p_internal_uid=>9064417060225592
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
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9065211497225596)
,p_interactive_grid_id=>wwv_flow_imp.id(9064417060225592)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9065309174225596)
,p_report_id=>wwv_flow_imp.id(9065211497225596)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9066726573225602)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9066243360225600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9067782857225605)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9067216917225602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9068787914225608)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9068257141225605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9069779083225610)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9069295886225608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9070712432225612)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9070267080225610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9071754436225615)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9071292721225613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9072751392225617)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9072261714225615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9073716589225620)
,p_view_id=>wwv_flow_imp.id(9065309174225596)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9073250692225618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9054740466225411)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9054345684225410)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260715105710Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105710Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9063943450225583)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9055162422225411)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9054740466225411)
,p_internal_uid=>9063943450225583
,p_created_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9074280529225620)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9064315113225592)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data-2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9054740466225411)
,p_internal_uid=>9074280529225620
,p_created_on=>wwv_flow_imp.dz('20260715105712Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105712Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715131605Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18180568972146526)
,p_plug_name=>'Clinical Appointments'
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
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715131605Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18180724225146526)
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
,p_detail_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29:P29_APPOINTMENT_ID:\#APPOINTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>18180724225146526
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715131605Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18183059571146547)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#APPOINTMENT_DATE#'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715131605Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18181840179146541)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18183508474146548)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18184722603146553)
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
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18182706987146545)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8976557151187827)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18182231151146544)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8975871124187817)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18184280691146552)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18183913657146550)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8978022268187828)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18328742697653387)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_ID:DOCTOR_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_ID:REASON_FOR_VISIT:CREATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18186822787146561)
,p_plug_name=>'Clinical Visit Workspace'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9198163577958603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18180568972146526)
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
,p_created_on=>wwv_flow_imp.dz('20260715125921Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125921Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9199538035958636)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18180568972146526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715125922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125922Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9199946156958638)
,p_event_id=>wwv_flow_imp.id(9199538035958636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18180568972146526)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715125922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715125922Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290000000000001)
,p_plug_name=>'Patient Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290000000000002)
,p_plug_name=>'Appointment and Doctor Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290000000000003)
,p_plug_name=>'Visit Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000010)
,p_name=>'P29_APPOINTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000011)
,p_name=>'P29_PATIENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000012)
,p_name=>'P29_DOCTOR_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000013)
,p_name=>'P29_VISIT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000014)
,p_name=>'P29_PRESCRIPTION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000020)
,p_name=>'P29_PATIENT_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_prompt=>'Patient Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000021)
,p_name=>'P29_CIVIL_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_prompt=>'Civil ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000022)
,p_name=>'P29_AGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000023)
,p_name=>'P29_GENDER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000024)
,p_name=>'P29_BLOOD_GROUP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_prompt=>'Blood Group'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000025)
,p_name=>'P29_MOBILE_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(290000000000001)
,p_prompt=>'Mobile Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000030)
,p_name=>'P29_APPOINTMENT_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Appointment Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000031)
,p_name=>'P29_APPOINTMENT_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Appointment Time'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000032)
,p_name=>'P29_APPOINTMENT_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000033)
,p_name=>'P29_REASON_FOR_VISIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Reason for Visit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000034)
,p_name=>'P29_DOCTOR_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Doctor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000035)
,p_name=>'P29_DEPARTMENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000036)
,p_name=>'P29_SPECIALTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(290000000000002)
,p_prompt=>'Specialty'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000040)
,p_name=>'P29_SYMPTOMS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(290000000000003)
,p_prompt=>'Symptoms'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000041)
,p_name=>'P29_DIAGNOSIS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(290000000000003)
,p_prompt=>'Diagnosis'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000042)
,p_name=>'P29_NOTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(290000000000003)
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290000000000043)
,p_name=>'P29_FOLLOW_UP_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(290000000000003)
,p_prompt=>'Follow-up Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290000000000050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(290000000000003)
,p_button_name=>'SAVE_VISIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Visit'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290000000000060)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Clinical Workspace'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P29_APPOINTMENT_ID is not null then',
'    select a.patient_id, a.doctor_id, p.full_name, p.civil_id,',
'           trunc(months_between(sysdate,p.date_of_birth)/12), p.gender, p.blood_group, p.mobile_no,',
'           to_char(a.appointment_date,''DD-MON-YYYY''), a.appointment_time, s.status_name, a.reason_for_visit,',
'           d.full_name, dep.department_name, sp.specialty_name',
'      into :P29_PATIENT_ID,:P29_DOCTOR_ID,:P29_PATIENT_NAME,:P29_CIVIL_ID,:P29_AGE,:P29_GENDER,:P29_BLOOD_GROUP,:P29_MOBILE_NO,',
'           :P29_APPOINTMENT_DATE,:P29_APPOINTMENT_TIME,:P29_APPOINTMENT_STATUS,:P29_REASON_FOR_VISIT,',
'           :P29_DOCTOR_NAME,:P29_DEPARTMENT,:P29_SPECIALTY',
'      from appointments a join patients p on p.patient_id=a.patient_id',
'      join doctors d on d.doctor_id=a.doctor_id',
'      join departments dep on dep.department_id=d.department_id',
'      join doctor_specialties sp on sp.specialty_id=d.specialty_id',
'      join appointment_statuses s on s.status_id=a.status_id',
'     where a.appointment_id=:P29_APPOINTMENT_ID;',
'    begin',
'      select visit_id,symptoms,diagnosis,notes,follow_up_date',
'        into :P29_VISIT_ID,:P29_SYMPTOMS,:P29_DIAGNOSIS,:P29_NOTES,:P29_FOLLOW_UP_DATE',
'        from patient_visits where appointment_id=:P29_APPOINTMENT_ID fetch first 1 row only;',
'    exception when no_data_found then :P29_VISIT_ID:=null; end;',
'    begin',
'      select prescription_id into :P29_PRESCRIPTION_ID from prescriptions',
'       where visit_id=:P29_VISIT_ID fetch first 1 row only;',
'    exception when no_data_found then :P29_PRESCRIPTION_ID:=null; end;',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>290000000000060
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290000000000061)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Clinical Visit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P29_VISIT_ID is null then',
'    insert into patient_visits (appointment_id,patient_id,doctor_id,visit_date,symptoms,diagnosis,notes,follow_up_date)',
'    values (:P29_APPOINTMENT_ID,:P29_PATIENT_ID,:P29_DOCTOR_ID,sysdate,:P29_SYMPTOMS,:P29_DIAGNOSIS,:P29_NOTES,:P29_FOLLOW_UP_DATE)',
'    returning visit_id into :P29_VISIT_ID;',
'  else',
'    update patient_visits set symptoms=:P29_SYMPTOMS,diagnosis=:P29_DIAGNOSIS,notes=:P29_NOTES,follow_up_date=:P29_FOLLOW_UP_DATE',
'     where visit_id=:P29_VISIT_ID;',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(290000000000050)
,p_internal_uid=>290000000000061
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(290000000000070)
,p_branch_name=>'Reload Clinical Workspace'
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29:P29_APPOINTMENT_ID:&P29_APPOINTMENT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);

end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>'Admissions'
,p_alias=>'ADMISSIONS'
,p_step_title=>'Admissions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715132623Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9092883819318285)
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
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715132623Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9092964501318285)
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
,p_detail_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:RP:P38_ADMISSION_ID:\#ADMISSION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9092964501318285
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715132623Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9095742414318318)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9094123958318297)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admission ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9096553854318321)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9096130638318320)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9094937460318312)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8976557151187827)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9094588889318310)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8975871124187817)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9095374843318314)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(9083714451318137)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9096991731318323)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9343277822120751)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_ID:DOCTOR_ID:ROOM_ID:ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715132623Z')
,p_updated_on=>wwv_flow_imp.dz('20260715132623Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9099055999318331)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9097380337318325)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9092883819318285)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:38::'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9097788696318325)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9092883819318285)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9098148609318326)
,p_event_id=>wwv_flow_imp.id(9097788696318325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9092883819318285)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111239Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111239Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715133738Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9082019697318131)
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9088389242318146)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9088774363318146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9088389242318146)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9089223222318147)
,p_button_id=>wwv_flow_imp.id(9088774363318146)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9090587288318150)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9088389242318146)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P38_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9089769076318150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9088389242318146)
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
,p_button_condition=>'P38_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9090151229318150)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9088389242318146)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P38_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9084392114318142)
,p_name=>'P38_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9082449018318132)
,p_name=>'P38_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9085100979318143)
,p_name=>'P38_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_prompt=>'Admission Reason'
,p_source=>'ADMISSION_REASON'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9084744548318143)
,p_name=>'P38_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9083206505318137)
,p_name=>'P38_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9082807841318135)
,p_name=>'P38_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
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
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9083680224318137)
,p_name=>'P38_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select room_no d, room_id r from rooms where upper(status) = ''AVAILABLE'' or room_id = :P38_ROOM_ID order by room_no'
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715132929Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9085581473318143)
,p_name=>'P38_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_item_source_plug_id=>wwv_flow_imp.id(9082019697318131)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select ''Admitted'' d, ''Admitted'' r from dual union all select ''Discharged'' d, ''Discharged'' r from dual'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715133738Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9091776486318151)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9091776486318151
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9090981983318151)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9082019697318131)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Admission Form'
,p_static_id=>'initialize-form-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>9090981983318151
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9091306139318151)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9082019697318131)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Admission Form'
,p_static_id=>'process-form-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9091306139318151
,p_created_on=>wwv_flow_imp.dz('20260715111237Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111237Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);

wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(380000000000001)
,p_validation_name=>'Discharged patient requires discharge date'
,p_validation_sequence=>80
,p_validation=>':P38_STATUS <> ''Discharged'' OR :P38_DISCHARGE_DATE IS NOT NULL'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Discharge date is required when status is Discharged.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(380000000000002)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Room Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P38_STATUS = ''Admitted'' then',
'    update rooms set status = ''Occupied'' where room_id = :P38_ROOM_ID;',
'  elsif :P38_STATUS = ''Discharged'' then',
'    update rooms set status = ''Available'' where room_id = :P38_ROOM_ID;',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>380000000000002
);

end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715115003Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715115024Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9110785956542878)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.appointment_id,',
'       p.full_name patient_name,',
'       d.full_name doctor_name,',
'       dep.department_name,',
'       a.appointment_date,',
'       a.appointment_time,',
'       s.status_name,',
'       a.reason_for_visit',
'from appointments a',
'join patients p on p.patient_id = a.patient_id',
'join doctors d on d.doctor_id = a.doctor_id',
'join departments dep on dep.department_id = d.department_id',
'join appointment_statuses s on s.status_id = a.status_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115024Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9110848762542878)
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
,p_internal_uid=>9110848762542878
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115024Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9113684994542901)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9112050667542891)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9114082735542903)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9113221914542899)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9112889293542897)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9112460965542896)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9114847495542906)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9114432731542904)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115005Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9115229656544842)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_NAME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260715115024Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115024Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9109961465542741)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715115003Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115003Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715115400Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715115417Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9116322384566425)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715115400Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115400Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9117149410566577)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.visit_id,',
'       p.full_name patient_name,',
'       d.full_name doctor_name,',
'       dep.department_name,',
'       v.visit_date,',
'       v.symptoms,',
'       v.diagnosis,',
'       v.follow_up_date',
'from patient_visits v',
'join patients p on p.patient_id = v.patient_id',
'join doctors d on d.doctor_id = v.doctor_id',
'join departments dep on dep.department_id = d.department_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260715115401Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115417Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9117259153566577)
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
,p_internal_uid=>9117259153566577
,p_created_on=>wwv_flow_imp.dz('20260715115401Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115417Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9119523003566589)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9120789011566597)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9119121594566588)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9121116823566599)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9118730266566586)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9120371600566596)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9119902841566594)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9118458179566582)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115402Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115402Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9121577518568120)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260715115417Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115417Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Medicine Stock Report'
,p_alias=>'MEDICINE-STOCK-REPORT'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715115606Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715115632Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9122673639579028)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715115606Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115606Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9123468229579176)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.medicine_id,',
'       m.medicine_name,',
'       c.category_name,',
'       m.current_stock,',
'       m.reorder_level,',
'       case when m.current_stock <= m.reorder_level then ''Low Stock'' else ''Normal'' end stock_status',
'from medicines m',
'join medicine_categories c on c.category_id = m.category_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260715115607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115632Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9123502787579176)
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
,p_internal_uid=>9123502787579176
,p_created_on=>wwv_flow_imp.dz('20260715115607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115632Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9125442530579186)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115608Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9125812822579187)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115608Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9124711082579181)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Medicine Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115607Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115607Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9125164062579184)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115608Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9126294195579189)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115608Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9126671041579191)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115608Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115608Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9127082949581611)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_ID:MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715115632Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115632Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'Admission Report'
,p_alias=>'ADMISSION-REPORT'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715115929Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715115944Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9128981757599490)
,p_plug_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.admission_id,',
'       p.full_name patient_name,',
'       d.full_name doctor_name,',
'       r.room_no,',
'       r.room_type,',
'       a.admission_date,',
'       a.discharge_date,',
'       a.status',
'from admissions a',
'join patients p on p.patient_id = a.patient_id',
'join doctors d on d.doctor_id = a.doctor_id',
'join rooms r on r.room_id = a.room_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115944Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9129050142599490)
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
,p_internal_uid=>9129050142599490
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115944Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9132208047599506)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9130271701599495)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Admission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9132656642599508)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9131027522599500)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9130682760599498)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9131442484599502)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9131894096599504)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9133098859599509)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715115931Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115931Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9133459447600843)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260715115944Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115944Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9128121172599348)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8659637059769930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715115929Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115929Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Al Noor Hospital Operations System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_last_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8665456751770040)
,p_plug_name=>'Al Noor Hospital Operations System'
,p_static_id=>'al-noor-hospital-operations-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8667041022770058)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8665456751770040)
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
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8666398638770054)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8665456751770040)
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
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8666789876770056)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8665456751770040)
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
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8665929944770051)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8665456751770040)
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
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8671134918770065)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8671134918770065
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8670783115770065)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8670783115770065
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8667443399770060)
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
,p_internal_uid=>8667443399770060
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8668465981770063)
,p_page_process_id=>wwv_flow_imp.id(8667443399770060)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8668957875770063)
,p_page_process_id=>wwv_flow_imp.id(8667443399770060)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8667958737770062)
,p_page_process_id=>wwv_flow_imp.id(8667443399770060)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8669334135770064)
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
,p_internal_uid=>8669334135770064
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8670346291770064)
,p_page_process_id=>wwv_flow_imp.id(8669334135770064)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8669821105770064)
,p_page_process_id=>wwv_flow_imp.id(8669334135770064)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260715065438Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065438Z')
,p_created_by=>'SULAIMAN'
,p_updated_by=>'SULAIMAN'
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
