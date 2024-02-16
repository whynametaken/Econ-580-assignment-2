clear

cd "/Users/feilu/Downloads/fac_do"

* this part is just running the do-files

quietly do faculty1990.do
quietly do faculty1991.do
quietly do faculty1992.do
quietly do faculty1993.do
quietly do faculty1994.do
quietly do faculty1995.do
quietly do faculty1996.do
quietly do faculty1997.do
quietly do faculty1998.do
quietly do faculty1999.do
*quietly do .\do\faculty2000.do
quietly do faculty2001.do
quietly do faculty2002.do
quietly do faculty2003.do
quietly do faculty2004.do
quietly do faculty2005.do
quietly do faculty2006.do
quietly do faculty2007.do
quietly do faculty2008.do
quietly do faculty2009.do
quietly do faculty2010.do
quietly do faculty2011.do
quietly do faculty2012.do
quietly do faculty2013.do
quietly do faculty2014.do
quietly do faculty2015.do
quietly do faculty2016.do
quietly do faculty2017.do
quietly do faculty2018.do
quietly do faculty2019.do
quietly do faculty2020.do
quietly do faculty2021.do
quietly do faculty2022.do




/*Year 2000 faculty data is missing. A new "blank" dataset is created and
then interpolated after it is appended to the rest of the years. The 
interpolation is just the linear value between 1999 and 2001.*/
cd "/Users/feilu/Downloads/faculty data"
clear
use faculty1999.dta
keep unitid
gen year=2000
gen faculty=.
save faculty2000.dta, replace

use faculty2016.dta
append using faculty2015.dta, force
append using faculty2014.dta, force
append using faculty2013.dta, force
append using faculty2012.dta, force
append using faculty2011.dta, force
append using faculty2010.dta, force
append using faculty2009.dta, force
append using faculty2008.dta, force
append using faculty2007.dta, force
append using faculty2006.dta, force
append using faculty2005.dta, force
append using faculty2004.dta, force
append using faculty2003.dta, force
append using faculty2002.dta, force
append using faculty2001.dta, force
append using faculty2000.dta, force
append using faculty1999.dta, force
append using faculty1998.dta, force
append using faculty1997.dta, force
append using faculty1996.dta, force
append using faculty1995.dta, force
append using faculty1994.dta, force
append using faculty1993.dta, force
append using faculty1992.dta, force
append using faculty1991.dta, force
append using faculty1990.dta, force

sort unitid year
bys unitid: ipolate faculty year if year>=1999 & year<=2001, gen(new)
replace faculty=new if year>1999 & year<2001
drop new

sort unitid year
save "/Users/feilu/Downloads/master_list/facultymaster_new_2022.dta", replace

