clear

/*quietly do .\do\directory1987.do
quietly do .\do\directory1988.do
quietly do .\do\directory1989.do
quietly do .\do\directory1990.do
quietly do .\do\directory1991.do
quietly do .\do\directory1992.do
quietly do .\do\directory1993.do
quietly do .\do\directory1994.do
quietly do .\do\directory1995.do
quietly do .\do\directory1996.do
quietly do .\do\directory1997.do
quietly do .\do\directory1998.do
quietly do .\do\directory1999.do
quietly do .\do\directory2000.do
quietly do .\do\directory2001.do
quietly do .\do\directory2002.do
quietly do .\do\directory2003.do
quietly do .\do\directory2004.do
quietly do .\do\directory2005.do
quietly do .\do\directory2006.do
quietly do .\do\directory2007.do
quietly do .\do\directory2008.do
quietly do .\do\directory2009.do
quietly do .\do\directory2010.do
quietly do .\do\directory2011.do
quietly do .\do\directory2012.do
quietly do .\do\directory2013.do
quietly do .\do\directory2014.do
quietly do .\do\directory2015.do
quietly do .\do\directory2016.do*/

forvalues i=1987/2022 {
cd "/Users/feilu/Downloads/direct_do/"
quietly do directory`i'.do
}

cd "/Users/feilu/Downloads/directory/"
use directory1987.dta
append using directory1988.dta, force
append using directory1989.dta, force
append using directory1990.dta, force
append using directory1991.dta, force
append using directory1992.dta, force
append using directory1993.dta, force
append using directory1994.dta, force
append using directory1995.dta, force
append using directory1996.dta, force
append using directory1997.dta, force
append using directory1998.dta, force
append using directory1999.dta, force
append using directory2000.dta, force
append using directory2001.dta, force
append using directory2002.dta, force
append using directory2003.dta, force
append using directory2004.dta, force
append using directory2005.dta, force
append using directory2006.dta, force
append using directory2007.dta, force
append using directory2008.dta, force
append using directory2009.dta, force
append using directory2010.dta, force
append using directory2011.dta, force
append using directory2012.dta, force
append using directory2013.dta, force
append using directory2014.dta, force
append using directory2015.dta, force
append using directory2016.dta, force
append using directory2017.dta, force
append using directory2018.dta, force
append using directory2019.dta, force
append using directory2020.dta, force
append using directory2021.dta, force
append using directory2022.dta, force

gen observation=1
bys unitid: egen totalyears=sum(observation)
keep unitid year totalyears instnm city carnegie stabbr fips obereg fice sector iclevel control affil hloffer

drop if sector!=1 & sector!=2
bys unitid: egen carnegie1=max(carnegie)
drop if carnegie1<10 | carnegie1>32

xtset unitid year

save "/Users/feilu/Downloads/master_list/directorymaster_new_2022.dta", replace
