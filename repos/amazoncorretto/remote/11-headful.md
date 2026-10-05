## `amazoncorretto:11-headful`

```console
$ docker pull amazoncorretto@sha256:2d0ef45f64c908bbf9f68d9f63b94339ab48279e9ef2775487dc9328bc03baeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a2bf3926ae6572ed9dbf015e65cddf7368502a30cfdd1fffc70a25428c87a248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131414497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee1ef4d224a3a48e5689628fa0ee28ed381da361bdd0d327e229edbf37d6367`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:15 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:43:15 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:15 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90ea238942471c873ef2057532ec229062c018a5fb42d32602f641e73c32c6f`  
		Last Modified: Mon, 05 Oct 2026 18:43:31 GMT  
		Size: 76.8 MB (76783727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4aa3224be1bf693bf75ee504c31f9acc1af032b1f019d52f87297f13725f06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f4a030b56d4d7edbe5fd0dd1fb2ef333e489841e25dec263810e18d8e127d`

```dockerfile
```

-	Layers:
	-	`sha256:12b7b1071cbda4d733840a9cefbeb7805cedeb8840893e88e4f967e6fa7cd7ad`  
		Last Modified: Mon, 05 Oct 2026 18:43:29 GMT  
		Size: 5.2 MB (5235645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10b7283ff55a5218e8939c77baac7f2e35f768f1e91dfb88d216f33c4d1f2a10`  
		Last Modified: Mon, 05 Oct 2026 18:43:29 GMT  
		Size: 9.2 KB (9229 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b6abe972a90155c2cc3f79c8866a461499d6ef842a6264b8c4d90c9d93efac1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129537398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857a0a5ff5c70fe4de91051dad696cb978a040f7af2f7a9b837f37e19f925ef5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:23 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:42:23 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:42:23 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a9eb70d554823396b9f6cfb71b2330a8fd0c29536a252d315d0eb08034088a`  
		Last Modified: Mon, 05 Oct 2026 18:42:40 GMT  
		Size: 76.0 MB (76033000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4db9906de3c243855c9ea5a5994346ecdbafc9c5f85b67bbf35986453dde5a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64790d9766dc97ede88f44d27a87e7586e8ce10cf6c2dfcdc9a69c3a0941081`

```dockerfile
```

-	Layers:
	-	`sha256:4bb9a18047a6e4f563ad78bbc8283ddf50f2fa6039c8ffb6f27cf32ac83422be`  
		Last Modified: Mon, 05 Oct 2026 18:42:39 GMT  
		Size: 5.2 MB (5235278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2edaf5e3dc03e37e0d777160b2a8c4e02304a519f9beb0a935c33d92cb561edc`  
		Last Modified: Mon, 05 Oct 2026 18:42:38 GMT  
		Size: 9.3 KB (9321 bytes)  
		MIME: application/vnd.in-toto+json
