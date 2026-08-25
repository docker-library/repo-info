## `nim:latest`

```console
$ docker pull nim@sha256:c4149ab70e3cbc7fcb338dc55141b60b4b307ae263cc5e27288f6f673051f809
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:latest` - linux; amd64

```console
$ docker pull nim@sha256:b6b83dd937970d93aedf7567ccf9977ad148381e0f634feb665ee9dbb9f36ca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.2 MB (178156859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697baede70c12dad81277a8f41f62b454922937fd3f338a84e328c98825da9e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:55 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:55 GMT
ENV NIM_VERSION=2.2.10
# Tue, 25 Aug 2026 00:22:55 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:55 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:57 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:57 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb22666ba1fa0afa621a69dc32114599c08c171e7782d1cfd960c9c0821a107`  
		Last Modified: Tue, 25 Aug 2026 00:23:16 GMT  
		Size: 119.7 MB (119734445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a594295df29c0414be4832e45b2d2f87bd045083ed6fdbb179c68aa437b3e20a`  
		Last Modified: Tue, 25 Aug 2026 00:23:14 GMT  
		Size: 30.2 MB (30189595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a20a7fd69e794ab90d6a6a2dae24da6379079afa3c2e70c71f3ad76631a7ad1`  
		Last Modified: Tue, 25 Aug 2026 00:23:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:7a83566ec69c51d471cd7951c40cb98fcf4e4156c586af5ef09a4db766f797b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c3610622de4792f06b685af84e70f722d79b90594f4190355d297ca2d47ed3`

```dockerfile
```

-	Layers:
	-	`sha256:b356fb0fb761bf6ff46453b3da4aff5e790f20e097d67f49ad6a81005f7a1a28`  
		Last Modified: Tue, 25 Aug 2026 00:23:12 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm variant v7

```console
$ docker pull nim@sha256:e237ff9e32001708ab6a9ea68c89822fc175cc6e1308a1c10b1576312f0f60ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143717980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c752efd29685ab992e1b202b2d69521a2224933206554660ed3fba667a9420f5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:33 GMT
ENV NIM_VERSION=2.2.10
# Tue, 25 Aug 2026 00:22:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:36 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7e95656f918a82e8089f4725218855234e829ab8e918edc0855916a9feebc8`  
		Last Modified: Tue, 25 Aug 2026 00:22:49 GMT  
		Size: 89.2 MB (89200318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fcf67d4ce4a10b521d5117679692e538aa8c8b796b06da4af88df036b69a9b`  
		Last Modified: Tue, 25 Aug 2026 00:22:48 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44aac0460b3524db9a5030c5192d23fb5a8a3bbabbe0d4df74dc2bdf2bf06ef8`  
		Last Modified: Tue, 25 Aug 2026 00:22:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:5e534a4d01144e9513aa4cb753865c5bce3a5a3c4ba5e0cab7021b5856bff134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c689a29b62853d15a3175e8a43b3237f844ffc736b8384a908acfee6a10923`

```dockerfile
```

-	Layers:
	-	`sha256:605fa0b57a5e3f79071185d1eaadead19a7b51eb8a5efd6b04f7c9e8af2a9ec0`  
		Last Modified: Tue, 25 Aug 2026 00:22:47 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:a4658715643c9b94155e394fe174c239c5fd4a27250b45db725b8439156f1e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171431980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35593adc3be856d694264d471929d5dc0e7a49b1bb017a6710de22279f16bc4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
ENV NIM_VERSION=2.2.10
# Tue, 25 Aug 2026 00:22:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:37 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:39 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe68326868a01362f3ff25b8250705b050ff6c5336f4de9268e959bcc9e7950`  
		Last Modified: Tue, 25 Aug 2026 00:22:58 GMT  
		Size: 113.8 MB (113822662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8710ccbe2ebce13ee67011c4f54eb2d47ab074106e5323d2cd408b9f01cc2235`  
		Last Modified: Tue, 25 Aug 2026 00:22:55 GMT  
		Size: 29.5 MB (29491865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b851688c42efeeea23c4712558604bc4b887643d554d4e0482535b516361355`  
		Last Modified: Tue, 25 Aug 2026 00:22:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:37d781f74fcb07769a63720e0dec45ab967ba10660e644bd773343433d2721d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ada3ab3d255422faf06694df7ed9105a7125b01acea283d929306ceb94005`

```dockerfile
```

-	Layers:
	-	`sha256:e5ea363d6b7a95e42e04dd2743b263f3699aff7f1ff03277c48dada762eebe83`  
		Last Modified: Tue, 25 Aug 2026 00:22:53 GMT  
		Size: 14.6 KB (14566 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:a1600481e35068f4bdd0d34b290f19c8186f5de727fbdc2227a5fa75507d3216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.8 MB (179754408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508c965dfdc215f6fcba10158abb4fc07d9ac46ca0483642223a55a786d56c7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:19 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:19 GMT
ENV NIM_VERSION=2.2.10
# Tue, 25 Aug 2026 00:18:19 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:19 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:19 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:21 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:21 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f18340b7cb1776dbf4049bd528727b761e079ec8ff7e98fe12cb61de3c3db53`  
		Last Modified: Tue, 25 Aug 2026 00:18:39 GMT  
		Size: 118.7 MB (118732522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d3f14879f4d3bd4ba541d43822de86b951bac172daf7b577f211bd3b35314e`  
		Last Modified: Tue, 25 Aug 2026 00:18:37 GMT  
		Size: 31.8 MB (31800669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d47dc7951a0ed7b0610cd7ba145e8251b13af4baf381b458c2c90e3dbc167e3c`  
		Last Modified: Tue, 25 Aug 2026 00:18:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:43daeb0480c25066f2ac9455ab30b53d8c4abd1fa2f9c4173e946a73a513ad2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d86d2906f1c3f375f1a161aa1d71c23763ee1c1405375279cd5d9ad54ad4a58`

```dockerfile
```

-	Layers:
	-	`sha256:2fb2bf06fdad29c7f3ab33f8a3cac1d5e13e58009de9c317dc6bcd8dabdcd7e9`  
		Last Modified: Tue, 25 Aug 2026 00:18:36 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json
