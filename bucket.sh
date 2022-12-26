echo "Deploying s3"
  aws cloudformation create-stack \
  --stack-name udagram-s3-bucket \
  --template-body file://bucket.yml \
  --parameters file://bucket-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region=us-east-1