## `amazoncorretto:27-headful`

```console
$ docker pull amazoncorretto@sha256:cc37b5858f718ad790d2831b3570c5a1ff38240633e9627400bd5fa810f8a680
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bc573ed940948d9937812ddce92d4265dc34820f916bc07f744104f84277ee1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160540575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee77149fbf801ecd62f965119e5750ccd57ca59dd51fdc09acf7fd89c168db0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:26 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:00:26 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:00:26 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:26 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a2e8f0f29d1fe3702b02e8cac8507dded1b4aadfe48214415a6103938318b5`  
		Last Modified: Thu, 05 Nov 2026 20:00:47 GMT  
		Size: 106.0 MB (105970960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4dbebb2dc028b286fb9992895b4f1cfabc4268fe20aeebcf55fabb479ce1dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620f848381f8d790db2148eb2c1a433b42ac5385fabe08f6644875b003ac1167`

```dockerfile
```

-	Layers:
	-	`sha256:0d4f1d134deda8699ce9c54521395033ced1b73ba2ad78c68d4064a72644f95d`  
		Last Modified: Thu, 05 Nov 2026 20:00:44 GMT  
		Size: 5.2 MB (5230837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa111c895feebef221bbcbf4cf9b6954c3efb27c1ef79793491b1c40f51aa13`  
		Last Modified: Thu, 05 Nov 2026 20:00:44 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a420ae8f35f7c6e95b7390b1705304bf776dff6cbcda6a1e49a96cb8e3984700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158481694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8354c4380d4ad53b777f821356654c5c6f1e69cb300373aabca2207c6e6c7d3c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:17:03 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:17:03 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:17:03 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:17:03 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:17:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:17:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6632390f28a0995f6c5bd24648527f0de29c59df376fa265db8d9c5c7598254`  
		Last Modified: Thu, 05 Nov 2026 20:17:24 GMT  
		Size: 105.0 MB (105025571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0112078b63aeb85b5a0934e14e2154bc76c2c5f9b948b8406f143ab8c7069a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6964536549dca4082caab9aa59a44282050a4063f38a887f441c53251ef0ca13`

```dockerfile
```

-	Layers:
	-	`sha256:770fd42387b842d60dad4be5c75f3fb7de2fcabb3d238753aeb305a146dfcde3`  
		Last Modified: Thu, 05 Nov 2026 20:17:21 GMT  
		Size: 5.2 MB (5229648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a1141878073cdcfecdd008ee79989bb3d62bb3ce2147079a1402a3c20023651`  
		Last Modified: Thu, 05 Nov 2026 20:17:21 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json
