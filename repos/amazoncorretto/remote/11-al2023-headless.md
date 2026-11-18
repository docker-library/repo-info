## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:9f374575c079efc5e91780aeacc7d2affb326d5124363fe40bca998c89abbb41
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5e6abf2bd6648f0947e18036043f19b52c26c1958529edef426c08f00f2488fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130663359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df809aa3182f626d40d040c267d74e8cae858ac68ba9fd827fe4002434475f7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:28 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:28 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:28 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:28 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bdd20372173048bfd9d4f89017d54227d4bbd4f59e5f1a7271b14f51ff59360`  
		Last Modified: Wed, 18 Nov 2026 02:46:45 GMT  
		Size: 76.1 MB (76094066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9e9e3f25af7513e52ce79b3596f6cdac7af09f7ba22368df1225ffbd165cf1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38069b7a3ad0baee7716f1d3650dff5dc87130b022b027e71074d0e244b7671a`

```dockerfile
```

-	Layers:
	-	`sha256:cbe055d704aac4426435c0b8fdcc3dbf933408bfc1014072249409a9991e0f2e`  
		Last Modified: Wed, 18 Nov 2026 02:46:43 GMT  
		Size: 5.2 MB (5210236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b3724b4bb8ee2f36dfc9f1009ad4ee5b77641e4f52a2bea4240346f7d58413`  
		Last Modified: Wed, 18 Nov 2026 02:46:43 GMT  
		Size: 9.2 KB (9162 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a237376557fe20b8a2926fae9c40e3be8e860ba69c10e002ff962c9f6640da7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128804313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f725eab6914bb511875f93f1dda4b6ccb87ff53fa2a91b0ca2c0d2cca224d122`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:38 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:38 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:38 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:38 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536005d614bd6aa02e70d5f7fb4a60ef15a3374d4bf6b0d6d4e2ce742c963ec6`  
		Last Modified: Wed, 18 Nov 2026 02:46:55 GMT  
		Size: 75.4 MB (75351236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e7d78b365d4694441818bac28502a7757493f0f38b4dcfd970ad81e372f2a247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bc6212aca76826bd4e887f3361f19d63d18d14a91ebd236c56a70b8c935d2f`

```dockerfile
```

-	Layers:
	-	`sha256:69ada4df56d39a8b9a1d8bfa01cb82cc47af5686971a8343faa4349d3eb8b203`  
		Last Modified: Wed, 18 Nov 2026 02:46:53 GMT  
		Size: 5.2 MB (5209866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e93bbc5176a5304f9b6d762811dc9b9b2c432fb3830d60e5a86e6856a5caf028`  
		Last Modified: Wed, 18 Nov 2026 02:46:53 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json
