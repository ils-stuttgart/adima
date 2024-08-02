# MLC-ADIMA OPRA Argument

## Introduction

In this subsection, we present an OP-related argument (OPRA) for the Machine Learning Component (MLC)-ADIMA system used in the Emergency Lighting Systems, which has been assigned DAL A. The argument structure is shown in Figure \ref{fig:adima-ops}. Blue propositions represent those addressed during the development process of ADIMA. Red dotted propositions indicate those that were not addressed during ADIMA's development but are necessary to support OPs; thus, they are considered defeaters in the argument. At the end, we provide a table of evidences that supports the leaves of the argument.

MLC-ADIMA refers to the machine learning component within the ADIMA System. While the OPRA provides compliance methods for MLC-ADIMA, the rest of the system follows the existing standards. Intent is divided into high-level and low-level categories. High-level Intent, reflecting high-level requirements, specifies what the MLC-ADIMA needs to achieve by detailing the required performance criteria, the ODD where these criteria must be met, and the necessary data distributions. At the low-level Intent, we refine the high-level intent by outlining non-functional requirements such as memory and time allocation, model requirements, generalization requirements, and data management. Model requirements define properties of the training process, including hyperparameters, training procedures, training data, and initialization. Generalization requirements specify how to handle relevant data not seen during training, both within and outside the ODD, using an autoencoder for monitoring in and out-of-distribution data.

Correctness proposes a requirement-driven testing approach, addressing the requirements defined in the Intent. It is important to note that during testing, the testing data must be clearly defined. Data distributions and evaluation metrics are specified within the test cases to support this approach. All testing activities must be performed on the target hardware using real data, not simulations. In MLC-ADIMA, unintended behaviors resulting from the use of neural networks are identified as issues related to stability, generalization, out-of-distribution data, data drift, and the incompleteness of data or ODD. While the majority of these issues are addressed in the Intent, additional activities have been added to manage the remaining concerns. These activities include demonstrating the model's stability in the presence of noise, understanding the model through sensitivity analysis using explainability methods, and analyzing all outliers to provide thorough reasoning.

## Structure

- [Bindings](bindings.md)
- [Correctness](correctness.md)
- [Innocuity](innocuity.md)
- [Intent](intent.md)

