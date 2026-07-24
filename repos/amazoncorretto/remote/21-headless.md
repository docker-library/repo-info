## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:5decda2f8b2a1fde9c9c3cc37244f3ef7eea6cd8d9dc63547aa5c3de960fa882
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:822eea7cfde1bfb1bda6cbc52fe58524e2d4fdcd8844b3e6eb8835ab39e72735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143919781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a144be75c45e25b1ac097d31ae108041362711d2ea0b998722bb0ed5b67cd37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:48 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:12:48 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:48 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:48 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaddea6f0a6f39ef50cca52def6c32c1d448869fc921ce17fe665aaffef0274c`  
		Last Modified: Thu, 23 Jul 2026 23:13:06 GMT  
		Size: 89.3 MB (89345517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cd8456cd7366f731727866fdef865bd8130c87973f1b4c86fe81f10748d4e73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0abe4ca509b343f71ba89d6867e35b8222260105e1dfb2b3b70252aad856e3c`

```dockerfile
```

-	Layers:
	-	`sha256:0a7bae918758bcc66f4ca8016e8d357cd961150d15b3989366192756f48fdcc0`  
		Last Modified: Thu, 23 Jul 2026 23:13:04 GMT  
		Size: 5.2 MB (5198653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5af706f98dbbde9c8cde75be67fbbaa8ce3785e3490df370d773dee1ea5eccb3`  
		Last Modified: Thu, 23 Jul 2026 23:13:04 GMT  
		Size: 9.2 KB (9201 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4122cef5180d2bc1735d4c8086f0d44832514add77b37f2822b72dc4cd68ea89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141932906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd87bb795d262c81f4583da7e0ac0cc331a68fcd3125c8ec81ca794adae4ead`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:14:31 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:14:31 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:14:31 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:14:31 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3cc14d12ef885f049375f56249db58aa781176a5a322ac7a5eb707893ae5fb`  
		Last Modified: Thu, 23 Jul 2026 23:14:49 GMT  
		Size: 88.5 MB (88483674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f84552931efebdf69d18c613b7584161cf99bb0758fb4dcd3cdad3818501b0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a049ca3d377bec2d6a217a791db4c83991ee4ec2b8d9cd5140eab3ddef2990d`

```dockerfile
```

-	Layers:
	-	`sha256:65017f482f88f272a59aae8a2315e43b03e8630cadfdabe3d5b2e452a2912c2e`  
		Last Modified: Thu, 23 Jul 2026 23:14:47 GMT  
		Size: 5.2 MB (5197456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab3fb25ad34e7c4bfaa7d24612d62a88ef403950226c31c20c86e4e5b3cd4859`  
		Last Modified: Thu, 23 Jul 2026 23:14:47 GMT  
		Size: 9.3 KB (9293 bytes)  
		MIME: application/vnd.in-toto+json
