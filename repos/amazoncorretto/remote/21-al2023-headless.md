## `amazoncorretto:21-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:371e29c6fb6b76b71284794e48a396491d95f1c037f187351760380d1352c774
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:26bbd467c4b547a0c31838dedef1cb6e6ed28541497ba2bbc05a4e135b83a9a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144024995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e077f0a51b155351bfe2683aa843307bd1498d29b3cc722d9e1c9bcbffbf91f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:44 GMT
ARG version=21.0.12.13-1
# Fri, 23 Oct 2026 01:10:44 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:44 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ee1553992dd0ec73b99c4277b1ab255bac4e9cda39d76b4e2da7a88197d17`  
		Last Modified: Fri, 23 Oct 2026 01:11:00 GMT  
		Size: 89.4 MB (89376075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:919132099cb5cafd30e213cd0f9ed37f90c63c65766fd854d27b00cad61954c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70467ba9ea667d0c217d394ea5c18d3be16909e3164d0eba5c30f72cec467333`

```dockerfile
```

-	Layers:
	-	`sha256:441bd4fbbff06e5c7a805f3eb3fe485cec30f5bf913b37ab9c2b785c89adb020`  
		Last Modified: Fri, 23 Oct 2026 01:10:58 GMT  
		Size: 5.2 MB (5198738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98891aecb7debb461ea393af5dd9619aceb5ed4a464aafcd5921dbecc0375ddd`  
		Last Modified: Fri, 23 Oct 2026 01:10:58 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e83ce77220a3a3f93e3d76691a3d29baca17bf652becac44da44f0deb0ef2606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142037926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe92e26d0f76d8768c7727bd4eb27071f45049ac2edf47bbe55bf1d36f5f68e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:39 GMT
ARG version=21.0.12.13-1
# Fri, 23 Oct 2026 01:10:39 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:39 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:39 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d704c9229e89b4eca7d325e0c4faca0e0598a71234ef43f9b66c9240dfa28b7`  
		Last Modified: Fri, 23 Oct 2026 01:10:58 GMT  
		Size: 88.5 MB (88508610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9c88574332ebe59d9c754f79fa1a539eb8edaece1d0a55c96d73bb2095d70562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b9da7193bf7154092d3ba2a14f9a2657f16637c15eb0e61256a04d03ad4d72`

```dockerfile
```

-	Layers:
	-	`sha256:d445ee241d7a0722404837ba318f82da5bffdd877aca5d4c8ec7828df1cfe333`  
		Last Modified: Fri, 23 Oct 2026 01:10:56 GMT  
		Size: 5.2 MB (5197541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae237b6e82b3548eee9de586b84b2d1b8cdc5ad78c185f4d1c42f596beb5cdd`  
		Last Modified: Fri, 23 Oct 2026 01:10:56 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
