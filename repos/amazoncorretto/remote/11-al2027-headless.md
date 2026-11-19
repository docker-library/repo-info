## `amazoncorretto:11-al2027-headless`

```console
$ docker pull amazoncorretto@sha256:e372c29b8bd2a80ba003e596ff1ef9ed25b69f621c2fa3f393100808dc6296d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2027-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c881b65b0b190504ee12ad0a48e53e06e67a3670cc073e03098d5989a52c6132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120644022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9addeca24d2f71e99e7965d192b194cc6e5d29cee945c4443fe848687d8615c1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:10 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:19 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:19 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:19 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2027.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:713da152d33274d711b748fa0018ee981140ec1ddea39655f9e477d1be7eccc6`  
		Last Modified: Wed, 18 Nov 2026 21:17:21 GMT  
		Size: 45.6 MB (45646491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f8e11b9f8e0f746f74b75bbaf274a30873c5dc1f9486d102aa2ed9cfbe2e61`  
		Last Modified: Wed, 18 Nov 2026 21:33:34 GMT  
		Size: 75.0 MB (74997531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ebc2f84015425a9e4936442dadca9585effe443a12072f1fe5fadc1cfbce0ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2967893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a20fca73f21a5978564d4e313a75b098a5bcf7430f0e342e5d7b16a002bd93`

```dockerfile
```

-	Layers:
	-	`sha256:9e2a298be9ff33b7fdfc8d383acaa0348d96806f1a7145c6b4bebcc2a3f25c2f`  
		Last Modified: Wed, 18 Nov 2026 21:33:32 GMT  
		Size: 3.0 MB (2959037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc9d589bab1dd02b435c0abb7104f978aabc70a7751aae855cce8b58ca5d45a5`  
		Last Modified: Wed, 18 Nov 2026 21:33:32 GMT  
		Size: 8.9 KB (8856 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2027-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:af90959ccf38139f847725bee4f497a6b1e0be80a0fb648843a3135275f3778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116361703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14a36597565022c56e17afb43e10ab16ee40d5f1a580010cb05bb977e3c4043d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:14 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:14 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:29 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:29 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:29 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2027.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:29 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:36b7d5c4fd450b30e5fc5b502fb784c91c3e88bce438c8709993b6db627bd46a`  
		Last Modified: Wed, 18 Nov 2026 21:17:26 GMT  
		Size: 42.6 MB (42641684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daecf239ac703473aa234521310c164d60f16ae60bf66f5cf74b6407aba96974`  
		Last Modified: Wed, 18 Nov 2026 21:33:45 GMT  
		Size: 73.7 MB (73720019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a44c765c502bc34e83a4ead702dd70ff771fcd61f01a34c7b2fd57f5b3fdfb9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2968126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efadc289c22d7651d64b9abb3c72077dcfac222450a8c0ceb52cd06a6e4a4f19`

```dockerfile
```

-	Layers:
	-	`sha256:cb6239e8c416a981405db413a15a416996cd835450589ca20160b2e6ef79ded7`  
		Last Modified: Wed, 18 Nov 2026 21:33:43 GMT  
		Size: 3.0 MB (2959190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf662914979eb6aa4347768285fa1f1579cafe5c9865d7d215a2acda5e6852e7`  
		Last Modified: Wed, 18 Nov 2026 21:33:43 GMT  
		Size: 8.9 KB (8936 bytes)  
		MIME: application/vnd.in-toto+json
