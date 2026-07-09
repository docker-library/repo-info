## `amazoncorretto:21-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:9dc479b7cedfe1465f1a38189aaa549c829cd9a013f4fc60dc535491001189e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:01b74b3e307bfc8017f37614d226dece464994d72bd92717f6e92c099bf21759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143930331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1059ce6667af0f390443ecaf419afbfc51f6538ade0f55900741db7a0f1c2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:37 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:37 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:37 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:37 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7205d5b8ff52ad56b037d05700956144f5690a9ec274c85c2d16113f4c88f7a`  
		Last Modified: Wed, 08 Jul 2026 21:12:54 GMT  
		Size: 89.4 MB (89356176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:592c4fb86437e0a3655e06609efc4a12e14f76ce0d67b7193b12981e13738b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c51309e1e1fc87afbda10f8fd1e3d5994ca204db473a7586752b8d6c88dc6f6`

```dockerfile
```

-	Layers:
	-	`sha256:33c04eebef5f72fcdb77d545909b885df171986b755b8ffe521971ea36e6c181`  
		Last Modified: Wed, 08 Jul 2026 21:12:51 GMT  
		Size: 5.2 MB (5198333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f7746f8ad0d00f5a08ca8b966fbc687ae40dc9c6b23b0cc2c0109f63888c989`  
		Last Modified: Wed, 08 Jul 2026 21:12:51 GMT  
		Size: 8.9 KB (8882 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2bf1893c50be91079c1cc9d16f5f2fe95939a1304acba81b29fab6e8fc2bc635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141938892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c378a7d364ea03e061dda297fd328918d33c91351b3a812843caf87982f06eb5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:15 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:15 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:15 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:15 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096c58539db8e48f381ca252a57701a5e3a000f334e1dd634b534e8739f62c36`  
		Last Modified: Wed, 08 Jul 2026 21:12:34 GMT  
		Size: 88.5 MB (88489958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:05d46fa59f2394e38af7612ff07fc126718de2f7b1d0b163feab54a97775325c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27bd3c170b984735684ce0d40d49ad1869d5521683472eccd60f47dd5d22b2b0`

```dockerfile
```

-	Layers:
	-	`sha256:c0374326b9cb84ecc8c74007504854c9ef34e89c04dea288bc2c227f2d0c9f59`  
		Last Modified: Wed, 08 Jul 2026 21:12:32 GMT  
		Size: 5.2 MB (5197124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b083ce28d77cbb6d5a553a79e6f2090987d4237a95bc9ac1c4e99c641d8d568b`  
		Last Modified: Wed, 08 Jul 2026 21:12:32 GMT  
		Size: 9.0 KB (8961 bytes)  
		MIME: application/vnd.in-toto+json
