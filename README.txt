Course: COL333(Autumn'17): Artificial Intelligence
Assignment 4: FUZZY INFERENCE SYSTEM IN MATLAB
Creators: NAVREET KAUR (2015TT10917), ADITYA SAHDEV(2015CS10207)


This assignment implements a FIS (Fuzzy Inference System) using MATLAB and evaluates the overall performance of a student. The evaluation criteria are based on the following three input parameters. The output of the system is the performance score of a given student in range [0, 10].
Inputs:
• Academics: Performance in academics are measured by CGPA (scale 0-10)
• Sports: Total number of games won or participated
• Co-curricular activities: the number of certificates (participation and winning certificate).


Files:
- FIS.m : MATLAB(main) file to be run
- best_student.fis : Fuzzy Inference System file used in FIS.m

Instructions:
Run FIS.m in MATLAB

The program asks the user to (1) input number of students which are to be compared, and (2) inputs for each student.
Given an input in the form of CGPA, #games won/participated, #certificates of winning and participation, the system returns
a value in the range [0,10] using FIS which reflects the score of overall performance of the student. 
This is done for each student. The student whose score is maximum is finally printed.
		
Details of the FIS:
- OR: max
- AND: min
- IMPLICATION: min
- AGGREGATION: max
- DEFUZZIFICATION: centroid


INPUT VARIABLES:
	1. Academic: Performance in academics are measured by CGPA (scale 0-10)
		Range[0, 10] 
		Linguistic Variables:
			POOR 		Membership function : Pi-shaped
			AVG 		Membership function : Pi-shaped  
			GOOD 		Membership function : Pi-shaped 
			EXCELLENT 	Membership function : Pi-shaped 
	2. Sports: Total number of games won or participated
		Range[0, 10] 
		Linguistic Variables:
			POOR 		Membership function : Generalised Bell-shaped 
			AVG 		Membership function : Pi-shaped 
			GOOD 		Membership function : S-shaped 
	3. CCA (Co-curricular activities): number of certificates (participation and winning certificate)
		Range[0, 10]
		Linguistic Variables:
			POOR 		Membership function : Gaussian
			AVG 		Membership function : Gaussian
			GOOD 		Membership function : Pi-shaped


OUTPUT VARIABLES:
	Performance:
		Linguistic Variables:
			POOR 		Membership function : Triangular shaped
			AVG 		Membership function : Pi-shaped
			GOOD 		Membership function : Triangular shaped
			EXCELLENT 	Membership function : Pi-shaped


USE OF MEMBERSHIP FUNCTIONS:
	1. Pi- shaped membership function is used when the value is true in a broad range
	2. Triangular shaped membership function is used when the truth value is more concentrated 
	at a point
	3. Gaussian and Bell shaped membership functions are used where the truth value is concentrated
	at a point but is also spread about that point in a very small range

RULES:
	1. If (academic is poor) then (performance is poor).
	2. If (academic is excellent) and (sports is not poor) and (cca is not poor) then (performance is excellent).
	3. If (academic is avg) and (sports is not poor) and (cca is not poor) then (performance is avg).
	4. If (academic is good) and (sports is not poor) and (cca is not poor) then (performance is good).
	5. If (academic is not poor) and (sports is good) and (cca is good) then (performance is good).
	6. If (academic is not excellent) and (sports is poor) and (cca is poor) then (performance is poor).
	7. If (academic is good) and (sports is not good) and (cca is not good) then (performance is avg).
	8. If (academic is good) and (sports is good) and (cca is good) then (performance is excellent).
