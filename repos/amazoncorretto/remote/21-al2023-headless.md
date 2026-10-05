## `amazoncorretto:21-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:b707577445897895f25c42ad4c0bfe5747a53e16c06de8ef118a55d894eb1c1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a1659a04c445036c54b49fe5163e46554ca24030e94c6eeffefe46fad127b400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144006956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19c4bab9d654f3898e22f773d26ed636098460e920f7419534275dcf1121452`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:02 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:44:02 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:02 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:02 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58237a6e11c115745492cb249f20277e327a6374e08bd1a84b8e13ae8028c5c`  
		Last Modified: Mon, 05 Oct 2026 18:44:18 GMT  
		Size: 89.4 MB (89376186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84a819e8dac910721986a2942b00a811d73598a67e623ba5ee9b92d1709a5d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b896dadff336715cce88500cb46d781c21f45102426b40c139318bd5d66905fc`

```dockerfile
```

-	Layers:
	-	`sha256:50f90bfc10c10dd8030a1d6086d4ada26b75497b2767a604db9dcb78304f7542`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 5.2 MB (5198738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e1f321b9af406a7632623366396cf942f3beb965ed0e054d7bc894a35f40189`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2fa2ab00818d2ad8f4e72de2c7a873009aa7c2cbdffd347d364ce17e8fee5615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142014603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d535dc31a5ddab0b1e497d65d8e119a51c333e808a4860975c80f8fffbe0fe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:13 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:13 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:13 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:13 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f107a31c680aafdd399aede3c4758a217b59dfc84e15481fabc020154a4545e`  
		Last Modified: Mon, 05 Oct 2026 18:43:31 GMT  
		Size: 88.5 MB (88510205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:111918c0f8919ef3a560208de77d942e2f56d87809a8799ee7fe4baf561fc409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c7c66bb6934687353681f1a5185843bee36ee44e1c0ad1a705b40acb9b2533`

```dockerfile
```

-	Layers:
	-	`sha256:b35d1572abbdb5909a9c3978eaed62c79dcd628424056e63615101407a08a7cd`  
		Last Modified: Mon, 05 Oct 2026 18:43:30 GMT  
		Size: 5.2 MB (5197541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4eafd83eebbb60e26d765ce1feac86360d4190f77964e2eda0df4fdf02c2dad`  
		Last Modified: Mon, 05 Oct 2026 18:43:29 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json
