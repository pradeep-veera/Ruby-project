require 'date'

class Person
	@id = 0
	@name = ""    
	@salary = 0.0    	
	@gender = ""          
	@position = "" 
	@hiredate = "" 

	$EmpList2014 = Array.new();
	$MaleList =  Array.new();
	$FemaleList =  Array.new();
	$FemaleHighSalary = 0.0
	$FemaleHiredate = ""

	def initialize (id, name, salary, gender, position, hiredate)
		@id = id 
		@name = name
		@salary = salary
		@gender = gender				
		@position = position
		@hiredate = hiredate		
	end
	
	# Displays Hiredate for women with highest salary (with and without formater)
	def getDate(formater)
		puts ""
		date = ""
		date = Date.parse($FemaleHiredate.to_s)
		if (formater)
			puts "With formater"
			puts "Hireddate of the woman with the highest salary of $#{$FemaleHighSalary} :"
			puts "#{date.day}.#{date.month}.#{date.year}"
		else
			puts "Without formater"
			puts "Hireddate of the woman with the highest salary of $#{$FemaleHighSalary} :"
			puts $FemaleHiredate
		end
	end

	# Function to get persons hired in the year 2014
	def EmpList2014()
		puts ""
		puts "Generating List of Persons hired in the year 2014\n"
		count = @id.size
		yeartocompare = 2014
		if(count > 0)
			while count > 0 do
				count = count-1		
				if Date.parse(@hiredate[count].to_s).year == yeartocompare
					$EmpList2014.push(@id[count])
				end	
			end
		end	
	end
	
	
	# Function to check Gender from list of year 2014
	def genderList()
		EmpList2014()
		puts " "
		puts "Checking the Gender for the persons in the year 2014\n"
		index = 0;
		count = 0;
		while count < $EmpList2014.count
			index = ($EmpList2014[count].to_i)-1
			case @gender[index]
			when "M"
				$MaleList.push(index)
			when "F"
				$FemaleList.push(index)
			end
			count = count+1
		end
	end
  

	# Function to select max salary of Men and Women
	def top10salary(list2014)	
		i = 0
		max = 0;
		count = 0
		index = 0;		
		temp_index = 0		
		sal = Array.new();		
		empTop10List = Array.new()
		sal = @salary.dup

		while empTop10List.count < 10  do
			while count < list2014.count do 
				i = (list2014[count].to_i)
				if max <= sal[i].to_i
					max = sal[i].to_i
					index = i
				end
				count = count+1;
			end	
			if (empTop10List.count != 10)&&(count == list2014.count)
				max = 0
				count = 0
			end			
			if index != temp_index
				empTop10List.push(index)
				sal[index] = "" 
				temp_index = index 
			end	
		end
		DisplayEmpDetails(empTop10List)		
	end
	
	# Function to display Name and Salary of top 10 Persons
	def DisplayEmpDetails(list=[])
		index = list[0].to_i;
		index2 = 0
		puts ""
		if @gender[list[index2].to_i] = "F"
			$FemaleHighSalary = @salary[list[index2].to_i]
			$FemaleHiredate = @hiredate[list[index2].to_i]
		end	
		while index2 < list.count
			index = list[index2].to_i				
			puts "#{@name[index]} ($#{@salary[index]})"
			index2 = index2 + 1
		end		
	end
 
	#Function to print details of Person for both the genders
	def PersonDetails()
		genderList()
		puts ""
		puts "Top Male List regarding salary\n"
		top10salary($MaleList);
		puts ""
		puts "Top Female List regarding salary\n"
		top10salary($FemaleList);
	end		
end