## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:218a002273e7df520f67ca78c55d4848c8264ed77667e03446a76314f68ea71d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8d848d0a33cf9da9a8d7555cc34c259acd14a14fc3feee760a53daeef6d0dd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228876871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fff32af32d010ede6dcdc4f22bb66e23cecd3819430f8ea61c65c15c13b1be3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:16 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:12:16 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:12:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e07bc7b9804c8855a50488f9be98d44e4ec4b5e2bd27e72965795407f7fc44`  
		Last Modified: Thu, 23 Jul 2026 23:12:37 GMT  
		Size: 165.9 MB (165919576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3309f9a0efed31db08d722c07086ed3ab3be78f5ab302da0978b7135148a653c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5285db8edaa8a34cefc732c2052c2b2f44809da275011699de684c470f0acf6`

```dockerfile
```

-	Layers:
	-	`sha256:65a6da4e0f2090cdf748933042858d2f1e7f8489aa53843dede96fd928cf46ec`  
		Last Modified: Thu, 23 Jul 2026 23:12:34 GMT  
		Size: 6.0 MB (5972730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab5f34c546da81b1af6a3b9be8b80c34e048252b0ef4cfb9328d5965503cd93f`  
		Last Modified: Thu, 23 Jul 2026 23:12:33 GMT  
		Size: 10.1 KB (10055 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b2efc31b734d3c9897f2ccf1ff46411629fb018309364888d3772b4cc9a8c195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221059135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d379b13f4fd2f10ebc98882f3538899b7e924e7cb58f9f2edc792d2ec81f253`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:57 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:13:57 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:13:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e771b735cbffa2b3af81a5caedf316fe1955bde59d8a067026413b4c2b75f613`  
		Last Modified: Thu, 23 Jul 2026 23:14:20 GMT  
		Size: 156.3 MB (156268886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2604cd868306c89bdba4b850e5edb3050d0faf2d77e6da29cb1dbd94259f694b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc1df7b398123a1a753cd5c8e848d5a1f31bd6ccdda761b727b184af87fe8c4`

```dockerfile
```

-	Layers:
	-	`sha256:62c1e4606a1ec7321836c27c43a5d3d6b245b1098532f1c4b58fd336b227dd84`  
		Last Modified: Thu, 23 Jul 2026 23:14:15 GMT  
		Size: 5.8 MB (5764601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75cf5da7e294099dfae32e8905aed5200f6ed55e936b3b0c132424ba5b45a149`  
		Last Modified: Thu, 23 Jul 2026 23:14:15 GMT  
		Size: 10.1 KB (10135 bytes)  
		MIME: application/vnd.in-toto+json
