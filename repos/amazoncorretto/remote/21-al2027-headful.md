## `amazoncorretto:21-al2027-headful`

```console
$ docker pull amazoncorretto@sha256:a0645bdac9f32c189dcd3f2ba3f0ae703b90c9bd2ce2853288aa4f1fb48aeebe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2027-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:627c4957fa99a7f87c0a28c61ab1cc4ce1b66bdaad895cd911f6a28a0d60c457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136286821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ba3539e3e71d0bb01d4f8408c3e3b7186744614bd73e744593691def248536`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:49 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:49 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:03 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:03 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:03 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:03 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:03 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:bdceceab54920e1a52dc75125e21a5666f649ffa911a955836eced3738f0159b`  
		Last Modified: Mon, 23 Nov 2026 20:29:01 GMT  
		Size: 45.6 MB (45644195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c08ddd2e0bc257530b2854deed2d87cc8fe070f5bcc8db28eaa818b02e0d73b`  
		Last Modified: Mon, 23 Nov 2026 21:11:20 GMT  
		Size: 90.6 MB (90642626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3c4709c15e77eed5e93f9fbb3672e509f43cf869784e2a301a69ca066b6d874b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41193e880c60fd030f43bfa775a25c99f7e7e31c7313d37db77dfb1b879d00a`

```dockerfile
```

-	Layers:
	-	`sha256:dea4d5916cf19501c9f5781cd24ca2eaf27376b993ebb417cd23531ddf5ed419`  
		Last Modified: Mon, 23 Nov 2026 21:11:18 GMT  
		Size: 3.2 MB (3153569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af5f3b833d63788291891743aeab0c9acf24656d0d7545820b824007bb99ea7c`  
		Last Modified: Mon, 23 Nov 2026 21:11:18 GMT  
		Size: 9.1 KB (9127 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2027-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d2523441e24a1e58416e410f350fd6a36f621c98b6cf583d5c59e8f2966dc110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131816169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c117c2c32f432473b052adb55f166bca8bd1667ca9a79b23f385fd6987849391`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:51 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:21 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:21 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:21 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:21 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:21 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b3916e2369ad5254dc0f14f340f147be4b3ff439fa2e783b908d3db25e969e4b`  
		Last Modified: Mon, 23 Nov 2026 20:29:03 GMT  
		Size: 42.6 MB (42646231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684c9dc0697f00b8e5831df5487772bbdd2aea1d480bf6e1ab9394b695722b7`  
		Last Modified: Mon, 23 Nov 2026 21:11:39 GMT  
		Size: 89.2 MB (89169938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:63d332d27eb242749b245bc2509348fea8068bfa7ee8ca65791b0de4dc332ccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f825cb33fe463f71330f27f14a2d59920741b44c075bf7a03de374b3909657d7`

```dockerfile
```

-	Layers:
	-	`sha256:b99de76dd0d39e41e2e789ae391d7e37dee3e31d01107d17c5c98626f9bfd86c`  
		Last Modified: Mon, 23 Nov 2026 21:11:37 GMT  
		Size: 3.2 MB (3152898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92ee373a20ae4608b0561ab6541d6122fbb4710325ae751ac9b767a91a27a929`  
		Last Modified: Mon, 23 Nov 2026 21:11:37 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json
