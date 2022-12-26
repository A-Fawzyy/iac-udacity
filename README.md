### Project Title - Deploy a high-availability web app using CloudFormation
This folder provides the starter code for the "ND9991 - C2- Infrastructure as Code - Deploy a high-availability web app using CloudFormation" project. This folder contains the following files:


#### final-project-starter.yml
Students have to write the CloudFormation code using this YAML template for building the cloud infrastructure, as required for the project. 

#### server-parameters.json
Students may use a JSON file for increasing the generic nature of the YAML code. For example, the JSON file contains a "ParameterKey" as "EnvironmentName" and "ParameterValue" as "UdacityProject". 

In YAML code, the `${EnvironmentName}` would be substituted with `UdacityProject` accordingly.


#### Launching Notes:
- First you need to create the bucket so use the following code `./bucket.sh`

- Secondly you need to move the index.html file to the bucket by using the following `aws s3 cp index.html s3://809061358119-udagram-bucket`

- Now you can launch the network template by using `./network.sh`

- Then you can launch the server template by using `./server.sh`

- In order to delete everything up after finishing you can use the following command `./delete-all.sh`

#### URL:

http://iac-s-webap-4nfjkbbhn83a-753528566.us-east-1.elb.amazonaws.com/