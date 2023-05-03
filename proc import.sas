
proc import datafile="E:\base-guide-practice-data\cert\boots.xlsx" dbms=xlsx out=srs replace;
getnames=yes;
run;
proc print data=srs;
run;


options validvarname=v7;
proc import datafile="E:\base-guide-practice-data\cert\boots.xlsx" dbms=xlsx out=srs1 replace;
getnames=yes;
sheet=boot;
run;
proc print data=srs1;
run;


proc import datafile="E:\base-guide-practice-data\cert\delimiter.txt" out=srdf dbms=dlm replace;
getnames=yes;
delimeter="&";
run;
proc import datafile="E:\base-guide-practice-data\cert\boot.csv" out= dss dbms=csv replace;
getnames=no;
run;

data sesl;
set dss;
where var1='Africa' or var1='Canada';
run;
