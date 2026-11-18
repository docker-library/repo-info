## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:885563188ee65dccaebdb4283c5cd7a6ef90c0c8fedbd36a06efac998c4176f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:06fbcb03e0c769e2303e4140370f421d9e708cd09f08aee7c92a3dd2d216ed26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154325660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c981951e3787749f4dc0fd99f0180b1346e25f1a81f9037d0b596e17ecf04438`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:39 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:39 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:39 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 17 Nov 2026 21:33:39 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ecbe7ab0aa1aa775f6db2a438286012e43b456c151631bfc7a2db38df31264`  
		Last Modified: Tue, 17 Nov 2026 21:33:58 GMT  
		Size: 91.4 MB (91396063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:03a419e3fc6e1cdc2367ccc007b2db5f07de2b424184df972762f6d701bad934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1901b7952ce777f44dc617cbb267345e797300ea0925db90f2d3adb0482ee2d`

```dockerfile
```

-	Layers:
	-	`sha256:ff37dbb1340f62fec4217efc724ebed8ca5ce19009fa5ce2019b21f6094d4eca`  
		Last Modified: Tue, 17 Nov 2026 21:33:56 GMT  
		Size: 5.9 MB (5866778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c869fd849ad31bea616c049b5e1944ecb40eb1f96dfcaf425d39751b0110ab58`  
		Last Modified: Tue, 17 Nov 2026 21:33:55 GMT  
		Size: 9.5 KB (9479 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:566abe596e23618f0430140d124c694e99a5e0466c52afa3e6faf1fd5a0ebec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146877523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2047ed44117d1bdd23a308b49fbc6c9003334c706d7d7294d535bfa24ea42cb1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:30 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:30 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:30 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 17 Nov 2026 21:33:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5d57ba9caac0c63edcca8d7a9b59667c7d79b3f3c95f0b46f4734010781751`  
		Last Modified: Tue, 17 Nov 2026 21:33:49 GMT  
		Size: 82.1 MB (82101121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:54e94dda373f87acc0e685ca69f587f9666c840e6680143b747abe5d81147999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d587f5cfbf2229d2f909e194f6af71cf785f3c14a4d98c89fb1740b3963383`

```dockerfile
```

-	Layers:
	-	`sha256:346197f32a7ef1fa2a5b1cb6893172b8bc1b76cba934c53c897868396aab33e6`  
		Last Modified: Tue, 17 Nov 2026 21:33:48 GMT  
		Size: 5.7 MB (5658522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bcdc4804aab30cd45d19e23074392270eb4e27b12e2fe93e46acbe04e6d62d`  
		Last Modified: Tue, 17 Nov 2026 21:33:47 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json
