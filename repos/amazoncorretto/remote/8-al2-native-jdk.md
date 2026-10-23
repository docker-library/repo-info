## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:fad889627a7e75cd4f7d0d0efb7b2e489007a7253de37125f0aead4934fe733a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7ba86c63f911cbe48f2e2f5fd3956c9c969fb5cc8a5af6e462a4bac94b496a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138148190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5abffe0d06d8b098e3d4d3ab41b9e2f6c8feb1254a69279cc9831ec1c475be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:19 GMT
ARG version=1.8.0_512.b08-1
# Fri, 23 Oct 2026 18:07:19 GMT
# ARGS: version=1.8.0_512.b08-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:07:19 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39fc45df1151136be3663fb67dbb2e7f99cce4e88afd65d6d0817b9256ea34be`  
		Last Modified: Fri, 23 Oct 2026 18:07:36 GMT  
		Size: 75.2 MB (75174290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:87d0897a4ceee207e87c3600c235b2c1bf11e459a6e94ee6a216e23bf3329e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f01db95e91788377160326110a35ae4a2b526634699d5954cf418edaeaddf0`

```dockerfile
```

-	Layers:
	-	`sha256:7c60d977d80a7c30b2f9822526aae464e68184c05dc47cc7ae45c3a1969f0a94`  
		Last Modified: Fri, 23 Oct 2026 18:07:34 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40cb791bbf3a8a4186967f3bfdd551cc174cbdb433b7e103de6108d5fe1ba4ef`  
		Last Modified: Fri, 23 Oct 2026 18:07:34 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2cd80acf792866d4a6b699937775c085a3ccb063a8f6804909a817a53799e024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132867108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbfb9f4493f87d34cc1682c3071c87cf5a5a01af31ac0b9bf921855a756d04f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:01 GMT
ARG version=1.8.0_512.b08-1
# Fri, 23 Oct 2026 18:07:01 GMT
# ARGS: version=1.8.0_512.b08-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:07:01 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46b74ff324c41abb496a7684de8c0da711cd86abb5260f8eaceed6fc0cd1eae`  
		Last Modified: Fri, 23 Oct 2026 18:07:18 GMT  
		Size: 68.0 MB (68031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:835c16bbbdeb3bc47d101c58c9e6eaa6c2e2579c082faeb30b34af1ee7218df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba903710baa25edb386e60fb594363cb1e63b673c2ff986863e2549f666f652`

```dockerfile
```

-	Layers:
	-	`sha256:62d0feb5640b0cef49ea45012b656edb3ac59b4e15393ddeadfd7eca24a57a6b`  
		Last Modified: Fri, 23 Oct 2026 18:07:16 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f2e211317a774ece6b12e3a0d270390aeac307b10f88949283582c1192278a5`  
		Last Modified: Fri, 23 Oct 2026 18:07:16 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
