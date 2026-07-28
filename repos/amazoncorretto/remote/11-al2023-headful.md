## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:543ad7ad7abeb5cc63dd9688482d0be445ce36aa3c7057493a6e62fd94027eaa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0024d44cb86d124dc9df242795eb6a83badc2139e26e79f75cf40c93efee862f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131335965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e406634c60a61bc11f5a27ee31516f32c2f401009b1326aac808bfd644ca6328`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:12 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:36:12 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:12 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3a01c7df363d517f4c94dc34d049403e274b3d222f6178b6bdd2494037f0ca`  
		Last Modified: Mon, 27 Jul 2026 21:36:29 GMT  
		Size: 76.8 MB (76763281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0fee2c77b1b7b1349a83bf7ea8692dd5875a619562749845c724bf8f7a7ab4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5647baeb2915eadf934458c4b6fec66671d986eba803b5603ed1c9dad60cb5c4`

```dockerfile
```

-	Layers:
	-	`sha256:b34b769519152921f8fad20ac9019fb7b65189b19b496f95d84aef152cf56c24`  
		Last Modified: Mon, 27 Jul 2026 21:36:27 GMT  
		Size: 5.2 MB (5235634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e650f1b60d5bb326782ab25aae630d0e8552b9ebad9f1750e68834cceda64ee2`  
		Last Modified: Mon, 27 Jul 2026 21:36:27 GMT  
		Size: 9.2 KB (9227 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1afa0645bfe8f0db8e5e1e1821f69a2313ebf00a0c1e890369a8fc277eb52267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129466057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e8e9b3418668109497efe03cc8f3a85623ed0c5364c35880d036d46ca364ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:16 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:16 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:16 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100695a2070b8ce2b6c8729b142564cab6261d0592a977473bd5689cd7aa1c65`  
		Last Modified: Mon, 27 Jul 2026 21:35:34 GMT  
		Size: 76.0 MB (76016446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:77fb1302115b8a50483aa894b3e8c89849e318bbd839d613f8f8a6fbbdf1e917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b430dc89021c4b4381369218e0b6b7d85c6be815309659e60aafa6d82bcf74f`

```dockerfile
```

-	Layers:
	-	`sha256:42887eebfc1ffd1851f796b0765014000b6dcbe859b62b8ec4d8e5e1172c54d7`  
		Last Modified: Mon, 27 Jul 2026 21:35:32 GMT  
		Size: 5.2 MB (5235267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8514b605e6cb55b81e89f73990f98b49b0ff1a4f4e09f7ab54365bc1e6358fa`  
		Last Modified: Mon, 27 Jul 2026 21:35:31 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
