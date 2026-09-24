<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.12`](#arangodb31212)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:f8e1590646f0600da50d4c8a03d0596e1a70453c24c145e54d80c792de247a43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:ed3829111596be71faaeca6bf4cb0f3bcfe106172d3bdfe500c01e9755d081b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273607052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5617bc00e65daa53687e81a28d06c43f390d4b3e719a9df4e684e87c6a4969b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 17:15:19 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 23 Sep 2026 17:15:19 GMT
ENV ARANGO_VERSION=3.12.11.1
# Wed, 23 Sep 2026 17:15:19 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Wed, 23 Sep 2026 17:15:19 GMT
ENV GLIBCXX_FORCE_NEW=1
# Wed, 23 Sep 2026 17:15:19 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Wed, 23 Sep 2026 17:15:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 23 Sep 2026 17:15:19 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 23 Sep 2026 17:15:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Sep 2026 17:15:19 GMT
EXPOSE map[8529/tcp:{}]
# Wed, 23 Sep 2026 17:15:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ca3d875b22802d0c3eb4ff32d892c15f81e07962bcfe878dafbaee2680fe55`  
		Last Modified: Wed, 23 Sep 2026 17:15:53 GMT  
		Size: 269.8 MB (269755160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d890b0288e74eb76f26025ae1cadfd52daac96add9763eab63049314212d5834`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a26fb44bf4581c2922ec172970fab2bf57aa9f6a6f2aedb0e5094c2295a049`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:f520bdb6685ed6272ed63feefb804511bfcf6b9f8bd9d4eea1aec422924ef90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d29dde847a36bc204cf35e824f33b9344b538296cce959ee6aeefa3a5e89011`

```dockerfile
```

-	Layers:
	-	`sha256:7d0eeb33225fa807645a1bb49282840a29f616b93c2ada3c79bd10570989635f`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 566.3 KB (566276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fba4d952d3bd533542698e082236f909dd23c343c1fce03f0c2e595c8ec3eb73`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:ea40d3eca2e72763fce2317d799cceee5c90fe41a8f7b1b36c11789a3ea00806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271466509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51a74d7834b71c675b77c11f46d81e70ab051a58735d895cd4444dce32ac4ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 17:12:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 23 Sep 2026 17:12:32 GMT
ENV ARANGO_VERSION=3.12.11.1
# Wed, 23 Sep 2026 17:12:32 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Wed, 23 Sep 2026 17:12:32 GMT
ENV GLIBCXX_FORCE_NEW=1
# Wed, 23 Sep 2026 17:12:32 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Wed, 23 Sep 2026 17:12:32 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 23 Sep 2026 17:12:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 23 Sep 2026 17:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Sep 2026 17:12:32 GMT
EXPOSE map[8529/tcp:{}]
# Wed, 23 Sep 2026 17:12:32 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb156aa9edd421ba57fcfe2e0999c990c308ae0e5c6f0e4b19c76165ab5f7d28`  
		Last Modified: Wed, 23 Sep 2026 17:13:07 GMT  
		Size: 267.3 MB (267276698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbac5b81ca51a0d139e4745ad8282e6eb278c770b1320746d0c0f3db46c89f16`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd7e7f75dada6c459927f3bae035653d7f4db82a09d2048dd14259b0dc0e034`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:d91ae7c08fcadde0d49f100f2caa6cd5f91883862db1988489f3ab68798352cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef5472ce6f64fc9ede24cdeca930a80587ec5436c23f23b72d7b48ba53baece`

```dockerfile
```

-	Layers:
	-	`sha256:9130f168565c58833fdf928b152890cdaab129155a4b8f1bbf97dc65ccfd73d7`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 716.2 KB (716246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a28ce2a2206b9d9a2e36bea35066c1ae32b6e1f3fe969ff38bb96a2d419b8605`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 14.6 KB (14644 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.12`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f8e1590646f0600da50d4c8a03d0596e1a70453c24c145e54d80c792de247a43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:ed3829111596be71faaeca6bf4cb0f3bcfe106172d3bdfe500c01e9755d081b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273607052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5617bc00e65daa53687e81a28d06c43f390d4b3e719a9df4e684e87c6a4969b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 17:15:19 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 23 Sep 2026 17:15:19 GMT
ENV ARANGO_VERSION=3.12.11.1
# Wed, 23 Sep 2026 17:15:19 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Wed, 23 Sep 2026 17:15:19 GMT
ENV GLIBCXX_FORCE_NEW=1
# Wed, 23 Sep 2026 17:15:19 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Wed, 23 Sep 2026 17:15:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 23 Sep 2026 17:15:19 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 23 Sep 2026 17:15:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Sep 2026 17:15:19 GMT
EXPOSE map[8529/tcp:{}]
# Wed, 23 Sep 2026 17:15:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ca3d875b22802d0c3eb4ff32d892c15f81e07962bcfe878dafbaee2680fe55`  
		Last Modified: Wed, 23 Sep 2026 17:15:53 GMT  
		Size: 269.8 MB (269755160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d890b0288e74eb76f26025ae1cadfd52daac96add9763eab63049314212d5834`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a26fb44bf4581c2922ec172970fab2bf57aa9f6a6f2aedb0e5094c2295a049`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:f520bdb6685ed6272ed63feefb804511bfcf6b9f8bd9d4eea1aec422924ef90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d29dde847a36bc204cf35e824f33b9344b538296cce959ee6aeefa3a5e89011`

```dockerfile
```

-	Layers:
	-	`sha256:7d0eeb33225fa807645a1bb49282840a29f616b93c2ada3c79bd10570989635f`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 566.3 KB (566276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fba4d952d3bd533542698e082236f909dd23c343c1fce03f0c2e595c8ec3eb73`  
		Last Modified: Wed, 23 Sep 2026 17:15:48 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:ea40d3eca2e72763fce2317d799cceee5c90fe41a8f7b1b36c11789a3ea00806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271466509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51a74d7834b71c675b77c11f46d81e70ab051a58735d895cd4444dce32ac4ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 17:12:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 23 Sep 2026 17:12:32 GMT
ENV ARANGO_VERSION=3.12.11.1
# Wed, 23 Sep 2026 17:12:32 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Wed, 23 Sep 2026 17:12:32 GMT
ENV GLIBCXX_FORCE_NEW=1
# Wed, 23 Sep 2026 17:12:32 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Wed, 23 Sep 2026 17:12:32 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 23 Sep 2026 17:12:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 23 Sep 2026 17:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Sep 2026 17:12:32 GMT
EXPOSE map[8529/tcp:{}]
# Wed, 23 Sep 2026 17:12:32 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb156aa9edd421ba57fcfe2e0999c990c308ae0e5c6f0e4b19c76165ab5f7d28`  
		Last Modified: Wed, 23 Sep 2026 17:13:07 GMT  
		Size: 267.3 MB (267276698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbac5b81ca51a0d139e4745ad8282e6eb278c770b1320746d0c0f3db46c89f16`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd7e7f75dada6c459927f3bae035653d7f4db82a09d2048dd14259b0dc0e034`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:d91ae7c08fcadde0d49f100f2caa6cd5f91883862db1988489f3ab68798352cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef5472ce6f64fc9ede24cdeca930a80587ec5436c23f23b72d7b48ba53baece`

```dockerfile
```

-	Layers:
	-	`sha256:9130f168565c58833fdf928b152890cdaab129155a4b8f1bbf97dc65ccfd73d7`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 716.2 KB (716246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a28ce2a2206b9d9a2e36bea35066c1ae32b6e1f3fe969ff38bb96a2d419b8605`  
		Last Modified: Wed, 23 Sep 2026 17:13:01 GMT  
		Size: 14.6 KB (14644 bytes)  
		MIME: application/vnd.in-toto+json
