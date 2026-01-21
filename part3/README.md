# Part 3 – Multi-Stage Butterworth High-Pass Filter Implementation

This section implements and validates the final high-pass filter design selected in Parts 1 and 2, with the goal of removing wind noise from bird-call audio recordings while preserving the signal of interest.

## Objective
Design a complete multi-stage high-pass filter that:
- Strongly attenuates low-frequency wind noise
- Preserves bird-call frequency content
- Exhibits a flat passband and predictable phase response
- Remains practical for real-world component tolerances

## Filter Architecture
- Implemented a **multi-stage Butterworth high-pass filter**
- Butterworth response selected for its maximally flat magnitude response
- Filter stages constructed using active op-amp-based building blocks
- Cutoff frequency chosen based on FFT results from Part 1

## Methodology
- Constructed multiple candidate LTSpice netlists to meet attenuation requirements
- Simulated frequency response using AC analysis (Bode plots)
- Verified attenuation at critical frequencies associated with wind noise
- Derived and validated the overall transfer function using MATLAB
- Exported the filtered audio output from LTSpice and compared it directly to the original recording to verify wind-noise removal

## Results
- Final filter achieved the desired attenuation of low-frequency wind components
- Bird-call frequency content remained intact after filtering
- MATLAB and LTSpice frequency responses closely matched
- The filtered audio output (`birds.wav`) demonstrates clear removal of wind noise compared to the original recording

## Files
### LTSpice
- `ideal_opamp.cir` – Ideal op-amp model used in all filter stages
- `netlist1.cir` – Initial candidate filter implementation
- `netlist2.cir` – Refined filter configuration
- `bird_filter.cir` – Final validated multi-stage Butterworth filter

### MATLAB
- `TransferFunctionScript.m` – Transfer function derivation and frequency response validation

### Audio
- `wind_birds.wav` – Original unfiltered bird-call recording containing wind noise
- `birds.wav` – Filtered audio output generated from the final LTSpice netlist

### Report
- `part3_design_report.pdf` – Complete design justification, simulations, and analysis

## Tools
- LTSpice
- MATLAB
