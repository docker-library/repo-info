<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.11`](#arangodb31211)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:01be938f3a8d3e82725d365ca6750e4cafd092ec78a33a027588cfac37be4e51
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:f6fdc637408e7ef56328e2f12c957190e8b668920338e991e9195861f112dd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269805596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601e1fb66847b7aa9d672e48b326733cc69a9007b3f89cff802194d329f84260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 17 Aug 2026 17:41:03 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 17 Aug 2026 17:41:03 GMT
ENV ARANGO_VERSION=3.12.10.1
# Mon, 17 Aug 2026 17:41:03 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 17 Aug 2026 17:41:03 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 17 Aug 2026 17:41:03 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 17 Aug 2026 17:41:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 17 Aug 2026 17:41:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 17 Aug 2026 17:41:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:41:03 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 17 Aug 2026 17:41:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819e4d07d68159bac387e391b9980c00f09a1db0b580a49b051d1fca0dcd059c`  
		Last Modified: Mon, 17 Aug 2026 17:41:38 GMT  
		Size: 266.0 MB (265957051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556fef71ea9ea55c707de269dd3d4e5bfdc136af34172aa14c13528e5990559e`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1120b19acfe866079254c3a3a6cca737b3171483cedcbd9425296f363cccf0`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:8d18a9ab007e1f67892bcfe6611d6d5e2997956972325094ef90a523c8f8cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeb7307dd26966dca056ad64fa50276915993e484336fc922ede88aa041d853`

```dockerfile
```

-	Layers:
	-	`sha256:d35330697387ca71dc7639b415c9873e1679377be18ff95fd938e44131fc9140`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 566.3 KB (566276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e25d8c2ec65a1f5eb07076cde90477569b83be96a78d332da64bf47fee9bb26`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:f315f86b8d03679440c7cdfae96e584b0b95b1287daf3e43be1310be69f1c95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267563975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dda0dc1b38364423f3b2e1a3855e6af7603d7e4fd813fd07f7f81bdcba7ac84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 17 Aug 2026 17:41:11 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 17 Aug 2026 17:41:11 GMT
ENV ARANGO_VERSION=3.12.10.1
# Mon, 17 Aug 2026 17:41:11 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 17 Aug 2026 17:41:11 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 17 Aug 2026 17:41:11 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 17 Aug 2026 17:41:11 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 17 Aug 2026 17:41:11 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 17 Aug 2026 17:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:41:11 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 17 Aug 2026 17:41:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9de1442814891899e0a208c801b3b6ca800117296a62705841866392f45d94`  
		Last Modified: Mon, 17 Aug 2026 17:41:45 GMT  
		Size: 263.4 MB (263378784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76be6622b812780b19c82501bd69a4453734cbbebd9a2b888ab2bc7532e49d1`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84823e06b7a9b176f41220def17af36421587095e47b65faea6c9c5b6ed5d01`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:aa7dbf8f2b41c5824bd7d2ab09ca78187f2859d9079cb1c5b3e6a1ec6205931b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28969addd671e367bf70b7b10abc12b2e82cafaf4be3e259d88b51a6cf23645d`

```dockerfile
```

-	Layers:
	-	`sha256:a1496c346a43a6d53899f92b0422f0dff105fb6f5f56a44147adf6af1f530036`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 716.2 KB (716246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03dba57d660243148888a151bf260d0d34c465e10838e55020b84a3244be85c9`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 14.6 KB (14643 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.11`

```console
$ docker pull arangodb@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:01be938f3a8d3e82725d365ca6750e4cafd092ec78a33a027588cfac37be4e51
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:f6fdc637408e7ef56328e2f12c957190e8b668920338e991e9195861f112dd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269805596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601e1fb66847b7aa9d672e48b326733cc69a9007b3f89cff802194d329f84260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 17 Aug 2026 17:41:03 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 17 Aug 2026 17:41:03 GMT
ENV ARANGO_VERSION=3.12.10.1
# Mon, 17 Aug 2026 17:41:03 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 17 Aug 2026 17:41:03 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 17 Aug 2026 17:41:03 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 17 Aug 2026 17:41:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 17 Aug 2026 17:41:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 17 Aug 2026 17:41:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:41:03 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 17 Aug 2026 17:41:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819e4d07d68159bac387e391b9980c00f09a1db0b580a49b051d1fca0dcd059c`  
		Last Modified: Mon, 17 Aug 2026 17:41:38 GMT  
		Size: 266.0 MB (265957051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556fef71ea9ea55c707de269dd3d4e5bfdc136af34172aa14c13528e5990559e`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1120b19acfe866079254c3a3a6cca737b3171483cedcbd9425296f363cccf0`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:8d18a9ab007e1f67892bcfe6611d6d5e2997956972325094ef90a523c8f8cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeb7307dd26966dca056ad64fa50276915993e484336fc922ede88aa041d853`

```dockerfile
```

-	Layers:
	-	`sha256:d35330697387ca71dc7639b415c9873e1679377be18ff95fd938e44131fc9140`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 566.3 KB (566276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e25d8c2ec65a1f5eb07076cde90477569b83be96a78d332da64bf47fee9bb26`  
		Last Modified: Mon, 17 Aug 2026 17:41:32 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:f315f86b8d03679440c7cdfae96e584b0b95b1287daf3e43be1310be69f1c95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267563975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dda0dc1b38364423f3b2e1a3855e6af7603d7e4fd813fd07f7f81bdcba7ac84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 17 Aug 2026 17:41:11 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 17 Aug 2026 17:41:11 GMT
ENV ARANGO_VERSION=3.12.10.1
# Mon, 17 Aug 2026 17:41:11 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 17 Aug 2026 17:41:11 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 17 Aug 2026 17:41:11 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 17 Aug 2026 17:41:11 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 17 Aug 2026 17:41:11 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 17 Aug 2026 17:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:41:11 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 17 Aug 2026 17:41:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9de1442814891899e0a208c801b3b6ca800117296a62705841866392f45d94`  
		Last Modified: Mon, 17 Aug 2026 17:41:45 GMT  
		Size: 263.4 MB (263378784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76be6622b812780b19c82501bd69a4453734cbbebd9a2b888ab2bc7532e49d1`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84823e06b7a9b176f41220def17af36421587095e47b65faea6c9c5b6ed5d01`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:aa7dbf8f2b41c5824bd7d2ab09ca78187f2859d9079cb1c5b3e6a1ec6205931b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28969addd671e367bf70b7b10abc12b2e82cafaf4be3e259d88b51a6cf23645d`

```dockerfile
```

-	Layers:
	-	`sha256:a1496c346a43a6d53899f92b0422f0dff105fb6f5f56a44147adf6af1f530036`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 716.2 KB (716246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03dba57d660243148888a151bf260d0d34c465e10838e55020b84a3244be85c9`  
		Last Modified: Mon, 17 Aug 2026 17:41:40 GMT  
		Size: 14.6 KB (14643 bytes)  
		MIME: application/vnd.in-toto+json
