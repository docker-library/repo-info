## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:2b56f619c703529a4d6d51d6b94a2b3f0021172b91229c75d7687ac5b5ab08b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:50b17b9c8b459600a5db0fbe833df6ca0bc0d6c6e5fa0e13dba4cf0d690eef70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159136286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25053c54a375eddd5835d5983f9fbae3bfb88cd68497ed906ee02196a6c03512`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:28 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:44:28 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:28 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:28 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d895193ffb0fc17a533d8f58d57b1eae12489c786e5fa08a9469c027a3bb24be`  
		Last Modified: Mon, 05 Oct 2026 18:44:48 GMT  
		Size: 104.5 MB (104505516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f05b8103b855e33b48faf092b2d16d17a5bbe0c20f352c80c4d0bb3939e1c4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b36af87373c598e8a751c797005a63edadad0e80963fd994bb4bc9dca53053`

```dockerfile
```

-	Layers:
	-	`sha256:9c6e02faf8ed6669dd019fcde33a6086bed71388a1f09bdd2e97014a0e3f42d4`  
		Last Modified: Mon, 05 Oct 2026 18:44:45 GMT  
		Size: 5.2 MB (5234106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:618cd7db3dd68141a7be888a61b179344173ab0e2f38827ea3fded5573582da0`  
		Last Modified: Mon, 05 Oct 2026 18:44:45 GMT  
		Size: 9.4 KB (9367 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5466bb15e0b1ab6665001cc9ef27b8aaf5324dbadcc42c0b441feb34a276f9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156933242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa704efa99a7d571fefbe9516b7907bbbeb81f0391991a5a483b295ab21e66dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:50 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:43:50 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:50 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:50 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df947da35442849169d80c6888e000ede7a2cc55d6114e607d945959aaf211e`  
		Last Modified: Mon, 05 Oct 2026 18:44:10 GMT  
		Size: 103.4 MB (103428844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5c4c3e929b6f7b2dbcaaadd879d6069f77e473df13a3cbb13488cbd1653cce47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022a9b766b34dd9ae668415b80a322aa95edcf29f1f7b5d1a74ada64a2d8ce14`

```dockerfile
```

-	Layers:
	-	`sha256:f3ee7a3e0718357cacd4e0371db8505fbcd685cc904fb310b52cab0ab8104c84`  
		Last Modified: Mon, 05 Oct 2026 18:44:08 GMT  
		Size: 5.2 MB (5232921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a24db9c64118f5beb07af7e80beaf034c4f53f0639bbb85a449970fb7fd3cc4c`  
		Last Modified: Mon, 05 Oct 2026 18:44:08 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
