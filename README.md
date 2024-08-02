# ADIMA: AI-enabled Automated Peripheral Detection System

## Purpose

This project presents a detailed case study of ADIMA, an AI-enabled system designed for automated peripheral detection based on electrical properties. 
The primary goal is to highlight the main challenges in certifying AI under classical software certification standards. 
ADIMA is designed to operate on Integrated Modular Avionics (IMA) platforms and is intended for both highly safety-critical functions, such as cabin emergency lighting (DAL A), and less critical functions like cabin lighting (DAL D).

## Structure

The repository is organized into the following directories:

- **data/**: Contains annotated training and testing data.
- **requirements/**: Contains requirements in table format for high-level, safety, implementation, and data requirements.
- **graphs/**: Contains analysis graphs, confusion matrices, etc.
- **export/**: Contains the script for exporting weights and biases from the Keras model.
- **implementation/**: Contains the source code for implementing ADIMA on IMA modules.

## Getting Started

To get started with the ADIMA project, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/bastiedotorg/adima.git
    cd adima
    ```

2. **Explore the Data**:
    - Navigate to the `data/` directory to view the annotated training and testing data used for the model.

3. **Review Requirements**:
    - Go through the `requirements/` directory to understand the high-level, safety, implementation, and data requirements.

4. **Analyze Graphs**:
    - Check the `graphs/` directory for analysis graphs, confusion matrices, and other visual data representations.

5. **Export Weights and Biases**:
    - Use the scripts in the `export/` directory to export model weights and biases from the Keras model.

6. **Implementation**:
    - The `implementation/` directory contains the source code needed to implement ADIMA on IMA modules.

## System Description and Development Process

The AI-enabled ADIMA system is designed for automated peripheral detection based on electrical properties using an autoencoder and a classification network. 
It operates on an IMA platform with multiple IMA devices connected to peripherals like LEDs, sensors, motors, or bus systems. ADIMA's primary goals are to:

- Determine if the connected peripheral is among the list of acceptable peripherals.
- Identify a peripheral without additional hardware.

### Data-Centric Approach

ADIMA uses a data-centric approach by comparing the current-voltage curves of peripherals to reference values obtained from laboratory data. 
LEDs, being simple peripherals with distinct current-voltage characteristics, are used as a proof of concept for precise peripheral identification. 
The entire current-voltage curve is used for comparison to tolerate individual measurement errors.

### Operation

The ADIMA system detects LED peripherals and assigns suitable tasks, controlling the peripherals cyclically during normal operation. 
It addresses potential wiring issues by ensuring correct peripheral connections.

## Contributions and Feedback

We welcome contributions and feedback. Please fork the repository, create a branch, and submit a pull request with your changes. For any issues or questions, feel free to open an issue on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## References

The entire dataset, code base, and requirements are available on GitHub: [ADIMA GitHub Repository](https://github.com/bastiedotorg/adima).

---


