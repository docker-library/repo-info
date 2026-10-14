## `amazoncorretto:27-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:6f3bbd8746799262f4a518d7423f6d23c76dd54fb0f1627461d5f76a56da9859
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:63a582ccffb2af1c23d768bbf1d654e7ca13b3d5487473c79f0e87d1cbb74247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160400692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2255f03dfccbdcfc8de2e79f182bc57bf1399bfe90a637b7268a482943c9883b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:39 GMT
ARG version=27.0.0.36-1
# Wed, 14 Oct 2026 17:08:39 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:39 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:39 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d3ea6f832a2cd1a7cbd49a290bce10aed4c453973f19d13a83d54eb66811ec`  
		Last Modified: Wed, 14 Oct 2026 17:08:57 GMT  
		Size: 105.8 MB (105769922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:43570fde3a1a4052d5c7604b311eec9aa868d27ecbcb7f463afc66ad9e72c0fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025049f140be57d206ab04331a0e0b51d09d6a320b100167c6b04711ed7fbea1`

```dockerfile
```

-	Layers:
	-	`sha256:a7b7d289b22f39617f8a0126a6d65e03431748864a0754145efd3e79b496cd84`  
		Last Modified: Wed, 14 Oct 2026 17:08:55 GMT  
		Size: 5.2 MB (5230817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fa583f7088db4f2aad8d4ecf8f4549954437d82e9b06c58811a6ba846a23cd3`  
		Last Modified: Wed, 14 Oct 2026 17:08:55 GMT  
		Size: 9.4 KB (9367 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0ee9eedfd68f325cd6505883927b9ee56a0b7a2c1178ef28370664065fa33e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158185739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e5167533314d55ec95e60f78c8bce46c4b52e46b26209f8765542f47a39d75`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:54 GMT
ARG version=27.0.0.36-1
# Wed, 14 Oct 2026 17:08:54 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:54 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:54 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f58c01ae3b35c5600c4cbc73d30774d93bf171892fba3f2c7d18bd030d81e4`  
		Last Modified: Wed, 14 Oct 2026 17:09:14 GMT  
		Size: 104.7 MB (104681341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:295f1e616f12074f0aac3cd88b1662be0b8302e38951d5b4f90f68fe96e0de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac715bac5c435bbb7f755b8633861701b9f61f288c0daa5d322f3be9744a2819`

```dockerfile
```

-	Layers:
	-	`sha256:075853bc14d48ef92f71f72b1dc39d1db1232dadd25af9a6d645b2ed34c86c47`  
		Last Modified: Wed, 14 Oct 2026 17:09:12 GMT  
		Size: 5.2 MB (5229628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d3439069d0324fdc1d2de6c01f426e569a0e5e6e1b1ba50e755df1cd8081222`  
		Last Modified: Wed, 14 Oct 2026 17:09:12 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
