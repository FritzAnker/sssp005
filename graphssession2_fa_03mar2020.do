
*Advanced Data Management and Visualisation
*Fritz Anker
*Date Ceated: 19/02/2020
*Date Edited: 03/03/2020

// Practical Exercise	

* Explore the relationship between passenger class and survival

* 	(1) Create a bar graph of survival rates by passenger class

* 	(2) Create a scatter plot of age versus fare, using colour to represent
*		survival and shape to represent passenger class

* Create a new syntax file using your template.  You can copy & paste and edit syntax from above
* to build up your graphs. Upload your syntax file to GitHub when  you have finished.

* Remember to think about the use of text, colour, shape and labelling in
* producing your graphs.



*Graph Nr. 1

*Survival Rates and Passenger Class

graph bar (mean) fsurv msurv, over(pclass) bar(1, color(cranberry))  bar(2, color(green)) ///
	legend(label(1 "Female") label(2 "Male")) ///
	title("Survival Rate by Gender and Passenger Class") subtitle("A bar graph of survival") ///
	note("Produced: $S_TIME  $S_DATE") caption("This is historical data derived from the passenger records.")	///
	b1title("Passenger Class")	///
	ytitle("Proportion surviving") ///
	graphregion(fcolor(white))

	

*Graph Nr. 2

* Scatter plot of age versus fare, using colour to represent
*		survival and shape to represent passenger class


twoway (scatter age fare if pclass==1 & survived==1, msize(small) mcolor(cranberry%50)  msymbol(circle)) ///
		(scatter age fare if pclass ==2 & survived==1, msize(small) mcolor(blue%50) msymbol(circle)) ///
		(scatter age fare if pclass ==3 & survived==1, msize(small) mcolor(green%50) msymbol(circle)) ///
	   (scatter age fare if pclass==1 & survived==0, msize(small) mcolor(cranberry) msymbol(X)) ///
	   (scatter age fare if pclass==2 & survived==0, msize(small) mcolor(blue) msymbol(X) ) ///
	   (scatter age fare if pclass==3 & survived==0, msize(small) mcolor(green) msymbol(X) ) ///
	   if fare < 350 , ///
	legend(label(1 "1st Class Survived") label(2 "2nd Class Survived") label(3 "3rd Class Survived") label(4 "1st Class Died") label(5 "2nd Class Died") label(6 "3rd Class Died")) ///
	title("Titanic Passengers: Age versus Fare") subtitle("A scatter plot of age and fare paid for men and women") ///
	note("Produced: $S_TIME  $S_DATE") caption("This is historical data derived from the passenger records.")	///
	ytitle("Passenger age (years)") xtitle("Passenger Fare Paid (£)") ///
	graphregion(fcolor(white))
