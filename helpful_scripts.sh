docker run --rm -it -v ~/.kube/config:/root/.kube/config quay.io/derailed/k9s

helm install minio stable/minio --set accessKey=minio --set secretKey=password --set service.type=NodePort --set service.nodePort=30300 --set resources.requests.memory=256Mi

    # WARNING: This chart is deprecated
    # NAME: minio
    # LAST DEPLOYED: Tue Mar  8 20:09:05 2022
    # NAMESPACE: default
    # STATUS: deployed
    # REVISION: 1
    # TEST SUITE: None
    # NOTES:
    # Minio can be accessed via port 9000 on the following DNS name from within your cluster:
    # minio.default.svc.cluster.local

    # To access Minio from localhost, run the below commands:

    #   1. export POD_NAME=$(kubectl get pods --namespace default -l "release=minio" -o jsonpath="{.items[0].metadata.name}")

    #   2. kubectl port-forward $POD_NAME 9000 --namespace default

    # Read more about port forwarding here: http://kubernetes.io/docs/user-guide/kubectl/kubectl_port-forward/

    # You can now access Minio server on http://localhost:9000. Follow the below steps to connect to Minio server with mc client:

    #   1. Download the Minio mc client - https://docs.minio.io/docs/minio-client-quickstart-guide

    #   2. mc config host add minio-local http://localhost:9000 minio password S3v4

    #   3. mc ls minio-local

    # Alternately, you can use your browser or the Minio SDK to access the server - https://docs.minio.io/categories/17
    # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


     python3 -m venv env
     source env/bin/activate
     pip3 install pyspark


helm install sparkoperator spark-operator/spark-operator                                                                                                                            1 ↵ facu@Facundos-MBP
    # NAME: sparkoperator
    # LAST DEPLOYED: Wed Mar  9 21:55:56 2022
    # NAMESPACE: default
    # STATUS: deployed
    # REVISION: 1
    # TEST SUITE: None

# https://spark.apache.org/downloads.html
./spark-3.2.1-bin-hadoop3.2/bin/docker-image-tool.sh -r spark-base  -t 1.0.0  -p ./spark-3.2.1-bin-hadoop3.2/kubernetes/dockerfiles/spark/bindings/python/Dockerfile build

docker build -t sparkjob:1.0 .
docker login
docker tag sparkjob:1.0 paisanito/sparkjob:1.0
docker push paisanito/sparkjob:1.0

kubectl apply -f k3s.yaml

kb get  events
kb describe SparkApplication
# https://github.com/satchpx/spark-on-k8s
kubectl create serviceaccount spark
kubectl create clusterrolebinding spark-role --clusterrole=edit --serviceaccount=default:spark --namespace=default