## `amazoncorretto:11-headful`

```console
$ docker pull amazoncorretto@sha256:20f331df7c887927551e61ace3fa1b83abe3b1be17f2fc241e522e22ef135b3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4a6479d23f6cda522bf20e760f4ef036aaab6b54f0f2f18a83017b8e20d111bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131344579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a8ca2021a43d694b2bf294e0d15c854e8041d199685e4533dba641eaab9615`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:30 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:19:30 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:19:30 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71174cda10ed62ac7c485508d286acaceb696b794691c26a4d9cab8f5dbe576c`  
		Last Modified: Thu, 20 Aug 2026 17:19:47 GMT  
		Size: 76.8 MB (76760732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1de0d4a5078cf2292ba89c4b171446cc8069d373181afbd7f8ef8c0d8a87a1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085dfad8dc0cd7b1a352ad33def9ae66817819895c73f1ddaf38a49446a40b45`

```dockerfile
```

-	Layers:
	-	`sha256:a6a55f1204850650aed81e675765e126b72ce4b2c46b312fc21abda4f6ceac40`  
		Last Modified: Thu, 20 Aug 2026 17:19:45 GMT  
		Size: 5.2 MB (5235644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de9c5746364fcd383d64565633e5b323db59a2d654aa57ce98e7f8bb76fd4979`  
		Last Modified: Thu, 20 Aug 2026 17:19:44 GMT  
		Size: 9.2 KB (9229 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6a768c7b52f7e8a722a6c1344aaa03cfa32188dced5009d6ca30a84caa50368a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129462203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4979904387efed97f42c5ff10d6fc6fb5f6dcae77da8a1a764e876d75d3b96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:25 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:16:25 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:16:25 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3431c4f55f57d8028f1777ceca6cc414e3b2b93a65cc6e85cabfd4dceda5c`  
		Last Modified: Thu, 20 Aug 2026 17:16:42 GMT  
		Size: 76.0 MB (76011316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b7116bf2cda6ace7add51ffbcef6a01f8d28753049c62eab5df362a19a2d34b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717b52a98fdcebed9a1b3d1cda0e0a7bb21c04022a0624a0536c9e05813d0777`

```dockerfile
```

-	Layers:
	-	`sha256:c71c54a1078ad39c975b908d2aa851e2ecd485478b4c5a2846152890b64a3fc1`  
		Last Modified: Thu, 20 Aug 2026 17:16:40 GMT  
		Size: 5.2 MB (5235277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92df9f40e7d056c60461a49740bd487e49b7eab5cf2a02ee277bdb746bd6d226`  
		Last Modified: Thu, 20 Aug 2026 17:16:40 GMT  
		Size: 9.3 KB (9321 bytes)  
		MIME: application/vnd.in-toto+json
