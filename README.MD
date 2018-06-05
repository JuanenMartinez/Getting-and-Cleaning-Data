



1. INTRODUCTION
===============

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data 
and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables
from the time and frequency domain.

2. INPUT FILES 
==============
The signals of the experiment were processed and stored into the following files:

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.


3. THE SCRIPT
==============

The flow of the R code is described below

- Step 1. Read the input training datafiles. Put the names of variables include in "features.txt" file. Merge the data frames with cbind()
			Input: train/subject_train.txt, train/X_train.txt, train/y_train.txt
			Output: data frame -> train
- Step 2. Read the input test datafiles. Put the names of variables include in "features.txt" file.  Merge the data frames with cbind()
			Input: test/subject_test.txt, test/X_test.txt, test/y_test.txt
			Output: data frame -> test
- Step 3. Merge both data frames with rbind()			
			Input: Data frames -> train test
			Output: Data frame -> dataSamsung
- Step 4. Create factor variable with the names of the activities included in activity_labels.txt
			Input: Data frames -> dataSamsung
			Output: Data frame -> dataSamsung
- Step 5. Rename variables in dataSamsung data frame with descriptive variable names using names() and sub()
			Input: Data frames -> dataSamsung
			Output: Data frame -> dataSamsung
- Step 6. Create tidy data set with the average of each variable for each activity and each subject.
			Input: Data frames -> dataSamsung
			Output: Data frame -> avgDataSamsung
		First the code melt dataSamsung into meltDataSamsung using melt() in the reshape2 package
		Then it calculates average for each variable for each activity and each signal into avgMeltDataSamsung using ddply() in the plyr package 
		Finally it cast the file into tidy format using dcast() in the reshape2 package
- Step 7. Export avgDataSamsung data frame into text plain file "avgDataSamsung.txt"
			Input: Data frames -> avgDataSamsung
			Output: text file  -> avgDataSamsung.txt

4. avgDataSamsung.txt CODEBOOK 			

	VARIABLE: volunteer.id
	VALUES:	  1:30 -> Id of the volunteer

	VARIABLE: activity.id
	VALUES:	  1:6 -> Id of the activity	
	
	VARIABLE: activity.values
	VALUES:	  "WALKING"
			  "WALKING_UPSTAIRS"
			  "WALKING_DOWNSTAIRS"
			  "SITTING"
			  "STANDING"
			  "LAYING"
		
	VARIABLES:  
		"Body.component.acceleration.mean().Direction.X"                 
		"Body.component.acceleration.mean().Direction.Y"                 
		"Body.component.acceleration.mean().Direction.Z"                 
		"Body.component.acceleration.std().Direction.X"                  
		"Body.component.acceleration.std().Direction.Y"                  
		"Body.component.acceleration.std().Direction.Z"                  
		"Gravity.component.acceleration.mean().Direction.X"              
		"Gravity.component.acceleration.mean().Direction.Y"              
		"Gravity.component.acceleration.mean().Direction.Z"              
		"Gravity.component.acceleration.std().Direction.X"               
		"Gravity.component.acceleration.std().Direction.Y"               
		"Gravity.component.acceleration.std().Direction.Z"               
		"Body.component.acceleration.Jerk.Signals.mean().Direction.X"    
		"Body.component.acceleration.Jerk.Signals.mean().Direction.Y"    
		"Body.component.acceleration.Jerk.Signals.mean().Direction.Z"    
		"Body.component.acceleration.Jerk.Signals.std().Direction.X"     
		"Body.component.acceleration.Jerk.Signals.std().Direction.Y"     
		"Body.component.acceleration.Jerk.Signals.std().Direction.Z"     
		"Angular.velocity.mean().Direction.X"                            
		"Angular.velocity.mean().Direction.Y"                            
		"Angular.velocity.mean().Direction.Z"                            
		"Angular.velocity.std().Direction.X"                             
		"Angular.velocity.std().Direction.Y"                             
		"Angular.velocity.std().Direction.Z"                             
		"Angular.velocity.Jerk.Signals.mean().Direction.X"               
		"Angular.velocity.Jerk.Signals.mean().Direction.Y"               
		"Angular.velocity.Jerk.Signals.mean().Direction.Z"               
		"Angular.velocity.Jerk.Signals.std().Direction.X"                
		"Angular.velocity.Jerk.Signals.std().Direction.Y"                
		"Angular.velocity.Jerk.Signals.std().Direction.Z"                
		"Body.component.acceleration.Magnitude.mean()"                   
		"Body.component.acceleration.Magnitude.std()"                    
		"Gravity.component.acceleration.Magnitude.mean()"                
		"Gravity.component.acceleration.Magnitude.std()"                 
		"Body.component.acceleration.Jerk.Signals.Magnitude.mean()"      
		"Body.component.acceleration.Jerk.Signals.Magnitude.std()"       
		"Angular.velocity.Magnitude.mean()"                              
		"Angular.velocity.Magnitude.std()"                               
		"Angular.velocity.Jerk.Signals.Magnitude.mean()"                 
		"Angular.velocity.Jerk.Signals.Magnitude.std()"                  
		"FFT.Body.component.acceleration.mean().Direction.X"             
		"FFT.Body.component.acceleration.mean().Direction.Y"             
		"FFT.Body.component.acceleration.mean().Direction.Z"             
		"FFT.Body.component.acceleration.std().Direction.X"              
		"FFT.Body.component.acceleration.std().Direction.Y"              
		"FFT.Body.component.acceleration.std().Direction.Z"              
		"FFT.Body.component.acceleration.Jerk.Signals.mean().Direction.X"
		"FFT.Body.component.acceleration.Jerk.Signals.mean().Direction.Y"
		"FFT.Body.component.acceleration.Jerk.Signals.mean().Direction.Z"
		"FFT.Body.component.acceleration.Jerk.Signals.std().Direction.X" 
		"FFT.Body.component.acceleration.Jerk.Signals.std().Direction.Y" 
		"FFT.Body.component.acceleration.Jerk.Signals.std().Direction.Z" 
		"FFT.Angular.velocity.mean().Direction.X"                        
		"FFT.Angular.velocity.mean().Direction.Y"                        
		"FFT.Angular.velocity.mean().Direction.Z"                        
		"FFT.Angular.velocity.std().Direction.X"                         
		"FFT.Angular.velocity.std().Direction.Y"                         
		"FFT.Angular.velocity.std().Direction.Z"                         
		"FFT.Body.component.acceleration.Magnitude.mean()"               
		"FFT.Body.component.acceleration.Magnitude.std()"                
		"FFT.Body.component.acceleration.Jerk.Signals.Magnitude.mean()"  
		"FFT.Body.component.acceleration.Jerk.Signals.Magnitude.std()"   
		"FFT.Angular.velocity.Magnitude.mean()"                          
		"FFT.Angular.velocity.Magnitude.std()"                           
		"FFT.Angular.velocity.Jerk.Signals.Magnitude.mean()"             
		"FFT.Angular.velocity.Jerk.Signals.Magnitude.std()"
	VALUES: average for each variable for each activity and each signal. The names area auto descriptives.
	
				