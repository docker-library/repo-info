## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:bcaa2b506d139051c6284979a4f3718bb7ad5c57a82a306edb2bfb67c183f4d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c19c73f2513a9c3799b3a5da44f36a3d4f13e4d868c20c4b0724af3309244a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224647641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7dda07505cb13ef99fd86744310ed057f20b2090b373a1d803302071736bcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:31 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:36:31 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89832ee4c2bc39cf986f51087e8aff60587a2d9a9e1f24e4b4ed0562399ce2e`  
		Last Modified: Mon, 27 Jul 2026 21:36:52 GMT  
		Size: 161.7 MB (161690820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9424b7d7522a7648972448b109e7f25e20c0535b8eeeb7ee77e2a79456ff165f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab995f09c057c3e0589cd7abd21094129e8574f67c9bbe163a8c0414c6beab1`

```dockerfile
```

-	Layers:
	-	`sha256:fae29fe2710cf7a5c4aeafee9d179ff644bd56f1bbfe2adb31faf2182921f7a0`  
		Last Modified: Mon, 27 Jul 2026 21:36:49 GMT  
		Size: 6.0 MB (5995183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f826a355f3c59c74ba018ee6186a1f19a56d11b3cb2c6fec34ddf2363c404ed7`  
		Last Modified: Mon, 27 Jul 2026 21:36:49 GMT  
		Size: 9.6 KB (9553 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0a473a37b28916b72da9ab02ac863d9da97527aa48c798880d9ab13e7e9ef01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216482839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af7f4fd89899967f9034181b0f819d2c5d4fdc7f36e3cf0ae3de3ecf1104e12`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:48 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:48 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:35:48 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ca3abfb15260b64f4e6758d832db9ee97452655d32818fb3aeff9969b06f40`  
		Last Modified: Mon, 27 Jul 2026 21:36:10 GMT  
		Size: 151.7 MB (151682775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:07c27db4df2209dbb86f868e7f888924616161f7ad862a539e0426173e3c60d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5980be01960b6c12a82a1fb95a903456e9cab94a196db746bf48c0855692953`

```dockerfile
```

-	Layers:
	-	`sha256:fcd906b095d52ed8d6f5c6dca851d9fd3d7f33ef83a3294e436b532cc2cecf92`  
		Last Modified: Mon, 27 Jul 2026 21:36:06 GMT  
		Size: 5.8 MB (5787897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1387b1b85ec1255a5b4a495c80900687040fb520a4ac5b2015fbcda99a5b59e`  
		Last Modified: Mon, 27 Jul 2026 21:36:06 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
