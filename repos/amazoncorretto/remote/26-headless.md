## `amazoncorretto:26-headless`

```console
$ docker pull amazoncorretto@sha256:b0da2eb05aadd56d17c7644a8f0aaa08b8de145fc64f708741fac06442bd0ef0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d46446f4dd4ff16b9c69dfbd30fd46670c8ab92071df5b9c1d9ce5e8156bc094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160585380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0cab3c99c0f3df709e78c14150ddb7280ae2d0d5ab586abf13cdc5bc9fab9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:03 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 18:10:03 GMT
ARG resource_version=26.0.2.11.1
# Fri, 23 Oct 2026 18:10:03 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:03 GMT
# ARGS: version=26.0.2.11-1 resource_version=26.0.2.11.1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66d25d94a2d0596a2b61cd665d0ca218c3489e8f2083909e80a5720eb2d28fb`  
		Last Modified: Fri, 23 Oct 2026 18:10:21 GMT  
		Size: 105.9 MB (105936460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0fc4d32572c989b2b3981221a998f38ecadff9e751668281a93dc95f6b1458a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a406e148d8e2c77a685c72c13e7063230958e251a6bc671ca5233405c4812b`

```dockerfile
```

-	Layers:
	-	`sha256:a1d7f609bc1e035c50e4aa3f35f7514da7d7c966f573bf44727b3d1a1e3dfb22`  
		Last Modified: Fri, 23 Oct 2026 18:10:19 GMT  
		Size: 5.2 MB (5207037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:927b18463d4f976dbd707a8570da6317cde4f369276ca4541788a8125ae0151c`  
		Last Modified: Fri, 23 Oct 2026 18:10:18 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7a084a1722ec007f36b9b356a6f8f33934aae4bc550d293ed788825a37c41e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158353626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b2be460025e79a3cfc710b393375fcbd27223832fe54769506b9e541ad8d53`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:10 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 18:10:10 GMT
ARG resource_version=26.0.2.11.1
# Fri, 23 Oct 2026 18:10:10 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:10 GMT
# ARGS: version=26.0.2.11-1 resource_version=26.0.2.11.1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:10 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4165efdfb3bb7fea611a9c244660f5739632346e5896c6c6109b5cbd766391`  
		Last Modified: Fri, 23 Oct 2026 18:10:31 GMT  
		Size: 104.8 MB (104824310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c79c0f2a9d042a2e0486335e52959e8713a74a967c50e8f5903b40aa41743d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd68c3a7a66dbe87ad24a4164ed5b6934692397d29c83ddabaaa1fdc5f048fc`

```dockerfile
```

-	Layers:
	-	`sha256:d95dae5d3c611f466ed1e843199f4a8fa56f69662d925614aa9932ee38131661`  
		Last Modified: Fri, 23 Oct 2026 18:10:29 GMT  
		Size: 5.2 MB (5205847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa1fab0f678e2542467789bd0e40eb9a6bac00d8ece4e49391333201c7451fdc`  
		Last Modified: Fri, 23 Oct 2026 18:10:28 GMT  
		Size: 9.3 KB (9346 bytes)  
		MIME: application/vnd.in-toto+json
