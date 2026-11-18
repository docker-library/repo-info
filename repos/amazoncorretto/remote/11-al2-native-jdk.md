## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:7289dac879bde02f9d714736cf9bd900d09b7193be84ffb67a35741ddbd475a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8f9e0df78f73270cab5e7edcc2cad27f2f270ef587425b888d9cbada4f6bb29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224634529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa2bff4fad7a307222dd174d44a62d042e0c6d60648d474d88027423821ac7f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:41 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:41 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:41 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:46:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2032d08b384c9dec1a8b1578c327ae4471819dc34d1cef0a33efa79b457efee`  
		Last Modified: Wed, 18 Nov 2026 02:47:02 GMT  
		Size: 161.7 MB (161704932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d3ff70ef2ffd83653514748d25acd9b89c5eb1560a671aaddf051b481e13d173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f091dbb32a2b5a5ae67113361656575dd2ccf33749f50b426ab3c65019016d64`

```dockerfile
```

-	Layers:
	-	`sha256:dfd9cbd19e006c75e255a257899394a8c65bc82674c5f212a49ddb7d962f0211`  
		Last Modified: Wed, 18 Nov 2026 02:46:59 GMT  
		Size: 6.0 MB (5995223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba34f60253a2c1c980ccedad0ce7fc0e0584ba9cb4bc6febe544b92a44b82c74`  
		Last Modified: Wed, 18 Nov 2026 02:46:59 GMT  
		Size: 9.4 KB (9448 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e59d4816d3d9b63a2e4eafb04d649b10eedbe1329cf44178e82656f589375475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216537023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcce033a085ba567c79af9fb4ccf72ea43fe7f8100d5f68e2830374a095df272`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:50 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:50 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:50 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:46:50 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79847e2fdcb7bc421dcbf63bbe1ec21ea3cfe99ce0763b1782c1de7980f56970`  
		Last Modified: Wed, 18 Nov 2026 02:47:12 GMT  
		Size: 151.8 MB (151760621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:347647636893b87d82e63604fa2620f5a2789af35b733650ee63ef5ec9abbe74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308b3b9c9308f7562641c11b1800cacccbc15a098e852cc267d8319afb54516a`

```dockerfile
```

-	Layers:
	-	`sha256:cec59a2831c6d6d4c5d4dd81a924998b75f7d61e527ae875370f33671772ff88`  
		Last Modified: Wed, 18 Nov 2026 02:47:08 GMT  
		Size: 5.8 MB (5787937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:392bf23f44140d6d17ed553f0ef70d9bd7e253727cb3bc62ebdcef5490ebce3c`  
		Last Modified: Wed, 18 Nov 2026 02:47:08 GMT  
		Size: 9.5 KB (9527 bytes)  
		MIME: application/vnd.in-toto+json
