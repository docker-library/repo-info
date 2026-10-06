## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:70b1c8ad0988cdff492612ba259734391904dc16ca28b4a44f460df6e78703c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dfe9f2603ad1c21bfdcb3a791558eceb8ae892229754781c39342c59a80029e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172707557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944d8eb0fadd8b6ddf06f200c9497ef2e8ed786e9fec78c0b58370dec5dcff30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:35:55 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:35:55 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 21:35:55 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:35:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900b85e8ac12d4b07a845d07dd0ce786ef06d24e84cfc873f077df4008d4eb32`  
		Last Modified: Mon, 05 Oct 2026 21:36:13 GMT  
		Size: 118.1 MB (118076787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b88e081288945efadaf4d5b8d8569bb5f19df17258113deacfad1cf5923b44d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6a21de082cdb555451687ff8c3640131d99294fc65d579389831f29d1ecc2d`

```dockerfile
```

-	Layers:
	-	`sha256:765a15c69af960d63f22af59c3ac12d78fa61d9611701599b36a289bea46d9ab`  
		Last Modified: Mon, 05 Oct 2026 21:36:10 GMT  
		Size: 5.7 MB (5706218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24e4f2708089cf9bea11eb7178d575acafd0d27a29c970dfbcb711968dee3f65`  
		Last Modified: Mon, 05 Oct 2026 21:36:10 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:latest` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:006b28a314d95bab7e6d227f5096a8cb3025cf3265cba48b77ebcdd6ed143ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171481295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e3a8b6ae55c782d5c5dbe5a2b52492b441e0eb670f2b8c349d58cab1a65f42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:41:04 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:41:04 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 21:41:04 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e7bba5fb3aba30446fc6a6ef9e962c27e11b8642caa05853cd1540de6d2a3`  
		Last Modified: Mon, 05 Oct 2026 21:41:24 GMT  
		Size: 118.0 MB (117976897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:400a78b43c1df9c1d442a7b8dc38883c6f46c913d41670496d7534e43c8dd255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f480e0fd4fc05bdcaba8270034dbdaba923c5ed0ce586bc5e0103ca29042370`

```dockerfile
```

-	Layers:
	-	`sha256:fd742d8bb779a06d5f667efb9ed72b3f93bccdbab493daadac467d0bd1e71b33`  
		Last Modified: Mon, 05 Oct 2026 21:41:21 GMT  
		Size: 5.7 MB (5706520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5ae72d595cc89b1857f767be709e58b1189dfbd5c442fa4bc4c8eaa42fc436a`  
		Last Modified: Mon, 05 Oct 2026 21:41:21 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json
