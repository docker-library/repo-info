## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:b6a0ed77df39bbbac8f2c37c56f40cbb7b76a8cd08a4cc648d67ba352e7885c5
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
$ docker pull amazoncorretto@sha256:c7181c6145bae19cd898998cf4734aa92d1149154875cec4184595fbd0b531d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144587450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d40cfc87ebef4771a687946e3ca165bb8a984d1aba5b7fed08a0a176936060`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:27 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:27 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:46:27 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a099f16436a88c94670b2e678e5994082bfbafb7c85956a9bf1fade76b4b4b4a`  
		Last Modified: Thu, 17 Sep 2026 22:46:45 GMT  
		Size: 79.8 MB (79782349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f54441ffb4882ac9328948b5b220ca66450a83418cdd17f35b9591ec68479205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e397397a524567f988f4a174eb4164cbe070339f367ac446cc39f39a835fd5`

```dockerfile
```

-	Layers:
	-	`sha256:5133aa27debd091880292b4ee490de328e0f27751d14fc491bf1504e8650e818`  
		Last Modified: Thu, 17 Sep 2026 22:46:42 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efebbf90c5da3b65c74f403b55135bae8929b1e281a9cbf1b830744de70bbbb6`  
		Last Modified: Thu, 17 Sep 2026 22:46:42 GMT  
		Size: 9.5 KB (9543 bytes)  
		MIME: application/vnd.in-toto+json
