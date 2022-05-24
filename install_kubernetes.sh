curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce


2. On each server, install kubernetes
(Installation guide: https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo cat < EOF >> /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl

3. On each server, enable the use of iptables
echo "net.bridge.bridge-nf-call-iptables=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
#
# curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
# cat &lt&lt EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
# deb https://apt.kubernetes.io/ kubernetes-$(lsb_release -cs) main
# EOF
# sudo apt-get update
# sudo apt-get install -y kubelet kubeadm kubectl

echo "net.bridge.bridge-nf-call-iptables=1" | sudo tee -a /etc/sysctl.conf
sudo sed -i 's/#net.bridge.bridge-nf-call-iptables = 1/net.bridge.bridge-nf-call-iptables = 1/' /etc/sysctl.conf
sudo modprobe br_netfilter
sudo sysctl -p

4. On the Master server only, initialize the cluster
sudo kubeadm init --pod-network-cidr=10.244.0.0/16

(After this command finishes, copy kubeadm join provided)

5. On the Master server only, set up the kubernetes configuration file for general usage
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

6. On the Master server only, apply a common networking plugin. In this case, Flannel
kubectl apply -f https://raw.githubusercontent.com/cor...

7. On the Worker servers only, join them to the cluster using the command you copied earlier.
kubeadm join 172.31.37.80:6443 --token ... --discovery-token-ca-cert-hash ...

And that's it! You should now have a working kubernetes cluster!

---
Great resources I used to learn how to work with Kubernetes:
1. Linux Academy (https://linuxacademy.com/)
2. Udemy: Docker and Kubernetes: The Complete Guide (https://www.udemy.com/course/docker-a...)
3. Kubernetes Documentation (https://kubernetes.io/docs/home/)
4. Just play with it!

---

Music: https://www.bensound.com
