## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:6227fd0e2e5c2886643b17f8952df536f3d88dedad02dddd1064fbf39cb3a648
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:917c26bdff0931482ddecae4e75d862183dcb7ec78728b6467264b49008219cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131366285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573df493be9058fbc0cf87246a6ca27f5ef021142be1b8e421784dd8188b068d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:05 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:10:05 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:10:05 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:05 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804b6767d6627b21d8cfdca7352c046cbc53c58fe08baec338f5075b94184c1e`  
		Last Modified: Mon, 16 Nov 2026 23:10:24 GMT  
		Size: 76.8 MB (76796992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:54ce3966329d54580fb6b4e01636af9867036b1b18eeda0468545e0c045fec73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79958a721d906ccbaaa1c5c1da6e1915ee70485a51dbe2f188eeb34219f952a1`

```dockerfile
```

-	Layers:
	-	`sha256:69997d2cb6f6169d75f428f758ef01c0d6cd6a7a99d86f1e065e10385d0c2c39`  
		Last Modified: Mon, 16 Nov 2026 23:10:21 GMT  
		Size: 5.2 MB (5235663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6d76a5211c3af5a517bcc4b22a27225fc466dd108f6a1d973ac24ffa841c81d`  
		Last Modified: Mon, 16 Nov 2026 23:10:21 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fdc920744d516569fe7a25a7527f6f75d15d5f4612a806ac57f8f155e68a01b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129511545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3620d05cd46569ae167334c57a2c8c33a496989b262e3acdc650d58fe57ae5c3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:52 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:52 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:52 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:52 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9726a36124634aa5e2e6a57fa7966f4d8ea65b39c3c625ea4ba720a46719d755`  
		Last Modified: Mon, 16 Nov 2026 23:10:09 GMT  
		Size: 76.1 MB (76058468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8002b6e59c8733bcde4066050aa2d42b69d0dfc7c9f75164f88a404bff2aa87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43921c12420054bebc4f218c9596661afb8a95dae25269fb82176097f7a9ae55`

```dockerfile
```

-	Layers:
	-	`sha256:112dc26707957178e7ba53726f3e0da90b7d373231caeab0f15a1e8e5eeab8e2`  
		Last Modified: Mon, 16 Nov 2026 23:10:07 GMT  
		Size: 5.2 MB (5235296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c627c232ec8bbe42189de3c0200d215abfe9c49eff0fa7819ea540646bd253e7`  
		Last Modified: Mon, 16 Nov 2026 23:10:07 GMT  
		Size: 9.4 KB (9383 bytes)  
		MIME: application/vnd.in-toto+json
