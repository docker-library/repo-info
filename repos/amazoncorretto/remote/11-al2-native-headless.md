## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:e0cfeaa8df42ad6a82b63c27506e83b9bded157ce0881ba37d420cc542943cdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:184e4641536cc54f782a4bdc3b3cb8f81f7f378018745f62c5ed14f2769bb0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217365563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2ffbebf7b3c23a1a12fecb2e8bc46e02f5dd293a5b5f6d3f9e1755d4aa0073`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:20 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:20 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:57:20 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e266f16a4ec95982e337b3f698fd4a46dc9085694a35dfd0b772254f1f792f68`  
		Last Modified: Tue, 04 Aug 2026 00:57:40 GMT  
		Size: 154.4 MB (154415729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5f69cca9192204f7b9e9071d3f9e440e126044d3cd8d4170d7536649bab3ce48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02376e7104b95039086c4827b7e3c0e15bfabf86d2326202def1ab94144f724a`

```dockerfile
```

-	Layers:
	-	`sha256:ca6c9d9f132fd7fdc45200d66e2a3e1ea1750135369189190410cdab96c0e628`  
		Last Modified: Tue, 04 Aug 2026 00:57:37 GMT  
		Size: 5.7 MB (5683406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301be47ab25bb5e81de38f6f9cc38aacce6a1ab7ba73af348c2cd588698a9388`  
		Last Modified: Tue, 04 Aug 2026 00:57:37 GMT  
		Size: 9.5 KB (9454 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ec7ee996449d42ef3029d2a242e2581dee1d925dedc2b1cb8519f1ec564a5c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211408463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032414dc6103142f86e7c9fe2b7976990437514fee061d85159a537f161f363f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:59 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:56:59 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:56:59 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2769fc281dd49ea75abae387d25708e49fb0640ffcccd2ae61342b0e3a9fe0aa`  
		Last Modified: Tue, 04 Aug 2026 00:57:20 GMT  
		Size: 146.6 MB (146607868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:60af583ed03d77ba9f2eb4fc2b19fa56e794d8b9efce094fff2e988092d5529f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e601ad64d4a1eab0e2db42ceb4e0d18b3704c6f1f248e64ab10897be556fca`

```dockerfile
```

-	Layers:
	-	`sha256:b196ab231f82d58c789dec22fc2219b50e515cdc66c2a279de4a192a5cba8bf9`  
		Last Modified: Tue, 04 Aug 2026 00:57:17 GMT  
		Size: 5.5 MB (5501874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e1d76d3b319035f2841b52b95cb5eb3a1a8fe9fa163de712cfff9a44cc90ce0`  
		Last Modified: Tue, 04 Aug 2026 00:57:16 GMT  
		Size: 9.5 KB (9536 bytes)  
		MIME: application/vnd.in-toto+json
