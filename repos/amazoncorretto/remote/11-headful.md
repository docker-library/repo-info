## `amazoncorretto:11-headful`

```console
$ docker pull amazoncorretto@sha256:8f4a863dfd380e51231105430e9ad9db77daa638024e1f98da63d7de95053042
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f3b0dc95b21845fa4c2e38e4230de84a8104f2f1a3605d4cd8ee452f8fa50848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131335836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3cd80e9264e10e015e5a1e0f4a607682a57a0c14e9bf8a2773793a47168832`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:20 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:20 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:20 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b35d604580e424b2acdf8c4ef3347122a1507f37aff0a0a492dee0f49a554`  
		Last Modified: Tue, 04 Aug 2026 00:57:37 GMT  
		Size: 76.8 MB (76763156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84f139a67420ee07ab9220060e49f08a6e7254a3dd26bd82f7536c1f88b5c85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d45bdc7e8ac1d93c2d1fee36bfb2b028ed9d115570e8ca3a90329dd8df162479`

```dockerfile
```

-	Layers:
	-	`sha256:a40e8189229f1703db1f4187de86cd35f9afc48f102b584103c4aa16424d88ce`  
		Last Modified: Tue, 04 Aug 2026 00:57:35 GMT  
		Size: 5.2 MB (5235634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a47aa15fc44ee5b62c97b5c4aff253088b3bfbe9ab26a25e52a25582dc87d43`  
		Last Modified: Tue, 04 Aug 2026 00:57:34 GMT  
		Size: 9.2 KB (9228 bytes)  
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
