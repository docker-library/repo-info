## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:2e054eb2a237021248fe412d14a387ecf3fcb8adb21b0b252b0393cca86630f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:69bbb3c103857c4a8e184730a399cbca543ae0934038140d3e7797a42b807030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143917504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7448b3e94aa160b66ca5b2159328f99eba6de0a9c263a577cc026b6e5301c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:18 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:37:18 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:18 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:18 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524be875cf03c00f8b8571dc385872d93bdc827d40252d03b24e20089288ebce`  
		Last Modified: Mon, 27 Jul 2026 21:37:35 GMT  
		Size: 89.3 MB (89344820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c3ddb32cc1f1950f5e8ec1d1f079cf13f1e2eef4920f33f410568d796d64e22c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7000f18e8c1a6883ca2d2a36c38d024e29d3be05bb0d53c4c47605af4bc6a2`

```dockerfile
```

-	Layers:
	-	`sha256:a1569fdd5142e47ce27994f8ee751b9bd026cc34173c610608f7999b99588365`  
		Last Modified: Mon, 27 Jul 2026 21:37:33 GMT  
		Size: 5.2 MB (5198729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568803280b1a98204f3e5a6d25ff2d0a9c56ca93913fab85dfffda9740129584`  
		Last Modified: Mon, 27 Jul 2026 21:37:33 GMT  
		Size: 9.2 KB (9201 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e5f532d50d729d76f233b202263e2d511f1e05968c53f8ecce18475de0a92c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141931786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e1123c58d87259a743ab5f68a679127e804fea8c934df210d9462585ce67a91`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:36 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:36 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:36 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:36 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306bc6c10f2d8187b355c08d39249d13dd2020686c6663cee1a4adb1f51565cc`  
		Last Modified: Mon, 27 Jul 2026 21:36:55 GMT  
		Size: 88.5 MB (88482175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c3ec825eb35df88f599cd8d3b89c2590eaf47159c3a4517378131f7967265727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6653c0bcfcbbf857f2d422fb947afc07b85cdc5ca440d12456bd0ac7a5af347b`

```dockerfile
```

-	Layers:
	-	`sha256:979f5cbda5aeecea3df568054874f3200f0b556732e9b65ec45112ea975b490e`  
		Last Modified: Mon, 27 Jul 2026 21:36:53 GMT  
		Size: 5.2 MB (5197532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57120f130e18419ccd324e36673295835e7389eb135105196befe1cf9511787f`  
		Last Modified: Mon, 27 Jul 2026 21:36:53 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
