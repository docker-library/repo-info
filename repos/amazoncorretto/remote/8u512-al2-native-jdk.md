## `amazoncorretto:8u512-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:dd5840097a7e3d0081b80acb10096caa4897767cd82d60f9876fadc266e86a3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e03d203c2fa01856e5259d8c186d59a7b5c5eccbf8b086b50d6beaf00b3c6d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138095117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c15330bab8cbf36563ba7282619c91a64c8f02b420cf651d442d40568292ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:37 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:37 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 19:58:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd32ab4a3501807f9c21cfbb8004a161557e022e5373e0af46cdb4102d816de`  
		Last Modified: Thu, 05 Nov 2026 19:58:54 GMT  
		Size: 75.2 MB (75156264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:16e590fa6a50a5daf0041bc9367cd0affd3a002ce9721d452da097938a236b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a6c47e379a2bf8f61d105081a6f9d0241a7f1b1027d4f4a926af736e0b703`

```dockerfile
```

-	Layers:
	-	`sha256:8bb492cf53eaa0a6ae51ed40da788b0d65f01e90402889fdc69e625d9a17a9c9`  
		Last Modified: Thu, 05 Nov 2026 19:58:52 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39c7e8af1e14fabf9af0afb7f7f0c5419639e74f4ce9eab4ff5af7c5913c3b46`  
		Last Modified: Thu, 05 Nov 2026 19:58:52 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-native-jdk` - linux; arm64 variant v8

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

### `amazoncorretto:8u512-al2-native-jdk` - unknown; unknown

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
