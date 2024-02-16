* Created: 7/21/2005 11:27:59 PM
*                                                        
* Modify the path below to point to your data file.      
* The specified subdirectory was not created on          
* your computer. You will need to do this.               
*                                                        
* The stat program must be run against the specified     
* data file. This file is specified in the program       
* and must be saved separately.                          
*                                                        
* This program does not provide tab or summarize for all 
* variables.                                             
*                                                        
* There may be missing data for some institutions due    
* to the merge used to create this file.                 
*                                                        
* This program does not include reserved values in its   
* calculations for missing values.                       
*                                                        
* You may need to adjust your memory settings depending  
* upon the number of variables and records.              
*                                                        
* The save command may need to be modified per user      
* requirements.                                          
*                                                        
* For long lists of value labels, the titles may be      
* shortened per program requirements. 
*                                                        
clear
insheet using "/Users/feilu/Downloads/faculty data/SAL2004_A_DATA_STATA/sal2004_a_data_stata.csv", comma clear
label data "dct_sal2004_a"
label variable unitid "unitid"
label variable contract "Contract length"
label variable arank "Academic rank"
label variable xempcntm "Imputation field for EMPCNTM - Number of full time instructional faculty men"
label variable empcntm "Number of full time instructional faculty men"
label variable xoutlaym "Imputation field for OUTLAYM - Salary outlays of full time instructional faculty men"
label variable outlaym "Salary outlays of full time instructional faculty men"
label variable xavesalm "Imputation field for AVESALM - Average salary of full time instructional faculty men"
label variable avesalm "Average salary of full time instructional faculty men"
label variable xempcntw "Imputation field for EMPCNTW - Number of full time instructional faculty women"
label variable empcntw "Number of full time instructional faculty women"
label variable xoutlayw "Imputation field for OUTLAYW - Salary outlays of full time instructional faculty women"
label variable outlayw "Salary outlays of full time instructional faculty women"
label variable xavesalw "Imputation field for AVESALW - Average salary of full time instructional faculty women"
label variable avesalw "Average salary of full time instructional faculty women"
label variable xempcntt "Imputation field for EMPCNTT - Number of full time instructional faculty total"
label variable empcntt "Number of full time instructional faculty total"
label variable xoutlayt "Imputation field for OUTLAYT - Salary outlays of full time instructional faculty total"
label variable outlayt "Salary outlays of full time instructional faculty total"
label variable xavesalt "Imputation field for AVESALT - Average salary of full time instructional faculty total"
label variable avesalt "Average salary of full time instructional faculty total"

label define label_contract 1 "9/10-month contract" 
label define label_contract 2 "11/12-month contract", add 
label define label_contract 3 "Less than 9-month contract", add 
label define label_contract 4 "Equated 9-month contract", add 
label values contract label_contract

label define label_arank 1 "Professor" 
label define label_arank 2 "Associate professor", add 
label define label_arank 3 "Assistant professor", add 
label define label_arank 4 "Instructor", add 
label define label_arank 5 "Lecturer", add 
label define label_arank 6 "No academic rank", add 
label define label_arank 7 "All faculty total", add 
label values arank label_arank

*A Not applicable
*B Institution left item blank
*C Analyst corrected reported value
*D Do not know
*G Data generated from other data values
*H Value not derived - data not usable
*J Logical imputation
*K Ratio adjustment
*L Imputed using the Group Median procedure
*N Imputed using Nearest Neighbor procedure
*P Imputed using Carry Forward procedure
*R Reported
*Z Implied zero

replace xempcntm = "Not applicable" if xempcntm == "A"
replace xempcntm = "Institution left item blank" if xempcntm == "B"
replace xempcntm = "Analyst corrected reported value" if xempcntm == "C"
replace xempcntm = "Do not know" if xempcntm == "D"
replace xempcntm = "Data generated from other data values" if xempcntm == "G"
replace xempcntm = "Value not derived - data not usable" if xempcntm == "H"
replace xempcntm = "Logical imputation" if xempcntm == "J"
replace xempcntm = "Ratio adjustment" if xempcntm == "K"
replace xempcntm = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xempcntm = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xempcntm = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xempcntm = "Reported" if xempcntm == "R"
replace xempcntm = "Implied Zero" if xempcntm == "Z"

replace xoutlaym = "Not applicable" if xempcntm == "A"
replace xoutlaym = "Institution left item blank" if xempcntm == "B"
replace xoutlaym = "Analyst corrected reported value" if xempcntm == "C"
replace xoutlaym = "Do not know" if xempcntm == "D"
replace xoutlaym = "Data generated from other data values" if xempcntm == "G"
replace xoutlaym = "Value not derived - data not usable" if xempcntm == "H"
replace xoutlaym = "Logical imputation" if xempcntm == "J"
replace xoutlaym = "Ratio adjustment" if xempcntm == "K"
replace xoutlaym = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xoutlaym = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xoutlaym = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xoutlaym = "Reported" if xempcntm == "R"
replace xoutlaym = "Implied Zero" if xempcntm == "Z"

replace xavesalm = "Not applicable" if xempcntm == "A"
replace xavesalm = "Institution left item blank" if xempcntm == "B"
replace xavesalm = "Analyst corrected reported value" if xempcntm == "C"
replace xavesalm = "Do not know" if xempcntm == "D"
replace xavesalm = "Data generated from other data values" if xempcntm == "G"
replace xavesalm = "Value not derived - data not usable" if xempcntm == "H"
replace xavesalm = "Logical imputation" if xempcntm == "J"
replace xavesalm = "Ratio adjustment" if xempcntm == "K"
replace xavesalm = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xavesalm = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xavesalm = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xavesalm = "Reported" if xempcntm == "R"
replace xavesalm = "Implied Zero" if xempcntm == "Z"

replace xempcntw = "Not applicable" if xempcntm == "A"
replace xempcntw = "Institution left item blank" if xempcntm == "B"
replace xempcntw = "Analyst corrected reported value" if xempcntm == "C"
replace xempcntw = "Do not know" if xempcntm == "D"
replace xempcntw = "Data generated from other data values" if xempcntm == "G"
replace xempcntw = "Value not derived - data not usable" if xempcntm == "H"
replace xempcntw = "Logical imputation" if xempcntm == "J"
replace xempcntw = "Ratio adjustment" if xempcntm == "K"
replace xempcntw = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xempcntw = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xempcntw = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xempcntw = "Reported" if xempcntm == "R"
replace xempcntw = "Implied Zero" if xempcntm == "Z"

replace xoutlayw = "Not applicable" if xempcntm == "A"
replace xoutlayw = "Institution left item blank" if xempcntm == "B"
replace xoutlayw = "Analyst corrected reported value" if xempcntm == "C"
replace xoutlayw = "Do not know" if xempcntm == "D"
replace xoutlayw = "Data generated from other data values" if xempcntm == "G"
replace xoutlayw = "Value not derived - data not usable" if xempcntm == "H"
replace xoutlayw = "Logical imputation" if xempcntm == "J"
replace xoutlayw = "Ratio adjustment" if xempcntm == "K"
replace xoutlayw = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xoutlayw = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xoutlayw = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xoutlayw = "Reported" if xempcntm == "R"
replace xoutlayw = "Implied Zero" if xempcntm == "Z"

replace xavesalw = "Not applicable" if xempcntm == "A"
replace xavesalw = "Institution left item blank" if xempcntm == "B"
replace xavesalw = "Analyst corrected reported value" if xempcntm == "C"
replace xavesalw = "Do not know" if xempcntm == "D"
replace xavesalw = "Data generated from other data values" if xempcntm == "G"
replace xavesalw = "Value not derived - data not usable" if xempcntm == "H"
replace xavesalw = "Logical imputation" if xempcntm == "J"
replace xavesalw = "Ratio adjustment" if xempcntm == "K"
replace xavesalw = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xavesalw = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xavesalw = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xavesalw = "Reported" if xempcntm == "R"
replace xavesalw = "Implied Zero" if xempcntm == "Z"

replace xempcntt = "Not applicable" if xempcntm == "A"
replace xempcntt = "Institution left item blank" if xempcntm == "B"
replace xempcntt = "Analyst corrected reported value" if xempcntm == "C"
replace xempcntt = "Do not know" if xempcntm == "D"
replace xempcntt = "Data generated from other data values" if xempcntm == "G"
replace xempcntt = "Value not derived - data not usable" if xempcntm == "H"
replace xempcntt = "Logical imputation" if xempcntm == "J"
replace xempcntt = "Ratio adjustment" if xempcntm == "K"
replace xempcntt = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xempcntt = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xempcntt = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xempcntt = "Reported" if xempcntm == "R"
replace xempcntt = "Implied Zero" if xempcntm == "Z"

replace xoutlayt = "Not applicable" if xempcntm == "A"
replace xoutlayt = "Institution left item blank" if xempcntm == "B"
replace xoutlayt = "Analyst corrected reported value" if xempcntm == "C"
replace xoutlayt = "Do not know" if xempcntm == "D"
replace xoutlayt = "Data generated from other data values" if xempcntm == "G"
replace xoutlayt = "Value not derived - data not usable" if xempcntm == "H"
replace xoutlayt = "Logical imputation" if xempcntm == "J"
replace xoutlayt = "Ratio adjustment" if xempcntm == "K"
replace xoutlayt = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xoutlayt = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xoutlayt = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xoutlayt = "Reported" if xempcntm == "R"
replace xoutlayt = "Implied Zero" if xempcntm == "Z"

replace xavesalt = "Not applicable" if xempcntm == "A"
replace xavesalt = "Institution left item blank" if xempcntm == "B"
replace xavesalt = "Analyst corrected reported value" if xempcntm == "C"
replace xavesalt = "Do not know" if xempcntm == "D"
replace xavesalt = "Data generated from other data values" if xempcntm == "G"
replace xavesalt = "Value not derived - data not usable" if xempcntm == "H"
replace xavesalt = "Logical imputation" if xempcntm == "J"
replace xavesalt = "Ratio adjustment" if xempcntm == "K"
replace xavesalt = "Imputed using the Group Median procedure" if xempcntm == "L"
replace xavesalt = "Imputed using Nearest Neighbor procedure" if xempcntm == "N"
replace xavesalt = "Imputed using Carry Forward procedure" if xempcntm == "P"
replace xavesalt = "Reported" if xempcntm == "R"
replace xavesalt = "Implied Zero" if xempcntm == "Z"

tab contract
tab arank
tab xempcntm
tab xoutlaym
tab xavesalm
tab xempcntw
tab xoutlayw
tab xavesalw
tab xempcntt
tab xoutlayt
tab xavesalt
summarize empcntm
summarize outlaym
summarize avesalm
summarize empcntw
summarize outlayw
summarize avesalw
summarize empcntt
summarize outlayt
summarize avesalt

drop if arank!=7
drop if contract!=4
keep unitid empcntt
rename empcntt faculty
gen year=2004

save "/Users/feilu/Downloads/faculty data/faculty2004.dta", replace

