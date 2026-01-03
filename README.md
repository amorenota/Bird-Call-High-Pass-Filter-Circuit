# Bird-Call-High-Pass-Filter-Circuit
This project involves designing a filter circuit to remove noise caused by wind hitting a microphone from an audio recording of bird calls.
- Part 1:
  - Perform Fast Fourier Transform (FFT) analysis in LTSpice on noisy bird calls audio file and identify approximate frequency ranges for wind noise vs. birds.
  - On a conceptual basis, determine which of the following four filter types would be most appropriate to use for removing wind while leaving birds unchanged (low-pass, high-pass, band-pass, band-stop).
- Part 2:
  - Determine resistor and capacitor values needed to design two active filter configurations: Sallen-Key and Multi-Feedback.
  - Simulate circuits with ideal components in LTSpice to compare frequency responses.
  - Perform Monte Carlo analysis in LTSpice to observe effect on frequency response if 20% tolerance capacitors are used and decide which configuration has the more desirable response.
- Part 3:
  - Design multi-stage Butterworth filter to attenuate wind noise in audio file by specified value and leave bird calls unchanged. You will be provided with a document containing different filter “building blocks” along with their associated transfer functions. In-class discussions will cover the advantages and drawbacks of each.
  - Simulate complete filter circuit in LTSpice and transfer function in MATLAB to compare Bode Plots of frequency response.
  - Perform Monte Carlo analysis in LTSpice on complete filter with 20% tolerance capacitors and decide if overall response is acceptable, or if better capacitors should be used.
  - Export audio file from filter output in LTSpice and listen to determine if wind noise was removed.
