<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:3.10`](#arangodb310)
-	[`arangodb:3.10.2`](#arangodb3102)
-	[`arangodb:3.8`](#arangodb38)
-	[`arangodb:3.8.8`](#arangodb388)
-	[`arangodb:3.9`](#arangodb39)
-	[`arangodb:3.9.7`](#arangodb397)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:3.10`

```console
$ docker pull arangodb@sha256:b5522683f4b8b8f8e3909fb1effa08c3ed8dfcbf2c1b50269429a623f8fbb1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `arangodb:3.10` - linux; amd64

```console
$ docker pull arangodb@sha256:0dd153afd83d37be40fd6ae40fb522275a279c8d9f40d0b42dbb527cd4470d03
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219353896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419f9e0bb2563547eff11da2b3f58c8d967dd1ca0733165b19e416dea7eca610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:42:19 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 22 Dec 2022 18:19:27 GMT
ENV ARANGO_VERSION=3.10.2
# Thu, 22 Dec 2022 18:19:54 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/arangodb310/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 22 Dec 2022 18:19:55 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 22 Dec 2022 18:19:56 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 22 Dec 2022 18:19:56 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 22 Dec 2022 18:19:56 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 22 Dec 2022 18:19:56 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 22 Dec 2022 18:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2022 18:19:56 GMT
EXPOSE 8529
# Thu, 22 Dec 2022 18:19:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c59d62bcf05c359de81ce2f6d17b14d46ba7be6f167befeca1440a8a366cffb`  
		Last Modified: Thu, 22 Dec 2022 18:20:37 GMT  
		Size: 216.5 MB (216545137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593a2d79a121d731b55f6022143d0268726d511f23e5b71b515fb0650e0f880`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b222d86fd2a5152db517465694b1f7cd419ca1fc0e4041ec67afaa26cac71e3e`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10434909b7010a07454d017ec245b3fc77d4452871d1cd7b4bf63f5c9af879fd`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `arangodb:3.10` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:1a528c5bcd64540120e44d299a16815e1a04f07b4d082d4f896aec4f5570957f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213928877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf30f6994ce4ce95c6c2be4ecf161448894545c7dc13a8295ceac3a27bc074a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:03:28 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 22 Dec 2022 18:39:16 GMT
ENV ARANGO_VERSION=3.10.2
# Thu, 22 Dec 2022 18:39:40 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/arangodb310/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 22 Dec 2022 18:39:43 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 22 Dec 2022 18:39:44 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 22 Dec 2022 18:39:44 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 22 Dec 2022 18:39:44 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 22 Dec 2022 18:39:44 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 22 Dec 2022 18:39:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2022 18:39:44 GMT
EXPOSE 8529
# Thu, 22 Dec 2022 18:39:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07475407840e2c4aaf9fbdef59a193ded4879b296c875340f6c19a7fefcff66b`  
		Last Modified: Thu, 22 Dec 2022 18:40:13 GMT  
		Size: 211.2 MB (211218635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9024a5d90fb7b56640e2fd71847c2df3e61ddb091cbd1639289479b5523de4c`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c171b8013d63811a88057f15df7b8aeb19121483476514c63e893b96886249bc`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6ba77061d9807f54ae26029097e4bbdb88f7ac024e9fe74ee6c27e85aa567e`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.10.2`

```console
$ docker pull arangodb@sha256:b5522683f4b8b8f8e3909fb1effa08c3ed8dfcbf2c1b50269429a623f8fbb1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `arangodb:3.10.2` - linux; amd64

```console
$ docker pull arangodb@sha256:0dd153afd83d37be40fd6ae40fb522275a279c8d9f40d0b42dbb527cd4470d03
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219353896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419f9e0bb2563547eff11da2b3f58c8d967dd1ca0733165b19e416dea7eca610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:42:19 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 22 Dec 2022 18:19:27 GMT
ENV ARANGO_VERSION=3.10.2
# Thu, 22 Dec 2022 18:19:54 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/arangodb310/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 22 Dec 2022 18:19:55 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 22 Dec 2022 18:19:56 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 22 Dec 2022 18:19:56 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 22 Dec 2022 18:19:56 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 22 Dec 2022 18:19:56 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 22 Dec 2022 18:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2022 18:19:56 GMT
EXPOSE 8529
# Thu, 22 Dec 2022 18:19:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c59d62bcf05c359de81ce2f6d17b14d46ba7be6f167befeca1440a8a366cffb`  
		Last Modified: Thu, 22 Dec 2022 18:20:37 GMT  
		Size: 216.5 MB (216545137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593a2d79a121d731b55f6022143d0268726d511f23e5b71b515fb0650e0f880`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b222d86fd2a5152db517465694b1f7cd419ca1fc0e4041ec67afaa26cac71e3e`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10434909b7010a07454d017ec245b3fc77d4452871d1cd7b4bf63f5c9af879fd`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `arangodb:3.10.2` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:1a528c5bcd64540120e44d299a16815e1a04f07b4d082d4f896aec4f5570957f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213928877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf30f6994ce4ce95c6c2be4ecf161448894545c7dc13a8295ceac3a27bc074a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:03:28 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 22 Dec 2022 18:39:16 GMT
ENV ARANGO_VERSION=3.10.2
# Thu, 22 Dec 2022 18:39:40 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/arangodb310/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 22 Dec 2022 18:39:43 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 22 Dec 2022 18:39:44 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 22 Dec 2022 18:39:44 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 22 Dec 2022 18:39:44 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 22 Dec 2022 18:39:44 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 22 Dec 2022 18:39:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2022 18:39:44 GMT
EXPOSE 8529
# Thu, 22 Dec 2022 18:39:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07475407840e2c4aaf9fbdef59a193ded4879b296c875340f6c19a7fefcff66b`  
		Last Modified: Thu, 22 Dec 2022 18:40:13 GMT  
		Size: 211.2 MB (211218635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9024a5d90fb7b56640e2fd71847c2df3e61ddb091cbd1639289479b5523de4c`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c171b8013d63811a88057f15df7b8aeb19121483476514c63e893b96886249bc`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6ba77061d9807f54ae26029097e4bbdb88f7ac024e9fe74ee6c27e85aa567e`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.8`

```console
$ docker pull arangodb@sha256:2a87ce7fd3bfb80fb57d802d533b960ed91c69df92ede6f3834550c9311a93d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `arangodb:3.8` - linux; amd64

```console
$ docker pull arangodb@sha256:82ccaafd5b9c219349bdafd666ee800bc00908d700af2962cc08d163e11de7fe
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e80ef161d591ff18c52eca3538ec44e42819183e354f709278962b14025a118`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:51:41 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_VERSION=3.8.8
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb38/DEBIAN/amd64
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_PACKAGE=arangodb3_3.8.8-1_amd64.deb
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb38/DEBIAN/amd64/arangodb3_3.8.8-1_amd64.deb
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb38/DEBIAN/amd64/arangodb3_3.8.8-1_amd64.deb.asc
# Thu, 27 Oct 2022 00:44:51 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.0.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 27 Oct 2022 00:44:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 27 Oct 2022 00:44:54 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 27 Oct 2022 00:44:54 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 27 Oct 2022 00:44:54 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 27 Oct 2022 00:44:54 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 27 Oct 2022 00:44:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Oct 2022 00:44:54 GMT
EXPOSE 8529
# Thu, 27 Oct 2022 00:44:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487a9ea0d1ee31646f1db6eed2b72422eec6050cabde55ea9242e08219565270`  
		Last Modified: Thu, 27 Oct 2022 00:46:08 GMT  
		Size: 192.4 MB (192438735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7f0c4d39107a370e74ba90537142345ca825ce6adeb7b6b8cbf0935cbad919`  
		Last Modified: Thu, 27 Oct 2022 00:45:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f2bc8d483668b3099208c86d5ebab704d1a990a2d6f9a657f5e9b520c20d92`  
		Last Modified: Thu, 27 Oct 2022 00:45:45 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1975f6734b8a781ef62fe7666ce113b642303738fc119f1c99887943511c03`  
		Last Modified: Thu, 27 Oct 2022 00:45:45 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.8.8`

```console
$ docker pull arangodb@sha256:2a87ce7fd3bfb80fb57d802d533b960ed91c69df92ede6f3834550c9311a93d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `arangodb:3.8.8` - linux; amd64

```console
$ docker pull arangodb@sha256:82ccaafd5b9c219349bdafd666ee800bc00908d700af2962cc08d163e11de7fe
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e80ef161d591ff18c52eca3538ec44e42819183e354f709278962b14025a118`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:51:41 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_VERSION=3.8.8
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb38/DEBIAN/amd64
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_PACKAGE=arangodb3_3.8.8-1_amd64.deb
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb38/DEBIAN/amd64/arangodb3_3.8.8-1_amd64.deb
# Thu, 27 Oct 2022 00:44:25 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb38/DEBIAN/amd64/arangodb3_3.8.8-1_amd64.deb.asc
# Thu, 27 Oct 2022 00:44:51 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.0.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 27 Oct 2022 00:44:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 27 Oct 2022 00:44:54 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 27 Oct 2022 00:44:54 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 27 Oct 2022 00:44:54 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 27 Oct 2022 00:44:54 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 27 Oct 2022 00:44:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Oct 2022 00:44:54 GMT
EXPOSE 8529
# Thu, 27 Oct 2022 00:44:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487a9ea0d1ee31646f1db6eed2b72422eec6050cabde55ea9242e08219565270`  
		Last Modified: Thu, 27 Oct 2022 00:46:08 GMT  
		Size: 192.4 MB (192438735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7f0c4d39107a370e74ba90537142345ca825ce6adeb7b6b8cbf0935cbad919`  
		Last Modified: Thu, 27 Oct 2022 00:45:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f2bc8d483668b3099208c86d5ebab704d1a990a2d6f9a657f5e9b520c20d92`  
		Last Modified: Thu, 27 Oct 2022 00:45:45 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1975f6734b8a781ef62fe7666ce113b642303738fc119f1c99887943511c03`  
		Last Modified: Thu, 27 Oct 2022 00:45:45 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.9`

```console
$ docker pull arangodb@sha256:d1c5484c921263169e0207e009870b97feff7a2b61b3d8555261ba0981fc50bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `arangodb:3.9` - linux; amd64

```console
$ docker pull arangodb@sha256:156a71bf6c34ad7d641223c5f71fa14ca1c35357e19179ae61771cf96d6fd18e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201667687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bf6fddc48344eb382592eb5b62e0810b5478972bff2afb5164b2d78e4b1af2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:51:41 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_VERSION=3.9.7
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb39/DEBIAN/amd64
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_PACKAGE=arangodb3_3.9.7-1_amd64.deb
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb39/DEBIAN/amd64/arangodb3_3.9.7-1_amd64.deb
# Fri, 13 Jan 2023 19:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb39/DEBIAN/amd64/arangodb3_3.9.7-1_amd64.deb.asc
# Fri, 13 Jan 2023 19:19:51 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Fri, 13 Jan 2023 19:19:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Fri, 13 Jan 2023 19:19:53 GMT
RUN echo "UTC" > /etc/timezone
# Fri, 13 Jan 2023 19:19:53 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 13 Jan 2023 19:19:53 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Fri, 13 Jan 2023 19:19:53 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Fri, 13 Jan 2023 19:19:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2023 19:19:54 GMT
EXPOSE 8529
# Fri, 13 Jan 2023 19:19:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d611213409f81e7e3e1ab25c8ad28d725d6822ded2a9dded60503e0cb9a02ba5`  
		Last Modified: Fri, 13 Jan 2023 19:20:35 GMT  
		Size: 198.8 MB (198837714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9877f408b34ce30fc88eebd241be4a02bd8f8c3a5c7431d577b19880b4e9d1f3`  
		Last Modified: Fri, 13 Jan 2023 19:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7bf93fc995226903bad9e6a1a2e4da1300d19239bf0ecd3d85c8dc27193a80`  
		Last Modified: Fri, 13 Jan 2023 19:20:13 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43566da5cd11322a321fc93ade0e3e013630bd9fa0b314f1aca01b5b7c9bb7ed`  
		Last Modified: Fri, 13 Jan 2023 19:20:13 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.9.7`

```console
$ docker pull arangodb@sha256:d1c5484c921263169e0207e009870b97feff7a2b61b3d8555261ba0981fc50bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `arangodb:3.9.7` - linux; amd64

```console
$ docker pull arangodb@sha256:156a71bf6c34ad7d641223c5f71fa14ca1c35357e19179ae61771cf96d6fd18e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201667687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bf6fddc48344eb382592eb5b62e0810b5478972bff2afb5164b2d78e4b1af2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:51:41 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_VERSION=3.9.7
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb39/DEBIAN/amd64
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_PACKAGE=arangodb3_3.9.7-1_amd64.deb
# Fri, 13 Jan 2023 19:19:25 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb39/DEBIAN/amd64/arangodb3_3.9.7-1_amd64.deb
# Fri, 13 Jan 2023 19:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb39/DEBIAN/amd64/arangodb3_3.9.7-1_amd64.deb.asc
# Fri, 13 Jan 2023 19:19:51 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Fri, 13 Jan 2023 19:19:53 GMT
ENV GLIBCXX_FORCE_NEW=1
# Fri, 13 Jan 2023 19:19:53 GMT
RUN echo "UTC" > /etc/timezone
# Fri, 13 Jan 2023 19:19:53 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 13 Jan 2023 19:19:53 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Fri, 13 Jan 2023 19:19:53 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Fri, 13 Jan 2023 19:19:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2023 19:19:54 GMT
EXPOSE 8529
# Fri, 13 Jan 2023 19:19:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d611213409f81e7e3e1ab25c8ad28d725d6822ded2a9dded60503e0cb9a02ba5`  
		Last Modified: Fri, 13 Jan 2023 19:20:35 GMT  
		Size: 198.8 MB (198837714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9877f408b34ce30fc88eebd241be4a02bd8f8c3a5c7431d577b19880b4e9d1f3`  
		Last Modified: Fri, 13 Jan 2023 19:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7bf93fc995226903bad9e6a1a2e4da1300d19239bf0ecd3d85c8dc27193a80`  
		Last Modified: Fri, 13 Jan 2023 19:20:13 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43566da5cd11322a321fc93ade0e3e013630bd9fa0b314f1aca01b5b7c9bb7ed`  
		Last Modified: Fri, 13 Jan 2023 19:20:13 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:b5522683f4b8b8f8e3909fb1effa08c3ed8dfcbf2c1b50269429a623f8fbb1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:0dd153afd83d37be40fd6ae40fb522275a279c8d9f40d0b42dbb527cd4470d03
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219353896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419f9e0bb2563547eff11da2b3f58c8d967dd1ca0733165b19e416dea7eca610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:42:19 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 22 Dec 2022 18:19:27 GMT
ENV ARANGO_VERSION=3.10.2
# Thu, 22 Dec 2022 18:19:54 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/arangodb310/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 22 Dec 2022 18:19:55 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 22 Dec 2022 18:19:56 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 22 Dec 2022 18:19:56 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 22 Dec 2022 18:19:56 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 22 Dec 2022 18:19:56 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 22 Dec 2022 18:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2022 18:19:56 GMT
EXPOSE 8529
# Thu, 22 Dec 2022 18:19:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c59d62bcf05c359de81ce2f6d17b14d46ba7be6f167befeca1440a8a366cffb`  
		Last Modified: Thu, 22 Dec 2022 18:20:37 GMT  
		Size: 216.5 MB (216545137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593a2d79a121d731b55f6022143d0268726d511f23e5b71b515fb0650e0f880`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b222d86fd2a5152db517465694b1f7cd419ca1fc0e4041ec67afaa26cac71e3e`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10434909b7010a07454d017ec245b3fc77d4452871d1cd7b4bf63f5c9af879fd`  
		Last Modified: Thu, 22 Dec 2022 18:20:13 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `arangodb:latest` - linux; arm64 variant v8

```console
$ docker pull arangodb@sha256:1a528c5bcd64540120e44d299a16815e1a04f07b4d082d4f896aec4f5570957f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213928877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf30f6994ce4ce95c6c2be4ecf161448894545c7dc13a8295ceac3a27bc074a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:03:28 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 22 Dec 2022 18:39:16 GMT
ENV ARANGO_VERSION=3.10.2
# Thu, 22 Dec 2022 18:39:40 GMT
RUN apk add --no-cache gnupg pwgen binutils numactl numactl-tools nodejs yarn &&     yarn global add foxx-cli@2.1.1 &&     apk del yarn &&     gpg --batch --keyserver keys.openpgp.org --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B &&     mkdir /docker-entrypoint-initdb.d &&     cd /tmp                                &&     arch="$(apk --print-arch)"             &&     case "$arch" in                                   x86_64)  dpkgArch='amd64'          ;;         aarch64) dpkgArch='arm64'          ;;         *) echo >&2 "unsupported: $arch" && exit 1 ;;     esac                                   &&     ARANGO_URL="https://download.arangodb.com/arangodb310/DEBIAN/$dpkgArch" &&     ARANGO_PACKAGE="arangodb3_${ARANGO_VERSION}-1_${dpkgArch}.deb" &&     ARANGO_PACKAGE_URL="${ARANGO_URL}/${ARANGO_PACKAGE}" &&     ARANGO_SIGNATURE_URL="${ARANGO_PACKAGE_URL}.asc" &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     chgrp -R 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     chmod -R 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz &&     apk del gnupg
# Thu, 22 Dec 2022 18:39:43 GMT
ENV GLIBCXX_FORCE_NEW=1
# Thu, 22 Dec 2022 18:39:44 GMT
RUN echo "UTC" > /etc/timezone
# Thu, 22 Dec 2022 18:39:44 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 22 Dec 2022 18:39:44 GMT
COPY file:5186b735a7f691f0963e16d7add12851632ad73eceed0dc74092096025935cb4 in /entrypoint.sh 
# Thu, 22 Dec 2022 18:39:44 GMT
COPY file:e891c9dc63d937e22dc27abb45afa31518cd659993e0c54dab0f6cde8d994063 in /usr/bin/foxx 
# Thu, 22 Dec 2022 18:39:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2022 18:39:44 GMT
EXPOSE 8529
# Thu, 22 Dec 2022 18:39:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07475407840e2c4aaf9fbdef59a193ded4879b296c875340f6c19a7fefcff66b`  
		Last Modified: Thu, 22 Dec 2022 18:40:13 GMT  
		Size: 211.2 MB (211218635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9024a5d90fb7b56640e2fd71847c2df3e61ddb091cbd1639289479b5523de4c`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c171b8013d63811a88057f15df7b8aeb19121483476514c63e893b96886249bc`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6ba77061d9807f54ae26029097e4bbdb88f7ac024e9fe74ee6c27e85aa567e`  
		Last Modified: Thu, 22 Dec 2022 18:39:56 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
