# Part 2 – Active High-Pass Filter Design and Comparison

This section designs and evaluates active high-pass filter implementations to meet the frequency requirements identified in Part 1.

## Objective
Design an active high-pass filter with a cutoff near 1000 rad/sec that:
- Attenuates low-frequency wind noise
- Preserves higher-frequency bird calls
- Remains robust under component tolerances

## Filter Topologies Evaluated
Two second-order active high-pass filter structures were designed and compared:

- **Sallen-Key High-Pass Filter**
- **Multi-Feedback High-Pass Filter**

Both filters were designed using ideal op-amps and scaled to practical component values.

## Methodology
- Derived transfer functions and solved for resistor and capacitor values
- Applied frequency and impedance scaling
- Simulated frequency responses in LTSpice
- Performed Monte Carlo analysis using ±20% capacitor tolerances to evaluate sensitivity

## Results
- Both topologies met the nominal cutoff frequency under ideal conditions
- Monte Carlo simulations showed significant cutoff drift in the Multi-Feedback topology
- The **Sallen-Key configuration exhibited tighter cutoff clustering** and more predictable behavior under component variation
- Based on robustness and manufacturability, the Sallen-Key topology was selected for Part 3

## Files
### LTSpice Netlists
- `ideal_opamp.cir` – Ideal op-amp model used in all simulations
- `sallen_key_hpf.cir` – Nominal Sallen-Key high-pass filter
- `multifeedback_hpf.cir` – Nominal Multi-Feedback high-pass filter
- `mc_sallen_key.cir` – Monte Carlo analysis of Sallen-Key filter
- `mc_multifeedback.cir` – Monte Carlo analysis of Multi-Feedback filter

### References
- `pole_locations_butter_cheby_bessel.pdf` – Standard pole locations used for filter synthesis

### Report
- `part2_design_report.pdf` – Hand calculations, schematics, simulation plots, and analysis

## Tools
- LTSpice
