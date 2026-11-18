## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:d1862f2b10e0a40e58797501c1195aa6b75c273cabb7f60234081d87862dcf50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2b815b3e3a51f7eaf0d7db55b5190d1a41ea96385580d241cf1441fcb29c26fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131368056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539a52b751b87518f31021954b045c0f4b45a0e716d19d993572177795ae6a67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:31 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:31 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:31 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:31 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d69260ae2559bab3057eb9612d13957d38155d42a660b8e6d8443da65330fa`  
		Last Modified: Wed, 18 Nov 2026 02:46:49 GMT  
		Size: 76.8 MB (76798763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7d2c8f5802ef77f152bccfe83e6ec5555e6bd649d084bad67e8e69ff482e8e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6120ae4a8ecbc3a730b0254102fc91c8f406afe2b70e7ce4e59a25d5313be7`

```dockerfile
```

-	Layers:
	-	`sha256:8a324a354f74445030552200f6d15a1ef45a7bd093540a548f864e86855bc19f`  
		Last Modified: Wed, 18 Nov 2026 02:46:47 GMT  
		Size: 5.2 MB (5235661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c67275236142aa268544851a55e06bf1846fc2b758816564a66c499c6de6df00`  
		Last Modified: Wed, 18 Nov 2026 02:46:46 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:768d2b7e016ee1669dee038e66dc4d934dfe14d58987989bb75e75ece6bde724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129527159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48616d963c37ad4a5687c9b24041ebb2bf015f605e8e6970060ffee5ffa974ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:41 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:41 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:41 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643354d6d50eb9640ad37a02877818406e34b7200459b64dffb693a22aefd033`  
		Last Modified: Wed, 18 Nov 2026 02:46:58 GMT  
		Size: 76.1 MB (76074082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:73c4b6e9c250e79040d2914afefd2ca7928a270fe4ddaf92054914e0788184c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7606b1ac3170f14f37179bcff1381dd451d92fff66133104f0cc7ebe791ac`

```dockerfile
```

-	Layers:
	-	`sha256:71c25d8e99dd35ffe31886512ab5c78be637e0fd3e0f9a3555a7e334abd0de5f`  
		Last Modified: Wed, 18 Nov 2026 02:46:56 GMT  
		Size: 5.2 MB (5235294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9e1d6b618fe991f47518adb32843b66f5d44d13d216d81eee7c58a903c276c6`  
		Last Modified: Wed, 18 Nov 2026 02:46:56 GMT  
		Size: 9.4 KB (9377 bytes)  
		MIME: application/vnd.in-toto+json
