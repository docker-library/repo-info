## `amazoncorretto:8u504-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:083d8d27a360f9d4b71701375777cf6e792263a1b5c34027d09569b12304b5cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ff23ade0a84a6bdf0f939da03d074687ef2c4900da89a5de6f4ac0c2ac5d30bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138125862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681b93cc167b738f888ce905d8010056196f38014212a8c83fd82612f5eff155`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:25 GMT
ARG version=1.8.0_504.b04-1
# Fri, 23 Oct 2026 01:09:25 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:09:25 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98df9e0197f8e2df75a3888fe8997612541156094cdaf4df6706b4323e2f5dd3`  
		Last Modified: Fri, 23 Oct 2026 01:09:43 GMT  
		Size: 75.2 MB (75151962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6fa2e5b07bb1bff53f905429ca0fa3c2cfca2aa3b457d7cc33607ddaba3437a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f79cb09eed4dbf9afd34d2459061ed5f1ab305dee765164a40e83318ff7b59`

```dockerfile
```

-	Layers:
	-	`sha256:f50fcc51a16656df913f3c221a8a38643148e7f9c5a600c602c45d281a1df8ba`  
		Last Modified: Fri, 23 Oct 2026 01:09:41 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28f7170858afd1f76d600bc933cc69fcc19439fd81e4441b96e3d668c05cf88e`  
		Last Modified: Fri, 23 Oct 2026 01:09:41 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f1aaf585d678a3236740b8f01395f387ba93c408dc8e898d676840375fc24fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132842891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7b78a0bb10b31bdb30cd14dad7e65f4375996552528cd3ce7bb9267546053c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:28 GMT
ARG version=1.8.0_504.b04-1
# Fri, 23 Oct 2026 01:09:28 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:09:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31104e073c2e995d946261675cde79042b3cad626c6eef0c65968d7a38f09b14`  
		Last Modified: Fri, 23 Oct 2026 01:09:44 GMT  
		Size: 68.0 MB (68007172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:13c646f04fbbebd59ac52a23382daec2731365f69541fff49014b7a14258adff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d03a46979df13ab78ee95da401d2a3a59be5cc2c5ea73d171f49e64c1b6603`

```dockerfile
```

-	Layers:
	-	`sha256:78a579fafcef54a3a741801c188d22bb4dc3d12fecc2450d2a1428d8741e26aa`  
		Last Modified: Fri, 23 Oct 2026 01:09:42 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8df6e1239825e02fed959c5e70824e123e7b68636b13ef4a929cd35ac01288e`  
		Last Modified: Fri, 23 Oct 2026 01:09:42 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
