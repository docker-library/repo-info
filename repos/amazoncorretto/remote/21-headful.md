## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:bbed7f3a1aedf1408b1e23812de61fb446516776e5b47766198a7dd00757acda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fbddc330848fe2f2cc3adaa3ab622f0e8b8065c702cfdaf36bec02b77c3c5888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144809923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad715ece90b04c812473b5866d7ccb9766cbe5d5c847ea2edf42ed784cebe81`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:53 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:53 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:53 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:53 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:53 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933a2d6a2591867bdb2a24e86491089829c726278cebb0d8292c1e878fe251c8`  
		Last Modified: Mon, 16 Nov 2026 23:11:12 GMT  
		Size: 90.2 MB (90240630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1979b8ab4568b7e0899d6d9d23f629333f54172ec32d2c3f00b05b2db754b077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1fbb0e2e879d9f58e1f083fae218f25a764877185ef826e66a4c5023f54fab`

```dockerfile
```

-	Layers:
	-	`sha256:2f3ebb85cc21372e8a18f4d065c2423e2fb3676ddbeb0d444acb67b595a0176b`  
		Last Modified: Mon, 16 Nov 2026 23:11:09 GMT  
		Size: 5.2 MB (5224185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b9d146af68c39402bb758ee804a3e729965fa74318e4e76afdcb4cc200bd7f2`  
		Last Modified: Mon, 16 Nov 2026 23:11:09 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a4e5c9fd8ed0eb9d1e573efd1b44688cc4d048ffa3e03861f638ab59d258465c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142840542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecb9a4b3f9a815f9f10e78f97c0b929048e2d29fa30cd41f8072343e38b8956`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:53 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:53 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:53 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:53 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:53 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016d1cdbd0b0cfc4c62721fcc12b2d7850b1aedf9995c31f2f53df7eb0296785`  
		Last Modified: Mon, 16 Nov 2026 23:11:13 GMT  
		Size: 89.4 MB (89387465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b582e0db38f9502faec8de8febe1591898c6153146a2ac9742b3a76f7d575f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a910d3a3a7c987f134e54e1cda9d51216d3c5d8615bc32c7aaff4e89ab63d550`

```dockerfile
```

-	Layers:
	-	`sha256:9ed0485a840534143addf3913b235d26ae2ded086871df59a2930560b11536a9`  
		Last Modified: Mon, 16 Nov 2026 23:11:10 GMT  
		Size: 5.2 MB (5222991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce764dafaee7158a5c0fe341b5d2b17c2413d8a7102028a09cb1c5e4eac8cb29`  
		Last Modified: Mon, 16 Nov 2026 23:11:10 GMT  
		Size: 9.5 KB (9524 bytes)  
		MIME: application/vnd.in-toto+json
