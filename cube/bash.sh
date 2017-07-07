ETCD=etcd-host
IP1=123.56.222.131
IP2=104.224.190.97
PORT=2380
NODE1=etcd-host0
NODE2=etcd-host1
NODE1_ADDR=${NODE1}=https:${IP1}${PORT}
NODE2_ADDR=${NODE2}=https:${IP2}${PORT}

echo ${NODE2}


export NODE_NAME=${NODE1} #当前部署的机器名称
export NODE_MASTER=${IP1} #当前部署的机会
export NODE_IPS="${IP1} ${IP2}" # etcd 所有集群ip

# etcd 集群间通信的ip和端口
export ETCD_NODES=${NODE1_ADDR},${NODE2_ADDR}

echo ${NODE_IPS},${ETCD_NODES}


cat > etcd-csr.json <<EOF
{
        "CN": "etcd",
        "hosts":[
                "127.0.0.1",
                "${NODE_MASTER}"
        ],
        "key": {
                "algo": "rsa",
                "size": 2048
        },
        "names": [
                {
                "C": "CN",
                "ST": "NanJing",
                "L": "NanJing",
                "O": "k8s",
                "OU": "System"
                }
        ],
}
EOF

