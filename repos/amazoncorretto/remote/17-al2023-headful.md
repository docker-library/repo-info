## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:855eb9730b15b8853c3cdfd5c780c72474c2fa26ccc0b4469ce166e304632551
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:724c3d1ee7d302ed9a0c87ec7de2a6d6a217774eed7ab4dcac559b9f773f7cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb7298fe1acb413b5d3e1dad9f66d2daa474bcc5f2ea81c611bcb489952f7ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:13 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:12:13 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:13 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:13 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784fb09b3037675a3af2012315194eeb2c8a6c554abb98c14cfae8554650fcec`  
		Last Modified: Sat, 18 Jul 2026 00:12:31 GMT  
		Size: 83.2 MB (83209115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ea77bd29ea9c5f7bc298c5403563f07e85a6c2532bed636f638ed83756a5addd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d5ed548c497dd83fbdb8683f988ba5ffa2d9f143d1dd9626b841e06fbeed3b`

```dockerfile
```

-	Layers:
	-	`sha256:ebb1096576e9c8ee77ef78f808eb505cbfba63dd32e83c44d0f3b66cbada0c1e`  
		Last Modified: Sat, 18 Jul 2026 00:12:29 GMT  
		Size: 5.2 MB (5222138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd371426833a0a0ca88dcef3d3d85faf0721f941a6b15d3d59da703d7409c21c`  
		Last Modified: Sat, 18 Jul 2026 00:12:29 GMT  
		Size: 9.1 KB (9053 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:aee7a3617571bd071837cc38b4de8c47ef12ed2be91d631b2b460705967b6d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136080897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7055a889f3a96a6f80cd9cd3782ba5b4f26630f4a89734d1d7eb971c7b8c42da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:04 GMT
ARG version=17.0.19.10-1
# Sat, 18 Jul 2026 00:12:04 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:04 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:04 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206fe74f60f287c15c92b0cfcc9bddc8da6050f7df01e42c097be0081326295`  
		Last Modified: Sat, 18 Jul 2026 00:12:23 GMT  
		Size: 82.6 MB (82631665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d77fba8f90a8a9a841636f9c84a48038d01f774b369953b1cf3b4cb8dafc6fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0612947f497dcba3280602d970f29409039a28a63d16f14dec132ea1c49492`

```dockerfile
```

-	Layers:
	-	`sha256:c021a6a893763970c46d9e131e5496e05e061eca3ec5dfe94a737523585d9e47`  
		Last Modified: Sat, 18 Jul 2026 00:12:21 GMT  
		Size: 5.2 MB (5220930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97703a29e89e8adc9e13ba850f0e7581a8c5bfc6e9fffd045661ce24ba53529d`  
		Last Modified: Sat, 18 Jul 2026 00:12:21 GMT  
		Size: 9.1 KB (9133 bytes)  
		MIME: application/vnd.in-toto+json
