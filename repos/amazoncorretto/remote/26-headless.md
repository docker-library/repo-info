## `amazoncorretto:26-headless`

```console
$ docker pull amazoncorretto@sha256:471cda4d3d866ee890cf736b74e09d4e00cee5a83ebb1e43ebcf165a35ce5888
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6e76a90cfc71995a1321e588ef984e30e2134f87367c35e907e4406feff9c300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160393736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d78a7477f6290d1bbb0e93aa7531092282cd5f6e37fca8316e06b9c7d1459ab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:13:01 GMT
ARG version=26.0.1.8-1
# Wed, 08 Jul 2026 21:13:01 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:13:01 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:13:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:13:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49dbc18e96790c1042c70be64288172ae2d2d65f1580a169d5405b652132366`  
		Last Modified: Wed, 08 Jul 2026 21:13:22 GMT  
		Size: 105.8 MB (105819581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c843b457dd1f0e6c54c95143be0257d36c2e8a7028c0a37a4f9cca1bc82be326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067fd6d15a29a39b7d2b287b9a64242d53979b7b23cc1491a777c670471928af`

```dockerfile
```

-	Layers:
	-	`sha256:129a4f1a43d557eb08731b0a91f517414eb1fa35f7786e1a0949f6fe3941ae75`  
		Last Modified: Wed, 08 Jul 2026 21:13:20 GMT  
		Size: 5.2 MB (5206952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b05dad2c44cd6dbfaf4fccf0b6dc48ef3ffcf6fa3bc95a6f22cc2b1429cc83`  
		Last Modified: Wed, 08 Jul 2026 21:13:19 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c5ad36552301771f2467367f185ca59faeeb5a38cb630128968277357f93f088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158154689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960bf356c4432ebc442de904f82f040904231da3e8f12157cf44e38548980de2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:40 GMT
ARG version=26.0.1.8-1
# Wed, 08 Jul 2026 21:12:40 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:40 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a5b8ad3a10df4869b9aaf0e11a4ea596b6f9b361f49cacb604cb638ba9671`  
		Last Modified: Wed, 08 Jul 2026 21:13:02 GMT  
		Size: 104.7 MB (104705755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d19b69a46c6352b6696783c8280ce1b423f20ec1b1bf90e694b2385ed03ef651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a47941d545c3378d4875b89d191e4bcde40aa920f52c9a28c7ecce4e9872bd1`

```dockerfile
```

-	Layers:
	-	`sha256:9c106703a80c9535beff6f7beff4c360af00b7f0909b9911f76d2ddb426053c1`  
		Last Modified: Wed, 08 Jul 2026 21:12:59 GMT  
		Size: 5.2 MB (5205762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7934e643e773d5d6da349068515453e724a0dde2538db4de7fced0bb96e72746`  
		Last Modified: Wed, 08 Jul 2026 21:12:59 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
