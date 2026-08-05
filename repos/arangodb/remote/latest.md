## `arangodb:latest`

```console
$ docker pull arangodb@sha256:26df533ad687daf363ac6dfb5da409c913eec8b56d852d34403af393a9cee196
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:89000abd5a90e0c8e6bd71d7fdc744852e0f6eb6d7ee4aa411bc05a3fae21bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267831942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547c66f52568e94c99ffeca1623e8f1663b5b2bc3ab762e5d2e55c5ed34832af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 21:03:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Aug 2026 21:03:09 GMT
ENV ARANGO_VERSION=3.12.10
# Tue, 04 Aug 2026 21:03:09 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Tue, 04 Aug 2026 21:03:09 GMT
ENV GLIBCXX_FORCE_NEW=1
# Tue, 04 Aug 2026 21:03:09 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Tue, 04 Aug 2026 21:03:09 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 04 Aug 2026 21:03:09 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 21:03:09 GMT
EXPOSE map[8529/tcp:{}]
# Tue, 04 Aug 2026 21:03:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5fa1cfbb7925d3d6d4ee62bd4e9a1f68e06678c1d4aae91762e37920b106c5`  
		Last Modified: Tue, 04 Aug 2026 21:03:44 GMT  
		Size: 264.0 MB (263985365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d43728dc02bd170893577d23feab0835dd46a03c04b06adb149191cd904948`  
		Last Modified: Tue, 04 Aug 2026 21:03:39 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07da7c8f0efcd228bf2cf34fe5f9e6a0b3924cc6a65b3059d6a4074cdf8454ad`  
		Last Modified: Tue, 04 Aug 2026 21:03:39 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:a96c4f7d7419949db55d0dd15c0fec032aa1006774ec296f4a62e5a0bc90c325
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.8 KB (579754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0a4b420ff49f125ac4cc84d04d1ad18b00d1fe7bf90e75cc4d5eda4114b35a`

```dockerfile
```

-	Layers:
	-	`sha256:e12cdc4ee75fa2448dc29acb503353ba7ea82d48e2d403bff4c4f1f4903488a5`  
		Last Modified: Tue, 04 Aug 2026 21:03:39 GMT  
		Size: 565.2 KB (565232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6de0e132720feeb7f9c23234573637cd9ce86d3158118020e9c800c885632283`  
		Last Modified: Tue, 04 Aug 2026 21:03:39 GMT  
		Size: 14.5 KB (14522 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:e9b9b492d42008412d05c1501ca1c92964644dfb1a0a68072e341b6d6824af42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265787826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ec2899b6590ace595b44828690ce6209c495a045413c93dbe9cda6ff56c386`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 21:03:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Aug 2026 21:03:31 GMT
ENV ARANGO_VERSION=3.12.10
# Tue, 04 Aug 2026 21:03:31 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Tue, 04 Aug 2026 21:03:31 GMT
ENV GLIBCXX_FORCE_NEW=1
# Tue, 04 Aug 2026 21:03:31 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Tue, 04 Aug 2026 21:03:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 04 Aug 2026 21:03:31 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:03:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 21:03:31 GMT
EXPOSE map[8529/tcp:{}]
# Tue, 04 Aug 2026 21:03:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f563f7d6ba7098b007a9fc117107ac397185cefff58cfc5b18f0ccabb4c4e1d1`  
		Last Modified: Tue, 04 Aug 2026 21:04:05 GMT  
		Size: 261.6 MB (261603812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f9c3856f3c81f0ba5bbd06c9b572e717466dde1859e360598f026c60ef0952`  
		Last Modified: Tue, 04 Aug 2026 21:03:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bb786bd9566325b255530d994d90547b039fa32be69262378dc1191c8df898`  
		Last Modified: Tue, 04 Aug 2026 21:03:59 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:0d62ff1fdb6da6e4a312d2c514fb42c325f20fa1612f2f089d1a32b0b1585460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **729.8 KB (729832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52cb23c43212265095c90480be857b0f6cf21770ff35ce9cfa65590a430bc163`

```dockerfile
```

-	Layers:
	-	`sha256:a2734a1cf88833043ed6514e49c9993d8709d0c51743b2679a0a5c7a78dd9d0a`  
		Last Modified: Tue, 04 Aug 2026 21:03:59 GMT  
		Size: 715.2 KB (715202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d268506042450128459489dc88b64372c5db8bf8fdb29650ed0bcde6934b5556`  
		Last Modified: Tue, 04 Aug 2026 21:03:59 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json
