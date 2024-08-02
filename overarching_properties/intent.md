# Intent

**Believing**  
MLC-ADIMA holds the Intent OP{Intent}  

**Is justified by applying**  
MLC-ADIMA defined high-level intended behavior is correct and complete with respect to the DeB.  

**To these premises**  
{IT-HighIntent} MLC-ADIMA defined high-level intended behavior is correct and complete with respect to the DeB.  
{IT-LowIntent} MLC-ADIMA defined low-level intended behavior is correct and complete with the high-level intent  

**Believing**  
MLC-ADIMA defined high-level intended behavior is correct and complete with respect to the DeB.  

**To these premises**  
{IT-ODD} The ODD is correct and complete with respect to the DeB  
{IT-Data} Data requirements satisfy the ODD  
{IT-Performance} MLC-ADIMA has an accuracy of 100% for data within the ODD  

**Believing**  
{IT-ODD} The ODD is correct and complete with respect to the DeB  

**To these premises**  
{IT-ImpactElect} List of factors that can affect electrical phenomena.  
{IT-ML} List of factors that can affect machine learning model performance.  
{IT-NonImpactFullSet} List of factors that do not impact the MLC-ADIMA estimation  
{IT-ODDDef} Definition of the ODD parameters (including ranges and distributions) for the subset of factors that do affect performance  

**Believing**  
{IT-Data} Data is representative of the ODD  

**To these premises**  
{IT-Sets} The data set is randomly divided into training (80%) and cross-validation (20%)  
{IT-Distribution} Training set and cross-validation sets show the same data distribution of the ODD  
{IT-Measurement} 20 measurements are acquired for the same device  

**Believing**  
MLC-ADIMA defined low-level intended behavior is correct and complete with the high-level intent {IT-HighIntent}  

**To these premises**  
{IT-NonFunc} Non-functional requirements are correct and complete  
{IT-Model} Model requirements are correct and complete  
{IT-Generalization} Generalization requirements are correct and complete  

---

# Intent - Cont.

**Believing**  
Non-functional requirements are correct and complete {IT-NonFunc}  

**To these premises**  
{IT-Time} Execution time requirements are correct and complete  
{IT-Mem} Memory requirements are correct and complete  

**Believing**  
{IT-Model} Model requirements are correct and complete  

**To these premises**  
{IT-Ini} Model initialization has been captured  
{IT-HyperP} Hyper-parameters provide a good balance between variance and bias  
{IT-TrainingProcess} Risk of the training process has been mitigated  
{IT-DataSatosfyReq} Data satisfies intended distribution  

**Believing**  
Generalization requirements are correct and complete {IT-Generalization}  

**Is justified by applying**  
Any part of the executable MLC-ADIMA that is not required by the DIB has no unacceptable impact.  

**To these premises**  
{IT-Autoencoder} Autoencoder within the MLC-ADIMA systems identifies off-nominal devices with a false negative rate of x  
{IT-Monitoring} Monitoring requirements for identifying changes within the ODD and the data distribution  
{IT-Unseedata} Relevant unseen data has been identified  
