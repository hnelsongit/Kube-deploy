curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y docker.io kubelet kubeadm kubectl kubernetes-cni
kubeadm join --token 51b90d.a76f5b5d30e58f0a 192.168.77.10:6443 --discovery-token-ca-cert-hash sha256:79bed852fda6a549973c75ded66d0933a94fa55361209b5c8a19ba50ea80cd82
