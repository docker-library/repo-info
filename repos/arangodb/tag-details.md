<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.11`](#arangodb31211)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:39bbca489179ea03f2b24b7ea4e4c4cb5258f6474f8c1c4d9bd65f7cd6d211a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:563cb2c07af0aead37fd688b58f51d6eb534a3da6163621e130e67d7a55176c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270556443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af9dccfcf3a9d847b4f4923fa7f2debcfc956bdded0ad77440fd4ac1d811ab1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:07:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 31 Aug 2026 19:07:13 GMT
ENV ARANGO_VERSION=3.12.11
# Mon, 31 Aug 2026 19:07:13 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 31 Aug 2026 19:07:13 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 31 Aug 2026 19:07:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:07:13 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 31 Aug 2026 19:07:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43787435abba0226f043b70866679b6b79db89eb74b6ff8382b48765209caa62`  
		Last Modified: Mon, 31 Aug 2026 19:07:47 GMT  
		Size: 266.7 MB (266707897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb256672bcb20b2755a4707fe906a1a0e8713f1cc637b6679965db648212ad`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ba0896d09b2f635c9beaf90274430958ab3339d6e4fbe6c755085c6718fbf7`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:4636e734b88aba1167401cf235c192f218528b638cac9924c64a018610f7d182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc99de5f6993a43f7917527f8dd891425186263e141a6946847ec2912b6c14`

```dockerfile
```

-	Layers:
	-	`sha256:73238098dfd1b3066041295cf44ebe3c9082d8868f93779ab91e13dfb2cc0f95`  
		Last Modified: Mon, 31 Aug 2026 19:07:42 GMT  
		Size: 566.3 KB (566272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ec2b13a541368fc998febc88732346f89abab3699195fbd65c214a7377b1f28`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:f40cc135ff049d2c576420557d02ae3f5aa4773b5019f65f61f4151eb3ea568a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268427894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02c64f198ee65d33a89f9bef3864ff09e040023601aad4805acb7e6b99e6e2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:27:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 31 Aug 2026 19:27:13 GMT
ENV ARANGO_VERSION=3.12.11
# Mon, 31 Aug 2026 19:27:13 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 31 Aug 2026 19:27:13 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 31 Aug 2026 19:27:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:27:13 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 31 Aug 2026 19:27:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9a57f9edd89857e75bee2014275b5d0e762aa465baac125029cce6678022c9`  
		Last Modified: Mon, 31 Aug 2026 19:27:47 GMT  
		Size: 264.2 MB (264242702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2598b5649f80a8678448d65f5bebbfb068c820cfbc316b951c3231a9cd7352e1`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfcec581e70f5d0136ea9740fe8046637b1dcfb2b016f0f902eb0d64b2a28d0`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:11112fc448a3c7cfda62cb49fba55498e9af2fc82b8e6e54de07c6fa7c6a4809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53703ff421b5bb80c1cacb9a37e1d6b73769e568f2dfe750e0ccf8bc7684b8d`

```dockerfile
```

-	Layers:
	-	`sha256:ca602c074d3e399aa195a73a2032e96b39381a80f55f52ee576c5216e4099fbc`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 716.2 KB (716242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372bdd195dc504e3a8bff029dd144e33f23566f3ee226b562106723e7632f7f9`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.11`

```console
$ docker pull arangodb@sha256:39bbca489179ea03f2b24b7ea4e4c4cb5258f6474f8c1c4d9bd65f7cd6d211a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12.11` - linux; amd64

```console
$ docker pull arangodb@sha256:563cb2c07af0aead37fd688b58f51d6eb534a3da6163621e130e67d7a55176c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270556443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af9dccfcf3a9d847b4f4923fa7f2debcfc956bdded0ad77440fd4ac1d811ab1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:07:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 31 Aug 2026 19:07:13 GMT
ENV ARANGO_VERSION=3.12.11
# Mon, 31 Aug 2026 19:07:13 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 31 Aug 2026 19:07:13 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 31 Aug 2026 19:07:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:07:13 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 31 Aug 2026 19:07:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43787435abba0226f043b70866679b6b79db89eb74b6ff8382b48765209caa62`  
		Last Modified: Mon, 31 Aug 2026 19:07:47 GMT  
		Size: 266.7 MB (266707897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb256672bcb20b2755a4707fe906a1a0e8713f1cc637b6679965db648212ad`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ba0896d09b2f635c9beaf90274430958ab3339d6e4fbe6c755085c6718fbf7`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.11` - unknown; unknown

```console
$ docker pull arangodb@sha256:4636e734b88aba1167401cf235c192f218528b638cac9924c64a018610f7d182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc99de5f6993a43f7917527f8dd891425186263e141a6946847ec2912b6c14`

```dockerfile
```

-	Layers:
	-	`sha256:73238098dfd1b3066041295cf44ebe3c9082d8868f93779ab91e13dfb2cc0f95`  
		Last Modified: Mon, 31 Aug 2026 19:07:42 GMT  
		Size: 566.3 KB (566272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ec2b13a541368fc998febc88732346f89abab3699195fbd65c214a7377b1f28`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12.11` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:f40cc135ff049d2c576420557d02ae3f5aa4773b5019f65f61f4151eb3ea568a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268427894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02c64f198ee65d33a89f9bef3864ff09e040023601aad4805acb7e6b99e6e2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:27:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 31 Aug 2026 19:27:13 GMT
ENV ARANGO_VERSION=3.12.11
# Mon, 31 Aug 2026 19:27:13 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 31 Aug 2026 19:27:13 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 31 Aug 2026 19:27:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:27:13 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 31 Aug 2026 19:27:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9a57f9edd89857e75bee2014275b5d0e762aa465baac125029cce6678022c9`  
		Last Modified: Mon, 31 Aug 2026 19:27:47 GMT  
		Size: 264.2 MB (264242702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2598b5649f80a8678448d65f5bebbfb068c820cfbc316b951c3231a9cd7352e1`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfcec581e70f5d0136ea9740fe8046637b1dcfb2b016f0f902eb0d64b2a28d0`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.11` - unknown; unknown

```console
$ docker pull arangodb@sha256:11112fc448a3c7cfda62cb49fba55498e9af2fc82b8e6e54de07c6fa7c6a4809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53703ff421b5bb80c1cacb9a37e1d6b73769e568f2dfe750e0ccf8bc7684b8d`

```dockerfile
```

-	Layers:
	-	`sha256:ca602c074d3e399aa195a73a2032e96b39381a80f55f52ee576c5216e4099fbc`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 716.2 KB (716242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372bdd195dc504e3a8bff029dd144e33f23566f3ee226b562106723e7632f7f9`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:39bbca489179ea03f2b24b7ea4e4c4cb5258f6474f8c1c4d9bd65f7cd6d211a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:563cb2c07af0aead37fd688b58f51d6eb534a3da6163621e130e67d7a55176c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270556443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af9dccfcf3a9d847b4f4923fa7f2debcfc956bdded0ad77440fd4ac1d811ab1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:07:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 31 Aug 2026 19:07:13 GMT
ENV ARANGO_VERSION=3.12.11
# Mon, 31 Aug 2026 19:07:13 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 31 Aug 2026 19:07:13 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 31 Aug 2026 19:07:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:07:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:07:13 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 31 Aug 2026 19:07:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43787435abba0226f043b70866679b6b79db89eb74b6ff8382b48765209caa62`  
		Last Modified: Mon, 31 Aug 2026 19:07:47 GMT  
		Size: 266.7 MB (266707897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb256672bcb20b2755a4707fe906a1a0e8713f1cc637b6679965db648212ad`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ba0896d09b2f635c9beaf90274430958ab3339d6e4fbe6c755085c6718fbf7`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:4636e734b88aba1167401cf235c192f218528b638cac9924c64a018610f7d182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cc99de5f6993a43f7917527f8dd891425186263e141a6946847ec2912b6c14`

```dockerfile
```

-	Layers:
	-	`sha256:73238098dfd1b3066041295cf44ebe3c9082d8868f93779ab91e13dfb2cc0f95`  
		Last Modified: Mon, 31 Aug 2026 19:07:42 GMT  
		Size: 566.3 KB (566272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ec2b13a541368fc998febc88732346f89abab3699195fbd65c214a7377b1f28`  
		Last Modified: Mon, 31 Aug 2026 19:07:41 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:f40cc135ff049d2c576420557d02ae3f5aa4773b5019f65f61f4151eb3ea568a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268427894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02c64f198ee65d33a89f9bef3864ff09e040023601aad4805acb7e6b99e6e2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:27:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 31 Aug 2026 19:27:13 GMT
ENV ARANGO_VERSION=3.12.11
# Mon, 31 Aug 2026 19:27:13 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 31 Aug 2026 19:27:13 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 31 Aug 2026 19:27:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:27:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:27:13 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 31 Aug 2026 19:27:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9a57f9edd89857e75bee2014275b5d0e762aa465baac125029cce6678022c9`  
		Last Modified: Mon, 31 Aug 2026 19:27:47 GMT  
		Size: 264.2 MB (264242702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2598b5649f80a8678448d65f5bebbfb068c820cfbc316b951c3231a9cd7352e1`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfcec581e70f5d0136ea9740fe8046637b1dcfb2b016f0f902eb0d64b2a28d0`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:11112fc448a3c7cfda62cb49fba55498e9af2fc82b8e6e54de07c6fa7c6a4809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53703ff421b5bb80c1cacb9a37e1d6b73769e568f2dfe750e0ccf8bc7684b8d`

```dockerfile
```

-	Layers:
	-	`sha256:ca602c074d3e399aa195a73a2032e96b39381a80f55f52ee576c5216e4099fbc`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 716.2 KB (716242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372bdd195dc504e3a8bff029dd144e33f23566f3ee226b562106723e7632f7f9`  
		Last Modified: Mon, 31 Aug 2026 19:27:42 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json
