## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:2791869cead7c2d327fbbc868b91860f6961866cd9218d18da34dd686ccf1516
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:36539e55284b728a14aa9e052adac7128325cb17c9bc553e9fb99205ce17c618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150678325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334a6d8301c1336a44ac952331f167a5d14f7b8b471602db0bde90faa93a4ee2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:08 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:12:08 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:12:08 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b620dea9d2d747f50c807af950c79a4f760b69f681325e1679591ff9cc991bd`  
		Last Modified: Sat, 18 Jul 2026 00:12:26 GMT  
		Size: 87.7 MB (87721030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8b311e382ce843f9d4d0bf4180c83ddf038631284d8278a6f2cc3bbb85901d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc024fd6b3787b3e3f9983bd6e5273725857dd7ba4d75b36daacd3df562fb151`

```dockerfile
```

-	Layers:
	-	`sha256:61e9000a038e1c94965fdbd555b728246c7cdbba39247555a591365a754070ba`  
		Last Modified: Sat, 18 Jul 2026 00:12:24 GMT  
		Size: 5.6 MB (5632679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d0220cb51b860164fd44043e20c338bb5f5741548235e8d613e2bf891f2c192`  
		Last Modified: Sat, 18 Jul 2026 00:12:23 GMT  
		Size: 9.5 KB (9463 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d9f12c84205f9c33db1a148f92e90a32e050a7c1b2e6e6496bdac7b3435c7d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144649098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff15fbddcdae7b0dbc296fc8ddea1ccaeaa1b1f138738ac3c133e5a4c30da727`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:11:24 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:11:24 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:11:24 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:11:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d43117a601c5edc4a3367d126d173e91c4b7689357414387c415235ac0b200`  
		Last Modified: Sat, 18 Jul 2026 00:11:42 GMT  
		Size: 79.9 MB (79858849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:36c0e6df9c383c9fb32ae9c3769ad9147be146a43926f1177907e57e12963ea4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e25f6ef211f701304c9321a1bea3fda79d4d787fa22e6755ef18969c686aa9c`

```dockerfile
```

-	Layers:
	-	`sha256:4ee0480923f6ad437fedf48a335f214f3069a207ce56b602dc78ba1f66f500f5`  
		Last Modified: Sat, 18 Jul 2026 00:11:40 GMT  
		Size: 5.4 MB (5448956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dc99e4093188e666f48a706c613eab8fe781d58646887c5fdad71ff08252fb7`  
		Last Modified: Sat, 18 Jul 2026 00:11:39 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
