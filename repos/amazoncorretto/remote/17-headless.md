## `amazoncorretto:17-headless`

```console
$ docker pull amazoncorretto@sha256:4f71e8d1f2b346cb1c319b3e08b10321baecd04fd6e29d176be96a8c9510558c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c83ec24cce2bcfea77fb4f900c4332b22f3934c9d114e3a9e39b09d5202aca0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137120284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ccc5f73de5871af8b80cb499593e02ffe6f6d1ca3f45b5cfc8cbb49fb9b53d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:38 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:43:38 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:38 GMT
# ARGS: version=17.0.20.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:38 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10592a50164c06f0df0ef7a1f5564e031065fe00de47b71ed493e97c02ec3561`  
		Last Modified: Mon, 05 Oct 2026 18:43:57 GMT  
		Size: 82.5 MB (82489514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3a130d1d45de31ec9a2c2ef9cf46fb2ec482cf8e199af935f889f7b9d558e70a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa4e459a577b6724557b6ef405763ed043a0d481170d65b9a969d49a82597ed`

```dockerfile
```

-	Layers:
	-	`sha256:8fe00ac694339cbe671b8f82fb5bf7b565d66a4fa7297c7af6917db1bc111069`  
		Last Modified: Mon, 05 Oct 2026 18:43:55 GMT  
		Size: 5.2 MB (5197112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cada49bfa3b35d15f746d7a68c43ba7b020c49eb024fc7911c5109f122a2b7ec`  
		Last Modified: Mon, 05 Oct 2026 18:43:54 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:da70d138fd215d7b192eb257134772f3ce79bc92365783dbf0e4eaa5da81d1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135397833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba0110d81d7d92eaea2c8b841400ceca62b88455c0a94094cc16c099b9d4e2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:59 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:42:59 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:42:59 GMT
# ARGS: version=17.0.20.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:42:59 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7df1d360845a571f50ff7290dc70b008b0d3055b17e211c06eeacac54bb728`  
		Last Modified: Mon, 05 Oct 2026 18:43:18 GMT  
		Size: 81.9 MB (81893435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ba1cab689c196aedb8a729babca39f300f084c5fcc30891bd0b12aac5ba84f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37163b5dab417b3a7b5e33903b53fa67326e894d5979f86795a506619c8b663`

```dockerfile
```

-	Layers:
	-	`sha256:84bcc668c7341615a0b7b88f74992c19fe467888e777d4ef07a76e329749c544`  
		Last Modified: Mon, 05 Oct 2026 18:43:15 GMT  
		Size: 5.2 MB (5195913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96f81c022c9a318e229fd328c00bb6545c02f10cb5aa155b50fc8fc2a001b89d`  
		Last Modified: Mon, 05 Oct 2026 18:43:15 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
