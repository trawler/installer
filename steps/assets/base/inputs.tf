locals {
  admin_cert_pem                  = "${file("${local.tls_path}/admin.crt")}"
  admin_key_pem                   = "${file("${local.tls_path}/admin.key")}"
  aggregator_ca_cert_pem          = "${file("${local.tls_path}/aggregator-ca.crt")}"
  aggregator_ca_key_pem           = "${file("${local.tls_path}/aggregator-ca.key")}"
  apiserver_cert_pem              = "${file("${local.tls_path}/apiserver.crt")}"
  apiserver_key_pem               = "${file("${local.tls_path}/apiserver.key")}"
  apiserver_proxy_cert_pem        = "${file("${local.tls_path}/apiserver-proxy.crt")}"
  apiserver_proxy_key_pem         = "${file("${local.tls_path}/apiserver-proxy.key")}"
  clusterapi_ca_cert_pem          = "${file("${local.tls_path}/machine-apiserver-ca.crt")}"
  clusterapi_ca_key_pem           = "${file("${local.tls_path}/machine-apiserver-ca.key")}"
  etcd_ca_cert_pem                = "${file("${local.tls_path}/etcd-client-ca.crt")}"
  etcd_ca_key_pem                 = "${file("${local.tls_path}/etcd-client-ca.key")}"
  etcd_client_cert_pem            = "${file("${local.tls_path}/etcd-client.crt")}"
  etcd_client_key_pem             = "${file("${local.tls_path}/etcd-client.key")}"
  ingress_ca_cert_pem             = "${file("${local.tls_path}/ingress-ca.crt")}"
  ingress_cert_pem                = "${file("${local.tls_path}/ingress.crt")}"
  ingress_key_pem                 = "${file("${local.tls_path}/ingress.key")}"
  kube_ca_cert_pem                = "${file("${local.tls_path}/kube-ca.crt")}"
  kube_ca_key_pem                 = "${file("${local.tls_path}/kube-ca.key")}"
  kubelet_cert_pem                = "${file("${local.tls_path}/kubelet.crt")}"
  kubelet_key_pem                 = "${file("${local.tls_path}/kubelet.key")}"
  oidc_ca_cert                    = "${file("${local.tls_path}/ingress-ca.crt")}"
  openshift_apiserver_cert_pem    = "${file("${local.tls_path}/openshift-apiserver.crt")}"
  openshift_apiserver_key_pem     = "${file("${local.tls_path}/openshift-apiserver.key")}"
  root_ca_cert_pem                = "${file("${local.tls_path}/root-ca.crt")}"
  service_serving_ca_cert_pem     = "${file("${local.tls_path}/service-serving-ca.crt")}"
  service_serving_ca_key_pem      = "${file("${local.tls_path}/service-serving-ca.key")}"
  tls_path                        = "${path.cwd}/generated/tls"
  tnc_cert_pem                    = "${file("${local.tls_path}/tnc.crt")}"
  tnc_key_pem                     = "${file("${local.tls_path}/tnc.key")}"
  service_account_public_key_pem  = "${file("${local.tls_path}/service-account.pub")}"
  service_account_private_key_pem = "${file("${local.tls_path}/service-account.key")}"
}
