## `amazoncorretto:26-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:a77a5259ecb01046dee65985f4d2d336aa6180b9368c771f7857aa317aef6662
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c4334b027f0023d343ec3d02c0b2becc60dcf8770e4511d266ae4ceb6c89c648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160585200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ca3e0c41374166480d5a43b830e9d171e7533f2b3e1bb74ed989a6dfdccf6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:13 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 01:11:13 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:13 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:13 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c402fe49716b151b26d07c7855b2ec22415ddc07b6ccd491efc567e1b73bdf48`  
		Last Modified: Fri, 23 Oct 2026 01:11:32 GMT  
		Size: 105.9 MB (105936280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:552b72f60e93b2151deb3c03136ef9cf57dcfa100d8eeb31d6458178c906f1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c600c37eeacc1babef02ead003b2ec3220f8f9ec5ad69b61d3a76f7ea6e6a7`

```dockerfile
```

-	Layers:
	-	`sha256:ca28452718beba6749bc17a2f5db74944df2cc66020b209faa90a4d4b4c7e1c0`  
		Last Modified: Fri, 23 Oct 2026 01:11:29 GMT  
		Size: 5.2 MB (5207037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6db140caa379eafb403380fa779731f80dc62adcd43f0bde233ed0ef6cce258`  
		Last Modified: Fri, 23 Oct 2026 01:11:29 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3072a4b816fc901f29e86abdc7dfcbac5fd343d6e4a81eb84700c5697939b04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158353672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221e96399ea88687ae1a3656980b621a7facb1f555c8b777b01ccf0ec4bc22d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:05 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 01:11:05 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:05 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9025142767e04ba2ad41992a77f54628838fb7fc3b64c56e6fb9c1fef0ef57e8`  
		Last Modified: Fri, 23 Oct 2026 01:11:25 GMT  
		Size: 104.8 MB (104824356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b5e7b5f7012d8ea9062311ee09660be6141596229272c0f69a89b643e4f70c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87574f3894147fe89ec5505dd530b200fb35aa796e7e541e63114ccab7a4c41c`

```dockerfile
```

-	Layers:
	-	`sha256:43243dd60ea112e6d4ca702061c492ac1015c75932e5fed59801560c5e8bc1c2`  
		Last Modified: Fri, 23 Oct 2026 01:11:23 GMT  
		Size: 5.2 MB (5205847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db8f248a8e74d49755aa38f136f7ac47df773733636c9566c9c5954742851fd`  
		Last Modified: Fri, 23 Oct 2026 01:11:23 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
