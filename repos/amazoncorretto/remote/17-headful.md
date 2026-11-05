## `amazoncorretto:17-headful`

```console
$ docker pull amazoncorretto@sha256:34d14dd31e148a28ed6f01349a25a7726a1f1a79b1795f8f7559428ab74bf700
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bde4945cbe7217fe8580c7630d6dcac3f34b6af848ebbc456b29b8f4395b216d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137914198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028616178bbb5781a21d3df850c60f8bc51ea1b00cc223c18c1c266ef6dea1c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:18 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:18 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:18 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:18 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:18 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833092a3eca1f07b49616ae09d7963d97a53d794f17a95024f4f78a2def36735`  
		Last Modified: Thu, 05 Nov 2026 19:59:35 GMT  
		Size: 83.3 MB (83344583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c3a97a865024e34d6f3258f0f2eb32f810014ee2a90e549bfd02fd1a7451d424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0dd81e1b57519af9d29135f7982012f53c111764e7c87fed3b761cff3685377`

```dockerfile
```

-	Layers:
	-	`sha256:d8d1ee753cf2f2a3b62d52ad9c11d1a05f556f43541bf8b10e0a9ac79240b2c7`  
		Last Modified: Thu, 05 Nov 2026 19:59:33 GMT  
		Size: 5.2 MB (5222549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92bb12dbbcff4e709c154a725e2582a0fe2860c94cca2131ceec9d0bf4e4d7c1`  
		Last Modified: Thu, 05 Nov 2026 19:59:32 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6a8078c098ad0fb52969a63cb36423ae96b07934ca75f1500d2aa404252e8629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136240833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776279bed10ac4563ff4fae0d8a915a9df5c1d3dfe00e8153eeebb9c14c319d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:52 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:52 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:52 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:10:52 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:52 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f335c34702c80f4443011d2007d742e9f85b3021434e9835754d00828525f2`  
		Last Modified: Mon, 02 Nov 2026 20:11:10 GMT  
		Size: 82.8 MB (82784710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0ee2b5823887e5c99e17a0ecfe10d65d2076ce0d9072aa60c80bfbc2b5e5eed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb0c365a4ae3e3d683bd6a4d21185665d9786819975fc5236152c388c77b528`

```dockerfile
```

-	Layers:
	-	`sha256:cd8af40c1d6052a4f3278c7935d288b0aa23144d5bcf6aa54fdd781e1b14f9ff`  
		Last Modified: Mon, 02 Nov 2026 20:11:08 GMT  
		Size: 5.2 MB (5221353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dc2e989374e6c402b1597ab3adfd64ee351590073a07db1267169313bac929e`  
		Last Modified: Mon, 02 Nov 2026 20:11:08 GMT  
		Size: 9.5 KB (9524 bytes)  
		MIME: application/vnd.in-toto+json
