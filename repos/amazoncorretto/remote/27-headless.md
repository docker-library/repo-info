## `amazoncorretto:27-headless`

```console
$ docker pull amazoncorretto@sha256:8d3d9a96a23daaa38148d56e513cc81fa4543c064e83e5e6393b29dd0774fd7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d33e43b30df5fc454c8b481aa44daefdf0776f667704d9175eacc30c8db04393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159810146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06267d6003a11c2ed3ebb6df065c88b0202d5422d785c20aacc0e2ab9123b9cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:32 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:35:32 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:35:32 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:32 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c40311c2f6290b1a6ceaa2b6a517a6a39d5317179d9f166d50aca9eff2759e`  
		Last Modified: Wed, 18 Nov 2026 21:35:51 GMT  
		Size: 105.2 MB (105241055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cbaf573c16b54f7bf0aba8200a117286e63e3226a24dd599ca08b53cb50e83d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b2ecd2c2f670bfb1320213b984d676135c4d5ec9dbde6547a45919c5345607`

```dockerfile
```

-	Layers:
	-	`sha256:3f95d2ba52519eb00827e3e81378a950af60f8a2ddb64156fc062bf21cc2b652`  
		Last Modified: Wed, 18 Nov 2026 21:35:48 GMT  
		Size: 5.2 MB (5205418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f560ea4d8c2a75082061cc5e6cd4eb5e51ee0e4a797de0cc7b80ac93d74136a1`  
		Last Modified: Wed, 18 Nov 2026 21:35:48 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f0624e700ddd61ceec49b664fb00dabba2da5889b84156180f02e17994573db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157754664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7894b8a3d1e463c0faa2533a6146e3766c653ce66a17b8f70767a02e0adf13a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:36:08 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:36:08 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:36:08 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:36:08 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:36:08 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:36:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb09767d38b05f5444c67495cb4d375cb06b0a6eff616792de13caf2546eb86`  
		Last Modified: Wed, 18 Nov 2026 21:36:28 GMT  
		Size: 104.3 MB (104301114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:855690e41ba160503a20cb6245529a1955acd09f3ccbe4ebee5cee7ae341990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17d33dc01a9ffc7c26765353678842ad85c286891f31e8b7add7683fd7ee1f6`

```dockerfile
```

-	Layers:
	-	`sha256:fb9c44b3478b6f7ad2501f29acf2705f3b86bbad0498baa688f356ed0c564bec`  
		Last Modified: Wed, 18 Nov 2026 21:36:26 GMT  
		Size: 5.2 MB (5204226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a957c566ec06be8e7e9f03e6ce54a2253ce4943e9659d89e1050e91838024c`  
		Last Modified: Wed, 18 Nov 2026 21:36:25 GMT  
		Size: 9.3 KB (9346 bytes)  
		MIME: application/vnd.in-toto+json
