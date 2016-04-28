set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>24746681604926822127
,p_default_application_id=>108276
,p_default_owner=>'VQT75'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 108276 - S16C3_Shoe_REST_App
--
-- Application Export:
--   Application:     108276
--   Name:            S16C3_Shoe_REST_App
--   Date and Time:   01:46 Thursday April 28, 2016
--   Exported By:     VIET.TRAN714@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     30
--     Items:                  305
--     Processes:               29
--     Regions:                 67
--     Buttons:                 38
--   Shared Components:
--     Logic:
--       Web Services:           8
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,108276)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'VQT75')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'S16C3_Shoe_REST_App')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_108276')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'FC4172476E2700D822EBCCAA7E7B73D7DD81659C0BC6FCC4258C62DA8B626F58'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(31539440788373310872)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:S16C3_Shoe_REST_app'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428013731'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31539398181117310799)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31539440957896310874)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31539440489793310870)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31539440697555310871)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31539377807711310799)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31539377943567310799)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31539398057065310799)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
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
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31714065702546578850)
,p_lov_name=>'PEOPLE_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(31714065702546578850)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31714066080884578851)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Delivery Admin'
,p_lov_return_value=>'Delivery Admin'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31714066439788578852)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Customer Support'
,p_lov_return_value=>'Customer Support'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31714066833977578852)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Manager'
,p_lov_return_value=>'Manager'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31714067290627578853)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Customer'
,p_lov_return_value=>'Customer'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(31539440846537310874)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31539441214584310875)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539398270382310800)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398388122310801)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398441337310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398572583310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398652933310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398730407310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398856505310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539398938886310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399087545310802)
,p_page_template_id=>wwv_flow_api.id(31539398270382310800)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539399158455310803)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399223563310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399349047310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399441609310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399579836310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399637178310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399757460310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399853153310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539399961824310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400043571310803)
,p_page_template_id=>wwv_flow_api.id(31539399158455310803)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539400112443310804)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400255606310804)
,p_page_template_id=>wwv_flow_api.id(31539400112443310804)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400391938310804)
,p_page_template_id=>wwv_flow_api.id(31539400112443310804)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539400430896310804)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400550138310804)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400672080310804)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400755480310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400818655310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539400902864310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401017270310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401185767310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401250670310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401382715310805)
,p_page_template_id=>wwv_flow_api.id(31539400430896310804)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539401481841310805)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401595308310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401675174310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401785847310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401839105310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539401984557310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402018907310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402178032310805)
,p_page_template_id=>wwv_flow_api.id(31539401481841310805)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539402205235310805)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402307721310806)
,p_page_template_id=>wwv_flow_api.id(31539402205235310805)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402484432310806)
,p_page_template_id=>wwv_flow_api.id(31539402205235310805)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402553799310806)
,p_page_template_id=>wwv_flow_api.id(31539402205235310805)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539402667366310806)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402733491310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402862254310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539402988719310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403026354310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403149058310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403220225310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403326681310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403487952310806)
,p_page_template_id=>wwv_flow_api.id(31539402667366310806)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539403535118310806)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403608110310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403779291310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403810635310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539403970825310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404071410310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404128083310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404244916310807)
,p_page_template_id=>wwv_flow_api.id(31539403535118310806)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31539404394368310807)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404472776310807)
,p_page_template_id=>wwv_flow_api.id(31539404394368310807)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404522007310807)
,p_page_template_id=>wwv_flow_api.id(31539404394368310807)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404625695310807)
,p_page_template_id=>wwv_flow_api.id(31539404394368310807)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31539435244803310845)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31539435320662310846)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31539435415823310846)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539404762912310807)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539404840166310810)
,p_plug_template_id=>wwv_flow_api.id(31539404762912310807)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539406266286310817)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539406352018310817)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539406426938310817)
,p_plug_template_id=>wwv_flow_api.id(31539406352018310817)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539406577893310817)
,p_plug_template_id=>wwv_flow_api.id(31539406352018310817)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539407209853310818)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539407377843310818)
,p_plug_template_id=>wwv_flow_api.id(31539407209853310818)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539407442281310818)
,p_plug_template_id=>wwv_flow_api.id(31539407209853310818)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539410602240310822)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539410710139310822)
,p_plug_template_id=>wwv_flow_api.id(31539410602240310822)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539410863104310822)
,p_plug_template_id=>wwv_flow_api.id(31539410602240310822)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539412769441310824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539412837665310825)
,p_plug_template_id=>wwv_flow_api.id(31539412769441310824)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539412916969310825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539413093221310825)
,p_plug_template_id=>wwv_flow_api.id(31539412916969310825)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539413896210310825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539414151207310826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539414203831310826)
,p_plug_template_id=>wwv_flow_api.id(31539414151207310826)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539414398180310826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539414472693310826)
,p_plug_template_id=>wwv_flow_api.id(31539414398180310826)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539414566780310826)
,p_plug_template_id=>wwv_flow_api.id(31539414398180310826)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539416474178310827)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539416576429310827)
,p_plug_template_id=>wwv_flow_api.id(31539416474178310827)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539416652527310827)
,p_plug_template_id=>wwv_flow_api.id(31539416474178310827)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539417677119310828)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31539418101458310828)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31539418203212310829)
,p_plug_template_id=>wwv_flow_api.id(31539418101458310828)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539426587051310836)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539428273051310838)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539430386015310840)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539431142087310841)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539432047679310842)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539432518975310843)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539432657688310843)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539432790748310843)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539432813356310843)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539433739728310844)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31539434255608310844)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539418725901310829)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539418804717310830)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539420527432310831)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539422680388310833)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539423031935310834)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539423144459310834)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(31539423144459310834)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539424472930310835)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539424661812310835)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31539425619523310836)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31539434755445310844)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31539434840099310845)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31539434963487310845)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31539435007880310845)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31539435119290310845)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(31539435843392310847)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(31539436093493310856)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(31539435910141310848)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(31539436408758310862)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(31539403535118310806)
,p_default_dialog_template=>wwv_flow_api.id(31539402205235310805)
,p_error_template=>wwv_flow_api.id(31539400112443310804)
,p_printer_friendly_template=>wwv_flow_api.id(31539403535118310806)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(31539400112443310804)
,p_default_button_template=>wwv_flow_api.id(31539435320662310846)
,p_default_region_template=>wwv_flow_api.id(31539414398180310826)
,p_default_chart_template=>wwv_flow_api.id(31539414398180310826)
,p_default_form_template=>wwv_flow_api.id(31539414398180310826)
,p_default_reportr_template=>wwv_flow_api.id(31539414398180310826)
,p_default_tabform_template=>wwv_flow_api.id(31539414398180310826)
,p_default_wizard_template=>wwv_flow_api.id(31539414398180310826)
,p_default_menur_template=>wwv_flow_api.id(31539417677119310828)
,p_default_listr_template=>wwv_flow_api.id(31539414398180310826)
,p_default_irr_template=>wwv_flow_api.id(31539413896210310825)
,p_default_report_template=>wwv_flow_api.id(31539423144459310834)
,p_default_label_template=>wwv_flow_api.id(31539434840099310845)
,p_default_menu_template=>wwv_flow_api.id(31539435843392310847)
,p_default_calendar_template=>wwv_flow_api.id(31539435910141310848)
,p_default_list_template=>wwv_flow_api.id(31539430386015310840)
,p_default_nav_list_template=>wwv_flow_api.id(31539433739728310844)
,p_default_top_nav_list_temp=>wwv_flow_api.id(31539433739728310844)
,p_default_side_nav_list_temp=>wwv_flow_api.id(31539432790748310843)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(31539406352018310817)
,p_default_dialogr_template=>wwv_flow_api.id(31539406266286310817)
,p_default_option_label=>wwv_flow_api.id(31539434840099310845)
,p_default_required_label=>wwv_flow_api.id(31539435007880310845)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(31539432657688310843)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31539436122684310858)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31539436264877310858)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31539436346029310859)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539405048936310814)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539405257833310815)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539405444582310815)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539406600641310818)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539406803467310818)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539407576567310819)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539407925195310819)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539408502212310819)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539409196503310820)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539409377730310820)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539410279068310821)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539411843406310824)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539413207601310825)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539416722882310828)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539416926553310828)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539417342293310828)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539417764525310828)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539418369770310829)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539418990680310830)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539419115320310831)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539420720166310832)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539421493893310832)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539421799779310832)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539422413636310833)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539422729130310834)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539423255979310834)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539423539241310834)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539423786979310834)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539424736020310835)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539426610622310837)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539427484718310838)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539428453454310839)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539429173127310840)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539429435049310840)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539430130333310840)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539430869485310841)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539433256266310843)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539434354730310844)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539435560182310846)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539436516127310867)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539436704095310867)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539436936719310867)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539437173085310868)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539437589956310868)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539437716352310868)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539437984634310868)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539438169346310868)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539438328523310868)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539438526536310868)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539439088577310869)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539439688304310869)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31539439863731310869)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539404910117310811)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405125756310814)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(31539405048936310814)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405344630310815)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(31539405257833310815)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405586826310815)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(31539405444582310815)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405686147310815)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(31539405048936310814)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405777789310815)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(31539405257833310815)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405855394310817)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(31539405048936310814)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539405960542310817)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(31539405257833310815)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539406001465310817)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(31539405048936310814)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539406190361310817)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539404762912310807)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(31539405444582310815)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539406746439310818)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31539406352018310817)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539406973199310818)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(31539406352018310817)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(31539406803467310818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539407003549310818)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(31539406352018310817)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539407148256310818)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(31539406352018310817)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(31539406803467310818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539407689582310819)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(31539407576567310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539407781199310819)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(31539407576567310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539407879936310819)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(31539407576567310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408053466310819)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408118515310819)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408242801310819)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408314797310819)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(31539407576567310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408472832310819)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408681923310819)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408780028310819)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408830040310820)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539408945712310820)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409082578310820)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409267130310820)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(31539409196503310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409413462310820)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31539409377730310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409598305310820)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(31539409196503310820)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409634943310821)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409713326310821)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409863549310821)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539409920974310821)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31539409377730310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539410060072310821)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539410104361310821)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539410331521310821)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(31539410279068310821)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539410446990310822)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(31539410279068310821)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539410523194310822)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539407209853310818)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539410993270310822)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411099971310823)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411137627310823)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411289970310823)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411338278310823)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411421746310823)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411544497310823)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411692557310823)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411703992310823)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539411926466310824)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(31539411843406310824)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412056251310824)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(31539411843406310824)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412116576310824)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31539409377730310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412233110310824)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412308395310824)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412448283310824)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412569231310824)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31539409377730310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539412673279310824)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539410602240310822)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413172572310825)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539412916969310825)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413363568310825)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539412916969310825)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(31539413207601310825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413455788310825)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539412916969310825)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(31539413207601310825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413532741310825)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539412916969310825)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413612293310825)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539412916969310825)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413766340310825)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539412916969310825)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(31539413207601310825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539413999778310826)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539413896210310825)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539414054746310826)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539413896210310825)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539414653207310826)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539414798322310826)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539414885229310826)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539414992095310826)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31539407925195310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415016703310826)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415137761310826)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415211253310826)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415308599310827)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415483652310827)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31539408502212310819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415504037310827)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(31539409196503310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415645980310827)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31539409377730310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415702898310827)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(31539409196503310820)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415867203310827)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539415967384310827)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539416095896310827)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539416102780310827)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31539409377730310820)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539416228982310827)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539416343644310827)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539414398180310826)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31539406600641310818)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539416877143310828)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539416474178310827)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(31539416722882310828)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417069434310828)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539416474178310827)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(31539416926553310828)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417127888310828)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539416474178310827)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417246132310828)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539416474178310827)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(31539416926553310828)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417477482310828)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539416474178310827)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(31539417342293310828)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417506732310828)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539416474178310827)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(31539417342293310828)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417811753310828)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31539417677119310828)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(31539417764525310828)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539417984163310828)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31539417677119310828)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539418057797310828)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31539417677119310828)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(31539417764525310828)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539418498587310829)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31539418101458310828)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(31539418369770310829)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539418550186310829)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539418101458310828)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(31539418369770310829)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539418638870310829)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31539418101458310828)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419021438310830)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(31539418990680310830)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419259691310831)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419388372310831)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(31539418990680310830)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419492217310831)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419541409310831)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(31539418990680310830)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419628717310831)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419704793310831)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419879028310831)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(31539418990680310830)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539419966934310831)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(31539418990680310830)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420050042310831)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420179047310831)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420288824310831)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420358379310831)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420422197310831)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539418804717310830)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420604839310832)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420896078310832)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(31539420720166310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539420985933310832)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421092992310832)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(31539420720166310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421157582310832)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421227662310832)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(31539420720166310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421350008310832)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421534060310832)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(31539421493893310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421654742310832)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(31539421493893310832)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421850550310833)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(31539421799779310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539421931920310833)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(31539421799779310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422096245310833)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(31539421493893310832)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422142638310833)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422289119310833)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(31539420720166310832)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422326071310833)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422560607310833)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539420527432310831)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(31539422413636310833)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422871447310834)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539422680388310833)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(31539422729130310834)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539422919394310834)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539422680388310833)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(31539422729130310834)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539423393960310834)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(31539423255979310834)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539423465229310834)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(31539423255979310834)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539423687902310834)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(31539423539241310834)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539423814569310834)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(31539423786979310834)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539423921698310834)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(31539423786979310834)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424070531310835)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(31539423786979310834)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424128224310835)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(31539423539241310834)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424258353310835)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424397750310835)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539423144459310834)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(31539423786979310834)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424543676310835)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31539424472930310835)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(31539421493893310832)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424810628310835)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539424957362310835)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425066721310835)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425171260310835)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425296978310835)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425330141310835)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425472210310836)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425598317310836)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31539424661812310835)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425762503310836)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425832356310836)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539425982261310836)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426057860310836)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426114031310836)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(31539419115320310831)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426276375310836)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426330042310836)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426464860310836)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31539425619523310836)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(31539424736020310835)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426728028310837)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426871807310837)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539426994053310837)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427034001310838)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427164182310838)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427277575310838)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427396412310838)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427511431310838)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(31539427484718310838)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427699278310838)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(31539427484718310838)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427799769310838)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427853266310838)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(31539427484718310838)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539427997883310838)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428056212310838)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(31539427484718310838)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428199819310838)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31539426587051310836)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(31539427484718310838)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428363440310839)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428553313310839)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(31539428453454310839)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428669473310839)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428740720310839)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(31539428453454310839)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428825562310840)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539428911585310840)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(31539428453454310839)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429035646310840)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429288103310840)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(31539429173127310840)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429356300310840)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(31539429173127310840)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429516493310840)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(31539429435049310840)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429634193310840)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(31539429435049310840)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429733414310840)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(31539429173127310840)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429899104310840)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539429989809310840)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(31539428453454310839)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430063189310840)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430249387310840)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539428273051310838)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(31539430130333310840)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430454902310841)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539430386015310840)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(31539429173127310840)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430552218310841)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539430386015310840)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430614851310841)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539430386015310840)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430768765310841)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539430386015310840)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539430931896310841)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539430386015310840)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(31539430869485310841)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431067004310841)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539430386015310840)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(31539430869485310841)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431279032310841)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431376264310841)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431450095310841)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431511845310841)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431666779310841)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431742611310841)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431845113310841)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539431988678310841)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31539431142087310841)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539432154590310842)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31539432047679310842)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539432208816310842)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539432047679310842)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539432377629310842)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539432047679310842)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539432499946310843)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539432047679310842)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539432946676310843)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(31539429435049310840)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433095390310843)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(31539426610622310837)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433191660310843)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(31539429435049310840)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433330268310843)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(31539433256266310843)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433401502310844)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(31539429173127310840)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433533408310844)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(31539429173127310840)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433678851310844)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(31539432813356310843)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(31539433256266310843)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433837777310844)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31539433739728310844)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539433938853310844)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31539433739728310844)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539434086631310844)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31539433739728310844)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539434116989310844)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31539433739728310844)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539434433217310844)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31539434255608310844)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(31539434354730310844)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539434589413310844)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31539434255608310844)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(31539434354730310844)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539434654473310844)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31539434255608310844)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(31539434354730310844)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539435682746310846)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(31539435415823310846)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(31539435560182310846)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539435751067310847)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(31539435415823310846)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(31539435560182310846)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539436698433310867)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(31539436516127310867)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539436824366310867)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(31539436704095310867)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539437072878310867)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(31539436936719310867)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539437254816310868)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(31539437173085310868)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539437393680310868)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(31539437173085310868)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539437422962310868)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(31539436936719310867)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539437600789310868)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(31539437589956310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539437811092310868)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(31539437716352310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438073552310868)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(31539437984634310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438288538310868)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(31539438169346310868)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438455201310868)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(31539438328523310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438635216310868)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(31539438526536310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438759337310868)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(31539438526536310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438870379310868)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(31539438526536310868)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539438935242310868)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(31539436516127310867)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439172590310869)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(31539439088577310869)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439272907310869)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(31539438328523310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439330466310869)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(31539437589956310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439403922310869)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(31539437716352310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439527281310869)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(31539437984634310868)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439759949310869)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(31539439688304310869)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539439926131310869)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(31539439863731310869)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539440021694310869)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539440100437310869)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(31539436516127310867)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539440292493310869)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(31539436516127310867)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31539440372805310869)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(31539438169346310868)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
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
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(31539440788373310872)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(31539440520073310870)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(31539398181117310799)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(31539432790748310843)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(31539440489793310870)
,p_nav_bar_list_template_id=>wwv_flow_api.id(31539432657688310843)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428013258'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31539441364396310876)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539417677119310828)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(31539440846537310874)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(31539435843392310847)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31691653018975032437)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31539441364396310876)
,p_button_name=>'Login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Login'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31691653267102032439)
,p_branch_name=>'LEAVE_LOGIN'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31691653018975032437)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P1_TYPE'
,p_branch_condition_text=>'Customer'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31691654343558032450)
,p_branch_name=>'LEAVE_LOGIN2'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31691653018975032437)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P1_TYPE'
,p_branch_condition_text=>'Delivery Admin'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31837986795084842715)
,p_branch_name=>'LEAVE_LOGIN3'
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31691653018975032437)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P1_TYPE'
,p_branch_condition_text=>'Customer Support'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31837987149333842719)
,p_branch_name=>'LEAVE_LOGIN4'
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31691653018975032437)
,p_branch_sequence=>40
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P1_TYPE'
,p_branch_condition_text=>'Manager'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691653160683032438)
,p_name=>'P1_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31539441364396310876)
,p_prompt=>'Account:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PEOPLE_TYPE'
,p_lov=>'.'||wwv_flow_api.id(31714065702546578850)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160426151658'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31678144322932198417)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31678144647566198417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31678145059373198418)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31678144647566198417)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678145807639198422)
,p_name=>'P4_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678146630876198425)
,p_name=>'P4_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678147482376198425)
,p_name=>'P4_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678148225476198426)
,p_name=>'P4_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678149010098198427)
,p_name=>'P4_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678149811663198427)
,p_name=>'P4_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678150693837198428)
,p_name=>'P4_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678151477789198429)
,p_name=>'P4_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678152297735198429)
,p_name=>'P4_NAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'""'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678153029285198430)
,p_name=>'P4_EMAILADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'""'
,p_prompt=>'Emailaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678153824761198431)
,p_name=>'P4_ADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'""'
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678154673522198431)
,p_name=>'P4_PHONENUMBER'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'""'
,p_prompt=>'Phonenumber'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678155463212198433)
,p_name=>'P4_JOB'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'""'
,p_prompt=>'Job'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678156286467198433)
,p_name=>'P4_TYPE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'""'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678157034386198434)
,p_name=>'P4_QUERY'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31678144322932198417)
,p_item_default=>'''insert SIM_Employee (employee-id := ''employeeid'', name := ''name'', email-address := ''emailaddress'', address := ''address'', phone_number := ''phonenumber'', job := ''job'', type := ''type'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31678145468784198419)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31677876547429174147:31677876719491174148'
,p_attribute_01=>wwv_flow_api.id(31677876719491174148)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_EMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31678144647566198417)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160426163151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31087476368785283849)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.name	name,			',
'jt2.email_address	email_address,			',
'jt3.address	address,			',
'jt4.phone_number	phone_number,			',
'jt5.job	job		',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.name[*]'' COLUMNS rid for ordinality, name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.email_address[*]'' COLUMNS rid for ordinality, email_address varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.address[*]'' COLUMNS rid for ordinality, address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.phone_number[*]'' COLUMNS rid for ordinality, phone_number varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.job[*]'' COLUMNS rid for ordinality, job varchar path ''$'') jt5',
'where	t.collection_name	=	''P5_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31087476469472283850)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31087476469472283850
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691649495191032401)
,p_db_column_name=>'NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691649500247032402)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Email address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691649692058032403)
,p_db_column_name=>'ADDRESS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691649748545032404)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phone number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691649829905032405)
,p_db_column_name=>'JOB'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Job'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31691622552836659381)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316916226'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NAME:EMAIL_ADDRESS:ADDRESS:PHONE_NUMBER:JOB'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31678835706753243559)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31678859619405243579)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P5_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31678860385548243582)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31678836132579243560)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31087476368785283849)
,p_button_name=>'Refresh_Report'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31691649926899032406)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31087476368785283849)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Create Employee'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31678836530022243560)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678837329116243563)
,p_name=>'P5_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678848171355243566)
,p_name=>'P5_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678848966759243568)
,p_name=>'P5_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678849758196243569)
,p_name=>'P5_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678850588587243570)
,p_name=>'P5_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678851398321243571)
,p_name=>'P5_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678852114700243571)
,p_name=>'P5_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678852952314243572)
,p_name=>'P5_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678853799065243573)
,p_name=>'P5_NAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678854578618243574)
,p_name=>'P5_EMAILADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Emailaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678855308700243575)
,p_name=>'P5_ADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678856129054243576)
,p_name=>'P5_PHONENUMBER'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Phonenumber'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678856955699243576)
,p_name=>'P5_JOB'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678857756048243578)
,p_name=>'P5_TYPE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31678858508199243578)
,p_name=>'P5_QUERY'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31678835706753243559)
,p_item_default=>'"from SIM_Employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31678836954438243560)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31677876547429174147:31677876719491174148'
,p_attribute_01=>wwv_flow_api.id(31677876719491174148)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Customer'
,p_page_mode=>'NORMAL'
,p_step_title=>'Customer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160426181323'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31696949079572044286)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31696949462650044287)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31696949843482044288)
,p_branch_name=>'Go To Page 8'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31696949462650044287)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696950556428044291)
,p_name=>'P7_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696951326378044293)
,p_name=>'P7_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696952149740044294)
,p_name=>'P7_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696952970483044299)
,p_name=>'P7_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696953727820044299)
,p_name=>'P7_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696954519728044300)
,p_name=>'P7_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696955317532044300)
,p_name=>'P7_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696956177945044301)
,p_name=>'P7_NAME'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'""'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696956907040044302)
,p_name=>'P7_EMAILADDRESS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'""'
,p_prompt=>'Emailaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696957796026044303)
,p_name=>'P7_CREDITCARDNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'""'
,p_prompt=>'Creditcardnum'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696958536450044304)
,p_name=>'P7_ADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'""'
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696959371927044304)
,p_name=>'P7_PHONENUMBER'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'""'
,p_prompt=>'Phonenumber'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696960138696044305)
,p_name=>'P7_CUSTOMERID'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'0'
,p_prompt=>'Customerid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696960952392044306)
,p_name=>'P7_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31696949079572044286)
,p_item_default=>'''insert SIM_Customer (customer-id := ''customerid'', name := ''name'', email-address := ''emailaddress'', address := ''address'', phone_number := ''phonenumber'', credit-card-num := ''creditcardnum'' );'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31696950108664044289)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696275895073369436:31696276072943369439'
,p_attribute_01=>wwv_flow_api.id(31696276072943369439)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P7_CUSTOMER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31696949462650044287)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Customer'
,p_page_mode=>'NORMAL'
,p_step_title=>'Customer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428012735'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31691650057412032407)
,p_plug_name=>'Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.name	name,			',
'jt2.email_address	email_address,			',
'jt3.address	address,',
'jt4.credit_card_num credit_card_num,',
'jt5.phone_number	phone_number',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.name[*]'' COLUMNS rid for ordinality, name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.email_address[*]'' COLUMNS rid for ordinality, email_address varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.address[*]'' COLUMNS rid for ordinality, address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.credit_card_num[*]'' COLUMNS rid for ordinality, credit_card_num varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.phone_number[*]'' COLUMNS rid for ordinality, phone_number varchar path ''$'') jt5',
'where	t.collection_name	=	''P8_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31691650120760032408)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31691650120760032408
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691650260440032409)
,p_db_column_name=>'NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691650338776032410)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Email address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691650454869032411)
,p_db_column_name=>'ADDRESS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691650510302032412)
,p_db_column_name=>'CREDIT_CARD_NUM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Credit card num'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691650687201032413)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Phone number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31697212775227464549)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316972128'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NAME:EMAIL_ADDRESS:ADDRESS:CREDIT_CARD_NUM:PHONE_NUMBER'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31696979506764049767)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31696992682012049783)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P8_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31696993235600049788)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31696979943827049767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31691650057412032407)
,p_button_name=>'Refresh_Report'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31696980390934049767)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696981119940049770)
,p_name=>'P8_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696981944073049771)
,p_name=>'P8_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696982777338049772)
,p_name=>'P8_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696983523819049773)
,p_name=>'P8_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696984309343049774)
,p_name=>'P8_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696985183545049774)
,p_name=>'P8_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696985910333049775)
,p_name=>'P8_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696986772354049776)
,p_name=>'P8_NAME'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696987528735049776)
,p_name=>'P8_EMAILADDRESS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_prompt=>'Emailaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696988359944049777)
,p_name=>'P8_CREDITCARDNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_prompt=>'Creditcardnum'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696989181808049778)
,p_name=>'P8_ADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696989970489049779)
,p_name=>'P8_PHONENUMBER'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_prompt=>'Phonenumber'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696990746783049779)
,p_name=>'P8_CUSTOMERID'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_prompt=>'Customerid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31696991518911049780)
,p_name=>'P8_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31696979506764049767)
,p_item_default=>'"from SIM_Customer retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31696980758676049768)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696275895073369436:31696276072943369439'
,p_attribute_01=>wwv_flow_api.id(31696276072943369439)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Order'
,p_page_mode=>'NORMAL'
,p_step_title=>'Order'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428013731'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31691650961601032416)
,p_plug_name=>'Order'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt1.order_id    order_id,',
'jt2.date_ordered	date_ordered,			',
'jt3.ship_date	ship_date,			',
'jt4.status	status,						',
'jt5.color	color,			',
'jt6.style	style,			',
'jt7.price	price,			',
'jt8.shoelace_color	shoelace_color',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.order_id[*]'' COLUMNS rid for ordinality, order_id varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.date_ordered[*]'' COLUMNS rid for ordinality, date_ordered varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.ship_date[*]'' COLUMNS rid for ordinality, ship_date varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.status[*]'' COLUMNS rid for ordinality, status varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.color[*]'' COLUMNS rid for ordinality, color varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.style[*]'' COLUMNS rid for ordinality, style varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.price[*]'' COLUMNS rid for ordinality, price varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.shoelace_color[*]'' COLUMNS rid for ordinality, shoelace_color varchar path ''$'') jt8',
'where	t.collection_name	=	''P9_ORDER_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid',
'and status = ''Pending Order'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31691651019435032417)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31691651019435032417
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652255525032429)
,p_db_column_name=>'DATE_ORDERED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date ordered'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652304002032430)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ship date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652498229032431)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652527773032432)
,p_db_column_name=>'COLOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652630679032433)
,p_db_column_name=>'STYLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Style'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652771065032434)
,p_db_column_name=>'PRICE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Price'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691652832140032435)
,p_db_column_name=>'SHOELACE_COLOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Shoelace color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837986874888842716)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Order id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31706198118923400178)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317061982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORDER_ID:DATE_ORDERED:SHIP_DATE:COLOR:STYLE:PRICE:SHOELACE_COLOR:STATUS:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31698847212506675175)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31698927950442675193)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P9_ORDER_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31698928600339675198)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31698847662739675176)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31691650961601032416)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31691652983803032436)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31691650961601032416)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Create Order'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31837985352243842701)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31691650961601032416)
,p_button_name=>'Make_complaint'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Make Complaint'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31837986640479842714)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(31691650961601032416)
,p_button_name=>'View_Complaint'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'View Complaint'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31698918022592675176)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698918867861675179)
,p_name=>'P9_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698919600911675183)
,p_name=>'P9_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698920485955675185)
,p_name=>'P9_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698921232543675185)
,p_name=>'P9_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698922007234675186)
,p_name=>'P9_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698922828513675187)
,p_name=>'P9_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698923660293675187)
,p_name=>'P9_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698924495355675188)
,p_name=>'P9_ORDERID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_prompt=>'Orderid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698925211673675189)
,p_name=>'P9_DATEORDERED'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_prompt=>'Dateordered'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698926088378675189)
,p_name=>'P9_SHIPDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_prompt=>'Shipdate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31698926873745675190)
,p_name=>'P9_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31698847212506675175)
,p_item_default=>'"from SIM_Order retrieve *, * OF shoe, OF order-item ;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31698918452639675177)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696384112320390365:31696384361623390366'
,p_attribute_01=>wwv_flow_api.id(31696384361623390366)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_ORDER_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Order'
,p_page_mode=>'NORMAL'
,p_step_title=>'Order'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427005712'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31703188768675769970)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31703189192602769971)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31703189505247769971)
,p_branch_name=>'Go To Page 15'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31703189192602769971)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703190355000769974)
,p_name=>'P14_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703191162474769976)
,p_name=>'P14_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703191905905769977)
,p_name=>'P14_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703192639315769978)
,p_name=>'P14_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703193471162769979)
,p_name=>'P14_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703194282077769979)
,p_name=>'P14_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703195072380769981)
,p_name=>'P14_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703195823663769982)
,p_name=>'P14_ORDERID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'0'
,p_prompt=>'Orderid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703196621373769982)
,p_name=>'P14_DATEORDERED'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'""'
,p_prompt=>'Dateordered'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703197460508769983)
,p_name=>'P14_SHIPDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'""'
,p_prompt=>'Shipdate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703198299867769984)
,p_name=>'P14_STATUS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'"Pending Order"'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31703199083441769985)
,p_name=>'P14_QUERY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31703188768675769970)
,p_item_default=>'''insert SIM_Order (order-id := ''orderid'', date-ordered := ''dateordered'', ship-date := ''shipdate'', status := ''status'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31703189932213769972)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696384112320390365:31696384361623390366'
,p_attribute_01=>wwv_flow_api.id(31696384361623390366)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P14_ORDER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31703189192602769971)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Shoe'
,p_page_mode=>'NORMAL'
,p_step_title=>'Shoe'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427181319'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31706385774460051741)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31706408824021051758)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P15_SHOE_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31706409585794051761)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31728577365204118722)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_button_name=>'Create_logo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Create Logo'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31728577109426118720)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_button_name=>'Create_Pattern'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Create pattern'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31706386131779051741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31706386569663051744)
,p_branch_name=>'Go To Page 17'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706387364553051746)
,p_name=>'P15_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706398156864051748)
,p_name=>'P15_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706398908040051749)
,p_name=>'P15_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706399725979051749)
,p_name=>'P15_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706400575996051750)
,p_name=>'P15_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706401397672051751)
,p_name=>'P15_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706402135170051751)
,p_name=>'P15_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706402937422051752)
,p_name=>'P15_SHOEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'0'
,p_prompt=>'Shoeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706403785873051753)
,p_name=>'P15_SIZES'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'0'
,p_prompt=>'Sizes'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706404583961051754)
,p_name=>'P15_COLOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'""'
,p_prompt=>'Color'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706405394593051755)
,p_name=>'P15_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'""'
,p_prompt=>'Style'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706406105094051755)
,p_name=>'P15_PRICE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'"50"'
,p_prompt=>'Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706406940605051756)
,p_name=>'P15_SHOELACECOLOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'""'
,p_prompt=>'Shoelacecolor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31706407796379051757)
,p_name=>'P15_QUERY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31706385774460051741)
,p_item_default=>'''insert SIM_Shoe (shoe-id := ''shoeid'', size := ''sizes'', color := ''color'', style := ''style'', price := ''price'', shoelace-color := ''shoelacecolor'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31706386920507051744)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696534604807028247:31696534808979028248'
,p_attribute_01=>wwv_flow_api.id(31696534808979028248)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P15_SHOE_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Order_Item'
,p_page_mode=>'NORMAL'
,p_step_title=>'Order_Item'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160426211025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31709913215922240373)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31709922772871240386)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P17_ORDER_ITEM_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31709923406549240390)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31709913643829240374)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31709914033133240374)
,p_branch_name=>'Go To Page 18'
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709914829990240376)
,p_name=>'P17_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709915686169240379)
,p_name=>'P17_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709916471036240380)
,p_name=>'P17_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709917225456240381)
,p_name=>'P17_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709918069144240381)
,p_name=>'P17_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709918855560240382)
,p_name=>'P17_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709919682896240383)
,p_name=>'P17_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709920458802240384)
,p_name=>'P17_ORDERITEMID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>'0'
,p_prompt=>'Orderitemid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31709921281765240385)
,p_name=>'P17_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31709913215922240373)
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'''insert SIM_Order-Item (order-item-id := ''orderitemid'');'''))
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31709914413688240375)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31700656095925515977:31700656229835515978'
,p_attribute_01=>wwv_flow_api.id(31700656229835515978)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P17_ORDER_ITEM_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Order_Item'
,p_page_mode=>'NORMAL'
,p_step_title=>'Order_Item'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427164417'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31711094837780726048)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31711127241129726069)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P18_ORDER_ITEM_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31711135408741726073)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31711095291347726049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31711095616157726050)
,p_branch_name=>'Go To Page 19'
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711096431844726054)
,p_name=>'P18_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711097370834726056)
,p_name=>'P18_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711108111152726057)
,p_name=>'P18_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711108999421726057)
,p_name=>'P18_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711109739123726058)
,p_name=>'P18_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711110592038726059)
,p_name=>'P18_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711111488456726062)
,p_name=>'P18_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711112239553726063)
,p_name=>'P18_ORDERITEMID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_prompt=>'Orderitemid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711113310552726064)
,p_name=>'P18_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Order-Item (shoe := SIM_Shoe WITH (shoe-id = 1)) WHERE order-item-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711116579000726064)
,p_name=>'P18_QUERY2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31711094837780726048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31711096075533726051)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31700656095925515977:31700656229835515978'
,p_attribute_01=>wwv_flow_api.id(31700656229835515978)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P18_ORDER_ITEM_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Order_Item'
,p_page_mode=>'NORMAL'
,p_step_title=>'Order_Item'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160426211856'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31711585823881390141)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31711595396463390154)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P19_ORDER_ITEM_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31711596082356390158)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31711586252510390142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31711586691809390142)
,p_branch_name=>'Go To Page 9'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711587478292390145)
,p_name=>'P19_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711588213599390147)
,p_name=>'P19_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711589088288390148)
,p_name=>'P19_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711589871254390149)
,p_name=>'P19_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711590637569390150)
,p_name=>'P19_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711591416907390150)
,p_name=>'P19_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711592205516390151)
,p_name=>'P19_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711593003321390152)
,p_name=>'P19_ORDERITEMID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_prompt=>'Orderitemid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31711593878578390152)
,p_name=>'P19_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31711585823881390141)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Order-Item (order := SIM_Order WITH (order-id = 1)) WHERE order-item-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31711587065545390143)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31700656095925515977:31700656229835515978'
,p_attribute_01=>wwv_flow_api.id(31700656229835515978)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P19_ORDER_ITEM_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Complaint'
,p_page_mode=>'MODAL'
,p_step_title=>'Complaint'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428005502'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31727718771773034007)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31727728618630034020)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P20_COMPLAINT_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31727729397929034023)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31727719136687034007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31727719559491034008)
,p_branch_name=>'Go To Page 20'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727720320797034011)
,p_name=>'P20_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727721101209034012)
,p_name=>'P20_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727721907692034014)
,p_name=>'P20_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727722720760034014)
,p_name=>'P20_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727723512549034015)
,p_name=>'P20_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727724351521034016)
,p_name=>'P20_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727725171804034017)
,p_name=>'P20_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727725966024034017)
,p_name=>'P20_COMPLAINTID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'0'
,p_prompt=>'Complaintid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727726761359034018)
,p_name=>'P20_COMMENTS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'""'
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727727502813034019)
,p_name=>'P20_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31727718771773034007)
,p_item_default=>'''insert SIM_Complaint (complaint-id := ''complaintid'', comments := ''comments'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31727719941085034009)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31727571229789018152:31727571405355018155'
,p_attribute_01=>wwv_flow_api.id(31727571405355018155)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P20_COMPLAINT_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Delivery Admin Order'
,p_page_mode=>'NORMAL'
,p_step_title=>'Delivery Admin Order'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427213449'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31691653343631032440)
,p_plug_name=>'Order'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.order_id	order_id,			',
'jt2.date_ordered	date_ordered,			',
'jt3.ship_date	ship_date,			',
'jt4.status	status,						',
'jt5.color	color,			',
'jt6.style	style,			',
'jt7.price	price,			',
'jt8.shoelace_color	shoelace_color,',
'''Approve'' Approve',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.order_id[*]'' COLUMNS rid for ordinality, order_id varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.date_ordered[*]'' COLUMNS rid for ordinality, date_ordered varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.ship_date[*]'' COLUMNS rid for ordinality, ship_date varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.status[*]'' COLUMNS rid for ordinality, status varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.color[*]'' COLUMNS rid for ordinality, color varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.style[*]'' COLUMNS rid for ordinality, style varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.price[*]'' COLUMNS rid for ordinality, price varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.shoelace_color[*]'' COLUMNS rid for ordinality, shoelace_color varchar path ''$'') jt8',
'where	t.collection_name	=	''P21_ORDER_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid',
'and status = ''Pending Order''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31691653420580032441)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31691653420580032441
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691653531898032442)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Order id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691653666652032443)
,p_db_column_name=>'DATE_ORDERED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date ordered'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691653709564032444)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ship date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691653897031032445)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691653959892032446)
,p_db_column_name=>'COLOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691654065649032447)
,p_db_column_name=>'STYLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Style'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691654167783032448)
,p_db_column_name=>'PRICE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Price'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691654289786032449)
,p_db_column_name=>'SHOELACE_COLOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Shoelace color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728575217832118701)
,p_db_column_name=>'APPROVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approve'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#APPROVE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31728313260251082695)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317283133'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORDER_ID:DATE_ORDERED:SHIP_DATE:STATUS:COLOR:STYLE:PRICE:SHOELACE_COLOR:APPROVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31727929175129050640)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31727950618069050655)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P21_ORDER_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31727951396287050658)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31727929550114050640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31691653343631032440)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31728576341635118712)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31691653343631032440)
,p_button_name=>'View_Approved_Order'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'View Order History'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31727929981826050641)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727930717578050643)
,p_name=>'P21_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727931561575050645)
,p_name=>'P21_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727932387343050646)
,p_name=>'P21_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727933115517050646)
,p_name=>'P21_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727933912956050648)
,p_name=>'P21_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727934711806050648)
,p_name=>'P21_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727935535614050649)
,p_name=>'P21_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727936351494050649)
,p_name=>'P21_ORDERID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_prompt=>'Orderid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727937184501050650)
,p_name=>'P21_DATEORDERED'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_prompt=>'Dateordered'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727937907127050653)
,p_name=>'P21_SHIPDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_prompt=>'Shipdate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727948743129050654)
,p_name=>'P21_STATUS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31727949511074050654)
,p_name=>'P21_QUERY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31727929175129050640)
,p_item_default=>'"from SIM_Order retrieve *, * OF shoe, OF order-item ;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31727930385133050641)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696384112320390365:31696384361623390366'
,p_attribute_01=>wwv_flow_api.id(31696384361623390366)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P21_ORDER_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'View Approve Order'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Approve Order'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427213350'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31728575321937118702)
,p_plug_name=>'Approve_Order'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.order_id	order_id,			',
'jt2.date_ordered	date_ordered,			',
'jt3.ship_date	ship_date,			',
'jt4.status	status,						',
'jt5.color	color,			',
'jt6.style	style,			',
'jt7.price	price,			',
'jt8.shoelace_color	shoelace_color',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.order_id[*]'' COLUMNS rid for ordinality, order_id varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.date_ordered[*]'' COLUMNS rid for ordinality, date_ordered varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.ship_date[*]'' COLUMNS rid for ordinality, ship_date varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.status[*]'' COLUMNS rid for ordinality, status varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.color[*]'' COLUMNS rid for ordinality, color varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.style[*]'' COLUMNS rid for ordinality, style varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.price[*]'' COLUMNS rid for ordinality, price varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.shoelace_color[*]'' COLUMNS rid for ordinality, shoelace_color varchar path ''$'') jt8',
'where	t.collection_name	=	''P22_ORDER_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31728575487117118703)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31728575487117118703
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728575558346118704)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Order id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728575696936118705)
,p_db_column_name=>'DATE_ORDERED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date ordered'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728575765738118706)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ship date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728575844954118707)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728575922130118708)
,p_db_column_name=>'COLOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728576080837118709)
,p_db_column_name=>'STYLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Style'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728576150691118710)
,p_db_column_name=>'PRICE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Price'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31728576247031118711)
,p_db_column_name=>'SHOELACE_COLOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Shoelace color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31731481502550522006)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317314816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORDER_ID:DATE_ORDERED:SHIP_DATE:STATUS:COLOR:STYLE:PRICE:SHOELACE_COLOR'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31728756970625149279)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31728778469779149300)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P22_ORDER_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31728779182778149302)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31728757315393149280)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31728575321937118702)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31728576498153118713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31728575321937118702)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31728757725407149281)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728768563199149285)
,p_name=>'P22_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728769356121149288)
,p_name=>'P22_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728770158710149288)
,p_name=>'P22_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728770916250149289)
,p_name=>'P22_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728771714873149290)
,p_name=>'P22_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728772502655149291)
,p_name=>'P22_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728773308070149292)
,p_name=>'P22_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728774138254149292)
,p_name=>'P22_ORDERID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_prompt=>'Orderid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728774994393149293)
,p_name=>'P22_DATEORDERED'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_prompt=>'Dateordered'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728775792752149294)
,p_name=>'P22_SHIPDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_prompt=>'Shipdate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728776569276149295)
,p_name=>'P22_STATUS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31728777372609149296)
,p_name=>'P22_QUERY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31728756970625149279)
,p_item_default=>'"from SIM_Order retrieve *, * OF shoe, OF order-item;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31728768115869149282)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696384112320390365:31696384361623390366'
,p_attribute_01=>wwv_flow_api.id(31696384361623390366)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_ORDER_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Order'
,p_page_mode=>'MODAL'
,p_step_title=>'Order'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427172400'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729323367186835605)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539406266286310817)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729323715958835606)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539406352018310817)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31729345220115835619)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P23_ORDER_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31729345944548835621)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31729324155360835606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31729323715958835606)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31729324516181835607)
,p_branch_name=>'Go To Page 24'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729325335459835608)
,p_name=>'P23_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729326168572835610)
,p_name=>'P23_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729326905273835611)
,p_name=>'P23_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729327733234835612)
,p_name=>'P23_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729338541647835613)
,p_name=>'P23_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729339317041835613)
,p_name=>'P23_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729340190151835614)
,p_name=>'P23_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729340956031835615)
,p_name=>'P23_ORDERID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'100'
,p_prompt=>'Orderid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729341715878835616)
,p_name=>'P23_DATEORDERED'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'""'
,p_prompt=>'Dateordered'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729342527103835617)
,p_name=>'P23_SHIPDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'""'
,p_prompt=>'Shipdate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729343333986835617)
,p_name=>'P23_STATUS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'"Approved"'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729344162495835618)
,p_name=>'P23_QUERY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31729323367186835605)
,p_item_default=>'''insert SIM_Order (order-id := ''orderid'', date-ordered := ''dateordered'', ship-date := ''shipdate'', status := ''status'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729324972438835607)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696384112320390365:31696384361623390366'
,p_attribute_01=>wwv_flow_api.id(31696384361623390366)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P23_ORDER_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Approve Shoe'
,p_page_mode=>'MODAL'
,p_step_title=>'Approve Shoe'
,p_step_sub_title=>'Approve Shoe'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427171744'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729645412312233079)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31729661811347233088)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P24_SHOE_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31729662219162233090)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31729645813593233080)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31729668893326233099)
,p_branch_name=>'Go To Page 25'
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729646253500233081)
,p_name=>'P24_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729646656802233082)
,p_name=>'P24_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729647074032233082)
,p_name=>'P24_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729647462476233082)
,p_name=>'P24_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729647878893233083)
,p_name=>'P24_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729658240138233083)
,p_name=>'P24_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729658607383233084)
,p_name=>'P24_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729659034319233084)
,p_name=>'P24_SHOEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'100'
,p_prompt=>'Shoeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729659411654233085)
,p_name=>'P24_SIZES'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'0'
,p_prompt=>'Sizes'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729659878012233085)
,p_name=>'P24_COLOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'""'
,p_prompt=>'Color'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729660202907233086)
,p_name=>'P24_STYLE'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'""'
,p_prompt=>'Style'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729660686106233086)
,p_name=>'P24_PRICE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'"50"'
,p_prompt=>'Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729661039172233087)
,p_name=>'P24_SHOELACECOLOR'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'""'
,p_prompt=>'Shoelacecolor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729661413498233087)
,p_name=>'P24_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31729645412312233079)
,p_item_default=>'''insert SIM_Shoe (shoe-id := ''shoeid'', size := ''sizes'', color := ''color'', style := ''style'', price := ''price'', shoelace-color := ''shoelacecolor'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729662681835233091)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31696534604807028247:31696534808979028248'
,p_attribute_01=>wwv_flow_api.id(31696534808979028248)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P24_SHOE_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Insert_Order_item'
,p_page_mode=>'MODAL'
,p_step_title=>'Insert_Order_item'
,p_step_sub_title=>'Insert_Order_item'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427171811'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729778814496251102)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31729783259944251109)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P25_ORDER_ITEM_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31729783667565251110)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31729779209752251102)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31729788520998251116)
,p_branch_name=>'Go To Page 26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729779640657251103)
,p_name=>'P25_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729780068142251103)
,p_name=>'P25_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729780491437251104)
,p_name=>'P25_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729780827728251104)
,p_name=>'P25_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729781214575251106)
,p_name=>'P25_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729781659446251107)
,p_name=>'P25_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729782016009251108)
,p_name=>'P25_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729782490682251108)
,p_name=>'P25_ORDERITEMID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>'100'
,p_prompt=>'Orderitemid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729782873098251109)
,p_name=>'P25_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31729778814496251102)
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'''insert SIM_Order-Item (order-item-id := ''orderitemid'');'''))
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729784061042251111)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31700656095925515977:31700656229835515978'
,p_attribute_01=>wwv_flow_api.id(31700656229835515978)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_ORDER_ITEM_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Relationship_Order_Approve'
,p_page_mode=>'MODAL'
,p_step_title=>'Relationship_Order_Approve'
,p_step_sub_title=>'Relationship_Order_Approve'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427171837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729755936715883031)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31729810726323883039)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P26_ORDER_ITEM_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31729811173371883040)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31729756331318883033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31729816058894883047)
,p_branch_name=>'Go To Page 27'
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729756771237883034)
,p_name=>'P26_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729757173963883035)
,p_name=>'P26_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729757506662883036)
,p_name=>'P26_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729757986467883036)
,p_name=>'P26_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729808300203883036)
,p_name=>'P26_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729808723686883037)
,p_name=>'P26_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729809160224883037)
,p_name=>'P26_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729809578024883038)
,p_name=>'P26_ORDERITEMID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_prompt=>'Orderitemid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729809965052883038)
,p_name=>'P26_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Order-Item (shoe := SIM_Shoe WITH (shoe-id = 101)) WHERE order-item-id = 101;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729810378765883039)
,p_name=>'P26_QUERY2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31729755936715883031)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729811525623883042)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31700656095925515977:31700656229835515978'
,p_attribute_01=>wwv_flow_api.id(31700656229835515978)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_ORDER_ITEM_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Relationship_Order_Approve'
,p_page_mode=>'MODAL'
,p_step_title=>'Relationship_Order_Approve'
,p_step_sub_title=>'Relationship_Order_Approve'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427171857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729895482603264242)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31729899889089264250)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P27_ORDER_ITEM_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31729900284529264250)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31729895875654264243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31729905137019264256)
,p_branch_name=>'Go To Page 21'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729896211464264244)
,p_name=>'P27_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729896647624264245)
,p_name=>'P27_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729897098749264245)
,p_name=>'P27_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729897413030264245)
,p_name=>'P27_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729897841748264246)
,p_name=>'P27_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729898244306264248)
,p_name=>'P27_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729898651529264248)
,p_name=>'P27_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729899013653264249)
,p_name=>'P27_ORDERITEMID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_prompt=>'Orderitemid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729899444502264249)
,p_name=>'P27_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31729895482603264242)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Order-Item (order := SIM_Order WITH (order-id = 101)) WHERE order-item-id = 101;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31729900680003264251)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31700656095925515977:31700656229835515978'
,p_attribute_01=>wwv_flow_api.id(31700656229835515978)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P27_ORDER_ITEM_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Pattern'
,p_page_mode=>'MODAL'
,p_step_title=>'Pattern'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427180451'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31796781040153304127)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539406266286310817)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31796781411021304127)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539406352018310817)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31796792038431304140)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P28_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31796792751112304143)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31796781882129304128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31796781411021304127)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31796782249845304129)
,p_branch_name=>'Go To Page 29'
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796783072464304131)
,p_name=>'P28_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796783801317304132)
,p_name=>'P28_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796784590469304133)
,p_name=>'P28_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796785389043304134)
,p_name=>'P28_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796786112580304134)
,p_name=>'P28_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796786933811304135)
,p_name=>'P28_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796787714393304136)
,p_name=>'P28_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796788559573304137)
,p_name=>'P28_PATTERNID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'0'
,p_prompt=>'Patternid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796789331550304137)
,p_name=>'P28_PATTERNNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'""'
,p_prompt=>'Patternname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796790152438304138)
,p_name=>'P28_PATTERNLOOK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'""'
,p_prompt=>'Patternlook'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31796790994492304139)
,p_name=>'P28_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31796781040153304127)
,p_item_default=>'''insert SIM_Pattern (pattern-id := ''patternid'', pattern-name := ''patternname'', pattern-look := ''patternlook'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31796782666440304130)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31796726474173673689:31796726663415673690'
,p_attribute_01=>wwv_flow_api.id(31796726663415673690)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P28_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Pattern'
,p_page_mode=>'MODAL'
,p_step_title=>'Pattern'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427180542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31804246499445837568)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31804255979163837580)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P28_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31804256606466837583)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31804246832560837569)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31804247229437837569)
,p_branch_name=>'Go To Page 30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804248009636837571)
,p_name=>'P29_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804248825729837572)
,p_name=>'P29_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804249652299837572)
,p_name=>'P29_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804250418068837573)
,p_name=>'P29_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804251216022837574)
,p_name=>'P29_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804252052400837575)
,p_name=>'P29_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804252865433837577)
,p_name=>'P29_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804254805943837579)
,p_name=>'P29_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31804246499445837568)
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'''MODIFY LIMIT = ALL SIM_Pattern (shoe := SIM_Shoe WITH (shoe-id = 1)) WHERE pattern-id = 1;''',
''))
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31804247682467837570)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31796726474173673689:31796726663415673690'
,p_attribute_01=>wwv_flow_api.id(31796726663415673690)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P28_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'pattern_shoe_relationship'
,p_page_mode=>'MODAL'
,p_step_title=>'pattern_shoe_relationship'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427180555'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31804456371181863404)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31804467376541863416)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P30_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31804468097098863418)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31804456874548863405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31804457355868863405)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804458736336863407)
,p_name=>'P30_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804460210094863408)
,p_name=>'P30_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804461034491863408)
,p_name=>'P30_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804461842565863409)
,p_name=>'P30_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804462669316863410)
,p_name=>'P30_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804463482071863411)
,p_name=>'P30_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804464249754863411)
,p_name=>'P30_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804466285529863414)
,p_name=>'P30_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31804456371181863404)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Shoe (pattern := SIM_Pattern WITH (pattern-id = 1)) WHERE shoe-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31804457832862863406)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31796726474173673689:31796726663415673690'
,p_attribute_01=>wwv_flow_api.id(31796726663415673690)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P30_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Logo'
,p_page_mode=>'MODAL'
,p_step_title=>'Logo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427182423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31804966454258897314)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539406266286310817)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31804966825222897315)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539406352018310817)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31804986757609897326)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P31_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31804987451786897329)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31804967292147897315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31804966825222897315)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31804967681495897316)
,p_branch_name=>'Go To Page 32'
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804978433799897317)
,p_name=>'P31_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804979270404897318)
,p_name=>'P31_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804980074466897319)
,p_name=>'P31_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804980867309897321)
,p_name=>'P31_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804981639731897322)
,p_name=>'P31_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804982408294897323)
,p_name=>'P31_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804983272511897323)
,p_name=>'P31_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804984052194897324)
,p_name=>'P31_LOGOID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'0'
,p_prompt=>'Logoid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804984814235897324)
,p_name=>'P31_LOGOSTYLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'""'
,p_prompt=>'Logostyle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31804985692467897325)
,p_name=>'P31_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31804966454258897314)
,p_item_default=>'''insert SIM_Logo (logo-id := ''logoid'', logo-style := ''logostyle'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31804978006279897316)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31803940751191819677:31803940957263819679'
,p_attribute_01=>wwv_flow_api.id(31803940957263819679)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P31_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Logo_relationship'
,p_page_mode=>'MODAL'
,p_step_title=>'Logo_relationship'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427182359'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31806060365023949675)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31806069423042949686)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P32_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31806070140451949688)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31806060760124949675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31806061130445949676)
,p_branch_name=>'Go To Page 33'
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806061951083949678)
,p_name=>'P32_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806062720919949679)
,p_name=>'P32_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806063551413949680)
,p_name=>'P32_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806064355519949680)
,p_name=>'P32_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806065117113949682)
,p_name=>'P32_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806065972739949682)
,p_name=>'P32_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806066791994949683)
,p_name=>'P32_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806068384946949685)
,p_name=>'P32_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31806060365023949675)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Logo (shoe := SIM_Shoe WITH (shoe-id = 1)) WHERE logo-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31806061598702949677)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31803940751191819677:31803940957263819679'
,p_attribute_01=>wwv_flow_api.id(31803940957263819679)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P32_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'logo_relationship'
,p_page_mode=>'MODAL'
,p_step_title=>'logo_relationship'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427182935'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31806117638656332558)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31806136772549332572)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P33_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31806137424313332575)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31806128081225332559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31806128478346332560)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806129254787332562)
,p_name=>'P33_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806130029579332564)
,p_name=>'P33_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806130845173332565)
,p_name=>'P33_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806131611165332566)
,p_name=>'P33_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806132427783332567)
,p_name=>'P33_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806133245402332568)
,p_name=>'P33_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806134095512332568)
,p_name=>'P33_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31806135632580332570)
,p_name=>'P33_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31806117638656332558)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Shoe (logo := SIM_Logo WITH (logo-id = 1)) WHERE shoe-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31806128887521332561)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31803940751191819677:31803940957263819679'
,p_attribute_01=>wwv_flow_api.id(31803940957263819679)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P33_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'order_complaint'
,p_page_mode=>'MODAL'
,p_step_title=>'order_complaint'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428005218'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31841870377455295710)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31841879498269295723)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P34_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31841880165320295725)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31841870757063295710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31841871151855295712)
,p_branch_name=>'Go To Page 35'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841871939378295714)
,p_name=>'P34_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841872764200295715)
,p_name=>'P34_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841873584851295717)
,p_name=>'P34_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841874313851295718)
,p_name=>'P34_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841875194061295718)
,p_name=>'P34_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841875931462295719)
,p_name=>'P34_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841876743367295720)
,p_name=>'P34_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841878365487295722)
,p_name=>'P34_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31841870377455295710)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Order (complaint := SIM_Complaint WITH(complaint-id = 1)) WHERE order-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841871504817295712)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31727571229789018152:31727571405355018155'
,p_attribute_01=>wwv_flow_api.id(31727571405355018155)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P34_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'order_complaint2'
,p_page_mode=>'MODAL'
,p_step_title=>'order_complaint2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428005419'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31841956414478303235)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31841965543466303244)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P35_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31841966242001303248)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31841956818700303235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31841957284852303236)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841958012840303237)
,p_name=>'P35_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841958834083303238)
,p_name=>'P35_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841959630900303239)
,p_name=>'P35_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841960467420303240)
,p_name=>'P35_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841961257566303240)
,p_name=>'P35_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841962042283303241)
,p_name=>'P35_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841962899698303242)
,p_name=>'P35_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841964403817303243)
,p_name=>'P35_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31841956414478303235)
,p_item_default=>'''MODIFY LIMIT = ALL SIM_Complaint (order := SIM_Order WITH(order-id = 1)) WHERE complaint-id = 1;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841957647804303237)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31727571229789018152:31727571405355018155'
,p_attribute_01=>wwv_flow_api.id(31727571405355018155)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P35_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Complaint Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Complaint Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428012951'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31837985481033842702)
,p_plug_name=>'Complaint'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select										',
'jt3.comments	comments,			',
'jt4.order_id	order_id,						',
'jt5.date_ordered	date_ordered,			',
'jt6.ship_date	ship_date,',
'''Send to Manager'' Send,',
'''Resolve'' Resolve',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.comments[*]'' COLUMNS rid for ordinality, comments varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.order_id[*]'' COLUMNS rid for ordinality, order_id varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.date_ordered[*]'' COLUMNS rid for ordinality, date_ordered varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.ship_date[*]'' COLUMNS rid for ordinality, ship_date varchar path ''$'') jt6',
'where	t.collection_name	=	''P36_COMPLAINT_RESULTS''and ',
'jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31837985588541842703)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31837985588541842703
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837985667064842704)
,p_db_column_name=>'DATE_ORDERED'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Date ordered'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837985718570842705)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ship date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837986406981842712)
,p_db_column_name=>'COMMENTS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837986524142842713)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Order id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837986993123842717)
,p_db_column_name=>'RESOLVE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Resolve'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#RESOLVE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837987014130842718)
,p_db_column_name=>'SEND'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Send'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#SEND#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31842307188045406912)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318423072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORDER_ID:COMMENTS:DATE_ORDERED:SHIP_DATE:SEND:RESOLVE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31842072794563347614)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31842091895124347628)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P36_COMPLAINT_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31842092534639347631)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31842073163173347615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31837985481033842702)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31842073585893347616)
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842074324539347618)
,p_name=>'P36_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842075175361347619)
,p_name=>'P36_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842075977866347620)
,p_name=>'P36_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842076737580347621)
,p_name=>'P36_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842077539848347623)
,p_name=>'P36_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842088314358347624)
,p_name=>'P36_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842089100506347624)
,p_name=>'P36_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842090786644347625)
,p_name=>'P36_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31842072794563347614)
,p_item_default=>'"from SIM_Complaint retrieve *, * OF order;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31842073993424347617)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31727571229789018152:31727571405355018155'
,p_attribute_01=>wwv_flow_api.id(31727571405355018155)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P36_COMPLAINT_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Manager Complaint Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager Complaint Report'
,p_step_sub_title=>'Manager Complaint Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428013158'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848193696176558971)
,p_plug_name=>'Complaint'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select										',
'jt3.comments	comments,			',
'jt4.order_id	order_id,						',
'jt5.date_ordered	date_ordered,			',
'jt6.ship_date	ship_date,',
'''Resolve'' Resolve',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.comments[*]'' COLUMNS rid for ordinality, comments varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.order_id[*]'' COLUMNS rid for ordinality, order_id varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.date_ordered[*]'' COLUMNS rid for ordinality, date_ordered varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.ship_date[*]'' COLUMNS rid for ordinality, ship_date varchar path ''$'') jt6',
'where	t.collection_name	=	''P37_COMPLAINT_RESULTS''and ',
'jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31848194053946558971)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31848194053946558971
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848194142088558972)
,p_db_column_name=>'DATE_ORDERED'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Date ordered'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848194519207558973)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ship date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848194944234558973)
,p_db_column_name=>'COMMENTS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848195381161558975)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Order id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848195791790558976)
,p_db_column_name=>'RESOLVE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Resolve'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#RESOLVE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31848196502116558976)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318481966'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORDER_ID:COMMENTS:DATE_ORDERED:SHIP_DATE:RESOLVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848197471716558978)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31848211094240558983)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P37_COMPLAINT_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31848211458613558984)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31848197056575558977)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31848193696176558971)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31848216315440558990)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848197876045558979)
,p_name=>'P37_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848208240671558979)
,p_name=>'P37_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848208670468558980)
,p_name=>'P37_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848209069739558980)
,p_name=>'P37_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848209456823558980)
,p_name=>'P37_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848209804354558981)
,p_name=>'P37_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848210232335558981)
,p_name=>'P37_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848210648589558981)
,p_name=>'P37_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31848197471716558978)
,p_item_default=>'"from SIM_Complaint retrieve *, * OF order;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31848211892621558985)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31727571229789018152:31727571405355018155'
,p_attribute_01=>wwv_flow_api.id(31727571405355018155)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P37_COMPLAINT_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(31539440520073310870)
,p_name=>'Customer Complaint Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Customer Complaint Report'
,p_step_sub_title=>'Customer Complaint Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VIET.TRAN714@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428013713'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848330333892589518)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31539414398180310826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31848333984320589526)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31539414398180310826)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P38_COMPLAINT_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31539423144459310834)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31848334305685589527)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848334770466589527)
,p_plug_name=>'Complaint'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31539413896210310825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select										',
'jt3.comments	comments,			',
'jt4.order_id	order_id,						',
'jt5.date_ordered	date_ordered,			',
'jt6.ship_date	ship_date,',
'''Currently being processed'' Process',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.comments[*]'' COLUMNS rid for ordinality, comments varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.order_id[*]'' COLUMNS rid for ordinality, order_id varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.date_ordered[*]'' COLUMNS rid for ordinality, date_ordered varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.ship_date[*]'' COLUMNS rid for ordinality, ship_date varchar path ''$'') jt6',
'where	t.collection_name	=	''P38_COMPLAINT_RESULTS''and ',
'jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31848335122621589528)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'VIET.TRAN714@GMAIL.COM'
,p_internal_uid=>31848335122621589528
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848335271414589528)
,p_db_column_name=>'DATE_ORDERED'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Date ordered'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848335657548589529)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ship date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848336070901589529)
,p_db_column_name=>'COMMENTS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31848336495442589530)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Order id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31837987205114842720)
,p_db_column_name=>'PROCESS'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31848337207493589530)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318483373'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORDER_ID:COMMENTS:DATE_ORDERED:SHIP_DATE:PROCESS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31848337744573589531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31848334770466589527)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31539435320662310846)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31848472615727589536)
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848330784844589519)
,p_name=>'P38_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848331181471589520)
,p_name=>'P38_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'WDBC3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848331512283589521)
,p_name=>'P38_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'localhost:6011'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848331916072589521)
,p_name=>'P38_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848332386826589523)
,p_name=>'P38_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'C3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848332773645589524)
,p_name=>'P38_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848333172415589525)
,p_name=>'P38_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848333501583589525)
,p_name=>'P38_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31848330333892589518)
,p_item_default=>'"from SIM_Complaint retrieve *, * OF order;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31539434840099310845)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31848468173871589532)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31727571229789018152:31727571405355018155'
,p_attribute_01=>wwv_flow_api.id(31727571405355018155)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P38_COMPLAINT_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31677876547429174147)
,p_name=>'Employee'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31677876719491174148)
,p_ws_id=>wwv_flow_api.id(31677876547429174147)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677877027244174150)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678146261921198424)
,p_parameter_id=>wwv_flow_api.id(31677877027244174150)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678837737033243564)
,p_parameter_id=>wwv_flow_api.id(31677877027244174150)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677877356130174151)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678147082689198425)
,p_parameter_id=>wwv_flow_api.id(31677877356130174151)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678848566067243567)
,p_parameter_id=>wwv_flow_api.id(31677877356130174151)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677877660959174151)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678147878921198426)
,p_parameter_id=>wwv_flow_api.id(31677877660959174151)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678849308532243568)
,p_parameter_id=>wwv_flow_api.id(31677877660959174151)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677877972832174152)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678148627503198426)
,p_parameter_id=>wwv_flow_api.id(31677877972832174152)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678850171089243570)
,p_parameter_id=>wwv_flow_api.id(31677877972832174152)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677898213172174152)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678149448944198427)
,p_parameter_id=>wwv_flow_api.id(31677898213172174152)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678850914241243570)
,p_parameter_id=>wwv_flow_api.id(31677898213172174152)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677898597580174152)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678150219201198428)
,p_parameter_id=>wwv_flow_api.id(31677898597580174152)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678851701075243571)
,p_parameter_id=>wwv_flow_api.id(31677898597580174152)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677898804236174152)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678151002073198428)
,p_parameter_id=>wwv_flow_api.id(31677898804236174152)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678852565962243572)
,p_parameter_id=>wwv_flow_api.id(31677898804236174152)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677899165219174153)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678151854035198429)
,p_parameter_id=>wwv_flow_api.id(31677899165219174153)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678853310440243573)
,p_parameter_id=>wwv_flow_api.id(31677899165219174153)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677899483561174153)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'name'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678152627119198430)
,p_parameter_id=>wwv_flow_api.id(31677899483561174153)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678854111940243574)
,p_parameter_id=>wwv_flow_api.id(31677899483561174153)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_NAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677899702803174153)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'emailaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678153452254198431)
,p_parameter_id=>wwv_flow_api.id(31677899702803174153)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_EMAILADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678854950900243574)
,p_parameter_id=>wwv_flow_api.id(31677899702803174153)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_EMAILADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677900018820174153)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'address'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678154256820198431)
,p_parameter_id=>wwv_flow_api.id(31677900018820174153)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_ADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678855761749243575)
,p_parameter_id=>wwv_flow_api.id(31677900018820174153)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_ADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677900365688174153)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'phonenumber'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678155007215198432)
,p_parameter_id=>wwv_flow_api.id(31677900365688174153)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PHONENUMBER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678856525089243576)
,p_parameter_id=>wwv_flow_api.id(31677900365688174153)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PHONENUMBER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677900688259174154)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'job'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678155892230198433)
,p_parameter_id=>wwv_flow_api.id(31677900688259174154)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_JOB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678857393971243577)
,p_parameter_id=>wwv_flow_api.id(31677900688259174154)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_JOB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677900952844174154)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'type'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678156696241198434)
,p_parameter_id=>wwv_flow_api.id(31677900952844174154)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_TYPE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678858193298243578)
,p_parameter_id=>wwv_flow_api.id(31677900952844174154)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_TYPE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677901251602174155)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678157443631198436)
,p_parameter_id=>wwv_flow_api.id(31677901251602174155)
,p_process_id=>wwv_flow_api.id(31678145468784198419)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678858982844243579)
,p_parameter_id=>wwv_flow_api.id(31677901251602174155)
,p_process_id=>wwv_flow_api.id(31678836954438243560)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31677901518296174156)
,p_ws_opers_id=>wwv_flow_api.id(31677876719491174148)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/customer
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31696275895073369436)
,p_name=>'Customer'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31696276072943369439)
,p_ws_id=>wwv_flow_api.id(31696275895073369436)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696276345707369442)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696950918703044292)
,p_parameter_id=>wwv_flow_api.id(31696276345707369442)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696981554551049771)
,p_parameter_id=>wwv_flow_api.id(31696276345707369442)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696276605062369443)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696951712522044294)
,p_parameter_id=>wwv_flow_api.id(31696276605062369443)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696982354747049772)
,p_parameter_id=>wwv_flow_api.id(31696276605062369443)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696276930779369443)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696952560234044298)
,p_parameter_id=>wwv_flow_api.id(31696276930779369443)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696983134254049773)
,p_parameter_id=>wwv_flow_api.id(31696276930779369443)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696277231376369443)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696953356165044299)
,p_parameter_id=>wwv_flow_api.id(31696277231376369443)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696983948469049773)
,p_parameter_id=>wwv_flow_api.id(31696277231376369443)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696277545539369444)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696954176642044299)
,p_parameter_id=>wwv_flow_api.id(31696277545539369444)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696984773569049774)
,p_parameter_id=>wwv_flow_api.id(31696277545539369444)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696277820670369444)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696954906267044300)
,p_parameter_id=>wwv_flow_api.id(31696277820670369444)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696985584446049775)
,p_parameter_id=>wwv_flow_api.id(31696277820670369444)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696278149256369444)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696955749320044301)
,p_parameter_id=>wwv_flow_api.id(31696278149256369444)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696986355412049775)
,p_parameter_id=>wwv_flow_api.id(31696278149256369444)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696278453777369444)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'name'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696956590966044301)
,p_parameter_id=>wwv_flow_api.id(31696278453777369444)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696987174019049776)
,p_parameter_id=>wwv_flow_api.id(31696278453777369444)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_NAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696278766176369445)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'emailaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696957397256044303)
,p_parameter_id=>wwv_flow_api.id(31696278766176369445)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_EMAILADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696987958438049777)
,p_parameter_id=>wwv_flow_api.id(31696278766176369445)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_EMAILADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696279057741369445)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'creditcardnum'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696958101463044303)
,p_parameter_id=>wwv_flow_api.id(31696279057741369445)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_CREDITCARDNUM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696988770739049778)
,p_parameter_id=>wwv_flow_api.id(31696279057741369445)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_CREDITCARDNUM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696279311675369445)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'address'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696958990893044304)
,p_parameter_id=>wwv_flow_api.id(31696279311675369445)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_ADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696989526679049778)
,p_parameter_id=>wwv_flow_api.id(31696279311675369445)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_ADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696279667223369445)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'phonenumber'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696959779623044305)
,p_parameter_id=>wwv_flow_api.id(31696279667223369445)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PHONENUMBER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696990392231049779)
,p_parameter_id=>wwv_flow_api.id(31696279667223369445)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PHONENUMBER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696279985496369447)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696961392698044306)
,p_parameter_id=>wwv_flow_api.id(31696279985496369447)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696991999200049781)
,p_parameter_id=>wwv_flow_api.id(31696279985496369447)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696280275436369447)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696408387900019090)
,p_ws_opers_id=>wwv_flow_api.id(31696276072943369439)
,p_name=>'customerid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696960568011044305)
,p_parameter_id=>wwv_flow_api.id(31696408387900019090)
,p_process_id=>wwv_flow_api.id(31696950108664044289)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_CUSTOMERID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31696991113549049780)
,p_parameter_id=>wwv_flow_api.id(31696408387900019090)
,p_process_id=>wwv_flow_api.id(31696980758676049768)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_CUSTOMERID'
);
end;
/
prompt --application/shared_components/logic/webservices/order
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31696384112320390365)
,p_name=>'Order'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31696384361623390366)
,p_ws_id=>wwv_flow_api.id(31696384112320390365)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696384692485390368)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698919217371675182)
,p_parameter_id=>wwv_flow_api.id(31696384692485390368)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703190777200769975)
,p_parameter_id=>wwv_flow_api.id(31696384692485390368)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727931116446050644)
,p_parameter_id=>wwv_flow_api.id(31696384692485390368)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728768963229149287)
,p_parameter_id=>wwv_flow_api.id(31696384692485390368)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729325762587835609)
,p_parameter_id=>wwv_flow_api.id(31696384692485390368)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696384914073390368)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698920084332675184)
,p_parameter_id=>wwv_flow_api.id(31696384914073390368)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703191562325769977)
,p_parameter_id=>wwv_flow_api.id(31696384914073390368)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727931958378050645)
,p_parameter_id=>wwv_flow_api.id(31696384914073390368)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728769745810149288)
,p_parameter_id=>wwv_flow_api.id(31696384914073390368)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729326575080835610)
,p_parameter_id=>wwv_flow_api.id(31696384914073390368)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696385224083390368)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698920833953675185)
,p_parameter_id=>wwv_flow_api.id(31696385224083390368)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703192371205769978)
,p_parameter_id=>wwv_flow_api.id(31696385224083390368)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727932777864050646)
,p_parameter_id=>wwv_flow_api.id(31696385224083390368)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728770558753149289)
,p_parameter_id=>wwv_flow_api.id(31696385224083390368)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729327382552835611)
,p_parameter_id=>wwv_flow_api.id(31696385224083390368)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696385550285390369)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698921683617675186)
,p_parameter_id=>wwv_flow_api.id(31696385550285390369)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703193062259769978)
,p_parameter_id=>wwv_flow_api.id(31696385550285390369)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727933534802050647)
,p_parameter_id=>wwv_flow_api.id(31696385550285390369)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728771352511149290)
,p_parameter_id=>wwv_flow_api.id(31696385550285390369)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729338110527835613)
,p_parameter_id=>wwv_flow_api.id(31696385550285390369)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696385825069390369)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698922458242675186)
,p_parameter_id=>wwv_flow_api.id(31696385825069390369)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703193870281769979)
,p_parameter_id=>wwv_flow_api.id(31696385825069390369)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727934396955050648)
,p_parameter_id=>wwv_flow_api.id(31696385825069390369)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728772126391149291)
,p_parameter_id=>wwv_flow_api.id(31696385825069390369)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729338910744835613)
,p_parameter_id=>wwv_flow_api.id(31696385825069390369)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696386181980390369)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698923263242675187)
,p_parameter_id=>wwv_flow_api.id(31696386181980390369)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703194676261769980)
,p_parameter_id=>wwv_flow_api.id(31696386181980390369)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727935141599050649)
,p_parameter_id=>wwv_flow_api.id(31696386181980390369)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728772915102149292)
,p_parameter_id=>wwv_flow_api.id(31696386181980390369)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729339794314835614)
,p_parameter_id=>wwv_flow_api.id(31696386181980390369)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696386495671390370)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698924010742675188)
,p_parameter_id=>wwv_flow_api.id(31696386495671390370)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703195455238769981)
,p_parameter_id=>wwv_flow_api.id(31696386495671390370)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727935995230050649)
,p_parameter_id=>wwv_flow_api.id(31696386495671390370)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728773745239149292)
,p_parameter_id=>wwv_flow_api.id(31696386495671390370)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729340517170835614)
,p_parameter_id=>wwv_flow_api.id(31696386495671390370)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696386763647390370)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'orderid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698924802191675189)
,p_parameter_id=>wwv_flow_api.id(31696386763647390370)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ORDERID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703196273085769982)
,p_parameter_id=>wwv_flow_api.id(31696386763647390370)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_ORDERID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727936786804050650)
,p_parameter_id=>wwv_flow_api.id(31696386763647390370)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_ORDERID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728774569394149293)
,p_parameter_id=>wwv_flow_api.id(31696386763647390370)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_ORDERID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729341318828835615)
,p_parameter_id=>wwv_flow_api.id(31696386763647390370)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ORDERID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696387089378390370)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'dateordered'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698925695226675189)
,p_parameter_id=>wwv_flow_api.id(31696387089378390370)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DATEORDERED'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703197099819769983)
,p_parameter_id=>wwv_flow_api.id(31696387089378390370)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_DATEORDERED'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727937582302050652)
,p_parameter_id=>wwv_flow_api.id(31696387089378390370)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DATEORDERED'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728775365492149294)
,p_parameter_id=>wwv_flow_api.id(31696387089378390370)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_DATEORDERED'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729342176567835617)
,p_parameter_id=>wwv_flow_api.id(31696387089378390370)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DATEORDERED'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696387315038390370)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'shipdate'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698926455436675190)
,p_parameter_id=>wwv_flow_api.id(31696387315038390370)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SHIPDATE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703197809748769983)
,p_parameter_id=>wwv_flow_api.id(31696387315038390370)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SHIPDATE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727948335466050653)
,p_parameter_id=>wwv_flow_api.id(31696387315038390370)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SHIPDATE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728776118311149295)
,p_parameter_id=>wwv_flow_api.id(31696387315038390370)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_SHIPDATE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729342928238835617)
,p_parameter_id=>wwv_flow_api.id(31696387315038390370)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SHIPDATE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696387649373390371)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31698927202358675191)
,p_parameter_id=>wwv_flow_api.id(31696387649373390371)
,p_process_id=>wwv_flow_api.id(31698918452639675177)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703199431774769985)
,p_parameter_id=>wwv_flow_api.id(31696387649373390371)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727949992842050655)
,p_parameter_id=>wwv_flow_api.id(31696387649373390371)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728777753469149299)
,p_parameter_id=>wwv_flow_api.id(31696387649373390371)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729344520244835618)
,p_parameter_id=>wwv_flow_api.id(31696387649373390371)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696387900235390371)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31703063382205752605)
,p_ws_opers_id=>wwv_flow_api.id(31696384361623390366)
,p_name=>'status'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31703198633874769985)
,p_parameter_id=>wwv_flow_api.id(31703063382205752605)
,p_process_id=>wwv_flow_api.id(31703189932213769972)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_STATUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727949125829050654)
,p_parameter_id=>wwv_flow_api.id(31703063382205752605)
,p_process_id=>wwv_flow_api.id(31727930385133050641)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_STATUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31728776989973149295)
,p_parameter_id=>wwv_flow_api.id(31703063382205752605)
,p_process_id=>wwv_flow_api.id(31728768115869149282)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_STATUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729343713829835618)
,p_parameter_id=>wwv_flow_api.id(31703063382205752605)
,p_process_id=>wwv_flow_api.id(31729324972438835607)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_STATUS'
);
end;
/
prompt --application/shared_components/logic/webservices/shoe
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31696534604807028247)
,p_name=>'Shoe'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31696534808979028248)
,p_ws_id=>wwv_flow_api.id(31696534604807028247)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696535115583028249)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706387714962051747)
,p_parameter_id=>wwv_flow_api.id(31696535115583028249)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729663090897233092)
,p_parameter_id=>wwv_flow_api.id(31696535115583028249)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696535440535028250)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706398524221051748)
,p_parameter_id=>wwv_flow_api.id(31696535440535028250)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729663499997233094)
,p_parameter_id=>wwv_flow_api.id(31696535440535028250)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696535767567028250)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706399346193051749)
,p_parameter_id=>wwv_flow_api.id(31696535767567028250)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729663996830233094)
,p_parameter_id=>wwv_flow_api.id(31696535767567028250)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696536061089028250)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706400198319051750)
,p_parameter_id=>wwv_flow_api.id(31696536061089028250)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729664361941233095)
,p_parameter_id=>wwv_flow_api.id(31696536061089028250)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696536334675028250)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706400966708051750)
,p_parameter_id=>wwv_flow_api.id(31696536334675028250)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729664766544233095)
,p_parameter_id=>wwv_flow_api.id(31696536334675028250)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696536676163028251)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706401792850051751)
,p_parameter_id=>wwv_flow_api.id(31696536676163028251)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729665173143233095)
,p_parameter_id=>wwv_flow_api.id(31696536676163028251)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696536909798028251)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706402551006051752)
,p_parameter_id=>wwv_flow_api.id(31696536909798028251)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729665503368233096)
,p_parameter_id=>wwv_flow_api.id(31696536909798028251)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696537297156028251)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'shoeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706403309572051753)
,p_parameter_id=>wwv_flow_api.id(31696537297156028251)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_SHOEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729665946206233096)
,p_parameter_id=>wwv_flow_api.id(31696537297156028251)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SHOEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696537520208028251)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'sizes'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706404181653051754)
,p_parameter_id=>wwv_flow_api.id(31696537520208028251)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_SIZES'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729666345717233096)
,p_parameter_id=>wwv_flow_api.id(31696537520208028251)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SIZES'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696537863370028252)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'color'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706404995436051754)
,p_parameter_id=>wwv_flow_api.id(31696537863370028252)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_COLOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729666798880233097)
,p_parameter_id=>wwv_flow_api.id(31696537863370028252)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_COLOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696548107046028252)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'style'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706405767406051755)
,p_parameter_id=>wwv_flow_api.id(31696548107046028252)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_STYLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729667172436233097)
,p_parameter_id=>wwv_flow_api.id(31696548107046028252)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_STYLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696548486817028252)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'price'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706406574877051756)
,p_parameter_id=>wwv_flow_api.id(31696548486817028252)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PRICE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729667546970233097)
,p_parameter_id=>wwv_flow_api.id(31696548486817028252)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PRICE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696548776486028253)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'shoelacecolor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706407306450051756)
,p_parameter_id=>wwv_flow_api.id(31696548776486028253)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_SHOELACECOLOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729667945408233098)
,p_parameter_id=>wwv_flow_api.id(31696548776486028253)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SHOELACECOLOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696549072257028254)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31706408150982051757)
,p_parameter_id=>wwv_flow_api.id(31696549072257028254)
,p_process_id=>wwv_flow_api.id(31706386920507051744)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729668301370233098)
,p_parameter_id=>wwv_flow_api.id(31696549072257028254)
,p_process_id=>wwv_flow_api.id(31729662681835233091)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31696549325704028255)
,p_ws_opers_id=>wwv_flow_api.id(31696534808979028248)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/order_item
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31700656095925515977)
,p_name=>'Order_Item'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31700656229835515978)
,p_ws_id=>wwv_flow_api.id(31700656095925515977)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700656570703515979)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709915266710240379)
,p_parameter_id=>wwv_flow_api.id(31700656570703515979)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711096906900726055)
,p_parameter_id=>wwv_flow_api.id(31700656570703515979)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711587810954390146)
,p_parameter_id=>wwv_flow_api.id(31700656570703515979)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729784411631251111)
,p_parameter_id=>wwv_flow_api.id(31700656570703515979)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729811903570883044)
,p_parameter_id=>wwv_flow_api.id(31700656570703515979)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729901077157264252)
,p_parameter_id=>wwv_flow_api.id(31700656570703515979)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700656859819515981)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709916039678240380)
,p_parameter_id=>wwv_flow_api.id(31700656859819515981)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711097771851726056)
,p_parameter_id=>wwv_flow_api.id(31700656859819515981)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711588687082390148)
,p_parameter_id=>wwv_flow_api.id(31700656859819515981)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729784804009251112)
,p_parameter_id=>wwv_flow_api.id(31700656859819515981)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729812343748883044)
,p_parameter_id=>wwv_flow_api.id(31700656859819515981)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729901490689264252)
,p_parameter_id=>wwv_flow_api.id(31700656859819515981)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700657147534515981)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709916866006240380)
,p_parameter_id=>wwv_flow_api.id(31700657147534515981)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711108515290726057)
,p_parameter_id=>wwv_flow_api.id(31700657147534515981)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711589466137390148)
,p_parameter_id=>wwv_flow_api.id(31700657147534515981)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729785261785251112)
,p_parameter_id=>wwv_flow_api.id(31700657147534515981)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729812771253883044)
,p_parameter_id=>wwv_flow_api.id(31700657147534515981)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729901842371264252)
,p_parameter_id=>wwv_flow_api.id(31700657147534515981)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700657458607515981)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709917620302240381)
,p_parameter_id=>wwv_flow_api.id(31700657458607515981)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711109324183726058)
,p_parameter_id=>wwv_flow_api.id(31700657458607515981)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711590246267390149)
,p_parameter_id=>wwv_flow_api.id(31700657458607515981)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729785659759251112)
,p_parameter_id=>wwv_flow_api.id(31700657458607515981)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729813144698883045)
,p_parameter_id=>wwv_flow_api.id(31700657458607515981)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729902294237264253)
,p_parameter_id=>wwv_flow_api.id(31700657458607515981)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700657790230515981)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709918401528240382)
,p_parameter_id=>wwv_flow_api.id(31700657790230515981)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711110114080726058)
,p_parameter_id=>wwv_flow_api.id(31700657790230515981)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711591026759390150)
,p_parameter_id=>wwv_flow_api.id(31700657790230515981)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729786006592251113)
,p_parameter_id=>wwv_flow_api.id(31700657790230515981)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729813517139883045)
,p_parameter_id=>wwv_flow_api.id(31700657790230515981)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729902661951264253)
,p_parameter_id=>wwv_flow_api.id(31700657790230515981)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700658071733515982)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709919233545240382)
,p_parameter_id=>wwv_flow_api.id(31700658071733515982)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711110996780726059)
,p_parameter_id=>wwv_flow_api.id(31700658071733515982)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711591833321390151)
,p_parameter_id=>wwv_flow_api.id(31700658071733515982)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729786478998251113)
,p_parameter_id=>wwv_flow_api.id(31700658071733515982)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729813997241883045)
,p_parameter_id=>wwv_flow_api.id(31700658071733515982)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729903075064264253)
,p_parameter_id=>wwv_flow_api.id(31700658071733515982)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700658350668515982)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709920023846240384)
,p_parameter_id=>wwv_flow_api.id(31700658350668515982)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711111891137726063)
,p_parameter_id=>wwv_flow_api.id(31700658350668515982)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711592609692390151)
,p_parameter_id=>wwv_flow_api.id(31700658350668515982)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729786813042251114)
,p_parameter_id=>wwv_flow_api.id(31700658350668515982)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729814340875883045)
,p_parameter_id=>wwv_flow_api.id(31700658350668515982)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729903404537264254)
,p_parameter_id=>wwv_flow_api.id(31700658350668515982)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700658647139515983)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'orderitemid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709920829411240385)
,p_parameter_id=>wwv_flow_api.id(31700658647139515983)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_ORDERITEMID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711112682661726063)
,p_parameter_id=>wwv_flow_api.id(31700658647139515983)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_ORDERITEMID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711593459338390152)
,p_parameter_id=>wwv_flow_api.id(31700658647139515983)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ORDERITEMID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729787289575251114)
,p_parameter_id=>wwv_flow_api.id(31700658647139515983)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_ORDERITEMID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729814783500883046)
,p_parameter_id=>wwv_flow_api.id(31700658647139515983)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_ORDERITEMID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729903861703264255)
,p_parameter_id=>wwv_flow_api.id(31700658647139515983)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_ORDERITEMID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700658994678515984)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709921634251240385)
,p_parameter_id=>wwv_flow_api.id(31700658994678515984)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711115293213726064)
,p_parameter_id=>wwv_flow_api.id(31700658994678515984)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711594239502390153)
,p_parameter_id=>wwv_flow_api.id(31700658994678515984)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729787625423251114)
,p_parameter_id=>wwv_flow_api.id(31700658994678515984)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729815144671883046)
,p_parameter_id=>wwv_flow_api.id(31700658994678515984)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729904263601264255)
,p_parameter_id=>wwv_flow_api.id(31700658994678515984)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31700659203182515984)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31701283189116923623)
,p_ws_opers_id=>wwv_flow_api.id(31700656229835515978)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31709922002798240386)
,p_parameter_id=>wwv_flow_api.id(31701283189116923623)
,p_process_id=>wwv_flow_api.id(31709914413688240375)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711124735304726067)
,p_parameter_id=>wwv_flow_api.id(31701283189116923623)
,p_process_id=>wwv_flow_api.id(31711096075533726051)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31711594687493390153)
,p_parameter_id=>wwv_flow_api.id(31701283189116923623)
,p_process_id=>wwv_flow_api.id(31711587065545390143)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729788077085251115)
,p_parameter_id=>wwv_flow_api.id(31701283189116923623)
,p_process_id=>wwv_flow_api.id(31729784061042251111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729815557726883046)
,p_parameter_id=>wwv_flow_api.id(31701283189116923623)
,p_process_id=>wwv_flow_api.id(31729811525623883042)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729904666617264256)
,p_parameter_id=>wwv_flow_api.id(31701283189116923623)
,p_process_id=>wwv_flow_api.id(31729900680003264251)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/complaint
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31727571229789018152)
,p_name=>'Complaint'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31727571405355018155)
,p_ws_id=>wwv_flow_api.id(31727571229789018152)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727571766651018156)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727720734931034012)
,p_parameter_id=>wwv_flow_api.id(31727571766651018156)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841872349115295715)
,p_parameter_id=>wwv_flow_api.id(31727571766651018156)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841958432311303238)
,p_parameter_id=>wwv_flow_api.id(31727571766651018156)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842074741972347619)
,p_parameter_id=>wwv_flow_api.id(31727571766651018156)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848212242408558986)
,p_parameter_id=>wwv_flow_api.id(31727571766651018156)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848468590820589532)
,p_parameter_id=>wwv_flow_api.id(31727571766651018156)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727572016012018156)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727721599797034013)
,p_parameter_id=>wwv_flow_api.id(31727572016012018156)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841873130818295716)
,p_parameter_id=>wwv_flow_api.id(31727572016012018156)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841959290942303239)
,p_parameter_id=>wwv_flow_api.id(31727572016012018156)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842075556185347620)
,p_parameter_id=>wwv_flow_api.id(31727572016012018156)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848212604200558987)
,p_parameter_id=>wwv_flow_api.id(31727572016012018156)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848468945374589533)
,p_parameter_id=>wwv_flow_api.id(31727572016012018156)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727572303794018157)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727722305942034014)
,p_parameter_id=>wwv_flow_api.id(31727572303794018157)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841873947775295718)
,p_parameter_id=>wwv_flow_api.id(31727572303794018157)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841960048820303239)
,p_parameter_id=>wwv_flow_api.id(31727572303794018157)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842076329303347620)
,p_parameter_id=>wwv_flow_api.id(31727572303794018157)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848213052837558987)
,p_parameter_id=>wwv_flow_api.id(31727572303794018157)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848469314586589533)
,p_parameter_id=>wwv_flow_api.id(31727572303794018157)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727572628409018157)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727723159056034015)
,p_parameter_id=>wwv_flow_api.id(31727572628409018157)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841874708788295718)
,p_parameter_id=>wwv_flow_api.id(31727572628409018157)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841960803967303240)
,p_parameter_id=>wwv_flow_api.id(31727572628409018157)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842077112705347623)
,p_parameter_id=>wwv_flow_api.id(31727572628409018157)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848213494704558987)
,p_parameter_id=>wwv_flow_api.id(31727572628409018157)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848469771410589533)
,p_parameter_id=>wwv_flow_api.id(31727572628409018157)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727572936484018160)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727723927251034015)
,p_parameter_id=>wwv_flow_api.id(31727572936484018160)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841875514517295719)
,p_parameter_id=>wwv_flow_api.id(31727572936484018160)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841961679108303241)
,p_parameter_id=>wwv_flow_api.id(31727572936484018160)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842077905203347623)
,p_parameter_id=>wwv_flow_api.id(31727572936484018160)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848213883365558988)
,p_parameter_id=>wwv_flow_api.id(31727572936484018160)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848470155112589534)
,p_parameter_id=>wwv_flow_api.id(31727572936484018160)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727573281358018160)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727724728881034016)
,p_parameter_id=>wwv_flow_api.id(31727573281358018160)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841876377717295720)
,p_parameter_id=>wwv_flow_api.id(31727573281358018160)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841962449992303241)
,p_parameter_id=>wwv_flow_api.id(31727573281358018160)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842088741937347624)
,p_parameter_id=>wwv_flow_api.id(31727573281358018160)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848214231123558988)
,p_parameter_id=>wwv_flow_api.id(31727573281358018160)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848470526250589534)
,p_parameter_id=>wwv_flow_api.id(31727573281358018160)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727573541375018161)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727725573995034017)
,p_parameter_id=>wwv_flow_api.id(31727573541375018161)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841877167972295721)
,p_parameter_id=>wwv_flow_api.id(31727573541375018161)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841963226071303242)
,p_parameter_id=>wwv_flow_api.id(31727573541375018161)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842089594952347625)
,p_parameter_id=>wwv_flow_api.id(31727573541375018161)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848214651251558988)
,p_parameter_id=>wwv_flow_api.id(31727573541375018161)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848470916857589534)
,p_parameter_id=>wwv_flow_api.id(31727573541375018161)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727573859149018161)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'complaintid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727726336946034018)
,p_parameter_id=>wwv_flow_api.id(31727573859149018161)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_COMPLAINTID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841877586211295721)
,p_parameter_id=>wwv_flow_api.id(31727573859149018161)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841963608897303242)
,p_parameter_id=>wwv_flow_api.id(31727573859149018161)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842089999800347625)
,p_parameter_id=>wwv_flow_api.id(31727573859149018161)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848215025148558989)
,p_parameter_id=>wwv_flow_api.id(31727573859149018161)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848471376317589535)
,p_parameter_id=>wwv_flow_api.id(31727573859149018161)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727574119168018161)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'comments'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727727116209034019)
,p_parameter_id=>wwv_flow_api.id(31727574119168018161)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_COMMENTS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841877939896295721)
,p_parameter_id=>wwv_flow_api.id(31727574119168018161)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841964093011303243)
,p_parameter_id=>wwv_flow_api.id(31727574119168018161)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842090369230347625)
,p_parameter_id=>wwv_flow_api.id(31727574119168018161)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848215435881558989)
,p_parameter_id=>wwv_flow_api.id(31727574119168018161)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848471708023589535)
,p_parameter_id=>wwv_flow_api.id(31727574119168018161)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727574453526018162)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31727727925188034019)
,p_parameter_id=>wwv_flow_api.id(31727574453526018162)
,p_process_id=>wwv_flow_api.id(31727719941085034009)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841878718078295722)
,p_parameter_id=>wwv_flow_api.id(31727574453526018162)
,p_process_id=>wwv_flow_api.id(31841871504817295712)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841964863220303243)
,p_parameter_id=>wwv_flow_api.id(31727574453526018162)
,p_process_id=>wwv_flow_api.id(31841957647804303237)
,p_map_type=>'ITEM'
,p_parm_value=>'P35_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842091127734347626)
,p_parameter_id=>wwv_flow_api.id(31727574453526018162)
,p_process_id=>wwv_flow_api.id(31842073993424347617)
,p_map_type=>'ITEM'
,p_parm_value=>'P36_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848215871056558989)
,p_parameter_id=>wwv_flow_api.id(31727574453526018162)
,p_process_id=>wwv_flow_api.id(31848211892621558985)
,p_map_type=>'ITEM'
,p_parm_value=>'P37_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848472128715589535)
,p_parameter_id=>wwv_flow_api.id(31727574453526018162)
,p_process_id=>wwv_flow_api.id(31848468173871589532)
,p_map_type=>'ITEM'
,p_parm_value=>'P38_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31727574702520018162)
,p_ws_opers_id=>wwv_flow_api.id(31727571405355018155)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/pattern
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31796726474173673689)
,p_name=>'Pattern'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31796726663415673690)
,p_ws_id=>wwv_flow_api.id(31796726474173673689)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796726981534673693)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796783406771304132)
,p_parameter_id=>wwv_flow_api.id(31796726981534673693)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804248411349837571)
,p_parameter_id=>wwv_flow_api.id(31796726981534673693)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804459897930863407)
,p_parameter_id=>wwv_flow_api.id(31796726981534673693)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796727278893673693)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796784189497304133)
,p_parameter_id=>wwv_flow_api.id(31796727278893673693)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804249228353837572)
,p_parameter_id=>wwv_flow_api.id(31796727278893673693)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804460625227863408)
,p_parameter_id=>wwv_flow_api.id(31796727278893673693)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796727578150673693)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796784905758304133)
,p_parameter_id=>wwv_flow_api.id(31796727578150673693)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804250054296837573)
,p_parameter_id=>wwv_flow_api.id(31796727578150673693)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804461415677863409)
,p_parameter_id=>wwv_flow_api.id(31796727578150673693)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796727851009673694)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796785768114304134)
,p_parameter_id=>wwv_flow_api.id(31796727851009673694)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804250870082837574)
,p_parameter_id=>wwv_flow_api.id(31796727851009673694)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804462257483863410)
,p_parameter_id=>wwv_flow_api.id(31796727851009673694)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796738161182673694)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796786548278304135)
,p_parameter_id=>wwv_flow_api.id(31796738161182673694)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804251614249837575)
,p_parameter_id=>wwv_flow_api.id(31796738161182673694)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804463061981863410)
,p_parameter_id=>wwv_flow_api.id(31796738161182673694)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796738463267673694)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796787322686304136)
,p_parameter_id=>wwv_flow_api.id(31796738463267673694)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804252446492837577)
,p_parameter_id=>wwv_flow_api.id(31796738463267673694)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804463843607863411)
,p_parameter_id=>wwv_flow_api.id(31796738463267673694)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796738782282673694)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796788132470304136)
,p_parameter_id=>wwv_flow_api.id(31796738782282673694)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804253219975837577)
,p_parameter_id=>wwv_flow_api.id(31796738782282673694)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804464610803863412)
,p_parameter_id=>wwv_flow_api.id(31796738782282673694)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796739046078673695)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'patternid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796788980160304137)
,p_parameter_id=>wwv_flow_api.id(31796739046078673695)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PATTERNID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804253662454837578)
,p_parameter_id=>wwv_flow_api.id(31796739046078673695)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804465057218863412)
,p_parameter_id=>wwv_flow_api.id(31796739046078673695)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796739386733673695)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'patternname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796789722423304138)
,p_parameter_id=>wwv_flow_api.id(31796739386733673695)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PATTERNNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804254040906837579)
,p_parameter_id=>wwv_flow_api.id(31796739386733673695)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804465418245863412)
,p_parameter_id=>wwv_flow_api.id(31796739386733673695)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796739620752673695)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'patternlook'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796790525442304138)
,p_parameter_id=>wwv_flow_api.id(31796739620752673695)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PATTERNLOOK'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804254441185837579)
,p_parameter_id=>wwv_flow_api.id(31796739620752673695)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804465886666863413)
,p_parameter_id=>wwv_flow_api.id(31796739620752673695)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796739989143673697)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31796791346219304139)
,p_parameter_id=>wwv_flow_api.id(31796739989143673697)
,p_process_id=>wwv_flow_api.id(31796782666440304130)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804255201323837580)
,p_parameter_id=>wwv_flow_api.id(31796739989143673697)
,p_process_id=>wwv_flow_api.id(31804247682467837570)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804466667001863415)
,p_parameter_id=>wwv_flow_api.id(31796739989143673697)
,p_process_id=>wwv_flow_api.id(31804457832862863406)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31796740265070673697)
,p_ws_opers_id=>wwv_flow_api.id(31796726663415673690)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/logo
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31803940751191819677)
,p_name=>'Logo'
,p_url=>'aevum.cs.utexas.edu:6010/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31803940957263819679)
,p_ws_id=>wwv_flow_api.id(31803940751191819677)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803941245576819680)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804978812327897318)
,p_parameter_id=>wwv_flow_api.id(31803941245576819680)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806062353815949678)
,p_parameter_id=>wwv_flow_api.id(31803941245576819680)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806129699669332564)
,p_parameter_id=>wwv_flow_api.id(31803941245576819680)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803941564828819681)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804979627693897319)
,p_parameter_id=>wwv_flow_api.id(31803941564828819681)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806063196314949679)
,p_parameter_id=>wwv_flow_api.id(31803941564828819681)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806130413147332565)
,p_parameter_id=>wwv_flow_api.id(31803941564828819681)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803941869671819681)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804980481103897319)
,p_parameter_id=>wwv_flow_api.id(31803941869671819681)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806063934767949680)
,p_parameter_id=>wwv_flow_api.id(31803941869671819681)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806131216098332566)
,p_parameter_id=>wwv_flow_api.id(31803941869671819681)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803942133132819681)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804981255585897321)
,p_parameter_id=>wwv_flow_api.id(31803942133132819681)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806064764007949681)
,p_parameter_id=>wwv_flow_api.id(31803942133132819681)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806132045978332566)
,p_parameter_id=>wwv_flow_api.id(31803942133132819681)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803942417229819682)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804982092118897322)
,p_parameter_id=>wwv_flow_api.id(31803942417229819682)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806065560201949682)
,p_parameter_id=>wwv_flow_api.id(31803942417229819682)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806132886465332567)
,p_parameter_id=>wwv_flow_api.id(31803942417229819682)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803942756433819682)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804982853240897323)
,p_parameter_id=>wwv_flow_api.id(31803942756433819682)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806066350412949682)
,p_parameter_id=>wwv_flow_api.id(31803942756433819682)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806133641019332568)
,p_parameter_id=>wwv_flow_api.id(31803942756433819682)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803943088387819684)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804983664162897324)
,p_parameter_id=>wwv_flow_api.id(31803943088387819684)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806067187055949683)
,p_parameter_id=>wwv_flow_api.id(31803943088387819684)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806134485796332569)
,p_parameter_id=>wwv_flow_api.id(31803943088387819684)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803943303699819684)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'logoid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804984457675897324)
,p_parameter_id=>wwv_flow_api.id(31803943303699819684)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_LOGOID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806067529751949684)
,p_parameter_id=>wwv_flow_api.id(31803943303699819684)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806134833053332569)
,p_parameter_id=>wwv_flow_api.id(31803943303699819684)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803943615040819684)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'logostyle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804985288468897325)
,p_parameter_id=>wwv_flow_api.id(31803943615040819684)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_LOGOSTYLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806067990268949685)
,p_parameter_id=>wwv_flow_api.id(31803943615040819684)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806135285968332569)
,p_parameter_id=>wwv_flow_api.id(31803943615040819684)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803943992369819686)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31804986072490897326)
,p_parameter_id=>wwv_flow_api.id(31803943992369819686)
,p_process_id=>wwv_flow_api.id(31804978006279897316)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806068753760949686)
,p_parameter_id=>wwv_flow_api.id(31803943992369819686)
,p_process_id=>wwv_flow_api.id(31806061598702949677)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31806136022828332572)
,p_parameter_id=>wwv_flow_api.id(31803943992369819686)
,p_process_id=>wwv_flow_api.id(31806128887521332561)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31803944292564819686)
,p_ws_opers_id=>wwv_flow_api.id(31803940957263819679)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(31795862606320575096)
);
end;
/
prompt --application/deployment/install
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
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
