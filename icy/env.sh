if [ ! -f awssecret ]; then
  echo >&2 "ERROR: missing the file 'awssecret' in current directory"
  echo >&2 "Please create such file in Timothy Kay format."
  exit 1
fi

export EC2_CERT=/home/pi/ec2_keys/cert-ACU6FFQI6BWLRBSSFU3QCDQVXRL5EANM.pem
export EC2_PRIVATE_KEY=/home/pi/ec2_keys/pk-ACU6FFQI6BWLRBSSFU3QCDQVXRL5EANM.pem
export AWS_ACCESS_KEY_ID="$(cat awssecret |sed -n 1p)"
export AWS_SECRET_ACCESS_KEY="$(cat awssecret |sed -n 2p)"
export AWS_USER_ID="858768646416"

export EC2_URL="https://ec2.ap-southeast-1.amazonaws.com"
export PATH=$PATH:$EC_HOME/bin

# Build configuration
export _PACKAGES="--package less"
export _EC2_AMI_VERSION="1.3-57676"
