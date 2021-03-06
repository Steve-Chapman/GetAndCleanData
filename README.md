# GetAndCleanData


###run_analysis.R 
An R script file that will produce a tidy data set of means of averages and standard deviations of Samsung smartphone datasets

* Steve Chapman
* Getting and Cleaning Data Class Project  May, 2015
* Coursera / Johns Hopkins Data Science Specialization

###Required Input files:
#### IMPORTANT - the files should be in the working directory with the R script 

* activity_labels.txt - Lookup table for activity categories (Running, Walking etc.)
* features.txt - Lookup table for variables (pre-processed) from the fitness device
* subject_test.txt - numeric vars linking observation to a subject
* subject_train.txt  
* X_test.txt - sensor data
* X_train.txt
* y_text.txt - variables linking numerically coded activities to each observation
* y_train.txt
      
       The files are available UCI Machine Learning Repository at the following link:
       https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
       Extract the listed files above and place the in the working directory with run_analysis.R
       Then, at the R command prompt run:

           source(run_analysis.R) 
          
       to create the output file.
       
       Further information regarding the design of this study and the nature of the source data can be found in the
       files readme.txt and features_info.txt (included in the zip file above)

###Output File: SamsungFitnessMeans.txt
       A file containing 180 rows of means derived from Samsung smartwatch accelerometer
       and gyroscope data (30 subjects * 6 different measurement activities), and 79
       means of average and standard deviation data.
       
To examine the output file execute the following R command:

      SamsungFitnessMeans <- read.table("SamsungFitnessMeans.txt")
      
The table SamsungFitness is a tidy dataset with:

* One variable per column
* One observation of the measure variables per row.
* Two id variables, and 79 measure variables (see the CodeBook.md for explanation)

       


