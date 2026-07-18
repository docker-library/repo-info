## `amazoncorretto:8u492-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:41af3a80b909327febe329c50d6101ef0cc5eab252a2965ab239a1db40be3c32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u492-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2882b9d37e75f99899315b5939f0bee0de8ed76926043c86c788e3189036d40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188325316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c924a61251c632a8b71f08df1a4a6fa8f0b2173cb0ac88ea28a556076bad410`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:10:39 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:10:39 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:10:39 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:10:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d743b5bab5dc0896c29136019bb72c832b6f826cc5e53a5ce47213d5bac5830`  
		Last Modified: Sat, 18 Jul 2026 00:11:02 GMT  
		Size: 125.4 MB (125368021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u492-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4cd6359a53fff07ae70f959960ee3899bab9a2bbd18b26ea7108fb7be2be3ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e857b2aeff02f28d4fe977395a94aaa7063566a4abcad62370cc8160f99534`

```dockerfile
```

-	Layers:
	-	`sha256:545c2e24fae81d9f18347d33bacdf6058c9452300cf3c3219c9029eebfb507cb`  
		Last Modified: Sat, 18 Jul 2026 00:11:00 GMT  
		Size: 8.0 MB (7977515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f60a8cc6b2e982d30928e96cb61a67cce70b6656db9c4f54864e2515730425b2`  
		Last Modified: Sat, 18 Jul 2026 00:10:59 GMT  
		Size: 9.7 KB (9711 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u492-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d8b329d1ea230ec73602570c555402432058edefd2da133e5b704f04be71220c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132450313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b699869f5f9c08c080682e46d1869853e0d369e9f32e030d889275695bb77233`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:09:10 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:09:10 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:09:10 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:09:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0f949c80dfc90225c2a892b62cbb1fc84e080adf20b7479b8361b02dc97000`  
		Last Modified: Sat, 18 Jul 2026 00:09:26 GMT  
		Size: 67.7 MB (67660064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u492-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:faef06c5986581f6df2c017666a68d3ba99b6181c63d038234ee2f65abe0c711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6092828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ce8705566d9022027c84c8a7583a0b08cec3b24fb4de1b970dd92b6b82387a`

```dockerfile
```

-	Layers:
	-	`sha256:bb790508c5466c4834ac74347bcfac768ff6c7b8337cf34f7310002b54e6c9b9`  
		Last Modified: Sat, 18 Jul 2026 00:09:25 GMT  
		Size: 6.1 MB (6083038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c57c25bebbdfbbc1e09aafe826e9cb5db6d9d163a962d3637fe89be8a04e897`  
		Last Modified: Sat, 18 Jul 2026 00:09:24 GMT  
		Size: 9.8 KB (9790 bytes)  
		MIME: application/vnd.in-toto+json
