# GetCleanData
Getting and Cleaning Data Course Project

This script starts with the assumption that the Samsung data is available
in the working directory in an unzipped UCI HAR Dataset folder.

From the project website we downloaded a zip file and we unzipped it.
The result was the following directory structure:

`.
├── README.txt                   #
├── activity_labels.txt
├── features.txt
├── features_info.txt
├── test
│   ├── Inertial\ Signals
│   │   ├── body_acc_x_test.txt
│   │   ├── body_acc_y_test.txt
│   │   ├── body_acc_z_test.txt
│   │   ├── body_gyro_x_test.txt
│   │   ├── body_gyro_y_test.txt
│   │   ├── body_gyro_z_test.txt
│   │   ├── total_acc_x_test.txt
│   │   ├── total_acc_y_test.txt
│   │   └── total_acc_z_test.txt
│   ├── X_test.txt
│   ├── subject_test.txt
│   └── y_test.txt
└── train
    ├── Inertial\ Signals
    │   ├── body_acc_x_train.txt
    │   ├── body_acc_y_train.txt
    │   ├── body_acc_z_train.txt
    │   ├── body_gyro_x_train.txt
    │   ├── body_gyro_y_train.txt
    │   ├── body_gyro_z_train.txt
    │   ├── total_acc_x_train.txt
    │   ├── total_acc_y_train.txt
    │   └── total_acc_z_train.txt
    ├── X_train.txt
    ├── subject_train.txt
    └── y_train.txt`
