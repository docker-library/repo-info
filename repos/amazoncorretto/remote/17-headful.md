## `amazoncorretto:17-headful`

```console
$ docker pull amazoncorretto@sha256:d5d817f28237be644e93c985ba04058b61bbe94b799b3e8d975d108a698996f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:05f6ad719459143fcb5fc02bfb4b627ecb9fb0fbd7414657df14f5a9b6db5cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137918991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d5288d00b7ae66b017bc3da814df650e4801b20f40561df56b35e2dacd478`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:32:55 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:32:55 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:32:55 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:32:55 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:32:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:32:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680e3f6efdc0c1989575719f9f6a3393a29619eaeeaa6715fbad2a85c924b25b`  
		Last Modified: Tue, 17 Nov 2026 21:33:12 GMT  
		Size: 83.3 MB (83349698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84d4b259a1894161d4ff3d7cb1cc6c923328995743ea0585ea230a524e79837e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60089ac0c2a916f18556d8fd5b7d78715b5e0f4b5fda7d85133ce6eae6a2ab2a`

```dockerfile
```

-	Layers:
	-	`sha256:2e5c3cba89802bb478172ac03b39c34c018496232f51066005e9bee133a91b06`  
		Last Modified: Tue, 17 Nov 2026 21:33:10 GMT  
		Size: 5.2 MB (5222557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:983750c1f08872626b33fe0a8bd764aff6a3f426b711bba6086d71a238223e8e`  
		Last Modified: Tue, 17 Nov 2026 21:33:09 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:34e250a1fc853351f1578e53402de5e408b28f9eb10e14ed3c5e4fef00d972fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136249640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5481458af832fec7612ce6a6b366acd9bad0bada38f8ea35a573529e76541bc8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:25 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:25 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:25 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:33:25 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:33:25 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31367962239737b996a02060b6954bdc7bf5ec84134b73a147d9525933bd49b`  
		Last Modified: Tue, 17 Nov 2026 21:33:44 GMT  
		Size: 82.8 MB (82796563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84b0cf49cf492599aebc43f3a3d491526f3d7ebb491ca8bf26e94404c7987735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8ba8a4197f7b3b3dff51b02248d7f45a646d688502016d7b1a3bceb501938f`

```dockerfile
```

-	Layers:
	-	`sha256:4e646c2847e3a86ce47f5090e2fc81aff2f83c391ef0607dc2e315d148ef1d27`  
		Last Modified: Tue, 17 Nov 2026 21:33:42 GMT  
		Size: 5.2 MB (5221361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2721eddcb79fdcf2bf78934d495b3d4ed755c8f345d2355231d7dc0183204e5f`  
		Last Modified: Tue, 17 Nov 2026 21:33:42 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json
