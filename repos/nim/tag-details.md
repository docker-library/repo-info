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
$ docker pull nim@sha256:d03f5aae19b259019b3bcad828cd178c6c05ed0e460b182417d4b5e532de5df0
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
$ docker pull nim@sha256:1b746411997a9897140b17ccb7a4686c72ab8779d4330de59c4139be19f9e659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbda0db405ebfc31259e94e9d55450e5759ffa442501c857cdc01bfcb3b3766`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:03 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04b47ad0c57828e855d78445a8ca7f1d01ec40ecf1d56218ecc7b291e9e6aa`  
		Last Modified: Wed, 05 Aug 2026 00:22:19 GMT  
		Size: 30.2 MB (30189595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1369c73d30c50ce56c035241f97751dffd02c5958536b51f8a9da1cb882a83da`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:d90dd19ec43a0ecf5b90e132854a186692077c4b0e8c47d3abb6e8dbc8d01426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67444f9f87856c891318b514e64155844115d61190ddff69b5cc7c66b3f716fe`

```dockerfile
```

-	Layers:
	-	`sha256:24f06cb51736c72bea417cc6fff27eb0739b664ff971afe19478fadc2a3cd014`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 14.4 KB (14447 bytes)  
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
$ docker pull nim@sha256:2da6119b2f2987699495848dfef33a815f4ffa7d12ec47bf2f68d2234cc4b168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171405391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9461622abb700304f2c41fa48a201965bc15a3ca61c486f565e62243df3f427a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:21:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:21:53 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:21:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c80a5e57b96d54d2c6649b1cd473c53d44b14f8e4d427f5704c71aa2b3e5fe`  
		Last Modified: Wed, 05 Aug 2026 00:22:08 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae72853ec8ae8f30345a0b6730763aeb4dae72e956ce0780299586d2e478442`  
		Last Modified: Wed, 05 Aug 2026 00:22:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:232513962bca166bbd545f6784a5393681d5b79c6ffe6060a70c629040dc8da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d770f8fe93057d35d18d8a3e6bf46c89bdc84899d52c5f1118d5e27a837b0ede`

```dockerfile
```

-	Layers:
	-	`sha256:67747703979f0fec9a52d2bbe2604c1f7b04449858ba00f2fd4c6f4234f88bf9`  
		Last Modified: Wed, 05 Aug 2026 00:22:06 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:3424c2920b1068bb7093286a4df3988e85334640643d07f02603a94b9e2a06b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179736663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee60e1ad4d1108e7c773dc2536a516b824665d7f9fde4207ee5c6f80622edbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:15:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:15:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2a15aa9a7f9a30dbbe5e061a2a140437ca9514ca19208a180ee59e009e88fb`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 118.7 MB (118714849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423c478109ff4dc24d082018327de1145619b23fb17cf3e3cb5c314ed8bf2feb`  
		Last Modified: Wed, 05 Aug 2026 00:15:45 GMT  
		Size: 31.8 MB (31800675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a77efef3c87802c26d91f5119a92bb86a5e17ba8ee28724c3284eab53d15a5`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:9e41813ed40eb552112102a5872cebbf69d9f33bf93c7af717dd65e71f9d8982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984acbedbf0870e568eeed2e186dcc2d55723eb2ed2e7952867b3d7a8d984cda`

```dockerfile
```

-	Layers:
	-	`sha256:0c0274e2b217abd77f3216317126cb7cb060a612bfd476effd23c83366f54040`  
		Last Modified: Wed, 05 Aug 2026 00:15:43 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

```console
$ docker pull nim@sha256:06116927693997c578c9a71fd2fc1d6ba90e168d51f682e2ec8ca527a1370c26
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
$ docker pull nim@sha256:8e558b56089b10f5ccb617bf8d753cb7e506bb70c3a81b4ad4122b2189e10322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174214336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6661ee438a25e8175de8b20a8042f9d9f6798b99d64c3ea80fdd29433ecd901`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:54 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:22:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:54 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:56 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:56 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346632719957dc54c3396dbcf9844e7088fdd5e6e23d89b91b4e082110cdb835`  
		Last Modified: Wed, 05 Aug 2026 00:23:15 GMT  
		Size: 119.7 MB (119719617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf2653d0d4e42fd2769a35ef0457cf6bd1b00a6dae2acf9946b548788be6e84`  
		Last Modified: Wed, 05 Aug 2026 00:23:13 GMT  
		Size: 26.3 MB (26261966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36b1ab10bb44d67340057ba88db4a3e799a4906b41b62ff6931a944adce9199`  
		Last Modified: Wed, 05 Aug 2026 00:23:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:772f38396d78fc27a8ef37240733ad8f388c0aeff0a9c3a6573fc598df98a6e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ba0c85b33c6150aa77f3dc2e187faa5785a36e9cca6b12a8baa6cc3a4a3fe6`

```dockerfile
```

-	Layers:
	-	`sha256:ea10aa15d65342746448ccf9a2246ef7d38e08dc6eba6eaae228cb36daa2b1e9`  
		Last Modified: Wed, 05 Aug 2026 00:23:12 GMT  
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
$ docker pull nim@sha256:ac114506385b02c225cca6102769cb8759942884073d8791890024d1a961fd3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167514296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e89c17d2a3dcd29c64a1eea875890bd4e4d0162f81550224be7221abbc774c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:40 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:40 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:22:40 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:40 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:40 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:42 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf467902187a716f21135ca9466ab10473192228c50c48f4f2d3248259175b0`  
		Last Modified: Wed, 05 Aug 2026 00:22:59 GMT  
		Size: 113.8 MB (113797197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5ae2bb768d413aeb0be24ba51815f46f97bce6484d16de9703e9c5a9a38201`  
		Last Modified: Wed, 05 Aug 2026 00:22:57 GMT  
		Size: 25.6 MB (25599734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee6fa748972a4f529562cabb65a2660e0a46a593002465a093bb7f55ae48c09`  
		Last Modified: Wed, 05 Aug 2026 00:22:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:a09aaeaf9e6a2276101948e130dcb36be426ba4b5b3b73473d8d2bf70338a926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196e50ff8589c6d1950825279808fe889d1ad2782e2abe836f2c335f2b1225da`

```dockerfile
```

-	Layers:
	-	`sha256:2d7a88fd39ff56dab275f6340f31e4846c37dcfd83859d76d64aefa20e49016b`  
		Last Modified: Wed, 05 Aug 2026 00:22:56 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; 386

```console
$ docker pull nim@sha256:d2e8c8e349bac208c7865021b5d6f74436d86be6d1002b8bb019e5db55a95790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175500508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb75b6d288acfd47fd4f0d4cbec2d62182aa9c442bb461a52e7aedd516d9ba1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:30 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:18:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:30 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:32 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c793d850adebfbad9fad15ed02d036045ab57498432349aabf111f45564bf0c9`  
		Last Modified: Wed, 05 Aug 2026 00:18:51 GMT  
		Size: 118.7 MB (118714929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a0eaa51b6c0d5b8244166bed5d61a935f970804c6d387e3f7be2cf0b2da705`  
		Last Modified: Wed, 05 Aug 2026 00:18:49 GMT  
		Size: 27.6 MB (27564438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fce8592a93f76ed8d0af520e7c4939f3c56957dc7df7fd3cc2befe41451a04`  
		Last Modified: Wed, 05 Aug 2026 00:18:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:b2de27e48d08fdd57f4e40771ab0f74a6f230b763409f4afd46cfb762d5346c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fbc8c33156db8de6372df50ec2785b94b4da56827188c5e3c9a56d36c2daa5`

```dockerfile
```

-	Layers:
	-	`sha256:5ca320b8ceadf8e31a1731334a3bd00426b4b0bac15dccdf9eb87b9a5cf3f037`  
		Last Modified: Wed, 05 Aug 2026 00:18:48 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.0`

```console
$ docker pull nim@sha256:76635ab56bb105a7928ce083b1317a71bc4ecee33dc44234f81d813e6184d2e1
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
$ docker pull nim@sha256:904cd9a155f4d5213f2043eebc7b7430f2606006215a195b8512dcc9b3f1f006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173272393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8773ecc5f9fe417f0c042dd67b9c2a1713a9ec57b12bc509b96f039ff35174d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:37 GMT
ENV NIM_VERSION=2.0.0
# Wed, 05 Aug 2026 00:22:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:37 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:06 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330b29ae9cf4c57b720dc2c4d84df2347655f4e729a132fac12a6079b4b1071a`  
		Last Modified: Wed, 05 Aug 2026 00:22:58 GMT  
		Size: 119.7 MB (119719014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc403457434296723a0670d0012060f37c6b3ebb36c8614941fb489d6d89def`  
		Last Modified: Wed, 05 Aug 2026 00:23:14 GMT  
		Size: 25.3 MB (25320625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1e62ccec8aec3392435baaca6e980a6acd3a3b52bc135776900336ea427bd6`  
		Last Modified: Wed, 05 Aug 2026 00:23:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:27a3890cc2b3a223eca3dadd117b45c19dd0f9edd20f757904ef768f619e7450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59edd39a24fd68b0aad5604c22fc56e94493d45020d182b23e4f48c683042d26`

```dockerfile
```

-	Layers:
	-	`sha256:f180d11ecd7d943ca60f1edaba76339db81a666c41b62ec9b34746f338b15f6b`  
		Last Modified: Wed, 05 Aug 2026 00:23:13 GMT  
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
$ docker pull nim@sha256:51385d2659a90a2b285ed3b4bbf36c73a172fa359b0980a2c499e0168363aa93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166615104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ca44da9fa2be5469c9fd169bbd1543fe5541ffdb4e8278c8a88c56eb0beaec`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:02 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:02 GMT
ENV NIM_VERSION=2.0.0
# Wed, 05 Aug 2026 00:23:02 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:02 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:02 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:04 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d115eed3048b9269bc7af5b619c346dc93fed27de13d7a2d8377adb9047b5c`  
		Last Modified: Wed, 05 Aug 2026 00:23:21 GMT  
		Size: 113.8 MB (113796638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e68db0ca0b193c2dc385c73d619a371f77df0453d544a0adee827710ac1a911`  
		Last Modified: Wed, 05 Aug 2026 00:23:19 GMT  
		Size: 24.7 MB (24701101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba953789ce6955520e08df808df625afe207c10dd37315e0ab12ebebef291980`  
		Last Modified: Wed, 05 Aug 2026 00:23:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:aba7163ea45e65636f11c6968aba4686955c3a4578e87f96f70841a7fc566ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c760e73f72ed1e288f908dcc2f676db0e0b011f1fb50383cea0e1dfc7f308661`

```dockerfile
```

-	Layers:
	-	`sha256:e94226ac17b937d5218f15429bcec19686dbccff71c73fc8eed1b1b4f72ff3a6`  
		Last Modified: Wed, 05 Aug 2026 00:23:18 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; 386

```console
$ docker pull nim@sha256:f8f7aa0ba0fc483566215fb5dd630798a7edb0227c1bab50c12f74359b34cf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174449263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b411a65afb6186fe79080a48762301781d7fb323ae3ffb11a619e0b1d20d906`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:10 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:10 GMT
ENV NIM_VERSION=2.0.0
# Wed, 05 Aug 2026 00:18:10 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:10 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:10 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:26:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:26:36 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:26:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5018f3d8d2023a51ab2b6e136153dbb6da1b26f8f33df745f7db3e5294e06961`  
		Last Modified: Wed, 05 Aug 2026 00:18:32 GMT  
		Size: 118.7 MB (118715104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f8f9fb9378f6f191f8ae8cf4aca1baf6638f9c930abb5e7eb0220b6a16420d`  
		Last Modified: Wed, 05 Aug 2026 00:26:43 GMT  
		Size: 26.5 MB (26513017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252fb5ebec8918f9df91d19a970e8b4608675610e5dc8383306b4db639b70991`  
		Last Modified: Wed, 05 Aug 2026 00:26:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:20ac7b880d9125cdfd87961d0451620e2f707efa3d5f1d5b30f93be1dd186d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb14680063a9b9b09fa0b3ab54548fc86b11ab4c2d4e99f790efde1c91dd1bce`

```dockerfile
```

-	Layers:
	-	`sha256:ba0c23244160711efd5202c316b12c223a00b8463f9eaf0f5699d1d987ff21d6`  
		Last Modified: Wed, 05 Aug 2026 00:26:42 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.10`

```console
$ docker pull nim@sha256:fd58d2c3d7b2e6dc4526427222e0005709e1a81fa8b1ffd5ab1ccc71f97a0d6f
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
$ docker pull nim@sha256:631f3c6589406a744dc310a905d7502ad1ff813670ee38066bf6d1f4b119504d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174052809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f967d6d905e855cb7141115c028fad5f4c6007731db9931e67e76e0c2ec552ab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:02 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:02 GMT
ENV NIM_VERSION=2.0.10
# Wed, 05 Aug 2026 00:23:02 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:02 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:02 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:04 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199b195c300dcc47414c7f89bcc487c030849a2c4e1178ffdbe081a00a04eced`  
		Last Modified: Wed, 05 Aug 2026 00:23:23 GMT  
		Size: 119.7 MB (119719229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f521adc8a1f22ca7b860adb9965cc6a1d8753020d4c5b49d09d0f3ebd1ac632b`  
		Last Modified: Wed, 05 Aug 2026 00:23:21 GMT  
		Size: 26.1 MB (26100827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba953789ce6955520e08df808df625afe207c10dd37315e0ab12ebebef291980`  
		Last Modified: Wed, 05 Aug 2026 00:23:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:ee17d7f1c98b544f7f898d54a0748850695007cf6f272355098d81b190b0d087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4885b89b538f92f030660c732b781080fee621aa705f9fb803d6afc32b04b98c`

```dockerfile
```

-	Layers:
	-	`sha256:30170f62d550d6be3bd2b31bfd84e0726cc89079b4e86fb8a20e9995751513ad`  
		Last Modified: Wed, 05 Aug 2026 00:23:20 GMT  
		Size: 13.6 KB (13587 bytes)  
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
$ docker pull nim@sha256:5b990bc0498b67399a35ca6fb9da1261bed743edc86c9f4722e82652c2b53f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167357356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d2221902f43bde2a58bc14bfcf2293a33f54a114f964569b794c164c76ade0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:51 GMT
ENV NIM_VERSION=2.0.10
# Wed, 05 Aug 2026 00:22:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:53 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5d40f2f10969e77514dbf0bc9e4da1742e80fca10e7aa362447e2cc706bac`  
		Last Modified: Wed, 05 Aug 2026 00:23:12 GMT  
		Size: 113.8 MB (113796969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2f128acd87ab7a41aee94802d54b31d007775c3d3fde53863f82da31d21a06`  
		Last Modified: Wed, 05 Aug 2026 00:23:10 GMT  
		Size: 25.4 MB (25443021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc9fd5dc38f0925d6cc11497a2372bcd2885c882d57419a8c88763c1b86e96`  
		Last Modified: Wed, 05 Aug 2026 00:23:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:6cce34c7515ef3f4bf057cd3e9da1ef535198d0c0aea027c88cb8a7dfad9795d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1e6809d8f7a68dcb9dec54d851727fe9ededde80c3b2954e49b85d9b3423c1`

```dockerfile
```

-	Layers:
	-	`sha256:4511f87b0d0e7342b1f806cf8844a5b6e6de8ca725a0f63b59b65273dd7a073b`  
		Last Modified: Wed, 05 Aug 2026 00:23:09 GMT  
		Size: 13.7 KB (13671 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; 386

```console
$ docker pull nim@sha256:9c0354d101f11b9a47dc7cdfc13ef90a60b6c3b9654ac292244a186a3b402001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175322202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cef1ebf2156953c4c3de2bf7048d2b30cb7738f5ac361fd1a2858e4a95cd6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:14:56 GMT
ENV NIM_VERSION=2.0.10
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:22 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:22 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7b2b7a550ffcc903c92cf42956d74c7d392a126ed5a51e083fa6f210c02ea`  
		Last Modified: Wed, 05 Aug 2026 00:15:15 GMT  
		Size: 118.7 MB (118714859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fc71a29c0cdba9da9065dc858b72e27547265c633e1aa25c1d7ef45ecaca25`  
		Last Modified: Wed, 05 Aug 2026 00:18:30 GMT  
		Size: 27.4 MB (27386202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f580b12c9767317b6d928d19777047924ba77757327e701ad6c3f0659cdc611`  
		Last Modified: Wed, 05 Aug 2026 00:18:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:1391b6d77d5d7f174656ecd0cb5200e9c10e4f8ddc16b0758fce7fbfbe3f5bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f202df0415e569e06fc5a113cef72ddc368d8c1161c5caba7c654722c9c4fe75`

```dockerfile
```

-	Layers:
	-	`sha256:745befc76e4b21d7aa781f52d0280252892e81fd82592eb18cbb1d0ee7ddda26`  
		Last Modified: Wed, 05 Aug 2026 00:18:29 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.12`

```console
$ docker pull nim@sha256:32a60d0287ef7e178470a69a077c93d594ed43ee751e68d026c935991c4d193e
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
$ docker pull nim@sha256:ed3d132068b7211250c2fcc0b442dc89f6fc334e239391c199cb7e434439c425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174068495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5d9e376edddf3dbc7e0cd28e64a3a2ec0a1e564218134513bdb2e693095007`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.0.12
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:44 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f48c493baa1d871dcfb56ad7b71acdef3ab3f2051b930e19d0be17402f57aa`  
		Last Modified: Wed, 05 Aug 2026 00:22:51 GMT  
		Size: 26.1 MB (26116212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be78aac44b69414a4e177927b96b4e869314f200d6dfbad393d8ed3b41c7ce17`  
		Last Modified: Wed, 05 Aug 2026 00:22:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:4588b00c548bfa296266cc4518790e23dc1a3d7a0ca9e2f844dd9de902aa8e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69035428c229c0ebcbcb5b4284cbdfcccd7d9068185bb11b054b59fb68a6ec6a`

```dockerfile
```

-	Layers:
	-	`sha256:47c92596dffc65829dd3c8ad4079f57fd337234103a9ceedfe2996226cb250c4`  
		Last Modified: Wed, 05 Aug 2026 00:22:50 GMT  
		Size: 13.6 KB (13588 bytes)  
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
$ docker pull nim@sha256:7ea38f309a146ee045804421b267dc6999fdf8a1da918ddfb0ef587c69e57108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167365755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b942929616032e02f8f26a90a589a0dbbf649192fada98deca6a969c606e263`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.0.12
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:33 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b506321a4acf42422502ea4e50dc2073a3977313696bd0fb4c84415f777ce7`  
		Last Modified: Wed, 05 Aug 2026 00:22:40 GMT  
		Size: 25.5 MB (25452226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed6df0bd3997af15682c67710636ecb09c3f04ddc9626b777d14c1f75152faa`  
		Last Modified: Wed, 05 Aug 2026 00:22:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:2e412b2022520260fbf0f760baeb1425025bd91757bfdeb3072980d83243d1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e087429670dd04611edf7d4611b17ad46e645929b94644e9cca3ac1d7bfa62`

```dockerfile
```

-	Layers:
	-	`sha256:8e1283826021207713d34dd3224300c36133baf454850b2ec33ecd8aaae97fcb`  
		Last Modified: Wed, 05 Aug 2026 00:22:39 GMT  
		Size: 13.7 KB (13671 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; 386

```console
$ docker pull nim@sha256:db1c093c2ce105f1bdebafcfaa929b832cdb9efed655c528521de259b1e054de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175345541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ba41f816283ff1b48019a44f9e5894cfd52f9603565203bf572d24f48c4385`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:15:25 GMT
ENV NIM_VERSION=2.0.12
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:14 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2a15aa9a7f9a30dbbe5e061a2a140437ca9514ca19208a180ee59e009e88fb`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 118.7 MB (118714849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b39b92396a3186dbe1678709a802c04744d0f339f571a426d6f90ad10fab14`  
		Last Modified: Wed, 05 Aug 2026 00:18:22 GMT  
		Size: 27.4 MB (27409551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7c10d96a149a4762992fd967617e472c0a4312b0430f2ee1779f9ce420f615`  
		Last Modified: Wed, 05 Aug 2026 00:18:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:e7e88211b5e5d7696818c548af3cee02d119ab48a94ce8df782f6da40d7eaaa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f637584043eb529c49a328eb761a730db5c1899338d6ad65438aebafcdf208`

```dockerfile
```

-	Layers:
	-	`sha256:ac84be7fddc345c3255267362efdb995156c49f4c10630edc7d005761f5b8c56`  
		Last Modified: Wed, 05 Aug 2026 00:18:21 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.14`

```console
$ docker pull nim@sha256:06116927693997c578c9a71fd2fc1d6ba90e168d51f682e2ec8ca527a1370c26
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
$ docker pull nim@sha256:8e558b56089b10f5ccb617bf8d753cb7e506bb70c3a81b4ad4122b2189e10322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174214336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6661ee438a25e8175de8b20a8042f9d9f6798b99d64c3ea80fdd29433ecd901`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:54 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:22:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:54 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:56 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:56 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346632719957dc54c3396dbcf9844e7088fdd5e6e23d89b91b4e082110cdb835`  
		Last Modified: Wed, 05 Aug 2026 00:23:15 GMT  
		Size: 119.7 MB (119719617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf2653d0d4e42fd2769a35ef0457cf6bd1b00a6dae2acf9946b548788be6e84`  
		Last Modified: Wed, 05 Aug 2026 00:23:13 GMT  
		Size: 26.3 MB (26261966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36b1ab10bb44d67340057ba88db4a3e799a4906b41b62ff6931a944adce9199`  
		Last Modified: Wed, 05 Aug 2026 00:23:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:772f38396d78fc27a8ef37240733ad8f388c0aeff0a9c3a6573fc598df98a6e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ba0c85b33c6150aa77f3dc2e187faa5785a36e9cca6b12a8baa6cc3a4a3fe6`

```dockerfile
```

-	Layers:
	-	`sha256:ea10aa15d65342746448ccf9a2246ef7d38e08dc6eba6eaae228cb36daa2b1e9`  
		Last Modified: Wed, 05 Aug 2026 00:23:12 GMT  
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
$ docker pull nim@sha256:ac114506385b02c225cca6102769cb8759942884073d8791890024d1a961fd3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167514296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e89c17d2a3dcd29c64a1eea875890bd4e4d0162f81550224be7221abbc774c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:40 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:40 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:22:40 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:40 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:40 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:42 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf467902187a716f21135ca9466ab10473192228c50c48f4f2d3248259175b0`  
		Last Modified: Wed, 05 Aug 2026 00:22:59 GMT  
		Size: 113.8 MB (113797197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5ae2bb768d413aeb0be24ba51815f46f97bce6484d16de9703e9c5a9a38201`  
		Last Modified: Wed, 05 Aug 2026 00:22:57 GMT  
		Size: 25.6 MB (25599734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee6fa748972a4f529562cabb65a2660e0a46a593002465a093bb7f55ae48c09`  
		Last Modified: Wed, 05 Aug 2026 00:22:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:a09aaeaf9e6a2276101948e130dcb36be426ba4b5b3b73473d8d2bf70338a926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196e50ff8589c6d1950825279808fe889d1ad2782e2abe836f2c335f2b1225da`

```dockerfile
```

-	Layers:
	-	`sha256:2d7a88fd39ff56dab275f6340f31e4846c37dcfd83859d76d64aefa20e49016b`  
		Last Modified: Wed, 05 Aug 2026 00:22:56 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; 386

```console
$ docker pull nim@sha256:d2e8c8e349bac208c7865021b5d6f74436d86be6d1002b8bb019e5db55a95790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175500508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb75b6d288acfd47fd4f0d4cbec2d62182aa9c442bb461a52e7aedd516d9ba1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:30 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:18:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:30 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:32 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c793d850adebfbad9fad15ed02d036045ab57498432349aabf111f45564bf0c9`  
		Last Modified: Wed, 05 Aug 2026 00:18:51 GMT  
		Size: 118.7 MB (118714929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a0eaa51b6c0d5b8244166bed5d61a935f970804c6d387e3f7be2cf0b2da705`  
		Last Modified: Wed, 05 Aug 2026 00:18:49 GMT  
		Size: 27.6 MB (27564438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fce8592a93f76ed8d0af520e7c4939f3c56957dc7df7fd3cc2befe41451a04`  
		Last Modified: Wed, 05 Aug 2026 00:18:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:b2de27e48d08fdd57f4e40771ab0f74a6f230b763409f4afd46cfb762d5346c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fbc8c33156db8de6372df50ec2785b94b4da56827188c5e3c9a56d36c2daa5`

```dockerfile
```

-	Layers:
	-	`sha256:5ca320b8ceadf8e31a1731334a3bd00426b4b0bac15dccdf9eb87b9a5cf3f037`  
		Last Modified: Wed, 05 Aug 2026 00:18:48 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.2`

```console
$ docker pull nim@sha256:4b8095834b18fc063ce9917515d587eea2727f58792a3ed2e3f2962785ac4010
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
$ docker pull nim@sha256:d9924d6afc08dced7ca1901fa7ea9d63e284010abcfa1fa8d03b77fa492d4518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173328482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3514a2c1fff731826a9f0619aad918442e3f73329a9f9bfa128f99588657504a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:35 GMT
ENV NIM_VERSION=2.0.2
# Wed, 05 Aug 2026 00:22:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:35 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:04 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ef0d49f83537e138600ce7d3739f3e94732aadb3aedb7878e28b7f8ad64390`  
		Last Modified: Wed, 05 Aug 2026 00:22:57 GMT  
		Size: 119.7 MB (119719278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50f5c97d24ad8f5dba4394f93891d01e7b9245c41bd93583522fc6df6ebd78f`  
		Last Modified: Wed, 05 Aug 2026 00:23:12 GMT  
		Size: 25.4 MB (25376451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba953789ce6955520e08df808df625afe207c10dd37315e0ab12ebebef291980`  
		Last Modified: Wed, 05 Aug 2026 00:23:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:4aca400f6dc151cc622c1f0e9a4b609979cad5371310f494a361e15fbc26df68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce5ffac597347b3a2fc7a53a08843e637e7ccf1862469fff228bff3820cf170`

```dockerfile
```

-	Layers:
	-	`sha256:cb4aeb3cc443bd981baf4922bb68cdee3e348a5f82d5ceed6a8d020ad265621a`  
		Last Modified: Wed, 05 Aug 2026 00:23:11 GMT  
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
$ docker pull nim@sha256:bfcdf51d58bec103cbd2d6fd44a876f332dc018914645c60ba124f74d17ef514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166683534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f19a06fc6977b13a8659d4114a79a6d51dba784aba6574599ade40c27da2e72`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:04 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:04 GMT
ENV NIM_VERSION=2.0.2
# Wed, 05 Aug 2026 00:23:04 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:04 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:04 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:06 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d3602bfb5e2387931dc7162fd3be867106740d2a88f967f77dc23af0bd0ddd`  
		Last Modified: Wed, 05 Aug 2026 00:23:23 GMT  
		Size: 113.8 MB (113797386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e17ae64d8607f0ae84bece37533830515b29b8ddfa98208521b21d4697695b3`  
		Last Modified: Wed, 05 Aug 2026 00:23:21 GMT  
		Size: 24.8 MB (24768782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1e62ccec8aec3392435baaca6e980a6acd3a3b52bc135776900336ea427bd6`  
		Last Modified: Wed, 05 Aug 2026 00:23:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:4cc14275bbdeaa7453d5021c29684cc225c4a39790b3b1336e67b837af3b2b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c494362ef276a145008c2f1be3f50be961a7b971d0afed189f40b1386dfcad26`

```dockerfile
```

-	Layers:
	-	`sha256:b1f8297c70e46f9212f2f66672110727ceb75028a4d3fc8530a65f0df7c17857`  
		Last Modified: Wed, 05 Aug 2026 00:23:20 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; 386

```console
$ docker pull nim@sha256:abd3affb433961a34c1bb5507d839fed6e4589affea7125a0a7a6c8c789e590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174495532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede840892191c8bc3f99c50c93c4da048970b953d3019b1c733f4c984c89db3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:14:56 GMT
ENV NIM_VERSION=2.0.2
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:37 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7b2b7a550ffcc903c92cf42956d74c7d392a126ed5a51e083fa6f210c02ea`  
		Last Modified: Wed, 05 Aug 2026 00:15:15 GMT  
		Size: 118.7 MB (118714859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b204441d8e95a9857f05a48b4c9e3db4fa17888112c741908606cdf1a24148`  
		Last Modified: Wed, 05 Aug 2026 00:18:45 GMT  
		Size: 26.6 MB (26559532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e39b8ad52ed9ee57566e41b4983b0158fe3ed7d82f426e4ca5a6ce569ee38d`  
		Last Modified: Wed, 05 Aug 2026 00:18:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:0a5d9e7832336ebb9a27d102fe591889caa712a10f5bfea349f4de00ea274a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bffec34e95603655f039e17d27b2f3ac88136526a94421fab0f910234d0327a`

```dockerfile
```

-	Layers:
	-	`sha256:183e75055499270affc38129a2a64fc3baf80a0f6576b0b665b4d6e015446782`  
		Last Modified: Wed, 05 Aug 2026 00:18:44 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.4`

```console
$ docker pull nim@sha256:1fc936a1584a45001acb74fe3d1bf7812e05a5a890e83c850d4bda36136a4146
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
$ docker pull nim@sha256:f7eba9b051f895053ac9c75fb32ad5cd7d9aab22c8cb6fac25218e1a7275c7ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173357377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072151f99ad99adbb6882f4c37c0e591eb705ab212f439d1130501ae742d39e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.0.4
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:59 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:59 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8289fc3527b5b3177043654cbce64678abcc64eedb87ed1f88bbbc80575cbf4b`  
		Last Modified: Wed, 05 Aug 2026 00:23:07 GMT  
		Size: 25.4 MB (25405094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8f48a5692a8ba2d3e8416b9c9fbf7572c191c9cdb990e810caaf9386786ed`  
		Last Modified: Wed, 05 Aug 2026 00:23:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:b983933dfdca065c3d086b1c47b65270ed18151d9697064d1736a313e3bfe44c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:593dde10d2b0a5955631e5bb6fb9bd2de1f75611ea7fb2bf84b689c8d7b5cde6`

```dockerfile
```

-	Layers:
	-	`sha256:78ef8708947e0d7c8e17452001fc9dd55a13b614de524b110c7c8c9f9ce576c3`  
		Last Modified: Wed, 05 Aug 2026 00:23:06 GMT  
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
$ docker pull nim@sha256:4ed4208673269535cd7359956964a5c164831938b7214a364ad5346ff23935ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166718586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71f31237490fe35fd6e9f5e2ee5609871f4245b623abfb0f8ca44b21010f958`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:20 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:20 GMT
ENV NIM_VERSION=2.0.4
# Wed, 05 Aug 2026 00:22:20 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:20 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:20 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:48 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:48 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff7d3427767c14b318b2163ddce388935b3d3a1730b7f9da6e94d39e77941a`  
		Last Modified: Wed, 05 Aug 2026 00:22:40 GMT  
		Size: 113.8 MB (113797057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd02aa08c58f344af7e8ed225e7734b248aa2d27a11f820a51969af215090fe4`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
		Size: 24.8 MB (24804164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41cddc54bc68ecb56a01c5e6fe15f9018200282761df30ab949a86b8bb2b154`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:e1075661bc6346592b02304255e000985194924cef3da695f312ef5cd3e28289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ea652ce8f89dbfa50edea37f7befd90d05f91ba2fe5476a5c53a4350de1328`

```dockerfile
```

-	Layers:
	-	`sha256:788f8aa37da8e9864f8b8bdd0983565ab3c0aa65c28591c46a2335283cac76a3`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; 386

```console
$ docker pull nim@sha256:d15ddb404c5ae72300956a10dc6ace6d0a208168f1b9b69d0de16cae2e595811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174533609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a864545a82067555c2849bbe8aba8674bfc8491621099dd03c450c935ff972cc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:07 GMT
ENV NIM_VERSION=2.0.4
# Wed, 05 Aug 2026 00:18:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:36 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d048ab5317845c73b186e27c5d2acbb0f2bde14948a76ab1cace9cc5fe70a713`  
		Last Modified: Wed, 05 Aug 2026 00:18:28 GMT  
		Size: 118.7 MB (118714996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35709cebcb77682bd89f22841707853bb70982be15eefd3a37e56224f75a4b9d`  
		Last Modified: Wed, 05 Aug 2026 00:18:44 GMT  
		Size: 26.6 MB (26597472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d40e795fb48440656614f2346cd637875aa405a554cbe4abf2d3882cae6e66`  
		Last Modified: Wed, 05 Aug 2026 00:18:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:812e960b1138edae155857e7c37a37df9c240cb32143a5131779695a1793a031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6217dcec2ff67dea1eac57261e2f3b2bbe8233a6607956a408ee8c37b830a77`

```dockerfile
```

-	Layers:
	-	`sha256:01aba255b73e1c1e95bb38a662bcf96dcae8ae63a75a8cb0b7807269995730a2`  
		Last Modified: Wed, 05 Aug 2026 00:18:43 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.6`

```console
$ docker pull nim@sha256:ace459bf9f524709c7b2f0761ec82ea538a04ab90bc3bd56e15bbe0c882a462b
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
$ docker pull nim@sha256:362f5449fbd0988e83b34f4f01e7662fdb6d9a7e5ae3174c90f669cffa301c38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173887792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5b9bd38be913aede802c4485ad8204658102b4f0b170309ba030c899f3396f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:12 GMT
ENV NIM_VERSION=2.0.6
# Wed, 05 Aug 2026 00:23:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:12 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:13 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d8e23c9e35cbaaf48af7c9dcefbaa4172f5b6c9b2da85cfee6e71afa201173`  
		Last Modified: Wed, 05 Aug 2026 00:23:31 GMT  
		Size: 119.7 MB (119719246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7a86ad910cd8f3f1b0611070d70f9703087aa186e08eae8806415a3c47051b`  
		Last Modified: Wed, 05 Aug 2026 00:23:29 GMT  
		Size: 25.9 MB (25935792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f013f8214598b392d4bab4ac8668a0a8ad4ec74016d36dac3294e4bbb7210545`  
		Last Modified: Wed, 05 Aug 2026 00:23:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:3c6c3abeef4ab8b590f74bd07fafccb49bb7db842113e8c35417308c8e32b8eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a283918d517a1e2c681ebe0e5a09e450e71fe876d88f7175aa4b99d791182c3`

```dockerfile
```

-	Layers:
	-	`sha256:04ee1f4ebd537477f629e1825c5e3adae50b51f17c66885e68fe3ce42bd226dc`  
		Last Modified: Wed, 05 Aug 2026 00:23:28 GMT  
		Size: 13.6 KB (13570 bytes)  
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
$ docker pull nim@sha256:91f45dc024dae6575f71a72bf6957017d71e05f39a7ebbe6e7395b2bc45b088b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167205232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b5927a4980302b838a59164ce7ae516685692cec150527f5608302dd48957e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.0.6
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:47 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8143c1ebccc16341970fe62ec1de6993163d589befb0fec5eebf62d7dba63766`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
		Size: 25.3 MB (25291702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c610661d4384152cad386a243d54fbc64a88564374f54dc6efb921d0ba3956d`  
		Last Modified: Wed, 05 Aug 2026 00:22:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:54d4d4976959ddc6ab722b76e4f409e7336a2b413a4e9ded6de8d28795dd5e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cebb9cdc42faa60a6839691a8b2b268053b46a8021b5bc81255503df634d82`

```dockerfile
```

-	Layers:
	-	`sha256:2311943e4e362f1462d3e42497ad8922d842faea7457cd121afc1e97bcb10a12`  
		Last Modified: Wed, 05 Aug 2026 00:22:54 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; 386

```console
$ docker pull nim@sha256:8577d8c99b015767eae4f00d4a3eb62e8fa9ecccd5bd5d59813dc91f173bb20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175066804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:addf33d81320ac4e07ce842651ad2a06a218e479bc56845c5e890d6c3eba7b44`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:03 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:03 GMT
ENV NIM_VERSION=2.0.6
# Wed, 05 Aug 2026 00:18:03 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:03 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:03 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:30 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13585dfc00f648d32ac0d9983b38e4e7ddcd9ed7cb35a3822aefdcd3979399b2`  
		Last Modified: Wed, 05 Aug 2026 00:18:22 GMT  
		Size: 118.7 MB (118715132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33aec053c3ee8046f5e552bc354ace78a17b1af7a0ad8876226344444156735c`  
		Last Modified: Wed, 05 Aug 2026 00:18:38 GMT  
		Size: 27.1 MB (27130531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7789438c5ba09afb2c05f76aac5fe78185896882878c4d740ea5e9e598ebeb1`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:e6d5955df0928ebaa432b00e2f93d4e9b672f861d110d1ec0c7c3b5fbf123e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207210fcefd493dbd40860fef93f7dce4f0b7e173ffd104b8f100ef0a5045079`

```dockerfile
```

-	Layers:
	-	`sha256:ab16ce9a80a21ada6428ccdde518b300158d661f5545a3287f4f6b542a73b38d`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.8`

```console
$ docker pull nim@sha256:4944b50cb4e607c666d51e58dbcf6e5cf011bb9e1832dba363fa7e993bcaf8ca
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
$ docker pull nim@sha256:b30abc16b9f2ef0aa58d1a55f3092cb709d8def8b71f79146df01ce6dc8781b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173977842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894837cf6dca5c86cc17c7820480b032c96852c46bde868d4ef83cff3fd22ea3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:05 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:05 GMT
ENV NIM_VERSION=2.0.8
# Wed, 05 Aug 2026 00:23:05 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:05 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:07 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82161a3f55d94fa7365984982254df03a9ef4bd43c2d2d511a89b521d7ad148`  
		Last Modified: Wed, 05 Aug 2026 00:23:25 GMT  
		Size: 119.7 MB (119719531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73778ecef85678b6b8e63be2345367765a24a2df6451ea9a8d9d08b43557dbd4`  
		Last Modified: Wed, 05 Aug 2026 00:23:23 GMT  
		Size: 26.0 MB (26025557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eca19a00571d5b81a05c2ca8c007bb83cb06097b679cf29becc627d1ee1d1be`  
		Last Modified: Wed, 05 Aug 2026 00:23:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:595f8dab040b838a8b9446c745006a088997892c38e454a1891cefa3f4271f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0db726fded2f7b8affb2b6867284558214e8dee40ce264e2aa4ae2f74c036aa`

```dockerfile
```

-	Layers:
	-	`sha256:8d964bdbd9e3bd083a7e942ba1857de7457347361fd48290c48a628dea84e99a`  
		Last Modified: Wed, 05 Aug 2026 00:23:22 GMT  
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
$ docker pull nim@sha256:7f69b89dd1317aceca853b0ae91a0f6d18955c7e6463c33b34d813a30d2b7e77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167303986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a773c5a450fbe633f11acaaadc185c65f58118468243c67a0b2617670985060e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:51 GMT
ENV NIM_VERSION=2.0.8
# Wed, 05 Aug 2026 00:22:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:53 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904991eca1952e72eb61431fc2b5b08ef29930b8d1d64c63cf24dc1a3fc30da`  
		Last Modified: Wed, 05 Aug 2026 00:23:10 GMT  
		Size: 113.8 MB (113796983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8262f89d1c7b3c471c5f4d9eb9b5e87d4bdac2f12ca046b5cb6a07b2929cfe0c`  
		Last Modified: Wed, 05 Aug 2026 00:23:08 GMT  
		Size: 25.4 MB (25389637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc9fd5dc38f0925d6cc11497a2372bcd2885c882d57419a8c88763c1b86e96`  
		Last Modified: Wed, 05 Aug 2026 00:23:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:52d861d8f63616276834faa9b4f8498b9ab4dcf729521871e01d7887425382d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe48a0e5fb8d3c3187c337690f0a22144092981a6e3768bcb558bb0dadadff3`

```dockerfile
```

-	Layers:
	-	`sha256:69e7dab9aeb10356641dee3f4871a8924971b761dc96c5b6567675ffbdeb7863`  
		Last Modified: Wed, 05 Aug 2026 00:23:06 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; 386

```console
$ docker pull nim@sha256:877aabe96252db4ee5b68bb708eca509d6e7c484022aeae2605c62f5b872f76e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175168859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c489f727f5989bec257b4786c763262408905a58c72df6ae539d86d314f23`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:15:25 GMT
ENV NIM_VERSION=2.0.8
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:30 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2a15aa9a7f9a30dbbe5e061a2a140437ca9514ca19208a180ee59e009e88fb`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 118.7 MB (118714849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f551a7cd8fe33eb549b8f7aedb0dd995b1158f72f3d8d3a4cfe9dc4d839be49`  
		Last Modified: Wed, 05 Aug 2026 00:18:38 GMT  
		Size: 27.2 MB (27232869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7789438c5ba09afb2c05f76aac5fe78185896882878c4d740ea5e9e598ebeb1`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:e40f8eabc90594757c284ceb2825da4b8505c7423aeb74533a4b8306790bfa18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52235d2aec0974b1eea0637cc1b688401c5241aa2c859d9e72aa683b684f3f8`

```dockerfile
```

-	Layers:
	-	`sha256:fe711b028e20ac0b077d3a24af0090006f41983bf8fa2cf36aff0009b26b2802`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

```console
$ docker pull nim@sha256:d03f5aae19b259019b3bcad828cd178c6c05ed0e460b182417d4b5e532de5df0
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
$ docker pull nim@sha256:1b746411997a9897140b17ccb7a4686c72ab8779d4330de59c4139be19f9e659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbda0db405ebfc31259e94e9d55450e5759ffa442501c857cdc01bfcb3b3766`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:03 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04b47ad0c57828e855d78445a8ca7f1d01ec40ecf1d56218ecc7b291e9e6aa`  
		Last Modified: Wed, 05 Aug 2026 00:22:19 GMT  
		Size: 30.2 MB (30189595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1369c73d30c50ce56c035241f97751dffd02c5958536b51f8a9da1cb882a83da`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:d90dd19ec43a0ecf5b90e132854a186692077c4b0e8c47d3abb6e8dbc8d01426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67444f9f87856c891318b514e64155844115d61190ddff69b5cc7c66b3f716fe`

```dockerfile
```

-	Layers:
	-	`sha256:24f06cb51736c72bea417cc6fff27eb0739b664ff971afe19478fadc2a3cd014`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 14.4 KB (14447 bytes)  
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
$ docker pull nim@sha256:2da6119b2f2987699495848dfef33a815f4ffa7d12ec47bf2f68d2234cc4b168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171405391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9461622abb700304f2c41fa48a201965bc15a3ca61c486f565e62243df3f427a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:21:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:21:53 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:21:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c80a5e57b96d54d2c6649b1cd473c53d44b14f8e4d427f5704c71aa2b3e5fe`  
		Last Modified: Wed, 05 Aug 2026 00:22:08 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae72853ec8ae8f30345a0b6730763aeb4dae72e956ce0780299586d2e478442`  
		Last Modified: Wed, 05 Aug 2026 00:22:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:232513962bca166bbd545f6784a5393681d5b79c6ffe6060a70c629040dc8da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d770f8fe93057d35d18d8a3e6bf46c89bdc84899d52c5f1118d5e27a837b0ede`

```dockerfile
```

-	Layers:
	-	`sha256:67747703979f0fec9a52d2bbe2604c1f7b04449858ba00f2fd4c6f4234f88bf9`  
		Last Modified: Wed, 05 Aug 2026 00:22:06 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:3424c2920b1068bb7093286a4df3988e85334640643d07f02603a94b9e2a06b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179736663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee60e1ad4d1108e7c773dc2536a516b824665d7f9fde4207ee5c6f80622edbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:15:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:15:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2a15aa9a7f9a30dbbe5e061a2a140437ca9514ca19208a180ee59e009e88fb`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 118.7 MB (118714849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423c478109ff4dc24d082018327de1145619b23fb17cf3e3cb5c314ed8bf2feb`  
		Last Modified: Wed, 05 Aug 2026 00:15:45 GMT  
		Size: 31.8 MB (31800675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a77efef3c87802c26d91f5119a92bb86a5e17ba8ee28724c3284eab53d15a5`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:9e41813ed40eb552112102a5872cebbf69d9f33bf93c7af717dd65e71f9d8982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984acbedbf0870e568eeed2e186dcc2d55723eb2ed2e7952867b3d7a8d984cda`

```dockerfile
```

-	Layers:
	-	`sha256:0c0274e2b217abd77f3216317126cb7cb060a612bfd476effd23c83366f54040`  
		Last Modified: Wed, 05 Aug 2026 00:15:43 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.0`

```console
$ docker pull nim@sha256:2764a2df194f455130b79449e2b4b787354b33cebe02e485123383e4518555c1
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
$ docker pull nim@sha256:617f5ba123b21b2c3286911c205aaabf4931adf3881cec301e2254cea4af653c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174845263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbd3c97ba109e74ef73be07cf299d0e5cb148a6d354adba1223e258fb2f26d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:43 GMT
ENV NIM_VERSION=2.2.0
# Wed, 05 Aug 2026 00:22:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:45 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c94dbd466d040980188eb2cfbd825ca1fce2ceaf3aa082a36fe192d7226ad45`  
		Last Modified: Wed, 05 Aug 2026 00:23:03 GMT  
		Size: 119.7 MB (119719512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ad01d32a17a7225909b9b5f022d3c5da416a9b10c77bef7572085f4d04d593`  
		Last Modified: Wed, 05 Aug 2026 00:23:01 GMT  
		Size: 26.9 MB (26892997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8bb68e68728929cf48499ba6fbcee2f8a466844d1f039191717792deb3fa35`  
		Last Modified: Wed, 05 Aug 2026 00:22:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:634e231e5de0c2384fb08ea547a944e7f3f4dde82a27af79b603044e574ad610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2723eff2ad3d31c37081dfa9254f8b06a586cc7a85a1c2683d18b9e4d33e36`

```dockerfile
```

-	Layers:
	-	`sha256:78f537fe3f854cf6296b934ab1d7c61295a9f09dbed0099f86645646ba8c6efa`  
		Last Modified: Wed, 05 Aug 2026 00:22:59 GMT  
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
$ docker pull nim@sha256:096738e16ef34462819239b607bcdc6ed35b6d1ff3f7433ebc0977fc93d01f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168115361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02191d05fc8ea634f9d90e2b64dd626ed9ee9eb662f94d13eded71ae8d2a2ba3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.2.0
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:18 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:18 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2eaabae2a2e77e10f8c08585dec32fe2608589b64dfb6b63553f7c71ceacf8c`  
		Last Modified: Wed, 05 Aug 2026 00:22:25 GMT  
		Size: 26.2 MB (26201832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98ac65fc5abed76dcf9281cf84b9dd7ab364dba370266d53ec5c12608045421`  
		Last Modified: Wed, 05 Aug 2026 00:22:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:f77e56761040ad483d4d51cb8860b27c535b521abc1e0635a6f3aacab9781df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e427f17ed2546f4a06fc06f87eee544e5c1a4b2c68709f5a288fd12839d3d1a1`

```dockerfile
```

-	Layers:
	-	`sha256:764d839766485ac93fe54f0987d8971fb165315b16cfbe3dfa837e762c6dbda4`  
		Last Modified: Wed, 05 Aug 2026 00:22:24 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; 386

```console
$ docker pull nim@sha256:803716c354b5d42c518edf2abdc640f1c67e7642fefc7f2fc34bc682859aac12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176200559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21357bbd0a14d3ea292699b31cc5bb19c1a356da7bcb027a5f8c9bd015f8ef30`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:14:56 GMT
ENV NIM_VERSION=2.2.0
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:14:58 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:14:58 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:14:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7b2b7a550ffcc903c92cf42956d74c7d392a126ed5a51e083fa6f210c02ea`  
		Last Modified: Wed, 05 Aug 2026 00:15:15 GMT  
		Size: 118.7 MB (118714859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892cede811b4ae0967a8e7c973210a1fffd7e89e85f1455012bdc0787a71d6de`  
		Last Modified: Wed, 05 Aug 2026 00:15:13 GMT  
		Size: 28.3 MB (28264559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18abf47248237773ee4ff421f50b9b1b170814a15e0d66f39979a4c4e1477a38`  
		Last Modified: Wed, 05 Aug 2026 00:15:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:27cd0d2bfa0a580e5503ad517262502ca31b15e9ab649a2786bce815da05f548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddfc4416ae9c6ea1c6528550caa5009eaf76a861c90b346dc297a291fbf21b6`

```dockerfile
```

-	Layers:
	-	`sha256:f2e3ca61fb3cc5f6acac13ccde7f2d4870fadbbee7d8d4668b3a31e1dae4c228`  
		Last Modified: Wed, 05 Aug 2026 00:15:12 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.10`

```console
$ docker pull nim@sha256:d03f5aae19b259019b3bcad828cd178c6c05ed0e460b182417d4b5e532de5df0
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
$ docker pull nim@sha256:1b746411997a9897140b17ccb7a4686c72ab8779d4330de59c4139be19f9e659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbda0db405ebfc31259e94e9d55450e5759ffa442501c857cdc01bfcb3b3766`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:03 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04b47ad0c57828e855d78445a8ca7f1d01ec40ecf1d56218ecc7b291e9e6aa`  
		Last Modified: Wed, 05 Aug 2026 00:22:19 GMT  
		Size: 30.2 MB (30189595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1369c73d30c50ce56c035241f97751dffd02c5958536b51f8a9da1cb882a83da`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:d90dd19ec43a0ecf5b90e132854a186692077c4b0e8c47d3abb6e8dbc8d01426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67444f9f87856c891318b514e64155844115d61190ddff69b5cc7c66b3f716fe`

```dockerfile
```

-	Layers:
	-	`sha256:24f06cb51736c72bea417cc6fff27eb0739b664ff971afe19478fadc2a3cd014`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 14.4 KB (14447 bytes)  
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
$ docker pull nim@sha256:2da6119b2f2987699495848dfef33a815f4ffa7d12ec47bf2f68d2234cc4b168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171405391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9461622abb700304f2c41fa48a201965bc15a3ca61c486f565e62243df3f427a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:21:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:21:53 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:21:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c80a5e57b96d54d2c6649b1cd473c53d44b14f8e4d427f5704c71aa2b3e5fe`  
		Last Modified: Wed, 05 Aug 2026 00:22:08 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae72853ec8ae8f30345a0b6730763aeb4dae72e956ce0780299586d2e478442`  
		Last Modified: Wed, 05 Aug 2026 00:22:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:232513962bca166bbd545f6784a5393681d5b79c6ffe6060a70c629040dc8da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d770f8fe93057d35d18d8a3e6bf46c89bdc84899d52c5f1118d5e27a837b0ede`

```dockerfile
```

-	Layers:
	-	`sha256:67747703979f0fec9a52d2bbe2604c1f7b04449858ba00f2fd4c6f4234f88bf9`  
		Last Modified: Wed, 05 Aug 2026 00:22:06 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; 386

```console
$ docker pull nim@sha256:3424c2920b1068bb7093286a4df3988e85334640643d07f02603a94b9e2a06b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179736663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee60e1ad4d1108e7c773dc2536a516b824665d7f9fde4207ee5c6f80622edbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:15:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:15:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2a15aa9a7f9a30dbbe5e061a2a140437ca9514ca19208a180ee59e009e88fb`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 118.7 MB (118714849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423c478109ff4dc24d082018327de1145619b23fb17cf3e3cb5c314ed8bf2feb`  
		Last Modified: Wed, 05 Aug 2026 00:15:45 GMT  
		Size: 31.8 MB (31800675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a77efef3c87802c26d91f5119a92bb86a5e17ba8ee28724c3284eab53d15a5`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:9e41813ed40eb552112102a5872cebbf69d9f33bf93c7af717dd65e71f9d8982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984acbedbf0870e568eeed2e186dcc2d55723eb2ed2e7952867b3d7a8d984cda`

```dockerfile
```

-	Layers:
	-	`sha256:0c0274e2b217abd77f3216317126cb7cb060a612bfd476effd23c83366f54040`  
		Last Modified: Wed, 05 Aug 2026 00:15:43 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.2`

```console
$ docker pull nim@sha256:fb772e3863817e0e0b53197f33f5871bc310e1e054eab7a14d7deb8700256d8e
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
$ docker pull nim@sha256:8d32d72e1025e97b012f5769709ce72af333a56d812ad308782a122deafd0246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175230067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a59bbf8dfa21c158262df24708a3e5c08c1f8ae4d24032b8a4f7a2d65e9d1d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.2.2
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:28 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4748c76fb9c2041c4b9bcae949cbe001bfebc914d7b9431496c3340a41bedcf`  
		Last Modified: Wed, 05 Aug 2026 00:22:36 GMT  
		Size: 27.3 MB (27277785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe4d58dbdfcb3d4f7262d26d6b67413610df20ecae86c07b41249f209d2897f`  
		Last Modified: Wed, 05 Aug 2026 00:22:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:398ebcdd8c945190fbe12f1f77e90acaad43f019ca209735ecd5a4807f592698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc4d89766db36e9a5a899cf4933810391945d728719b8290a5d7e8417ba846f`

```dockerfile
```

-	Layers:
	-	`sha256:baa05d7c2671f6a2ac7461335b74e620fb8c1c09c69dbbe11f8ffcad51978751`  
		Last Modified: Wed, 05 Aug 2026 00:22:35 GMT  
		Size: 13.6 KB (13569 bytes)  
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
$ docker pull nim@sha256:3db94082d363adf7f6b1239b188324ff2cc044ac24297c85b7fab2fdf0ea4a66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168460400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1dc340822f203fc7e19e770bcc53d6965ba59b70e6445439e63485222079e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:31 GMT
ENV NIM_VERSION=2.2.2
# Wed, 05 Aug 2026 00:22:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:31 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:33 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e556950300b8faf3075397157c5aae6352704d9f0cb776aecfcab5c33a895f3`  
		Last Modified: Wed, 05 Aug 2026 00:22:50 GMT  
		Size: 113.8 MB (113796388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e19a14ed4b5be3253f89009247a69762f6080ae3e0ab63eb180c80c3344a5`  
		Last Modified: Wed, 05 Aug 2026 00:22:48 GMT  
		Size: 26.5 MB (26546647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed6df0bd3997af15682c67710636ecb09c3f04ddc9626b777d14c1f75152faa`  
		Last Modified: Wed, 05 Aug 2026 00:22:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:009654ee6cec02b4c022bbffb2790fca0b467cc9091586306409bbb5d1bcdf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b25e59476d0b4463c7492eb301b740d96423acd2e9d0f0b01a9762912d6dcb`

```dockerfile
```

-	Layers:
	-	`sha256:254bf7090d1e4626e6390ae6300987c56191e820bed0c2fac5e463aef95ef95b`  
		Last Modified: Wed, 05 Aug 2026 00:22:47 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; 386

```console
$ docker pull nim@sha256:d4496f403889809fabc8d37db2a0b896b2aaa00e98ec839fa1e0a69486a99b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176612906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c025809dde3d45a653b6b3344d4427cb1b2f2e5aa448901fc5f038c04b75ffcf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:14:56 GMT
ENV NIM_VERSION=2.2.2
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:14:56 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:07 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7b2b7a550ffcc903c92cf42956d74c7d392a126ed5a51e083fa6f210c02ea`  
		Last Modified: Wed, 05 Aug 2026 00:15:15 GMT  
		Size: 118.7 MB (118714859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581c0f606e8f06913cf41db26ca009276966443012f444a21605fa8be6d9a9a4`  
		Last Modified: Wed, 05 Aug 2026 00:18:15 GMT  
		Size: 28.7 MB (28676905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b54f794acfcdf4ff1c8eb819e9f73d60526f1a9cd529f8d98620f11807f556`  
		Last Modified: Wed, 05 Aug 2026 00:18:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:e6ee1e8415a5c63a71296c2736ff9637d673edcafbc6d6a7eed527f2866e40db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97b8328d69ae3ad0975d89842002db7806aa4f46231d905dcf766e1027080042`

```dockerfile
```

-	Layers:
	-	`sha256:f4b792b40fa09d295a1fc3349161a189e93706a2c3884629ebe06d6ae4b7a8e7`  
		Last Modified: Wed, 05 Aug 2026 00:18:14 GMT  
		Size: 13.6 KB (13550 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.4`

```console
$ docker pull nim@sha256:36fd4d460e9a2492703c2c955930f71395a31c30053f01a3d5b5dd3bcebccf74
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
$ docker pull nim@sha256:b40fc4c80535bf6ceb43150834bab063460a1f98e790a3640a2fdda08b986eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175692132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e3c8771b1abb2ac1ff35988ef81b0f9f5d10586ad596b9174910519cd8d310`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:43 GMT
ENV NIM_VERSION=2.2.4
# Wed, 05 Aug 2026 00:22:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:45 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ae64cf15670b8680b565d5d09fe9cde71e01b8561c6d56fd890e8cc28a74aa`  
		Last Modified: Wed, 05 Aug 2026 00:23:04 GMT  
		Size: 119.7 MB (119719429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ac7917068b09476d69d5473103fe7869c2ec61a36e68018a121e04cb34699`  
		Last Modified: Wed, 05 Aug 2026 00:23:02 GMT  
		Size: 27.7 MB (27739949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8bb68e68728929cf48499ba6fbcee2f8a466844d1f039191717792deb3fa35`  
		Last Modified: Wed, 05 Aug 2026 00:22:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:c3fdda3adb922a0f9b7fe5199bf539078827282a80968b686b49c28cbcbcfc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b070bc70a62855c3f47ca68e6ad3f1b51e9d6c43606a78ba84c6d509389a6052`

```dockerfile
```

-	Layers:
	-	`sha256:d5310dec656e971ec3aa708e08c1474bbc68f07942821e4d9bd07d7644c0252d`  
		Last Modified: Wed, 05 Aug 2026 00:23:01 GMT  
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
$ docker pull nim@sha256:a561fead50abc909f185ce1d9d87b232f7da5d3e9119b8d6757019c43dfe2204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168980323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9866d484e58b8d69246caa69d13b1cfd9ef1fb2f2e547e82f1b44b0a4f39d1fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:25 GMT
ENV NIM_VERSION=2.2.4
# Wed, 05 Aug 2026 00:22:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:27 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67494aeaa8dfb762bd71f5ec81584e0afc120120249001bc97bfdefb72fa7832`  
		Last Modified: Wed, 05 Aug 2026 00:22:45 GMT  
		Size: 113.8 MB (113797318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62c3f2df12d86e1521088398724d88ca2401644af17d71c25ca7c3a7421d9e7`  
		Last Modified: Wed, 05 Aug 2026 00:22:43 GMT  
		Size: 27.1 MB (27065639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f1360a41cd1b3fee13626546b35af6d346c6c2aecee5a673ac79b78e12a9f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:2836b31732531e3792ad2d91f9dd4a90fc59ad41a64cf12d4f2f00792fc01f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790a7616e69feb886fad0e4ff4882a33930477c7f3b907156877a45eeb1f1805`

```dockerfile
```

-	Layers:
	-	`sha256:07fb20399cdf54086de826457d5bcd9512ecbeb42f9672e9c93b7ca971e26634`  
		Last Modified: Wed, 05 Aug 2026 00:22:41 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; 386

```console
$ docker pull nim@sha256:efd8b437493ad76da9034e77df9cd33f2c6b9fbfcfd889d1095a1267879ee5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177139729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a05c6833b7cb947ff75babc4851b21cbc0001c38b4b6980010c3793983f0000`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:10 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:10 GMT
ENV NIM_VERSION=2.2.4
# Wed, 05 Aug 2026 00:18:10 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:10 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:10 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:13 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5018f3d8d2023a51ab2b6e136153dbb6da1b26f8f33df745f7db3e5294e06961`  
		Last Modified: Wed, 05 Aug 2026 00:18:32 GMT  
		Size: 118.7 MB (118715104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f27010ecfaaf9046dd213dca9b6f8f164c629113450a0a228a409ca0812738`  
		Last Modified: Wed, 05 Aug 2026 00:18:30 GMT  
		Size: 29.2 MB (29203486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd22044a6438fcbd788a817fd7489b6056f9176540c7290088fc0e004a4a4822`  
		Last Modified: Wed, 05 Aug 2026 00:18:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:09a08429f2d9fb04dfa009038d6115eac30f7f667e47271d2b84300e3caf2410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac6761deb8cea710ea87c00b3d6ff4aea3656b0f17022633486403083643b58`

```dockerfile
```

-	Layers:
	-	`sha256:9a1112d0166721d6077671f7bec3c2acae3a216736b1432d67736ffeafef1ce7`  
		Last Modified: Wed, 05 Aug 2026 00:18:29 GMT  
		Size: 13.5 KB (13549 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.6`

```console
$ docker pull nim@sha256:63de966ed7f5981a70f9d7ed961593cd7320f07a5e3b8e0c6184fa6f9bfcb51a
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
$ docker pull nim@sha256:f6d969a14fac73c4a6424a1e236be9b2cd19d377caa30973cf0dcd963e3e6d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176063417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8f36fd4fa23afbbbfc7fe88463943f0b3275b58397bb1f7e2e9c3af512cb1a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:35 GMT
ENV NIM_VERSION=2.2.6
# Wed, 05 Aug 2026 00:22:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:35 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:37 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ef0d49f83537e138600ce7d3739f3e94732aadb3aedb7878e28b7f8ad64390`  
		Last Modified: Wed, 05 Aug 2026 00:22:57 GMT  
		Size: 119.7 MB (119719278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d62e3ff5e89e58bc93e3c95f3c1aefb2b18e233a3d2736e0692b39c28a7c33`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
		Size: 28.1 MB (28111386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224abf5684a51391ed82c70ab885be94ff4072cabe34cd5324f07a133c022539`  
		Last Modified: Wed, 05 Aug 2026 00:22:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:f7629011395a2e8f239938f8d843bd389be5111fb3d2300b74fc03d2f986071e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 KB (12958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfe4b6536623db3cbe001ca083c28d6e27cb88510ddb43cd140b78a86860011`

```dockerfile
```

-	Layers:
	-	`sha256:7183b8d6d30a4a40ef809adfdb943a1940dd2ef00956753a3285d81e5fd659a7`  
		Last Modified: Wed, 05 Aug 2026 00:22:53 GMT  
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
$ docker pull nim@sha256:05ce781e372e86af1a4075470416ba9367e1d3657dfae08442048ea67117437e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177578240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bbbd601e1225778358da13faf1037b0f3012970a36989308cc4c2c3d8f8269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:07 GMT
ENV NIM_VERSION=2.2.6
# Wed, 05 Aug 2026 00:18:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:09 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:09 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d048ab5317845c73b186e27c5d2acbb0f2bde14948a76ab1cace9cc5fe70a713`  
		Last Modified: Wed, 05 Aug 2026 00:18:28 GMT  
		Size: 118.7 MB (118714996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8195ad5095ca12b09a8b941ba525f983f330ca7955b95587a81776486510f00`  
		Last Modified: Wed, 05 Aug 2026 00:18:26 GMT  
		Size: 29.6 MB (29642104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab5b298f5042e8de20f588a5b0b2955c54ecfb9467d264cf123445e50b2f2b9`  
		Last Modified: Wed, 05 Aug 2026 00:18:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:c7dd730508aeabcac1c265293d5bc015e5ae7046aeb063bd213115339b2fd8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 KB (12939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56bae3ebbec0c19cefffe8741bbca4a009d40232400edecf40c657810d63ab6`

```dockerfile
```

-	Layers:
	-	`sha256:38767cbf30956619f91d7a21aca9c92da77f3688b0c2bf5a408ab02586f537a5`  
		Last Modified: Wed, 05 Aug 2026 00:18:25 GMT  
		Size: 12.9 KB (12939 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.8`

```console
$ docker pull nim@sha256:c68bbdbdc50a08cb069226095079ebb468d0e5b704bf64b4c9c2b4aa3ffa1efc
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
$ docker pull nim@sha256:8a4f240e573373aabd85583541492b20a1a1e996796318a13c48bc77454c30bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177247687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45abfab5fb6a7892428417b650838b26f00e64fc04b46ed362f2d294450bf45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:37 GMT
ENV NIM_VERSION=2.2.8
# Wed, 05 Aug 2026 00:22:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:37 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:39 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330b29ae9cf4c57b720dc2c4d84df2347655f4e729a132fac12a6079b4b1071a`  
		Last Modified: Wed, 05 Aug 2026 00:22:58 GMT  
		Size: 119.7 MB (119719014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c671a228a0dc8b3e6a23b27dc1f3214d2474e2d98dc76d3f5276e65533af5a`  
		Last Modified: Wed, 05 Aug 2026 00:22:56 GMT  
		Size: 29.3 MB (29295920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69825c820b64e69d8e501aec4626dfee04807862e0f165eaba125eee9b41f1d7`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:1697b004a06e6fc45bff313dfd11da7f7892ff445040a2d3081a00a7a8d1da8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea62439f8cf10296c744d2600daa4ec36ac66ddfc1cd954e998c2ecf4e42a8d`

```dockerfile
```

-	Layers:
	-	`sha256:138d71bbaa3362e23652a73b26218c091a90b81e885fe9a0a7e44921b658e17a`  
		Last Modified: Wed, 05 Aug 2026 00:22:55 GMT  
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
$ docker pull nim@sha256:4711f8cca0892c343a1d273827cf333da9e2cdbfb9df5deecd23098e7b8ff0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170522922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ed3e60eac5e50df5b34cff4a2dc364a0d85955bf1db00fd0ed6cf0010eec0c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:20 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:20 GMT
ENV NIM_VERSION=2.2.8
# Wed, 05 Aug 2026 00:22:20 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:20 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:20 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:21 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:22 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff7d3427767c14b318b2163ddce388935b3d3a1730b7f9da6e94d39e77941a`  
		Last Modified: Wed, 05 Aug 2026 00:22:40 GMT  
		Size: 113.8 MB (113797057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec03eb346bb1d5ded908728e806ad9672b23e326cfe2956cc3e737093eb05d3`  
		Last Modified: Wed, 05 Aug 2026 00:22:38 GMT  
		Size: 28.6 MB (28608500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4d9f2b28fff7794c605f895ad50c6ad2d869751f7251fe2cfd36f1754f87ff`  
		Last Modified: Wed, 05 Aug 2026 00:22:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:980be57f839ce13ded3c3b221fd21f6617db68ea8e4ea7fcfba6101c79d71d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc5a14c68be6777420c5e9998882e811a0bdc24f842f8ca811d7d6bfce680da`

```dockerfile
```

-	Layers:
	-	`sha256:9e1f866ef3830443146d4f1b6a5ca94ea5afdfe2933f2c219fc6ebe013c7d0d7`  
		Last Modified: Wed, 05 Aug 2026 00:22:37 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; 386

```console
$ docker pull nim@sha256:62ae12d94ffde7a8e28df53c0b3841fdfc2524c622486fecab49096a660c15a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178789700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2778a5a24ea6cb6e950b74f1f18251e29f6faf1422b16aad8f4468e97f07b99`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:03 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:03 GMT
ENV NIM_VERSION=2.2.8
# Wed, 05 Aug 2026 00:18:03 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:03 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:18:03 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:18:05 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:18:05 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:18:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13585dfc00f648d32ac0d9983b38e4e7ddcd9ed7cb35a3822aefdcd3979399b2`  
		Last Modified: Wed, 05 Aug 2026 00:18:22 GMT  
		Size: 118.7 MB (118715132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcff363f0762255a304dad2d7f7d74cddcb6de9509448b129a0d4fa72448e467`  
		Last Modified: Wed, 05 Aug 2026 00:18:20 GMT  
		Size: 30.9 MB (30853428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7791604dfb725e5526b6fb5f333ac796229776f9fbd597cb60afc74185d84dab`  
		Last Modified: Wed, 05 Aug 2026 00:18:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:ec7424f7c06d518561797a0f34334ef64b3b78400b5c426748a1785a5b4b5f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17da993136a937f6ae4d64869935d4be5f9e223b611528054da64aedc8e838f9`

```dockerfile
```

-	Layers:
	-	`sha256:752698a88dd7e660f7dd45f3249f581a97abdd0ab89c1b7dce6a7d276f96bfb9`  
		Last Modified: Wed, 05 Aug 2026 00:18:19 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:d03f5aae19b259019b3bcad828cd178c6c05ed0e460b182417d4b5e532de5df0
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
$ docker pull nim@sha256:1b746411997a9897140b17ccb7a4686c72ab8779d4330de59c4139be19f9e659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbda0db405ebfc31259e94e9d55450e5759ffa442501c857cdc01bfcb3b3766`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:22:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:01 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:22:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:22:03 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:22:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815ca94413da89169927acedc8c4bc3fa47ae555849ebfd75c554d047e4187a`  
		Last Modified: Wed, 05 Aug 2026 00:22:21 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04b47ad0c57828e855d78445a8ca7f1d01ec40ecf1d56218ecc7b291e9e6aa`  
		Last Modified: Wed, 05 Aug 2026 00:22:19 GMT  
		Size: 30.2 MB (30189595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1369c73d30c50ce56c035241f97751dffd02c5958536b51f8a9da1cb882a83da`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:d90dd19ec43a0ecf5b90e132854a186692077c4b0e8c47d3abb6e8dbc8d01426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67444f9f87856c891318b514e64155844115d61190ddff69b5cc7c66b3f716fe`

```dockerfile
```

-	Layers:
	-	`sha256:24f06cb51736c72bea417cc6fff27eb0739b664ff971afe19478fadc2a3cd014`  
		Last Modified: Wed, 05 Aug 2026 00:22:17 GMT  
		Size: 14.4 KB (14447 bytes)  
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
$ docker pull nim@sha256:2da6119b2f2987699495848dfef33a815f4ffa7d12ec47bf2f68d2234cc4b168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171405391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9461622abb700304f2c41fa48a201965bc15a3ca61c486f565e62243df3f427a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:21:51 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:21:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:21:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:21:53 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:21:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba66ace9b49841db984712fa48760806c53fbb8e706c17b7418294121f429eea`  
		Last Modified: Wed, 05 Aug 2026 00:22:10 GMT  
		Size: 113.8 MB (113796164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c80a5e57b96d54d2c6649b1cd473c53d44b14f8e4d427f5704c71aa2b3e5fe`  
		Last Modified: Wed, 05 Aug 2026 00:22:08 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae72853ec8ae8f30345a0b6730763aeb4dae72e956ce0780299586d2e478442`  
		Last Modified: Wed, 05 Aug 2026 00:22:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:232513962bca166bbd545f6784a5393681d5b79c6ffe6060a70c629040dc8da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d770f8fe93057d35d18d8a3e6bf46c89bdc84899d52c5f1118d5e27a837b0ede`

```dockerfile
```

-	Layers:
	-	`sha256:67747703979f0fec9a52d2bbe2604c1f7b04449858ba00f2fd4c6f4234f88bf9`  
		Last Modified: Wed, 05 Aug 2026 00:22:06 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:3424c2920b1068bb7093286a4df3988e85334640643d07f02603a94b9e2a06b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179736663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee60e1ad4d1108e7c773dc2536a516b824665d7f9fde4207ee5c6f80622edbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:15:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:15:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:15:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2a15aa9a7f9a30dbbe5e061a2a140437ca9514ca19208a180ee59e009e88fb`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 118.7 MB (118714849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423c478109ff4dc24d082018327de1145619b23fb17cf3e3cb5c314ed8bf2feb`  
		Last Modified: Wed, 05 Aug 2026 00:15:45 GMT  
		Size: 31.8 MB (31800675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a77efef3c87802c26d91f5119a92bb86a5e17ba8ee28724c3284eab53d15a5`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:9e41813ed40eb552112102a5872cebbf69d9f33bf93c7af717dd65e71f9d8982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984acbedbf0870e568eeed2e186dcc2d55723eb2ed2e7952867b3d7a8d984cda`

```dockerfile
```

-	Layers:
	-	`sha256:0c0274e2b217abd77f3216317126cb7cb060a612bfd476effd23c83366f54040`  
		Last Modified: Wed, 05 Aug 2026 00:15:43 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json
