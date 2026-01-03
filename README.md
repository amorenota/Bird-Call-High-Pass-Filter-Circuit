# Bird Call High-Pass Filter Circuit

This project analyzes and filters noisy bird-call audio recordings to remove low-frequency wind noise while preserving the bird calls of interest.

## Part 1 – Frequency Analysis and Filter Selection

### Objective
Wind hitting a microphone introduces strong low-frequency noise that masks bird calls.  
The goal of Part 1 is to analyze the frequency content of the recording and determine the most appropriate filter topology.

### Method
- Imported a real-world bird-call audio recording into LTSpice
- Performed FFT analysis to examine frequency content
- Identified distinct frequency bands corresponding to:
  - Wind noise (low-frequency)
  - Bird calls (higher-frequency)
- Used frequency-domain results to evaluate candidate filter types

### Findings
- Wind noise dominates approximately the 0–500 Hz range
- Bird calls occupy higher frequencies, beginning several hundred Hz above the wind band
- A **high-pass filter** is the most effective solution for attenuating wind while preserving bird calls

### Files
- `part1/ltspice/fft_analysis.cir` – LTSpice netlist used to perform FFT analysis on the audio file
- `part1/audio/wind_birds.wav` – Original noisy bird-call recording
- `part1/report/part1_description.pdf` – Written explanation and analysis for Part 1

### Tools
- LTSpice

> Parts 2 and 3 expand on this analysis by designing, simulating, and validating an active high-pass filter that removes wind noise from the audio file.

