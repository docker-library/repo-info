## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:f780f99d5b72928c51d381ce06156be76d40ff9561a1c4bf7c608167861c0088
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a66be869149ce4695a27f81ffd3dd08c9e54dcd712d00a7fc93a3c931131522c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154374747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907b30c1e316a007bd5e7ebd186c7de71a8546d24d0e655a2ab7101a9fb423de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:47 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:12:47 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:12:47 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9149797fdfbb1f5f93d6bf7c847b5a39d7a3d03b123b07d90c8940d539fe0e71`  
		Last Modified: Sat, 18 Jul 2026 00:13:06 GMT  
		Size: 91.4 MB (91417452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:841f52462a984bca56995cb8314d4fd6259ce01bfe216d3b469ad6b9509a0e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa22c5b0c0b77269d4a11743e21cfb2989a0db4ef5f0c72fd23e7812c0784fc`

```dockerfile
```

-	Layers:
	-	`sha256:3942863b59750a1479332f73ff3969cbab91ae37a7ef1876ac83b51ba749a317`  
		Last Modified: Sat, 18 Jul 2026 00:13:04 GMT  
		Size: 5.9 MB (5866740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8626a6b0dcbdc59ce08f1dce12a3eae7c6aaf2184cbdfada5f87351c462cc8e3`  
		Last Modified: Sat, 18 Jul 2026 00:13:04 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e3b593a2b55eaaea292222d108443eff363ef10f17ee1ca1a20ed2ed8aed73be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146819317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1f491e4cc755e6a1b5a79b562cd042a53a8a2b762107824164e7760b79fde5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:05 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:12:05 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:12:05 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681efb306f6fe51ac6c33d3cb6f7efeeba2ecbc87770a1f671b08245e148a551`  
		Last Modified: Sat, 18 Jul 2026 00:12:22 GMT  
		Size: 82.0 MB (82029068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1c2391a96a83ba2d8cb6c90c311803c7091a20c6c806038d7697c61388c88f9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a059c363d6a8944ece42fb6325b3b300a854688b4f5a98a0b77fef26452ed4d8`

```dockerfile
```

-	Layers:
	-	`sha256:dcf035cc0d71ced923e8270c0482269d4dfff7c921694a18ab5b0584b8681d06`  
		Last Modified: Sat, 18 Jul 2026 00:12:20 GMT  
		Size: 5.7 MB (5658484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617b11840387a2a0d2594317af36b2192d59b774ec680b2312c5f4643b1d9a9e`  
		Last Modified: Sat, 18 Jul 2026 00:12:20 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.in-toto+json
