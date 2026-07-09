## `amazoncorretto:17-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:801b85b0d4ea22ca4bc021d9622f4c0a2fae1fcde8671175ce4f88ba0a96c32d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a9016b5b07ca0bcbce075f577e831dc8a5857ded867a69a81fbb68d377bafd61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137062447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d9d9653497a1d04062900a1f48c66eec0a400845c59df511ca0362c8af13857`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:59 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:59 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:11:59 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:59 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30bb83c1d478cbab0d99cd147cba7faa0250c169835df93711bb0434c682bf3`  
		Last Modified: Wed, 08 Jul 2026 21:12:17 GMT  
		Size: 82.5 MB (82488292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9359dcf1bbafe835f17a39717c0cfbb3b66875cc2acb8289c3d8d8c00c001243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d7ec766fac1af580a41a2a4a08c68a011b4684ae2f8f4d383ad584cfe61326`

```dockerfile
```

-	Layers:
	-	`sha256:764a2512ed2c5a9641415deda28c001a0134fc96287f0505144b195815872b02`  
		Last Modified: Wed, 08 Jul 2026 21:12:15 GMT  
		Size: 5.2 MB (5196707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07a8cd2cffa90090db971f89617d2bdbf3a39962152db110c9b73de501caa71a`  
		Last Modified: Wed, 08 Jul 2026 21:12:15 GMT  
		Size: 8.9 KB (8882 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:85a8eff7adf223e196bdef6ec547666b75b904fbdd27801109a99db2c32235d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135344121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a0f8bb7b4e59ac4e2566f463ee97866213d2228977f6f58b224cf396e679a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:41 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:41 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:11:41 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:41 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c571dae4c96db0a2f6acfd9c7e0137632d3450d35adaddd15af165371b5619a`  
		Last Modified: Wed, 08 Jul 2026 21:12:00 GMT  
		Size: 81.9 MB (81895187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:41fffdfb3c47513984b24c0543a0614d8cf8cb3951a583db391f76f974729428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5204458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550f194fd4733fc016bc7b93e9437fa601718aa96bcab79a18c7e2be9131b2fe`

```dockerfile
```

-	Layers:
	-	`sha256:9be1d67b77c0025c9b9aeeb5483e55a4a7a59b6af3585c4eda010ba5a3c082ab`  
		Last Modified: Wed, 08 Jul 2026 21:11:57 GMT  
		Size: 5.2 MB (5195496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfc56a1b8224a06043a3ead9b3ccaa04ea4965fffb3e7cc9f770915da65fd62b`  
		Last Modified: Wed, 08 Jul 2026 21:11:57 GMT  
		Size: 9.0 KB (8962 bytes)  
		MIME: application/vnd.in-toto+json
