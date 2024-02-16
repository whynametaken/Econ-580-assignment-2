clear
cd "/Users/feilu/Downloads/"

* for loop running the do files

forvalues i=1997/2022 {
cd "/Users/feilu/Downloads/publicrev_do/"
quietly do publicrevenues`i'.do
cd "/Users/feilu/Downloads/privaterev_do/"
quietly do privaterevenues`i'.do

}


forvalues i=1991/1996 {
cd "/Users/feilu/Downloads/cost_do/"
quietly do costs`i'.do
cd "/Users/feilu/Downloads/revenue_do/"
quietly do revenues`i'.do
}



cd "/Users/feilu/downloads/revenue/"
use publicrevenues2016.dta
append using publicrevenues2022.dta
append using publicrevenues2021.dta
append using publicrevenues2020.dta
append using publicrevenues2019.dta
append using publicrevenues2018.dta
append using publicrevenues2017.dta
append using publicrevenues2016.dta
append using publicrevenues2015.dta
append using publicrevenues2014.dta
append using publicrevenues2013.dta
append using publicrevenues2012.dta
append using publicrevenues2011.dta
append using publicrevenues2010.dta
append using publicrevenues2009.dta
append using publicrevenues2008.dta
append using publicrevenues2007.dta
append using publicrevenues2006.dta
append using publicrevenues2005.dta
append using publicrevenues2004.dta
append using publicrevenues2003.dta
append using publicrevenues2002.dta
append using publicrevenues2001.dta
append using publicrevenues2000.dta
append using publicrevenues1999.dta
append using publicrevenues1998.dta
append using publicrevenues1997.dta

append using privaterevenues2022.dta
append using privaterevenues2021.dta
append using privaterevenues2020.dta
append using privaterevenues2019.dta
append using privaterevenues2018.dta
append using privaterevenues2017.dta
append using privaterevenues2016.dta
append using privaterevenues2015.dta
append using privaterevenues2014.dta
append using privaterevenues2013.dta
append using privaterevenues2012.dta
append using privaterevenues2011.dta
append using privaterevenues2010.dta
append using privaterevenues2009.dta
append using privaterevenues2008.dta
append using privaterevenues2007.dta
append using privaterevenues2006.dta
append using privaterevenues2005.dta
append using privaterevenues2004.dta
append using privaterevenues2003.dta
append using privaterevenues2002.dta
append using privaterevenues2001.dta
append using privaterevenues2000.dta
append using privaterevenues1999.dta
append using privaterevenues1998.dta
append using privaterevenues1997.dta

keep unitid costs revenue year
save "/Users/feilu/Downloads/revenue/revenues97_2016.dta", replace

clear
use revenues1996.dta
append using revenues1995.dta
append using revenues1994.dta
append using revenues1993.dta
append using revenues1992.dta
append using revenues1991.dta

sort unitid year

save revenues91_96.dta, replace

clear
use costs1996.dta
append using costs1995.dta
append using costs1994.dta
append using costs1993.dta
append using costs1992.dta
append using costs1991.dta

sort unitid year

save costs91_96.dta, replace
merge 1:1 unitid year using revenues91_96.dta

append using revenues97_2016.dta
drop _merge
*replace year=year-1
sort unitid year

save "/Users/feilu/downloads/master_list/revenuesmaster_new_2022.dta", replace

