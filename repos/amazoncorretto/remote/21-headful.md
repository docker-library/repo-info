## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:d8d0b9345632b846ed4a141770fbed5e3262e03d0db989e637c8c69fdd6636ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c82edd79e9012aa31000eb66a2cb222d0b342b5809b44cea1ce731be53179d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144745025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5114ee5e91f65cdf8942dfd34231cddefa332144200548acfb9bc7c4a7a2d1f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:08 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:44:08 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:08 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:08 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddd31dfe31d7719c6281c9c125ed69c5179dfa7dba7843c4339e3039ed91bd5`  
		Last Modified: Mon, 05 Oct 2026 18:44:26 GMT  
		Size: 90.1 MB (90114255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1fc86cd4dfcc0a13b583bdc23399208454feb89307b67182d836207d1beafdfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d22b08f72fb82393fb95dd7dfc4b8af1a8c3e44619998d44bece01d30e15141`

```dockerfile
```

-	Layers:
	-	`sha256:ed2d2551b88942bc3e77ec958d7284afe112e89682f1942274a20d01f8c6d57d`  
		Last Modified: Mon, 05 Oct 2026 18:44:24 GMT  
		Size: 5.2 MB (5224167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fab543a9b9d0f7e84bbfbbac8952031fbe444afe3382346c5bbef18e576a09e6`  
		Last Modified: Mon, 05 Oct 2026 18:44:24 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:acf275a6add8fb4f3d06ae36c57f657aecaeaa146ab3b63d4211076700aeef1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142748845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a60b6f97d7cac02b1205c96e4f78d1ae607c830c706cd9d58214f46759aeb46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:21 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:21 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:21 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:21 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8581c982c624943bcd93ec3c873a1091726106f0dae62bb021542f3be3cb2ce`  
		Last Modified: Mon, 05 Oct 2026 18:43:40 GMT  
		Size: 89.2 MB (89244447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6a0f45183faae71e9c8b8ce802f7f49ee6cd46c9a820718c24aea7a0cb83934a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6250cd705ead83d070e3ed1ed6b0eca345d925b5f857a95767aea9a1d277d`

```dockerfile
```

-	Layers:
	-	`sha256:0e10dcb3348efd430ed0c0d32351b3e7fa1b54225227beab5a4d952c418f072a`  
		Last Modified: Mon, 05 Oct 2026 18:43:38 GMT  
		Size: 5.2 MB (5222973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfc62726d47408eabfa3697085926f41a158783998abee2c9655d2d5522250df`  
		Last Modified: Mon, 05 Oct 2026 18:43:37 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json
