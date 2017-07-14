flanneld \
  -etcd-cafile=/etc/kubernetes/ssl/ca.pem \
  -etcd-certfile=/etc/flanneld/ssl/flanneld.pem \
  -etcd-keyfile=/etc/flanneld/ssl/flanneld-key.pem \
  -etcd-endpoints=${ETCD_ENDPOINTS} \\
  -etcd-prefix=${FLANNEL_ETCD_PREFIX}
