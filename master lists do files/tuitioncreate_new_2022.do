clear

cd "/Users/feilu/Downloads/tuition_do/"

quietly do tuition1990.do
quietly do tuition1991.do
quietly do tuition1992.do
quietly do tuition1993.do
quietly do tuition1994.do
quietly do tuition1995.do
quietly do tuition1996.do
quietly do tuition1997.do
quietly do tuition1998.do
quietly do tuition1999.do
quietly do tuition2000.do
quietly do tuition2001.do
quietly do tuition2002.do
quietly do tuition2003.do
quietly do tuition2004.do
quietly do tuition2005.do
quietly do tuition2006.do
quietly do tuition2007.do
quietly do tuition2008.do
quietly do tuition2009.do
quietly do tuition2010.do
quietly do tuition2011.do
quietly do tuition2012.do
quietly do tuition2013.do
quietly do tuition2014.do
quietly do tuition2015.do
quietly do tuition2016.do
quietly do tuition2017.do
quietly do tuition2018.do
quietly do tuition2019.do
quietly do tuition2020.do
quietly do tuition2021.do
quietly do tuition2022.do

cd "/Users/feilu/Downloads/tuition data/"

use tuition2016.dta
append using tuition2015.dta, force
append using tuition2014.dta, force
append using tuition2013.dta, force
append using tuition2012.dta, force
append using tuition2011.dta, force
append using tuition2010.dta, force
append using tuition2009.dta, force
append using tuition2008.dta, force
append using tuition2007.dta, force
append using tuition2006.dta, force
append using tuition2005.dta, force
append using tuition2004.dta, force
append using tuition2003.dta, force
append using tuition2002.dta, force
append using tuition2001.dta, force
append using tuition2000.dta, force
append using tuition1999.dta, force
append using tuition1998.dta, force
append using tuition1997.dta, force
append using tuition1996.dta, force
append using tuition1995.dta, force
append using tuition1994.dta, force
append using tuition1993.dta, force
append using tuition1992.dta, force
append using tuition1991.dta, force
append using tuition1990.dta, force

order unitid year
sort unitid year

save "/Users/feilu/Downloads/master_list/tuitionmaster_new_2022.dta", replace

