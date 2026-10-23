## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:e53cac47d136c274b042761554cc1b80aff36f18ca09d1c3c875a0feb3a3a13e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dbc8ae42d5d77ad7f97b9f56eb6257fc74205efd48ac38472d23e8834ec787af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137990894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2265712e32caa282aaf78cf0ff5187216ced56cd7c1c2c12b049260dc9b0329`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:34 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:34 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:34 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:34 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accee40f63351ea701b4ae4cb2d22ebe54523183b68cee338186a3c60011ce65`  
		Last Modified: Fri, 23 Oct 2026 18:08:50 GMT  
		Size: 83.3 MB (83341974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc214c23fad3a8e04e96eacc7adb5534d2862025696a02999c9e90b28f08fe6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1a662b54074edb843b8020e4ff78642a1681528d933c0c531600b4610867ec`

```dockerfile
```

-	Layers:
	-	`sha256:f4968bcae301bdeae1c35faced9a18d4b857d95a3f118519c9be8810afb01dd4`  
		Last Modified: Fri, 23 Oct 2026 18:08:48 GMT  
		Size: 5.2 MB (5222543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1562443bf50a62b76941a4c6d3da8471e68be0afecd9a4a13b88d5e0e9a2b58d`  
		Last Modified: Fri, 23 Oct 2026 18:08:48 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4fe96f9b550b55490166fccd3bd7db830fcd82d64368d7f4b996b11b07b38c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136312956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01503ce5934de8210651c5f9fa950d8133cb6218458cd5820d9bd53cc832576d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:25 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:25 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:25 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:25 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:25 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a80d786da659fbcd6f121efe6ab39ddcdac023817bf0d307d27009a15d10c8`  
		Last Modified: Fri, 23 Oct 2026 18:08:45 GMT  
		Size: 82.8 MB (82783640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:789ccf3f11d103fb80f3869867dd93f6e0b470f10f41511c90e03e55853a568e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73672d399eb5ca421c8f6a8d43dbca3704bea5d3a6cc4175798f66680a5b91eb`

```dockerfile
```

-	Layers:
	-	`sha256:4bec30f9e6c0cc803c658638c432d878d5d016ef831ef84e2884580754c841bf`  
		Last Modified: Fri, 23 Oct 2026 18:08:42 GMT  
		Size: 5.2 MB (5221347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f74ed55478de6d84a4fcb4d2a64fcfd4275ca72153c43dbf40c86e33e6e3e9a`  
		Last Modified: Fri, 23 Oct 2026 18:08:41 GMT  
		Size: 9.5 KB (9524 bytes)  
		MIME: application/vnd.in-toto+json
