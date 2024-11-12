
---

### `CodeBook.md`

```markdown
# CodeBook

This document provides details on the variables, transformations, and structure of the tidy dataset in `tidy_data.txt`.

## Source Data

The dataset is derived from the Human Activity Recognition Using Smartphones Dataset, available at the UCI Machine Learning Repository. It includes measurements from accelerometer and gyroscope sensors for activities performed by 30 subjects.

## Variables in `tidy_data.txt`

The dataset has the following variables:

1. **subject**: An identifier for the subjects (integer 1–30).
2. **activity**: Describes the activity performed, with six levels:
   - `WALKING`
   - `WALKING_UPSTAIRS`
   - `WALKING_DOWNSTAIRS`
   - `SITTING`
   - `STANDING`
   - `LAYING`

### Signal Measurements

Each signal measurement is the mean of multiple values recorded during specific activities. They fall into two categories:

1. **Time Domain Signals** (prefix `t`): These measurements were captured in the time domain.
   - **tBodyAcc**: Body acceleration in X, Y, and Z directions.
   - **tGravityAcc**: Gravity acceleration in X, Y, and Z directions.
   - **tBodyAccJerk**: Body linear acceleration jerk in X, Y, and Z directions.
   - **tBodyGyro**: Body angular velocity in X, Y, and Z directions.
   - **tBodyGyroJerk**: Body angular velocity jerk in X, Y, and Z directions.

2. **Frequency Domain Signals** (prefix `f`): These measurements were captured in the frequency domain using a Fast Fourier Transform (FFT).
   - **fBodyAcc**: FFT of body acceleration in X, Y, and Z directions.
   - **fBodyAccJerk**: FFT of body linear acceleration jerk in X, Y, and Z directions.
   - **fBodyGyro**: FFT of body angular velocity in X, Y, and Z directions.

### Transformations

1. **Combining Datasets**: Merged test and training sets.
2. **Extracting Mean and Standard Deviation Measurements**: Selected columns with "mean" and "std" in their names.
3. **Descriptive Activity Names**: Replaced activity codes (1-6) with descriptive labels.
4. **Descriptive Variable Names**: Renamed variables to clarify time domain (`t`) and frequency domain (`f`) signals, and to indicate measurement direction (X, Y, Z).
5. **Averaging**: Grouped data by `subject` and `activity` and computed the mean for each variable.

This dataset provides a compact, tidy summary of the main features in the original dataset, focusing on mean and standard deviation values across different activities and subjects.
