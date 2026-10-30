## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:b4e3c22bf33fca3b169a1160926d4d9bc71da467b6b5fb0c3930ba7ea4df7a19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1aa82c4cf1fe003e77597421835b9927b67e2fe26188f3036e15d4eafb734f41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151623430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bb0dc936bc5c077959f01e5d704d43dabef14a491f5124e02a467c794e3616`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:23 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:23 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:23 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:44:23 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2300c47fecf98d64d3343e11a3f6c4260df20d4cf3422f293ec2ffc0284c76f`  
		Last Modified: Fri, 30 Oct 2026 19:44:42 GMT  
		Size: 88.6 MB (88649530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3e692efb5e23cdce7666141458c9b6abc543f55554be8c48624e58aa8451489e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8848ef0c7b234b490e1f1865e179b34cdf8e416d3c121e2842082391855446ad`

```dockerfile
```

-	Layers:
	-	`sha256:70cdf292a3603f3defdf93a4197eb3542836934ba106d011955ecf05bc915d2b`  
		Last Modified: Fri, 30 Oct 2026 19:44:40 GMT  
		Size: 5.6 MB (5632717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee23698cb30e3019d0c9c95c661a26147dd49b368d778da1d12fd0a62a1b1785`  
		Last Modified: Fri, 30 Oct 2026 19:44:40 GMT  
		Size: 9.4 KB (9358 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2231c0ac3267b8d9faa95059f87e4bf22e30ca692a9fdab1150f980d5e345ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145730176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4243b8968a49871a38281a5bc322873cfbd2c39003aafba69bc4f5c12c6b00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:17 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:17 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:17 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:44:17 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9edd3522f13c043488d39f8bc0c373f3f1bf13b218741229be8b2355915cc34`  
		Last Modified: Fri, 30 Oct 2026 19:44:35 GMT  
		Size: 80.9 MB (80894457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:76921a28098c93940409a6f594c222720ea72bc06dfc652afd684e18f0b4745a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8adc904504217a931cdcb60c89948b3b26e450435279e98e80a5adec12b6de0a`

```dockerfile
```

-	Layers:
	-	`sha256:2eba6fbeac3db0a99456b282e863b417625933e4e13971ff7fa7f67ef1ad2e48`  
		Last Modified: Fri, 30 Oct 2026 19:44:33 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db276fa00bdfa052eabc9796f8d3981f5f32014d3dd6a32aafb2764bd40ad7c7`  
		Last Modified: Fri, 30 Oct 2026 19:44:33 GMT  
		Size: 9.4 KB (9437 bytes)  
		MIME: application/vnd.in-toto+json
