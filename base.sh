export LATEST_DEBIAN_AMI=$(aws ec2 describe-images --filters 'Name=root-device-type,Values=ebs' 'Name=architecture,Values=x86_64' 'Name=virtualization-type,Values=hvm' 'Name=name,Values=*stretch*' --owners 379101102735 --output text --query 'reverse(Images.sort_by([], &CreationDate))[].[ImageId][0]')
export DEFAULT_VPC=$(aws ec2 describe-vpcs --filters Name=isDefault,Values=true --query '(Vpcs[].VpcId)[0]' --output text)
export SUBNET=$(aws ec2 describe-subnets --filters Name=vpc-id,Values=vpc-63ef4a1a --query '(Subnets[].SubnetId)[0]' --output text)
packer base.json