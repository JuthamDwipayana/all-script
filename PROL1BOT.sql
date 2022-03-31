      DEFAULT TABLESPACE "USERS"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "LEVEL2";


   GRANT "CONNECT" TO "PROL1BOT";
   GRANT "RESOURCE" TO "PROL1BOT";
   GRANT "RW_PROAPP" TO "PROL1BOT";


  GRANT CREATE VIEW TO "PROL1BOT";
  GRANT SELECT ANY TABLE TO "PROL1BOT" WITH ADMIN OPTION;


  GRANT SELECT ON "POMAPP"."TBRELATION" TO "PROL1BOT";
  GRANT SELECT ON "POMAPP"."TBPC_VERSION" TO "PROL1BOT";
  GRANT SELECT ON "POMAPP"."TBNAME" TO "PROL1BOT";
  GRANT SELECT ON "POMAPP"."TBDATE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_GRANULAR_V2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_TYPE_V2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_CARDINALITY_V2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_REFINEMENT_SIMPLE_V2" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."TBAP_PRICE_PLAN" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."TBAP_ITEM" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."PRO_PAYLOAD_V3" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_PAYLOAD_V3" TO "PROL1BOT";
  GRANT EXECUTE ON "PROAPP"."GET_ITEM_ANCESTORS_4" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_REPORT4" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_EDO_20191111_3" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_EDO_20191111_2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_EDO_20191111" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_CANCELLED_20191108" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_COMPLETED_20191108" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_FAILED_20191108" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_MASS_RECOVERY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_B2B_DIKA_20191108" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_B2B_20191108" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_BILL_PROP_3470474" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_BILL_PROP_3806574" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_BILL_PROP_3878234" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_B2B_NOTFOUND_20191106" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_ISSUE_UPS_20191106" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_SUMATRA_06112019" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_B2B_20191105" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_ISSUE_3518674_20191103" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_COLL_20191101" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_PRICEPLAN_TO_OFFER3" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_PRICEPLAN_TO_OFFER2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."CATCHUP_TBAUTO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."GAP_TBAP_PRICE_PLAN_VIP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."RECON_TBAUTO_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."XXX_TMP_PAT_2019" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TEMP_PREFIX_VVIP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TEMP_TABLE_VIP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TEMP_VVIP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TMP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ITEM_NP1" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TEMP_DIFF_19OCT2019B" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAUTO_REQUEST_BAK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SOURCE_TBAP_ITEM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBBACKUP_UPDATE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAUTO2TO7" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGEN27" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ITEM_HIST" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."TBAP_PRICE_PLAN_BCK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_PRICE_PLAN_BCK" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."TBAP_ITEM_BCK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ITEM_BCK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BCK_TEMP_DELTA_MAIN_PP_DEL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TEMP_MAIN_ITEM_LIST3" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIG1" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BCK_TBAP_PP_FUT2OCT19" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_REGEX_SCHEMA_MVIEW" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_REGEX_MVIEW" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEQ_JOB_ID" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TESTING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MID_CLONE_DROP1_0851" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_MASS_REQUEST_LINE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_MASS_REQUEST_CFG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_MASS_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."JUMROWTAB" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ITEM_TEMP3" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_FALLOUT_EMAPDETAIL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_FALLOUT_EMAP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_USER_DESCRIPTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_PRICEPLAN_ELIGIBILITY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIGFUT_MAY2019" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BCK_TBAP_PRICE_PLAN_FUT13MAY19" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ITEM_FORDELL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_ADP_PROXY_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TEMP_CUST_ORDER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_CHARGE_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ORDER_STATUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_SERVICE_CATALOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_ACTION_INTERFACE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SERVICE_DEF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SERVICE_ACT_SEQ" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PV9_HLR_SHORTCODE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PV9_HLR_OPRSERVICE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_RETRYMAP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_EXECUTE_TASK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ERRORMAP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PATTERN_DEF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_MENU_ACCESS_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_MENU_ACCESS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_MENU" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_APPLICATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."INTERFACE_DEF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FUNCTION_DEF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FULFILLMENT_PAT" TO "PROL1BOT";
  GRANT EXECUTE ON "PROAPP"."GET_C2P_SUBSCRIPTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBWHITELIST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBPRE_ACT_REQ_HISTORY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBPRE_ACT_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBPRE_ACT_OUT_HISTORY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBPRE_ACT_OUTPUT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBOPER_ATTR_MAPPING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBOA_DOCUMENTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBKEYWORD_HF_100042294" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBIN_GATEWAY_BAK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBIN_GATEWAY_816_33" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBIN_GATEWAY_100047674" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBCONFIG_ITEMS_BKP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBCONFIG_ITEMS_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBCONFIG_ITEMS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBAUTO_CONFIRM_HISTORY_BKP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBAUTO_CONFIRM_HISTORY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBAUTO_CONFIRMATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_TBAP_EXIT_ANSWERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_SMS_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_PRO_PROXY_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_INGW_REFUND_STATUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_INGW_CHARGE_STATUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_DYN_KEY_MAPPING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_SEAMLESS_GROUP_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_SEAMLESS_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_RESTRICTION_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_RESTRICTION_220514" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_RESTRICTION_2014" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_REPLACE_MSG_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_PREREQUISITE_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_PREREQUISITE_26JUL14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_PREREQUISITE_20171228" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_DEPENDENT_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."X_BO_DEPENDENT_20140508" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."WL_LLR_DEFAULTSERVER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."UF_SK_STATE_OR" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TMP_BO_HIERARCY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TB_XML" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TB_PURGE_POPULATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TB_DROP_PARTITIONS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBVALID_VALUE_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBVALID_VALUE_6JUN_47876" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBVALID_VALUE_20140611_2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBVALID_VALUE_20140611" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBVALID_VALUE_18MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBVALID_VALUE_06JUN" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBUPDATE_OA_ATTRS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBTREE_VIEW_FILTER_PC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBTREE_VIEW_FILTER_AP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBTREE_VIEW_FILTER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBTRACKING_APP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBTITLE_LEGAL_FORM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBTEMP_REF_PRODUCTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSYS_CONFIGURATION_PARAMS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSTATUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_STUCK_OWNER_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_STUCK_OWNER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_STUCK_CASE_DATA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_STUCK_CASE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_SEVERITY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_SEQUENCE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_RULE_ENTRY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_RULE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_OA_ACCUM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_KBFILE_STORE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_IMP_STATUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_HANDLED" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_FALLOUT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_CONFIG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_BLOCKED_OA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_AUTO_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSO_AUTO_CANCEL_TEMP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBSHIPMENT_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME_20140203" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME2JUNE14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME23JUL14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME20MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME19MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRULE_NAME15MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBROOT_SET_OS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRETRY_POLICY_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRENDEZVOUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBREMARK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRELATION_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBRELATION19JAN14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBREFINED_RELATION_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBQUICK_ACTION_AUDIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBQTOA_AVAIL_STEP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPROVISIONING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPROCESS_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPREPAID_HISTORY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPOP_OA_STATE_HANDLER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPOP_IMPACT_STEPS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPOP_DIFF_POLICY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPOP_AUTO_REQUEST_MNGR" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPENDING_OA_STATE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPENDING_OA_HANDLER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES_BK30DAY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES_20181030" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES_20140702" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES_20140517" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES_20140203" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES6MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES4JUNE2014" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES2JUNE14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES23JUL14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES20MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES19MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES19JAN14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES18MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBPCRULES15MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBO_SYNC_STEP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBO_SYNC_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_SEARCH_CRITERIA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_RETRIEVAL_CRITERIA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_POOL_FILTER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_PARTYROLE_REF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_CONTACT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_ACTION_OPERATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_ACTION_DOC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_ACTION_CONTEXT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER_ACTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBORDER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOMS_FUNCTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOMS_FEATURE_CODE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_UNFREEZE_SN" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_NP_IMPORT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_MENUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_MASS_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_ISP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_GROUPS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBOA_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBNEG_INST_ADDR" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBNEG_DOC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMILESTONE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMESSAGE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_TMPL_NAME" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_SECURITY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_ROLE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_RELATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_PROPERTY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_ENUM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_COMP_TMPL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_COMP_NAME" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_COMPONENT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMD_CLASS_NAME" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMASS_REQUEST_POPULATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMASS_REQUEST_LINE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMASS_REQUEST_HEADER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMASS_REQUEST_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMASS_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBMASS_CHANGE_STATUS_DATA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBLOCATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBLIGHT_CONSTRAINT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBITEM_PROPERTY_26MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_USER_PROFILE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_STRING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_OBJECT_TAB" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_NODE_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_MESSAGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_MENU_TOOL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_MENU_BAND" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_GRID" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBGUI_COLUMN" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBFULFILLMENT_MSGS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBFILTER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBFIELD_ATTRIBUTE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBEXT_STATUS_TRANSLATIONS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBERR_HANDLING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBERR_EVENT_HANDLING" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBENTITY_CLASS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBENTITY_CHANNEL19JAN14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNORDER_ATR_VAL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNORDER_ATR_DEF_BK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNORDER_ATR_DEF_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNORDER_ATR_DEF_B4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNORDER_ATR_DEF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_4JUNE14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_20140701" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_20140626" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_20140614" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_17JUNE14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_100047674" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP_06JUN" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP25MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP24MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP20MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP19JAN14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDYNAMIC_BILL_PROP15MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDUMP_FILE_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDOC_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDIRECTORY_RULES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDESCRIPTION_20140626" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDEPENDENCY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_6JUN_47876" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_20140611_2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_20140611" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_18MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_17JUNE14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBDECODE_06JUN" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCUSTOMER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCR_KEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCPE_COND_RULES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCONTACT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCONSOLIDATED_STEPS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCONNECTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCN_PARAMETER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCN_FUNCTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCN_CONTRACT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCHECKED_OUT_ITEMS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCALCULATED_DEPOSIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCACHE_REFRESH_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBCACHE_REFRESH" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBBO_WAIT_OA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBBO_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBBO_BLOCKED_OA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBBILL_PROPERTY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAUTO_REQUEST_SET" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAUTO_REQUEST_1APR2019" TO "PROL1BOT";
  GRANT INSERT ON "PROAPP"."TBAUTO_REQUEST" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."TBAUTO_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAUTO_REQUEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBATTACHMENT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASYNC_MSG_SUBSC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASYNC_MSG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASSIGN_EXC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASSIGNMENT_LOG_HISTORY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASSIGNMENT_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASSIGNMENT_HISTORY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBASSIGNMENT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_TM_FEATURE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_TECH" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_TAX_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_SW_SRV_INDL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_SW_SERVICE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_SN" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_RESOURCE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_PARTYROLE_REF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_PARTITION_KEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_OBJ_PARTITION_DATES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_OBJ" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_HUNTING_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_HUNTING_ASSOC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_FEATURE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ENDPOINT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_DISCOUNT_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_DIR_SERVICE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_DESC_DISCOUNT_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_DEPOSIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_CUSTOMER_REF" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_CPE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_COMMITMENT_TERM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_CIRCUIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_CHARGE_CODE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_BUNDLE_HIERARCHY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ATTACHMENT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAP_ASSOCIATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBAPOA_CONSTRAINT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBANONYMOUS_PARTITION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBALROOT_SET" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBALQT_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBADDRESS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBACTIVITY_TASK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBACTIVITY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBACTIVATION_MESSAGE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TBACTION_VALID" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_TEST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_CONFIG_ITM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_INST_REDO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_INST_PEND" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_INST_BACK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_INST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_EDIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_STEP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_REND_STEP_INST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_RENDEZVOUS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_PROC_INST_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_PROC_INST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_PROCESS_EDIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_PROCESS_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_PROCESS_BACKB4CR1104" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_PROCESS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_MON_PREFS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_MON_FILTER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_LM_SERVER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_LM_CONNECTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_LITE_PROC_INST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_FORECAST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_FILTER_EDIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_FAULT_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_DEPENDENCY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_CONTEXT_INST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_ALARM_INST" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_ALARM_EDIT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."TABLE_BPM_ALARM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSUSERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSTYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSOBJECTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSINDEXES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSDATABASES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSCONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSCOMMENTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SYB12_SYSCOLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SUR2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SUR1" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STUCK_ORDERS_ACT_DURATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TRANSLATEDSQL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_UDTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_TRIGGERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_TABLETEXT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_TABLES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_SHOWTBLCHECKS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_PROCEDURES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_VIEWS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_VDEFNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_TRIGS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_TABLES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_PROCS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_PKEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_INDEXES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_INDDET" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_INDC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_FKEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_OFFLINE_CHECK" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_JOININDICES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_INDICES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_IDXCONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_FKEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_DATABASES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_TERADATA_ALL_RI_PARENTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSUSERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSTYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSREFERENCES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSOBJECTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSINDEXES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSDATABASES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSCONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSCOMMENTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SYB12_SYSCOLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_TYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_TABLE_PRIVILEGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_TABLES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_SYSPROPERTIES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_SQL_MODULES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_SERVER_PRINCIPALS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_SCHEMATA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_SCHEMAS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_OBJECTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_INDEX_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_INDEXES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_IDENTITY_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_FN_KEY_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_FN_KEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_DT_CONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_DB_ROLE_MEMBERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_DB_PRINCIPALS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_DATABASES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SS2K5_CHECK_CONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_SERVERDETAIL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."STAGE_MIGRLOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS5" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS4" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS3" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_TYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_TABLE_PRIVILEGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_TABLES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_SYSPROPERTIES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_SQL_MODULES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_SERVER_PRINCIPALS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_SCHEMATA" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_SCHEMAS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_OBJECTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_INDEX_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_INDEXES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_IDENTITY_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_FOREIGN_KEY_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_FOREIGN_KEYS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_DEFAULT_CONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_DATABASE_ROLE_MEMBERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_DATABASE_PRINCIPALS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_DATABASES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2K5_CHECK_CONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS23" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SS2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SIM_RESOURCE_CODES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SERVICE_ID_PARTITION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_XML_DISTRIB" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_USER_LENV_ROLE_R" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_USER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_SESSION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_ROLE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_RESOURCE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_POLICY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_OBJECT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_NAMESPACE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_NAME" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_LOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_LENVIRONMENT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_KEY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_FREE_OID" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_ENV_ITEM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_ENV_ENVITEM_R" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."SEC1_ENVIRONMENT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."RENDEZVOUS_SI_REL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_PAYLOAD_1APR2019" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_PAYLOAD" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ORDER_WO_TR" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ORDER_TM_1APR2019" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."PRO_ORDER_TM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ORDER_TM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ORDER_STATUS_1APR2019" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_GN_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_FALLOUT_AT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_FALLOUT" TO "PROL1BOT";
  GRANT UPDATE ON "PROAPP"."PRO_ACTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PRO_ACTION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."PREDEFINED_MASK_INFO" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."OSS_INTERFACE_RUN_SEQ" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."ORD9_TBASSIGN_RECOVERY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."OMS1_XML_DISTRIB" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSG_RULE_MESSAGES_20FEB14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSG_RULE_MESSAGES_20140619" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSG_RULE_MESSAGES2JUNE14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSG_RULE_MESSAGES23JUL14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSG_RULE_MESSAGES19JAN14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSG_RULE_MESSAGES15MAY14" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGLOCALIZED_BKP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGLOCALIZED_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGLOCALIZED" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGIDHANDLER_BKP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGIDHANDLER_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGIDHANDLER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGHANDLER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGDEFAULT_BKP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGDEFAULT_BACKUP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MSGDEFAULT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIGR_GENERATION_ORDER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIGR_DATATYPE_TRANSFORM_RULE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIGR_DATATYPE_TRANSFORM_MAP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIGRLOG" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MIGRATION_RESERVED_WORDS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_VIEWS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_USER_PRIVILEGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_USER_DEFINED_DATA_TYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_USERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_TRIGGERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_TABLESPACES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_TABLES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_SYNONYMS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_STORED_PROGRAMS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_SEQUENCES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_SCHEMAS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_REPOVERSIONS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_REGISTRY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_PROJECTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_PRIVILEGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_PARTITIONS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_PACKAGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_OTHER_OBJECTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_NUMROW$TARGET" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_NUMROW$SOURCE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_MIGR_WEAKDEP" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_MIGR_PARAMETER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_MIGR_DEPENDENCY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_LOOKUP_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_LOOKUPS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_INDEX_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_INDEXES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_GROUP_PRIVILEGES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_GROUP_MEMBERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_GROUPS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_FILE_ARTIFACTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_DERIVATIVES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_CONSTRAINT_DETAILS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_CONSTRAINTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_CONNECTIONS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_COLUMNS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_CODE_REGEX" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_CATALOGS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_APPLICATIONS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_APPLICATIONFILES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."MD_ADDITIONAL_PROPERTIES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."LOG_SUMMARY" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."LOG_DETAIL_ERROR" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."LOG_DETAIL" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_FILTERS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_CNF_TYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_CNF_SORTS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_CNF_ATTR_TYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_CNF_ATTRS_FILTER_TYPES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_CNF_ATTRS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."FLT_ATTR_VALUE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."EVENT_PARAM_ASSOC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."DEPOSIT_SIMULATOR" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."CUSTOMER_ACTIVITY_PRICES" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BUND_DISC" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BPA_ALRM_INST_OMS_1" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BPA_ALRM_INST_OMS" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BK_TBAP_ITEM_2" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BK_TBAP_ITEM_1" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BILLING_PACKAGE_PARAM" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BILLING_OFFER_PACKAGE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."BEAN_CACHE" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."AIF_OPERATION" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."ADP_OMS_DB_HEADER" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."ADP_OBJECT" TO "PROL1BOT";
  GRANT SELECT ON "PROAPP"."ADP_HEADER" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."X_SMS" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."X_BO_SEAMLESS_GROUP" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."X_BO_RESTRICTION" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."X_BO_PREREQUISITE" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."X_BO_DEPENDENT" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBVALID_VALUE" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBRELATION" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBPC_VERSION" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBNAME" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBDYNAMIC_BILL_PROP" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBDECODE" TO "PROL1BOT";
  GRANT SELECT ON "EPC"."TBDATE" TO "PROL1BOT";


   ALTER USER "PROL1BOT" DEFAULT ROLE "CONNECT", "RESOURCE";

/* Start profile creation script in case they are missing

   CREATE PROFILE "LEVEL2"
    LIMIT
	 COMPOSITE_LIMIT UNLIMITED
	 SESSIONS_PER_USER UNLIMITED
	 CPU_PER_SESSION UNLIMITED
	 CPU_PER_CALL UNLIMITED
	 LOGICAL_READS_PER_SESSION UNLIMITED
	 LOGICAL_READS_PER_CALL UNLIMITED
	 IDLE_TIME UNLIMITED
	 CONNECT_TIME UNLIMITED
	 PRIVATE_SGA UNLIMITED
	 FAILED_LOGIN_ATTEMPTS UNLIMITED
	 PASSWORD_LIFE_TIME UNLIMITED
	 PASSWORD_REUSE_TIME UNLIMITED
	 PASSWORD_REUSE_MAX UNLIMITED
	 PASSWORD_VERIFY_FUNCTION DEFAULT
	 PASSWORD_LOCK_TIME UNLIMITED
	 PASSWORD_GRACE_TIME UNLIMITED ;

End profile creation script */