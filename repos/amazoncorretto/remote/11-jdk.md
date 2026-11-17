## `amazoncorretto:11-jdk`

```console
$ docker pull amazoncorretto@sha256:82465e93c1b0d7041bb2bb2e2dde51d3d0edf1bac58859e96c9f4c5ae1d1307d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6782d527501c4343f6f5e67ef033475011ed27027fa697951618394fff2828b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208114841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a5d58988a08942aa59fe6de260a176f5edba51c23899518485d6f3deea5c6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:59 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:59 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:59 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:59 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6639143030e87ad0a33741954713424ec7255b94d2104ab85f2e656a3a31df17`  
		Last Modified: Mon, 16 Nov 2026 23:10:20 GMT  
		Size: 153.5 MB (153545548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed7439de56980b4ee93d2c7633d96e6c17ec01527d14c400b0913117323382da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5364690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c87a6ff3e5642b8a19caf47044c926d55707cbe03dbba5d6f410585020fb39`

```dockerfile
```

-	Layers:
	-	`sha256:09910bf60ab16e9dc7172c000ebc002fea3ea72c610d6ab8e2616180a2136452`  
		Last Modified: Mon, 16 Nov 2026 23:10:17 GMT  
		Size: 5.4 MB (5354198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ade33b52de51fa4a0e77b2f6fd685282d13601be8f21ad58c16d1e0ec2164679`  
		Last Modified: Mon, 16 Nov 2026 23:10:17 GMT  
		Size: 10.5 KB (10492 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:17fbd22645ab93ec46d88bd48c70539e5e24f4a6d414d3148f341b72d7dfbf34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205566437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f2b76a140ec9fc255bdb252006d6199907628d3a3a8ff2259f972ad2c2a5a1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:56 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:56 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:56 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:56 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2822fb651c05776846f1a17b796542033891d7c9d2dc722fdb677f34be60f8`  
		Last Modified: Mon, 16 Nov 2026 23:10:19 GMT  
		Size: 152.1 MB (152113360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7e437ad2e3d63b2897bcb1c1757df3d59972dc47f04591f6de6b269e3eb1aa55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5364627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433e7f76b42bcf5bd863ed267597887475b0f270fe411680f511205964e112a4`

```dockerfile
```

-	Layers:
	-	`sha256:e7ebf55274dcba5a6a8e56af3f4c7e205cba88a9f9ce4661427074b2f43a193d`  
		Last Modified: Mon, 16 Nov 2026 23:10:15 GMT  
		Size: 5.4 MB (5354008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:123d8867b150da9208869e715e6d5341563a58c76b5c8fbcbd47c541b3ff5902`  
		Last Modified: Mon, 16 Nov 2026 23:10:15 GMT  
		Size: 10.6 KB (10619 bytes)  
		MIME: application/vnd.in-toto+json
