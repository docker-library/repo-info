<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.13`](#arangodb31213)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:ef66017c84c3100f83bccc6bcba542573ec17ecb0034592fcdda57ec808f7c76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:df68e12d8616d1e4c42932973e7292463216a2ca1e1d0b57b7f3e5e09be8ffda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276568217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094a5bd5f6b68922c4809340e5b53a4bc48acbba0ef09e2fbd3265fbd402eecc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 17:50:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 29 Oct 2026 17:50:53 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 29 Oct 2026 17:50:53 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 29 Oct 2026 17:50:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 29 Oct 2026 17:50:54 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 29 Oct 2026 17:50:54 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Oct 2026 17:50:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 17:50:54 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 29 Oct 2026 17:50:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719dba51914273ac6b07dcd71d7b76cf65d3afa17eaecd1a2b722ce43238d1d3`  
		Last Modified: Thu, 29 Oct 2026 17:51:33 GMT  
		Size: 272.7 MB (272712954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff2e18ced894456c7044eba412e05c6bb52da06733269c3f8f5ffaff0bbb25d`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4aa9a1e09872be5090632e6795b2d1445f13a6318dcbf36b9103a7f980849a`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:a34b1e6d09ddad8f4c76f0619e17ae660ad57f97565d6591807a28b34ecde537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27545ddd26bee923182f62972842f09a77f66420164177b997475d5d23f10f5b`

```dockerfile
```

-	Layers:
	-	`sha256:1a49c1b41026ba53447fbfc962a9664a00783bb94aa4c5f342efba87ec13757d`  
		Last Modified: Thu, 29 Oct 2026 17:51:28 GMT  
		Size: 566.3 KB (566274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbfc0c037be6df48a29ab65092e517b05be275b63e7ca30f3272ba476483a3ac`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:fca654fc4bd9661fe23086dcf876e79e3e2a848d7afce5cddb108a907c888a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274321276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe023f998cf6d67ff22fb7155b0b6d8ffc2bca824ce2d5ee7e2ab100be2b38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 17:50:40 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 29 Oct 2026 17:50:40 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 29 Oct 2026 17:50:40 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 29 Oct 2026 17:50:40 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Oct 2026 17:50:40 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 17:50:40 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 29 Oct 2026 17:50:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f75776aad7d5eb34c589ecd93d9b7375ad5ea17b0c2253d8a23e0fb84515790`  
		Last Modified: Thu, 29 Oct 2026 17:51:13 GMT  
		Size: 270.1 MB (270128634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448353a4b282170da241749f575b7347bc77febfb2f55b3c62ad332ff396fc14`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1919e1d062011e88b51cc6c4c85a27b7dc52fa7d32e2cdd69c1656c81339f7d4`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:3e9fe397651e555a0c3c9f342bc01faf2347579df4e0f835d0f148120ca18489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4329656f2c0e63afc1ff058991916fba59d51c9be1963b92e8a68c9342fd030f`

```dockerfile
```

-	Layers:
	-	`sha256:ce813572f241fe337064c015d399cccd5d18d32b624625adc409098d7f0ecf6a`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 716.2 KB (716244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b57c494df5ca264e88af161315e3dc627cd1e50daf3d60c63221e0d67231b3c`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.13`

```console
$ docker pull arangodb@sha256:ef66017c84c3100f83bccc6bcba542573ec17ecb0034592fcdda57ec808f7c76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12.13` - linux; amd64

```console
$ docker pull arangodb@sha256:df68e12d8616d1e4c42932973e7292463216a2ca1e1d0b57b7f3e5e09be8ffda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276568217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094a5bd5f6b68922c4809340e5b53a4bc48acbba0ef09e2fbd3265fbd402eecc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 17:50:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 29 Oct 2026 17:50:53 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 29 Oct 2026 17:50:53 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 29 Oct 2026 17:50:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 29 Oct 2026 17:50:54 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 29 Oct 2026 17:50:54 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Oct 2026 17:50:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 17:50:54 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 29 Oct 2026 17:50:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719dba51914273ac6b07dcd71d7b76cf65d3afa17eaecd1a2b722ce43238d1d3`  
		Last Modified: Thu, 29 Oct 2026 17:51:33 GMT  
		Size: 272.7 MB (272712954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff2e18ced894456c7044eba412e05c6bb52da06733269c3f8f5ffaff0bbb25d`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4aa9a1e09872be5090632e6795b2d1445f13a6318dcbf36b9103a7f980849a`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.13` - unknown; unknown

```console
$ docker pull arangodb@sha256:a34b1e6d09ddad8f4c76f0619e17ae660ad57f97565d6591807a28b34ecde537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27545ddd26bee923182f62972842f09a77f66420164177b997475d5d23f10f5b`

```dockerfile
```

-	Layers:
	-	`sha256:1a49c1b41026ba53447fbfc962a9664a00783bb94aa4c5f342efba87ec13757d`  
		Last Modified: Thu, 29 Oct 2026 17:51:28 GMT  
		Size: 566.3 KB (566274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbfc0c037be6df48a29ab65092e517b05be275b63e7ca30f3272ba476483a3ac`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12.13` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:fca654fc4bd9661fe23086dcf876e79e3e2a848d7afce5cddb108a907c888a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274321276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe023f998cf6d67ff22fb7155b0b6d8ffc2bca824ce2d5ee7e2ab100be2b38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 17:50:40 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 29 Oct 2026 17:50:40 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 29 Oct 2026 17:50:40 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 29 Oct 2026 17:50:40 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Oct 2026 17:50:40 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 17:50:40 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 29 Oct 2026 17:50:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f75776aad7d5eb34c589ecd93d9b7375ad5ea17b0c2253d8a23e0fb84515790`  
		Last Modified: Thu, 29 Oct 2026 17:51:13 GMT  
		Size: 270.1 MB (270128634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448353a4b282170da241749f575b7347bc77febfb2f55b3c62ad332ff396fc14`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1919e1d062011e88b51cc6c4c85a27b7dc52fa7d32e2cdd69c1656c81339f7d4`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.13` - unknown; unknown

```console
$ docker pull arangodb@sha256:3e9fe397651e555a0c3c9f342bc01faf2347579df4e0f835d0f148120ca18489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4329656f2c0e63afc1ff058991916fba59d51c9be1963b92e8a68c9342fd030f`

```dockerfile
```

-	Layers:
	-	`sha256:ce813572f241fe337064c015d399cccd5d18d32b624625adc409098d7f0ecf6a`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 716.2 KB (716244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b57c494df5ca264e88af161315e3dc627cd1e50daf3d60c63221e0d67231b3c`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:ef66017c84c3100f83bccc6bcba542573ec17ecb0034592fcdda57ec808f7c76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:df68e12d8616d1e4c42932973e7292463216a2ca1e1d0b57b7f3e5e09be8ffda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276568217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094a5bd5f6b68922c4809340e5b53a4bc48acbba0ef09e2fbd3265fbd402eecc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 17:50:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 29 Oct 2026 17:50:53 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 29 Oct 2026 17:50:53 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 29 Oct 2026 17:50:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 29 Oct 2026 17:50:54 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 29 Oct 2026 17:50:54 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Oct 2026 17:50:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 17:50:54 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 29 Oct 2026 17:50:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719dba51914273ac6b07dcd71d7b76cf65d3afa17eaecd1a2b722ce43238d1d3`  
		Last Modified: Thu, 29 Oct 2026 17:51:33 GMT  
		Size: 272.7 MB (272712954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff2e18ced894456c7044eba412e05c6bb52da06733269c3f8f5ffaff0bbb25d`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4aa9a1e09872be5090632e6795b2d1445f13a6318dcbf36b9103a7f980849a`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:a34b1e6d09ddad8f4c76f0619e17ae660ad57f97565d6591807a28b34ecde537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27545ddd26bee923182f62972842f09a77f66420164177b997475d5d23f10f5b`

```dockerfile
```

-	Layers:
	-	`sha256:1a49c1b41026ba53447fbfc962a9664a00783bb94aa4c5f342efba87ec13757d`  
		Last Modified: Thu, 29 Oct 2026 17:51:28 GMT  
		Size: 566.3 KB (566274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbfc0c037be6df48a29ab65092e517b05be275b63e7ca30f3272ba476483a3ac`  
		Last Modified: Thu, 29 Oct 2026 17:51:27 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:fca654fc4bd9661fe23086dcf876e79e3e2a848d7afce5cddb108a907c888a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274321276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe023f998cf6d67ff22fb7155b0b6d8ffc2bca824ce2d5ee7e2ab100be2b38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 17:50:40 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 29 Oct 2026 17:50:40 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 29 Oct 2026 17:50:40 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 29 Oct 2026 17:50:40 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Oct 2026 17:50:40 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:50:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 17:50:40 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 29 Oct 2026 17:50:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f75776aad7d5eb34c589ecd93d9b7375ad5ea17b0c2253d8a23e0fb84515790`  
		Last Modified: Thu, 29 Oct 2026 17:51:13 GMT  
		Size: 270.1 MB (270128634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448353a4b282170da241749f575b7347bc77febfb2f55b3c62ad332ff396fc14`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1919e1d062011e88b51cc6c4c85a27b7dc52fa7d32e2cdd69c1656c81339f7d4`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:3e9fe397651e555a0c3c9f342bc01faf2347579df4e0f835d0f148120ca18489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4329656f2c0e63afc1ff058991916fba59d51c9be1963b92e8a68c9342fd030f`

```dockerfile
```

-	Layers:
	-	`sha256:ce813572f241fe337064c015d399cccd5d18d32b624625adc409098d7f0ecf6a`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 716.2 KB (716244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b57c494df5ca264e88af161315e3dc627cd1e50daf3d60c63221e0d67231b3c`  
		Last Modified: Thu, 29 Oct 2026 17:51:08 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json
