## `sapmachine:17-jdk-headless`

```console
$ docker pull sapmachine@sha256:2983ee4d32226750996baa22a281c972c7d194394a9c7c9f86068a0226ed3952
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:6f6c12906055aae7a964625425d4d724b43ec506c3acca94ae4d44506e1eccc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235281840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8725ab8b740b1c8c435b86ae0b9ddecde6ff932357fa00a28b170d878bd929a2`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccc3330f5de1f16f0ea77c468b8244d29f1e7f11c9370491b423aa1102485b4`  
		Last Modified: Tue, 04 Aug 2026 01:50:55 GMT  
		Size: 205.5 MB (205530731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4c89ea51ee2995c54b6c3c30463189f5fd44592055494712820e1428e8d193ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ed4df7cddcb250a63d50b6c55ccbaaf6a7cad89aff9aa372997647d00edca2`

```dockerfile
```

-	Layers:
	-	`sha256:aea73348ce97f4a69c210deb6824e64ef865651abf4ea674bfb5db5e3a88aeea`  
		Last Modified: Tue, 04 Aug 2026 01:50:51 GMT  
		Size: 2.4 MB (2356564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a8796448fa45f914349586dc3efb5b9db1368cac8e3f6c50f849f024f00599`  
		Last Modified: Tue, 04 Aug 2026 01:50:51 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:13ae4bfab8d46adf74ac8b6bf5acf19ebc94e35abbe20e8bc21915c2817243d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230784767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350c5c9662a86e3bc6bb8c25374fb8575a6ef155fcbebfb7cf3c00470d8a0d9c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c700e186d8326b6b36d94d83eb786915263c74a04f83d6bbab18bc94adf86fa7`  
		Last Modified: Tue, 04 Aug 2026 01:51:01 GMT  
		Size: 201.9 MB (201897949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6541acdee778ac1d412a150f621ec90da817e258652f6eb01f9a7e312df3def9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48a32e351a1c2a421c30df3ded0ffb4891045b67e0edaba603bf0b3affd193e`

```dockerfile
```

-	Layers:
	-	`sha256:495a0527502549b78ee2ff02b7f14914c5408f5afb31008f8cbca0489753c586`  
		Last Modified: Tue, 04 Aug 2026 01:50:56 GMT  
		Size: 2.4 MB (2357071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91eee0bdcda4553beef5c4db499fcac6d7b06661f8f19c68695d8a7695a24f2e`  
		Last Modified: Tue, 04 Aug 2026 01:50:56 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c2e9902accb5c5ba38c956320c09a3058868a9fadab21e5adfa00904d66f9a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238899591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334bb47897d7471467601c09032995d9e83945f6afc5fa5a93b6724dd7fd954f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 03:03:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:03:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 03:03:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635d856a457dde7901bfa17ce3ae64b5e58d3f4fe893c38cb8209cc2cc91a5cd`  
		Last Modified: Tue, 04 Aug 2026 03:04:27 GMT  
		Size: 204.6 MB (204588918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:697f7e07e1a5f3447022d7639b0e8c22c8cc5c00b3fd6c0454ddc8296a42d522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2364337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601621a8c11142e78fdb6fb013d2f84754f6c42b6552b4662a5d4ce001258bf1`

```dockerfile
```

-	Layers:
	-	`sha256:7d05e614183f3f9a6a8fc88cda068c3ff2ca3fd4c791663a6c823e8c6004f843`  
		Last Modified: Tue, 04 Aug 2026 03:04:23 GMT  
		Size: 2.4 MB (2354035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dadcc9549b82f4356d5eaf3c8fc977d7ccf2c7220dfdbc3e25ea8f0a834a3621`  
		Last Modified: Tue, 04 Aug 2026 03:04:22 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json
