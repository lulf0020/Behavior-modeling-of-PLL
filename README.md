# Behavior-modeling-of-PLL
The project is refer to the Github project below:
[<i>/MathWorks-Excellence-in-Innovation/projects/Behavioral Modelling of Phase-Locked Loop using Deep Learning Techniques/</i>](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/tree/main/projects/Behavioral%20Modelling%20of%20Phase-Locked%20Loop%20using%20Deep%20Learning%20Techniques)

The words below are some explanation of our work.


## Function Description
The final fitting function derived from our final trained neural network model os stored in the folder <i>"final_function"</i>.

In that folder, there are 7 fitting functions, functions <i>"fitA"</i> to <i>"fitF"</i> are individual Neural Network fitting functions of 15 input parameters to 6 output parameters, respectively. Besides, the function <i>"fitNet"</i> is the total function that calls functions from <i>"fitA"</i> to <i>"fitF"</i>, which could estimate 15 input parameters and obtain 6 output parameters at the same time.

## Our Dataset
The dataset used in the experiment is obtained through the Integer N PLL with Single Modulus Prescaler simulation model in the Mixed-Signal Blockset extension provided by MATLAB. 
**NOTE:** The specific MATLAB version is R2020a.

##### INPUT/OUTPUT Parameters
The 15 input parameters we focus on are: deadband compensation for PDF, output current and leakage current for charge pump, voltage sensitivity and free running frequency for VCO, clock divider value for prescaler, resistor and capacitor values for loop filter and the frequency of the PLL reference signal. 

The 6 output parameters we focus on are: the operating frequency and lock time of the PLL, phase noise of the PLL at 200KHz, 1MHz, 3MHz and 10MHz from the operating frequency offset.

##### Dataset Element Description
For each row of input parameters, recorded from left to right are the frequency of the PLL reference signal, deadband compensation, output current, leakage current, current imbalance, clock divider value, voltage sensitivity, free running frequency, C1 to C4 and R2 to R4 in the 4th order loop filter model. 
|![Loop Filter][loopfilter]|
|:---:|
|*4th order loop filter*|

For each row of output parameters, recorded from left to right are operating frequency, lock time and the phase noise of the PLL at 200KHz, 1MHz, 3MHz and 10MHz from the operating frequency offset. 

##### Dataset Files Description

We have divided all the data obtained into training and test datasets. The <i>"input_nn.mat"</i> and <i>"output_nn.mat"</i> files store the input parameters and output parameters of our test set respectively. The test set has a total of 105 sets of data and each row is a corresponding set of simulation results. 

The <i>"training_dataset.mat"</i> file stores the training set we obtained. The training set has a total of 942 sets of data, each row represents one of our simulation examples, including the input and output parameters we are concerned about.The arrangement order of each parameter is consistent with the test set. 

## Fitting Result
The average error for six output parameters on our test dataset is as follows:
|Output parameters| Errors|
|:--:|:--:|
|Operating frequency|2.38%|
|Lock time|5.93%|
|Phase noise(Δf=200KHz)|  10.97%|
|Phase noise(Δf=1MHz)  |  8.50% |
|Phase noise(Δf=2MHz)  |  8.65% |
|Phase noise(Δf=10MHz) |  6.92% |

[loopfilter]:data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAeAB4AAD/4RDcRXhpZgAATU0AKgAAAAgABAE7AAIAAAAKAAAISodpAAQAAAABAAAIVJydAAEAAAAIAAAQzOocAAcAAAgMAAAAPgAAAAAc6gAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOadjuaxn+W3nQAABZADAAIAAAAUAAAQopAEAAIAAAAUAAAQtpKRAAIAAAADNjUAAJKSAAIAAAADNjUAAOocAAcAAAgMAAAIlgAAAAAc6gAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADIwMjI6MDE6MTAgMjA6NDE6MzYAMjAyMjowMToxMCAyMDo0MTozNgAAAE5nX2zdXQAA/+ELHGh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8APD94cGFja2V0IGJlZ2luPSfvu78nIGlkPSdXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQnPz4NCjx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iPjxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+PHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFiIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iLz48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHhtcDpDcmVhdGVEYXRlPjIwMjItMDEtMTBUMjA6NDE6MzYuNjUzPC94bXA6Q3JlYXRlRGF0ZT48L3JkZjpEZXNjcmlwdGlvbj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+PGRjOmNyZWF0b3I+PHJkZjpTZXEgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOmxpPuadjuaxn+W3nTwvcmRmOmxpPjwvcmRmOlNlcT4NCgkJCTwvZGM6Y3JlYXRvcj48L3JkZjpEZXNjcmlwdGlvbj48L3JkZjpSREY+PC94OnhtcG1ldGE+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw/eHBhY2tldCBlbmQ9J3cnPz7/2wBDAAcFBQYFBAcGBQYI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MRiWZss2B1JoA0KKKKACiiigAooooAKKKKACiikIypGSMjqKAE8xP76/nXmPipgfj54QYEY+x3XOfeKuL8TeCIvCfjeS78U6hq0/hvUpMrewXTKbJyejgdV9+1dmnwN8I3jQ6gmo6tMVQmKcX7HCn0PpxQB6f5if31/OnZz0r501LwPZeIPFy+HPAWo6s4tnB1HVJb1nigXugH8Tdvqa+gNK09dK0m2sY5ZJlt4wgklbLNjuTQBbooooAKKKKACiiigAooooAKKKKAELBfvED6ms/XXQ6BfAMpPkN39q5X4r+CdQ8Y+G1/sXUJ7W+s282KJJCiz+qEjoSM4NcL4H8FeE/GNhLb3N7rlnq1r+7vbCW/bdG3qPUH1oA7v4OOq/CfRAzAHyB1NdyHVvusD9DXjPiP4Z+CPA+gefcajrSKvyW9pFfNulfsqitX4QeA9R0FbjXNZurtJr4fubGWcyeRFnKhierUAepUUUUAFFFFABRRRQAUUUUANdFkjZJFDKwwVIyCK8s1Lwd4r8H6pcH4YtANN1Zz51ncEbLGRus0YPbqdvT2r1WigDmfBPgmy8G6W6Rs11qN03m31/LzJcSHuT6DoB0FdNRRQAUUUUAFFFFABRRRQBDeWdvqFlLaXsKT28ylJI3GQwPYivJrjwT448NS3Hh7wRfp/wj2oHCTTvmXTVJ+ZVJ5IxkDrjIr1+igDC8I+EtO8H6IlhpyZY/NNO3LzOerMeprdoooAKKKKACiiigAooooAKKKKACiiigCtqGnWmq6fNZajbpcW0ylZI5BkMK8nl8E+O9G83wp4a1BB4bvH3JezPmaxj/ijXuc5GOuMV7DRQBj+F/C+meEdDi0vR4fLiTl3PLyv3dj1JJ5rYoooAKKKKACiiigAooooAKKKKACiiigArhfHHga4v7yLxH4RkSx8R2nKuOEulH8EnY/U13VFAHnXhfwZqura8PFXxBEcmopxZWCNuis1/kW9+a9FoooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA//9k=
