## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:7ec80ec5fcd5f80ed8457cb0d445f2189ca762b48c60420153ec2cbc0cb69613
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f1bdf2e93c5740bce9b67fd79e6872e0713ca119a83fc0cb35951715c66a75cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130638587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5662832b4f9a440f7ff85aa43ee8b2ad799f04ccb6c06852ca9863b377aa9eb9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:41 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:41 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:41 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f8e951376103280c0eb1911e3c4b715ef44437953646788e1db0fbd1219666`  
		Last Modified: Mon, 27 Jul 2026 21:35:57 GMT  
		Size: 76.1 MB (76065903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a24c517dc7227e23d68525ba91231a5d7d1bc73017305fdf376c254d824afd10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a72c178367f3adb104f48e629bda67b39c606cc1cadb50b6152fe198022b4d`

```dockerfile
```

-	Layers:
	-	`sha256:9f0d9ff296b18268fcc2ba261e52201c676c07a0b35a1782ff25472a991bb9d3`  
		Last Modified: Mon, 27 Jul 2026 21:35:55 GMT  
		Size: 5.2 MB (5210211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91e9cfac87d4546f5b059518094eda7693a9221eb202378660a19c0c54928ee6`  
		Last Modified: Mon, 27 Jul 2026 21:35:55 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c02558c3bfb7e4d9ee12aa4c4fa081300c79b7c24bb3cfed00ff39cff9b8b531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128759826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea3c561fb0326613367482c576ab6b2917c554744325b4f4f708a824b0dfd1b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:29 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:29 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:29 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1837affd4c9d87d8ec39d2c5805817fe14995388816d424ded2cf542cc4e31ae`  
		Last Modified: Mon, 27 Jul 2026 21:35:46 GMT  
		Size: 75.3 MB (75310215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:376ece8cbde8ff880bbcd3d2c34b117d8912b74177b9f06797eb53843805d1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223a7007f43d6ed4193bcf6153ee36bb1b26c2975ebca562d5449cb53b9851e1`

```dockerfile
```

-	Layers:
	-	`sha256:c4cc5330f3f6c2496f4573f796e4a9f634e85ba8343faeab79dcd4e9cfc455e7`  
		Last Modified: Mon, 27 Jul 2026 21:35:44 GMT  
		Size: 5.2 MB (5209841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64a0860ea48ca6c6c9f77d03294215fabbe07bd3c19aa164a2cada1bdabafd3d`  
		Last Modified: Mon, 27 Jul 2026 21:35:44 GMT  
		Size: 9.2 KB (9193 bytes)  
		MIME: application/vnd.in-toto+json
