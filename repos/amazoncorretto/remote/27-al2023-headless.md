## `amazoncorretto:27-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:07fb670591c31587d8e0a3c144819b1d1ac7b81c05af8d035a831b107aacec2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1b09a1f734b71290ea48b92c82bfcadd6640b58e293c6d45bfc51a281f11eea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159888034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed390815d02110bf4f08e5647f752f10a70a2f8770b88b6a0c78188b84cd2093`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:24 GMT
ARG version=27.0.1.0.10-1
# Fri, 23 Oct 2026 18:10:24 GMT
ARG resource_version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:24 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:24 GMT
# ARGS: version=27.0.1.0.10-1 resource_version=27.0.1.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:24 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d9c7b57678de0ee32d650cb865f24df5ade8fba67f74c70d0f569a10265083`  
		Last Modified: Fri, 23 Oct 2026 18:10:45 GMT  
		Size: 105.2 MB (105239114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:597909eb682df35b33706df1667aaff65fb332736579b476c28ac86983469f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1735e393006a56d3a853aa267e0765c4014c92d1044e9d192ed885d472ebe0fc`

```dockerfile
```

-	Layers:
	-	`sha256:e2ea4b0bd623ffe59e8a6bc988d9919256a386076cba0f319ca957d8f3ea51b4`  
		Last Modified: Fri, 23 Oct 2026 18:10:42 GMT  
		Size: 5.2 MB (5205402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd335b1a1d1ba0208b4e8ac90fd78e1c153ba60d549b299a79b81b94fc5f51d7`  
		Last Modified: Fri, 23 Oct 2026 18:10:42 GMT  
		Size: 9.3 KB (9258 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6403de79cc8628ef6ddfa6c2fbf20f530c9b5283c35f5d72ef6bf14cf34e7839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157815734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5247b78346a653efdb86558872c0c955f06ae0ed8d73f5aec39a99cc6add374`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:21 GMT
ARG version=27.0.1.0.10-1
# Fri, 23 Oct 2026 18:10:21 GMT
ARG resource_version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:21 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:21 GMT
# ARGS: version=27.0.1.0.10-1 resource_version=27.0.1.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da01816c71a9bd8439498ef51d1017886156d12da45d6268883828d77b81b9d5`  
		Last Modified: Fri, 23 Oct 2026 18:10:42 GMT  
		Size: 104.3 MB (104286418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a605f780e702ce7af74800737180be9841f80cb8ba517a4ce0ae4c681a6a79c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878f4febfb63a8de7fbd93ed686b8e48b62350c2d926207dcc06fef0e479f357`

```dockerfile
```

-	Layers:
	-	`sha256:6fadfbe12e5aca65181e003fb7c0701e0e5591c3cbb372a8e7cc87826bae846c`  
		Last Modified: Fri, 23 Oct 2026 18:10:39 GMT  
		Size: 5.2 MB (5204210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21221101cec240e9763ccd0471a1a43e332377525c6f52ade856aeda09483538`  
		Last Modified: Fri, 23 Oct 2026 18:10:39 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json
