## `amazoncorretto:21-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:75221a6c5d2043c89270193289dc1245aecd77cf42576c577081a8ac2cbfe263
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b4acee6deb8e044727de8dc00a93fde3fc789ca4abe9cfc0a6b1e6c053ebb207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144661897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ba1700384db39d593c1223ca6e45efdae4e8f361430bec49fad76ebd959593`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:21:00 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:21:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:21:00 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:21:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb3e9946a87d292299fed69da746da44528b5dbcc0a0fdd0b2e0ec538398c89`  
		Last Modified: Thu, 20 Aug 2026 17:21:18 GMT  
		Size: 90.1 MB (90078050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:59bc74b4a14cb911d060426517c168049c688735463489868d130e922d51fd3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd25c7f6219f63c7e212192a8867b370dce43c3f1f4e519ea50549d3a2ec194`

```dockerfile
```

-	Layers:
	-	`sha256:0b7fc0713069e5f527f1ee9a650a710bca7af4a1f4976560fd0b4cbaa86bab49`  
		Last Modified: Thu, 20 Aug 2026 17:21:16 GMT  
		Size: 5.2 MB (5224160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a10e3806868272b8ca79eb4f794f5261d9c482652a1baa4c59530237b552be9a`  
		Last Modified: Thu, 20 Aug 2026 17:21:16 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d65a4cc8edb67aa2e5c7557f93a4fd31ee28ba5cc6eeb4e193b25117f3dbe926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142660105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b2065a108e22c357ca49bb7f966cbbf7ebe65cc45abfbb01f3fd808a9eef6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:53 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:17:53 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:53 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:53 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbf02f8ee00479f021546aa4b4f198be321f98539f93fd31cf260c75680ec71`  
		Last Modified: Thu, 20 Aug 2026 17:18:11 GMT  
		Size: 89.2 MB (89209218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0027902f0bc471f04eab3733f8760f6c4d3ed2188f14295cb99a8fbd35434f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898669ed041a2b9419e11989c265f31dcefe43e9502bc0632c9af93bf04fc459`

```dockerfile
```

-	Layers:
	-	`sha256:b04acc52f3069d3fc500d01b5951fd2d6e8cb1f3571adf7a6fb9884f979fea76`  
		Last Modified: Thu, 20 Aug 2026 17:18:10 GMT  
		Size: 5.2 MB (5222966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eb96e90d69b0532abe8e604991ecf992fb7ad41f2f14db990384a6e5dc980e9`  
		Last Modified: Thu, 20 Aug 2026 17:18:10 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json
