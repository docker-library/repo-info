## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:20170ba5718798d046ce5dcd9d738446319d7b6582fe619854270afa5f9edb66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a3adc912ef74795afe26b31c35face63d065015fe0441cf5023fe56b81c23954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109279724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c4028e7633e8bc10b0e337dfeb9d94fa7ff2c5bf5b82adcb78b8f2f81ee406`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:17 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:57:17 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:17 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1120ff5966325d108f2cd09ba4a2a655c59b0f6c162be78b1a4bae3e16b249`  
		Last Modified: Tue, 04 Aug 2026 00:57:31 GMT  
		Size: 54.7 MB (54707044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ec22726480d72721bf77bca0f6de5ef7f96f55c21fda33d9f185d384a771fca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d10af580d57f01692e2c0c857effebb250e2add8fcc88d661b832c3b15bc9e1`

```dockerfile
```

-	Layers:
	-	`sha256:0c89fb6bd2990193c7868d00be60d9d7eff843e53283f59459e33a6bdfb1bb09`  
		Last Modified: Tue, 04 Aug 2026 00:57:30 GMT  
		Size: 5.2 MB (5218260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:103917362d936aa464ca5790279400af69b97e2876973908420058f68f6ead9a`  
		Last Modified: Tue, 04 Aug 2026 00:57:30 GMT  
		Size: 9.8 KB (9786 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1282ba1e2c68e35e59bc886ba48d9ff30da6cbc0f4ded4476da1bbb863d0354a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107887461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b546485660649326cfcdc3d082da0feba83cc0acd538b251f834d33865b9cea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:42 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:42 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:15:42 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ff88ad57144e9a9948cff9a5746e85d2e66cff75d13537d9bd74ad0a35bb2d`  
		Last Modified: Thu, 20 Aug 2026 17:15:57 GMT  
		Size: 54.4 MB (54436574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9a927cf6020a023e4caff02c471e0132fe3416a1bbda0627aaba7ab882b42634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a50e336d48d23cb1d78f985ed04e3e575c2c5a0fcb7f57c4ed13d08885dcf670`

```dockerfile
```

-	Layers:
	-	`sha256:68502c6309015303773dadf7c5451c803ba082c06907f5bfc51da13951de2626`  
		Last Modified: Thu, 20 Aug 2026 17:15:55 GMT  
		Size: 5.2 MB (5217953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c9ab3c397d69448492c7e84bff194267d5b12c9b231c660d2a53ea6498a0e9`  
		Last Modified: Thu, 20 Aug 2026 17:15:55 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
