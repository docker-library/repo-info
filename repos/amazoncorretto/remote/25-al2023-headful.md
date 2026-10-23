## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:860d795266c8f6ef1f639bfa193b9bd20e444ba65e921671fcf80f29c7abb7d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6bcb3749cc8ea156f4d7861da64beaae1936046779e12c26c20e9665b7a4d924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159148848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f679e7dcd3771cb6b81dd01e52eb6e7133c8a77410c4073302920af220cac2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:57 GMT
ARG version=25.0.4.11-1
# Fri, 23 Oct 2026 01:10:57 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:57 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc52368b193b2e698b5ef3a26e66317b28d042ed17f336a4e4c51a2e68c9fc2d`  
		Last Modified: Fri, 23 Oct 2026 01:11:17 GMT  
		Size: 104.5 MB (104499928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:353088862862d24b06d51e7f10c6e3c566aca0ddde62936d9ea5cfab22b4ede5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55da84fbdb9659bbab1ef8afb82b5fe7c7f0ad85ea56fc8cc9ccca7555077a85`

```dockerfile
```

-	Layers:
	-	`sha256:c9558036310212987a80ce1cb7569ded75cb3e0e926831d357f91996c425ad58`  
		Last Modified: Fri, 23 Oct 2026 01:11:14 GMT  
		Size: 5.2 MB (5234106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a01fba6094b93a8d9879c01d381cc5dd915f4395ef26a1958af499cb3cdfa0f`  
		Last Modified: Fri, 23 Oct 2026 01:11:14 GMT  
		Size: 9.4 KB (9368 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:02fb6ed75a627fb528174cf263b9b66c5c7bc31784f8c31bc6d65bbbd9f968e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156964046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c89b9d29257c05b114e4c031b7116476c8026feddf9bb0fdb6ac6dd990d46a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:02 GMT
ARG version=25.0.4.11-1
# Fri, 23 Oct 2026 01:11:02 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:02 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:02 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6613ffbd57b27f18325e861effd1bde5acc62805140ce56518ca2b616d289668`  
		Last Modified: Fri, 23 Oct 2026 01:11:23 GMT  
		Size: 103.4 MB (103434730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b6744c614e33c7924daae312f4cea8af43d93e59b867e6231841670fcc9ca37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7f4fff707afa57f9bee0819749f4718196db2c25f72cc1483294838b6f0400`

```dockerfile
```

-	Layers:
	-	`sha256:32e1be85a738301e8ea5b13f87c0da2ceff502207029fa0664eb8690445b7bbb`  
		Last Modified: Fri, 23 Oct 2026 01:11:21 GMT  
		Size: 5.2 MB (5232921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10f026d167aa846ef8da1a33552320be8489d5bb5181fea10bd66ba08aa8b82b`  
		Last Modified: Fri, 23 Oct 2026 01:11:20 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
