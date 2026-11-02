## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:4cf960ab3d6ec16117af2a7f67fedb995cc629da30566f0e09ecade36a42cf41
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cddd081e31e8223f00aa1693e0a1c22da6b120ecf0022c81a30ba41f2faab616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154360897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634799dbb0f049c9a1033780b49eafbc1c1caf3f4af4445ce8c56f49fecfd80f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:10 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:10 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:10 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f97c0c4871153af0368e6b02d4db4bb66998fa2d9b7d7171e36dcb4c45eaa`  
		Last Modified: Mon, 02 Nov 2026 20:11:30 GMT  
		Size: 91.4 MB (91422044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ec5800b7a18c967b04674e3eb8c0db9a076ad8fa758e2fa6c5045385ad19a5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fcddfa56c7a4f74837ea8e5c13b6bb83902e1b241ac0608e9e32e22abe636e`

```dockerfile
```

-	Layers:
	-	`sha256:17766b692492296dc530093d51d2483df1b1c741517307fa04bdfe1e26fc1364`  
		Last Modified: Mon, 02 Nov 2026 20:11:28 GMT  
		Size: 5.9 MB (5866780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d8d15b2f90c7bc79b251d53e4b0fc4fcfcad56a7dafc4aaf96e47116f39b214`  
		Last Modified: Mon, 02 Nov 2026 20:11:27 GMT  
		Size: 9.5 KB (9481 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:779e0a74a643103b1e352c81dd0a98a7232077c847fc141b1c4ef6771ac1021e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (146976897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c89fe277689a5490a978c9fae6dc6f3dcf21b9bef764610fc2407e7e8e5aadc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:45 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:45 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:45 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:10:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f6f9bdd9448ab35b0afbf69e504f21c7c4b4d9fa716ffa17a18da5c8504f82`  
		Last Modified: Mon, 02 Nov 2026 20:11:03 GMT  
		Size: 82.2 MB (82170939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:99687ff0c06d07199658b9f7443399a80e013472c7884ba2c0f9971c07c56b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e39c462d5c793e83595d3f7145ea419ddd63115c88120bf97c4bd5898539ca8`

```dockerfile
```

-	Layers:
	-	`sha256:583a55fa70def08a0754fc69291e59f2a4367d1b7208a991629de63653330e77`  
		Last Modified: Mon, 02 Nov 2026 20:11:01 GMT  
		Size: 5.7 MB (5658524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ab364bc6df2bc8e9da5908f9dd2365b75edecdb4d23977f647455fdb9631ee`  
		Last Modified: Mon, 02 Nov 2026 20:11:00 GMT  
		Size: 9.6 KB (9561 bytes)  
		MIME: application/vnd.in-toto+json
