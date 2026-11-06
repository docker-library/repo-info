## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:7ce090784b223ea0ecff941e40c63f48b9df25156778c56a3b259de1c85bccd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:38ce1bbfd9bd1ec16c842433043eb11a668088cc097583068991ab1cb38bbf02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172691004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f918cfffa1478d56caa9a258363c8ec16fa4f9b06fee01ed140f1a77814024`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:27 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:27 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:58:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ae5c96774634f9b87d1debc19483086bc2d8d90d36d7b10bbc8b69cf240666`  
		Last Modified: Thu, 05 Nov 2026 19:58:45 GMT  
		Size: 118.1 MB (118121389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:878b799ba1306e257c0db8d86ea077958daeb61686f269d786f68f52448dc991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19d18e669d09b72a6fc763fc9217fda69c96100b92423988c5ffbc98e3a8120`

```dockerfile
```

-	Layers:
	-	`sha256:478e3ab0f0acaf016150a8d1f9932c1e967b67cbc45a07bd6028f7ce13ba6a52`  
		Last Modified: Thu, 05 Nov 2026 19:58:42 GMT  
		Size: 5.7 MB (5706224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:494616c7c3c6b9c4a3dde3fc0933b0a045be229fc2b5b91f0ae27fbac38d9b4d`  
		Last Modified: Thu, 05 Nov 2026 19:58:42 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:latest` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:999f412ad76c7d7b292798a15cc4300c17b85e3e4bb4694804947e080c40f65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171469208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e730970b9f78c3893d7d5545d596846a567df1b0615949fe6f67f292f1ed6feb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:14:52 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 20:14:52 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:14:52 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:14:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60803c0768c9b6335b9d93806ae5ea96a30f751e9c591436f02ae4ad949d3`  
		Last Modified: Thu, 05 Nov 2026 20:15:12 GMT  
		Size: 118.0 MB (118013085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6329d8ec1cfc247fc2d6f7152cef7d357116906403bfec4c9090993fc2e59217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526a2a7dbbf0b664f23af2584011027351ba93eb9c19b33bde3ed015556ac818`

```dockerfile
```

-	Layers:
	-	`sha256:43e5d5205ac5f35c05743b2a7e5c3d6e78f5241b36367b768529ba01c92cc032`  
		Last Modified: Thu, 05 Nov 2026 20:15:10 GMT  
		Size: 5.7 MB (5706526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad79ae4e0ab8abcd7c588dbff85cba7a4b25edfe4eecd9a8747bd68f890288a8`  
		Last Modified: Thu, 05 Nov 2026 20:15:10 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json
