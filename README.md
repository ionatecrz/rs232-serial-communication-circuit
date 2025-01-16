
# RS-232 Serial Transmission Circuit

## Project Description

This project focuses on designing a serial communication circuit using the RS-232 standard to transmit binary data from an FPGA board to a PC. Data is input via switches (SW7-SW0) and transmitted when the KEY3 button is pressed. The project also includes a comprehensive testbench to verify the transmitter's functionality before deploying it on the FPGA.

## Repository Contents

- **`db/`**: Contains compilation and synthesis files generated during development.
- **`images/`**: Includes block diagrams and simulation results.
- **`incremental_db/`**: Stores incremental compilation data.
- **`output_files/`**: Provides compilation reports and FPGA programming files (`.sof`, `.pof`).
- **`simulation/modelsim/`**: Contains ModelSim simulation files and scripts.

## Requirements

- **FPGA Development Board** (compatible with RS-232 communication)
- **ModelSim** for simulation
- **Quartus Prime** for synthesis and FPGA programming

## Usage Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/rs232-serial-communication-circuit.git
   cd rs232-serial-communication-circuit
   ```

2. **Run Simulation**:
   - Open ModelSim.
   - Load the simulation files from `simulation/modelsim/`.
   - Run the simulation scripts to verify the design.

3. **FPGA Programming**:
   - Open Quartus Prime.
   - Load the project and program the FPGA using the `.sof` or `.pof` file from `output_files/`.

4. **Testing**:
   - Set binary data using switches SW7-SW0.
   - Press KEY3 to transmit data.
   - Verify the received data on the PC through the RS-232 interface.

## Features

- **Binary Data Input** via FPGA switches (SW7-SW0)
- **Controlled Data Transmission** using the KEY3 button
- **Simulation and Verification** through a custom testbench
- **Ready for FPGA Deployment**

## Author

- **Your Name**  
- **Contact**: [LinkedIn](https://www.linkedin.com/)

## License

This project is licensed under the [MIT License](LICENSE), allowing use, modification, and distribution.
