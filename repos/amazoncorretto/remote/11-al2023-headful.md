## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:2f42ea8f66d4e81cedc895fcc39b4dc6956a2851e23ef69415653190ec059f48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:32d52a5d362a551c0fcee5ad02a0bf0e44960f8188cec805faccf19305462f74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131370203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd52b34cf86116bbee8a08dc8407c44839a5c1020db9a8e189b814424f7a468`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:51 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 19:58:51 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 19:58:51 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:58:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a9e5bba359cf5fb9bac4f564f44542f4787628f51b49cf3eeec9f09466df17`  
		Last Modified: Thu, 05 Nov 2026 19:59:07 GMT  
		Size: 76.8 MB (76800588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f94aec4a8c3439f91d426c0f2a6f910658401f00abe6c42c8d0bc97f7db4827e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02f013a2ca72fcb60c4b95ba94db2315ec8684d907be8c40ac5bc616914d4e2`

```dockerfile
```

-	Layers:
	-	`sha256:dd38632f59dea5307c3d2ca7157dba8583bf788d9a1e8a8217a6b744f003e78f`  
		Last Modified: Thu, 05 Nov 2026 19:59:05 GMT  
		Size: 5.2 MB (5235653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24211a46a6d8e489121c96781a02dc36f6591baf65e463787ad93822bc47d251`  
		Last Modified: Thu, 05 Nov 2026 19:59:05 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e5c674504200682e2716cc2d14c16af8107bb5c61fd763dfe9b53bf59d2a4d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129512403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac85deb694df8473401c0f04fb1e9a6e11fa490cd5ffd6b926164fd9b26baa43`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:32 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 20:15:32 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 20:15:32 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba858a32ff97c91f145fae154deff335a8d207ad7fc7aa64a46c58b518f2f009`  
		Last Modified: Thu, 05 Nov 2026 20:15:49 GMT  
		Size: 76.1 MB (76056280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:39cb1424bec09362dae8debd186c5e144507ceff688424d878016852798bf315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56d7f81847ec940a7a9a8dfe5292fe5d853d7ca0b369b2f1a9de33c4cbc3dfa`

```dockerfile
```

-	Layers:
	-	`sha256:87c960293b7d8d9eccd16805872232bef48aac3af0cc2d7eb99e781192668a05`  
		Last Modified: Thu, 05 Nov 2026 20:15:48 GMT  
		Size: 5.2 MB (5235286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f3efe943630fc59dda04273a4c2f5286c6a640559aeef1ad8e2fa4ff2bc9c97`  
		Last Modified: Thu, 05 Nov 2026 20:15:47 GMT  
		Size: 9.4 KB (9383 bytes)  
		MIME: application/vnd.in-toto+json
