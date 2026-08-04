## `amazoncorretto:21-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:3af8c10c86af64d415107b4378a1f194eb6df982a651e53d2cd543a034d672ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5f2e66366120eb7a7ab5ab684ca04f01e11407f958248985f86313f14fc06c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144652968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ef0041f2f40ea5e0302511db8adde00ba2959a43889c8dc84ba91e3a47eb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:20 GMT
ARG version=21.0.12.8-1
# Tue, 04 Aug 2026 00:58:20 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:20 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:20 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac532f3281880d45b0467bb56641671a22bc7d86ed17ea58aa683292d731fcd`  
		Last Modified: Tue, 04 Aug 2026 00:58:39 GMT  
		Size: 90.1 MB (90080288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5c21308c17d984496b8b3f47bd158478796ac51073910e4d0a1c7a4c29c1b3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7015ba3a43c0c6c894f2cc824f1b1b65c368895728ba57308d26381822def347`

```dockerfile
```

-	Layers:
	-	`sha256:43150e48e8f0c1e56f64e65aa3b7e9284da960dcc9800c992516efaf5ed34a35`  
		Last Modified: Tue, 04 Aug 2026 00:58:37 GMT  
		Size: 5.2 MB (5224156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a625b440e36ac6c4c68089f3932ba33faa7ed483becc3123b9e287ee0bd0c73d`  
		Last Modified: Tue, 04 Aug 2026 00:58:36 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:89f75ecef286450cf0723a3a60ed2205533ec961841a7e3b60dddb88657ddc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142665358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d91e37e8e35cc48ae67c7b32cf7452eafec1b5d597e581a22a7c95dc81bad0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:56 GMT
ARG version=21.0.12.8-1
# Tue, 04 Aug 2026 00:57:56 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:57:56 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:56 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8972ba36116753f51c8659683a4250d8a8b49f3bc00bc98c126245ff8624c27`  
		Last Modified: Tue, 04 Aug 2026 00:58:15 GMT  
		Size: 89.2 MB (89216701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9468f97f05446e089a45f3f6d91983ea180cd382d9b52af1d0f842aacedee890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e225415889ddd491b88ce876ed8f33998419c672ff6dac944181f604b21694`

```dockerfile
```

-	Layers:
	-	`sha256:47bb80c646bdbca93bb23670a93026e244a257205c82fb7d5b2d8b2de1c3081e`  
		Last Modified: Tue, 04 Aug 2026 00:58:13 GMT  
		Size: 5.2 MB (5222962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf45d44b671cd97f0473c10dfec46ee1f4db95435da682a8516f7402e39edd7a`  
		Last Modified: Tue, 04 Aug 2026 00:58:13 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json
