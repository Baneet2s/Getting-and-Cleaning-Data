# CodeBook for Tidy Data

## Variables
- `subject`: The ID of the subject (1-30).
- `activity`: The activity performed (e.g., WALKING, SITTING).
- The remaining columns represent mean and standard deviation measurements for various signals.

## Transformations
1. Merged the training and test datasets.
2. Extracted mean and standard deviation features.
3. Applied descriptive activity names.
4. Aggregated the dataset by calculating the mean for each feature.
