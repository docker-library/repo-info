## `amazoncorretto:8u502-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:cced3ef136ba79f74da0e081d1749d0fee0c5739254850e53495e1c3cb4818c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dc0de1e16831ac89dd552a647893533a2f95663a42bffb7cf26235ab287a3fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123533050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f174afae28d0125ba953fd8416f6d4e5e27b0902c042d215c51dc7cde443df7a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:51 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:51 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:35:51 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c062e9a2ff26bc87180c40912632faaf465f7039c13da4460545bd73549ee66`  
		Last Modified: Mon, 27 Jul 2026 21:36:05 GMT  
		Size: 60.6 MB (60576229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2dcd3ebcc6fb5ac357e2dea039ac9312cbd46b50e23f580132d67e9bf9649590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c6943224d75b0738b15670f848951d65759fcc10b4f15dd7ef5c01051ab9e9`

```dockerfile
```

-	Layers:
	-	`sha256:9ab8260ff2e36ba5f1d22ce7ccadeb67859c42dc6fae0c0de11c715cb9335774`  
		Last Modified: Mon, 27 Jul 2026 21:36:03 GMT  
		Size: 5.9 MB (5859888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86c0f3570c55ffcb9a83b51e03db2adc43ade0350116fb2f923ca666e7651e63`  
		Last Modified: Mon, 27 Jul 2026 21:36:03 GMT  
		Size: 9.8 KB (9799 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8d2778d620f723d933c8917f867ea927de4b600c4595b3d99c74e464dee213e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118023977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6cebbf3f97f2b6c2a57a2f1bca456e0453d0f03e9fcd745126d48abe4783d3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:07 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:07 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:35:07 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1961dccbd7815bf713099dc584ff40f92e5af872b195c910e65a1752aded219a`  
		Last Modified: Mon, 27 Jul 2026 21:35:22 GMT  
		Size: 53.2 MB (53223913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:86e42200758bde059c9737a6e0859b661746d174214da774fc2364e55d44bfde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a7db39476e196ad4629cdf874b9aad1a5b68c6a05aef09d4de14eeb96d792a`

```dockerfile
```

-	Layers:
	-	`sha256:bf0810c35554c7c26281065239b1a1f669672e794634115d4f6018354fbd9c1a`  
		Last Modified: Mon, 27 Jul 2026 21:35:20 GMT  
		Size: 5.7 MB (5661857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599ae61ffad0284c171ae703ff0ce0a6e1b6895600edcfca6159c6e7ee961748`  
		Last Modified: Mon, 27 Jul 2026 21:35:20 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
