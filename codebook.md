## Getting and Cleaning Data Project
### Code book

#### Activity
Type of activity performed by subject.

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
Each variable gives the average of some measurement for a particluar activity and subject.
[-1, 1]  numeric
                
The following key can be used to interpret what measurement was averaged and stored in each variable name based on the combines terms.

| Term                  | Interpretation                |
| -------------------   | ----------------              |
| Time                  | Time domain signal            |      
| Frequency             | Frequency domain signal       |
| BodyAcceleration      | Body acceleration signal      |
| GravityAcceleration   | Gravity acceleration signal   |
| BodyAngularVelocity   | Body angular velocity signal  |
| Mean                  | Mean                          |
| StandardDeviation     | Standard deviation            |
| Jerk                  | Calculated from body acceleration or angular velocity|
| Magnitude             | Magnitude of the signal       |
| X                     | Signal measured in the X direction     |
| Y                     | Signal measured in the Y direction     |
| Z                     | Signal measured in the Z direction     |

##### List of the measurement variables:
* TimeBodyAccelerationMeanX_Average
* TimeBodyAccelerationMeanY_Average
* TimeBodyAccelerationMeanZ_Average
* TimeBodyAccelerationStandardDeviationX_Average
* TimeBodyAccelerationStandardDeviationY_Average
* TimeBodyAccelerationStandardDeviationZ_Average
* TimeGravityAccelerationMeanX_Average                     
* TimeGravityAccelerationMeanY_Average
* TimeGravityAccelerationMeanZ_Average
* TimeGravityAccelerationStandardDeviationX_Average
* TimeGravityAccelerationStandardDeviationY_Average
* TimeGravityAccelerationStandardDeviationZ_Average
* TimeBodyAccelerationJerkMeanX_Average                  
* TimeBodyAccelerationJerkMeanY_Average                             
* TimeBodyAccelerationJerkMeanZ_Average                             
* TimeBodyAccelerationJerkStandardDeviationX_Average
* TimeBodyAccelerationJerkStandardDeviationY_Average                
* TimeBodyAccelerationJerkStandardDeviationZ_Average                
* TimeBodyAngularVelocityMeanX_Average                 
* TimeBodyAngularVelocityMeanY_Average                              
* TimeBodyAngularVelocityMeanZ_Average                              
*   TimeBodyAngularVelocityStandardDeviationX_Average                  
*   TimeBodyAngularVelocityStandardDeviationY_Average                  
*   TimeBodyAngularVelocityStandardDeviationZ_Average                  
*   TimeBodyAngularVelocityJerkMeanX_Average                           
*   TimeBodyAngularVelocityJerkMeanY_Average                           
*   TimeBodyAngularVelocityJerkMeanZ_Average                           
*   TimeBodyAngularVelocityJerkStandardDeviationX_Average              
*   TimeBodyAngularVelocityJerkStandardDeviationY_Average              
*   TimeBodyAngularVelocityJerkStandardDeviationZ_Average              
*   TimeBodyAccelerationMagnitudeMean_Average                          
*   TimeBodyAccelerationMagnitudeStandardDeviation_Average             
*   TimeGravityAccelerationMagnitudeMean_Average                       
*   TimeGravityAccelerationMagnitudeStandardDeviation_Average          
*   TimeBodyAccelerationJerkMagnitudeMean_Average                      
*   TimeBodyAccelerationJerkMagnitudeStandardDeviation_Average         
*   TimeBodyAngularVelocityMagnitudeMean_Average                       
*   TimeBodyAngularVelocityMagnitudeStandardDeviation_Average          
*   TimeBodyAngularVelocityJerkMagnitudeMean_Average                   
*   TimeBodyAngularVelocityJerkMagnitudeStandardDeviation_Average      
*   FrequencyBodyAccelerationMeanX_Average                             
*   FrequencyBodyAccelerationMeanY_Average                             
*   FrequencyBodyAccelerationMeanZ_Average                             
*   FrequencyBodyAccelerationStandardDeviationX_Average                
*   FrequencyBodyAccelerationStandardDeviationY_Average                
*   FrequencyBodyAccelerationStandardDeviationZ_Average                
*   FrequencyBodyAccelerationJerkMeanX_Average                         
*   FrequencyBodyAccelerationJerkMeanY_Average                         
*   FrequencyBodyAccelerationJerkMeanZ_Average                         
*   FrequencyBodyAccelerationJerkStandardDeviationX_Average            
*   FrequencyBodyAccelerationJerkStandardDeviationY_Average            
*   FrequencyBodyAccelerationJerkStandardDeviationZ_Average            
*   FrequencyBodyAngularVelocityMeanX_Average                          
*   FrequencyBodyAngularVelocityMeanY_Average                          
*   FrequencyBodyAngularVelocityMeanZ_Average                          
*   FrequencyBodyAngularVelocityStandardDeviationX_Average             
*   FrequencyBodyAngularVelocityStandardDeviationY_Average             
*   FrequencyBodyAngularVelocityStandardDeviationZ_Average             
*   FrequencyBodyAccelerationMagnitudeMean_Average                     
*   FrequencyBodyAccelerationMagnitudeStandardDeviation_Average        
*   FrequencyBodyAccelerationJerkMagnitudeMean_Average                 
*   FrequencyBodyAccelerationJerkMagnitudeStandardDeviation_Average    
*   FrequencyBodyAngularVelocityMagnitudeMean_Average                  
*   FrequencyBodyAngularVelocityMagnitudeStandardDeviation_Average     
*   FrequencyBodyAngularVelocityJerkMagnitudeMean_Average              
*   FrequencyBodyAngularVelocityJerkMagnitudeStandardDeviation_Average 