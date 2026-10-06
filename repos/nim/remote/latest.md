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
