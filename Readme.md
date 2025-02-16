# Baseline Wander Correction using Adaptive Moving Average Algorithm
## Overview
This MATLAB code corrects baseline wander in ECG signals using the Adaptive Moving Average Algorithm. The algorithm adaptively estimates the filter window that minimizes the rate of change in variance of the ECG signal with respect to the estimated baseline.

## Function: calculateWanderInDC
### Purpose
Estimates baseline wander in the input ECG signal using the Adaptive Moving Average Algorithm.

## Inputs
- signal : Input ECG signal with baseline wander.
- filterNumber :  Range of filter window size is taken between 1-900 with step size 10.

## Outputs
- EstimationOfDC:Estimated baseline wander signal.

## Algorithm
1. Iterate over filter window sizes using filterNumber from 1 to 900 with a step size of 10.
2. Calculate the variance of the ECG signal with respect to the estimated baseline.
3. Adaptively update the filter window size to minimize the rate of change in variance.
4. Estimate the baseline wander using the updated filter window.
