HW 1
================
Alyssa Gjervold
9/14/2021

## Bridge Data

``` r
# bridge data for Minnesota 2020
bridge <- read_csv("MN20.txt")
```

    ## 
    ## -- Column specification --------------------------------------------------------
    ## cols(
    ##   .default = col_double(),
    ##   STRUCTURE_NUMBER_008 = col_character(),
    ##   ROUTE_NUMBER_005D = col_character(),
    ##   HIGHWAY_DISTRICT_002 = col_character(),
    ##   COUNTY_CODE_003 = col_character(),
    ##   PLACE_CODE_004 = col_character(),
    ##   FEATURES_DESC_006A = col_character(),
    ##   CRITICAL_FACILITY_006B = col_logical(),
    ##   FACILITY_CARRIED_007 = col_character(),
    ##   LOCATION_009 = col_character(),
    ##   LRS_INV_ROUTE_013A = col_character(),
    ##   LAT_016 = col_character(),
    ##   LONG_017 = col_character(),
    ##   MAINTENANCE_021 = col_character(),
    ##   OWNER_022 = col_character(),
    ##   FUNCTIONAL_CLASS_026 = col_character(),
    ##   DESIGN_LOAD_031 = col_character(),
    ##   RAILINGS_036A = col_character(),
    ##   TRANSITIONS_036B = col_character(),
    ##   APPR_RAIL_036C = col_character(),
    ##   APPR_RAIL_END_036D = col_character()
    ##   # ... with 34 more columns
    ## )
    ## i Use `spec()` for the full column specifications.

    ## Warning: 36 parsing failures.
    ##  row                   col           expected actual       file
    ## 2502 SPEC_LAST_DATE_093C   1/0/T/F/TRUE/FALSE   1017 'MN20.txt'
    ## 3571 SPEC_LAST_DATE_093C   1/0/T/F/TRUE/FALSE   0817 'MN20.txt'
    ## 3572 OTHER_STATE_CODE_098A a double             CAN  'MN20.txt'
    ## 4969 SPEC_LAST_DATE_093C   1/0/T/F/TRUE/FALSE   0817 'MN20.txt'
    ## 5527 SPEC_LAST_DATE_093C   1/0/T/F/TRUE/FALSE   1017 'MN20.txt'
    ## .... ..................... .................. ...... ..........
    ## See problems(...) for more details.

``` r
str(bridge)
```

    ## tibble [13,471 x 123] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
    ##  $ STATE_CODE_001         : num [1:13471] 27 27 27 27 27 27 27 27 27 27 ...
    ##  $ STRUCTURE_NUMBER_008   : chr [1:13471] "000000000006389" "000000000006390" "000000000006391" "000000000007435" ...
    ##  $ RECORD_TYPE_005A       : num [1:13471] 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ ROUTE_PREFIX_005B      : num [1:13471] 4 4 4 4 6 6 6 6 6 6 ...
    ##  $ SERVICE_LEVEL_005C     : num [1:13471] 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ ROUTE_NUMBER_005D      : chr [1:13471] "00013" "00009" "00033" "00105" ...
    ##  $ DIRECTION_005E         : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ HIGHWAY_DISTRICT_002   : chr [1:13471] "08" "08" "08" "03" ...
    ##  $ COUNTY_CODE_003        : chr [1:13471] "023" "023" "073" "021" ...
    ##  $ PLACE_CODE_004         : chr [1:13471] "00000" "65704" "00000" "00000" ...
    ##  $ FEATURES_DESC_006A     : chr [1:13471] "'CHIPPEWA RIV. & CSAH #13'" "'WATSON SAG CHL & CSAH #9'" "'CSAH #33 & MINN. RIV.'" "'GULL R.  CSAH 105'" ...
    ##  $ CRITICAL_FACILITY_006B : logi [1:13471] NA NA NA NA NA NA ...
    ##  $ FACILITY_CARRIED_007   : chr [1:13471] "'CO. ST. AID HWY 13'" "'CSAH 9'" "'CSAH #33 @ LQP DAM'" "'CR 105'" ...
    ##  $ LOCATION_009           : chr [1:13471] "'2 MILES NE OF WATSON MN'" "'2 MILES NO.OF WATSON MN.'" "'4 MILES NW OF WATSON  MN'" "'0.1 MI N OF JCT CSAH 70'" ...
    ##  $ MIN_VERT_CLR_010       : num [1:13471] 100 100 100 100 100 ...
    ##  $ KILOPOINT_011          : num [1:13471] 0 0 0 0 1.45 ...
    ##  $ BASE_HWY_NETWORK_012   : num [1:13471] 1 1 0 0 0 0 0 0 0 0 ...
    ##  $ LRS_INV_ROUTE_013A     : chr [1:13471] "0000000013" "0000000009" "0000000033" NA ...
    ##  $ SUBROUTE_NO_013B       : num [1:13471] 0 0 0 NA 0 0 0 0 0 0 ...
    ##  $ LAT_016                : chr [1:13471] "44011896" "45012910" "45011932" "46243946" ...
    ##  $ LONG_017               : chr [1:13471] "095472832" "095475208" "095520702" "094211231" ...
    ##  $ DETOUR_KILOS_019       : num [1:13471] 18 29 11 16 44 37 32 40 8 40 ...
    ##  $ TOLL_020               : num [1:13471] 3 3 3 3 3 3 3 3 3 3 ...
    ##  $ MAINTENANCE_021        : chr [1:13471] "02" "02" "02" "70" ...
    ##  $ OWNER_022              : chr [1:13471] "70" "70" "70" "70" ...
    ##  $ FUNCTIONAL_CLASS_026   : chr [1:13471] "06" "06" "06" "08" ...
    ##  $ YEAR_BUILT_027         : num [1:13471] 1938 1938 1938 1913 1963 ...
    ##  $ TRAFFIC_LANES_ON_028A  : num [1:13471] 2 2 2 1 2 2 2 2 2 2 ...
    ##  $ TRAFFIC_LANES_UND_028B : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ ADT_029                : num [1:13471] 510 265 265 1550 70 150 400 400 400 300 ...
    ##  $ YEAR_ADT_030           : num [1:13471] 2011 2012 2009 2013 2019 ...
    ##  $ DESIGN_LOAD_031        : chr [1:13471] "5" "5" "9" "0" ...
    ##  $ APPR_WIDTH_MT_032      : num [1:13471] 11 9.7 9.7 7.9 7.3 10.4 9.7 7.1 9.8 7.2 ...
    ##  $ MEDIAN_CODE_033        : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ DEGREES_SKEW_034       : num [1:13471] 0 0 0 0 45 0 0 45 0 0 ...
    ##  $ STRUCTURE_FLARED_035   : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ RAILINGS_036A          : chr [1:13471] "1" "1" "1" "0" ...
    ##  $ TRANSITIONS_036B       : chr [1:13471] "0" "0" "0" "0" ...
    ##  $ APPR_RAIL_036C         : chr [1:13471] "0" "0" "0" "0" ...
    ##  $ APPR_RAIL_END_036D     : chr [1:13471] "0" "0" "0" "0" ...
    ##  $ HISTORY_037            : num [1:13471] 4 4 4 4 5 5 5 5 5 5 ...
    ##  $ NAVIGATION_038         : chr [1:13471] "N" "N" "N" "0" ...
    ##  $ NAV_VERT_CLR_MT_039    : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ NAV_HORR_CLR_MT_040    : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ OPEN_CLOSED_POSTED_041 : chr [1:13471] "A" "A" "A" "P" ...
    ##  $ SERVICE_ON_042A        : num [1:13471] 1 1 5 1 1 1 1 1 1 1 ...
    ##  $ SERVICE_UND_042B       : num [1:13471] 5 5 5 5 5 5 5 5 5 5 ...
    ##  $ STRUCTURE_KIND_043A    : num [1:13471] 5 5 1 2 4 3 5 5 1 5 ...
    ##  $ STRUCTURE_TYPE_043B    : chr [1:13471] "02" "02" "01" "11" ...
    ##  $ APPR_KIND_044A         : num [1:13471] 0 1 0 0 0 0 0 0 0 1 ...
    ##  $ APPR_TYPE_044B         : chr [1:13471] "00" "01" "00" "00" ...
    ##  $ MAIN_UNIT_SPANS_045    : num [1:13471] 5 6 12 7 2 1 5 2 1 3 ...
    ##  $ APPR_SPANS_046         : num [1:13471] 0 2 2 0 0 0 0 0 0 0 ...
    ##  $ HORR_CLR_MT_047        : num [1:13471] 11 2.4 9.8 3.2 7.3 9.1 9.7 9.4 9.8 9.6 ...
    ##  $ MAX_SPAN_LEN_MT_048    : num [1:13471] 9.1 8.5 6 3.4 18.3 23.8 22.9 25.3 9.1 13.8 ...
    ##  $ STRUCTURE_LEN_MT_049   : num [1:13471] 45.9 55.1 72.9 22.8 36.6 ...
    ##  $ LEFT_CURB_MT_050A      : num [1:13471] 0.4 0.1 2.4 0.3 0.5 0.5 0.5 0.5 0 0 ...
    ##  $ RIGHT_CURB_MT_050B     : num [1:13471] 0.4 0.1 1.6 0.4 0.5 0.5 0.5 0.5 0 0 ...
    ##  $ ROADWAY_WIDTH_MT_051   : num [1:13471] 11 9.7 9.7 3.2 7.3 9.1 9.7 9.9 9.8 9.6 ...
    ##  $ DECK_WIDTH_MT_052      : num [1:13471] 12 10.6 14.9 4.2 8.2 10.1 10.7 10.9 10.4 10.2 ...
    ##  $ VERT_CLR_OVER_MT_053   : num [1:13471] 100 100 100 100 100 ...
    ##  $ VERT_CLR_UND_REF_054A  : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ VERT_CLR_UND_054B      : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ LAT_UND_REF_055A       : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ LAT_UND_MT_055B        : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ LEFT_LAT_UND_MT_056    : num [1:13471] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ DECK_COND_058          : chr [1:13471] "7" "8" "8" "6" ...
    ##  $ SUPERSTRUCTURE_COND_059: chr [1:13471] "7" "8" "8" "6" ...
    ##  $ SUBSTRUCTURE_COND_060  : chr [1:13471] "6" "6" "5" "6" ...
    ##  $ CHANNEL_COND_061       : chr [1:13471] "6" "7" "7" "8" ...
    ##  $ CULVERT_COND_062       : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ OPR_RATING_METH_063    : chr [1:13471] "1" "C" "1" "3" ...
    ##  $ OPERATING_RATING_064   : num [1:13471] 37.3 44.4 57.6 27.9 27.3 31.4 44.5 50.3 63.7 68.4 ...
    ##  $ INV_RATING_METH_065    : chr [1:13471] "1" "C" "1" "3" ...
    ##  $ INVENTORY_RATING_066   : num [1:13471] 24.7 29.4 34.2 19.8 19 18.1 32.6 38.4 39.2 40.6 ...
    ##  $ STRUCTURAL_EVAL_067    : chr [1:13471] "6" "6" "5" "5" ...
    ##  $ DECK_GEOMETRY_EVAL_068 : chr [1:13471] "7" "6" "6" "2" ...
    ##  $ UNDCLRENCE_EVAL_069    : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ POSTING_EVAL_070       : num [1:13471] 5 5 5 5 3 5 5 5 5 5 ...
    ##  $ WATERWAY_EVAL_071      : chr [1:13471] "9" "8" "4" "8" ...
    ##  $ APPR_ROAD_EVAL_072     : num [1:13471] 8 8 8 6 8 7 8 8 6 7 ...
    ##  $ WORK_PROPOSED_075A     : num [1:13471] NA NA NA 33 NA NA NA NA NA NA ...
    ##  $ WORK_DONE_BY_075B      : num [1:13471] NA NA NA 1 NA NA NA NA NA NA ...
    ##  $ IMP_LEN_MT_076         : num [1:13471] 86.6 102.7 132.5 44.4 0 ...
    ##  $ DATE_OF_INSPECT_090    : num [1:13471] 1118 918 916 618 819 ...
    ##  $ INSPECT_FREQ_MONTHS_091: num [1:13471] 24 12 24 24 24 24 24 24 24 24 ...
    ##  $ FRACTURE_092A          : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ UNDWATER_LOOK_SEE_092B : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ SPEC_INSPECT_092C      : chr [1:13471] "N" "N" "N" "N" ...
    ##  $ FRACTURE_LAST_DATE_093A: chr [1:13471] NA NA NA NA ...
    ##  $ UNDWATER_LAST_DATE_093B: chr [1:13471] NA NA NA NA ...
    ##  $ SPEC_LAST_DATE_093C    : logi [1:13471] NA NA NA NA NA NA ...
    ##  $ BRIDGE_IMP_COST_094    : num [1:13471] 521 169 994 94 0 0 0 0 0 0 ...
    ##  $ ROADWAY_IMP_COST_095   : num [1:13471] 52 17 99 9 0 0 0 0 0 0 ...
    ##  $ TOTAL_IMP_COST_096     : num [1:13471] 782 254 1491 141 0 ...
    ##  $ YEAR_OF_IMP_097        : num [1:13471] 2019 2019 2019 2017 2019 ...
    ##  $ OTHER_STATE_CODE_098A  : num [1:13471] NA NA NA NA NA NA NA NA NA NA ...
    ##  $ OTHER_STATE_PCNT_098B  : num [1:13471] NA NA NA NA 0 0 0 0 0 0 ...
    ##  $ OTHR_STATE_STRUC_NO_099: chr [1:13471] NA NA NA NA ...
    ##   [list output truncated]
    ##  - attr(*, "problems")= tibble [36 x 5] (S3: tbl_df/tbl/data.frame)
    ##   ..$ row     : int [1:36] 2502 3571 3572 4969 5527 5561 5729 5790 6195 6582 ...
    ##   ..$ col     : chr [1:36] "SPEC_LAST_DATE_093C" "SPEC_LAST_DATE_093C" "OTHER_STATE_CODE_098A" "SPEC_LAST_DATE_093C" ...
    ##   ..$ expected: chr [1:36] "1/0/T/F/TRUE/FALSE" "1/0/T/F/TRUE/FALSE" "a double" "1/0/T/F/TRUE/FALSE" ...
    ##   ..$ actual  : chr [1:36] "1017" "0817" "CAN" "0817" ...
    ##   ..$ file    : chr [1:36] "'MN20.txt'" "'MN20.txt'" "'MN20.txt'" "'MN20.txt'" ...
    ##  - attr(*, "spec")=
    ##   .. cols(
    ##   ..   STATE_CODE_001 = col_double(),
    ##   ..   STRUCTURE_NUMBER_008 = col_character(),
    ##   ..   RECORD_TYPE_005A = col_double(),
    ##   ..   ROUTE_PREFIX_005B = col_double(),
    ##   ..   SERVICE_LEVEL_005C = col_double(),
    ##   ..   ROUTE_NUMBER_005D = col_character(),
    ##   ..   DIRECTION_005E = col_double(),
    ##   ..   HIGHWAY_DISTRICT_002 = col_character(),
    ##   ..   COUNTY_CODE_003 = col_character(),
    ##   ..   PLACE_CODE_004 = col_character(),
    ##   ..   FEATURES_DESC_006A = col_character(),
    ##   ..   CRITICAL_FACILITY_006B = col_logical(),
    ##   ..   FACILITY_CARRIED_007 = col_character(),
    ##   ..   LOCATION_009 = col_character(),
    ##   ..   MIN_VERT_CLR_010 = col_double(),
    ##   ..   KILOPOINT_011 = col_double(),
    ##   ..   BASE_HWY_NETWORK_012 = col_double(),
    ##   ..   LRS_INV_ROUTE_013A = col_character(),
    ##   ..   SUBROUTE_NO_013B = col_double(),
    ##   ..   LAT_016 = col_character(),
    ##   ..   LONG_017 = col_character(),
    ##   ..   DETOUR_KILOS_019 = col_double(),
    ##   ..   TOLL_020 = col_double(),
    ##   ..   MAINTENANCE_021 = col_character(),
    ##   ..   OWNER_022 = col_character(),
    ##   ..   FUNCTIONAL_CLASS_026 = col_character(),
    ##   ..   YEAR_BUILT_027 = col_double(),
    ##   ..   TRAFFIC_LANES_ON_028A = col_double(),
    ##   ..   TRAFFIC_LANES_UND_028B = col_double(),
    ##   ..   ADT_029 = col_double(),
    ##   ..   YEAR_ADT_030 = col_double(),
    ##   ..   DESIGN_LOAD_031 = col_character(),
    ##   ..   APPR_WIDTH_MT_032 = col_double(),
    ##   ..   MEDIAN_CODE_033 = col_double(),
    ##   ..   DEGREES_SKEW_034 = col_double(),
    ##   ..   STRUCTURE_FLARED_035 = col_double(),
    ##   ..   RAILINGS_036A = col_character(),
    ##   ..   TRANSITIONS_036B = col_character(),
    ##   ..   APPR_RAIL_036C = col_character(),
    ##   ..   APPR_RAIL_END_036D = col_character(),
    ##   ..   HISTORY_037 = col_double(),
    ##   ..   NAVIGATION_038 = col_character(),
    ##   ..   NAV_VERT_CLR_MT_039 = col_double(),
    ##   ..   NAV_HORR_CLR_MT_040 = col_double(),
    ##   ..   OPEN_CLOSED_POSTED_041 = col_character(),
    ##   ..   SERVICE_ON_042A = col_double(),
    ##   ..   SERVICE_UND_042B = col_double(),
    ##   ..   STRUCTURE_KIND_043A = col_double(),
    ##   ..   STRUCTURE_TYPE_043B = col_character(),
    ##   ..   APPR_KIND_044A = col_double(),
    ##   ..   APPR_TYPE_044B = col_character(),
    ##   ..   MAIN_UNIT_SPANS_045 = col_double(),
    ##   ..   APPR_SPANS_046 = col_double(),
    ##   ..   HORR_CLR_MT_047 = col_double(),
    ##   ..   MAX_SPAN_LEN_MT_048 = col_double(),
    ##   ..   STRUCTURE_LEN_MT_049 = col_double(),
    ##   ..   LEFT_CURB_MT_050A = col_double(),
    ##   ..   RIGHT_CURB_MT_050B = col_double(),
    ##   ..   ROADWAY_WIDTH_MT_051 = col_double(),
    ##   ..   DECK_WIDTH_MT_052 = col_double(),
    ##   ..   VERT_CLR_OVER_MT_053 = col_double(),
    ##   ..   VERT_CLR_UND_REF_054A = col_character(),
    ##   ..   VERT_CLR_UND_054B = col_double(),
    ##   ..   LAT_UND_REF_055A = col_character(),
    ##   ..   LAT_UND_MT_055B = col_double(),
    ##   ..   LEFT_LAT_UND_MT_056 = col_double(),
    ##   ..   DECK_COND_058 = col_character(),
    ##   ..   SUPERSTRUCTURE_COND_059 = col_character(),
    ##   ..   SUBSTRUCTURE_COND_060 = col_character(),
    ##   ..   CHANNEL_COND_061 = col_character(),
    ##   ..   CULVERT_COND_062 = col_character(),
    ##   ..   OPR_RATING_METH_063 = col_character(),
    ##   ..   OPERATING_RATING_064 = col_double(),
    ##   ..   INV_RATING_METH_065 = col_character(),
    ##   ..   INVENTORY_RATING_066 = col_double(),
    ##   ..   STRUCTURAL_EVAL_067 = col_character(),
    ##   ..   DECK_GEOMETRY_EVAL_068 = col_character(),
    ##   ..   UNDCLRENCE_EVAL_069 = col_character(),
    ##   ..   POSTING_EVAL_070 = col_double(),
    ##   ..   WATERWAY_EVAL_071 = col_character(),
    ##   ..   APPR_ROAD_EVAL_072 = col_double(),
    ##   ..   WORK_PROPOSED_075A = col_double(),
    ##   ..   WORK_DONE_BY_075B = col_double(),
    ##   ..   IMP_LEN_MT_076 = col_double(),
    ##   ..   DATE_OF_INSPECT_090 = col_double(),
    ##   ..   INSPECT_FREQ_MONTHS_091 = col_double(),
    ##   ..   FRACTURE_092A = col_character(),
    ##   ..   UNDWATER_LOOK_SEE_092B = col_character(),
    ##   ..   SPEC_INSPECT_092C = col_character(),
    ##   ..   FRACTURE_LAST_DATE_093A = col_character(),
    ##   ..   UNDWATER_LAST_DATE_093B = col_character(),
    ##   ..   SPEC_LAST_DATE_093C = col_logical(),
    ##   ..   BRIDGE_IMP_COST_094 = col_double(),
    ##   ..   ROADWAY_IMP_COST_095 = col_double(),
    ##   ..   TOTAL_IMP_COST_096 = col_double(),
    ##   ..   YEAR_OF_IMP_097 = col_double(),
    ##   ..   OTHER_STATE_CODE_098A = col_double(),
    ##   ..   OTHER_STATE_PCNT_098B = col_double(),
    ##   ..   OTHR_STATE_STRUC_NO_099 = col_character(),
    ##   ..   STRAHNET_HIGHWAY_100 = col_double(),
    ##   ..   PARALLEL_STRUCTURE_101 = col_character(),
    ##   ..   TRAFFIC_DIRECTION_102 = col_double(),
    ##   ..   TEMP_STRUCTURE_103 = col_logical(),
    ##   ..   HIGHWAY_SYSTEM_104 = col_double(),
    ##   ..   FEDERAL_LANDS_105 = col_double(),
    ##   ..   YEAR_RECONSTRUCTED_106 = col_double(),
    ##   ..   DECK_STRUCTURE_TYPE_107 = col_character(),
    ##   ..   SURFACE_TYPE_108A = col_character(),
    ##   ..   MEMBRANE_TYPE_108B = col_character(),
    ##   ..   DECK_PROTECTION_108C = col_character(),
    ##   ..   PERCENT_ADT_TRUCK_109 = col_double(),
    ##   ..   NATIONAL_NETWORK_110 = col_double(),
    ##   ..   PIER_PROTECTION_111 = col_double(),
    ##   ..   BRIDGE_LEN_IND_112 = col_character(),
    ##   ..   SCOUR_CRITICAL_113 = col_character(),
    ##   ..   FUTURE_ADT_114 = col_double(),
    ##   ..   YEAR_OF_FUTURE_ADT_115 = col_double(),
    ##   ..   MIN_NAV_CLR_MT_116 = col_double(),
    ##   ..   FED_AGENCY = col_character(),
    ##   ..   SUBMITTED_BY = col_double(),
    ##   ..   BRIDGE_CONDITION = col_character(),
    ##   ..   LOWEST_RATING = col_double(),
    ##   ..   DECK_AREA = col_double()
    ##   .. )

``` r
# some variables of interest isolated
# structure number, county code, place code, detour length, year built, avg daily traffic, condition ratings
names(bridge)
```

    ##   [1] "STATE_CODE_001"          "STRUCTURE_NUMBER_008"   
    ##   [3] "RECORD_TYPE_005A"        "ROUTE_PREFIX_005B"      
    ##   [5] "SERVICE_LEVEL_005C"      "ROUTE_NUMBER_005D"      
    ##   [7] "DIRECTION_005E"          "HIGHWAY_DISTRICT_002"   
    ##   [9] "COUNTY_CODE_003"         "PLACE_CODE_004"         
    ##  [11] "FEATURES_DESC_006A"      "CRITICAL_FACILITY_006B" 
    ##  [13] "FACILITY_CARRIED_007"    "LOCATION_009"           
    ##  [15] "MIN_VERT_CLR_010"        "KILOPOINT_011"          
    ##  [17] "BASE_HWY_NETWORK_012"    "LRS_INV_ROUTE_013A"     
    ##  [19] "SUBROUTE_NO_013B"        "LAT_016"                
    ##  [21] "LONG_017"                "DETOUR_KILOS_019"       
    ##  [23] "TOLL_020"                "MAINTENANCE_021"        
    ##  [25] "OWNER_022"               "FUNCTIONAL_CLASS_026"   
    ##  [27] "YEAR_BUILT_027"          "TRAFFIC_LANES_ON_028A"  
    ##  [29] "TRAFFIC_LANES_UND_028B"  "ADT_029"                
    ##  [31] "YEAR_ADT_030"            "DESIGN_LOAD_031"        
    ##  [33] "APPR_WIDTH_MT_032"       "MEDIAN_CODE_033"        
    ##  [35] "DEGREES_SKEW_034"        "STRUCTURE_FLARED_035"   
    ##  [37] "RAILINGS_036A"           "TRANSITIONS_036B"       
    ##  [39] "APPR_RAIL_036C"          "APPR_RAIL_END_036D"     
    ##  [41] "HISTORY_037"             "NAVIGATION_038"         
    ##  [43] "NAV_VERT_CLR_MT_039"     "NAV_HORR_CLR_MT_040"    
    ##  [45] "OPEN_CLOSED_POSTED_041"  "SERVICE_ON_042A"        
    ##  [47] "SERVICE_UND_042B"        "STRUCTURE_KIND_043A"    
    ##  [49] "STRUCTURE_TYPE_043B"     "APPR_KIND_044A"         
    ##  [51] "APPR_TYPE_044B"          "MAIN_UNIT_SPANS_045"    
    ##  [53] "APPR_SPANS_046"          "HORR_CLR_MT_047"        
    ##  [55] "MAX_SPAN_LEN_MT_048"     "STRUCTURE_LEN_MT_049"   
    ##  [57] "LEFT_CURB_MT_050A"       "RIGHT_CURB_MT_050B"     
    ##  [59] "ROADWAY_WIDTH_MT_051"    "DECK_WIDTH_MT_052"      
    ##  [61] "VERT_CLR_OVER_MT_053"    "VERT_CLR_UND_REF_054A"  
    ##  [63] "VERT_CLR_UND_054B"       "LAT_UND_REF_055A"       
    ##  [65] "LAT_UND_MT_055B"         "LEFT_LAT_UND_MT_056"    
    ##  [67] "DECK_COND_058"           "SUPERSTRUCTURE_COND_059"
    ##  [69] "SUBSTRUCTURE_COND_060"   "CHANNEL_COND_061"       
    ##  [71] "CULVERT_COND_062"        "OPR_RATING_METH_063"    
    ##  [73] "OPERATING_RATING_064"    "INV_RATING_METH_065"    
    ##  [75] "INVENTORY_RATING_066"    "STRUCTURAL_EVAL_067"    
    ##  [77] "DECK_GEOMETRY_EVAL_068"  "UNDCLRENCE_EVAL_069"    
    ##  [79] "POSTING_EVAL_070"        "WATERWAY_EVAL_071"      
    ##  [81] "APPR_ROAD_EVAL_072"      "WORK_PROPOSED_075A"     
    ##  [83] "WORK_DONE_BY_075B"       "IMP_LEN_MT_076"         
    ##  [85] "DATE_OF_INSPECT_090"     "INSPECT_FREQ_MONTHS_091"
    ##  [87] "FRACTURE_092A"           "UNDWATER_LOOK_SEE_092B" 
    ##  [89] "SPEC_INSPECT_092C"       "FRACTURE_LAST_DATE_093A"
    ##  [91] "UNDWATER_LAST_DATE_093B" "SPEC_LAST_DATE_093C"    
    ##  [93] "BRIDGE_IMP_COST_094"     "ROADWAY_IMP_COST_095"   
    ##  [95] "TOTAL_IMP_COST_096"      "YEAR_OF_IMP_097"        
    ##  [97] "OTHER_STATE_CODE_098A"   "OTHER_STATE_PCNT_098B"  
    ##  [99] "OTHR_STATE_STRUC_NO_099" "STRAHNET_HIGHWAY_100"   
    ## [101] "PARALLEL_STRUCTURE_101"  "TRAFFIC_DIRECTION_102"  
    ## [103] "TEMP_STRUCTURE_103"      "HIGHWAY_SYSTEM_104"     
    ## [105] "FEDERAL_LANDS_105"       "YEAR_RECONSTRUCTED_106" 
    ## [107] "DECK_STRUCTURE_TYPE_107" "SURFACE_TYPE_108A"      
    ## [109] "MEMBRANE_TYPE_108B"      "DECK_PROTECTION_108C"   
    ## [111] "PERCENT_ADT_TRUCK_109"   "NATIONAL_NETWORK_110"   
    ## [113] "PIER_PROTECTION_111"     "BRIDGE_LEN_IND_112"     
    ## [115] "SCOUR_CRITICAL_113"      "FUTURE_ADT_114"         
    ## [117] "YEAR_OF_FUTURE_ADT_115"  "MIN_NAV_CLR_MT_116"     
    ## [119] "FED_AGENCY"              "SUBMITTED_BY"           
    ## [121] "BRIDGE_CONDITION"        "LOWEST_RATING"          
    ## [123] "DECK_AREA"

``` r
(bridge.subset <- bridge[,c(2,9,10,22,27,121)])
```

    ## # A tibble: 13,471 x 6
    ##    STRUCTURE_NUMBE~ COUNTY_CODE_003 PLACE_CODE_004 DETOUR_KILOS_019
    ##    <chr>            <chr>           <chr>                     <dbl>
    ##  1 000000000006389  023             00000                        18
    ##  2 000000000006390  023             65704                        29
    ##  3 000000000006391  073             00000                        11
    ##  4 000000000007435  021             00000                        16
    ##  5 00000000000F115  029             53458                        44
    ##  6 00000000000F116  029             00000                        37
    ##  7 00000000000F124  007             53458                        32
    ##  8 00000000000F125  007             53458                        40
    ##  9 00000000000F126  007             00000                         8
    ## 10 00000000000F127  029             53458                        40
    ## # ... with 13,461 more rows, and 2 more variables: YEAR_BUILT_027 <dbl>,
    ## #   BRIDGE_CONDITION <chr>
