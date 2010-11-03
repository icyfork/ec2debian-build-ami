export EC2_CERT=/home/pi/ec2_keys/cert-ACU6FFQI6BWLRBSSFU3QCDQVXRL5EANM.pem
export EC2_PRIVATE_KEY=/home/pi/ec2_keys/pk-ACU6FFQI6BWLRBSSFU3QCDQVXRL5EANM.pem
export AWS_ACCESS_KEY_ID="$(cat $HOME/.awssecret |sed -n 1p)"
export AWS_SECRET_ACCESS_KEY="$(cat $HOME/.awssecret |sed -n 2p)"
export AWS_USER_ID="858768646416"

export EC2_HOME=/home/pi/df/ec2-api-tools-1.3-57419/
export EC2_URL="https://ec2.ap-southeast-1.amazonaws.com"
export PATH=$PATH:$EC_HOME/bin
