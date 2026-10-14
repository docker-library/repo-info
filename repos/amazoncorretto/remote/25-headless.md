## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:35eb3b8bf7c3cd65f343c45ce23c60290ba3f5944185626c890a8d226294bfad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c8e706e195a2a977ada4c1ea9ce1000434f5d8e244003756a475c3fca5f59c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158392976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005e4a65de50caea4e04195e89c0e5d534e328e17621a47253a114621f3bcd38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:14 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:14 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:14 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0142c3f32fa44eb4a8312509a06bcb5c3249cfb5ee6f6aad8fd976144c676406`  
		Last Modified: Wed, 14 Oct 2026 17:08:33 GMT  
		Size: 103.8 MB (103762206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b08be2baa253fe88918fe57bbfb29b5fcc5d2524d0f3ee482186521568adc141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6e8f86ad09297707622d3ba912183ccaab35eef35b5382b4b6cfff8aec3279`

```dockerfile
```

-	Layers:
	-	`sha256:b736ae8fe1d2532a5e732db7a970bc5db344ebe4aa0bb645af424ea2f3b37779`  
		Last Modified: Wed, 14 Oct 2026 17:08:31 GMT  
		Size: 5.2 MB (5208679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e69f551b800676ac6fb69781478909f3757dabb2cd177789d77d73133cd78dc4`  
		Last Modified: Wed, 14 Oct 2026 17:08:31 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f3947af6daa1a2da867b2268132863b8465a9edc1c8d56809796211ca0a6bbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156214375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00cd032fd8020547ccd9f5a724c74bb3a4f4f8d5f7eefccfdec1d79c5ef4fc1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:14 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:14 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:14 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027d35a9174d3fdccbfbbff34f3a53ba6116aa090772ebec769fe86fbd8ff3b5`  
		Last Modified: Wed, 14 Oct 2026 17:08:34 GMT  
		Size: 102.7 MB (102709977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4bd1c17e6fb0ca204cb8c2062d3445efbb1826a9a420a63e4ea566e8a62bf563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d6bcecf934d130547b754cca1487751f4227801e2b6f659ef8f4d2e745c793`

```dockerfile
```

-	Layers:
	-	`sha256:013849d917a9c80747dfb83213c973984aacbd94f98e3699dc417154c83c9337`  
		Last Modified: Wed, 14 Oct 2026 17:08:32 GMT  
		Size: 5.2 MB (5207491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b53a0cc4072c0f03015d51812486f8da9363d62509b96e45680564382c117a18`  
		Last Modified: Wed, 14 Oct 2026 17:08:31 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
