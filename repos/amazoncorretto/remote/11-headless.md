## `amazoncorretto:11-headless`

```console
$ docker pull amazoncorretto@sha256:f779291d6fa033fceb08cf4fd56cd0b48909045a1ea305072a788d3f6a0c60e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7174d06723e8e3bcb4eab566c86f583eb7057737fb8b5a2a543c4da5d939c5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130675788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa32f5cc30bc3a88eeb0a3cdc31e5e91b50e172582032d10bd6358f2be88c661`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:45 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 19:58:45 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 19:58:45 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:58:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa5a8c71df999113b2d2fcf3aa3f8c935228db0558bf5102a65be6e191161e9`  
		Last Modified: Thu, 05 Nov 2026 19:59:02 GMT  
		Size: 76.1 MB (76106173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee921dda2722b2f65bebbceb03a72885ad446a22bbe822a5b60bded5ff12a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafe9cc1f03c1330d4f1ed92cfb6ae9daefba18da2c133c512a4b5a774bb857e`

```dockerfile
```

-	Layers:
	-	`sha256:b1b87a6bbfea54d8c199263ddefb0c34c1029fcc706ed1be9c7a853bd44b9acb`  
		Last Modified: Thu, 05 Nov 2026 19:59:00 GMT  
		Size: 5.2 MB (5210226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0f7307d32ffc153270facd6537deaf89a6d6d1b8f45442b2200d92d849afc93`  
		Last Modified: Thu, 05 Nov 2026 19:59:00 GMT  
		Size: 9.2 KB (9164 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1dacc0fce4a0eda7c1f06e04905a31f546df29adde279b61955efdae5cf03d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128812182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f28dbaf82cb25f1b2972269e21fed07137a54d94d3a08b6b88dfa88fec84107`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:23 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 20:15:23 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 20:15:23 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:23 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31f76e89a79e38606035ebee2773fbc8cd08352dc057134863b22b6f2f118ef`  
		Last Modified: Thu, 05 Nov 2026 20:15:41 GMT  
		Size: 75.4 MB (75356059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ea925838ef0fc3c650da39aeec74b047e494b787c11a97ecd60073e41574b825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c0cce545fd47d7f8819ba18a213bfecbe7cda52750658259a37568b35285b6`

```dockerfile
```

-	Layers:
	-	`sha256:635e372f821a7ccb58215cb2d6191302df368dfda52f451373d7d4f9534bbf69`  
		Last Modified: Thu, 05 Nov 2026 20:15:39 GMT  
		Size: 5.2 MB (5209856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29a31ad4311072fb3ea5c3ab3e0c670f8696867901842f4ecfc730cafbabcb80`  
		Last Modified: Thu, 05 Nov 2026 20:15:39 GMT  
		Size: 9.3 KB (9257 bytes)  
		MIME: application/vnd.in-toto+json
