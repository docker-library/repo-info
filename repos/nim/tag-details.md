<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nim`

-	[`nim:2`](#nim2)
-	[`nim:2.0`](#nim20)
-	[`nim:2.0.14`](#nim2014)
-	[`nim:2.2`](#nim22)
-	[`nim:2.2.12`](#nim2212)
-	[`nim:latest`](#nimlatest)

## `nim:2`

```console
$ docker pull nim@sha256:37cc7ec9ad0a12dd0a1968a760b0c97b8cbf01369838f5bdf8534b595d2deb97
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
$ docker pull nim@sha256:c44fbb9b352d6b0d93b113f20f01562293f4680be8c036f7094f8875f1232279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181191705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0668467627d249514926f9759a603d947fca84ff972e8a07112c2b2419c5a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:32 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddd9840cf90de849d1dbefadf3c2ecabac070bee12985c97c0045855469b340`  
		Last Modified: Tue, 06 Oct 2026 01:20:50 GMT  
		Size: 121.8 MB (121838165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35dff30b608d9e577fc3046ddd3145840772b5bb1e60a3685d18db356d98b83`  
		Last Modified: Tue, 06 Oct 2026 01:20:48 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3730f092bc791293b08150756878366ed424a725f37ea2f3787611c6da523`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:984dd06e98a8dd7bbcefad5ddc4b9be7899c6c241d275619995bcd8e57c52b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6fb3ee01278c2693c6ca5a418a88afb893994b00a7e0d932e33f69906ab440`

```dockerfile
```

-	Layers:
	-	`sha256:eb0d37c44fa1865356733d0f888733deff54203c74f4d7eecdb0489f88aa8ee8`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm variant v7

```console
$ docker pull nim@sha256:5892f31236809ff65579ef864cc4077e1d75426465c32a0d5f50a080b17a1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146618714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfc782aa86b423637abffe9d9e5582f8637879d431a9e22468c6b2ebd757c9e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:24:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:24:30 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:24:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed22fb5a0e8c50d7641b5361507e7055a53389b6c695f5023d155de9536af6`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 91.1 MB (91101937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d944a30f4cbd1c68707259d0b64ce8e21c9462cb6a6f77d56ec3d240f41352`  
		Last Modified: Tue, 06 Oct 2026 01:24:43 GMT  
		Size: 31.6 MB (31560041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968c19a52857dc65acec55e04b4476580443f7ba8b2433004455c928021f78d7`  
		Last Modified: Tue, 06 Oct 2026 01:24:42 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:12dfe2b3e88ead6ecb0ecc6c7d8e3f1b8cc75f9d289b7f079c531a5fc56d5de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5235fbe20b370c43ec7e97bf645f38b5784f0b245b0e6f3ceb32add4e25aed30`

```dockerfile
```

-	Layers:
	-	`sha256:685d1713b21c1e4403728052b5002b41b70a2febc1e1e9a7b57a76c88534e078`  
		Last Modified: Tue, 06 Oct 2026 01:24:41 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:b363fb6dcb804178f9a639613022b05ce1796978d878f2991a39737b4647f9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174537113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a309a09236a56f41a5555a3ce44cc85710f2be5d13ca7033bb1faf0bf48097da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:41 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c03b34e80c6e09fba8e661209aca72bf5d14e96ab5c735c799ce6bbb78f93a4`  
		Last Modified: Tue, 06 Oct 2026 01:20:58 GMT  
		Size: 115.9 MB (115884374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fb3bd69b2da957ebe679698f8543bbb2a7ded0112a96903cf32fcefce89767`  
		Last Modified: Tue, 06 Oct 2026 01:20:57 GMT  
		Size: 30.5 MB (30515395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad7569a7da27d36120df8ec3af770b5d73cb9d9a511512fb8e711f4ffb67852`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:10324ac6108cc7ebd1a5479e1b428247570d659146d55198006f6b8a53e024af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7860fecc25fb89c93940f7e9598e6e046266bc1b73e0a75c956aaa722861c3`

```dockerfile
```

-	Layers:
	-	`sha256:2f4c996c51d6b665e7944a405bbc41dc78661d20f331605472facf68abe63afb`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:52ce6240015a32b0e0cb5282292b72710c38c90267b819fb4f9c2a5e9d0573dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183001561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d25696f73e70a1586a11dc46dfb9909f8cf52e3bc74805771f84dba3d044b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:44 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:18:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:18:47 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:18:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac10162fb3161e10b53039787bbdb7e4b3f818bca04352a05758b7ca1909fcb`  
		Last Modified: Tue, 06 Oct 2026 01:19:07 GMT  
		Size: 121.0 MB (120979061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e93226be4ee0986619e05070bd5a81fcd082b89937a24810f121798f501aa61`  
		Last Modified: Tue, 06 Oct 2026 01:19:04 GMT  
		Size: 32.8 MB (32782962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9715591f1815626e5d0c255eff89f5574427494442a0e316a55a15cb77a0c1`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:0e67842a2f1b0c3b4921ccad0eaf8751a66719ea7b96de2dfbbb5ed5f53860f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377ddc7fbd0fb81f569293bfb9e8c7d36660d5526056596e2d954dd84c5cc897`

```dockerfile
```

-	Layers:
	-	`sha256:28ebcceb53c6dd3d4b302c56d90d428987b51fe7a28dad6ef706b4f9a745ab56`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

```console
$ docker pull nim@sha256:d909c7cf2d9e42f6b358c6c16c9d7776899fb0b2c6bf8dd7e3376cdeb698e50b
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
$ docker pull nim@sha256:624da9f6705012a469035d6b1d735687265d9288ab6b702979e12c896113adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176349722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438634784d3fbe42b4e345aa440c2a495817b054fd97220369da594f7b5bc2c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:15:06 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:15:06 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:15:06 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:15:06 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:15:06 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:15:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:15:08 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:15:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d0099528d6913117c98531b97fc4f094a2ac4e9e64f682571b34e9a4b94d18`  
		Last Modified: Tue, 06 Oct 2026 01:15:28 GMT  
		Size: 121.8 MB (121838258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6443520acc0c4d11e2e289608e79005e01b9dc31e138128dbac6bbff5e036fa`  
		Last Modified: Tue, 06 Oct 2026 01:15:26 GMT  
		Size: 26.3 MB (26261976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245cae392f4adc8b03e028f0be0cbde9ab73a6d23c4a8f252069a0092b24c482`  
		Last Modified: Tue, 06 Oct 2026 01:15:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:ae5363ef73e9d45c20764c2fde52981a4e7328cfc9dc4e0a868a2e76038f1592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad35d3a6598f95dc4596d59a369cec41fc29d7e0e068f9a9edd01673b80c4e7`

```dockerfile
```

-	Layers:
	-	`sha256:b9d5eae018c652bdb0ca803037c397e48922f9b09dda65c30c1df9e5c5f01d2e`  
		Last Modified: Tue, 06 Oct 2026 01:15:24 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:2df72bf0837f2fb15cd7dc1841c87bceefe7ba6d88790fb79cfdbf3ba317b0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141293206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc48f93df700bd34b1223bd52e87e27e1387d387b4db307bb152eabadd21f4e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:30 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:24:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:24:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:24:32 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:24:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316d616e28ea5a4110ecaa05e90f3e833429eeb72296c248a07e43f2a4ae8454`  
		Last Modified: Tue, 06 Oct 2026 01:24:47 GMT  
		Size: 91.1 MB (91102322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210c4e808f73f9fcce67dee3996cd0e4c631a5e729d1ea81400bbd622f05799f`  
		Last Modified: Tue, 06 Oct 2026 01:24:45 GMT  
		Size: 26.2 MB (26234149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63997290faf5bfc53fe8a0b0ffc6b061913c8d3672b9bad2a0eea2a2e14f97b2`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:ac96487c5f86becd5044099398b7cefb284b3a3c57c7a939c0f58f17d7cf6034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e4bd77013ab6f7c9bd765a9d89d03addd0a7d81bd876192fde1140777a7ea`

```dockerfile
```

-	Layers:
	-	`sha256:67a9d5d32925dd6dca618c8084777bcf987b0da5aa3d6c9e5ab241a5457f2d24`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 13.9 KB (13946 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:9f93be1303be12c663532d129d304f3e3afa975e1b8403d4c3128196a20b3ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169621226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddba25273bf118dae525e5baa3b0798cdd4507ea166905da8831c353612f1365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:42 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:20:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:44 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80007fed86375a01796fdbd3e4773b4309fba6c35da0a69633092fd651e756a`  
		Last Modified: Tue, 06 Oct 2026 01:21:03 GMT  
		Size: 115.9 MB (115884166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01d7482e72783941f582edfd7bb87c06f79859ab31075aa0ed763ee0a0508d8`  
		Last Modified: Tue, 06 Oct 2026 01:21:01 GMT  
		Size: 25.6 MB (25599716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e6ebaf3e464eb1c767e517ad356d8bfb650c234f46bc793cb427eea71ec82f`  
		Last Modified: Tue, 06 Oct 2026 01:21:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:536de6a1c57215008a58762b35081861e893e19a42839865b2ad3edd849af3d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a639cc6ef48c620732fb908d46998bab6d7a4f364d853591b681a0dcf90d9fb8`

```dockerfile
```

-	Layers:
	-	`sha256:f988c3e99f392f00baa246ff93e7f5164ced74d177e8197941a984706879e393`  
		Last Modified: Tue, 06 Oct 2026 01:21:00 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; 386

```console
$ docker pull nim@sha256:33727ed87b08d1055bb9cc0fdc951592fd4e0a5eeb5a7108320a64ad76a73996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177782922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259a646fd505fd9c37915f93949eab82b413baed6d31c7d741c0491b05e5d640`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:42 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:18:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:18:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:18:44 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ddd4104231975eae7ae9c48dc5af7af4a5374f523cfd3d93e8f17b7622cde5`  
		Last Modified: Tue, 06 Oct 2026 01:19:01 GMT  
		Size: 121.0 MB (120978935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ba4f32117d2afbd138f50e276348c86e87c8a93d314da48860633fd089595d`  
		Last Modified: Tue, 06 Oct 2026 01:18:59 GMT  
		Size: 27.6 MB (27564450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695671adf472c2f74a27f63bb6e6a3875f1fe25bf3613aecdabe9aaa6d017a00`  
		Last Modified: Tue, 06 Oct 2026 01:18:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:1a061839599d137694920e7fafcbc410e40d6b4d977c40265b53496180fc39bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515fd7cfce37d67e89c7d403e72432aa17c5da73260e3856a9f81566ff2fd5ed`

```dockerfile
```

-	Layers:
	-	`sha256:b5a4d4d86b7c708d2dd667a3ba03c1e55a0a0eacb37fa66d9d1a840239c67f84`  
		Last Modified: Tue, 06 Oct 2026 01:18:58 GMT  
		Size: 13.8 KB (13849 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.14`

```console
$ docker pull nim@sha256:d909c7cf2d9e42f6b358c6c16c9d7776899fb0b2c6bf8dd7e3376cdeb698e50b
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
$ docker pull nim@sha256:624da9f6705012a469035d6b1d735687265d9288ab6b702979e12c896113adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176349722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438634784d3fbe42b4e345aa440c2a495817b054fd97220369da594f7b5bc2c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:15:06 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:15:06 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:15:06 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:15:06 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:15:06 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:15:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:15:08 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:15:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d0099528d6913117c98531b97fc4f094a2ac4e9e64f682571b34e9a4b94d18`  
		Last Modified: Tue, 06 Oct 2026 01:15:28 GMT  
		Size: 121.8 MB (121838258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6443520acc0c4d11e2e289608e79005e01b9dc31e138128dbac6bbff5e036fa`  
		Last Modified: Tue, 06 Oct 2026 01:15:26 GMT  
		Size: 26.3 MB (26261976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245cae392f4adc8b03e028f0be0cbde9ab73a6d23c4a8f252069a0092b24c482`  
		Last Modified: Tue, 06 Oct 2026 01:15:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:ae5363ef73e9d45c20764c2fde52981a4e7328cfc9dc4e0a868a2e76038f1592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad35d3a6598f95dc4596d59a369cec41fc29d7e0e068f9a9edd01673b80c4e7`

```dockerfile
```

-	Layers:
	-	`sha256:b9d5eae018c652bdb0ca803037c397e48922f9b09dda65c30c1df9e5c5f01d2e`  
		Last Modified: Tue, 06 Oct 2026 01:15:24 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:2df72bf0837f2fb15cd7dc1841c87bceefe7ba6d88790fb79cfdbf3ba317b0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141293206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc48f93df700bd34b1223bd52e87e27e1387d387b4db307bb152eabadd21f4e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:30 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:24:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:24:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:24:32 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:24:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316d616e28ea5a4110ecaa05e90f3e833429eeb72296c248a07e43f2a4ae8454`  
		Last Modified: Tue, 06 Oct 2026 01:24:47 GMT  
		Size: 91.1 MB (91102322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210c4e808f73f9fcce67dee3996cd0e4c631a5e729d1ea81400bbd622f05799f`  
		Last Modified: Tue, 06 Oct 2026 01:24:45 GMT  
		Size: 26.2 MB (26234149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63997290faf5bfc53fe8a0b0ffc6b061913c8d3672b9bad2a0eea2a2e14f97b2`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:ac96487c5f86becd5044099398b7cefb284b3a3c57c7a939c0f58f17d7cf6034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8e4bd77013ab6f7c9bd765a9d89d03addd0a7d81bd876192fde1140777a7ea`

```dockerfile
```

-	Layers:
	-	`sha256:67a9d5d32925dd6dca618c8084777bcf987b0da5aa3d6c9e5ab241a5457f2d24`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 13.9 KB (13946 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:9f93be1303be12c663532d129d304f3e3afa975e1b8403d4c3128196a20b3ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169621226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddba25273bf118dae525e5baa3b0798cdd4507ea166905da8831c353612f1365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:42 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:20:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:44 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80007fed86375a01796fdbd3e4773b4309fba6c35da0a69633092fd651e756a`  
		Last Modified: Tue, 06 Oct 2026 01:21:03 GMT  
		Size: 115.9 MB (115884166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01d7482e72783941f582edfd7bb87c06f79859ab31075aa0ed763ee0a0508d8`  
		Last Modified: Tue, 06 Oct 2026 01:21:01 GMT  
		Size: 25.6 MB (25599716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e6ebaf3e464eb1c767e517ad356d8bfb650c234f46bc793cb427eea71ec82f`  
		Last Modified: Tue, 06 Oct 2026 01:21:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:536de6a1c57215008a58762b35081861e893e19a42839865b2ad3edd849af3d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a639cc6ef48c620732fb908d46998bab6d7a4f364d853591b681a0dcf90d9fb8`

```dockerfile
```

-	Layers:
	-	`sha256:f988c3e99f392f00baa246ff93e7f5164ced74d177e8197941a984706879e393`  
		Last Modified: Tue, 06 Oct 2026 01:21:00 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; 386

```console
$ docker pull nim@sha256:33727ed87b08d1055bb9cc0fdc951592fd4e0a5eeb5a7108320a64ad76a73996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177782922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259a646fd505fd9c37915f93949eab82b413baed6d31c7d741c0491b05e5d640`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:42 GMT
ENV NIM_VERSION=2.0.14
# Tue, 06 Oct 2026 01:18:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:18:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:18:44 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ddd4104231975eae7ae9c48dc5af7af4a5374f523cfd3d93e8f17b7622cde5`  
		Last Modified: Tue, 06 Oct 2026 01:19:01 GMT  
		Size: 121.0 MB (120978935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ba4f32117d2afbd138f50e276348c86e87c8a93d314da48860633fd089595d`  
		Last Modified: Tue, 06 Oct 2026 01:18:59 GMT  
		Size: 27.6 MB (27564450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695671adf472c2f74a27f63bb6e6a3875f1fe25bf3613aecdabe9aaa6d017a00`  
		Last Modified: Tue, 06 Oct 2026 01:18:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:1a061839599d137694920e7fafcbc410e40d6b4d977c40265b53496180fc39bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515fd7cfce37d67e89c7d403e72432aa17c5da73260e3856a9f81566ff2fd5ed`

```dockerfile
```

-	Layers:
	-	`sha256:b5a4d4d86b7c708d2dd667a3ba03c1e55a0a0eacb37fa66d9d1a840239c67f84`  
		Last Modified: Tue, 06 Oct 2026 01:18:58 GMT  
		Size: 13.8 KB (13849 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

```console
$ docker pull nim@sha256:37cc7ec9ad0a12dd0a1968a760b0c97b8cbf01369838f5bdf8534b595d2deb97
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
$ docker pull nim@sha256:c44fbb9b352d6b0d93b113f20f01562293f4680be8c036f7094f8875f1232279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181191705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0668467627d249514926f9759a603d947fca84ff972e8a07112c2b2419c5a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:32 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddd9840cf90de849d1dbefadf3c2ecabac070bee12985c97c0045855469b340`  
		Last Modified: Tue, 06 Oct 2026 01:20:50 GMT  
		Size: 121.8 MB (121838165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35dff30b608d9e577fc3046ddd3145840772b5bb1e60a3685d18db356d98b83`  
		Last Modified: Tue, 06 Oct 2026 01:20:48 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3730f092bc791293b08150756878366ed424a725f37ea2f3787611c6da523`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:984dd06e98a8dd7bbcefad5ddc4b9be7899c6c241d275619995bcd8e57c52b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6fb3ee01278c2693c6ca5a418a88afb893994b00a7e0d932e33f69906ab440`

```dockerfile
```

-	Layers:
	-	`sha256:eb0d37c44fa1865356733d0f888733deff54203c74f4d7eecdb0489f88aa8ee8`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:5892f31236809ff65579ef864cc4077e1d75426465c32a0d5f50a080b17a1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146618714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfc782aa86b423637abffe9d9e5582f8637879d431a9e22468c6b2ebd757c9e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:24:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:24:30 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:24:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed22fb5a0e8c50d7641b5361507e7055a53389b6c695f5023d155de9536af6`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 91.1 MB (91101937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d944a30f4cbd1c68707259d0b64ce8e21c9462cb6a6f77d56ec3d240f41352`  
		Last Modified: Tue, 06 Oct 2026 01:24:43 GMT  
		Size: 31.6 MB (31560041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968c19a52857dc65acec55e04b4476580443f7ba8b2433004455c928021f78d7`  
		Last Modified: Tue, 06 Oct 2026 01:24:42 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:12dfe2b3e88ead6ecb0ecc6c7d8e3f1b8cc75f9d289b7f079c531a5fc56d5de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5235fbe20b370c43ec7e97bf645f38b5784f0b245b0e6f3ceb32add4e25aed30`

```dockerfile
```

-	Layers:
	-	`sha256:685d1713b21c1e4403728052b5002b41b70a2febc1e1e9a7b57a76c88534e078`  
		Last Modified: Tue, 06 Oct 2026 01:24:41 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:b363fb6dcb804178f9a639613022b05ce1796978d878f2991a39737b4647f9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174537113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a309a09236a56f41a5555a3ce44cc85710f2be5d13ca7033bb1faf0bf48097da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:41 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c03b34e80c6e09fba8e661209aca72bf5d14e96ab5c735c799ce6bbb78f93a4`  
		Last Modified: Tue, 06 Oct 2026 01:20:58 GMT  
		Size: 115.9 MB (115884374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fb3bd69b2da957ebe679698f8543bbb2a7ded0112a96903cf32fcefce89767`  
		Last Modified: Tue, 06 Oct 2026 01:20:57 GMT  
		Size: 30.5 MB (30515395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad7569a7da27d36120df8ec3af770b5d73cb9d9a511512fb8e711f4ffb67852`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:10324ac6108cc7ebd1a5479e1b428247570d659146d55198006f6b8a53e024af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7860fecc25fb89c93940f7e9598e6e046266bc1b73e0a75c956aaa722861c3`

```dockerfile
```

-	Layers:
	-	`sha256:2f4c996c51d6b665e7944a405bbc41dc78661d20f331605472facf68abe63afb`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:52ce6240015a32b0e0cb5282292b72710c38c90267b819fb4f9c2a5e9d0573dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183001561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d25696f73e70a1586a11dc46dfb9909f8cf52e3bc74805771f84dba3d044b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:44 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:18:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:18:47 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:18:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac10162fb3161e10b53039787bbdb7e4b3f818bca04352a05758b7ca1909fcb`  
		Last Modified: Tue, 06 Oct 2026 01:19:07 GMT  
		Size: 121.0 MB (120979061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e93226be4ee0986619e05070bd5a81fcd082b89937a24810f121798f501aa61`  
		Last Modified: Tue, 06 Oct 2026 01:19:04 GMT  
		Size: 32.8 MB (32782962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9715591f1815626e5d0c255eff89f5574427494442a0e316a55a15cb77a0c1`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:0e67842a2f1b0c3b4921ccad0eaf8751a66719ea7b96de2dfbbb5ed5f53860f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377ddc7fbd0fb81f569293bfb9e8c7d36660d5526056596e2d954dd84c5cc897`

```dockerfile
```

-	Layers:
	-	`sha256:28ebcceb53c6dd3d4b302c56d90d428987b51fe7a28dad6ef706b4f9a745ab56`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.12`

```console
$ docker pull nim@sha256:37cc7ec9ad0a12dd0a1968a760b0c97b8cbf01369838f5bdf8534b595d2deb97
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

### `nim:2.2.12` - linux; amd64

```console
$ docker pull nim@sha256:c44fbb9b352d6b0d93b113f20f01562293f4680be8c036f7094f8875f1232279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181191705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0668467627d249514926f9759a603d947fca84ff972e8a07112c2b2419c5a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:32 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddd9840cf90de849d1dbefadf3c2ecabac070bee12985c97c0045855469b340`  
		Last Modified: Tue, 06 Oct 2026 01:20:50 GMT  
		Size: 121.8 MB (121838165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35dff30b608d9e577fc3046ddd3145840772b5bb1e60a3685d18db356d98b83`  
		Last Modified: Tue, 06 Oct 2026 01:20:48 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3730f092bc791293b08150756878366ed424a725f37ea2f3787611c6da523`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:984dd06e98a8dd7bbcefad5ddc4b9be7899c6c241d275619995bcd8e57c52b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6fb3ee01278c2693c6ca5a418a88afb893994b00a7e0d932e33f69906ab440`

```dockerfile
```

-	Layers:
	-	`sha256:eb0d37c44fa1865356733d0f888733deff54203c74f4d7eecdb0489f88aa8ee8`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; arm variant v7

```console
$ docker pull nim@sha256:5892f31236809ff65579ef864cc4077e1d75426465c32a0d5f50a080b17a1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146618714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfc782aa86b423637abffe9d9e5582f8637879d431a9e22468c6b2ebd757c9e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:24:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:24:30 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:24:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed22fb5a0e8c50d7641b5361507e7055a53389b6c695f5023d155de9536af6`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 91.1 MB (91101937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d944a30f4cbd1c68707259d0b64ce8e21c9462cb6a6f77d56ec3d240f41352`  
		Last Modified: Tue, 06 Oct 2026 01:24:43 GMT  
		Size: 31.6 MB (31560041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968c19a52857dc65acec55e04b4476580443f7ba8b2433004455c928021f78d7`  
		Last Modified: Tue, 06 Oct 2026 01:24:42 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:12dfe2b3e88ead6ecb0ecc6c7d8e3f1b8cc75f9d289b7f079c531a5fc56d5de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5235fbe20b370c43ec7e97bf645f38b5784f0b245b0e6f3ceb32add4e25aed30`

```dockerfile
```

-	Layers:
	-	`sha256:685d1713b21c1e4403728052b5002b41b70a2febc1e1e9a7b57a76c88534e078`  
		Last Modified: Tue, 06 Oct 2026 01:24:41 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:b363fb6dcb804178f9a639613022b05ce1796978d878f2991a39737b4647f9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174537113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a309a09236a56f41a5555a3ce44cc85710f2be5d13ca7033bb1faf0bf48097da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:41 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c03b34e80c6e09fba8e661209aca72bf5d14e96ab5c735c799ce6bbb78f93a4`  
		Last Modified: Tue, 06 Oct 2026 01:20:58 GMT  
		Size: 115.9 MB (115884374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fb3bd69b2da957ebe679698f8543bbb2a7ded0112a96903cf32fcefce89767`  
		Last Modified: Tue, 06 Oct 2026 01:20:57 GMT  
		Size: 30.5 MB (30515395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad7569a7da27d36120df8ec3af770b5d73cb9d9a511512fb8e711f4ffb67852`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:10324ac6108cc7ebd1a5479e1b428247570d659146d55198006f6b8a53e024af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7860fecc25fb89c93940f7e9598e6e046266bc1b73e0a75c956aaa722861c3`

```dockerfile
```

-	Layers:
	-	`sha256:2f4c996c51d6b665e7944a405bbc41dc78661d20f331605472facf68abe63afb`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; 386

```console
$ docker pull nim@sha256:52ce6240015a32b0e0cb5282292b72710c38c90267b819fb4f9c2a5e9d0573dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183001561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d25696f73e70a1586a11dc46dfb9909f8cf52e3bc74805771f84dba3d044b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:44 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:18:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:18:47 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:18:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac10162fb3161e10b53039787bbdb7e4b3f818bca04352a05758b7ca1909fcb`  
		Last Modified: Tue, 06 Oct 2026 01:19:07 GMT  
		Size: 121.0 MB (120979061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e93226be4ee0986619e05070bd5a81fcd082b89937a24810f121798f501aa61`  
		Last Modified: Tue, 06 Oct 2026 01:19:04 GMT  
		Size: 32.8 MB (32782962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9715591f1815626e5d0c255eff89f5574427494442a0e316a55a15cb77a0c1`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:0e67842a2f1b0c3b4921ccad0eaf8751a66719ea7b96de2dfbbb5ed5f53860f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377ddc7fbd0fb81f569293bfb9e8c7d36660d5526056596e2d954dd84c5cc897`

```dockerfile
```

-	Layers:
	-	`sha256:28ebcceb53c6dd3d4b302c56d90d428987b51fe7a28dad6ef706b4f9a745ab56`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:37cc7ec9ad0a12dd0a1968a760b0c97b8cbf01369838f5bdf8534b595d2deb97
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
$ docker pull nim@sha256:c44fbb9b352d6b0d93b113f20f01562293f4680be8c036f7094f8875f1232279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181191705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0668467627d249514926f9759a603d947fca84ff972e8a07112c2b2419c5a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:32 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddd9840cf90de849d1dbefadf3c2ecabac070bee12985c97c0045855469b340`  
		Last Modified: Tue, 06 Oct 2026 01:20:50 GMT  
		Size: 121.8 MB (121838165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35dff30b608d9e577fc3046ddd3145840772b5bb1e60a3685d18db356d98b83`  
		Last Modified: Tue, 06 Oct 2026 01:20:48 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3730f092bc791293b08150756878366ed424a725f37ea2f3787611c6da523`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:984dd06e98a8dd7bbcefad5ddc4b9be7899c6c241d275619995bcd8e57c52b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6fb3ee01278c2693c6ca5a418a88afb893994b00a7e0d932e33f69906ab440`

```dockerfile
```

-	Layers:
	-	`sha256:eb0d37c44fa1865356733d0f888733deff54203c74f4d7eecdb0489f88aa8ee8`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm variant v7

```console
$ docker pull nim@sha256:5892f31236809ff65579ef864cc4077e1d75426465c32a0d5f50a080b17a1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146618714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfc782aa86b423637abffe9d9e5582f8637879d431a9e22468c6b2ebd757c9e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:24:27 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:24:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:24:30 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:24:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed22fb5a0e8c50d7641b5361507e7055a53389b6c695f5023d155de9536af6`  
		Last Modified: Tue, 06 Oct 2026 01:24:44 GMT  
		Size: 91.1 MB (91101937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d944a30f4cbd1c68707259d0b64ce8e21c9462cb6a6f77d56ec3d240f41352`  
		Last Modified: Tue, 06 Oct 2026 01:24:43 GMT  
		Size: 31.6 MB (31560041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968c19a52857dc65acec55e04b4476580443f7ba8b2433004455c928021f78d7`  
		Last Modified: Tue, 06 Oct 2026 01:24:42 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:12dfe2b3e88ead6ecb0ecc6c7d8e3f1b8cc75f9d289b7f079c531a5fc56d5de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5235fbe20b370c43ec7e97bf645f38b5784f0b245b0e6f3ceb32add4e25aed30`

```dockerfile
```

-	Layers:
	-	`sha256:685d1713b21c1e4403728052b5002b41b70a2febc1e1e9a7b57a76c88534e078`  
		Last Modified: Tue, 06 Oct 2026 01:24:41 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:b363fb6dcb804178f9a639613022b05ce1796978d878f2991a39737b4647f9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174537113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a309a09236a56f41a5555a3ce44cc85710f2be5d13ca7033bb1faf0bf48097da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:39 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:20:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:20:41 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:20:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c03b34e80c6e09fba8e661209aca72bf5d14e96ab5c735c799ce6bbb78f93a4`  
		Last Modified: Tue, 06 Oct 2026 01:20:58 GMT  
		Size: 115.9 MB (115884374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fb3bd69b2da957ebe679698f8543bbb2a7ded0112a96903cf32fcefce89767`  
		Last Modified: Tue, 06 Oct 2026 01:20:57 GMT  
		Size: 30.5 MB (30515395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad7569a7da27d36120df8ec3af770b5d73cb9d9a511512fb8e711f4ffb67852`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:10324ac6108cc7ebd1a5479e1b428247570d659146d55198006f6b8a53e024af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7860fecc25fb89c93940f7e9598e6e046266bc1b73e0a75c956aaa722861c3`

```dockerfile
```

-	Layers:
	-	`sha256:2f4c996c51d6b665e7944a405bbc41dc78661d20f331605472facf68abe63afb`  
		Last Modified: Tue, 06 Oct 2026 01:20:56 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:52ce6240015a32b0e0cb5282292b72710c38c90267b819fb4f9c2a5e9d0573dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183001561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d25696f73e70a1586a11dc46dfb9909f8cf52e3bc74805771f84dba3d044b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:44 GMT
ENV NIM_VERSION=2.2.12
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:44 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 01:18:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 06 Oct 2026 01:18:47 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:18:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac10162fb3161e10b53039787bbdb7e4b3f818bca04352a05758b7ca1909fcb`  
		Last Modified: Tue, 06 Oct 2026 01:19:07 GMT  
		Size: 121.0 MB (120979061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e93226be4ee0986619e05070bd5a81fcd082b89937a24810f121798f501aa61`  
		Last Modified: Tue, 06 Oct 2026 01:19:04 GMT  
		Size: 32.8 MB (32782962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9715591f1815626e5d0c255eff89f5574427494442a0e316a55a15cb77a0c1`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:0e67842a2f1b0c3b4921ccad0eaf8751a66719ea7b96de2dfbbb5ed5f53860f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377ddc7fbd0fb81f569293bfb9e8c7d36660d5526056596e2d954dd84c5cc897`

```dockerfile
```

-	Layers:
	-	`sha256:28ebcceb53c6dd3d4b302c56d90d428987b51fe7a28dad6ef706b4f9a745ab56`  
		Last Modified: Tue, 06 Oct 2026 01:19:03 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json
