## `amazoncorretto:27-jdk`

```console
$ docker pull amazoncorretto@sha256:f58d4541b3aab1fd90493bbcb0ea2448ff57469d044dbb463e22fdecc2eee25c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:09c8d632edfb0bea5087f472e2cce3c507e46bda8f2a8f9941172081dc5fbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246269837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9b420a07801e21f9a250059fc730e4cfbb31439e4ce5212b03037da13acb10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:34 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:34 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:34 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7598d15fd3ba1f73c7e2b2108f8b7fd3e34ef73a36df468e3c74443639e66e21`  
		Last Modified: Fri, 23 Oct 2026 01:11:57 GMT  
		Size: 191.6 MB (191620917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cd926bf88aea7b813952d7108fdd523146b59f47ab76fb624527926a2745b6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c563c9341860108e9cd7fd615196403d99520d910a215c41ec5f3235414da2`

```dockerfile
```

-	Layers:
	-	`sha256:62fec2f6d84f77e990e000c53d88d8f22eb5bcf766bc916a54d010308587a1c4`  
		Last Modified: Fri, 23 Oct 2026 01:11:53 GMT  
		Size: 5.3 MB (5335241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b885fa53a641d622f533bed71c93a41a02759c9368f9c455cfc1f6914725e9b6`  
		Last Modified: Fri, 23 Oct 2026 01:11:53 GMT  
		Size: 10.7 KB (10651 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:66f3e331fc6a182b69a7ae716e2f8a88c939b2cdbb6470c00fe608662689d89a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (243012619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0c966ad5feccbec5e3810456593ca8e2579df343fd79eb0338f0f54fe22c1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:33 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:33 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:33 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcaa7febc06ac5aa9e00e0df65b7edfb7d6c39b9ab644bfe8fad1cef9de00e4`  
		Last Modified: Fri, 23 Oct 2026 01:11:58 GMT  
		Size: 189.5 MB (189483303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9b090f13c74886387436412da49ecdce07998f5654ed0d42f2820a5ea3c1e6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5344991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8cb5adca0d46b711d5f0f392d32bf6d71c8e99f6841e0546a94e547633ba45`

```dockerfile
```

-	Layers:
	-	`sha256:fd3dd907779c6dcb189d883ab292c368eadd03c0cb95c5ba413034c209339aff`  
		Last Modified: Fri, 23 Oct 2026 01:11:54 GMT  
		Size: 5.3 MB (5334212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c71dab14e955da92176d0ee7873a51d704d9dce08bd752d9df86a500b4a9f50`  
		Last Modified: Fri, 23 Oct 2026 01:11:54 GMT  
		Size: 10.8 KB (10779 bytes)  
		MIME: application/vnd.in-toto+json
