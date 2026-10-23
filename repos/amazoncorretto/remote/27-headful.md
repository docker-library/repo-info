## `amazoncorretto:27-headful`

```console
$ docker pull amazoncorretto@sha256:1b0023d5ae04c062fdc6f1e7543eeafd10f4eecee765f80b4f8806c0414ec45f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:08f74e98b8e8eb95e3e04ed4cb6ce97caf96e7e82f8232b3ce73f80726137c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160417193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd06cc720b477b4e9be65aff91a9f1632dbc3eea07af9957537977a51cf870b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:32 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:32 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:32 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:32 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2d7542b6d123b6c6029ff3622bcce888c85ef02195b3d15d762edd53520fe8`  
		Last Modified: Fri, 23 Oct 2026 01:11:51 GMT  
		Size: 105.8 MB (105768273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b394665d25e04fc2d05f4603fad79ab6b68ec174026a4950a579eb6f964ef2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db6d3851b82de159118e4cf809456b7ba0a3d46b1fc2bfbe827efbe96494a73`

```dockerfile
```

-	Layers:
	-	`sha256:b1df91869168b50b59754723e437c28ed2a1c0c0306730722eed6fe66446d782`  
		Last Modified: Fri, 23 Oct 2026 01:11:49 GMT  
		Size: 5.2 MB (5230817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a240b208f490393358bfb103153b0eda5a872f143a04c5f7d7bca791b268a46`  
		Last Modified: Fri, 23 Oct 2026 01:11:49 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:626fdbaca8b038de2d80334a83a51dfd0425973b2aca9fd3e2b792ee1628fd1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158210682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093c2ef319af1016acdd9f40e8627d5c1e441642fdb0f6932caa12c0aa9bd5f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:32 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:32 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:32 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:32 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cac35d084a7085f9a123da8891850fd9d1fcf20b599677e1ada06107436c6b`  
		Last Modified: Fri, 23 Oct 2026 01:11:53 GMT  
		Size: 104.7 MB (104681366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2f689e997dd901a0288a2bc170b75f54d78c91974cf4dde81cec5788e61b9f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b467c7f9830ebca64a46b4891c095abfcf2c100c53e0e27e73fac33bd1dace`

```dockerfile
```

-	Layers:
	-	`sha256:c8eb956d49ed5b0b9a39a13fe181e26880aa5c83ec8ce9549ffede99e7bccf33`  
		Last Modified: Fri, 23 Oct 2026 01:11:50 GMT  
		Size: 5.2 MB (5229628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f74317ee72e569d9a4c3ec023290c424e450df362215b05988ac8ed53ceab2f8`  
		Last Modified: Fri, 23 Oct 2026 01:11:50 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
