## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:ac90b70ee66fd1feb6470fb07091c91e3fcc383ce2fdd429ed150d836784392c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ea90587d8a3a2b4277cf9a019ee21b4ca30de2962cbce57ba7ad6ce60b3293a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217334381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce42411aa37179a0f35e2e50717c0702b7d36eae5aba3b657091c36c858f23e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:37 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:37 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:37 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:46:37 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ec9d4d502d2c13fae9815f85c9a0f5d25bdc9f92583db17fb423ba2aae2393`  
		Last Modified: Wed, 18 Nov 2026 02:46:58 GMT  
		Size: 154.4 MB (154404784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6ee0f872329cc976ef37028c0c2b597a7d0f1220216619961f2975128e26cde3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bd131cbba340c620f885b5b54ce624fac391b2978ad0ce7a66207994dea582`

```dockerfile
```

-	Layers:
	-	`sha256:ad77529399a4d727387b5c7f4e079f1ec8caeb0fb9fc19b49aa087101b72382d`  
		Last Modified: Wed, 18 Nov 2026 02:46:55 GMT  
		Size: 5.7 MB (5683436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fe3b221d37c8b985811ce6482204ba87565ba542e5de8cbfbd8ddbc1f88d510`  
		Last Modified: Wed, 18 Nov 2026 02:46:55 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:60aea5f7f160ec3cc209601ef343cec23cb35745f83f40a5166f886602767d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211441879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5658f5d33092fbd3c3197c4e92a151e8bde8edf0d501a177d3abde97b4d2d3f2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:42 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:42 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:42 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:46:42 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62ec2002a32ca8e8b43543ecbc7761cda599261ed92e570c24a7a7861b8e2af`  
		Last Modified: Wed, 18 Nov 2026 02:47:02 GMT  
		Size: 146.7 MB (146665477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:174802e9ca8d2304817e52ff8174e62fcd4a42f31069d3a09a8fb5c371e7f55f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ff20a09055dd40311d13a5ad5ff261c62ca16febaaef6a743eb6fed4623cab`

```dockerfile
```

-	Layers:
	-	`sha256:c59e1613ae5374f9e0b389af3aba19999c4c09e04b103be7087801ba0f1dda8f`  
		Last Modified: Wed, 18 Nov 2026 02:46:59 GMT  
		Size: 5.5 MB (5501904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73df8e591fac22e615283931d804731d7ae22ea3b2a7f4d02d9aaaff28982428`  
		Last Modified: Wed, 18 Nov 2026 02:46:58 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json
