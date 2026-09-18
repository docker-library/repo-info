## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:94033b86c1609cb86166688088a70cfc744460e6596e27779a532d9b91b87361
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e30cfe2009c47936fcb70b14a9334b848ac6dfcb4d468a07f925b2f5aa075fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224643441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2219227a482392a265c7726ac1df076dad11e6da630745335f65407d222dbf6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:07 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:22:07 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:22:07 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a344ea50c2dde390d77c28c1a6fd8bcca06d27d9ec6e48e11eee151bc371ab`  
		Last Modified: Thu, 17 Sep 2026 22:22:28 GMT  
		Size: 161.7 MB (161678845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cf103657f906858c06b9f7a3cba49da966095eec07d97f605023ec3c3be1a2dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7855381a9e191f5d7ba8b2e3a7690ca188f8749a149380e302c8828564d25f95`

```dockerfile
```

-	Layers:
	-	`sha256:4d224192f1d2e8abba711b5d069a043f8cae79ca17aec9364f0a2b445c63199d`  
		Last Modified: Thu, 17 Sep 2026 22:22:24 GMT  
		Size: 6.0 MB (5995223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed83f6271f0fbc6c1864857a58f5dd824b461cd1d7f81fceb17ef6fcba32412f`  
		Last Modified: Thu, 17 Sep 2026 22:22:24 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:170cef9e46ce71841cfad3d1faad0d5f34356dfb89e667390bc8ffe3719a3ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216510180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b214fefe1e9e0ea5edbfbd343b00aeffce1b370062d22b4e2cf45f0c6edc8ae3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:06 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:46:06 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:46:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7214ef6864a56f75b78021e922a8d77752dd91f71ef9e859a010ace9c3a87e87`  
		Last Modified: Thu, 17 Sep 2026 22:46:26 GMT  
		Size: 151.7 MB (151705079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0a9e90708caa4aeef6b25fd315c92ba36089727954a7b1449b7011ebcce2e80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44193b521f746cfb9d40e77e191ed902f1c442c6f40d33efa07810565197685b`

```dockerfile
```

-	Layers:
	-	`sha256:d32ba530e75e952311bab58e891408303249fc2b7df19c762865307dcdea402a`  
		Last Modified: Thu, 17 Sep 2026 22:46:24 GMT  
		Size: 5.8 MB (5787937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d5cc6a1b76c7ed49111b469a59fb38e991c4cda6191256d3c8adf2a4d6d9976`  
		Last Modified: Thu, 17 Sep 2026 22:46:23 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
