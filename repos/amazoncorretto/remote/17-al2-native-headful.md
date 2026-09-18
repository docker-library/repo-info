## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:67ce363a02cc8c0f28556ff573dde1c8e64c3d2cc4d561362f77b4da13c1e65c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c9e7c3fac02e3d2ccb6e7ee0c05fe873e50ca72fb9406fe4b478dbb45c9fdc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154272728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dca00c8009048557a821ab04b1609be6d941386bf2fdf0f3f520e7edc7440d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:34 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:34 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:22:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d941ac56e0ac6f9f02d2724183285e7da6a7cbd5a131a92a3c0431d5fa350`  
		Last Modified: Thu, 17 Sep 2026 22:22:52 GMT  
		Size: 91.3 MB (91308132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:29c2399c96e271fb961a7d5ce9fdb7600342fe3fa786c3f24dd5c908ca1fa464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3d1bd088ded482f737cf2527c9ea5102345df43478e5bcc42afb550b9b1969`

```dockerfile
```

-	Layers:
	-	`sha256:05fb64833c61ad77572f8eecce63ad87ab19e0bde3982bc129836a51ca90bfc5`  
		Last Modified: Thu, 17 Sep 2026 22:22:50 GMT  
		Size: 5.9 MB (5866778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06334fcb85de14d812e0dea5353aac795bad841b7eea17cfaf72ec1dab864fcc`  
		Last Modified: Thu, 17 Sep 2026 22:22:50 GMT  
		Size: 9.6 KB (9590 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d876a6245449ff4619e426b0400980b4df8806d3ade7b6e65f124966136c8557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146743057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9d651de9441c9f727d31d9235ac8987fc006cf12e90b0cb527624fbdb371b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:40 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:40 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:46:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6bbe448b2dd330bb51ea306641291b9a305b88d279152404119825e5d87cc7`  
		Last Modified: Thu, 17 Sep 2026 22:46:57 GMT  
		Size: 81.9 MB (81937956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:619adce6aa9a18605d713aa6e57928d8f1cd69b59ca59ed54b5cb114c5543ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d677874a95beba773799bee8f54eb6f746b419a61fbeb84c4d36f88b268334`

```dockerfile
```

-	Layers:
	-	`sha256:e58b4dd91d982dc005cfb05ce90b4ebba02e09d128dfed178d11411a55f2d1dd`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 5.7 MB (5658522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb8390a515220f06ef8bbdf1ccb9433400e8570b82167eef0f27da7acc61512c`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.in-toto+json
