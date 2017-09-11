<h1> Generate top Male and Female with highest salary</h1>

<h2>Instructions and Sample output:</h2>
===============================

FILES :
------
	main.rb		- Main Ruby file
	person.rb	- Person class.
	XMLfile.xml - external XML file which needs to be parsed.

	main.rb:
	-------
		- XML file is passed as an argument for the function "parsexml"
		- Parse the XML tree.
		- invoke Person class.
		
	person.rb:
	---------
		- Filters the Persons joined in the year 2014
		- Filters the Persons according to gender.
		- Displays the list of top 10 persons (Male and Female) as per Salary.
		- Displays the Hiredate of Top Female with and without formater.
		
	XMLfile.xml:
	-----------	
		- XML Data from " http://catalog.data.gov/dataset/employee-salaries-2014".
		
==============================================================================	
		
EXCUTION :
---------

	- Place all the three files in same directory.
	- Open ruby command prompt to saved directory.
	- Excute ruby file (main.rb) in ruby prompt.
		i,e ruby main.rb
		

===============================================================================		
		
		
SAMPLE OUTPUT:
--------------
		
H:\Ruby\Ontology>ruby main.rb
Parsing XML file
   Row indexes..
   Name..
   Salary..
   Gender..
   Position..
   Hired Date..

Generating List of Persons hired in the year 2014

Checking the Gender for the persons in the year 2014

Top Male List regarding salary

Roter, Phillip A ($144550.00)
Balasubramanian, Shanmuga Sundaram ($132676.25)
Jose, Saji ($132676.25)
Coble, Scott E ($131318.51)
Lawrence, Gregory B. ($125000.00)
Broglie, William F. ($123900.00)
Chiafari, Francis A ($123383.75)
Gyapong, Ohene O ($118400.00)
Hucker, Thomas G. ($113310.00)
Katz, Sidney A. ($113310.00)

Top Female List regarding salary

Michalak, Karen E. ($136500.00)
Williams, Kimberly K ($130095.00)
Conklin, Joana C ($123900.00)
Bass, Karen L ($109961.25)
Menon, Rekha ($99120.00)
Kobylski, Linda J. ($96642.00)
Fremont, Valerie ($96022.50)
Samman, Amy K ($94990.00)
Whims, Deborah A ($92925.00)
Hawes, Angelisa ($90860.00)

Without formater
Hireddate of the woman with the highest salary of $136500.00 :
2014-09-22

With formater
Hireddate of the woman with the highest salary of $136500.00 :
22.9.2014
