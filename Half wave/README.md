# Half Wave Rectifier using Verilog

## 📌 Description

A **Half Wave Rectifier** is a circuit that converts an AC signal into a pulsating DC signal by allowing only one half-cycle of the input waveform to pass through.

This project models a half wave rectifier using Verilog HDL.

## 🔹 Inputs and Outputs

### Input

* `ac_input[7:0]` – Signed AC input signal

### Output

* `dc_output[7:0]` – Rectified output signal

## 🔹 Working

The Verilog model behaves like an ideal diode:

* If `ac_input > 0`, the input is passed to the output.
* If `ac_input <= 0`, the output is set to zero.

Therefore, the negative half-cycle is blocked.

## 🔹 Logic

```text
If AC Input > 0
    Output = AC Input
Else
    Output = 0
```

## 🔹 Example

```text
AC Input       Output
+100           +100
+50            +50
  0              0
-50              0
-100             0
```

## 🔹 Files

* `half_wave_rectifier.v` – Verilog design code
* `half_wave_rectifier_tb.v` – Testbench
* `simulation/waveform.png` – Simulation waveform
* `LICENSE` – Project license

## 🔹 Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave / ModelSim / Vivado

## 🔹 Applications

* AC to DC conversion
* Power supply circuits
* Signal processing
* Rectifier circuits

## 🔹 Result

The Half Wave Rectifier was successfully designed and verified using Verilog HDL through simulation. The positive half-cycle is passed to the output while the negative half-cycle is blocked.
