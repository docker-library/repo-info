## `amazoncorretto:17-headful`

```console
$ docker pull amazoncorretto@sha256:249187b9763fe4f689985f55767853ec7217692e799fa4447f9595865a11536b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e63299d31d4e827804c2a1122addaca994cf18d441a4612116c50f31ab3c3341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137912430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ea222d32d22f41d1c32674a9896fbdcbc9f29ed579714e76ab3dfe207ae27a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:19 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:19 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:19 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc10c784892ad6695ee892f229ac8a88d1a959d265300fbd17e59fdb02c44ad7`  
		Last Modified: Mon, 16 Nov 2026 23:10:36 GMT  
		Size: 83.3 MB (83343137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:04197176c81015f02c6591675a2071b2fb961cf25a92508f7c81292e60dc3146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951a9ccb0121054ad2c2be488452279f848eac2579ba30da78bdb6a8902c31b0`

```dockerfile
```

-	Layers:
	-	`sha256:47c89509501bc1353e35a82fe24ced8140337ec0706914aa0a3ff5f4d09acf73`  
		Last Modified: Mon, 16 Nov 2026 23:10:34 GMT  
		Size: 5.2 MB (5222559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09bc5bf3d59150b93117b96f62394f41353e05879f3174c6a3d331953eac13e2`  
		Last Modified: Mon, 16 Nov 2026 23:10:33 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2e8e81dd0f406895d2d983d84d21e36015120d917f39aabc6318f4612fbeab06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136238390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3c1574c3885b0930d096847149654f3a37a732932c4c52b0786c57fd884278`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:17 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:17 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:17 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:17 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:17 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811cef268ac076bea83f47f76399597528003927fd37cd56e01a5f2f0b954e7a`  
		Last Modified: Mon, 16 Nov 2026 23:10:36 GMT  
		Size: 82.8 MB (82785313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9865d38d83addd31baf54c0752c86aea487e49ca505ca30809178387a27ff192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7357168837b66382a6aab61acdebfffa3e7baf5dc66bef17fff6638b5af481`

```dockerfile
```

-	Layers:
	-	`sha256:2ddad5632e6a0d43f7df8b360c36ea086eca39567d35dc951dcbc97fd9a0858d`  
		Last Modified: Mon, 16 Nov 2026 23:10:34 GMT  
		Size: 5.2 MB (5221363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea22cdd166d4d6147f219997e89fe89c5fc65ddb356edd97e040a3dcdbb784ef`  
		Last Modified: Mon, 16 Nov 2026 23:10:33 GMT  
		Size: 9.5 KB (9525 bytes)  
		MIME: application/vnd.in-toto+json
