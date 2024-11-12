# Getting and Cleaning Data - Project

This repository contains the R scripts and documentation for processing wearable computing data from the Human Activity Recognition Using Smartphones dataset. The goal is to prepare a tidy dataset with averages of selected variables for each subject-activity combination.

## Project Overview

This project is part of the "Getting and Cleaning Data" course, where we transform raw data from wearable devices into a tidy format suitable for analysis. The dataset provides measurements from accelerometer and gyroscope sensors on 30 subjects, each performing different physical activities.

## Files

1. **run_analysis.R**: The main R script that downloads, unzips, processes, and tidies the data.
2. **tidy_data.txt**: The resulting tidy dataset with the average of each variable for each activity and each subject.
3. **CodeBook.md**: Detailed description of variables, data transformations, and the final dataset structure.

## Script Workflow (`run_analysis.R`)

1. **Data Download and Extraction**: Downloads and extracts the dataset.
2. **Data Merging**: Combines training and test datasets.
3. **Extraction of Measurements**: Filters columns with mean and standard deviation measurements.
4. **Labeling Activities**: Replaces activity codes with descriptive names.
5. **Renaming Columns**: Improves column names for readability and clarity.
6. **Aggregating Data**: Computes the average of each variable grouped by subject and activity.
7. **Saving Output**: Exports the tidy dataset to `tidy_data.txt`.

To run the script, execute the following command in R:
```R
source("run_analysis.R")
