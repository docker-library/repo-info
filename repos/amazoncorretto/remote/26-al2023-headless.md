## `amazoncorretto:26-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:4ac0a394ad94cd1e25a0481e72a85451728faf7370fe053e13040d6629869463
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4219e0e99703f32540c9940eca4757d636b44f51794d8abaa3a75113889d4486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160491472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04875909324eb87e03a9f988e22aee7ca9dc4fea384182f397712c9a1547ea7a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:33 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:13:33 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:33 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:33 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5884125998fc98c9f2ff923cb02bb276572f5e11c17774c8eb38e48a8e12bfda`  
		Last Modified: Thu, 23 Jul 2026 23:13:52 GMT  
		Size: 105.9 MB (105917208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:926c3a294897dceea00a756baded44b50d360dfdb30eac14213d5774705d671f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a6b16bf264a29a10389b6a55fc965523bb84869bac9b99405c0154abebf1d6`

```dockerfile
```

-	Layers:
	-	`sha256:cac91b5679cfa37c453aafdaded5a5d852259b6828a18f9219b62be89100870a`  
		Last Modified: Thu, 23 Jul 2026 23:13:50 GMT  
		Size: 5.2 MB (5206956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09716a90bcd7d746063cd5ef8bd4b848f3e2d938947029419947a38ed116cce0`  
		Last Modified: Thu, 23 Jul 2026 23:13:49 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:12beff17521e93d18303a27b5a5829434765f726149b304f0788583cd338af92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158254202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e42d348ba88c2bd67d0b23d7994783860a6e7c51745e738a5426ea2f7688c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:25 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:15:25 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:25 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd127920fdacc3b0a24139effb69fda613ba9cae7ab2c2864895b80554f01a9`  
		Last Modified: Thu, 23 Jul 2026 23:15:46 GMT  
		Size: 104.8 MB (104804970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b6384841afe3a1d88978786fea85d0f70885bf8d9e3fda8a68d2dda89fef1108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e92e8217fa25c3486d11633f581256d692e3ccef68ee8e81084a9c6970934d`

```dockerfile
```

-	Layers:
	-	`sha256:33960c554dbf5c0f839280d749cff0c5f1233561f0f3c1e99c3b1c939aabaf08`  
		Last Modified: Thu, 23 Jul 2026 23:15:43 GMT  
		Size: 5.2 MB (5205766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7172b570129a7570357c4890ce0f0a6f26f131453a46fad526cba68a44c4ecac`  
		Last Modified: Thu, 23 Jul 2026 23:15:43 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
