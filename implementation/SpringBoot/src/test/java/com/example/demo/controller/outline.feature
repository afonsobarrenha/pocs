Feature: annotation 
#This is how background can be used to eliminate duplicate steps 

Background: 
	User navigates to Facebook 
  	Given I am on Facebook login page 
	
	#Scenario with AND 
Scenario: 
	When I enter username as "tom" 
	And I enter password as "jerry@abc.com" 
	Then Login should fail 