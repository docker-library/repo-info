<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.11.1`](#arangodb312111)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:3ce7aa54ac9b0942a2b201cd47a397cb89c3d5ff5a087d701f3c785109d0dfb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:460b77c5349f1f983f8dc174eb56fce01979b8891dfe4187d4e6f672e724d63d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273607484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f345514ade530ba9f4ff78e692832119f46a71db12be8a53bbc90d614bf0c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:39 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 17 Sep 2026 21:13:39 GMT
ENV ARANGO_VERSION=3.12.11
# Thu, 17 Sep 2026 21:13:39 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 17 Sep 2026 21:13:39 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 17 Sep 2026 21:13:39 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 17 Sep 2026 21:13:39 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 17 Sep 2026 21:13:39 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:13:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:39 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 17 Sep 2026 21:13:39 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42533d624547e1b835241138297740f157e8d57d0ff05cac42542eb22fbdcf27`  
		Last Modified: Thu, 17 Sep 2026 21:14:15 GMT  
		Size: 269.8 MB (269755592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf09bdb7bbf2b0a4256c590cd0ce0219ad2788df49bf0f37b999e9ec04c7f6a1`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2df668f6be615dbbaf6da45fd9c8ebd9cd354fa07f0becac5d30508beb52338`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:14df554ba261d5f5d037cb71d127af70cc720443a0128e9180acccf261762031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f2e75a543addc19827ece2758cfb39d10138a02d3a2353d13489a476b8a290`

```dockerfile
```

-	Layers:
	-	`sha256:8c5a834b2e3dd9e0ff2e0f8744505aa4d3aad5004b339f6eea33000547cdadb7`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
		Size: 566.3 KB (566272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:024ae404e129b9b9130fe70027b63c73fcab22df6ed4a063c43ce5ac3a17144a`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
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

## `arangodb:3.12.11.1`

```console
$ docker pull arangodb@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:3ce7aa54ac9b0942a2b201cd47a397cb89c3d5ff5a087d701f3c785109d0dfb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:460b77c5349f1f983f8dc174eb56fce01979b8891dfe4187d4e6f672e724d63d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273607484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f345514ade530ba9f4ff78e692832119f46a71db12be8a53bbc90d614bf0c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:39 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 17 Sep 2026 21:13:39 GMT
ENV ARANGO_VERSION=3.12.11
# Thu, 17 Sep 2026 21:13:39 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 17 Sep 2026 21:13:39 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 17 Sep 2026 21:13:39 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 17 Sep 2026 21:13:39 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 17 Sep 2026 21:13:39 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:13:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:39 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 17 Sep 2026 21:13:39 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42533d624547e1b835241138297740f157e8d57d0ff05cac42542eb22fbdcf27`  
		Last Modified: Thu, 17 Sep 2026 21:14:15 GMT  
		Size: 269.8 MB (269755592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf09bdb7bbf2b0a4256c590cd0ce0219ad2788df49bf0f37b999e9ec04c7f6a1`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2df668f6be615dbbaf6da45fd9c8ebd9cd354fa07f0becac5d30508beb52338`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:14df554ba261d5f5d037cb71d127af70cc720443a0128e9180acccf261762031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f2e75a543addc19827ece2758cfb39d10138a02d3a2353d13489a476b8a290`

```dockerfile
```

-	Layers:
	-	`sha256:8c5a834b2e3dd9e0ff2e0f8744505aa4d3aad5004b339f6eea33000547cdadb7`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
		Size: 566.3 KB (566272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:024ae404e129b9b9130fe70027b63c73fcab22df6ed4a063c43ce5ac3a17144a`  
		Last Modified: Thu, 17 Sep 2026 21:14:10 GMT  
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
