## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:694a64efdc20330994e8aa456e0478c1e326924c508152e01bac9d0ae691533d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7813f1cf6db87ae86aa0178adc359ac276e13538bf169363077e67269629b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144890847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4a65050b6ba2e4de2111b74228da07c61c94be48e2b3e7f2e271e0223eabba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:57 GMT
ARG version=21.0.13.0.11-1
# Fri, 30 Oct 2026 19:44:57 GMT
ARG resource_version=21.0.13.0.11
# Fri, 30 Oct 2026 19:44:57 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:57 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:57 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddba047da8160d18fb1417c8da532c74693912ba30a88afff4fb5fd5c946e893`  
		Last Modified: Fri, 30 Oct 2026 19:45:13 GMT  
		Size: 90.2 MB (90241927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dac4316524cfec9223ca4cf4a9cd5e0687706ff0bf30f87e6675f0461fc2cf3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11769d4355b1106a5feb88ac47eff4dc170c8835938dd37a658f4630214b2ac7`

```dockerfile
```

-	Layers:
	-	`sha256:9299f2d3827972d650df99b45fdc05799551770419045fed71567bd4b0a9c433`  
		Last Modified: Fri, 30 Oct 2026 19:45:11 GMT  
		Size: 5.2 MB (5224169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ead0014f6da920f4e9f4d831e535335bb8679e35e2c316ebd6c7b27ccd85507`  
		Last Modified: Fri, 30 Oct 2026 19:45:11 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:aa51c5cb8040ec19d4850914ce2734be5ad9f78720bda3da5069d86ef77a6ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142916840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dbc184d498d2f4c54143cf31d6d02dcf67100a3b0b71106db3e70a6d060553f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:48 GMT
ARG version=21.0.13.0.11-1
# Fri, 30 Oct 2026 19:44:48 GMT
ARG resource_version=21.0.13.0.11
# Fri, 30 Oct 2026 19:44:48 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:48 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:48 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ac784dc4f816ad4249e1e031654ba452cae0eb3dfffe1047e17a43225bd0e6`  
		Last Modified: Fri, 30 Oct 2026 19:45:19 GMT  
		Size: 89.4 MB (89387524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5fb0b56451e946061b1c48f0a0c9fb52f75b7347ec92e7affca76715f484f30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49427020311dd63fc7ba13e3997eebedcd35b83903349a2031d02a8b0f185715`

```dockerfile
```

-	Layers:
	-	`sha256:faa8ed8dc319653eb756abe8256bb3d9a893d3784b06cee2b368fec43cef381d`  
		Last Modified: Fri, 30 Oct 2026 19:45:17 GMT  
		Size: 5.2 MB (5222975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab4b92be12c37d92aa44b6b7751a1b5f5d5310ac14660a5ee31aaad76189c4f9`  
		Last Modified: Fri, 30 Oct 2026 19:45:17 GMT  
		Size: 9.5 KB (9525 bytes)  
		MIME: application/vnd.in-toto+json
