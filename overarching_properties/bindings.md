# Bindings

**Desired behavior (DeB):** The ADIMA system shall identify devices, i.e., the color of an LED using its electrical properties during runtime with an accuracy of 100% (-1e-6). It must ensure reliability by eliminating any single point of failure. Additionally, the system shall ignore LEDs that are not in good condition and generate a report detailing the issue.

**Intended behavior (DIBa):** The intended behaviors for DAL A are recorded by relevant data, the required performance, memory requirements, and generalization requirements. This is grouped as high-level intent plus low-level intent.

**Intended behavior (DIBd):** The intended behaviors for DAL D are recorded by data distribution and the required performance. This is grouped as high-level intent. Device: Any peripheral connected to the IMA hardware module.

**Data:** Refers to the input information used to train, test, and validate models. It consists of arrays for current and voltage that represent electrical phenomena, and a label that indicates the color and health status of the LED. The current vs. voltage curve is specific to each type of LED color, varies with age and changes with health status of the LED.

**ODD:** The Operational Design Domain defines the specific conditions and environments where ADIMA is designed to operate as intended. Reference to table. Representativeness of the data refers to how accurately a dataset reflects the characteristics and diversity of the entire ODD.

**Foreseeable operational conditions (FOC):** are defined by the ODD and additional possible conditions that have not been represented in the model development.

**Implementation:** Implementation is the integration of the entire ADIMA application (classification network, autoencoder, and integration software) within the ARINC653 partition on the actual IMA hardware module. All runtime data for this implementation comes from the actual IMA module interfaces.

**Nominal conditions:** LEDs from a given supplier defined in the ODD Off-nominal conditions: LEDs from a given supplier defined in the ODD but with altered characteristics which include aging or cable breaks.

**Outside of ODD conditions:** Any devices not specified in ODD, e.g., motors, LEDs from other suppliers, or other LED colors.
