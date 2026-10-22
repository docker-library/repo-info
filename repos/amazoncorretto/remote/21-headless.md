## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:141f2cbc138afdc7bfb5c8655813e556f4b3a7fa240d3d365f267b3e9e0980c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:606e3edc1a8c170bbfebcfd9576449ee22e8bf778cc258f0633c0848012b11ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144007804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06074b179d71481cd4782a2315c69660d0e83e7f43ea384742fa6880a7873825`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:42 GMT
ARG version=21.0.12.13-1
# Wed, 21 Oct 2026 23:28:42 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:42 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:42 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b7ec728e98b5d38751a07fb9663150665c44d1ae50da22300ebeea411de62e`  
		Last Modified: Wed, 21 Oct 2026 23:29:00 GMT  
		Size: 89.4 MB (89377034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fa4d0b6bbe07d8e52364a8fe2335f643cdda161180d02b301803ea6e74418588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69f66ebb34400323273cdf7ced191b412bd52dba79c25833efa841d5d7acb7d`

```dockerfile
```

-	Layers:
	-	`sha256:d694b8dc59a300e7b127edb9a1044d74c8114027b7839d3916e824a4dcb9c2f7`  
		Last Modified: Wed, 21 Oct 2026 23:28:57 GMT  
		Size: 5.2 MB (5198738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0026cc41756f48a1e3c19e3b6b2281e041de3a4c9b8de5b7cd21c6e0e1836807`  
		Last Modified: Wed, 21 Oct 2026 23:28:57 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0a69830a1554a00cf8a967b7c9817af2712da51811c56148ffef8dd0c8e57b53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142015041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9f8ec5ee0d9938dc3908d091514de8c54bead27c4000fd9c741650e4d2f732`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:28 GMT
ARG version=21.0.12.13-1
# Thu, 22 Oct 2026 00:20:28 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:28 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:28 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c83fabc02610cb98f9b8514108d9fdf18e82f73e2d671ebdb28df87189af44`  
		Last Modified: Thu, 22 Oct 2026 00:20:48 GMT  
		Size: 88.5 MB (88510643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3b2f11242b2a281f2ce656d9cf344fb32eeae7be2abda0f76cc1c416724607ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d12090cf403b765d2abe882c06ad1cedf21d3b49489f67a046a1c7ce6a90f9`

```dockerfile
```

-	Layers:
	-	`sha256:493e64cc22099eadf8dbc9100f50d2cb66130d0daf05454867cdd99cab03afa5`  
		Last Modified: Thu, 22 Oct 2026 00:20:46 GMT  
		Size: 5.2 MB (5197541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6da2e6fdb33c0a192b862882a5a829f299738aa59559e388a5f5ef4bb57aac2a`  
		Last Modified: Thu, 22 Oct 2026 00:20:45 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
