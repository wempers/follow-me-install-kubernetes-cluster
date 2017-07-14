etcdctl \
  --endpoints=https://123.56.222.131:2379,https://104.224.190.97:2379 \
  --ca-file=/etc/kubernetes/ssl/ca.pem \
  --cert-file=/etc/flanneld/ssl/flanneld.pem \
  --key-file=/etc/flanneld/ssl/flanneld-key.pem \
  set /kubernetes/network/config '{"Network":"10.0.0.0/8", "SubnetLen": 20, "Backend": {"Type": "vxlan"}}'

etcdctl \
  --endpoints=https://123.56.222.131:2379,https://104.224.190.97:2379 \
  --ca-file=/etc/kubernetes/ssl/ca.pem \
  --cert-file=/etc/flanneld/ssl/flanneld.pem \
  --key-file=/etc/flanneld/ssl/flanneld-key.pem \
  get /kubernetes/network/config

