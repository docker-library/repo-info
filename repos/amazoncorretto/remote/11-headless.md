## `amazoncorretto:11-headless`

```console
$ docker pull amazoncorretto@sha256:c4beac4c9b325534609a1bad86402fbc869eef5f6cba4989e89fe1c34302a73c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c159db711a4fce977e24ad8c515d2fbe0067970f86b194b00fb74b136d5d824d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.8 MB (130751975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11f697380801149a63a534f40fc99243c9f8513c766c14490924b80073e5baa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:44 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:44 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:44 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff5917ed8ca47ddb3f926ea1861a00daecfbd3e07cf066d790c3e81374008d5`  
		Last Modified: Fri, 23 Oct 2026 18:08:00 GMT  
		Size: 76.1 MB (76103055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4b3e19f048d910a84e23d995a000417e01ea47492429b841e2c23d153480efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47755fdce16f75ca0e5a3af835a7eb3608976df3d6908a4fe3d5ec747a27ab7`

```dockerfile
```

-	Layers:
	-	`sha256:8c6010b6b456c44f673a4254d8b61433310b59e25e285b2eaad74776492a277c`  
		Last Modified: Fri, 23 Oct 2026 18:07:59 GMT  
		Size: 5.2 MB (5210216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d73672b315ff215a49a708ace1c6814bc4f2f51f54c32170a6ec4cac2aa06844`  
		Last Modified: Fri, 23 Oct 2026 18:07:58 GMT  
		Size: 9.2 KB (9163 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8ef4c89bc4e2a6af71ae7a357c94311b045fb4e3a98e3e211050f1e107ce787b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128884976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256333c7031741ed42eba4ff603ab35e140e74692e8530dc39971a4095d7843e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:45 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:45 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:45 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:45 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470685985872c209ae40879dc7cc018b37cdc05550ce5c458924ba4907e50620`  
		Last Modified: Fri, 23 Oct 2026 18:08:03 GMT  
		Size: 75.4 MB (75355660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:460ed59dc3851919e9f384f29cb1ae284e70dc46aa3f8491ae380affdfdce24b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6295af65d809899908af7c23736a14846992aaf7f9cdfac4cd9cd228b60aacd`

```dockerfile
```

-	Layers:
	-	`sha256:d63b07275930be3b6132a4dda6d6a42cde293cba997500153f61b9a6cf82c8b5`  
		Last Modified: Fri, 23 Oct 2026 18:08:01 GMT  
		Size: 5.2 MB (5209846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb9a1c34173bfccdb03f9cd8eb002b92ea2c467f89b461fe8b0e1664cd8b7eec`  
		Last Modified: Fri, 23 Oct 2026 18:08:01 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json
