## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:71b005271e4df1a2fb44f6d261bad4318e66aff82ea7541b4d2968a9a31357d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:47cbd3767e95fd412adbb9c81ce371574bc8f67eebddc9ef319c25c6d0c0a601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144085119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853a31ffb6736ea5747d23539ec42518ed1f75c247486faa36947f523589402`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:12 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:34:12 GMT
ARG resource_version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:12 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:12 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:12 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652b0b84d5af73da09a357ab9e256416b6c338673256a12bac69aded36d15404`  
		Last Modified: Tue, 17 Nov 2026 21:34:31 GMT  
		Size: 89.5 MB (89515826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cc5bdd8e1da4d9a53c29701d26693ca7ed4265f1650fd8e4de503cf75ba461a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d76ecbd602ad92676ea48f82bb6fa17f0a70ea1eb706088deb94bd25c240350`

```dockerfile
```

-	Layers:
	-	`sha256:bbdcf9190bfeadcd59c6ae35dc70eacebe72d7b9690942c0ff64d0d28cebee34`  
		Last Modified: Tue, 17 Nov 2026 21:34:29 GMT  
		Size: 5.2 MB (5198754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e105bf2e7abffd1f1a030c553032128b784bf26cf5cd3d79f926be004d1d6ad6`  
		Last Modified: Tue, 17 Nov 2026 21:34:29 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4bafee4b123659a367e2e45820ddfd4bde4cf3cf87820ae434184a6bae022b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142099083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ecd3cb10a1fa7c16afafc8c5cc5edd6f7afe00ca9062c60104a1e001e63ea6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:17 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:34:17 GMT
ARG resource_version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:17 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:17 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:17 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c222369915174cfca3c63667ef7569b97601444a9ffa7ac76554b17268a17d67`  
		Last Modified: Tue, 17 Nov 2026 21:34:36 GMT  
		Size: 88.6 MB (88646006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f78869eba768099d58ef653329fa8c61eee4b7be6540d4b2011cddbfca77ca42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919199e95014ce3e7309d84d12f6aba142b067fbf7e5e401e08022e8c8c7f50d`

```dockerfile
```

-	Layers:
	-	`sha256:4cbab34044f89ef9ebb436c7a95c05f10b437a0db397d093891ed42afca1838e`  
		Last Modified: Tue, 17 Nov 2026 21:34:34 GMT  
		Size: 5.2 MB (5197557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e0f33d9c98ca330c882fb8cb91fb2e13793588772ac1b84310aa6ad0526fcd9`  
		Last Modified: Tue, 17 Nov 2026 21:34:34 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json
