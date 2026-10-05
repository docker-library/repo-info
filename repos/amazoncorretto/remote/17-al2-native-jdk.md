## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:d56d2519b5567b79220e434bfd7d456058637953aba1b3b13783e9c20aa0bdba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bc2aa7f7402ed15ef5968fb0ebaf663dae7715db62c8564163d02a99c7c52d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228784998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876038a7dc54cf2aac74b8aa1f9126e1753072b606c67981a70930707578ac00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:09 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:44:09 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:44:09 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe48d4e34bd09e1f201e515d41e2f892becf123878d3851792730c3cffacad5`  
		Last Modified: Mon, 05 Oct 2026 18:44:31 GMT  
		Size: 165.8 MB (165820086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a61f2e5081f32f687705637b6cd4a71d31a76d06a056141fc14badcf8c3916d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392ab7bf62e0c6ecf575e06de58e4e5f055b26a747f884cb4fd6f41ce4f6f0f7`

```dockerfile
```

-	Layers:
	-	`sha256:790abb19009a7722d51f5f0d100f43ce7d8721942ad4941c8124252d9223dba6`  
		Last Modified: Mon, 05 Oct 2026 18:44:28 GMT  
		Size: 6.0 MB (5972778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:228fd59ef047444d9d304debdf5a5cf05d5feb9bd268e49d80ab49cd5f1b03f3`  
		Last Modified: Mon, 05 Oct 2026 18:44:28 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:55865fc7796bf217a7bcd5f187be1a24e5aa2fb3667b05bb1b16e71ef6352287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221073473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265255c07952553e1dfd79b52c27914ffefe76d4d02d5e21b193840e49952d6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:09 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:43:09 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:43:09 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7932b01683e066a824357af11c36bbbde189757f97252ffc38248ab5e9bdf5`  
		Last Modified: Mon, 05 Oct 2026 18:43:32 GMT  
		Size: 156.3 MB (156266102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c3810fed8ced67c6d367727e418b35fc0bbacb3e31ea62cb117639387adfdf45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f063c238dedc484227c61d54025bc193733f95680a88eb3a95cfbeb8f7762b4f`

```dockerfile
```

-	Layers:
	-	`sha256:0478ffedd145d3299ebb7cfed6db70ac180b4eb6e39253dab1b1a2722a33b29b`  
		Last Modified: Mon, 05 Oct 2026 18:43:27 GMT  
		Size: 5.8 MB (5764649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddfcd36667a2531d433ce5cd39137939d17936ebd857f92eb49cb5d4ec156b0e`  
		Last Modified: Mon, 05 Oct 2026 18:43:27 GMT  
		Size: 10.1 KB (10140 bytes)  
		MIME: application/vnd.in-toto+json
