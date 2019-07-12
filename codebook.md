## Getting and Cleaning Data Project
### Code book for tidy_data

#### Activity
        Type of activity performed by subject
                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING
                
#### Subject
        Identifier assigned to each subject used in the experiment
                1..30   integer   


#### All other variables
        Give the average of some measurement for a particluar activity and subject.
                [-1, 1] numeric
                
        The following key can be used to interpret what measurement was averaged and stored in each variable name based on the combines terms.

| Term                  | Interpretation                |
| -------------------   | ----------------              |
| Time                  | Time domain signal            |      
| Frequency             | Frequency domain signal       |
| BodyAcceleration      | Body Accelaration signal      |
| GravityAcceleration   | Gravity Accelaration signal   |
| Mean                  | Mean                          |
| StandardDeviation     | Standard Deviation            |
| Jerk                  | 
| X                     | Signal measured in the X direction     |
| Y                     | Signal measured in the Y direction     |
| Z                     | Signal measured in the Z direction     |


[3] "TimeBodyAccelerationMeanX_Average"                                 
 [4] "TimeBodyAccelerationMeanY_Average"                                 
 [5] "TimeBodyAccelerationMeanZ_Average"                                 
 [6] "TimeBodyAccelerationStandardDeviationX_Average"                    
 [7] "TimeBodyAccelerationStandardDeviationY_Average"                    
 [8] "TimeBodyAccelerationStandardDeviationZ_Average"                    
 [9] "TimeGravityAccelerationMeanX_Average"                              
[10] "TimeGravityAccelerationMeanY_Average"                              
[11] "TimeGravityAccelerationMeanZ_Average"                              
[12] "TimeGravityAccelerationStandardDeviationX_Average"                 
[13] "TimeGravityAccelerationStandardDeviationY_Average"                 
[14] "TimeGravityAccelerationStandardDeviationZ_Average"                 
[15] "TimeBodyAccelerationJerkMeanX_Average"                             
[16] "TimeBodyAccelerationJerkMeanY_Average"                             
[17] "TimeBodyAccelerationJerkMeanZ_Average"                             
[18] "TimeBodyAccelerationJerkStandardDeviationX_Average"                
[19] "TimeBodyAccelerationJerkStandardDeviationY_Average"                
[20] "TimeBodyAccelerationJerkStandardDeviationZ_Average"                
[21] "TimeBodyAngularVelocityMeanX_Average"                              
[22] "TimeBodyAngularVelocityMeanY_Average"                              
[23] "TimeBodyAngularVelocityMeanZ_Average"                              
[24] "TimeBodyAngularVelocityStandardDeviationX_Average"                 
[25] "TimeBodyAngularVelocityStandardDeviationY_Average"                 
[26] "TimeBodyAngularVelocityStandardDeviationZ_Average"                 
[27] "TimeBodyAngularVelocityJerkMeanX_Average"                          
[28] "TimeBodyAngularVelocityJerkMeanY_Average"                          
[29] "TimeBodyAngularVelocityJerkMeanZ_Average"                          
[30] "TimeBodyAngularVelocityJerkStandardDeviationX_Average"             
[31] "TimeBodyAngularVelocityJerkStandardDeviationY_Average"             
[32] "TimeBodyAngularVelocityJerkStandardDeviationZ_Average"             
[33] "TimeBodyAccelerationMagnitudeMean_Average"                         
[34] "TimeBodyAccelerationMagnitudeStandardDeviation_Average"            
[35] "TimeGravityAccelerationMagnitudeMean_Average"                      
[36] "TimeGravityAccelerationMagnitudeStandardDeviation_Average"         
[37] "TimeBodyAccelerationJerkMagnitudeMean_Average"                     
[38] "TimeBodyAccelerationJerkMagnitudeStandardDeviation_Average"        
[39] "TimeBodyAngularVelocityMagnitudeMean_Average"                      
[40] "TimeBodyAngularVelocityMagnitudeStandardDeviation_Average"         
[41] "TimeBodyAngularVelocityJerkMagnitudeMean_Average"                  
[42] "TimeBodyAngularVelocityJerkMagnitudeStandardDeviation_Average"     
[43] "FrequencyBodyAccelerationMeanX_Average"                            
[44] "FrequencyBodyAccelerationMeanY_Average"                            
[45] "FrequencyBodyAccelerationMeanZ_Average"                            
[46] "FrequencyBodyAccelerationStandardDeviationX_Average"               
[47] "FrequencyBodyAccelerationStandardDeviationY_Average"               
[48] "FrequencyBodyAccelerationStandardDeviationZ_Average"               
[49] "FrequencyBodyAccelerationJerkMeanX_Average"                        
[50] "FrequencyBodyAccelerationJerkMeanY_Average"                        
[51] "FrequencyBodyAccelerationJerkMeanZ_Average"                        
[52] "FrequencyBodyAccelerationJerkStandardDeviationX_Average"           
[53] "FrequencyBodyAccelerationJerkStandardDeviationY_Average"           
[54] "FrequencyBodyAccelerationJerkStandardDeviationZ_Average"           
[55] "FrequencyBodyAngularVelocityMeanX_Average"                         
[56] "FrequencyBodyAngularVelocityMeanY_Average"                         
[57] "FrequencyBodyAngularVelocityMeanZ_Average"                         
[58] "FrequencyBodyAngularVelocityStandardDeviationX_Average"            
[59] "FrequencyBodyAngularVelocityStandardDeviationY_Average"            
[60] "FrequencyBodyAngularVelocityStandardDeviationZ_Average"            
[61] "FrequencyBodyAccelerationMagnitudeMean_Average"                    
[62] "FrequencyBodyAccelerationMagnitudeStandardDeviation_Average"       
[63] "FrequencyBodyAccelerationJerkMagnitudeMean_Average"                
[64] "FrequencyBodyAccelerationJerkMagnitudeStandardDeviation_Average"   
[65] "FrequencyBodyAngularVelocityMagnitudeMean_Average"                 
[66] "FrequencyBodyAngularVelocityMagnitudeStandardDeviation_Average"    
[67] "FrequencyBodyAngularVelocityJerkMagnitudeMean_Average"             
[68] "FrequencyBodyAngularVelocityJerkMagnitudeStandardDeviation_Average"