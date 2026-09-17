## `amazoncorretto:27-headless`

```console
$ docker pull amazoncorretto@sha256:8e87baf4fd5ccbd312e39f0feed14f7ba327a5698eca54ee681e5af1120f2531
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e118cf2224dcd3e251b5ca4bde4826ee37b0c184b7b3e14acafb4775404f9637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159611660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98674786e733bf1d37fa24a42034dd4e46e1c51dc7f465b52a9d5dd4a4f50362`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 23:39:52 GMT
ARG version=27.0.0.35-1
# Wed, 16 Sep 2026 23:39:52 GMT
ARG package_version=1
# Wed, 16 Sep 2026 23:39:52 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 16 Sep 2026 23:39:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:39:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092596268885b7ea35971ce046c728b2dce32b14d38a0e5ab3dab41086af40cf`  
		Last Modified: Wed, 16 Sep 2026 23:40:11 GMT  
		Size: 105.0 MB (105025378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5d7882ff0d1d74f3301c1b8e4cd1db6a9846390c24654ad4704d6e79262a8880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046027fb8e32064b964a31e10e1db090e7808ca4b134c8d843a51672edebe4e6`

```dockerfile
```

-	Layers:
	-	`sha256:8411333306b186bc532e12e181fe179bd8eb731bd6f7df4ef800ac276af6e0ed`  
		Last Modified: Wed, 16 Sep 2026 23:40:09 GMT  
		Size: 5.2 MB (5205389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c353b33608292680abeef9843fa9b276dae6e4adb4f8ab9e56efc20fe48e00f8`  
		Last Modified: Wed, 16 Sep 2026 23:40:08 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b0a0d9a2fe458f4680f3f26cd7f025ae062e89421b7322c27948578f46e04340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.4 MB (157375469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc297ecb5bb11cffca3326aaddd844e673cd6c47793c3062361f7911fab68927`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 23:40:36 GMT
ARG version=27.0.0.35-1
# Wed, 16 Sep 2026 23:40:36 GMT
ARG package_version=1
# Wed, 16 Sep 2026 23:40:36 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 16 Sep 2026 23:40:36 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:40:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16506ba80ba22dcbb1bf03121ddfa8e5e7342fc1da25ff1188272b6fae563c4c`  
		Last Modified: Wed, 16 Sep 2026 23:40:56 GMT  
		Size: 103.9 MB (103922896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:22919b7f5242556c74426d2a9f50f681245c3d56e8e2504b5b86319e85cde8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29df41295f071d1899d49ce20b6c7df8b8f2d9074451c6452d5ce6dd7b37d41`

```dockerfile
```

-	Layers:
	-	`sha256:98be198ba8ea18fac3888ba20792e5b7c9b5506f48f84a0bd7031b25104794e1`  
		Last Modified: Wed, 16 Sep 2026 23:40:54 GMT  
		Size: 5.2 MB (5204197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ad1521f3d3e0bd28287d7095c69e6776948123de184cdcf05e7cc0ca0f7ba1`  
		Last Modified: Wed, 16 Sep 2026 23:40:53 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
