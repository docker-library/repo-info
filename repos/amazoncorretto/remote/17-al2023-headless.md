## `amazoncorretto:17-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:87fbb35e50e286fcb480727212160121891329d91acd87d89b62faf9150c10e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2ff9a04538a7934ac96bcaca96b247759198a40dba7f1ca6ce7fadef91ebbd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137114634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ba622f1b5e85e2008f8ddfe17a54ce445954068cbbf2c95043fa7f34ecbc13`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:15 GMT
ARG version=17.0.20.13-1
# Wed, 21 Oct 2026 23:28:15 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:15 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:15 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac0fa10a03121b2032bbf14e22e73201905a23fa6e2bf91c4fd99fbafafa12d`  
		Last Modified: Wed, 21 Oct 2026 23:28:33 GMT  
		Size: 82.5 MB (82483864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eaf83ee8760d06f56f398423021d45a689d135f3ab342bbe28d7c5c4fc49fcce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdf3d6a981b9b50eb40f7c08350fde5985b502ab3c23d2a52e1c9c349f3f757`

```dockerfile
```

-	Layers:
	-	`sha256:c07ddae2f2aa1773a0572f25586c0b5ab92f4f8749482637b67de4311798917e`  
		Last Modified: Wed, 21 Oct 2026 23:28:32 GMT  
		Size: 5.2 MB (5197112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14c2407e6b197549a069f8eb29ab492ccff3678ee398e4f4071f6bd706126e98`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a7f13c0354cb9f6e533c3591ac4302e6a66d0398bace7cd999652b3896716015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135416724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229b755e3f9cec7070c1cf381b272308d24be6399402ce2a3761e7ac72d99943`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:19:49 GMT
ARG version=17.0.20.13-1
# Thu, 22 Oct 2026 00:19:49 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:19:49 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:19:49 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:19:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29867861f4ebc38d0a378b0661578bc8c51c6841a5bbf463ba59428e2e7d6fd0`  
		Last Modified: Thu, 22 Oct 2026 00:20:07 GMT  
		Size: 81.9 MB (81912326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c6b09e307448d91c65a1eaa460ee9e29bbb9e248b22941520b7ebd0e85dd5a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d75040a7fea68f0596784554cb45d5a79aeaa2a582c2274ed8f62d8171a3f25`

```dockerfile
```

-	Layers:
	-	`sha256:253de63950999cc16aff580784d61aced1395f6df3893dd299daf1986f9b0b73`  
		Last Modified: Thu, 22 Oct 2026 00:20:05 GMT  
		Size: 5.2 MB (5195913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:555858467141873644851f5189976ceb07f7597077440d067b309e2d3570aa38`  
		Last Modified: Thu, 22 Oct 2026 00:20:04 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
