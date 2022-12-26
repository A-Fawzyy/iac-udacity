echo "Deploying stack"
if ! aws cloudformation describe-stacks --region us-east-1 --stack-name iac-network ; then
  echo "Creating stack"
  aws cloudformation create-stack \
  --stack-name iac-network \
  --template-body file://network.yml \
  --parameters file://network-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region=us-east-1

else
  echo "Updating stack"
  aws cloudformation update-stack \
  --stack-name iac-network \
  --template-body file://network.yml \
  --parameters file://network-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region=us-east-1
fi