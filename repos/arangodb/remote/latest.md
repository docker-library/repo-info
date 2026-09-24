## `arangodb:latest`

```console
$ docker pull arangodb@sha256:4bc086d5050ca7ea11c6d00a36d8b910c838bb54ad553f8c1b715769d3499bcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:5b734c1ac7a68e0a7de8b28e043a7354a255854a93deaf9095496b9079044d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275741367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba0fe1176757afc0d96ceaa2b6d0b2c9c6e5a7c99e3d4d188b2c7740201efb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:22:56 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 24 Sep 2026 19:22:56 GMT
ENV ARANGO_VERSION=3.12.12
# Thu, 24 Sep 2026 19:22:56 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 24 Sep 2026 19:22:56 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 24 Sep 2026 19:22:56 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 24 Sep 2026 19:22:56 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 24 Sep 2026 19:22:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 19:22:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:22:56 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 24 Sep 2026 19:22:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2804ecb9ebe5c0f0f162f50a19c6c3f7bfdb255471b743ca24725de74a02c0c`  
		Last Modified: Thu, 24 Sep 2026 19:23:33 GMT  
		Size: 271.9 MB (271889474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7f96649cef73e74f0514ac82a4e9e2f2854fb6d4b7ea08183cd47b13f03838`  
		Last Modified: Thu, 24 Sep 2026 19:23:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0de49b96a3a6e40c95806ba2291d1d4914c3babdf69ca15287f74fba24c425b`  
		Last Modified: Thu, 24 Sep 2026 19:23:27 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:bf8208117833c453d2d53339af0fffca32f5c15d5956622fd48a3b16bb61ddb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.3 KB (581304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f257efde8e2c054fa5868d8d7c56c2b8b40cfa65be154cc0ac0c67b19b75e09`

```dockerfile
```

-	Layers:
	-	`sha256:e610f5e3b03d913692242bba941e3eb9797a56861658f0943a340ce333aa004d`  
		Last Modified: Thu, 24 Sep 2026 19:23:27 GMT  
		Size: 566.8 KB (566781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f79c4994c729cfac2fd5a5f20d152f258a211ffbd937ee40f9cb79b17eb2cd4`  
		Last Modified: Thu, 24 Sep 2026 19:23:27 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:8db656fc2d6d1617ce0a28c011b7b858e75a44a8c7087a153df24682e0598c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273479864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd439ef4a6fe29de394b6f7193410e6b85bb4f3f329aaef1465c302432da551`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:26:04 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 24 Sep 2026 19:26:04 GMT
ENV ARANGO_VERSION=3.12.12
# Thu, 24 Sep 2026 19:26:04 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 24 Sep 2026 19:26:04 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 24 Sep 2026 19:26:04 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 24 Sep 2026 19:26:04 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 24 Sep 2026 19:26:04 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 19:26:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:26:04 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 24 Sep 2026 19:26:04 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0254f810ef83eb44da26c0fdf56a0ce8b824400ebe34089243c14bacb9c5eee5`  
		Last Modified: Thu, 24 Sep 2026 19:26:38 GMT  
		Size: 269.3 MB (269290050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28c9f9e02a75098665e494c19f8d8d1b41e4017717181f2c5c51d5cef6b273f`  
		Last Modified: Thu, 24 Sep 2026 19:26:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb5d683fee0c33e620aeac4f7233429fcdb691761a38c98db467484ade2ccf4`  
		Last Modified: Thu, 24 Sep 2026 19:26:33 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:cd046d8c663ab1f19c0c6229328f8bacf8453e318e59896f5806f93a230bc850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **731.4 KB (731381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e17b33e368641054c2c7c0fc8a9a1c0cc22117111f8b1c40b8b0b490ffc348c`

```dockerfile
```

-	Layers:
	-	`sha256:13e7fae471a83160e4ab8826cb4627c269943bbd1f0a5d67a48e84a436d574e8`  
		Last Modified: Thu, 24 Sep 2026 19:26:33 GMT  
		Size: 716.8 KB (716751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bbd4c27e35b69e9198817fae6b48f7fea2c996f57e8bf8aebed75f5d6af34c7`  
		Last Modified: Thu, 24 Sep 2026 19:26:33 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json
