## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:580585dfd1c73b10e1190007c37f72b3f9929c430ba2ab74ce7d972799da6b80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:756c6d020883eb392b00d517a0686f402d4c07bb5bde5330e72c99b47bc3b6c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150590701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87e5e6eb0e2113ee449ed1fdbb1bcbed749121deb2389cee626225c9052a600`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:44 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:44 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:11:44 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47416934966ad782d1df355c5c99bfaf3f21ed01a9189588d7282f3498cddbfa`  
		Last Modified: Tue, 15 Sep 2026 00:12:01 GMT  
		Size: 87.6 MB (87626105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eaea1615712f29f38443159f9f3952f0b1d6119a4eaed03ce22aea001786c9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a8696c63643d9c341dfef2db124a4abe25a15c6d21ae4dc2d7eb48e999b1e5`

```dockerfile
```

-	Layers:
	-	`sha256:95482e65fb2c029a010992a29f6411d7232916304c6d7a709b87609affd690db`  
		Last Modified: Tue, 15 Sep 2026 00:11:59 GMT  
		Size: 5.6 MB (5632717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:335ff4a338d2919b13b17c04c1386cd6aae4429ad2da80b89dc06ab75d913524`  
		Last Modified: Tue, 15 Sep 2026 00:11:58 GMT  
		Size: 9.5 KB (9463 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2295f80832055a76f5502c618d5434fa8c47f2c09d8700b413131625fef121f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144587451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce5a6e58be578f57e5aa8f217b9ffeca0b7dea4cf60c693a83d9a10b80fdf2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:20 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:20 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:11:20 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce04f31e0295cee9740acff73bdff1b5759ffdb3b330541c1c6d0fef9010e71`  
		Last Modified: Tue, 15 Sep 2026 00:11:36 GMT  
		Size: 79.8 MB (79782350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f2d3d791c564ce1e4d2f8a327ff08e8c7da8436cce880832c705ece576330aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525d290bfee1ff33c8aca79ea34bc38dc218cfba95026d6dc4765540cb9ed89a`

```dockerfile
```

-	Layers:
	-	`sha256:8bdf59b82424ad55c6783eb8cac147ca26b25703f1be8540c33a0c23cd4b42e2`  
		Last Modified: Tue, 15 Sep 2026 00:11:35 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:054c7104246cae84daa9a08c203aaa86c4ec58d5d7bd26365a60e4dfe9a6739c`  
		Last Modified: Tue, 15 Sep 2026 00:11:34 GMT  
		Size: 9.5 KB (9543 bytes)  
		MIME: application/vnd.in-toto+json
