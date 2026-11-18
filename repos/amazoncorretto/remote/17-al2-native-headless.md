## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:4334d54c98f12b11f48a469de34d62b721af844bd33e5bf0f54896b638ed3b7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eae60393f6bb4f9b545c08d0711db382138f9ee02ce267bb7e5542c99b1a4aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150620405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc970532f9d504868d6fe02efb103f11c32f324e171a81985ffb353a39844b01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:33 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:33 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:33 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 17 Nov 2026 21:33:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff2978ab504efa9eaf5dba84a901635e7023fbb46db29bef4cadac693d4fd52`  
		Last Modified: Tue, 17 Nov 2026 21:33:50 GMT  
		Size: 87.7 MB (87690808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3c91881b06b043e01381f51587a567743aa73c2938cc9b85fcf4a1c16f9e994f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9b352c7e7c41ce187a5c295657cb0abebe2e84abc7770923a400856c379c3c`

```dockerfile
```

-	Layers:
	-	`sha256:0891cd673954579c4b4fbd25b84be7faea830d1d5c2f0cb82fce213f91b280c4`  
		Last Modified: Tue, 17 Nov 2026 21:33:48 GMT  
		Size: 5.6 MB (5632717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19c6438416552eb91e4cd582064f4387685f73ab0d66bab650e3a40014d9f99d`  
		Last Modified: Tue, 17 Nov 2026 21:33:48 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:75757c70406812306cad5a7f205d5f79cfc7bada2dc6eaa2c11870a67475414e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144711439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0751e0fac8e04684b48cf6bc45805188c9be12d612eb0f0d31919e0d77488c82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:17 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:17 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:17 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 17 Nov 2026 21:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454a54900dee5ed228b5a445a8192c77feb3b3d2f112244982d9c06b6051df25`  
		Last Modified: Tue, 17 Nov 2026 21:33:35 GMT  
		Size: 79.9 MB (79935037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e99c108a0ba2ca8dfe480bbfc9febacda6edea39a4b9b8d7fa07ee300997475b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab02c676f55c4209962b40f6d17a44e74c5f215c86a77536b67b152441059862`

```dockerfile
```

-	Layers:
	-	`sha256:e785ae5a135f7a64e0d17665ed8f0cd89493821aa3b30c540bff3c51a9b295c9`  
		Last Modified: Tue, 17 Nov 2026 21:33:33 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c7a2a63eaf4f193a38d8432876a321e612b0fdcc15cd372384083ffd7d5ee5`  
		Last Modified: Tue, 17 Nov 2026 21:33:33 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json
