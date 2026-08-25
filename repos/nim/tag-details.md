<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nim`

-	[`nim:2`](#nim2)
-	[`nim:2.0`](#nim20)
-	[`nim:2.0.0`](#nim200)
-	[`nim:2.0.10`](#nim2010)
-	[`nim:2.0.12`](#nim2012)
-	[`nim:2.0.14`](#nim2014)
-	[`nim:2.0.2`](#nim202)
-	[`nim:2.0.4`](#nim204)
-	[`nim:2.0.6`](#nim206)
-	[`nim:2.0.8`](#nim208)
-	[`nim:2.2`](#nim22)
-	[`nim:2.2.0`](#nim220)
-	[`nim:2.2.10`](#nim2210)
-	[`nim:2.2.2`](#nim222)
-	[`nim:2.2.4`](#nim224)
-	[`nim:2.2.6`](#nim226)
-	[`nim:2.2.8`](#nim228)
-	[`nim:latest`](#nimlatest)

## `nim:2`

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

### `nim:2` - linux; amd64

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

### `nim:2` - unknown; unknown

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

### `nim:2` - linux; arm variant v7

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

### `nim:2` - unknown; unknown

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

### `nim:2` - linux; arm64 variant v8

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

### `nim:2` - unknown; unknown

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

### `nim:2` - linux; 386

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

### `nim:2` - unknown; unknown

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

## `nim:2.0`

```console
$ docker pull nim@sha256:5920d511978a9b0bf77786993888646bfa9e5c1793afc14f0982403a41a4f264
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

### `nim:2.0` - linux; amd64

```console
$ docker pull nim@sha256:afb04acbe3266260988656975e66c50cf0e5da77577e057956a1ee0822c07282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174229383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ea942f9c176a576fe2efee738164cfc8aab95471e2ec5248c16ccc99a0c2f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:28 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:23:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:30 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5af9e492e5c85a51d7af4351a5e1e82d5940366d8ccb129dccf6dd54c329415`  
		Last Modified: Tue, 25 Aug 2026 00:23:48 GMT  
		Size: 119.7 MB (119734588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa5055b5a7cfc6e89f005b7daa7b467e01b77e9f008e6d4ba0f0cfc2de2d06b`  
		Last Modified: Tue, 25 Aug 2026 00:23:46 GMT  
		Size: 26.3 MB (26261976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068ab11a30a90ade08aea0da1826f35762ff71727cefff2206ef5e9fd2e4ca3a`  
		Last Modified: Tue, 25 Aug 2026 00:23:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:46a3958968327f242da4570abd8d67eb05791cd68a3e07e3d237fda265dd91eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1aefa1ff9ab5d707382fb539f57926655053d86e5988b0fa0e83a306930596`

```dockerfile
```

-	Layers:
	-	`sha256:0298ce6806c569e7f6af335b029277191edb6a17c90286721c4f0c17b59f4258`  
		Last Modified: Tue, 25 Aug 2026 00:23:44 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:e6e1237e6438176d2eff7cb54a56a3624808b743954dbc9a6bcea4f8624c5993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139374561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cccfd2f1477d49f6e84eb08d31b82fb5d6832de00e60334cb79ad4c70cec32`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:26:12 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:26:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:26:36 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:26:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd5ff1d2361d59050545608875a46084cdf7761f0acfd253e72fc19b905f37`  
		Last Modified: Tue, 25 Aug 2026 00:26:28 GMT  
		Size: 89.2 MB (89200399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7051ef27ed5de5cf6d24d57d219f1666b719a3ffb1d3cbd591eb9fb2c14b127`  
		Last Modified: Tue, 25 Aug 2026 00:26:44 GMT  
		Size: 26.2 MB (26234153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15362f935fce058ab94b1559e42e6a9ed61d166891d81172b762dc9f39f748f2`  
		Last Modified: Tue, 25 Aug 2026 00:26:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:93d4f45b9ccd43cb50f74588e127dc641bdf4a16b906fab5929ac74242961151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1753487766b7fe5b0196744b06baa8c1624389167eb8a1428899832153c6d96`

```dockerfile
```

-	Layers:
	-	`sha256:1d27cffd9cd3a078aa0a72743d4e98c20eb7386104a63563a1776d1e4e3bce65`  
		Last Modified: Tue, 25 Aug 2026 00:26:43 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:41471757e119fb8e5d9e4c4aaafb0b169a2dfb3a7e334741fe82c4a284025a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167539956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae62dcfc2655a88b1447433813dcb510d09c22e25fce889154ccf42e2df2de2d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:01 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:23:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:01 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:03 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2002bf207b4c3739c6d48be4f51e8bf58841563797dbf7675c1f29e66d889f4f`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 113.8 MB (113822784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bf6e51d60fd6f44dbfb54dc09828f480e4a062fe7c88f5239609db45fe7a9a`  
		Last Modified: Tue, 25 Aug 2026 00:23:18 GMT  
		Size: 25.6 MB (25599718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487147d807cbbaf7a0074416f9bdc1edf3213b0a8bf244ac4d201a81f04a78c7`  
		Last Modified: Tue, 25 Aug 2026 00:23:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:25af4f17d8f1a143652fc0b09919347462fbf37d874278c431921c456bd2e1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d723ca6b8df3f8802bc660254df689ad0e324657a2fd8305381233d40771b6e`

```dockerfile
```

-	Layers:
	-	`sha256:75d6e0997716c09894ddcfd3c2495384dd7998384e35d4b1b1cf4b38157b5dd0`  
		Last Modified: Tue, 25 Aug 2026 00:23:17 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; 386

```console
$ docker pull nim@sha256:4ce6393fa713540c0d1fb56a33bb83618689c43b8063b6208c190dd62116e1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175518338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbe5b3a8085c12cc8e6fb98ded642943ad76b831120fea698453cc669758514`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:44 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2698e3209384b31dbe55f5fd6cb3d309a1fa5fa78a51fcb26bd363417002099`  
		Last Modified: Tue, 25 Aug 2026 00:18:35 GMT  
		Size: 118.7 MB (118732673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78a2b221bd89b6c7d6f57eb48f5cf82357aaa6022ee3c3a3313bf00e6d40fd5`  
		Last Modified: Tue, 25 Aug 2026 00:18:52 GMT  
		Size: 27.6 MB (27564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca85f70493ba0ef2e6322c03418bdf0dd48fa61d1b74a661a39eea7b67bd40dc`  
		Last Modified: Tue, 25 Aug 2026 00:18:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:cb6544f5eb152f61bd9c932c7a57a85dee7b5e609c54cf74265084cf9f8a89ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349579278ccb9de0e0bd1db027cd15fb67d7293e859a6d4fc877ed6540cbbe99`

```dockerfile
```

-	Layers:
	-	`sha256:56cfc7039a45b780dd0973ee4c2d788a74e92a5c80325140d767df5bc9249753`  
		Last Modified: Tue, 25 Aug 2026 00:18:51 GMT  
		Size: 13.8 KB (13849 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.0`

```console
$ docker pull nim@sha256:ef6b5a7fa637fe94cbe06b25f78b652e2d960187455661aa2295e7c67da40965
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

### `nim:2.0.0` - linux; amd64

```console
$ docker pull nim@sha256:9a8d53713a834c64627fb2ad4bce592ab8299a9246aed94271ade2401f04b9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173287910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa299afc0836c9f8952517c3dfa835f4cf1e06daf03e97e8521be73162d8459`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:55 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:55 GMT
ENV NIM_VERSION=2.0.0
# Tue, 25 Aug 2026 00:22:55 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:55 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:39 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:39 GMT
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
	-	`sha256:168a772d2719cc86e086c8dbe7d95a40f0b1b37382547ad6b92641357dbe2bcf`  
		Last Modified: Tue, 25 Aug 2026 00:23:47 GMT  
		Size: 25.3 MB (25320646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6a2bdce5014e3e3400f1080ab2c00a7629b776a0ee502126559ef9725b7021`  
		Last Modified: Tue, 25 Aug 2026 00:23:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:3322c161aef8b1566882f85c6a66d5d255f4b6e6a8c38d8a0a4fc4cf19dd963e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd35d7b6f7fe6620f8e522bc8b684e09d0d16eaaf1ebe294f7f9320af587f69`

```dockerfile
```

-	Layers:
	-	`sha256:f39e8bcb0e2096587ec0a0542c2026df0455166b191ea6175b781689541f23a8`  
		Last Modified: Tue, 25 Aug 2026 00:23:46 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:b3e063f8648ae33ac1a3fc581fcab8d1ebe42b51b897f541364a7b3acff7e775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138383016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d18005b1d26ddc960ac4995ffc54c709ff3c10c529e93be8629b7a514d9369`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:29:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:29:12 GMT
ENV NIM_VERSION=2.0.0
# Tue, 25 Aug 2026 00:29:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:29:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:29:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:29:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:29:37 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:29:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e47b6281da79d355c124d07b408288edafe5c3b6156857be8e6cf10f472e8e`  
		Last Modified: Tue, 25 Aug 2026 00:29:28 GMT  
		Size: 89.2 MB (89200320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f8424efafb7714e969d906e5947cc4fe3612fba4f7d91585fb6cc914bc4db`  
		Last Modified: Tue, 25 Aug 2026 00:29:45 GMT  
		Size: 25.2 MB (25242688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b5c65605ca5e489684775a7c9b2609a6bba62c076392b5e7f3ab893bb471d1`  
		Last Modified: Tue, 25 Aug 2026 00:29:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:f1d0bcaa455ffb258050ebccf14dd784ae3b7e6cfc9065981f72fab32249525d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e74a865b1105221897002244dcd79507534aaa319395f903274d4cabf70e08`

```dockerfile
```

-	Layers:
	-	`sha256:72cdf0afcb7efafa53ca54a42301ae9e7b4e833ca29ed8e15550444fd2304868`  
		Last Modified: Tue, 25 Aug 2026 00:29:44 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:15eb3b80bafd68e5ed2bad70b70a739554e47d908ccdbcb9069f3cc12ff8a5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166641602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bec8c690d2dcd6330a003dc21eed354ed58c8539c651d0641b7933c40f7ec6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:48 GMT
ENV NIM_VERSION=2.0.0
# Tue, 25 Aug 2026 00:22:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:16 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:16 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803afef0957f65069a1f24c013774cdd78da76e1c9318391192e9943e4901042`  
		Last Modified: Tue, 25 Aug 2026 00:23:08 GMT  
		Size: 113.8 MB (113823041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f17053ef1eed7f4c470ba2ad289f1d58ef5ea5e6c75ed2cfb803fbc5121727e`  
		Last Modified: Tue, 25 Aug 2026 00:23:23 GMT  
		Size: 24.7 MB (24701107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441dc426ef58f299db9222892edd24a778d5ff09ae35236492b54b58d845ce1c`  
		Last Modified: Tue, 25 Aug 2026 00:23:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:e82289ada9f10ed0cb8d189b3f834274076e6388cee78698aed1f426066e4279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6393b66dd22c43ede302abeebd9cbe8a1f728393378b577d7808e5c3b91941`

```dockerfile
```

-	Layers:
	-	`sha256:3c20bdfbd65a810bb7039f42a0ee2b9ed2fde77c3d23309fd453853aa887fcc0`  
		Last Modified: Tue, 25 Aug 2026 00:23:22 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; 386

```console
$ docker pull nim@sha256:27ce466500ebdcb770b2e62e790028dbd5b8c91015f038328ed7b2a7e9c47521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174466648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0986948b8dafc99d3ac1d7016414f8077c125a1c284c0901a4d5449eea94d9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:43 GMT
ENV NIM_VERSION=2.0.0
# Tue, 25 Aug 2026 00:18:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:43 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:19:13 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:19:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6435ca268b877ef9f461ffd85c88a9baa95e7539d6fa6f1e4c9df51da42a92ba`  
		Last Modified: Tue, 25 Aug 2026 00:19:05 GMT  
		Size: 118.7 MB (118732414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab71313a8fdc9e70da7e4ef11035bc9a48c1148ca965dd84fd9c9f79facd5deb`  
		Last Modified: Tue, 25 Aug 2026 00:19:21 GMT  
		Size: 26.5 MB (26513018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a357aea844012a58d70c9977107ca4119c363f827ff2eff9bbd6699847fb11e8`  
		Last Modified: Tue, 25 Aug 2026 00:19:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:1f90cddf302a08a40eb87932767d64b97bb885f7d222fb0489ca95f2b90f7756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4604696934a438e5c1da85eeffcb7701c19e79b3c9f5325985d5b6001d9e9`

```dockerfile
```

-	Layers:
	-	`sha256:dd019853f322b6cb70945cdeb7af7322df912e72d14824af66ea8efd0ef75bc0`  
		Last Modified: Tue, 25 Aug 2026 00:19:20 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.10`

```console
$ docker pull nim@sha256:3e6e2b158edc9134ab7e6514f2f4e31a0a60658197ede8dab2b6f8cfabba3265
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

### `nim:2.0.10` - linux; amd64

```console
$ docker pull nim@sha256:5a914e34b961b954ace15b52055371bbf3167adb7ee626c3ca426d45e6df8b1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174069139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f1aa5a666b558d4011942191ff74c244ab6c22eb169551eaae84374dfda2eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:35 GMT
ENV NIM_VERSION=2.0.10
# Tue, 25 Aug 2026 00:23:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:35 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a042c9cc37bfe43f4c5329ffeef3d036ddcec297a069cc960a36073339e77c`  
		Last Modified: Tue, 25 Aug 2026 00:23:55 GMT  
		Size: 119.7 MB (119735507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d3139b929ae8b701ce7fead41597c7f71bf8b9e473f2dd320fd9897db8937a`  
		Last Modified: Tue, 25 Aug 2026 00:23:53 GMT  
		Size: 26.1 MB (26100813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1bf1b95dcd44974b2cc7488ca8a04256bdbc00db21f764a0bcc307df94df2c2`  
		Last Modified: Tue, 25 Aug 2026 00:23:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:a1fb700da6217cea7a4082750b5b1db213431b4977de5648576832c5955b46d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864ed30759380b9bcde9123db4cfb738d9bfe065a591864b9d86e4fb8f487a2c`

```dockerfile
```

-	Layers:
	-	`sha256:5cea94c2abf94b43399d955e4420d5224424515c2a65d41ae4aad1221eb70b10`  
		Last Modified: Tue, 25 Aug 2026 00:23:51 GMT  
		Size: 13.6 KB (13588 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; arm variant v7

```console
$ docker pull nim@sha256:3207ffd757df9ba38f4b3180084d81f2a34f7800ce01913326144024b2bbe1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139203747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93f3a9b89124a5392e5fb0efc2250aeed9fcc9558f7079a6d7cab294d84e543`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:26:12 GMT
ENV NIM_VERSION=2.0.10
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:26:52 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:26:52 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:26:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd5ff1d2361d59050545608875a46084cdf7761f0acfd253e72fc19b905f37`  
		Last Modified: Tue, 25 Aug 2026 00:26:28 GMT  
		Size: 89.2 MB (89200399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4d67a8b75d0f9b046ee0f83ef0820390034264a55977c38fbc4ca4c426dfb2`  
		Last Modified: Tue, 25 Aug 2026 00:27:00 GMT  
		Size: 26.1 MB (26063340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852348373a0d1b6f4ba7168fe60ad7aa3407cf1ccdaf137df47ea38a0ccba3a`  
		Last Modified: Tue, 25 Aug 2026 00:26:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:6228e27752869716af36ab3120e488072bc10c4867f0c87371b3eb5cb94db29b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83cbd6db3354c866cc806845f7539f9f7bda382328cca91de7e1dce253028d0d`

```dockerfile
```

-	Layers:
	-	`sha256:d38dff52a5e6314bdd0b6be8f038296e65c246bc0e426fa76a0c3d22cf8f07cd`  
		Last Modified: Tue, 25 Aug 2026 00:26:59 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:9cea56ec872c05ec5b4f51d2e3a5cc395a617b5be523412292fd00d7162d978a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167383247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d7597adb939a2638e9c4dc093894133e11386f1f336b0ea301f9a96f3c723b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:07 GMT
ENV NIM_VERSION=2.0.10
# Tue, 25 Aug 2026 00:23:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:09 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:09 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0766f340c39e01273733009621a6b5a7f79c93c6abb1b66e228bbd1f1d73f7`  
		Last Modified: Tue, 25 Aug 2026 00:23:28 GMT  
		Size: 113.8 MB (113822753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e8a5a1d544a12bfb91de536c382c3a0de24ba74e24b776c31a2f47823b7084`  
		Last Modified: Tue, 25 Aug 2026 00:23:26 GMT  
		Size: 25.4 MB (25443041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d5b6c0819fd16f6399adae0f24383f8a0169a59b425447b5f9cc0f3c1b13fd`  
		Last Modified: Tue, 25 Aug 2026 00:23:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:cf5232859d171f22e27d15c62b0007e2d5df772ef732863d9699bafb677c3d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db77d37925c154ff85a74d10abaa51634de6671982dd2ab5dc0427ed8f9c559`

```dockerfile
```

-	Layers:
	-	`sha256:92bb370d3a6ca4eea0fb54f428f0441d6c066b15eecc32bbcb249c9c8170b5bb`  
		Last Modified: Tue, 25 Aug 2026 00:23:24 GMT  
		Size: 13.7 KB (13671 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; 386

```console
$ docker pull nim@sha256:4c1777351d19ca362ab7740a86a3e12f270ec6db27abaafba119abf7c5feb88b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175339675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca4133e82f789cdae4bf77f50a71cf795fb3247487f9d394a481f76ac329772`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:28 GMT
ENV NIM_VERSION=2.0.10
# Tue, 25 Aug 2026 00:18:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:58 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:58 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b760cb71d073a6c3e2bda8f1ebd19c83d946952cf7c57a29fd74e59b11486bd`  
		Last Modified: Tue, 25 Aug 2026 00:18:50 GMT  
		Size: 118.7 MB (118732275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f69009213407ca23768c87669b3a752b46e5133f7f534ea63749a3e42daae33`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 27.4 MB (27386183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5240b9d5c5e5bc15a650ee9103295617a5fd5ae64288ee1e7af30e866a3f6c78`  
		Last Modified: Tue, 25 Aug 2026 00:19:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:e7a829866773bcf44aca0fb6ae2f9a9409fc3100812494caabe2a2b8fd691d5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef6886fdd3b47d7ec7b598c85f88faf0da480c26e4f6976a346b88dc23c69b2`

```dockerfile
```

-	Layers:
	-	`sha256:a8c3ad726b96ff86b3e6af7b7e2d2859b934ce3fc598bb8259d196b1053c696f`  
		Last Modified: Tue, 25 Aug 2026 00:19:05 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.12`

```console
$ docker pull nim@sha256:9b9a570b850452b6d838b502dd8552473ca45cbc9d00c37c1c23673e233d9cc1
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

### `nim:2.0.12` - linux; amd64

```console
$ docker pull nim@sha256:0460855bce5e4d9f2a4acea4428a296607f52134880cb47651c7747b2fb7d4d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174083392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339227aa837116a468fe19e4aa45a4738d3df50846cdd4b28492b7a3298bbd5e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:31 GMT
ENV NIM_VERSION=2.0.12
# Tue, 25 Aug 2026 00:23:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:31 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:33 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12411f068ffcd51e54becdd57883cc45ce309551ec4260100ce811e2a4867522`  
		Last Modified: Tue, 25 Aug 2026 00:23:50 GMT  
		Size: 119.7 MB (119734366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c2ea0b63a250cadbb5aa2a9e89685cc36e786ac871cdc3e73aca2dfffc6044`  
		Last Modified: Tue, 25 Aug 2026 00:23:48 GMT  
		Size: 26.1 MB (26116207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57422f66e242a336a90163d2a9c574a344deac864b6e98d1f6088f93b92d77d6`  
		Last Modified: Tue, 25 Aug 2026 00:23:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:a1a9cff8754b166124d3a113fa63a6b9139e47f03239dc69aedce2963c7f2b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79854b472e5cc6ba2ea2b3f4b7fb5da1e9c247b1f0930a5f9ad42b9811a46f61`

```dockerfile
```

-	Layers:
	-	`sha256:2e075afd1eff9f4445c0a88437799e0fd0d9db712b54e6616d2889f5a48c3f3f`  
		Last Modified: Tue, 25 Aug 2026 00:23:46 GMT  
		Size: 13.6 KB (13587 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; arm variant v7

```console
$ docker pull nim@sha256:433d4f6fa862d4434d629fc0f6dabc03ca7c65bfd3ba917045b3fa13fa7e898b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139223522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f96458e471a5460490cf8cc618ca0b1d4bdf31421177290855dc0a701eafab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:25:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:25:48 GMT
ENV NIM_VERSION=2.0.12
# Tue, 25 Aug 2026 00:25:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:25:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:25:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:49:05 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:49:05 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:49:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2881a5d2be8c59ff4230d02da57a01beb71fe158bb9fcbc27b67d07c0bdc2d9`  
		Last Modified: Tue, 25 Aug 2026 00:26:04 GMT  
		Size: 89.2 MB (89200368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00fdb78035d515f1af4ec68e1ff00ba0878dc246a89d174adb577221499948b`  
		Last Modified: Tue, 25 Aug 2026 00:49:13 GMT  
		Size: 26.1 MB (26083146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017733a12d5c0b166ecdf675390863014aeeacefa01f279750a853edee24f727`  
		Last Modified: Tue, 25 Aug 2026 00:49:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:d3499999f8558d9124e4fb7a6fe02fff154e2104a9b7e45b074b4b534b5e3bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf8d6af8dee6ee1b856b661433dcf82ebdeb45142b87b80aa24ace71b92e35e`

```dockerfile
```

-	Layers:
	-	`sha256:57b8afb62a682dcf92671eb41607cee6fe3dd28e54cd984209d123ebae6d1fbc`  
		Last Modified: Tue, 25 Aug 2026 00:49:12 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:ee0e335b9b059a068837ffec9e1d11325ad3168cb360c74c2b9e66562a95587c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167392516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5788c8f434104484f8a38e9950330b772c7194ce0820bc6325cb1cfdb856bb63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:04 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:04 GMT
ENV NIM_VERSION=2.0.12
# Tue, 25 Aug 2026 00:23:04 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:04 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:04 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:06 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a418cabf2bff679bcd8c7b748ab43113c80fa93138edd8d4b9df0f10cf36dc`  
		Last Modified: Tue, 25 Aug 2026 00:23:25 GMT  
		Size: 113.8 MB (113822843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec78c4f4794ed97baffd97d281c5a656d0044a317b6eedbee01694943add9e4b`  
		Last Modified: Tue, 25 Aug 2026 00:23:23 GMT  
		Size: 25.5 MB (25452220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaccf0bcd47ae4e2eb7b0817908c2d3d1cb12d3946c08293e323259a9cf2409a`  
		Last Modified: Tue, 25 Aug 2026 00:23:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:71dd229222c3a6f8230376f3a477042d99c48de46b1a45810855deabddea4d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dbee870b492059955dd39c2d3280296f93f993089f8e93f3547069826dd83e6`

```dockerfile
```

-	Layers:
	-	`sha256:99a8c203b561a85bf4ff2ba4d4498966d206ca176f14f50488e458197bc90405`  
		Last Modified: Tue, 25 Aug 2026 00:23:22 GMT  
		Size: 13.7 KB (13671 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; 386

```console
$ docker pull nim@sha256:12da7bba22749c02681f0de31b4b843cc369972c95881f94ff182b635cd8b246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175363302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeeed3ee6ec589ec7c67d3a10f37821ef6f8baf3996501e4f89e81509b4fa0f1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:19 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:19 GMT
ENV NIM_VERSION=2.0.12
# Tue, 25 Aug 2026 00:18:19 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:19 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:19 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:47 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:47 GMT
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
	-	`sha256:2da30894d81040de86ee364d60d2203925e57f54d90f3900d34e9a0e2175722f`  
		Last Modified: Tue, 25 Aug 2026 00:18:55 GMT  
		Size: 27.4 MB (27409563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de0ae436520688cff0e9794b03a562eea489c88f5bffc29c7f8b5168186c931`  
		Last Modified: Tue, 25 Aug 2026 00:18:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:7d850e0547c380eca0d782ecb9f5eab4c4ed3ed770d3f8b7056c1fe3563755ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf726fae79bbb8bf17f03e1d4c525d141a21d03da597394aac8257559acc0863`

```dockerfile
```

-	Layers:
	-	`sha256:4dd8e3cc69f42c604c042601c2c150337a44d40dec8980e741e2864ced72fd5a`  
		Last Modified: Tue, 25 Aug 2026 00:18:54 GMT  
		Size: 13.6 KB (13568 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.14`

```console
$ docker pull nim@sha256:5920d511978a9b0bf77786993888646bfa9e5c1793afc14f0982403a41a4f264
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

### `nim:2.0.14` - linux; amd64

```console
$ docker pull nim@sha256:afb04acbe3266260988656975e66c50cf0e5da77577e057956a1ee0822c07282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174229383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ea942f9c176a576fe2efee738164cfc8aab95471e2ec5248c16ccc99a0c2f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:28 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:23:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:30 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5af9e492e5c85a51d7af4351a5e1e82d5940366d8ccb129dccf6dd54c329415`  
		Last Modified: Tue, 25 Aug 2026 00:23:48 GMT  
		Size: 119.7 MB (119734588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa5055b5a7cfc6e89f005b7daa7b467e01b77e9f008e6d4ba0f0cfc2de2d06b`  
		Last Modified: Tue, 25 Aug 2026 00:23:46 GMT  
		Size: 26.3 MB (26261976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068ab11a30a90ade08aea0da1826f35762ff71727cefff2206ef5e9fd2e4ca3a`  
		Last Modified: Tue, 25 Aug 2026 00:23:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:46a3958968327f242da4570abd8d67eb05791cd68a3e07e3d237fda265dd91eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1aefa1ff9ab5d707382fb539f57926655053d86e5988b0fa0e83a306930596`

```dockerfile
```

-	Layers:
	-	`sha256:0298ce6806c569e7f6af335b029277191edb6a17c90286721c4f0c17b59f4258`  
		Last Modified: Tue, 25 Aug 2026 00:23:44 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:e6e1237e6438176d2eff7cb54a56a3624808b743954dbc9a6bcea4f8624c5993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139374561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cccfd2f1477d49f6e84eb08d31b82fb5d6832de00e60334cb79ad4c70cec32`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:26:12 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:26:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:26:36 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:26:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd5ff1d2361d59050545608875a46084cdf7761f0acfd253e72fc19b905f37`  
		Last Modified: Tue, 25 Aug 2026 00:26:28 GMT  
		Size: 89.2 MB (89200399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7051ef27ed5de5cf6d24d57d219f1666b719a3ffb1d3cbd591eb9fb2c14b127`  
		Last Modified: Tue, 25 Aug 2026 00:26:44 GMT  
		Size: 26.2 MB (26234153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15362f935fce058ab94b1559e42e6a9ed61d166891d81172b762dc9f39f748f2`  
		Last Modified: Tue, 25 Aug 2026 00:26:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:93d4f45b9ccd43cb50f74588e127dc641bdf4a16b906fab5929ac74242961151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1753487766b7fe5b0196744b06baa8c1624389167eb8a1428899832153c6d96`

```dockerfile
```

-	Layers:
	-	`sha256:1d27cffd9cd3a078aa0a72743d4e98c20eb7386104a63563a1776d1e4e3bce65`  
		Last Modified: Tue, 25 Aug 2026 00:26:43 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:41471757e119fb8e5d9e4c4aaafb0b169a2dfb3a7e334741fe82c4a284025a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167539956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae62dcfc2655a88b1447433813dcb510d09c22e25fce889154ccf42e2df2de2d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:01 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:23:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:01 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:03 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2002bf207b4c3739c6d48be4f51e8bf58841563797dbf7675c1f29e66d889f4f`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 113.8 MB (113822784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bf6e51d60fd6f44dbfb54dc09828f480e4a062fe7c88f5239609db45fe7a9a`  
		Last Modified: Tue, 25 Aug 2026 00:23:18 GMT  
		Size: 25.6 MB (25599718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487147d807cbbaf7a0074416f9bdc1edf3213b0a8bf244ac4d201a81f04a78c7`  
		Last Modified: Tue, 25 Aug 2026 00:23:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:25af4f17d8f1a143652fc0b09919347462fbf37d874278c431921c456bd2e1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d723ca6b8df3f8802bc660254df689ad0e324657a2fd8305381233d40771b6e`

```dockerfile
```

-	Layers:
	-	`sha256:75d6e0997716c09894ddcfd3c2495384dd7998384e35d4b1b1cf4b38157b5dd0`  
		Last Modified: Tue, 25 Aug 2026 00:23:17 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; 386

```console
$ docker pull nim@sha256:4ce6393fa713540c0d1fb56a33bb83618689c43b8063b6208c190dd62116e1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175518338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbe5b3a8085c12cc8e6fb98ded642943ad76b831120fea698453cc669758514`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV NIM_VERSION=2.0.14
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:44 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2698e3209384b31dbe55f5fd6cb3d309a1fa5fa78a51fcb26bd363417002099`  
		Last Modified: Tue, 25 Aug 2026 00:18:35 GMT  
		Size: 118.7 MB (118732673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78a2b221bd89b6c7d6f57eb48f5cf82357aaa6022ee3c3a3313bf00e6d40fd5`  
		Last Modified: Tue, 25 Aug 2026 00:18:52 GMT  
		Size: 27.6 MB (27564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca85f70493ba0ef2e6322c03418bdf0dd48fa61d1b74a661a39eea7b67bd40dc`  
		Last Modified: Tue, 25 Aug 2026 00:18:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:cb6544f5eb152f61bd9c932c7a57a85dee7b5e609c54cf74265084cf9f8a89ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349579278ccb9de0e0bd1db027cd15fb67d7293e859a6d4fc877ed6540cbbe99`

```dockerfile
```

-	Layers:
	-	`sha256:56cfc7039a45b780dd0973ee4c2d788a74e92a5c80325140d767df5bc9249753`  
		Last Modified: Tue, 25 Aug 2026 00:18:51 GMT  
		Size: 13.8 KB (13849 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.2`

```console
$ docker pull nim@sha256:761c0c9097632caf104a9047e8e45707f46e7492f29db748998c518cacfda37a
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

### `nim:2.0.2` - linux; amd64

```console
$ docker pull nim@sha256:0a9c38572e982d551274d8d3f1be2c4368acefa18d2d8a883bae54ba67a14315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173343894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00cd6b34ea83086705306f10ef1c47195b5cabc5c9bb3be0ddff6ac9c28bc45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:06 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:06 GMT
ENV NIM_VERSION=2.0.2
# Tue, 25 Aug 2026 00:23:06 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:06 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:06 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:33 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53da44a9bbf87b48f12040da29f3a4778a36615b485b5da238fa87f9dd68045b`  
		Last Modified: Tue, 25 Aug 2026 00:23:25 GMT  
		Size: 119.7 MB (119734624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3c579615dc2e757372c5e13b9326ea4093e6730d9864983b31469303a7d97`  
		Last Modified: Tue, 25 Aug 2026 00:23:41 GMT  
		Size: 25.4 MB (25376451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0444c3b3b6fadbe0cd543c0b5da2080c33379f4a73eb50531642c47cdf94bf3`  
		Last Modified: Tue, 25 Aug 2026 00:23:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:647cbe540d6ca33a21828e0a143a3998ed5799822046ee468e8075702c59479e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31015a6d212000086233364f0a4ba629386b347cb45541846805e6ee5dfbec69`

```dockerfile
```

-	Layers:
	-	`sha256:aa320675bc55457bcbec6863ab96c1a9d46bb5e3604406f99291dba30ebb4510`  
		Last Modified: Tue, 25 Aug 2026 00:23:40 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:10635f9dbcc32f39068f9655959100aebaf8ad3bbaf3e7d8f9fe5adfedcd7d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138433463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae25afff8cfd246359626fd0e3f7ba5223073e76b3ae8997902c8ffa4314ded`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:29:47 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:29:47 GMT
ENV NIM_VERSION=2.0.2
# Tue, 25 Aug 2026 00:29:47 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:29:47 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:29:47 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:29:49 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:29:49 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:29:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a7dcb2b28ef679518c165a27be61b5e4ced007dbf52b6fa1ef563169861c3`  
		Last Modified: Tue, 25 Aug 2026 00:30:03 GMT  
		Size: 89.2 MB (89200402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f73e57e0590d27cd737cb60acb3d4e198fbca724379d7ef4dcf9030c70e5e2f`  
		Last Modified: Tue, 25 Aug 2026 00:30:02 GMT  
		Size: 25.3 MB (25293052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c404dfcbe58f13ff9b8d3bcf1bfa1e82ebd18c1cda6f892c86f03e7979b17480`  
		Last Modified: Tue, 25 Aug 2026 00:30:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:b0f9dd5acbe3c70203e2a8a7f7b0c528090730e78627b69a8fbda2fc3e020cd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4af68af8c5b7bd5ed477dbd429fe6c0611351e3d331c5b81570fb223e2354017`

```dockerfile
```

-	Layers:
	-	`sha256:61242d7af4605c04dc7aa531efd5bc8f21143a699819140cbb8de12a84d48513`  
		Last Modified: Tue, 25 Aug 2026 00:30:00 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:4002a416d66498dfa5310e743805bffa10ea9d7c950244491634c37b7bfc9ce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166709075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c01b02cdd2857d26f3a190835f6b82f6c1139a11c5519cbd2dbdf18047c5f9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:26 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:26 GMT
ENV NIM_VERSION=2.0.2
# Tue, 25 Aug 2026 00:23:26 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:26 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:26 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:28 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a0be90d834cc46b167b9d61c8c11872fb8342a4592356de553c0894a5393fe`  
		Last Modified: Tue, 25 Aug 2026 00:23:45 GMT  
		Size: 113.8 MB (113822864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526e8891176b0aeb3a61811124231bbd9aa0472bcc317fe737cf73732fa11b1`  
		Last Modified: Tue, 25 Aug 2026 00:23:43 GMT  
		Size: 24.8 MB (24768761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa891679490ad69245ccb9559b899698f05b8fa2593f99522028dc4c2f27b4a`  
		Last Modified: Tue, 25 Aug 2026 00:23:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:a9ff17ebb84ab7e0a6a629e8f2169d1cc28416d6f263044efd9fd1d01c17f121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862fc6f08cb3ae9d11c8a5ec9819822e76930d83b803d0ee3ac78cd7ffed6e88`

```dockerfile
```

-	Layers:
	-	`sha256:2a9178a69a3a667b93b8b3ca804a669dc279e082f359933a58d6e6c594c83885`  
		Last Modified: Tue, 25 Aug 2026 00:23:42 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; 386

```console
$ docker pull nim@sha256:5ca14d50287c39ec83c3de891cf3e9daa243d72f38bf543bfe23d7d97079640f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174513161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02c5d66d1637af54ea8041c2e4b9d1913401d016b95bcb6059e831d06248ca2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV NIM_VERSION=2.0.2
# Tue, 25 Aug 2026 00:18:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:42 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:19:11 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:19:12 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:19:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2239fa0fb893271e0145ddc230d9dac1089f1018de1310aec9c70bd12969fb2d`  
		Last Modified: Tue, 25 Aug 2026 00:19:03 GMT  
		Size: 118.7 MB (118732411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab41073a4772b20950e371117c0835a59d385b7969352f94b6dc6a1ed4003b8`  
		Last Modified: Tue, 25 Aug 2026 00:19:19 GMT  
		Size: 26.6 MB (26559534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f0c409377a5c325bb6fead144b2cdc992e7662a6db7fae15b8ac5677afe8d3`  
		Last Modified: Tue, 25 Aug 2026 00:19:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:f7acc863771c0feb9e76414e7e6698eca7687c00e6d9264a5ac8d7073393cfcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee51b75c1102e5167736df7b3baec19d1ed858684dfb88492794a1e65edaea8`

```dockerfile
```

-	Layers:
	-	`sha256:d4d413c54b843e2fdc1aad7b6a8f8e34cada64becc11e4f01b21f5c9fb91d23d`  
		Last Modified: Tue, 25 Aug 2026 00:19:19 GMT  
		Size: 13.6 KB (13550 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.4`

```console
$ docker pull nim@sha256:508fe4c7f0e802848ff13be297a9e2ab30a099d5e957db5f9fe4ae3fa613c846
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

### `nim:2.0.4` - linux; amd64

```console
$ docker pull nim@sha256:021434a705231669dcad6b571d09726f2f77976450239d0e6d07aac19d06c58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173372306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed019af1bc6069083f674dfd9a4cd9d1e00493f3ddbadc4ff362e7bde8708f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:57 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:57 GMT
ENV NIM_VERSION=2.0.4
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:28 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d433012409060827eee2136d0e7a2c7962960e1f46f5d44e09d8d94c0f54fe`  
		Last Modified: Tue, 25 Aug 2026 00:23:19 GMT  
		Size: 119.7 MB (119734374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d35cf776555e46eb9099db2ae76b4688be8cb7ead8c2e571e2d5e237d83c001`  
		Last Modified: Tue, 25 Aug 2026 00:23:35 GMT  
		Size: 25.4 MB (25405116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa891679490ad69245ccb9559b899698f05b8fa2593f99522028dc4c2f27b4a`  
		Last Modified: Tue, 25 Aug 2026 00:23:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:69e84a7c0d78f2351f9b85a3aeacb6ea5bd2aee9401f8e961a2ccb1a71deb708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1c3e1d86c7fb2680a81874806fbce2b1afff6f9221d2c93e46ebeb5639acd6`

```dockerfile
```

-	Layers:
	-	`sha256:88f84806b223d3656df849a3767f62c53926317989e7a89a2e1c604cb5724c11`  
		Last Modified: Tue, 25 Aug 2026 00:23:35 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; arm variant v7

```console
$ docker pull nim@sha256:e195c9335c822004473d7007f4664014afe0fb0a2e98d832ff53d4bd151ec815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138469972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c039a18cb985a6f775ef6e538dd01928f16e7c310e833dc7b8fec3d15d237cab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:29:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:29:12 GMT
ENV NIM_VERSION=2.0.4
# Tue, 25 Aug 2026 00:29:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:29:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:29:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:29:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:29:14 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:29:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e47b6281da79d355c124d07b408288edafe5c3b6156857be8e6cf10f472e8e`  
		Last Modified: Tue, 25 Aug 2026 00:29:28 GMT  
		Size: 89.2 MB (89200320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e387d454cf0a850733b6abb962fbe8bfd73fac602e4ba07c77e3404a362c066d`  
		Last Modified: Tue, 25 Aug 2026 00:29:27 GMT  
		Size: 25.3 MB (25329643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefe22e3801385454cf09c63a7a24fc9221ccfe202bf35ffa609c0d6243ce045`  
		Last Modified: Tue, 25 Aug 2026 00:29:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:ce6336eb5aebd55f9d9d2a1fe0a3d2a6ecc18ee6667b17a094f52a283abb2cd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993292196a8de7cb27d9fdf4841f7586fe115f4d5a1ab0288383aab79d77014d`

```dockerfile
```

-	Layers:
	-	`sha256:19de4b1959959b297e5a7c1a6167b3aa2dfbf31cb274530883ee40eee1c557fa`  
		Last Modified: Tue, 25 Aug 2026 00:29:26 GMT  
		Size: 13.6 KB (13634 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:3624848228b40e229a1206e8992d0f02f3313c4aa6e7b1b82e52c23fb40795c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166744394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcef55cece2492b5836de014807b7bf9a0d43b5393bdedc6fbcd2fdb51ee4d7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:42 GMT
ENV NIM_VERSION=2.0.4
# Tue, 25 Aug 2026 00:22:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:42 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689d059cbc722a7abf1b84de4df2a7c421a61990b22b8d21a03a0d9004abc12b`  
		Last Modified: Tue, 25 Aug 2026 00:23:00 GMT  
		Size: 113.8 MB (113822771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71533412efbd65f46dddd570c471bd14771385bc7c0831df373c956a83096c1c`  
		Last Modified: Tue, 25 Aug 2026 00:23:15 GMT  
		Size: 24.8 MB (24804170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7522ba4106e6f40b585b8c198eb3199f9517885c51b8fccd2da27c806f1670`  
		Last Modified: Tue, 25 Aug 2026 00:23:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:7740bdf13762f3fc28e2b95590a16835cd0c53d0154c207e038475e7a904e795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e551634a672b8606af538114e1f384e2a26cd71b1dcce4269b57dae787de2e`

```dockerfile
```

-	Layers:
	-	`sha256:753f9e5a51eb7617145eab6ec06c604c0986ad3805324bf019a33ad86f7cde6d`  
		Last Modified: Tue, 25 Aug 2026 00:23:14 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; 386

```console
$ docker pull nim@sha256:aaec37b8e85ca8aaa2b427b41ad9a8b99ac6ad80a499543a4b3a241134f6e9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174551129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da976465dfae9fd2f079404ec66733fbfac461a380f6c9c3ef9b42c44d40842`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:19:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:19:26 GMT
ENV NIM_VERSION=2.0.4
# Tue, 25 Aug 2026 00:19:26 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:19:26 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:19:26 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:19:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:19:28 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:19:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d34d67e17241f068b502674405d9fd00d3922ce96307c614ebf61c759bfb7b7`  
		Last Modified: Tue, 25 Aug 2026 00:19:47 GMT  
		Size: 118.7 MB (118732443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9c748f61d1dbe407cbac92471597835e8e70c1abe1f5493046408d0039ce0d`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 26.6 MB (26597470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c12c9b5066730d8f48b2d1a7762deb8585d4a3c2bb7ae529f48703939376840`  
		Last Modified: Tue, 25 Aug 2026 00:19:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:ea5cd175f38cff3945387e59ff37e8526f5a449484fd6f2ecf99df6e564da626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d80bc40477fb15dfe8c9a8b5d9e69ebc1cd866aa02e417bae293b3de37ac852`

```dockerfile
```

-	Layers:
	-	`sha256:787766b970892209f0348066bbb12cab576acf7c5471eb2d0b097774394df418`  
		Last Modified: Tue, 25 Aug 2026 00:19:44 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.6`

```console
$ docker pull nim@sha256:e8947b949d0bbf1fec5cbe24a65beef4cc6218c4f42851fe4499468084d5714b
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

### `nim:2.0.6` - linux; amd64

```console
$ docker pull nim@sha256:c7145022a2cc57c1baed2d5ebf58ccd834eaffc23dfc8d1ad6200b7cc079d6a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173902966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d44ce736f0db9dab50c2e456c88a1e0d4c25fde9ce3279b842cd653b517bf99c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:57 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:57 GMT
ENV NIM_VERSION=2.0.6
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:26 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:26 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1ae5e4fa7841164b9b9dcb4605fa7e5fa1a55a1d6075ee2422c332b04de7cd`  
		Last Modified: Tue, 25 Aug 2026 00:23:18 GMT  
		Size: 119.7 MB (119734372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48003ec274edcfa22fceb6bb3f0a620831088c3ca16434f9212988ef606c2e10`  
		Last Modified: Tue, 25 Aug 2026 00:23:34 GMT  
		Size: 25.9 MB (25935775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62197529aee5ededf9ad282d87547250b9d7d438bc342873960f86f707c1452`  
		Last Modified: Tue, 25 Aug 2026 00:23:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:feff43843c4b78645379856db28022a66cf079e57aa10849861d6aa1e56a4413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78d2584b82908510adfdefaa189256eb4a2baef70b6956c11d954b13f005b46`

```dockerfile
```

-	Layers:
	-	`sha256:5f126ace71b1cf8a99c8c06455eb89f48c7a0b678d3899b8914d98891cc45a70`  
		Last Modified: Tue, 25 Aug 2026 00:23:33 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; arm variant v7

```console
$ docker pull nim@sha256:ffdd87743f73d7d9592c2a33a08c48848eb5071b10760669778dada454d0aa1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (138980910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed44849f0b7fc8c4508b3229d5a0bc6cd12094050a3d5c4ee053e1600f61a7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:40 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:40 GMT
ENV NIM_VERSION=2.0.6
# Tue, 25 Aug 2026 00:23:40 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:40 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:40 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:28:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:28:04 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:28:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6596444a2c01477b461dab38b76d922274440e56fc428e031c597966cc1eff2`  
		Last Modified: Tue, 25 Aug 2026 00:23:56 GMT  
		Size: 89.2 MB (89200459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332ac89e3092f1ceb7cd41675eb4c24fbb15db5fea76a80da618496224928f21`  
		Last Modified: Tue, 25 Aug 2026 00:28:11 GMT  
		Size: 25.8 MB (25840443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b3e2406535be1202d98800a2c45a9d26e5d087a5d7f12fc669d0162bcc957a7`  
		Last Modified: Tue, 25 Aug 2026 00:28:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:07a592baf461fb4fa3c58f2ab25d195499223da0b9cdbb6039f3e7e5eaf28dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d330a55f002465e759ad3f1a3f2e6ca494e273fee2fcacd69b21fc37d846c5b`

```dockerfile
```

-	Layers:
	-	`sha256:5df84c647c4cf7e57f51bba5aa6493cdc15fc30faf162567b07cede37bafd42b`  
		Last Modified: Tue, 25 Aug 2026 00:28:11 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:062b406273dceaebe9278aacbccee5798be7d08b7b5c4434f5e5fc5893d54f7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167232039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eac17cbd254213b4aa2b878bdaceed3cecd1c9c60953ba033d04849b8420466`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:40 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:40 GMT
ENV NIM_VERSION=2.0.6
# Tue, 25 Aug 2026 00:22:40 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:40 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:40 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:07 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468debbdfb309c7c004ab7f28868e861c9242696018a528bf461861727168e3b`  
		Last Modified: Tue, 25 Aug 2026 00:22:59 GMT  
		Size: 113.8 MB (113822884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8dd72d220b5aaaaddd95a7502c37901a21abe2515aa58b348828ee2d1ae8e6`  
		Last Modified: Tue, 25 Aug 2026 00:23:15 GMT  
		Size: 25.3 MB (25291702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed3bd98808b94916d2f24dbe4c7c676b25d9ef6ea1956ecbe9b84a7326fae3`  
		Last Modified: Tue, 25 Aug 2026 00:23:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:43fea71f1308be7b74cba337c258980c0c3a9e5577ba00721d21c6cbf5f21001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c061aaa072d266c28f5cf3988dcc1e0a4f9c4067554377227538bea6797951e`

```dockerfile
```

-	Layers:
	-	`sha256:ad0db3f391e16ad9e3db0bf2385e33de19c25774aea22334cb42265f4008aac6`  
		Last Modified: Tue, 25 Aug 2026 00:23:14 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; 386

```console
$ docker pull nim@sha256:0940bcf14cbbba9787182ff8c4220b3628e1bdbe8acd8618c2252a6f2c6f63a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175084271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67cc29ba8b72827ddb798b856186239ea5a65b52a83ed097fd296bd5fbfa4103`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:19 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:19 GMT
ENV NIM_VERSION=2.0.6
# Tue, 25 Aug 2026 00:18:19 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:19 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:19 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:19:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:19:03 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:19:03 GMT
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
	-	`sha256:b88b468a72d155bdfea2f8439e6192365350c28400805bf88dde2c3b3eeb5c0a`  
		Last Modified: Tue, 25 Aug 2026 00:19:11 GMT  
		Size: 27.1 MB (27130531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af6deed5887f7c3127e86c6c09605925f7b66345f9eb95d08af4c23ce92f5e2`  
		Last Modified: Tue, 25 Aug 2026 00:19:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:bee307f8919952dea80eaa300097971241f98ee4451bd360df9b5c8cde14e103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750efda5d6ae97bf1a2155673fdf1cc8157e2b9f64afd4db1d429adee96db4a9`

```dockerfile
```

-	Layers:
	-	`sha256:a9db07852789f05817b8aea6372580fb98d418ba69a0c4531456f01d6ac25682`  
		Last Modified: Tue, 25 Aug 2026 00:19:10 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.8`

```console
$ docker pull nim@sha256:f51f75d6c48e201bfc30cea803eaf876882709ec3d57d10413811b193967b5f9
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

### `nim:2.0.8` - linux; amd64

```console
$ docker pull nim@sha256:9f01b29d48b58631a3dda3ab13442b18f80519ebff277bffe487a1381a918a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173992820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9e551e2826eb698ddf212788986791b34c7886bd16fbe5da4bfb1782bddecf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:55 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:55 GMT
ENV NIM_VERSION=2.0.8
# Tue, 25 Aug 2026 00:22:55 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:55 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:23 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:23 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:23 GMT
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
	-	`sha256:40cc341ac70fcc03317f771f6cdbcf75f899059071a221311227367efcf9758b`  
		Last Modified: Tue, 25 Aug 2026 00:23:31 GMT  
		Size: 26.0 MB (26025556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c5c02e7690a66d4901cf45aba64a79c2d31358c56a0e9069e4acab34174096`  
		Last Modified: Tue, 25 Aug 2026 00:23:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:2351d0fa9bd2c0fd728edb4dfad862e7676ad32b97e034a43c74884be757d8d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d50c12a780e19b46864d4d058796cc8bd7231e01850252f9440a81075199ae`

```dockerfile
```

-	Layers:
	-	`sha256:49eaaec06c4019d6929823775fe851d90e17772c25fd0c35b228135e5976d545`  
		Last Modified: Tue, 25 Aug 2026 00:23:30 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; arm variant v7

```console
$ docker pull nim@sha256:5d2bb936eef2f296e23c7fd14e62bb47fff02a402092b9f7d9416d51e4b21f88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139097876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf10226a1340ede8daa63d3b292f2e769b28b2873766ef8729eaad2284c1a75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:26:12 GMT
ENV NIM_VERSION=2.0.8
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:27:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:27:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:27:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd5ff1d2361d59050545608875a46084cdf7761f0acfd253e72fc19b905f37`  
		Last Modified: Tue, 25 Aug 2026 00:26:28 GMT  
		Size: 89.2 MB (89200399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be0f726db51ada1583ddda816752f01a3333efa94545e0b6a58cca85c6bfca7`  
		Last Modified: Tue, 25 Aug 2026 00:27:16 GMT  
		Size: 26.0 MB (25957468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62dbf4ee9c967a8853ef8b8e7c01e41f72bb89fc23ca20b501ead0a515bcb2a1`  
		Last Modified: Tue, 25 Aug 2026 00:27:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:4c469daee59387eb4a5fa99562e4cb2c4780177056df5b5ad8116d043756265e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1beab2a70dd872c04f678554e015623cd165caadcc3ce13cf5d8fbd97a346484`

```dockerfile
```

-	Layers:
	-	`sha256:9c824c9a7e8f2624c2eecc42cc94e6a14eed14928b9d85a3d92b27572bdeb653`  
		Last Modified: Tue, 25 Aug 2026 00:27:15 GMT  
		Size: 13.6 KB (13633 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:7ab71394bd02a9cda83cb211b31736ad9a2030a56e6e67a22e8dc801a250e4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167329752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6930aa6713ee19639be0d2faf47b5e585fe46877b0ddb7a25c188efc33bb96f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
ENV NIM_VERSION=2.0.8
# Tue, 25 Aug 2026 00:22:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:37 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:06 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:06 GMT
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
	-	`sha256:e8dd8c7523d3945201f1f16ef0f93e303224a081a29b25ee2fa9764fdc444ea6`  
		Last Modified: Tue, 25 Aug 2026 00:23:14 GMT  
		Size: 25.4 MB (25389637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaccf0bcd47ae4e2eb7b0817908c2d3d1cb12d3946c08293e323259a9cf2409a`  
		Last Modified: Tue, 25 Aug 2026 00:23:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:fa0cb664ea03f3de6d357e199180349e1a3fb2855ae839daeccea1cdecc909d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680a5597b089132f628e0111ef3a1468c609c40244ff92d14a8283e635778846`

```dockerfile
```

-	Layers:
	-	`sha256:a9052713a5d5176c1bde90ce1c2bd6aa2969ba7d74e18915a203129f6807afce`  
		Last Modified: Tue, 25 Aug 2026 00:23:13 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; 386

```console
$ docker pull nim@sha256:3fe9962922caf4205406d92a9a4bf435ad4bd65b5cefa147a20cbe50bec34fc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175186759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf73308b2f00f100d0b996556824e242ed1f5add2562ce22c73b97424f38d69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV NIM_VERSION=2.0.8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:19:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:19:00 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:19:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2698e3209384b31dbe55f5fd6cb3d309a1fa5fa78a51fcb26bd363417002099`  
		Last Modified: Tue, 25 Aug 2026 00:18:35 GMT  
		Size: 118.7 MB (118732673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25cb9c49e3cfbea24cdc1c89e9b7e92759e60360a122c4c4a0927a40ef9650f3`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 27.2 MB (27232869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf073eb44b4b4e03eaf9a3e470ecbebd670ad41ce9890b505f1daa1b7ac2c656`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:20e6ed7b393019168ee230c5582f0fc572d450de7ea38d75a3bca903bc57add1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7728a5c028b393af88560efb01b7ba202282541e4473edea48de6b4fc3a242ba`

```dockerfile
```

-	Layers:
	-	`sha256:e31d9744eaf5a1ea3f7ec858deaeb0ff27b5a94f831da020ef5ae8192ef24e17`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

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

### `nim:2.2` - linux; amd64

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

### `nim:2.2` - unknown; unknown

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

### `nim:2.2` - linux; arm variant v7

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

### `nim:2.2` - unknown; unknown

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

### `nim:2.2` - linux; arm64 variant v8

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

### `nim:2.2` - unknown; unknown

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

### `nim:2.2` - linux; 386

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

### `nim:2.2` - unknown; unknown

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

## `nim:2.2.0`

```console
$ docker pull nim@sha256:5e6ca231f4318779c689431426eab871f004234a839c8972378f35d80e64c984
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

### `nim:2.2.0` - linux; amd64

```console
$ docker pull nim@sha256:60c23c9a0b7e4de49930b2e064f3c5001f9dad49ec5c7890f1a072af84d9b2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174860123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f42adba89859b34d457374b4c8f3939a8d11ebe0a1d1732d8148f3e2c13ffd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:18 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:18 GMT
ENV NIM_VERSION=2.2.0
# Tue, 25 Aug 2026 00:23:18 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:18 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:20 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:20 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eea804078651e1c9324c3429693a75763c6a7a404fd88eccabc5b12a6df329b`  
		Last Modified: Tue, 25 Aug 2026 00:23:39 GMT  
		Size: 119.7 MB (119734310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481a05c1c847c8446e3828fd543268437683674c13d3d5462394f9ca60b7ad47`  
		Last Modified: Tue, 25 Aug 2026 00:23:37 GMT  
		Size: 26.9 MB (26892995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546d1234cf1cb1799d4ed8e92e256741b5427bbb814431c0db3ea749a073ba36`  
		Last Modified: Tue, 25 Aug 2026 00:23:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:fd54df58e3c6e42036c2ee4bad511dc405d850fff9697b7e754735605b97f307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba927644b2d70ddfc036781b5691b469ae02cf33a3339aa2358d8af61101a29`

```dockerfile
```

-	Layers:
	-	`sha256:37550935bc04b735cb952c634f7914ba4edf55bf2e7f86ae111bc313fb509053`  
		Last Modified: Tue, 25 Aug 2026 00:23:35 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:c0d29cd0fc667f37afeab43489e1028a0cc15c5cd878906cbcc68f7fefab0ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140061902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ae04c442f578587693f9ab532c939acd5ab8ef438f49620a573250e60471ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:26:12 GMT
ENV NIM_VERSION=2.2.0
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:26:12 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:26:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:26:14 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:26:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd5ff1d2361d59050545608875a46084cdf7761f0acfd253e72fc19b905f37`  
		Last Modified: Tue, 25 Aug 2026 00:26:28 GMT  
		Size: 89.2 MB (89200399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8504fa8f3f0301696ada3fcf226776087dbc110c94932bbe97788a3c76fb2b12`  
		Last Modified: Tue, 25 Aug 2026 00:26:26 GMT  
		Size: 26.9 MB (26921495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24339222d244066032a54d3c547b0ba75a798520d2ae2b0415e442a07be0b4aa`  
		Last Modified: Tue, 25 Aug 2026 00:26:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:1d87ae29adf4fa8b1a380c64cbb5b0eb9f761f254b8de0df055d3fa7088c949a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3017ed08b9e24d2effd9ba6413de49921bc6656cac4b9ffd49f3d06fe895219`

```dockerfile
```

-	Layers:
	-	`sha256:1d1fb4e1343f822ea24c23c1802eceeb8e2eab8596d938add13dfb0eb46d2c22`  
		Last Modified: Tue, 25 Aug 2026 00:26:25 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:1306cb4b82f9a321f8e85d81992ca50df80a631cf6cac83d5fb2351d011615d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168141892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5a134004671fa4dc2873daa5291bc5f071ca99b9e9dac3414f21254d3379b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:53 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:53 GMT
ENV NIM_VERSION=2.2.0
# Tue, 25 Aug 2026 00:22:53 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:53 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:53 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:55 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:55 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd02bb2722204fac077428c58be6a2b012da5627019c1d0168057180eb27dcd`  
		Last Modified: Tue, 25 Aug 2026 00:23:12 GMT  
		Size: 113.8 MB (113822627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7b628a6e797fa9024831972725ba7e75fb3064c890ef93bf0bebb86f696167`  
		Last Modified: Tue, 25 Aug 2026 00:23:10 GMT  
		Size: 26.2 MB (26201812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0262dc78332bca012d56c081850d9138aa6fb1af6f70713d0d003b52bec501`  
		Last Modified: Tue, 25 Aug 2026 00:23:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:b75b35e7dbfac55448734159b35c81fd5a5e74d29b2a4e2f8134d8aa7a52fc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93d41ce5e38e38291b52ba7a57bceeed371ed6e0bb9cdb6223a00ddf07249d8`

```dockerfile
```

-	Layers:
	-	`sha256:3e827664a45741a0e3f6ced8602bd27ad2f891782aa8f37d768162632ad247f1`  
		Last Modified: Tue, 25 Aug 2026 00:23:09 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; 386

```console
$ docker pull nim@sha256:ae357b762b5ff667ee41a84d68288b30d59ace97229b3a8c2f70422a48ea31f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176218335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e47c93785c4c171f945d39387fbac546426c0a835aceeab8ef90708c11c209`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:58 GMT
ENV NIM_VERSION=2.2.0
# Tue, 25 Aug 2026 00:18:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:58 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:19:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:19:01 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:19:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138ae8c42f4ed6adbfa749d09bb5857016886918b80c776d8b135213c0fffc6c`  
		Last Modified: Tue, 25 Aug 2026 00:19:20 GMT  
		Size: 118.7 MB (118732555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1496fa54116e1e33f5648663e565f51b0e5cffe9659d10c7dc0c7c88e1e3426e`  
		Last Modified: Tue, 25 Aug 2026 00:19:18 GMT  
		Size: 28.3 MB (28264563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4f1324e186b619b0507f240cd7dcd455d15e00ca73cde569cd0d9e2ee7ea7f`  
		Last Modified: Tue, 25 Aug 2026 00:19:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:3eef4f2b24645b6023f8cbaf80d22cbdf88a2aa29a5395ffbde4bb52c81ce310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86d39561c3171cc906b3ecefbb74dca41d047d478fdea8a6771a6e1726aeed2`

```dockerfile
```

-	Layers:
	-	`sha256:97cef0c12f2ffbd5f90e2c2fc46aed50f123af5a07bc172f7334a85ff6812c0f`  
		Last Modified: Tue, 25 Aug 2026 00:19:16 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.10`

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

### `nim:2.2.10` - linux; amd64

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

### `nim:2.2.10` - unknown; unknown

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

### `nim:2.2.10` - linux; arm variant v7

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

### `nim:2.2.10` - unknown; unknown

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

### `nim:2.2.10` - linux; arm64 variant v8

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

### `nim:2.2.10` - unknown; unknown

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

### `nim:2.2.10` - linux; 386

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

### `nim:2.2.10` - unknown; unknown

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

## `nim:2.2.2`

```console
$ docker pull nim@sha256:bc7ec14add0c0ed3a117c5aa3567803a85644dc1e8ed1c68add0278cdc681b76
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

### `nim:2.2.2` - linux; amd64

```console
$ docker pull nim@sha256:5340ae4e6af520a25fac74013db760540adca92d147a22c5401405d029ab6a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175245671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232fb26c093548d15d6cdfa9a59a347fadf9659c5908a7c1aab837d93cbd5ab1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:11 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:11 GMT
ENV NIM_VERSION=2.2.2
# Tue, 25 Aug 2026 00:23:11 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:11 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:11 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:13 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc4e5ae239e8623291079368ea91c7b4ae5811b3094dcd61a72b96abac34a24`  
		Last Modified: Tue, 25 Aug 2026 00:23:32 GMT  
		Size: 119.7 MB (119735082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b235798584ab975c6b7768700b3173fd38235666402e7798ec2d07a820399a66`  
		Last Modified: Tue, 25 Aug 2026 00:23:30 GMT  
		Size: 27.3 MB (27277770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb67fcee1e8019abe48d635396129cbd7e1715654d01b954914115b66cc1faea`  
		Last Modified: Tue, 25 Aug 2026 00:23:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:7e01684948b0e1709c4a7d367d1b69012f5c5a28a2af5a5cd01595d94decff53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d8fbe6fb51b445c28c0683e8f7cc7b96e477489d53efd6e822f38e56dd0fbd`

```dockerfile
```

-	Layers:
	-	`sha256:e80220ad87ea12a57913e1a4b35f10624d1189a147a251998b5c7c5087e3375a`  
		Last Modified: Tue, 25 Aug 2026 00:23:29 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:2e80e01a90f229fccdea5de88611f72f7d25f5cbba851486f6daf8d872560161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140455755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f17b668163415408b076aa5d195dfb8ed56663daab080b860dd355c1038cc6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:25:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:25:48 GMT
ENV NIM_VERSION=2.2.2
# Tue, 25 Aug 2026 00:25:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:25:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:25:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:25:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:25:50 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:25:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2881a5d2be8c59ff4230d02da57a01beb71fe158bb9fcbc27b67d07c0bdc2d9`  
		Last Modified: Tue, 25 Aug 2026 00:26:04 GMT  
		Size: 89.2 MB (89200368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c009f6e0bbd2cc9fb26c76cbaa837213cb268be6942207a85024032361d86a1a`  
		Last Modified: Tue, 25 Aug 2026 00:26:02 GMT  
		Size: 27.3 MB (27315378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590ed3357c80fd8f74198bf3677502ab60bac846c94fe349ce5bf3520747340b`  
		Last Modified: Tue, 25 Aug 2026 00:26:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:acd5191e9a34c3d7ceefd71bfcea3d76c32434b91400388ca7f3d5dd4912970d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556dc49879302f8d590210835a41b4250020b9da4a790719e826f00e3a28a412`

```dockerfile
```

-	Layers:
	-	`sha256:0fa974b5ed90ef3defdd51030c921663d125555a8d604a0b20be843267284be9`  
		Last Modified: Tue, 25 Aug 2026 00:26:01 GMT  
		Size: 13.6 KB (13634 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:ed7864842e452496170c9675fa9ff4f66e857a738ec6cecea85574cf87ba0703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168487155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7bbc8faec026acfef96fa89db5daaf19c497ac57d62d1c6727b1fcbddb68871`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:48 GMT
ENV NIM_VERSION=2.2.2
# Tue, 25 Aug 2026 00:22:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:51 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:51 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803afef0957f65069a1f24c013774cdd78da76e1c9318391192e9943e4901042`  
		Last Modified: Tue, 25 Aug 2026 00:23:08 GMT  
		Size: 113.8 MB (113823041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96dbfc167d8951e2bf5c025452b794ee193fcfbe9ff1955a94442717765793d7`  
		Last Modified: Tue, 25 Aug 2026 00:23:06 GMT  
		Size: 26.5 MB (26546661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cd1d6fe60f97ffc4f97aa5eeb80acdea4e1f7234ef113c39b4bfd9f96e4c0a`  
		Last Modified: Tue, 25 Aug 2026 00:23:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:5567dc7cf32230c7dc8c7c872168872bf76611251275f6b87a5285571d5024d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3db6ae87fc2cbaa52ec894b08e733bfd8ae604a6324792bbc09635147b80408`

```dockerfile
```

-	Layers:
	-	`sha256:531b2dca72b550d805dbce134b513f2956d06143e78917533995f2d1c3d3abdd`  
		Last Modified: Tue, 25 Aug 2026 00:23:05 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; 386

```console
$ docker pull nim@sha256:d43ad69b6a000ef36aed1f4fa97bf55956b2ed06855ba17fa2d048098b35d8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176630535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10719f9855a74b0d0647b6b01353b9309d215802838ed9db2b0f77e894f78b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:43 GMT
ENV NIM_VERSION=2.2.2
# Tue, 25 Aug 2026 00:18:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:43 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:46 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:46 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6435ca268b877ef9f461ffd85c88a9baa95e7539d6fa6f1e4c9df51da42a92ba`  
		Last Modified: Tue, 25 Aug 2026 00:19:05 GMT  
		Size: 118.7 MB (118732414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3207029de5a431b1571d99d9ebb8e7d7aa75f723c9b26d93a8a566c9caf68f5a`  
		Last Modified: Tue, 25 Aug 2026 00:19:03 GMT  
		Size: 28.7 MB (28676904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c7996343fb8ce93d09b234daf743f121fdb8c2146270ce46ac69ac1fc81f9d`  
		Last Modified: Tue, 25 Aug 2026 00:19:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:c1c242bed3e4dd7ca37a4969e670164b1c2059d77a4df5aaba74643d77e9c3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc6995beeb14bef4faa627affaaf8852eb1b83c9c77a746d16d76bf151b3647`

```dockerfile
```

-	Layers:
	-	`sha256:4f22654f45cafa0c1247ffc3e90c87bff5b344ac5e3d42d4282ac02d7c8863b0`  
		Last Modified: Tue, 25 Aug 2026 00:19:01 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.4`

```console
$ docker pull nim@sha256:7503da253426dddca981e4d2bb97d8461cddd4eeb8ac02d924ea298362a73968
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

### `nim:2.2.4` - linux; amd64

```console
$ docker pull nim@sha256:d08317e0aa94e280d159452a8cfb46ef594c27eccccd0ec969b03dff3ff223f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175707393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed1123db4d71125bbbf04da24d8d2cb74388d77d06271a910a76a4ba85fb8f38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:06 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:06 GMT
ENV NIM_VERSION=2.2.4
# Tue, 25 Aug 2026 00:23:06 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:06 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:06 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53da44a9bbf87b48f12040da29f3a4778a36615b485b5da238fa87f9dd68045b`  
		Last Modified: Tue, 25 Aug 2026 00:23:25 GMT  
		Size: 119.7 MB (119734624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9020057cba9007d0659a7259663031bbeaa94651aa97b54ad4128cd8f8b2dfb4`  
		Last Modified: Tue, 25 Aug 2026 00:23:23 GMT  
		Size: 27.7 MB (27739950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7522ba4106e6f40b585b8c198eb3199f9517885c51b8fccd2da27c806f1670`  
		Last Modified: Tue, 25 Aug 2026 00:23:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:675c98a1fae215f1b59b95cf315751fa8203d8321ae976aec32b1d09e0dba721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758f0e2d36564b5b04d3240507e31e22eefab76be6889f454d25feda90dba381`

```dockerfile
```

-	Layers:
	-	`sha256:5e97804ea45dd4607a263943e7859d5cad0aefd29918175d10df76c61778ef8c`  
		Last Modified: Tue, 25 Aug 2026 00:23:22 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; arm variant v7

```console
$ docker pull nim@sha256:9b3f753146f0394288a791143a4e8861c44973db911c6fbdf4d912ff95d152a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141096500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1c7a4496161912e7e92ce9caef4c9629afc3bf41d5998e8b05426a3510d887`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:25:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:25:01 GMT
ENV NIM_VERSION=2.2.4
# Tue, 25 Aug 2026 00:25:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:25:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:25:01 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:25:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:25:03 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:25:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b916d4ed68a8aa23e795f67c4e56bd804270f67ed095d10d40009bbd3f09bd1f`  
		Last Modified: Tue, 25 Aug 2026 00:25:16 GMT  
		Size: 89.2 MB (89200324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1756a6deae788202183abd51da6cb0d77d45664016493b4783dbf67f54d537`  
		Last Modified: Tue, 25 Aug 2026 00:25:15 GMT  
		Size: 28.0 MB (27956168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9abc10e425f9d496d0a1eeb810104ccfe18e6bdd2cc0823f270d3edf96192c`  
		Last Modified: Tue, 25 Aug 2026 00:25:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:6e0fa30244d664357058b3dcb6102510c9c429092c0da90fa3cdf466d876cd4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27d275d164a23ea2c16d926214fe3fd00b19dd26e2625c00bc27ee27ff59409`

```dockerfile
```

-	Layers:
	-	`sha256:4d5622b61cca3aed6f8cd46ba25e7c36a1f5a94cf847454fa993f8daf55968cb`  
		Last Modified: Tue, 25 Aug 2026 00:25:13 GMT  
		Size: 13.6 KB (13634 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:40eeabb5dae83027eff3db7055fb6f9cadf1edc2a2e22fad9bdec8b2ae256150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169005864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d88eeb24fab6a6257c03fe3e2ddf61602a6ef51ad981d93d1dd942c4fb4358`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:42 GMT
ENV NIM_VERSION=2.2.4
# Tue, 25 Aug 2026 00:22:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:42 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:44 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689d059cbc722a7abf1b84de4df2a7c421a61990b22b8d21a03a0d9004abc12b`  
		Last Modified: Tue, 25 Aug 2026 00:23:00 GMT  
		Size: 113.8 MB (113822771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27eb01f09f663d039181bf2c787e9e54e322f2c9fb4dd39d464f56d2a15ed77a`  
		Last Modified: Tue, 25 Aug 2026 00:22:59 GMT  
		Size: 27.1 MB (27065639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c1cea574608e6c1cba9eb01a6c7537154136eade26f63c4bfe6c814ca44fde`  
		Last Modified: Tue, 25 Aug 2026 00:22:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:35282556373e6624aa9abed0c1f26dd5054754bbb2f9e40818af11602383294c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513084598dd81d00bf403dd204b7319fa37af8d728f541550d3932a8b2b52fd9`

```dockerfile
```

-	Layers:
	-	`sha256:0532724e78dffd9c51fcfe66238b55f8166a114e0a867a304fe23bc07d80a445`  
		Last Modified: Tue, 25 Aug 2026 00:22:57 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; 386

```console
$ docker pull nim@sha256:1b5f827c4cff12e0ec923e4cf63c25b6ab8d7d78bdc22087d5f289dc473c06a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177157121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b4243d482daeaac4836ce5d874c25854d481f91f073b363252251dbc691fbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV NIM_VERSION=2.2.4
# Tue, 25 Aug 2026 00:18:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:42 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:44 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2239fa0fb893271e0145ddc230d9dac1089f1018de1310aec9c70bd12969fb2d`  
		Last Modified: Tue, 25 Aug 2026 00:19:03 GMT  
		Size: 118.7 MB (118732411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277bd5c05e28d79336046c1e4bccd1febe88ef8a3988f37a94f6febba6749263`  
		Last Modified: Tue, 25 Aug 2026 00:19:02 GMT  
		Size: 29.2 MB (29203493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca85f70493ba0ef2e6322c03418bdf0dd48fa61d1b74a661a39eea7b67bd40dc`  
		Last Modified: Tue, 25 Aug 2026 00:18:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:c3f7271363845c7cdc581ad78f0340c9d9b3e875ec0996db723312281ac40db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa4dbdf5d808946a1a7c72ea394f8f3fbcac23df7ceb4c46b58e1293d15a81a`

```dockerfile
```

-	Layers:
	-	`sha256:ec59b7d8c75b08621d050dc95fdbd917b5747898ddeba65488087634106fcff2`  
		Last Modified: Tue, 25 Aug 2026 00:19:00 GMT  
		Size: 13.6 KB (13550 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.6`

```console
$ docker pull nim@sha256:1ce094a47fa878482661dfa038dec0b46b9c3ac5b62ad7f5ce9cfc729c932ff2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.2.6` - linux; amd64

```console
$ docker pull nim@sha256:63f2155852519769f561633cc7f5e63a88c2ecb291891f4f12887202b2c3a11f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176078574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd663024ce559959d000071f6a104b8413e0da2ae13d890408f6fed17206aec`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:57 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:57 GMT
ENV NIM_VERSION=2.2.6
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:59 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:59 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1ae5e4fa7841164b9b9dcb4605fa7e5fa1a55a1d6075ee2422c332b04de7cd`  
		Last Modified: Tue, 25 Aug 2026 00:23:18 GMT  
		Size: 119.7 MB (119734372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a1256bfef961cf870390d6923d3f9cfcb3d418177061ba14fe5d842c5e40b2`  
		Last Modified: Tue, 25 Aug 2026 00:23:16 GMT  
		Size: 28.1 MB (28111382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2b01adc81085281cdd1077d2a52bbb0bf15659e541db654027d9232be7eb49`  
		Last Modified: Tue, 25 Aug 2026 00:23:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:aa4db3f0f5dec5716a08ed7cbbbb924a0ddb4cf45af268327454fe969f6c9676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 KB (12958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac19c41edbd561ba714a6c69bd0760fcbb80087094b7bb39b8f138a1dc2bb76`

```dockerfile
```

-	Layers:
	-	`sha256:132118fb80bfbd07309235eb5e0c1dd309de6bb52ae5c17587413944c6d91a63`  
		Last Modified: Tue, 25 Aug 2026 00:23:15 GMT  
		Size: 13.0 KB (12958 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.6` - linux; arm variant v7

```console
$ docker pull nim@sha256:a439f5d110d5eaeed7ec43b6e60057561682e2286e633d5e0f28422d3f70d9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141540774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227b2fbeb0c3e5cd684f35a2bce0fe968e64dff49eca9bd86146972b0910c730`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:40 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:40 GMT
ENV NIM_VERSION=2.2.6
# Tue, 25 Aug 2026 00:23:40 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:40 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:23:40 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:42 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6596444a2c01477b461dab38b76d922274440e56fc428e031c597966cc1eff2`  
		Last Modified: Tue, 25 Aug 2026 00:23:56 GMT  
		Size: 89.2 MB (89200459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad96e6f90511adf37ae4010bfddc6967c2b6b1b00ef79db3c168a4f7afeac4dc`  
		Last Modified: Tue, 25 Aug 2026 00:23:55 GMT  
		Size: 28.4 MB (28400307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30f5e146fee18c647788264c205f63332a1ee6db338a7b5b3d1629d31fcece2`  
		Last Modified: Tue, 25 Aug 2026 00:23:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:423be95242d70184c07e8f8c6f9dd2f411a813e4bff7316871d7baf6af54d5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 KB (13023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b49a69d71868331756606cdbe4bf25d37c4b067ecd77b12671c68bba4896a2`

```dockerfile
```

-	Layers:
	-	`sha256:810d061e32b9e6bd816ba3d438efc35c0f04461311c2bbdfa4f1e1d2fd548095`  
		Last Modified: Tue, 25 Aug 2026 00:23:53 GMT  
		Size: 13.0 KB (13023 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.6` - linux; 386

```console
$ docker pull nim@sha256:af1dfc0808e3aaa170afb876cea814fbba7c22357e3305415468f2f34fbf4fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177595588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252d5924dc6ff4553a7a14a23f42367c61a45480fe16d6c7c0f615d794c747f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:28 GMT
ENV NIM_VERSION=2.2.6
# Tue, 25 Aug 2026 00:18:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:30 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b760cb71d073a6c3e2bda8f1ebd19c83d946952cf7c57a29fd74e59b11486bd`  
		Last Modified: Tue, 25 Aug 2026 00:18:50 GMT  
		Size: 118.7 MB (118732275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54458b8993cd518959f6e26e3acec3376c8f70c797d738591d9e50659baa1a17`  
		Last Modified: Tue, 25 Aug 2026 00:18:48 GMT  
		Size: 29.6 MB (29642096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bca7aee77b02415c0902c0e48aa01a2c68802a23f2d6517c6e3fd02ddd8e38`  
		Last Modified: Tue, 25 Aug 2026 00:18:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:edae1be7efdc1a54ef2e665a98b8313bad21729b96c8543306ff880849c75210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 KB (12939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7567438b5a4851478471f8a702565894eae99e7ebebf55d689614861a0213209`

```dockerfile
```

-	Layers:
	-	`sha256:246753bccfd817e8277ff5d255995459cf1aa30ad2b7d8f594a027c529107ef5`  
		Last Modified: Tue, 25 Aug 2026 00:18:46 GMT  
		Size: 12.9 KB (12939 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.8`

```console
$ docker pull nim@sha256:5413480653bee842cd64ed17b4b6d93a6555b451f2196c5c9c06b3c5f3eda862
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

### `nim:2.2.8` - linux; amd64

```console
$ docker pull nim@sha256:313306bc49c9d1a939366df6367da093260710ad30ae3c183c0b3fa2ceed5ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177263101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d83c76b8bb29459b77073a380574794e2d183f5993022c92b56c3d0ccc6926`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:57 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:57 GMT
ENV NIM_VERSION=2.2.8
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:23:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:23:00 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:23:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d433012409060827eee2136d0e7a2c7962960e1f46f5d44e09d8d94c0f54fe`  
		Last Modified: Tue, 25 Aug 2026 00:23:19 GMT  
		Size: 119.7 MB (119734374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffd0ee01c8bdcc39214c3a8793c807b3de34450b29ce534cfa396b205decdfa`  
		Last Modified: Tue, 25 Aug 2026 00:23:17 GMT  
		Size: 29.3 MB (29295908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63100b1f02d959affd38350e8ac8d359a4c575fbec47d358f7aecd3605a9c377`  
		Last Modified: Tue, 25 Aug 2026 00:23:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:2d67937817dae7ef449895cd8b72c5a15b6fed42ce07569292b9a0e473ba1de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59db48d69a86b8e7ce1dbfd0ff6b7bf7dceba5ad9f3f40b66e66c747dc9b69c5`

```dockerfile
```

-	Layers:
	-	`sha256:45f20b1d25297653b6b8fa12e7c5c0f00b1400e156a9ed009b29518f7f8aa114`  
		Last Modified: Tue, 25 Aug 2026 00:23:16 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; arm variant v7

```console
$ docker pull nim@sha256:ec41d8a4b5fa73c7f25c09f368ebb4d6648e4587e2ca389eb44b64195cf1dba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142781453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaead4bc6f5587381f234bb8f3d61002e827d6888ad310cad927650517ec8a15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:52 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:52 GMT
ENV NIM_VERSION=2.2.8
# Tue, 25 Aug 2026 00:22:52 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:52 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:52 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:54 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9898319d820d0b97c9b1155a7e5bdf4aa39e9a7ee93e296d186f64acc08a98c8`  
		Last Modified: Tue, 25 Aug 2026 00:23:08 GMT  
		Size: 89.2 MB (89200313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0999bd633e35de27301b1837f818d17455dffe0dcb84d51390bbfc0fc78dec35`  
		Last Modified: Tue, 25 Aug 2026 00:23:06 GMT  
		Size: 29.6 MB (29641132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af243cf2a2d9040d0da3757b0602d747c7a29d1f34c9351e353d19f1ff4f952a`  
		Last Modified: Tue, 25 Aug 2026 00:23:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:b0e9a91fc2e048817cd8d797bba38864e3092324587c6f540f9808bada83965c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e41f963075f6d3f7f7e928570c5919d4c3c73fccd150cf558e77049c1341bb2`

```dockerfile
```

-	Layers:
	-	`sha256:7a250321f6e58f6df8c1598f23790522051327f5213be4e17bcc915e98849f17`  
		Last Modified: Tue, 25 Aug 2026 00:23:05 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:12508e60e2e8beb196efcc117d7df9029594097d966c3e81c41f72b0d69e7685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170548850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d33eb27565a8e55d7e46b3baa8b1e72170f65987782dd2574e7711813520eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:22:40 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:40 GMT
ENV NIM_VERSION=2.2.8
# Tue, 25 Aug 2026 00:22:40 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:40 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:22:40 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:22:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:22:42 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:22:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468debbdfb309c7c004ab7f28868e861c9242696018a528bf461861727168e3b`  
		Last Modified: Tue, 25 Aug 2026 00:22:59 GMT  
		Size: 113.8 MB (113822884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6256320c1941eb40e12aa5d51ca45f0059527728f305ec2f412b01f809eaaa98`  
		Last Modified: Tue, 25 Aug 2026 00:22:57 GMT  
		Size: 28.6 MB (28608513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53c37b6d748ae911b7d1f0dc71b19e446df14bad5667de77af5b6e453ed6d04`  
		Last Modified: Tue, 25 Aug 2026 00:22:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:29d80e31272f198901a41678d3462996ff3839367d504f5a53954a6c831b7d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546d97049c7b2ebc9bbbce595cda6e55d5f62e6ed4ee45c14d94bed4e8920b98`

```dockerfile
```

-	Layers:
	-	`sha256:f2c2797fd7cfa36ec9e5883a66976332a26202b5b57e3bab975e016d4c56188a`  
		Last Modified: Tue, 25 Aug 2026 00:22:56 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; 386

```console
$ docker pull nim@sha256:092b9549c8a914faeca66d27486d3a628395ebd3612b9d0dc8b1d851ef78107c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178807343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad00603d800afa2d643a763433b4c0b9edf1e6fc68bfb4ed1198c0e1bb236ffb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV NIM_VERSION=2.2.8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:18:16 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 00:18:18 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 25 Aug 2026 00:18:19 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:18:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2698e3209384b31dbe55f5fd6cb3d309a1fa5fa78a51fcb26bd363417002099`  
		Last Modified: Tue, 25 Aug 2026 00:18:35 GMT  
		Size: 118.7 MB (118732673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de68a16c65ac57f65e888cdbdcee48987bfcf4b7478aa1d38a5c8cc31430dfe6`  
		Last Modified: Tue, 25 Aug 2026 00:18:34 GMT  
		Size: 30.9 MB (30853454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ee808517b1a8c013ad3acd1eb730df7fe25b55eb0c13aa745d9bc2c49adb2e`  
		Last Modified: Tue, 25 Aug 2026 00:18:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:2e94e97fa5a5872446a3d0f2f081c00f1db0f6f39350cbe1a696e8cfa240899e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bba35d456ccd93de3e3ea8190d7cd0e344f0c7dc02a484d79dc06733a8f891`

```dockerfile
```

-	Layers:
	-	`sha256:7255d0d21653655bdfd36ed8ddaa9aba7dfc63c1885c5ac365dab6ec03a75854`  
		Last Modified: Tue, 25 Aug 2026 00:18:32 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

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
