source:
    https://github.com/minio/operator/tree/v4.0.10/helm/minio-operator

helm install --namespace minio-operator --create-namespace --generate-name minio/minio-operator

kubectl get secret $(kubectl get serviceaccount console-sa --namespace default -o jsonpath="{.secrets[0].name}") --namespace default -o jsonpath="{.data.token}" | base64 --decode

eyJhbGciOiJSUzI1NiIsImtpZCI6InJ1eVAtZkRWSUkxNkliT2FVQ21HS0dxUnNDMktCd3dVeDdPUmdQd09rWU0ifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImNvbnNvbGUtc2EtdG9rZW4tcnF3eHciLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiY29uc29sZS1zYSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6ImU0YzVkMzdkLWI0ZmQtNGZkOS05MzA3LTkyMGU2M2MyNzBiMiIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZWZhdWx0OmNvbnNvbGUtc2EifQ.uo7_GvbSGt3P53LkR5SMPTl5utdCjo2ARdL-4jmfRmzY2359FNaiPp9BhhiR4Oo-CP-dRMBDjloLJkjhJzihnk3clX52CyN1HHZHlSWpKkCyIRHS54-2Iip7-BGSviOMACguV4XMax2gd1Esp5c-xEQ9ChUWjK_WOrS7IgU_kiJt4_H3HoBRdguaib99CipeX17duh33-EDQYDZdMeSDo3U62WQHyKr_5g9qkF0pWcXaro999mDiCLkgcV2G9BJOblKLg4h4wsjuCHvxOr5WjhftpXV3dMq2DeWKK_WBgo7KMo_XZuRB8i2Xq6epCXoe3fWQs_BjJAvNDI8PrE7mXw



 
helm install minio2 --set accessKey=myaccesskey,secretKey=mysecretkey stable/minio

helm install minio stable/minio --set accessKey=minio --set secretKey=password --set service.type=NodePort --set service.nodePort=30300 --set persistence.existingClaim=lightnig --set resources.requests.memory=256Mi
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

        # 1. export POD_NAME=$(kubectl get pods --namespace default -l "release=minio" -o jsonpath="{.items[0].metadata.name}")

        # 2. kubectl port-forward $POD_NAME 9000 --namespace default

        # Read more about port forwarding here: http://kubernetes.io/docs/user-guide/kubectl/kubectl_port-forward/

        # You can now access Minio server on http://localhost:9000. Follow the below steps to connect to Minio server with mc client:

        # 1. Download the Minio mc client - https://docs.minio.io/docs/minio-client-quickstart-guide

        # 2. mc config host add minio-local http://localhost:9000 minio password S3v4

        # 3. mc ls minio-local

        # Alternately, you can use your browser or the Minio SDK to access the server - https://docs.minio.io/categories/17

export POD_NAME=$(kubectl get pods --namespace default -l "release=minio" -o jsonpath="{.items[0].metadata.name}")
