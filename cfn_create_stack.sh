#!/bin/bash
aws cloudformation create-stack --stack-name $1 --template-body file://$2 --parameters file://$3 --profile $4 --region us-west-2 

# with PARAMETERS
#aws cloudformation create-stack --stack-name $1 ---template-body file://$2 --parameters file://$3 -profile $4 --region us-west-2 
# with IAM CAPABILITY 
#aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --profile $4 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

#$ ./cfn_create_stack2.sh my-cf-stack cfn_network_infra.yml cfn_network_infra_parameters.json iac
