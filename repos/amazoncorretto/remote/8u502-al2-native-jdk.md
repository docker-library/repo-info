## `amazoncorretto:8u502-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:94a971c8123a3800a29ee96fe85306bd64474cd09767a4f0dfeb71572fe30e20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d8d480e3b49e69568bb9e1d52655ace4edf0a6839ca9025f35d532995c31e07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138126200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1887c3ffb67c17b137eb578194ead7658268f40a20a2cf4cd154822b152f4e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:56 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:56 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:35:56 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01e73b8cbbf4054ef7ecc71dd5a8cdba23b409a89910038f46a3ae2d5ad1cb1`  
		Last Modified: Mon, 27 Jul 2026 21:36:13 GMT  
		Size: 75.2 MB (75169379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e69fda357cf8a2060f7d34e2bec92b40269ee25e5a799979da850b339e9b6a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746f58fba40e441ac1fd07aefaaadad04976b399a80e260035c43778bc55610e`

```dockerfile
```

-	Layers:
	-	`sha256:f3b5cf64a0316b1f57b9c9980ed2da1eda2d9ee2edaf87d0bebde3d1224113d5`  
		Last Modified: Mon, 27 Jul 2026 21:36:12 GMT  
		Size: 6.3 MB (6323405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c9cd4b716c098c48fcb83e30ceb5559f8569b006687551e8134bf8b56c6264`  
		Last Modified: Mon, 27 Jul 2026 21:36:11 GMT  
		Size: 9.8 KB (9836 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:98e9c461ec691ceec062426c07678303ec183fb797bd7841bf0eadc21794eedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132777749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2881bd03f64ecde616bb2fc75e589ebbdbf7b95308a3a5475328d980b247c45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:22 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:22 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:35:22 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4934cbcd23be65d2ba4d1c2ce67a21130f8983f60613795f551f4f69029fd0`  
		Last Modified: Mon, 27 Jul 2026 21:35:38 GMT  
		Size: 68.0 MB (67977685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65a0334a3907d81189f2397ba690e27841360fb69762a8a40f1ab2f632de31c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618907df419721402114c22d4fe8cf75d74dc63d9642279bdb379e9e97eb5b7c`

```dockerfile
```

-	Layers:
	-	`sha256:7573afc6d189c1f833a4966a1444d09535c7c141fc9ba4ab9487443dcce2be0c`  
		Last Modified: Mon, 27 Jul 2026 21:35:37 GMT  
		Size: 6.1 MB (6125907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1e6caed365ac670d8f0b1062aaa4bd14316edc24eb9a849349b6d79f2dc16f`  
		Last Modified: Mon, 27 Jul 2026 21:35:36 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
