## `amazoncorretto:27-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:908cd8daaed2c59cc90bf5fc08cbfebd08f683d35bf796473777b6fcf82566a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:900e51313167529e66c7fcfcac7a7e7e64fc5fcd866cecb0063b52164bc83b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159808201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3a9a9a9dadcb4abae824e9174d7f0a3c755e682c7178425550465abba3d40b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:13 GMT
ARG version=27.0.1.0.11-1
# Mon, 16 Nov 2026 23:11:13 GMT
ARG resource_version=27.0.1.0.11
# Mon, 16 Nov 2026 23:11:13 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:13 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:13 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d054cc21cc4ffb99f67d56f642a54842ef2f901d23bb54066b5276f3ed753c7e`  
		Last Modified: Mon, 16 Nov 2026 23:11:32 GMT  
		Size: 105.2 MB (105238908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:daef49189608a3e4f088dfb334ce03997090a484906b7b6d0d07167a9cd0b3e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33d77ab76aea5a1c2ea0bf697992cecad52863998b6c9256a33bdf3fd011af0`

```dockerfile
```

-	Layers:
	-	`sha256:931449bc60477c55f0c729d317266299f457af7ab74f242ffdd668d114a8c813`  
		Last Modified: Mon, 16 Nov 2026 23:11:29 GMT  
		Size: 5.2 MB (5205418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4858d451022b77dbc4004bf6b0e8597af49e81611b945751e8c1908379ce717`  
		Last Modified: Mon, 16 Nov 2026 23:11:29 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:110bef3aa2584ee7db6a309c1845046c04fc894bb2091d8ec39b2d96667e2b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157742034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d73f4e5a7f2bd59395a75708c8c4c077d64d2dcfe078bbb7675160769a6a48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:12 GMT
ARG version=27.0.1.0.11-1
# Mon, 16 Nov 2026 23:11:12 GMT
ARG resource_version=27.0.1.0.11
# Mon, 16 Nov 2026 23:11:12 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:12 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:12 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66af42845756282f501829c8634ee59b7dd50b0cbcaced4b158bc3620fa70b6d`  
		Last Modified: Mon, 16 Nov 2026 23:11:34 GMT  
		Size: 104.3 MB (104288957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b7bef1e6d261c18f78a3d7ecdcb1dd14579ec5db98431cc6f67357dbae90dfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f760c50b0a0a8bfe92797b8f1fc2d093418204aff8d0e76746da42aba798f64`

```dockerfile
```

-	Layers:
	-	`sha256:2c92f4a14269945c673ce07cadf61342fa0cd498906fe7e88e85a0ac4d6a208c`  
		Last Modified: Mon, 16 Nov 2026 23:11:31 GMT  
		Size: 5.2 MB (5204226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10e6b6bc5603da208ce51d4d840413dce4c155550a8ed067d5053ba6e5eb37ee`  
		Last Modified: Mon, 16 Nov 2026 23:11:31 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json
