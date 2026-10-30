## `amazoncorretto:8u512-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:0bc32bf6940d43b67b54e1a2d2aa6fca7e2af92604bc392a18184bcd8b3414ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5b1f93c5f675cd1b351b7787dac0b2827be8baf91e15d628ca01fe55240f762f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.5 MB (124450835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ca7759f77fc3c45eb460462410f9b5e588cf89c0e6eb70fbe0c3e0d46ffece`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:23 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:23 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0960f39b572e767c2a78aa55704d05a6f1b8c0784a7fac5137614c80242c9236`  
		Last Modified: Fri, 30 Oct 2026 19:43:39 GMT  
		Size: 61.5 MB (61476935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:48b96d21f8322e6de9ab0336bc53d4daafc9919562888d8703be3db8f8f339c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a681aa2ae752061c74679a6fcfaa2d11335b07eafc66ea705c88df1ea29bc829`

```dockerfile
```

-	Layers:
	-	`sha256:bc6aafbfc6b2d0976f836686bb4c1000cc09f78d2b6db54fb8ef9f13a5cddfe2`  
		Last Modified: Fri, 30 Oct 2026 19:43:37 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc6d0d336b01dbd031ee8187d4a9cdc2850605be3c8d525f8a8662b6fdf302c6`  
		Last Modified: Fri, 30 Oct 2026 19:43:37 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f44d0b4f8796fbf92e568f724984174594337a1e8a3ba579a1c19232386f19cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119052015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c3a7bf4e3a4909274a1489520514477ff37fcdd1751a0fbec02785ce038895e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:17 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:17 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:43:17 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c097c0027b340b3d9adab95e6600808b24fe859a20fc38fa459cdfd4794226ba`  
		Last Modified: Fri, 30 Oct 2026 19:43:31 GMT  
		Size: 54.2 MB (54216296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b3650a66bccb64a884258192c99882c4a5bfaa7668aafaf96c1e9b4ff1a9eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf2779edb9301e70428ac87bf26197e4da54e19cf7006f1b0babb50ffae4e51`

```dockerfile
```

-	Layers:
	-	`sha256:1597a776f356a232c7fb0576c24aa0eb9768933b422d1f96d5ee1c96ca52061a`  
		Last Modified: Fri, 30 Oct 2026 19:43:30 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b3471f0d764bcbfc7a9216556f9919574c462b71b9d631520adf2f40b96ec00`  
		Last Modified: Fri, 30 Oct 2026 19:43:30 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
