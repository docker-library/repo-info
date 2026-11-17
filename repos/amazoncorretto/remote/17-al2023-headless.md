## `amazoncorretto:17-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:00ec472fd9fe86c91c097a9e613d9d6bdd492498807b9c6e91f434848cbcf24a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fbbb123f0b20092733c1154993be1e41f465e4c4f14e0b61eb282db7f42da70e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137165391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9966514440ba990357c3683baa2139cbbf83a5ff2f9a3e79f96a4ea6de60cfbb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:12 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:12 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:12 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:12 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:12 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecef6792a22aa0e45cbdadc432cb919ba630fd3fd0dc2122627793f186413806`  
		Last Modified: Mon, 16 Nov 2026 23:10:30 GMT  
		Size: 82.6 MB (82596098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0edb3447b7e98ddc63c0aaa9ba93af2018e2863aef1d0fa5e96d482ecdc88340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76f1c48b257aae18827c88de8cf3416e67a2fb19973cf532a3d2d2aaa660825`

```dockerfile
```

-	Layers:
	-	`sha256:795e4eda8aac13bb651d19430d05093a3e1b41e06fa3214f828115fbdce445e1`  
		Last Modified: Mon, 16 Nov 2026 23:10:28 GMT  
		Size: 5.2 MB (5197128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c677d9781486a1e8c695b5580510623e3107bb20a68b6eb3c6e30ac4d8e8223`  
		Last Modified: Mon, 16 Nov 2026 23:10:28 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:56bb3b5c25cefbd773983c93ef1103cfeb211f4a6c6bcf500486638839e24e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135500916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f76aaf83dbddbd34852537487dac1f8a038f855681d8546beb4efd6579d3e39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:13 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:13 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:13 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:13 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:13 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2347ba0999514f64b83dd8d6bbe04f0b11ee8468b4983594eca1f0991ea2b8b2`  
		Last Modified: Mon, 16 Nov 2026 23:10:31 GMT  
		Size: 82.0 MB (82047839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:74551d94de8b4da6372434c6fb0a8f94b5d4a52ac98490a26b00c850a4184867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93141879492e4e436213b308bc8ad98aa213f353c7a65c01327790e864f371a`

```dockerfile
```

-	Layers:
	-	`sha256:2a6431174af1b063fd8c01d07403c8e7a75097fdcc68914d4c26894863b2870b`  
		Last Modified: Mon, 16 Nov 2026 23:10:28 GMT  
		Size: 5.2 MB (5195929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d434b5a04653a3e0a8d065f25bcc8622c2992d5fb3ec777a47de64333b224ed`  
		Last Modified: Mon, 16 Nov 2026 23:10:28 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json
