## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:f135634b1ed92aa7d8fda494381f880654e257de9c082c08a0261b2a1a951f1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0f47ff030d1a5ed8fed3de0ee15d999ea63bbc4062e01dddc23ff43bd26ca708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228781088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbaf576d65a796735212876d7964621fb76cdfc31a2cd53476abf295016a0cbf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:36 GMT
ARG version=17.0.20.12-1
# Fri, 23 Oct 2026 01:10:36 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:10:36 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8332e0703c13d226f28d2b8f80a38d75ea71ef65c82eceadfa0e891a54d8e5ea`  
		Last Modified: Fri, 23 Oct 2026 01:10:57 GMT  
		Size: 165.8 MB (165807188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4f8c722a8c60f64f516f5a911661d2e17d7db75bbef3847b44692105400d3bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57ffab3bb79676a75d609c55d16712279828ed39871547cf230cd99a3778e0b`

```dockerfile
```

-	Layers:
	-	`sha256:12bf85e46516222d8fcb9777089044139dd668791230784d809475b2e0bee74a`  
		Last Modified: Fri, 23 Oct 2026 01:10:54 GMT  
		Size: 6.0 MB (5972778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ef7d27378ee1e1cfdca9920e80125bb8021d7fcaf7facc5d8bd9517f38f13e7`  
		Last Modified: Fri, 23 Oct 2026 01:10:54 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e33f03da1291a398dea79193097ef74d0289969fc92ad18b1ee4c3283782632e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221191779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4f4a7c25bc9a62660292a7f2adad9b3fae5c8df6bb33d96103dd840366781e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:34 GMT
ARG version=17.0.20.12-1
# Fri, 23 Oct 2026 01:10:34 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:10:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66872c0ae4a6a4b2f9f50ea35c98d97344ed8bdcf2d969d4810a404a95005946`  
		Last Modified: Fri, 23 Oct 2026 01:10:57 GMT  
		Size: 156.4 MB (156356060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:07c51f3d8bd91366fbb0d0a06582cbd4431bfefb96d080e70331884d1b54f320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee0c7f38d0366c75942a0d1d0deb03a0ebd8bf3ecc735fdee69c14cca022dd8`

```dockerfile
```

-	Layers:
	-	`sha256:04225c07fd3264720ff75ed45ac459c86582ef744efa5a5be826eafbbb43219e`  
		Last Modified: Fri, 23 Oct 2026 01:10:53 GMT  
		Size: 5.8 MB (5764649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891af4f9ab124712f69c635fd73b5e2e0af5b41120626c1f6565d6b9251207f3`  
		Last Modified: Fri, 23 Oct 2026 01:10:53 GMT  
		Size: 10.1 KB (10138 bytes)  
		MIME: application/vnd.in-toto+json
