<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.12`](#arangodb312)
-	[`arangodb:3.12.13`](#arangodb31213)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.12`

```console
$ docker pull arangodb@sha256:e48adfc58986a10e0316aa23ccae95ca580d880a41c76a8f0df68f9c29b470f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:3bbe8ad850776d9709c6f6bb5a1f9e9a2c3eb6e6cc5f0a8d676c6d12b1defe32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276569201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9468a33638fc65f99967e431fa8f764a0867a9bf3292b2340bd3c280c11057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 05 Nov 2026 18:53:32 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 05 Nov 2026 18:53:32 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 05 Nov 2026 18:53:32 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 05 Nov 2026 18:53:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:53:32 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 05 Nov 2026 18:53:32 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf61981122c9532b1ee2563937ddf47382c7c4d3678b663ed19d0231ba59c14`  
		Last Modified: Thu, 05 Nov 2026 18:54:06 GMT  
		Size: 272.7 MB (272713374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb6c28ecd81965ae2bab0d0b1a5deeda2b8efd325c323200db14031774f3e1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020369236dafc4812ac7014cd86b87cf29e7eb34d2b2ce16eca758ce00d83dc4`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:fbbaa387c2cd785b022ae4010843d06730c42c222bd2b859b4c2dbf3025068a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea77766f6af5512d67dd61cae695e9db44f1f41e5c37f1348261e95003f0419`

```dockerfile
```

-	Layers:
	-	`sha256:eca703d5cb390b069485c2641d86c1bd1d9dd08dc777b16df6bedec2c41691d0`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 566.3 KB (566274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba723fd829d21709b9c4b02cef600acab429b44fed1773040bf1c47f546d3356`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:b3adb8caae118c1d4021fa294c37f8e73360dfe3dba514cdc71bf1a4b6c67e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274321536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7080eddb3381f2f97923bd1f99d7bdadf7a90c6ebfa8bf72f3ad0e6f6061ceb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:03 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 05 Nov 2026 18:50:03 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 05 Nov 2026 18:50:03 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 05 Nov 2026 18:50:03 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 05 Nov 2026 18:50:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:03 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 05 Nov 2026 18:50:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39e0c805f1efc422b38c0a30d3b8d59cc11a839219e1340120ff61eb29ab7b3`  
		Last Modified: Thu, 05 Nov 2026 18:50:38 GMT  
		Size: 270.1 MB (270128787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1961096384eff337c949517347da12f2eedc9648fbd542566271749b85680e10`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b60d0c4358a94027b6473c7051f7fa03c591bde90afd5497ee3fb792edde1c1`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12` - unknown; unknown

```console
$ docker pull arangodb@sha256:7549e7078d6810d7423b29a471f613d3e5a48198cc9e17cbcdcb103e3ab10b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2c32ad729696b4dba09b724ae2cb46b7f4dd8e17dec403936f35a321563226`

```dockerfile
```

-	Layers:
	-	`sha256:5b07cb56ef22883651b89b73cf3bc8891db645511f99c7c02daa3cec8a02470a`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 716.2 KB (716244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7530caa08be7196113b1b074e5dd30255218c3a027ef872af3875f93ef12dd47`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:3.12.13`

```console
$ docker pull arangodb@sha256:e48adfc58986a10e0316aa23ccae95ca580d880a41c76a8f0df68f9c29b470f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:3.12.13` - linux; amd64

```console
$ docker pull arangodb@sha256:3bbe8ad850776d9709c6f6bb5a1f9e9a2c3eb6e6cc5f0a8d676c6d12b1defe32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276569201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9468a33638fc65f99967e431fa8f764a0867a9bf3292b2340bd3c280c11057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 05 Nov 2026 18:53:32 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 05 Nov 2026 18:53:32 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 05 Nov 2026 18:53:32 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 05 Nov 2026 18:53:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:53:32 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 05 Nov 2026 18:53:32 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf61981122c9532b1ee2563937ddf47382c7c4d3678b663ed19d0231ba59c14`  
		Last Modified: Thu, 05 Nov 2026 18:54:06 GMT  
		Size: 272.7 MB (272713374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb6c28ecd81965ae2bab0d0b1a5deeda2b8efd325c323200db14031774f3e1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020369236dafc4812ac7014cd86b87cf29e7eb34d2b2ce16eca758ce00d83dc4`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.13` - unknown; unknown

```console
$ docker pull arangodb@sha256:fbbaa387c2cd785b022ae4010843d06730c42c222bd2b859b4c2dbf3025068a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea77766f6af5512d67dd61cae695e9db44f1f41e5c37f1348261e95003f0419`

```dockerfile
```

-	Layers:
	-	`sha256:eca703d5cb390b069485c2641d86c1bd1d9dd08dc777b16df6bedec2c41691d0`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 566.3 KB (566274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba723fd829d21709b9c4b02cef600acab429b44fed1773040bf1c47f546d3356`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:3.12.13` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:b3adb8caae118c1d4021fa294c37f8e73360dfe3dba514cdc71bf1a4b6c67e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274321536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7080eddb3381f2f97923bd1f99d7bdadf7a90c6ebfa8bf72f3ad0e6f6061ceb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:03 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 05 Nov 2026 18:50:03 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 05 Nov 2026 18:50:03 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 05 Nov 2026 18:50:03 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 05 Nov 2026 18:50:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:03 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 05 Nov 2026 18:50:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39e0c805f1efc422b38c0a30d3b8d59cc11a839219e1340120ff61eb29ab7b3`  
		Last Modified: Thu, 05 Nov 2026 18:50:38 GMT  
		Size: 270.1 MB (270128787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1961096384eff337c949517347da12f2eedc9648fbd542566271749b85680e10`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b60d0c4358a94027b6473c7051f7fa03c591bde90afd5497ee3fb792edde1c1`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:3.12.13` - unknown; unknown

```console
$ docker pull arangodb@sha256:7549e7078d6810d7423b29a471f613d3e5a48198cc9e17cbcdcb103e3ab10b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2c32ad729696b4dba09b724ae2cb46b7f4dd8e17dec403936f35a321563226`

```dockerfile
```

-	Layers:
	-	`sha256:5b07cb56ef22883651b89b73cf3bc8891db645511f99c7c02daa3cec8a02470a`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 716.2 KB (716244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7530caa08be7196113b1b074e5dd30255218c3a027ef872af3875f93ef12dd47`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:e48adfc58986a10e0316aa23ccae95ca580d880a41c76a8f0df68f9c29b470f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:3bbe8ad850776d9709c6f6bb5a1f9e9a2c3eb6e6cc5f0a8d676c6d12b1defe32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276569201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9468a33638fc65f99967e431fa8f764a0867a9bf3292b2340bd3c280c11057`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 05 Nov 2026 18:53:32 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 05 Nov 2026 18:53:32 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 05 Nov 2026 18:53:32 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 05 Nov 2026 18:53:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:53:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:53:32 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 05 Nov 2026 18:53:32 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf61981122c9532b1ee2563937ddf47382c7c4d3678b663ed19d0231ba59c14`  
		Last Modified: Thu, 05 Nov 2026 18:54:06 GMT  
		Size: 272.7 MB (272713374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb6c28ecd81965ae2bab0d0b1a5deeda2b8efd325c323200db14031774f3e1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020369236dafc4812ac7014cd86b87cf29e7eb34d2b2ce16eca758ce00d83dc4`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:fbbaa387c2cd785b022ae4010843d06730c42c222bd2b859b4c2dbf3025068a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 KB (580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea77766f6af5512d67dd61cae695e9db44f1f41e5c37f1348261e95003f0419`

```dockerfile
```

-	Layers:
	-	`sha256:eca703d5cb390b069485c2641d86c1bd1d9dd08dc777b16df6bedec2c41691d0`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 566.3 KB (566274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba723fd829d21709b9c4b02cef600acab429b44fed1773040bf1c47f546d3356`  
		Last Modified: Thu, 05 Nov 2026 18:54:00 GMT  
		Size: 14.5 KB (14523 bytes)  
		MIME: application/vnd.in-toto+json

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:b3adb8caae118c1d4021fa294c37f8e73360dfe3dba514cdc71bf1a4b6c67e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274321536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7080eddb3381f2f97923bd1f99d7bdadf7a90c6ebfa8bf72f3ad0e6f6061ceb3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:03 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 05 Nov 2026 18:50:03 GMT
ENV ARANGO_VERSION=3.12.13
# Thu, 05 Nov 2026 18:50:03 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8003EDF6F05459984878D4A6C04AD0FD86FEC04D &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/9c169fe900ff79790395784287bfa82f0dc0059375a34a2881b9b745c8efd42e/arangodb312/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3e_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 05 Nov 2026 18:50:03 GMT
RUN echo "UTC" > /etc/timezone # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 05 Nov 2026 18:50:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:50:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:03 GMT
EXPOSE map[8529/tcp:{}]
# Thu, 05 Nov 2026 18:50:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39e0c805f1efc422b38c0a30d3b8d59cc11a839219e1340120ff61eb29ab7b3`  
		Last Modified: Thu, 05 Nov 2026 18:50:38 GMT  
		Size: 270.1 MB (270128787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1961096384eff337c949517347da12f2eedc9648fbd542566271749b85680e10`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b60d0c4358a94027b6473c7051f7fa03c591bde90afd5497ee3fb792edde1c1`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `arangodb:latest` - unknown; unknown

```console
$ docker pull arangodb@sha256:7549e7078d6810d7423b29a471f613d3e5a48198cc9e17cbcdcb103e3ab10b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **730.9 KB (730874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2c32ad729696b4dba09b724ae2cb46b7f4dd8e17dec403936f35a321563226`

```dockerfile
```

-	Layers:
	-	`sha256:5b07cb56ef22883651b89b73cf3bc8891db645511f99c7c02daa3cec8a02470a`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 716.2 KB (716244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7530caa08be7196113b1b074e5dd30255218c3a027ef872af3875f93ef12dd47`  
		Last Modified: Thu, 05 Nov 2026 18:50:33 GMT  
		Size: 14.6 KB (14630 bytes)  
		MIME: application/vnd.in-toto+json
