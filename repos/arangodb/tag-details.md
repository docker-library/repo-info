<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.10`](#arangodb31210)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:bf5eabc0fb3a16a13d0d4de00cddfbf2209e3d25630e5331832efb206519ff8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:80555d92d729c2ce098a3ce3ba6cd7dccc525a3ae1a1c0e416f428343e76383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267926224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b3f72d96648b071b6f97e27ad3eecb903e4d5c81d7833d28efa5fb444a1dd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 17:29:35 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 29 Jun 2026 17:29:35 GMT
ENV ARANGO_VERSION=3.12.9.4
# Mon, 29 Jun 2026 17:29:35 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 29 Jun 2026 17:29:35 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 29 Jun 2026 17:29:35 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 29 Jun 2026 17:29:35 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 29 Jun 2026 17:29:35 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 17:29:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 17:29:35 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 29 Jun 2026 17:29:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811767fce79230630ea20c3c6ebe4072f7826bccbbabea4636eebf34e5a55ec`  
		Last Modified: Mon, 29 Jun 2026 17:30:13 GMT  
		Size: 264.1 MB (264079649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c90b8018c5be2b06a45b3421cddb2da885d0b1cf295951d7f0a958b72f58bc6`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b67b3501e291862ab074210db4c50390bf61c5f5d5e6124eca4bd400f826763`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:562279abfa339abd13a8c8d5c5e8b08ac41cf4accbfa6e4f862583b9e730ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.9 KB (578913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a8a91fef56de649556b67cb14cf6cf3b612199f20ff406f379193e2bd94a21`

```dockerfile
```

-	Layers:
	-	`sha256:791379caaa575a22963755bc22a9aee09b106dcbf56017631f7d13c79b1a2f32`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 564.4 KB (564384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d70ca833a2fa4d459c612eeb49221f190415dba05c87b4aeed1fc9f84dbb0e`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 14.5 KB (14529 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:c7c57ffe34dd98f7951370aaeff795b181f53ac04f8e42db4af7269018466beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265737689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0266797e10102f5f6700dcba53c74fab686ba937cc33bd5a013bb8f24ecbc3bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 17:29:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 29 Jun 2026 17:29:14 GMT
ENV ARANGO_VERSION=3.12.9.4
# Mon, 29 Jun 2026 17:29:14 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 29 Jun 2026 17:29:14 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 29 Jun 2026 17:29:14 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 29 Jun 2026 17:29:14 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 29 Jun 2026 17:29:14 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 17:29:14 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 29 Jun 2026 17:29:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cc0be7182dd41587149aacd08f15032564d72ffdeca8103221e1aca5ff8e45`  
		Last Modified: Mon, 29 Jun 2026 17:29:51 GMT  
		Size: 261.6 MB (261553675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6116878e70cb45bfa04aa1b49d549be6bf9f959a7db745009f6c2db23cc993`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642e15b3c2ede3392344935a3ab35b5774270005c9f178b6fe24b5b27a5ea076`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:9432a61b9e95317380ba42ba3e22b4c9c7c5fc4cc6962d3331bdda38170c8172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **729.0 KB (728989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3510a73b7182aacb30f1797d797becd40bca33a2ed58c42b98dd3916476a4b5c`

```dockerfile
```

-	Layers:
	-	`sha256:ea9a340d51ea8711044cd82ee4a5517eecfb1b82ef22ae7fd53a73504e711393`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 714.4 KB (714354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdefdae7b09c9c02cd835ccae24f733f8b142bf42107215556e85757cadf76cc`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 14.6 KB (14635 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.10`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:bf5eabc0fb3a16a13d0d4de00cddfbf2209e3d25630e5331832efb206519ff8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:80555d92d729c2ce098a3ce3ba6cd7dccc525a3ae1a1c0e416f428343e76383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267926224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b3f72d96648b071b6f97e27ad3eecb903e4d5c81d7833d28efa5fb444a1dd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 17:29:35 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 29 Jun 2026 17:29:35 GMT
ENV ARANGO_VERSION=3.12.9.4
# Mon, 29 Jun 2026 17:29:35 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 29 Jun 2026 17:29:35 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 29 Jun 2026 17:29:35 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 29 Jun 2026 17:29:35 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 29 Jun 2026 17:29:35 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 17:29:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 17:29:35 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 29 Jun 2026 17:29:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811767fce79230630ea20c3c6ebe4072f7826bccbbabea4636eebf34e5a55ec`  
		Last Modified: Mon, 29 Jun 2026 17:30:13 GMT  
		Size: 264.1 MB (264079649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c90b8018c5be2b06a45b3421cddb2da885d0b1cf295951d7f0a958b72f58bc6`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b67b3501e291862ab074210db4c50390bf61c5f5d5e6124eca4bd400f826763`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:562279abfa339abd13a8c8d5c5e8b08ac41cf4accbfa6e4f862583b9e730ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.9 KB (578913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a8a91fef56de649556b67cb14cf6cf3b612199f20ff406f379193e2bd94a21`

```dockerfile
```

-	Layers:
	-	`sha256:791379caaa575a22963755bc22a9aee09b106dcbf56017631f7d13c79b1a2f32`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 564.4 KB (564384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d70ca833a2fa4d459c612eeb49221f190415dba05c87b4aeed1fc9f84dbb0e`  
		Last Modified: Mon, 29 Jun 2026 17:30:06 GMT  
		Size: 14.5 KB (14529 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:c7c57ffe34dd98f7951370aaeff795b181f53ac04f8e42db4af7269018466beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265737689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0266797e10102f5f6700dcba53c74fab686ba937cc33bd5a013bb8f24ecbc3bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 17:29:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 29 Jun 2026 17:29:14 GMT
ENV ARANGO_VERSION=3.12.9.4
# Mon, 29 Jun 2026 17:29:14 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Mon, 29 Jun 2026 17:29:14 GMT
ENV GLIBCXX_FORCE_NEW=1
# Mon, 29 Jun 2026 17:29:14 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Mon, 29 Jun 2026 17:29:14 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 29 Jun 2026 17:29:14 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 29 Jun 2026 17:29:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 29 Jun 2026 17:29:14 GMT
EXPOSE map[8529/tcp:{}]
# Mon, 29 Jun 2026 17:29:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cc0be7182dd41587149aacd08f15032564d72ffdeca8103221e1aca5ff8e45`  
		Last Modified: Mon, 29 Jun 2026 17:29:51 GMT  
		Size: 261.6 MB (261553675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6116878e70cb45bfa04aa1b49d549be6bf9f959a7db745009f6c2db23cc993`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642e15b3c2ede3392344935a3ab35b5774270005c9f178b6fe24b5b27a5ea076`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:9432a61b9e95317380ba42ba3e22b4c9c7c5fc4cc6962d3331bdda38170c8172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **729.0 KB (728989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3510a73b7182aacb30f1797d797becd40bca33a2ed58c42b98dd3916476a4b5c`

```dockerfile
```

-	Layers:
	-	`sha256:ea9a340d51ea8711044cd82ee4a5517eecfb1b82ef22ae7fd53a73504e711393`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 714.4 KB (714354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdefdae7b09c9c02cd835ccae24f733f8b142bf42107215556e85757cadf76cc`  
		Last Modified: Mon, 29 Jun 2026 17:29:44 GMT  
		Size: 14.6 KB (14635 bytes)  
		MIME: application/vnd.in-toto+json
