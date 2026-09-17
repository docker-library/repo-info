<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.11`](#arangodb31211)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:7c48207c2585ae1a94b7ef0435c48e0e32a14351ce8262434ea20fa40449c6cb
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
$ docker pull arangodb@sha256:6a00802d932ca7af4ad58b93e8cf0d106539a259deb5c2002106d934b2d61182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271466400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5fd4afdf010635d135598355e5ac53d1d776aa92bdd029f416a319d0ca9a49`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:38 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 17 Sep 2026 21:13:38 GMT
ENV ARANGO_VERSION=3.12.11
# Thu, 17 Sep 2026 21:13:38 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 17 Sep 2026 21:13:38 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 17 Sep 2026 21:13:38 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:38 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 17 Sep 2026 21:13:38 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f02ae4fd7eaab437f4e38b0d9865a82eab3fe32a784259e5e782813517a0a8`  
		Last Modified: Thu, 17 Sep 2026 21:14:13 GMT  
		Size: 267.3 MB (267276587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bceb206b411343d055fcf09fbd0d447563549f5bb4a1fde38fbfdef7431cba9`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a81716721337959b797fe8b40c28dfc5436c7a8b86604b90cd7f9cf2b620d0`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:b382c2e05cc744d9723ecf98c64bca2ed24830cfe2876d9bacf8cdbdabf815d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf5e21a99831fbcb23cce7ff380596f14137a8edb2aa1befc2ecc42eb021c9d`

```dockerfile
```

-	Layers:
	-	`sha256:b9c4ef7485b2fcd5f62a723f99e00fb1699c149d011bc23877ac783688a4d497`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 716.2 KB (716242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd4a1d620fe25bdc42f742fb9d9f7a9db469b705b1e51f103c8b89ba430aebf`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.11`

```console
$ docker pull arangodb@sha256:7c48207c2585ae1a94b7ef0435c48e0e32a14351ce8262434ea20fa40449c6cb
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
$ docker pull arangodb@sha256:6a00802d932ca7af4ad58b93e8cf0d106539a259deb5c2002106d934b2d61182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271466400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5fd4afdf010635d135598355e5ac53d1d776aa92bdd029f416a319d0ca9a49`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:38 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 17 Sep 2026 21:13:38 GMT
ENV ARANGO_VERSION=3.12.11
# Thu, 17 Sep 2026 21:13:38 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 17 Sep 2026 21:13:38 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 17 Sep 2026 21:13:38 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:38 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 17 Sep 2026 21:13:38 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f02ae4fd7eaab437f4e38b0d9865a82eab3fe32a784259e5e782813517a0a8`  
		Last Modified: Thu, 17 Sep 2026 21:14:13 GMT  
		Size: 267.3 MB (267276587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bceb206b411343d055fcf09fbd0d447563549f5bb4a1fde38fbfdef7431cba9`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a81716721337959b797fe8b40c28dfc5436c7a8b86604b90cd7f9cf2b620d0`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.11` - unknown; unknown

```console
$ docker pull arangodb@sha256:b382c2e05cc744d9723ecf98c64bca2ed24830cfe2876d9bacf8cdbdabf815d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf5e21a99831fbcb23cce7ff380596f14137a8edb2aa1befc2ecc42eb021c9d`

```dockerfile
```

-	Layers:
	-	`sha256:b9c4ef7485b2fcd5f62a723f99e00fb1699c149d011bc23877ac783688a4d497`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 716.2 KB (716242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd4a1d620fe25bdc42f742fb9d9f7a9db469b705b1e51f103c8b89ba430aebf`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:7c48207c2585ae1a94b7ef0435c48e0e32a14351ce8262434ea20fa40449c6cb
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
$ docker pull arangodb@sha256:6a00802d932ca7af4ad58b93e8cf0d106539a259deb5c2002106d934b2d61182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271466400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5fd4afdf010635d135598355e5ac53d1d776aa92bdd029f416a319d0ca9a49`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:38 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 17 Sep 2026 21:13:38 GMT
ENV ARANGO_VERSION=3.12.11
# Thu, 17 Sep 2026 21:13:38 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 17 Sep 2026 21:13:38 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 17 Sep 2026 21:13:38 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:13:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:38 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 17 Sep 2026 21:13:38 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f02ae4fd7eaab437f4e38b0d9865a82eab3fe32a784259e5e782813517a0a8`  
		Last Modified: Thu, 17 Sep 2026 21:14:13 GMT  
		Size: 267.3 MB (267276587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bceb206b411343d055fcf09fbd0d447563549f5bb4a1fde38fbfdef7431cba9`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a81716721337959b797fe8b40c28dfc5436c7a8b86604b90cd7f9cf2b620d0`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:b382c2e05cc744d9723ecf98c64bca2ed24830cfe2876d9bacf8cdbdabf815d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf5e21a99831fbcb23cce7ff380596f14137a8edb2aa1befc2ecc42eb021c9d`

```dockerfile
```

-	Layers:
	-	`sha256:b9c4ef7485b2fcd5f62a723f99e00fb1699c149d011bc23877ac783688a4d497`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 716.2 KB (716242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd4a1d620fe25bdc42f742fb9d9f7a9db469b705b1e51f103c8b89ba430aebf`  
		Last Modified: Thu, 17 Sep 2026 21:14:07 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json
