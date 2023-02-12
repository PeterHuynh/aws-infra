#!/bin/bash
aws cloudformation describe-stacks --stack-name $1 --profile $2 --region=us-west-2

#$ ./cfn_describe_stack.sh my-cf-stack iac
