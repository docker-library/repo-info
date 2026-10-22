## `amazoncorretto:27-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:fd952c70d6feed3afa5771097cb13496f3ce620a800e2d2840c0aa8a81dbf796
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c508091f8d9b7f0a58f1cb88e7052f02ab19454a038071c8b196567270a9290a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.7 MB (159683996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a3d12f54c3c706119944fb8ac1aececfcc1e111d5091fd449b775e00d16406`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:30 GMT
ARG version=27.0.0.36-1
# Wed, 21 Oct 2026 23:29:30 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:30 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:30 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d9d82a10384156c8c7ed462ad72d96b15c771be234e4dd4dad9493ac3a4dbd`  
		Last Modified: Wed, 21 Oct 2026 23:29:49 GMT  
		Size: 105.1 MB (105053226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d11303503489a5df2610be7ecbeee0138d30eb9a3967e3101f1843a20a24f1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db09a55209227f1b0a35554d48340b036dd96edf862820847b076a246099d779`

```dockerfile
```

-	Layers:
	-	`sha256:13114949c4509ac81c5ef20f13e15528022702a823bb1223056d824ea94bdc69`  
		Last Modified: Wed, 21 Oct 2026 23:29:46 GMT  
		Size: 5.2 MB (5205390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca9744b7694034b163bc212cafc444a2208178ee2c57623e7ad5a3570fd632`  
		Last Modified: Wed, 21 Oct 2026 23:29:46 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7e0630f4619ccef6e7f153aa6f2d276d06ec880503f07b2fdaa08823f45a9b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157466652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd2936db2d02a2802a56ad40740b102358edfc8dab1d5fe4fbf5d8f86205a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:21:20 GMT
ARG version=27.0.0.36-1
# Thu, 22 Oct 2026 00:21:20 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:21:20 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:21:20 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:21:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34cfb2c9f389b4ae085c73606b7f995a901e5fe259afeba8d3302e0eee7b2b20`  
		Last Modified: Thu, 22 Oct 2026 00:21:40 GMT  
		Size: 104.0 MB (103962254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5da24286aa40729d0edf5e00b21549c1c1bee4d5e6c1c8ed70fafb7854099c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755756cd78f7ec16a95a745b1127bd0d930ef7985ca6fbb5825933bd5912b393`

```dockerfile
```

-	Layers:
	-	`sha256:b062f36cfc44647da08b8076a5aeb9fdbf3f225c26d386b1518f5c92bb649f99`  
		Last Modified: Thu, 22 Oct 2026 00:21:38 GMT  
		Size: 5.2 MB (5204198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:082b889c3a27c954059eba4a36b38e413aea8ae90f8e7abda15048e801b15ac7`  
		Last Modified: Thu, 22 Oct 2026 00:21:38 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
