## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:0881ec53c0003c93fcc9c4a95245946f633c87aa51313324d647b17a48baf540
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b4e2e876c3e2ce0f1232f3853af32c860b02568909b8cf9470e496d6a11ee5b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172766183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1e071a28019227e1ee6e4aaf04c3266b18eeeb921c843d23736dc061c353ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:24 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:24 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:24 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a309843a3bbd2c3b4e1920f6f978157d35759e91d7e2d689906db2204e1c77`  
		Last Modified: Fri, 30 Oct 2026 19:43:45 GMT  
		Size: 118.1 MB (118117263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:19ae7891841644acf8ce7458c86f0388cf1d3cc996b3346e73e00605c14e76c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690fa397f680980b19daee615dd86f882342a8ed4126daccb8c8eea282435425`

```dockerfile
```

-	Layers:
	-	`sha256:14d1758c5bbd46a2f9deaae23b6f5e0ad11b2b0f903e0c4bd8c3e6b92a058e54`  
		Last Modified: Fri, 30 Oct 2026 19:43:41 GMT  
		Size: 5.7 MB (5706218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a699d7fad60d9a8c006643f61e77024c190bb901496b09892ddd55b6164df9c8`  
		Last Modified: Fri, 30 Oct 2026 19:43:41 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:latest` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a3b1cc6b840ec22738775f676ef2cbf35ef0dda46bcc4e38bcb87c68e5124e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171538983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7796018ca9a3efee4a90dd173b8df67e77e3521c47583fb42d90cea1597a1467`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:23 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:23 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ecfa070abe237f0f5775ad418dfc668a7a5c6e6cf55f73907449b40ba7594f`  
		Last Modified: Fri, 30 Oct 2026 19:43:43 GMT  
		Size: 118.0 MB (118009667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dbeacfed693b72168568fbb8fb2ef21a932d05141c2859525241ba388141e182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0170434fa2e6c86d6d805646f6a5d49296dae35ce8ee8fa9b95302a6a02666`

```dockerfile
```

-	Layers:
	-	`sha256:bc560d3aad8a33d37ae17756a727e96f71a9c7ac2d583140f14bcc351a4271c3`  
		Last Modified: Fri, 30 Oct 2026 19:43:40 GMT  
		Size: 5.7 MB (5706520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ada7ee082062a897543827c64da1b05725619ef2f69f5f958ef38be0dc677dde`  
		Last Modified: Fri, 30 Oct 2026 19:43:40 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json
