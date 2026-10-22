## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:53b1c2ec7ca18be8e5c5edf646846171a4588a2e4285ace3b3b2fd39ef003310
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5ef93782697e8d564b0def0d521f1c21527e73144c50a010b0629f9e45376343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138106343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89bd6fa20c1da8cb87a6f0566ae4f30aebfa0c9d0987cf2b60c268c15b9b697`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:15 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:41 GMT
ARG version=1.8.0_504.b04-1
# Wed, 21 Oct 2026 23:27:41 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 21 Oct 2026 23:27:41 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1eac53e97e4bdc40b2d23aab46d6857501e8f3902e79ba93f325885ca0412f`  
		Last Modified: Wed, 21 Oct 2026 23:27:59 GMT  
		Size: 75.1 MB (75141431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:038120e6ce7338c06406d500600d7f21fa88350dac1af36cf6768dd9b0a033be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979c65ccf92a5779a3e6ee72083beebbca7a6b4945cff11d099555c4ec3afe82`

```dockerfile
```

-	Layers:
	-	`sha256:5f8b32b286881397871456ea79460e918f5d3aa1a2709e87e7c2bc34736eabc3`  
		Last Modified: Wed, 21 Oct 2026 23:27:57 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d68c06d2d6b7cf48fedd4cc617c365f7cbd0c5f2e176137fa2fd69d35360de0`  
		Last Modified: Wed, 21 Oct 2026 23:27:56 GMT  
		Size: 9.8 KB (9836 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7d0c393b648b577acda95ba0ef83a4361ebb1b538ac916ea589b22b875acc1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132772415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5768cd702114fc47cf9c3e440aaf736565f4de6ecc3212413032009588a54695`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:49 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:19:08 GMT
ARG version=1.8.0_504.b04-1
# Thu, 22 Oct 2026 00:19:08 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 22 Oct 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:19:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80792f6b8acf5d7d204be1bb387cebcb994b2f388d942f8af1206911a0450ad8`  
		Last Modified: Thu, 22 Oct 2026 00:19:24 GMT  
		Size: 68.0 MB (67965044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fa69babc402c62a6e127ed3e40a196c8c13862b014a01f90f329bb4e38a4cba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b78f540ce15ad599d68dda51020981d7427eecf634fa56562c4cc33e2aa747`

```dockerfile
```

-	Layers:
	-	`sha256:37259a0ae31d86d71b46736931be182b70bf5600eeacbf8c38a8abdddfa603d3`  
		Last Modified: Thu, 22 Oct 2026 00:19:23 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbb862d0647fb6cc488d4afdcffce1c81aeabfd75d43988f91a65f6330e0f62f`  
		Last Modified: Thu, 22 Oct 2026 00:19:22 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
