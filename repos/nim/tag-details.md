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
$ docker pull nim@sha256:f4eb9da1d13d84d5d2ceeb0eb8b206fe4e07ebe9afc7eb088b1f22d091463f1b
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
$ docker pull nim@sha256:1e3bb13333a2b1fdd80ab0fa127471f2e6f93230a4ae3ed2849f707bd2cd3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178904527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d38e42da9d985d9252a3e340d9310f10fc530b177aa064dd9996529bce083`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:33 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d6e9ef89ceab6a7fdb574c844ea5c58d2a25cf70fa7445acbf5627c904350`  
		Last Modified: Wed, 28 Oct 2026 01:18:51 GMT  
		Size: 119.6 MB (119552871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f766b18c690a4801b94e67edbea26484b3a04165ed86f6a7119474be1d3d354`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646105a729b717d20de9e8b7d6080170058c9d4dd1552f4ea26d52a4b103a5e`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:43c223d4f18d74314c2e898167f592c53a390ccc2da0f5c09f9b324adc312373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98eaaddd41df50567faa6ddb5ff39093bf245f6fc229879a21dbd01ba2ac4de4`

```dockerfile
```

-	Layers:
	-	`sha256:57e82a682e776ac78be336563d61c1adf094db64796bc23d1e43ebbd98380e2c`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm variant v7

```console
$ docker pull nim@sha256:e7093620e0ca6704542e7b34a5146c9552db976a916418c3e9b6925c6cba6fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144532763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2ce1f3dfb879870a25016e06ed13239ac0651b21d572ac85cd200785e1ea41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:24:17 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:17 GMT
ENV NIM_VERSION=2.2.12
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 00:24:20 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 21 Oct 2026 00:24:20 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:24:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd29ebfbea415eb8e8fa45dfa4dec78e4a6051a0f5806ae265052a7a91d9aba2`  
		Last Modified: Wed, 21 Oct 2026 00:24:34 GMT  
		Size: 89.0 MB (89011052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef14d3ba8e52e6feaaf77f14aa88bdbb0e7728333b146bbb0d062badd7f6ea86`  
		Last Modified: Wed, 21 Oct 2026 00:24:33 GMT  
		Size: 31.6 MB (31560058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a113ffccb35963e8e97c6735b556f4b62bd1443a462a945fb2bb5caa11445452`  
		Last Modified: Wed, 21 Oct 2026 00:24:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:6a45cd290d3ce1a6f7a7693a83e846a25c519cb4df140654ba544ab1c493b6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1eb50de67d4dc69de7c89aaf6a7167af8cf7cdc79aefcdba8da15b264363695`

```dockerfile
```

-	Layers:
	-	`sha256:6226904aa4b7dddf54bf346564c2d6d7b2681d396601cd19cb44dd6715e7cd76`  
		Last Modified: Wed, 21 Oct 2026 00:24:32 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:64825b29145e6f9dc082f76f3ee995c2db22ade9575eba798015746357b5aa5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172293387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a5c2a6e856f915751bc7a2d891d295e76723aa5ccdec6fc5a4b93e3e207b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:41 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:44 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eddd6c06ade77d759d38fee57f00229e75373cd64aca08653399bb2f9eecf4`  
		Last Modified: Wed, 28 Oct 2026 01:19:03 GMT  
		Size: 113.6 MB (113639871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b445bb6ac7285c7b8cf73ffd995da0b19d9664cdaeb862c77d7648cc39d4232c`  
		Last Modified: Wed, 28 Oct 2026 01:19:01 GMT  
		Size: 30.5 MB (30515400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd55bd8c0902b1380e676f0789614ae9905229c44f068b664c5ce26367cf47c`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:cf37af2e1b2ad86013ead89b11eb88d23a68ff834585610cb55aa00ebb31766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d48f6143c80f952552de7916b3ac913061cf44cde64dfb404c4ebef51f64a52`

```dockerfile
```

-	Layers:
	-	`sha256:e52ab404cdc34ca1563342dbe55af02e736480980a8ca66b724e902d1688371d`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:451f796e4b875f1fd4d9d30bc21d7cde04c736fe21c1912b96f6f3c95f118872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180577601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86316d9925d9ebaac6ab79c238fc231538552dcc93168e3242efdcc5fbe4fb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:07 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:16:10 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:16:10 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:16:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb7e3192c770457467d0321caa7fcc3ebb7b22829b0f73bf86e0f67b3e4ae35`  
		Last Modified: Wed, 28 Oct 2026 01:16:27 GMT  
		Size: 118.6 MB (118555721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980d72333db49d1a051af77bf846b6c7095958b5b6492a775d6c25201b0ee405`  
		Last Modified: Wed, 28 Oct 2026 01:16:25 GMT  
		Size: 32.8 MB (32782936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61985acbce6e8d96e13c4ba4225196c75bd36bad6bb43abe142dcc584a1d402`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:210af947e49cf550778d84118cd19d211d6e4eb56cbc1cfd636e1ac944fe7383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a410b16c481ead678415b1caf2afa9fca108335116ea12e6563193d958a81470`

```dockerfile
```

-	Layers:
	-	`sha256:ddf93fbd089a4f477857ccbeacc41fe42682fdee5ce1a50fd7c417fc7fd8569a`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

```console
$ docker pull nim@sha256:06909bf10bda6b8667ade68f700156f30a2c17c95f855e34cb0e784b76059b06
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
$ docker pull nim@sha256:bb54c8f5c038826d0bdc6643831074cb1aea3d2f3eb7c227cfd549d9470c6ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174061517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e75f3e7acfdfc4723052ef01320a8c3cbce64677a6fee083e09b9e17dcfb98f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:35 GMT
ENV NIM_VERSION=2.0.14
# Wed, 28 Oct 2026 01:18:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:35 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:37 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba409888d7f2fe558e851f0fe9dc15620ce68b7ea9ebfac399a75ca84bf6ce1e`  
		Last Modified: Wed, 28 Oct 2026 01:18:56 GMT  
		Size: 119.6 MB (119551940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd3957089bc8a2666b6d79896f313e757631d091f48f12415800079fbc47a66`  
		Last Modified: Wed, 28 Oct 2026 01:18:54 GMT  
		Size: 26.3 MB (26261976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6369b16d3b8333fe77a5e6518b4aaf08ba3d5bb97c599f49f8a9ca3bc476e4`  
		Last Modified: Wed, 28 Oct 2026 01:18:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:9dc2c32ed27e16ffb830620d0267ba4b7a5a9b367bdf6e9d8e6932dc2396b161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec55a3e47d019ed540e64379470b8c85b60d31320e35f7e62729b5d0e5c9de4`

```dockerfile
```

-	Layers:
	-	`sha256:1f3d8f71f4e248c4ec07ee4f5ba0d8993d948a0db8504f8e1e966ff44f0390fd`  
		Last Modified: Wed, 28 Oct 2026 01:18:52 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:dc8379d5d6b69ec2c9c0e87479dac3981ff453d4482c63f3708fb26b43f450da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139206857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3021ecd8997c2f25d2628745c0d5e6adeb670fc0fa1db8455c492a2fcfe67bb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:24:17 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:17 GMT
ENV NIM_VERSION=2.0.14
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 00:24:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 21 Oct 2026 00:24:43 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:24:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd29ebfbea415eb8e8fa45dfa4dec78e4a6051a0f5806ae265052a7a91d9aba2`  
		Last Modified: Wed, 21 Oct 2026 00:24:34 GMT  
		Size: 89.0 MB (89011052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cb31e9fa82d0c6040b44ea3bd62ed1bcf3ac9bc325e59bff6a38c24cf453fb`  
		Last Modified: Wed, 21 Oct 2026 00:24:51 GMT  
		Size: 26.2 MB (26234152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff85f2b8f394275b1184217aafac6d759aa6a62825636f80cea4907dadcddde`  
		Last Modified: Wed, 21 Oct 2026 00:24:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:6dd363cc1d6adaf6b6c9d8014d42eb04745830c737a4a6347a9e066968b89b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d61806760cbf06dd802e1f16a908a6658a0fb1297285a81275e763af09a8ac`

```dockerfile
```

-	Layers:
	-	`sha256:bfab048f5dd1c1dcd9d4d51bdf4a7a759240de067b67a20806557df9e4e2bdf5`  
		Last Modified: Wed, 21 Oct 2026 00:24:50 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:e9cd6f83db804a5d050be9c445abf465a99f453e11da5333211d4e7e0683bee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167377696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25901fbeca8d6bf66ff913faf5d18d5f4639d853313f4121cdaf38099f73cdf6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:41 GMT
ENV NIM_VERSION=2.0.14
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:43 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a081709b730b3d31dec30375efd93e33a8625b148dac57fb5cd2737870f7fb70`  
		Last Modified: Wed, 28 Oct 2026 01:19:01 GMT  
		Size: 113.6 MB (113639851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ac6879f58d288300c415695b837d9e89c4199b3261d9d4fdb3fc97b4dedbda`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 25.6 MB (25599728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f106ac538198c285b15292453e98b90f22d02622d3a7b2ece8796fa04c7b7`  
		Last Modified: Wed, 28 Oct 2026 01:18:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:b5a5f7b6cdccc20a7ba76dd1edd0b948d1e6a9d11d301b5902d571c514ff3670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf04702852e868b195c8fde797b0ba9e691f99ca316f7c827ef0492cf473b5`

```dockerfile
```

-	Layers:
	-	`sha256:dbc3faaee69d9a0a746169b478e6a717a844434c1fa5f07fbd2d0fb0932c66e6`  
		Last Modified: Wed, 28 Oct 2026 01:18:58 GMT  
		Size: 14.0 KB (13968 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; 386

```console
$ docker pull nim@sha256:27d14f44abd78c9e695b443f6d0d09401f8217a399e2d0b1a23b30715c7d4cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175359158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed11e6f1e9ed7445c03c38e754910e6465b02a18747e25750fca82dc84c73411`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:26 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:26 GMT
ENV NIM_VERSION=2.0.14
# Wed, 28 Oct 2026 01:16:26 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:26 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:16:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:16:29 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:16:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b3fb0ea8151d3ee3f520f2a67ed1b93999aa691385977d8d9952425c86f908b`  
		Last Modified: Wed, 28 Oct 2026 01:16:48 GMT  
		Size: 118.6 MB (118555765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40134f88a62c2d1fa1ab9dff882eb9a2fdef05b4a91cc903b3e02d25f928655b`  
		Last Modified: Wed, 28 Oct 2026 01:16:46 GMT  
		Size: 27.6 MB (27564450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395d4ac34197afe85256d9aed44bd52bcfd2f02315c7d0052e55aabaafbf01f`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:d910240348154895daba5a0e2c510affd31965480c4290c6c1e4e77b0c130ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617816a37c4245abecb9960000920809d96669a60b5f84cff19660a8d0f35c8`

```dockerfile
```

-	Layers:
	-	`sha256:69a5b8285bf1d2299defcc850dae3309c1cf40a4bbc9da941e719715ba8995fe`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.14`

```console
$ docker pull nim@sha256:06909bf10bda6b8667ade68f700156f30a2c17c95f855e34cb0e784b76059b06
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
$ docker pull nim@sha256:bb54c8f5c038826d0bdc6643831074cb1aea3d2f3eb7c227cfd549d9470c6ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174061517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e75f3e7acfdfc4723052ef01320a8c3cbce64677a6fee083e09b9e17dcfb98f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:35 GMT
ENV NIM_VERSION=2.0.14
# Wed, 28 Oct 2026 01:18:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:35 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:37 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba409888d7f2fe558e851f0fe9dc15620ce68b7ea9ebfac399a75ca84bf6ce1e`  
		Last Modified: Wed, 28 Oct 2026 01:18:56 GMT  
		Size: 119.6 MB (119551940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd3957089bc8a2666b6d79896f313e757631d091f48f12415800079fbc47a66`  
		Last Modified: Wed, 28 Oct 2026 01:18:54 GMT  
		Size: 26.3 MB (26261976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6369b16d3b8333fe77a5e6518b4aaf08ba3d5bb97c599f49f8a9ca3bc476e4`  
		Last Modified: Wed, 28 Oct 2026 01:18:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:9dc2c32ed27e16ffb830620d0267ba4b7a5a9b367bdf6e9d8e6932dc2396b161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec55a3e47d019ed540e64379470b8c85b60d31320e35f7e62729b5d0e5c9de4`

```dockerfile
```

-	Layers:
	-	`sha256:1f3d8f71f4e248c4ec07ee4f5ba0d8993d948a0db8504f8e1e966ff44f0390fd`  
		Last Modified: Wed, 28 Oct 2026 01:18:52 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:dc8379d5d6b69ec2c9c0e87479dac3981ff453d4482c63f3708fb26b43f450da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139206857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3021ecd8997c2f25d2628745c0d5e6adeb670fc0fa1db8455c492a2fcfe67bb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:24:17 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:17 GMT
ENV NIM_VERSION=2.0.14
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 00:24:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 21 Oct 2026 00:24:43 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:24:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd29ebfbea415eb8e8fa45dfa4dec78e4a6051a0f5806ae265052a7a91d9aba2`  
		Last Modified: Wed, 21 Oct 2026 00:24:34 GMT  
		Size: 89.0 MB (89011052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cb31e9fa82d0c6040b44ea3bd62ed1bcf3ac9bc325e59bff6a38c24cf453fb`  
		Last Modified: Wed, 21 Oct 2026 00:24:51 GMT  
		Size: 26.2 MB (26234152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff85f2b8f394275b1184217aafac6d759aa6a62825636f80cea4907dadcddde`  
		Last Modified: Wed, 21 Oct 2026 00:24:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:6dd363cc1d6adaf6b6c9d8014d42eb04745830c737a4a6347a9e066968b89b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d61806760cbf06dd802e1f16a908a6658a0fb1297285a81275e763af09a8ac`

```dockerfile
```

-	Layers:
	-	`sha256:bfab048f5dd1c1dcd9d4d51bdf4a7a759240de067b67a20806557df9e4e2bdf5`  
		Last Modified: Wed, 21 Oct 2026 00:24:50 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:e9cd6f83db804a5d050be9c445abf465a99f453e11da5333211d4e7e0683bee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167377696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25901fbeca8d6bf66ff913faf5d18d5f4639d853313f4121cdaf38099f73cdf6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:41 GMT
ENV NIM_VERSION=2.0.14
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:43 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a081709b730b3d31dec30375efd93e33a8625b148dac57fb5cd2737870f7fb70`  
		Last Modified: Wed, 28 Oct 2026 01:19:01 GMT  
		Size: 113.6 MB (113639851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ac6879f58d288300c415695b837d9e89c4199b3261d9d4fdb3fc97b4dedbda`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 25.6 MB (25599728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f106ac538198c285b15292453e98b90f22d02622d3a7b2ece8796fa04c7b7`  
		Last Modified: Wed, 28 Oct 2026 01:18:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:b5a5f7b6cdccc20a7ba76dd1edd0b948d1e6a9d11d301b5902d571c514ff3670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf04702852e868b195c8fde797b0ba9e691f99ca316f7c827ef0492cf473b5`

```dockerfile
```

-	Layers:
	-	`sha256:dbc3faaee69d9a0a746169b478e6a717a844434c1fa5f07fbd2d0fb0932c66e6`  
		Last Modified: Wed, 28 Oct 2026 01:18:58 GMT  
		Size: 14.0 KB (13968 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; 386

```console
$ docker pull nim@sha256:27d14f44abd78c9e695b443f6d0d09401f8217a399e2d0b1a23b30715c7d4cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175359158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed11e6f1e9ed7445c03c38e754910e6465b02a18747e25750fca82dc84c73411`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:26 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:26 GMT
ENV NIM_VERSION=2.0.14
# Wed, 28 Oct 2026 01:16:26 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:26 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:16:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:16:29 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:16:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b3fb0ea8151d3ee3f520f2a67ed1b93999aa691385977d8d9952425c86f908b`  
		Last Modified: Wed, 28 Oct 2026 01:16:48 GMT  
		Size: 118.6 MB (118555765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40134f88a62c2d1fa1ab9dff882eb9a2fdef05b4a91cc903b3e02d25f928655b`  
		Last Modified: Wed, 28 Oct 2026 01:16:46 GMT  
		Size: 27.6 MB (27564450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395d4ac34197afe85256d9aed44bd52bcfd2f02315c7d0052e55aabaafbf01f`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:d910240348154895daba5a0e2c510affd31965480c4290c6c1e4e77b0c130ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617816a37c4245abecb9960000920809d96669a60b5f84cff19660a8d0f35c8`

```dockerfile
```

-	Layers:
	-	`sha256:69a5b8285bf1d2299defcc850dae3309c1cf40a4bbc9da941e719715ba8995fe`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

```console
$ docker pull nim@sha256:f4eb9da1d13d84d5d2ceeb0eb8b206fe4e07ebe9afc7eb088b1f22d091463f1b
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
$ docker pull nim@sha256:1e3bb13333a2b1fdd80ab0fa127471f2e6f93230a4ae3ed2849f707bd2cd3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178904527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d38e42da9d985d9252a3e340d9310f10fc530b177aa064dd9996529bce083`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:33 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d6e9ef89ceab6a7fdb574c844ea5c58d2a25cf70fa7445acbf5627c904350`  
		Last Modified: Wed, 28 Oct 2026 01:18:51 GMT  
		Size: 119.6 MB (119552871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f766b18c690a4801b94e67edbea26484b3a04165ed86f6a7119474be1d3d354`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646105a729b717d20de9e8b7d6080170058c9d4dd1552f4ea26d52a4b103a5e`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:43c223d4f18d74314c2e898167f592c53a390ccc2da0f5c09f9b324adc312373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98eaaddd41df50567faa6ddb5ff39093bf245f6fc229879a21dbd01ba2ac4de4`

```dockerfile
```

-	Layers:
	-	`sha256:57e82a682e776ac78be336563d61c1adf094db64796bc23d1e43ebbd98380e2c`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:e7093620e0ca6704542e7b34a5146c9552db976a916418c3e9b6925c6cba6fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144532763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2ce1f3dfb879870a25016e06ed13239ac0651b21d572ac85cd200785e1ea41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:24:17 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:17 GMT
ENV NIM_VERSION=2.2.12
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 00:24:20 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 21 Oct 2026 00:24:20 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:24:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd29ebfbea415eb8e8fa45dfa4dec78e4a6051a0f5806ae265052a7a91d9aba2`  
		Last Modified: Wed, 21 Oct 2026 00:24:34 GMT  
		Size: 89.0 MB (89011052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef14d3ba8e52e6feaaf77f14aa88bdbb0e7728333b146bbb0d062badd7f6ea86`  
		Last Modified: Wed, 21 Oct 2026 00:24:33 GMT  
		Size: 31.6 MB (31560058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a113ffccb35963e8e97c6735b556f4b62bd1443a462a945fb2bb5caa11445452`  
		Last Modified: Wed, 21 Oct 2026 00:24:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:6a45cd290d3ce1a6f7a7693a83e846a25c519cb4df140654ba544ab1c493b6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1eb50de67d4dc69de7c89aaf6a7167af8cf7cdc79aefcdba8da15b264363695`

```dockerfile
```

-	Layers:
	-	`sha256:6226904aa4b7dddf54bf346564c2d6d7b2681d396601cd19cb44dd6715e7cd76`  
		Last Modified: Wed, 21 Oct 2026 00:24:32 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:64825b29145e6f9dc082f76f3ee995c2db22ade9575eba798015746357b5aa5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172293387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a5c2a6e856f915751bc7a2d891d295e76723aa5ccdec6fc5a4b93e3e207b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:41 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:44 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eddd6c06ade77d759d38fee57f00229e75373cd64aca08653399bb2f9eecf4`  
		Last Modified: Wed, 28 Oct 2026 01:19:03 GMT  
		Size: 113.6 MB (113639871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b445bb6ac7285c7b8cf73ffd995da0b19d9664cdaeb862c77d7648cc39d4232c`  
		Last Modified: Wed, 28 Oct 2026 01:19:01 GMT  
		Size: 30.5 MB (30515400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd55bd8c0902b1380e676f0789614ae9905229c44f068b664c5ce26367cf47c`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:cf37af2e1b2ad86013ead89b11eb88d23a68ff834585610cb55aa00ebb31766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d48f6143c80f952552de7916b3ac913061cf44cde64dfb404c4ebef51f64a52`

```dockerfile
```

-	Layers:
	-	`sha256:e52ab404cdc34ca1563342dbe55af02e736480980a8ca66b724e902d1688371d`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:451f796e4b875f1fd4d9d30bc21d7cde04c736fe21c1912b96f6f3c95f118872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180577601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86316d9925d9ebaac6ab79c238fc231538552dcc93168e3242efdcc5fbe4fb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:07 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:16:10 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:16:10 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:16:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb7e3192c770457467d0321caa7fcc3ebb7b22829b0f73bf86e0f67b3e4ae35`  
		Last Modified: Wed, 28 Oct 2026 01:16:27 GMT  
		Size: 118.6 MB (118555721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980d72333db49d1a051af77bf846b6c7095958b5b6492a775d6c25201b0ee405`  
		Last Modified: Wed, 28 Oct 2026 01:16:25 GMT  
		Size: 32.8 MB (32782936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61985acbce6e8d96e13c4ba4225196c75bd36bad6bb43abe142dcc584a1d402`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:210af947e49cf550778d84118cd19d211d6e4eb56cbc1cfd636e1ac944fe7383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a410b16c481ead678415b1caf2afa9fca108335116ea12e6563193d958a81470`

```dockerfile
```

-	Layers:
	-	`sha256:ddf93fbd089a4f477857ccbeacc41fe42682fdee5ce1a50fd7c417fc7fd8569a`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.12`

```console
$ docker pull nim@sha256:f4eb9da1d13d84d5d2ceeb0eb8b206fe4e07ebe9afc7eb088b1f22d091463f1b
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
$ docker pull nim@sha256:1e3bb13333a2b1fdd80ab0fa127471f2e6f93230a4ae3ed2849f707bd2cd3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178904527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d38e42da9d985d9252a3e340d9310f10fc530b177aa064dd9996529bce083`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:33 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d6e9ef89ceab6a7fdb574c844ea5c58d2a25cf70fa7445acbf5627c904350`  
		Last Modified: Wed, 28 Oct 2026 01:18:51 GMT  
		Size: 119.6 MB (119552871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f766b18c690a4801b94e67edbea26484b3a04165ed86f6a7119474be1d3d354`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646105a729b717d20de9e8b7d6080170058c9d4dd1552f4ea26d52a4b103a5e`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:43c223d4f18d74314c2e898167f592c53a390ccc2da0f5c09f9b324adc312373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98eaaddd41df50567faa6ddb5ff39093bf245f6fc229879a21dbd01ba2ac4de4`

```dockerfile
```

-	Layers:
	-	`sha256:57e82a682e776ac78be336563d61c1adf094db64796bc23d1e43ebbd98380e2c`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; arm variant v7

```console
$ docker pull nim@sha256:e7093620e0ca6704542e7b34a5146c9552db976a916418c3e9b6925c6cba6fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144532763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2ce1f3dfb879870a25016e06ed13239ac0651b21d572ac85cd200785e1ea41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:24:17 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:17 GMT
ENV NIM_VERSION=2.2.12
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 00:24:20 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 21 Oct 2026 00:24:20 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:24:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd29ebfbea415eb8e8fa45dfa4dec78e4a6051a0f5806ae265052a7a91d9aba2`  
		Last Modified: Wed, 21 Oct 2026 00:24:34 GMT  
		Size: 89.0 MB (89011052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef14d3ba8e52e6feaaf77f14aa88bdbb0e7728333b146bbb0d062badd7f6ea86`  
		Last Modified: Wed, 21 Oct 2026 00:24:33 GMT  
		Size: 31.6 MB (31560058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a113ffccb35963e8e97c6735b556f4b62bd1443a462a945fb2bb5caa11445452`  
		Last Modified: Wed, 21 Oct 2026 00:24:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:6a45cd290d3ce1a6f7a7693a83e846a25c519cb4df140654ba544ab1c493b6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1eb50de67d4dc69de7c89aaf6a7167af8cf7cdc79aefcdba8da15b264363695`

```dockerfile
```

-	Layers:
	-	`sha256:6226904aa4b7dddf54bf346564c2d6d7b2681d396601cd19cb44dd6715e7cd76`  
		Last Modified: Wed, 21 Oct 2026 00:24:32 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:64825b29145e6f9dc082f76f3ee995c2db22ade9575eba798015746357b5aa5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172293387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a5c2a6e856f915751bc7a2d891d295e76723aa5ccdec6fc5a4b93e3e207b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:41 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:44 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eddd6c06ade77d759d38fee57f00229e75373cd64aca08653399bb2f9eecf4`  
		Last Modified: Wed, 28 Oct 2026 01:19:03 GMT  
		Size: 113.6 MB (113639871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b445bb6ac7285c7b8cf73ffd995da0b19d9664cdaeb862c77d7648cc39d4232c`  
		Last Modified: Wed, 28 Oct 2026 01:19:01 GMT  
		Size: 30.5 MB (30515400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd55bd8c0902b1380e676f0789614ae9905229c44f068b664c5ce26367cf47c`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:cf37af2e1b2ad86013ead89b11eb88d23a68ff834585610cb55aa00ebb31766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d48f6143c80f952552de7916b3ac913061cf44cde64dfb404c4ebef51f64a52`

```dockerfile
```

-	Layers:
	-	`sha256:e52ab404cdc34ca1563342dbe55af02e736480980a8ca66b724e902d1688371d`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; 386

```console
$ docker pull nim@sha256:451f796e4b875f1fd4d9d30bc21d7cde04c736fe21c1912b96f6f3c95f118872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180577601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86316d9925d9ebaac6ab79c238fc231538552dcc93168e3242efdcc5fbe4fb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:07 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:16:10 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:16:10 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:16:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb7e3192c770457467d0321caa7fcc3ebb7b22829b0f73bf86e0f67b3e4ae35`  
		Last Modified: Wed, 28 Oct 2026 01:16:27 GMT  
		Size: 118.6 MB (118555721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980d72333db49d1a051af77bf846b6c7095958b5b6492a775d6c25201b0ee405`  
		Last Modified: Wed, 28 Oct 2026 01:16:25 GMT  
		Size: 32.8 MB (32782936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61985acbce6e8d96e13c4ba4225196c75bd36bad6bb43abe142dcc584a1d402`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:210af947e49cf550778d84118cd19d211d6e4eb56cbc1cfd636e1ac944fe7383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a410b16c481ead678415b1caf2afa9fca108335116ea12e6563193d958a81470`

```dockerfile
```

-	Layers:
	-	`sha256:ddf93fbd089a4f477857ccbeacc41fe42682fdee5ce1a50fd7c417fc7fd8569a`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:f4eb9da1d13d84d5d2ceeb0eb8b206fe4e07ebe9afc7eb088b1f22d091463f1b
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
$ docker pull nim@sha256:1e3bb13333a2b1fdd80ab0fa127471f2e6f93230a4ae3ed2849f707bd2cd3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178904527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d38e42da9d985d9252a3e340d9310f10fc530b177aa064dd9996529bce083`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:33 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d6e9ef89ceab6a7fdb574c844ea5c58d2a25cf70fa7445acbf5627c904350`  
		Last Modified: Wed, 28 Oct 2026 01:18:51 GMT  
		Size: 119.6 MB (119552871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f766b18c690a4801b94e67edbea26484b3a04165ed86f6a7119474be1d3d354`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 31.1 MB (31104054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646105a729b717d20de9e8b7d6080170058c9d4dd1552f4ea26d52a4b103a5e`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:43c223d4f18d74314c2e898167f592c53a390ccc2da0f5c09f9b324adc312373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98eaaddd41df50567faa6ddb5ff39093bf245f6fc229879a21dbd01ba2ac4de4`

```dockerfile
```

-	Layers:
	-	`sha256:57e82a682e776ac78be336563d61c1adf094db64796bc23d1e43ebbd98380e2c`  
		Last Modified: Wed, 28 Oct 2026 01:18:47 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm variant v7

```console
$ docker pull nim@sha256:e7093620e0ca6704542e7b34a5146c9552db976a916418c3e9b6925c6cba6fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144532763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2ce1f3dfb879870a25016e06ed13239ac0651b21d572ac85cd200785e1ea41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:24:17 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:17 GMT
ENV NIM_VERSION=2.2.12
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:24:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 00:24:20 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 21 Oct 2026 00:24:20 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:24:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd29ebfbea415eb8e8fa45dfa4dec78e4a6051a0f5806ae265052a7a91d9aba2`  
		Last Modified: Wed, 21 Oct 2026 00:24:34 GMT  
		Size: 89.0 MB (89011052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef14d3ba8e52e6feaaf77f14aa88bdbb0e7728333b146bbb0d062badd7f6ea86`  
		Last Modified: Wed, 21 Oct 2026 00:24:33 GMT  
		Size: 31.6 MB (31560058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a113ffccb35963e8e97c6735b556f4b62bd1443a462a945fb2bb5caa11445452`  
		Last Modified: Wed, 21 Oct 2026 00:24:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:6a45cd290d3ce1a6f7a7693a83e846a25c519cb4df140654ba544ab1c493b6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1eb50de67d4dc69de7c89aaf6a7167af8cf7cdc79aefcdba8da15b264363695`

```dockerfile
```

-	Layers:
	-	`sha256:6226904aa4b7dddf54bf346564c2d6d7b2681d396601cd19cb44dd6715e7cd76`  
		Last Modified: Wed, 21 Oct 2026 00:24:32 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:64825b29145e6f9dc082f76f3ee995c2db22ade9575eba798015746357b5aa5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172293387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a5c2a6e856f915751bc7a2d891d295e76723aa5ccdec6fc5a4b93e3e207b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:18:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:41 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:41 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:18:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:18:44 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:18:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eddd6c06ade77d759d38fee57f00229e75373cd64aca08653399bb2f9eecf4`  
		Last Modified: Wed, 28 Oct 2026 01:19:03 GMT  
		Size: 113.6 MB (113639871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b445bb6ac7285c7b8cf73ffd995da0b19d9664cdaeb862c77d7648cc39d4232c`  
		Last Modified: Wed, 28 Oct 2026 01:19:01 GMT  
		Size: 30.5 MB (30515400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd55bd8c0902b1380e676f0789614ae9905229c44f068b664c5ce26367cf47c`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:cf37af2e1b2ad86013ead89b11eb88d23a68ff834585610cb55aa00ebb31766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d48f6143c80f952552de7916b3ac913061cf44cde64dfb404c4ebef51f64a52`

```dockerfile
```

-	Layers:
	-	`sha256:e52ab404cdc34ca1563342dbe55af02e736480980a8ca66b724e902d1688371d`  
		Last Modified: Wed, 28 Oct 2026 01:18:59 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:451f796e4b875f1fd4d9d30bc21d7cde04c736fe21c1912b96f6f3c95f118872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180577601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86316d9925d9ebaac6ab79c238fc231538552dcc93168e3242efdcc5fbe4fb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:07 GMT
ENV NIM_VERSION=2.2.12
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 01:16:10 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 28 Oct 2026 01:16:10 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:16:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb7e3192c770457467d0321caa7fcc3ebb7b22829b0f73bf86e0f67b3e4ae35`  
		Last Modified: Wed, 28 Oct 2026 01:16:27 GMT  
		Size: 118.6 MB (118555721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980d72333db49d1a051af77bf846b6c7095958b5b6492a775d6c25201b0ee405`  
		Last Modified: Wed, 28 Oct 2026 01:16:25 GMT  
		Size: 32.8 MB (32782936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61985acbce6e8d96e13c4ba4225196c75bd36bad6bb43abe142dcc584a1d402`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:210af947e49cf550778d84118cd19d211d6e4eb56cbc1cfd636e1ac944fe7383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a410b16c481ead678415b1caf2afa9fca108335116ea12e6563193d958a81470`

```dockerfile
```

-	Layers:
	-	`sha256:ddf93fbd089a4f477857ccbeacc41fe42682fdee5ce1a50fd7c417fc7fd8569a`  
		Last Modified: Wed, 28 Oct 2026 01:16:24 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json
