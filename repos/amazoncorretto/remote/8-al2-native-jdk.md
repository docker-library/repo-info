## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:fcaec22a23722555cd6e49fab14fb73821aab460823489eed878c69ef39c425a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bfc6c306732f39467ba91cfe21edba275c1cac2002b5fb2ac47afca2d4bc5094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138095106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7aa64a00e5023f0396bb3041f56b39a688b46264a500a96e8e408accdae894c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:10 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:10:10 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:10:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e89418f91f984d17ee0698996a1001318bb44da36495a31da00837d9486577`  
		Last Modified: Mon, 02 Nov 2026 20:10:26 GMT  
		Size: 75.2 MB (75156253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:95d8f7d78714ecf24aea10946e70a1436687a5f486a8886ef80e6114706be656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3064a31a07739ef99227b8b39db32e89e348ebcba98fb3cfb80da5bcfe89e1`

```dockerfile
```

-	Layers:
	-	`sha256:f6b22740840762945724bd3bbcd9a8c3f356531f326de3d83b62ee0256983114`  
		Last Modified: Mon, 02 Nov 2026 20:10:24 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a558dfe96d4048e4c5b2b7c6001d321201a92cfbcbe84c3d812787ba9cd6b6f6`  
		Last Modified: Mon, 02 Nov 2026 20:10:23 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:17f84cf3c9742092d9361898442d1663825b173abb0d0ada68551132a989a708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132845861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce739b443f605a2494b5b02b3228fd3d78e0098fb1b2cec4bc0a45ccd64bcb17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:09:59 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:09:59 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:09:59 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:09:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d7a34cef3c30326d8e28b66b4e379e26ac3dee59c4a6745337a5164831d800`  
		Last Modified: Mon, 02 Nov 2026 20:10:16 GMT  
		Size: 68.0 MB (68039903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a8ea90d3e1c85eed248d475690cb9a6d4e9d47bf12279f63b7bff2632f486e3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713c78c47336f1cadb12ce4007bdfada3e86a252c316eea3c3e5c4dbf8f57909`

```dockerfile
```

-	Layers:
	-	`sha256:7c904cf783a8776bfbfbfbe32bff440f06f6c2b67c320bf30f00c6ce91a456ff`  
		Last Modified: Mon, 02 Nov 2026 20:10:14 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ce4ee2e2eee44985dba43895a6fa7e9ab6ea6632fd6a3994700f216abedf8fa`  
		Last Modified: Mon, 02 Nov 2026 20:10:14 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
