## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:49d8bb540d0f4c67d94b244d5be55bcaf08c1ffe4cfba530720b6c0edd05bb41
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b92ea2c4baa1b045070d48eb0f82b79c8d0fae7f20e0a51870a68f8abb0366f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154282178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a96ee22ba7aaca16a07570f4f2a6de7581657d7e5b38ecd3d19a476909559d3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:02 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:58:02 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:58:02 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033c341852521a5dbda84d9def316df57496893e5ff060b3610ac6fc45d677b6`  
		Last Modified: Tue, 04 Aug 2026 00:58:19 GMT  
		Size: 91.3 MB (91332344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e2dc598d4d2e83f27c2512575f8a9f5d91cd030ac93ea327cd4acf6f0c611706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80960506dc70852f26f56a3fe5971ebb104159dfc35eaa53be2e002c30d1e430`

```dockerfile
```

-	Layers:
	-	`sha256:9d3f67eb6e25166c4aa09eb5156ad669ad5f9d608288a10e71f70ef28c012add`  
		Last Modified: Tue, 04 Aug 2026 00:58:17 GMT  
		Size: 5.9 MB (5866738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3c2928797d0229b4e0e0830ddb35ba70ddd37886e7a04550784786910799d83`  
		Last Modified: Tue, 04 Aug 2026 00:58:17 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:075302050633a5eb0815d7a284fbcb84a5598cb39ffe74d241405de3adc7a207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146722633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8ce827cc67ff66600c3f36eb6e30ab307dab4a759e098c30de310acbccd7cf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:37 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:57:37 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:57:37 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17afa43202e5f8a89ac73a3cb12471dddf391cb6dc1e562fd2889b07efda425`  
		Last Modified: Tue, 04 Aug 2026 00:57:55 GMT  
		Size: 81.9 MB (81922038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f9528c81bdc24ae89727ca1c19d1942506d45fdbd189804bc5bebaa67429f293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b94482bbbe7aa786166188866e2f1b68a18f89535570b9e597a3f1af305bd70`

```dockerfile
```

-	Layers:
	-	`sha256:1eba2241f069c9fd9557b1dd1d1a69b1cce0d2e6d34c0d080b066b297960b6d3`  
		Last Modified: Tue, 04 Aug 2026 00:57:53 GMT  
		Size: 5.7 MB (5658482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fc726aaad71063e31dbdeb3e48f09b661eb59118a356ca062e97292d89309db`  
		Last Modified: Tue, 04 Aug 2026 00:57:52 GMT  
		Size: 9.7 KB (9665 bytes)  
		MIME: application/vnd.in-toto+json
