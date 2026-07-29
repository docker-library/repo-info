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
$ docker pull nim@sha256:aebcfaeaf662b62842b9b583a4fa367f19f51f246118fa6b3e61732f25e12561
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
$ docker pull nim@sha256:b198302c705bcc2df2315b2e3dbb1bdbf4e51dca987d6b38cec4f824f87588e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190128174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bb98841f465a3d75663003f67980665906ec7d5fc4d515637112aff4811623`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:52 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:52 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:54 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ac8d10184bdb7fccb9ff23d327f74bf7d562e77dcc952b1e43e3cafd4fe0d8`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 130.2 MB (130157508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dce80176a6676558812a01259a68774c660c8109ba28abc8c4156073a98a9`  
		Last Modified: Wed, 29 Jul 2026 18:25:11 GMT  
		Size: 30.2 MB (30189596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b7a15d4a27aff4934777dea929efadcf828fd9371e4130f65ea5a9394a5452`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:345f241229547cf08a6d411707c52ceba03ee7a7187995d44e3ade7974666a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61be45c43503cd4028874e444ecd29a8c60a1680da4b169174b07205dfb4b19`

```dockerfile
```

-	Layers:
	-	`sha256:bb93f5880302584c438430388da60a52e9406efbe49b50f7fd339800a6e8b5d1`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 14.3 KB (14319 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm variant v7

```console
$ docker pull nim@sha256:7cee56bade69cbfe8407c5be5aa20cda27a24fcd211f55b90e00c6cbaa702e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153477446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792ba0e6d30d0f6114287ae386a7280733994553c2b35435c03880e1128ae647`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:27 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3495709931d4faa04a0b75541e06e88b267581d2eefd57425b226e6135de87ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:43 GMT  
		Size: 96.7 MB (96693160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de31de51cc886d58822b8468e7deeb57d1e485a8d2d4e6d9f1b347f46d98316`  
		Last Modified: Wed, 29 Jul 2026 18:24:41 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa8b14dc4186d58b6299a896f0059e895b8097c81d35a15ffcf61ca33309bb`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:cc1829012ce59a64d312efe4cf008079b52381abaf26d71f2c92c18d982870fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3919c301997fe3fe785f5532c2222f2596d8dcf34e28e51f99d65d5c22949b53`

```dockerfile
```

-	Layers:
	-	`sha256:baf9fece1910091220178328aa108d5471109f9ad0a52ecb66cae0b311dbe329`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 14.4 KB (14408 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:bcdc6dbd3efd5478f721c58326065df65513c86a77094961b7a33bbcf696ee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182483808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e4f9e1a579f337590de5f21f2ec043f7197bd60877cc71cec2105fd12a25b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:36 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:38 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2de7cd521795ec9ebcecc067e93fd7eb1e56c82fd618f818b35831cd394336`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 122.8 MB (122848076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763631542b8a67e1589d246516a3890deeb8db200182eafbbbd78d4caa04a402`  
		Last Modified: Wed, 29 Jul 2026 18:24:55 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e370b010770da2b699efeef05847e4579842a5531f0891b1f04ff0f9127918b6`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:b558a5c099a9b24e5afb7cafc888d2ef76eefba39a28d896c2a729152a549bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e4452a9b0ee2eaa33b7fecfd40f5b43060bfe2046b25afeabcea58959f715`

```dockerfile
```

-	Layers:
	-	`sha256:47003adc5244456e964b4511bfb8c267c1f28712ddc6c122cb4865c13b0f0b5b`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 14.4 KB (14438 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:370aeeda66cb31c651eb995affba0d2748f83ece9989f0c6d28460f2b21857ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193561596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ea6d49cb5b80bdd9d11bbea6e498ede947c90734d77a4a0d6bd3f6a456c30a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:45 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c918e5470170ab5f262101807a29546974abe29020869e43ed0fccc6e87b93`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 130.5 MB (130464459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586c57dfe19282379a5a3d73d47f7f78e2c27d62d4abf4ca14c012193a07c596`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd65b41293776730d684001723eeee0de9774aa8b1fd51e50b458736ea184f0`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:c4b53fcdafe910f333c997f0f45c7f089a999a433358b6f6a536fd83a29ee9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f7760288e6dcb65fbd6d1f30522f8a576e721cb86ec9fc3a08f23057fe7bd`

```dockerfile
```

-	Layers:
	-	`sha256:78d436cb6ef10b3c2c3cd601f54bebb411e72fd2973a9ab44670c598dfaea73e`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 14.3 KB (14285 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

```console
$ docker pull nim@sha256:8f16f0ba7b7e804a0efe7fbcd465d5e9125f1034711cc05ec7a95d1a9c06fdf3
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
$ docker pull nim@sha256:e666bdf5cf164b18121dae556ae8a739abf9603b6d1fbcaa45c1506c73252d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186201728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f4c18851cf9adb7a9663300a79eff86c94de6f12a79b7bbce9b4c747f139a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:34 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:25:34 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:34 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:34 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:36 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6a655a7d1d8229350c4f1086f5b00f1723289e28ad3797d8fffb51ac3bea4f`  
		Last Modified: Wed, 29 Jul 2026 18:25:55 GMT  
		Size: 130.2 MB (130158677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8cb4b330c0d8d1e51bda6dcf75a17f668a0c3dc931687fea369ddaa687aad8c`  
		Last Modified: Wed, 29 Jul 2026 18:25:53 GMT  
		Size: 26.3 MB (26261982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aea142da71492567d88a162d9f3c9e5c33930d5a853704c68e252cbefdbb1e4`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:7fbc6a88a5bb11a6caf9e826738b81cb9ffb6b171198660d0b09a3b102362970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0d1c370f81d8d119b17fdb9672b0a83240152a6373bbe45f3bcf2df69add36`

```dockerfile
```

-	Layers:
	-	`sha256:2b66472c6f0d0566114b400c94b428e742d9f0132fe510526e1abf768dcdce67`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 13.7 KB (13745 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:a392ff82087c986f632b458e35bd529156fe327441dff9698a822cda26ddb05b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149133906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17519bd35c0c6f5ddc00ab2c2b54f26fd9f69a56c7bce97123e98feb3aedd290`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:39 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86799770da1a736bf429b0f5e0edf8c01229406bcff01a98bc904be78c3ac163`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 96.7 MB (96693127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848cca882c6b1a3ab43c5bc10f778732cf3cae3d6c1c68d7099cc4c401a212a6`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 26.2 MB (26234147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd1eb46e22e271cea35d52768f5f95bde6cb867b373c1a626be5d5cd0115f06`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:b1fb453aeaf835dab3426a1f8abc5bef0bcbc1424b8d5dcb11c707ff57ee3f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce77cd2126d1cd2f99dd3fa9515b0b0a0ab35738742eca2166a3d5ddd2b702b`

```dockerfile
```

-	Layers:
	-	`sha256:739bcb2b60dbe7889c5960ad5d3dea58e87b62a1885e54ba5afc88619c5a7795`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 13.8 KB (13818 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:51613ff171ffceb5ea9a0ca3ba472a3ad52555ba62b1a69a753129a5e8f57e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178591626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3312d4ff44d4278251efd71b93c5ba4b3fd934fdc83d3169ffc20a9c889e883`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:39 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:24:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:39 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8783e6b402f4ad2cf1e2687f2295ce2e7f77edb61cf04a642dea6e59a06d7c`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 122.8 MB (122848023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f7797ad8c9c23cf57a75761882b88183d6575bd387f96b39576b1aaaea10a9`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 25.6 MB (25599734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd554d7a950eefad72b969ec3f1f1b092ac3debee2d11794733ada7caf07b40`  
		Last Modified: Wed, 29 Jul 2026 18:24:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:1816aaa71877390f052b492515e3b3f2e24500646fc92d37fe0de93d994ffea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82759b08860bdb9258ed0c42566b7130d2228cd6cdc68cdcd242a303149f0f8c`

```dockerfile
```

-	Layers:
	-	`sha256:47647de7fc4548f8a7ed9c67dec05ade4c4fc48614194b235323d43854f43893`  
		Last Modified: Wed, 29 Jul 2026 18:24:58 GMT  
		Size: 13.8 KB (13840 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; 386

```console
$ docker pull nim@sha256:fa45f3657e13a7b58981fed94d88f71f60ea39802527873212294d7ed1eb81dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189324941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2336f27e218ab8a8a50525f5303fe6ec55109530eb2e257efa8f6d0e6db596`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:35 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f939c72a420b59352deb0dd2b4abce0d0582c7f6427cc81a2c7e60a87916e0f`  
		Last Modified: Wed, 29 Jul 2026 18:25:56 GMT  
		Size: 130.5 MB (130464037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897adb10c8c845fd9a6027f7632e9c63cbaee752ed1bd93edd428bbca64d9aef`  
		Last Modified: Wed, 29 Jul 2026 18:25:53 GMT  
		Size: 27.6 MB (27564438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e291b79b356d897065713f3f57e6daa3523391b2937038668dcc8a1e83752f77`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:40b41a6b25657935494d4e79f5b1bd8ac4feccdf3bde3a18dc10627f3bfd8733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb629373838d9f97a9ac3d3d12b54dcb11055f948861734998cf326c315bf5b3`

```dockerfile
```

-	Layers:
	-	`sha256:88085293f8d7f0d32abca324c7f8a0d96c209122b013f9fa2f8263d9c9e9f3b3`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 13.7 KB (13720 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.0`

```console
$ docker pull nim@sha256:46f105b6cecd7136499c9fa84ec1d58aaa5530d4aafe738d94b02d84854e4d30
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
$ docker pull nim@sha256:68ca9db858ab9bd6421f4dba312a573edb89860854fcb6201d54492f68258621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185260828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed3fbe850ea4fe3958b904580c7b1d501e7d1a56317aac663267fd6ef14a8c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:02 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:02 GMT
ENV NIM_VERSION=2.0.0
# Wed, 29 Jul 2026 18:25:02 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:02 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:02 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:34 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d3d46ac12a37553f711c59ec10c70d42a8ff7ea6441a96ea84f8b44ec8d55d`  
		Last Modified: Wed, 29 Jul 2026 18:25:23 GMT  
		Size: 130.2 MB (130159122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233785ad4fd79ff079de967e703a8617497e77fd90a01951a144a427f12d1d0b`  
		Last Modified: Wed, 29 Jul 2026 18:25:42 GMT  
		Size: 25.3 MB (25320636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67acd36d5bb72dc86357aab0cfcd88022f703da9dbbc914f35785ef2e259b5ef`  
		Last Modified: Wed, 29 Jul 2026 18:25:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:5fbe776c12732337a77f629cd3ab741852d567cd20266b835435eced3d424a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7248acd1a389461c598a5100e2a0ec798814f1f4223abcbaa90f9676a7c723`

```dockerfile
```

-	Layers:
	-	`sha256:ea233565f61f829785c4717d016bdfcb59ee4ac07541a526a318cbebc54be534`  
		Last Modified: Wed, 29 Jul 2026 18:25:41 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:f0e89d5d9ad2705c33382cf44331fdaf1b02535ff2bce0aa01def375f0bdba5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.1 MB (148142429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e679d9912fe00165ad39e94e5979139604609716461f2988f6962fbafe9a41b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:44 GMT
ENV NIM_VERSION=2.0.0
# Wed, 29 Jul 2026 18:24:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:44 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:12 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:12 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa468d0403dabd5b1f7cd8a6a8987e0b96949f9275b26bc3f893e4121e796c25`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 96.7 MB (96693104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ac86fd06c4f2fdd1aec9106c6a7e84b9eb2fa332c3d359aa6951f7d909f4e9`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 25.2 MB (25242694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2808bb0fcedbe0244aace80c041da5529fa9cb30fafc4213cbff3c88eec5baf2`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:4579675c7179bb6a828f62fca435bbbf0a2c1e13e3a6109ea26f6b8f2e15b4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b0da8163052f2f744b4e5eebe698fa689b35d3d60975405d686bc7974d858a`

```dockerfile
```

-	Layers:
	-	`sha256:7478ab0ec845148071e63f1155dc69133e3e875d1f89e43f7484ecc8b93eca33`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 13.5 KB (13505 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:3ea8a3a62cbea5d143c99a619e65eba94b2e8d1d8ad78d8c9a7f21cb493904fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177692915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458a051e3e6558d38e9c455e1503cdada93f3882e3d9e27ed25b9dd74470ef36`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:41 GMT
ENV NIM_VERSION=2.0.0
# Wed, 29 Jul 2026 18:24:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:41 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:12 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:12 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e4727bd7392938fef9c382ec34a1b1e1e2656f19cdc1e6a18331bc9615357c`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 122.8 MB (122847928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158098f200e2706135ff00bc8cd9c4cd8e64aee95bbc73f6ed05eefbb4fa020a`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 24.7 MB (24701118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2808bb0fcedbe0244aace80c041da5529fa9cb30fafc4213cbff3c88eec5baf2`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:a492ccce1a9940aaf10ef56b44bb12c5a395e240fe6960ec9c5bd7a1caba4770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e688347177e346b837fe6876493be01d369aaab3bd8c36295f930c0aed2fb9d4`

```dockerfile
```

-	Layers:
	-	`sha256:5549bceacf918752c8b31e651e3d30436ae5aceeac359821c419f681661421d0`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; 386

```console
$ docker pull nim@sha256:9ee60d2a455c71cb4a87f2499628a02d20587ee4c7a941791a18690dcd788840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188273514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84b8f48b5de69f825daf5afc4a1a4ba80023998a2507236c77f8a426c160b7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:58 GMT
ENV NIM_VERSION=2.0.0
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:34 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203cd99d07c67412a4f2d546e0bcf987bb25565c4e7d58b6ae758da7fab4c1bc`  
		Last Modified: Wed, 29 Jul 2026 18:25:23 GMT  
		Size: 130.5 MB (130464005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7fae1a59b3c31f09b41e90e06fa7cd6677c817bf8a2f7d88372be04ba36d17`  
		Last Modified: Wed, 29 Jul 2026 18:25:42 GMT  
		Size: 26.5 MB (26513043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67acd36d5bb72dc86357aab0cfcd88022f703da9dbbc914f35785ef2e259b5ef`  
		Last Modified: Wed, 29 Jul 2026 18:25:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:f24da0da953aebca5a047175d62617433a3258beb1c60e03992614e97c8593b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28383f41f0b59fe7064c545bf6f2d580342fe934a8f5b5d6be6eeb5c999fb32`

```dockerfile
```

-	Layers:
	-	`sha256:3996f9d226732cefe4298c9d067d09c78bf5fa5ff4a6026ea59fe9c3dac4102a`  
		Last Modified: Wed, 29 Jul 2026 18:25:41 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.10`

```console
$ docker pull nim@sha256:9a23c0fbf2a4ebd869dc0fc763f0c8f6dbf6d9a3e1cda1f0a8137cbebb66b847
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
$ docker pull nim@sha256:36049f8e39984c5db864ec6b69cbc8deff9b85be727f14255711da754c526da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (186040174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93c117c4a56a5c3e5671dbd02909a472406ed69eddc62f7d4b88973a254546b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:44 GMT
ENV NIM_VERSION=2.0.10
# Wed, 29 Jul 2026 18:25:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:44 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:46 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:46 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce81af8225944396b64edc3e4fb47b5823bb8d2082702e54981cb37a30ed63c5`  
		Last Modified: Wed, 29 Jul 2026 18:26:05 GMT  
		Size: 130.2 MB (130158283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636334153582843e979ab245bcd336754d3c4724f76bb9ed02118a46bda0ede0`  
		Last Modified: Wed, 29 Jul 2026 18:26:03 GMT  
		Size: 26.1 MB (26100821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af713a1b20a267fd3f3f1140f8b3c966c7a84d95be50bf58699ec13e64eed965`  
		Last Modified: Wed, 29 Jul 2026 18:26:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:d64a39b81c68d41b3c47bc235fd20c2a934e1694aeca5cec5f700052459f8d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812f83cbde3ab4a7b8db3817a514d7dc91e9920c9e3fa313f55b8d41eca770ec`

```dockerfile
```

-	Layers:
	-	`sha256:e164d23b11f84dffc855b79b5ba7f9026fc46dc71289135ace30c3d44fde2b75`  
		Last Modified: Wed, 29 Jul 2026 18:26:02 GMT  
		Size: 13.5 KB (13459 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; arm variant v7

```console
$ docker pull nim@sha256:9babc2a83be6c884ac86822affad89623e85386f63685574d71cd24218f61e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (148963132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6fa5513009669fb7aa563612e6326ffd4f37d1a13e3afb6ceb76064167771b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:25 GMT
ENV NIM_VERSION=2.0.10
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:53 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3495709931d4faa04a0b75541e06e88b267581d2eefd57425b226e6135de87ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:43 GMT  
		Size: 96.7 MB (96693160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f12108d102d3b1bb997a6f653c1097d0f8560d8ce556bbc13a0b22920b616e6`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 26.1 MB (26063340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3389324b10053cde6cef1bc39440687c47e3a099540b160bdb46c762d5e67bc`  
		Last Modified: Wed, 29 Jul 2026 18:25:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:880b7afdc958c4a4a0f6ea29b0205fb0c4b9ea43cbce3a82dc602eedf8e01a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c794e4836cd8952cc36a0e85120910b053344772142c648862be90bcc1c33886`

```dockerfile
```

-	Layers:
	-	`sha256:3268dfed36f5cfe5f00deae3061bfd442800e5e08cdcc38627179611ca901b5e`  
		Last Modified: Wed, 29 Jul 2026 18:25:00 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:a7b8d46214e49a4565cc9707a430dbf6c8ff1c9fd56300ee33dad7f16274b755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178434906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5cd23fc4ba8fae5f11b3d7fca5fc403c5c0cf5976bbe606f4e69c4ab3c031a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:35 GMT
ENV NIM_VERSION=2.0.10
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bdec4b282a86470443915f0f0f7d0b0d87c3ff95ccc2d67e447aa68ec80bcc`  
		Last Modified: Wed, 29 Jul 2026 18:25:56 GMT  
		Size: 122.8 MB (122848001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9f85b90aa00fbe50e566d2289ffb787f525879b4f4858e89680ef9b436b7f0`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 25.4 MB (25443035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e291b79b356d897065713f3f57e6daa3523391b2937038668dcc8a1e83752f77`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:7e3452fc00da35a3e44af675c3ecfd80a860209afa1aa32f32e8f5dff1958bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51cdb255c9d5d2c993a30171dd7d0ab5e056674c12cf15834ef5eae0c85cc1d`

```dockerfile
```

-	Layers:
	-	`sha256:79940d1daf76183d2f597466a83d4d963f05de8eef87c5ffde421f5d557c924b`  
		Last Modified: Wed, 29 Jul 2026 18:25:53 GMT  
		Size: 13.5 KB (13542 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; 386

```console
$ docker pull nim@sha256:b4d145c88a5d55b0482f95426b021345e3790207013e19ff484c557150817579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189146327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80b89a6f06497f7802a230e592a0b7b2ea708989f1bb5913091ea03d80cb89d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:49 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:49 GMT
ENV NIM_VERSION=2.0.10
# Wed, 29 Jul 2026 18:25:49 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:49 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:49 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:51 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:51 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf583f1288e3e701681bb922cf8444f649be89df1a39a7b73fd57e6fca80c7d`  
		Last Modified: Wed, 29 Jul 2026 18:26:11 GMT  
		Size: 130.5 MB (130463659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac8db060ff9f795494db815a23074fa6f10c50b5648620d328c90d72e8dd359`  
		Last Modified: Wed, 29 Jul 2026 18:26:08 GMT  
		Size: 27.4 MB (27386202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be058c7bc5b5b8a8b8ab45d09c8b8845cea41a061c0b0f078b9de5c4ed9ad2a0`  
		Last Modified: Wed, 29 Jul 2026 18:26:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:d82a18e18ad2bc3fff0a2b2d618c9d27e3fd663d4060c0e6adf47b09c84e090e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6d7f2209910ba0d2c2affd29d3783504be448c6d33fefdce64270d47b99081`

```dockerfile
```

-	Layers:
	-	`sha256:026d8d48de6f7b8b608a65d8d15fa3ee147f2b64d7c7904d25294979b64fb4c0`  
		Last Modified: Wed, 29 Jul 2026 18:26:07 GMT  
		Size: 13.4 KB (13440 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.12`

```console
$ docker pull nim@sha256:412a0470d246d54d3297925cda101334165063c26f9177a736db82dc1bdce8bd
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
$ docker pull nim@sha256:c7bfec96c9d59d20d577dc5648b1c26be030182f3764165602570816aa9e430e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186055892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715e1013b71dcb244f65a4a889b42609e97441063d0a9ff8a110043072ff9dc9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:36 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:36 GMT
ENV NIM_VERSION=2.0.12
# Wed, 29 Jul 2026 18:25:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:38 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e2e0879a6131773b23caed4e77ddc7b2d1d52066c9a696de231df537a8b7f5`  
		Last Modified: Wed, 29 Jul 2026 18:25:57 GMT  
		Size: 130.2 MB (130158607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3e267f84fa5f28f686ed81001516ed04daaa51cb6b1b1b8a210fb28efc53b4`  
		Last Modified: Wed, 29 Jul 2026 18:25:55 GMT  
		Size: 26.1 MB (26116215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c002e61964f26b897b1f5fa0040ce2865d9005748878bc1c45484dc0b83f72c7`  
		Last Modified: Wed, 29 Jul 2026 18:25:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:cb39fb8fee75c72ae2085c516da3a540cc1eb6737928c4808a6ed33236d4b4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a610e7512ab15c0ce747efc8d8f964142f5cb34e5b743cce7ca4c96f8eadec`

```dockerfile
```

-	Layers:
	-	`sha256:0c238e5ecfffae8f70dda21a41ad00c572415a6c8f5cab5e0597d05f10cb382e`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 13.5 KB (13459 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; arm variant v7

```console
$ docker pull nim@sha256:79cff3e6b7d8f3437b7bf6ea2ba52e5e667bd5334a14c6157bb4cd754fd95032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (148982942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993aa427e2fb926a004f0ff46f4c47c307a7ae328706f4c0cfb970b8bc479383`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
ENV NIM_VERSION=2.0.12
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:39 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a920083c70e34eed5df781a187796d8466c4eb1930a86a7b16c37d3600973b`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 96.7 MB (96693184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0aa6a4523dc3125f0f07c1233ede0f27c14b5b9d62f201b71fb2175280b6f12`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 26.1 MB (26083126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd1eb46e22e271cea35d52768f5f95bde6cb867b373c1a626be5d5cd0115f06`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:d600b935d9183d58b662887a8c03c4a107210e278465550e9513f832d7955bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8459d695c58abf5c0c956464cbaad493ac37fbd581f1529673fc83bc2ebd38`

```dockerfile
```

-	Layers:
	-	`sha256:060b01708b6c37a42dcc53cc2d0339a7c0c0e3ca197de95c4c5bc44754ea0bc3`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:357565a173e403d56d94b30085ff40130d575cd2f3c6e88ceabc654332117424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178444124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dd0a049c75e4333fde00c7623cba904724b5922ae2a5f7cb7f3ffb1f6ef860`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:35 GMT
ENV NIM_VERSION=2.0.12
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7690a6878129ad5a527298be120a4761995a8657fde95e81c97aec3b551255`  
		Last Modified: Wed, 29 Jul 2026 18:25:56 GMT  
		Size: 122.8 MB (122848025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be49504147da696309d5be3646f662b68a81d94f45bcdfc9fd9f6dc30c81c8c`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 25.5 MB (25452229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e291b79b356d897065713f3f57e6daa3523391b2937038668dcc8a1e83752f77`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:9b738a87d93b2f5e4c95bff2afa10b8a8a9310b8183cfb217acfda27a02a9d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dbed4e89263874f124d9c6053e14728ee9c3bbf45afcbe57ac4e6a318d9fc2`

```dockerfile
```

-	Layers:
	-	`sha256:09288854df23ca8e69557f68eb6dcd91001bbeda37574d759f96f7e4b1c5cdc9`  
		Last Modified: Wed, 29 Jul 2026 18:25:53 GMT  
		Size: 13.5 KB (13542 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; 386

```console
$ docker pull nim@sha256:fc2f6b4710d6269f2e7938c977f0dc4444a34a8c35f7d894520c2356881d7445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189170000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb557320edfff833d88864d880f5d063320394d6b5318902321dc378f487f34`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:45 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:46 GMT
ENV NIM_VERSION=2.0.12
# Wed, 29 Jul 2026 18:25:46 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:46 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:46 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:48 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:48 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6faba5176995fe03baaff634519b2b4b7f508aadfa47eb6336a6cde4f3fc9a2`  
		Last Modified: Wed, 29 Jul 2026 18:26:06 GMT  
		Size: 130.5 MB (130463984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144e9f5a10953813b442cee7b82cb4f04b218c82c8412a97c1a33ebfbffa252f`  
		Last Modified: Wed, 29 Jul 2026 18:26:04 GMT  
		Size: 27.4 MB (27409550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3d871211ecb2c8218946448fa45bed7c762fdfb3dff0aac22349df37c282de`  
		Last Modified: Wed, 29 Jul 2026 18:26:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:b5f9e127ea850d625755fda66802c357cb642eaa14a3606d37b20872d703077a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd91bacb83f2e95010ca4840894bf6e00220e8d4767dc6f61266a8adec4f7ec9`

```dockerfile
```

-	Layers:
	-	`sha256:48ca40235bd1427733dfd739ddf864cb2cb1a7e9b89a76af40ada07d4e80ebc7`  
		Last Modified: Wed, 29 Jul 2026 18:26:02 GMT  
		Size: 13.4 KB (13440 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.14`

```console
$ docker pull nim@sha256:8f16f0ba7b7e804a0efe7fbcd465d5e9125f1034711cc05ec7a95d1a9c06fdf3
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
$ docker pull nim@sha256:e666bdf5cf164b18121dae556ae8a739abf9603b6d1fbcaa45c1506c73252d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186201728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f4c18851cf9adb7a9663300a79eff86c94de6f12a79b7bbce9b4c747f139a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:34 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:25:34 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:34 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:34 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:36 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6a655a7d1d8229350c4f1086f5b00f1723289e28ad3797d8fffb51ac3bea4f`  
		Last Modified: Wed, 29 Jul 2026 18:25:55 GMT  
		Size: 130.2 MB (130158677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8cb4b330c0d8d1e51bda6dcf75a17f668a0c3dc931687fea369ddaa687aad8c`  
		Last Modified: Wed, 29 Jul 2026 18:25:53 GMT  
		Size: 26.3 MB (26261982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aea142da71492567d88a162d9f3c9e5c33930d5a853704c68e252cbefdbb1e4`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:7fbc6a88a5bb11a6caf9e826738b81cb9ffb6b171198660d0b09a3b102362970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0d1c370f81d8d119b17fdb9672b0a83240152a6373bbe45f3bcf2df69add36`

```dockerfile
```

-	Layers:
	-	`sha256:2b66472c6f0d0566114b400c94b428e742d9f0132fe510526e1abf768dcdce67`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 13.7 KB (13745 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:a392ff82087c986f632b458e35bd529156fe327441dff9698a822cda26ddb05b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149133906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17519bd35c0c6f5ddc00ab2c2b54f26fd9f69a56c7bce97123e98feb3aedd290`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:39 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86799770da1a736bf429b0f5e0edf8c01229406bcff01a98bc904be78c3ac163`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 96.7 MB (96693127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848cca882c6b1a3ab43c5bc10f778732cf3cae3d6c1c68d7099cc4c401a212a6`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 26.2 MB (26234147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd1eb46e22e271cea35d52768f5f95bde6cb867b373c1a626be5d5cd0115f06`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:b1fb453aeaf835dab3426a1f8abc5bef0bcbc1424b8d5dcb11c707ff57ee3f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce77cd2126d1cd2f99dd3fa9515b0b0a0ab35738742eca2166a3d5ddd2b702b`

```dockerfile
```

-	Layers:
	-	`sha256:739bcb2b60dbe7889c5960ad5d3dea58e87b62a1885e54ba5afc88619c5a7795`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 13.8 KB (13818 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:51613ff171ffceb5ea9a0ca3ba472a3ad52555ba62b1a69a753129a5e8f57e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178591626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3312d4ff44d4278251efd71b93c5ba4b3fd934fdc83d3169ffc20a9c889e883`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:39 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:24:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:39 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8783e6b402f4ad2cf1e2687f2295ce2e7f77edb61cf04a642dea6e59a06d7c`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 122.8 MB (122848023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f7797ad8c9c23cf57a75761882b88183d6575bd387f96b39576b1aaaea10a9`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 25.6 MB (25599734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd554d7a950eefad72b969ec3f1f1b092ac3debee2d11794733ada7caf07b40`  
		Last Modified: Wed, 29 Jul 2026 18:24:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:1816aaa71877390f052b492515e3b3f2e24500646fc92d37fe0de93d994ffea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82759b08860bdb9258ed0c42566b7130d2228cd6cdc68cdcd242a303149f0f8c`

```dockerfile
```

-	Layers:
	-	`sha256:47647de7fc4548f8a7ed9c67dec05ade4c4fc48614194b235323d43854f43893`  
		Last Modified: Wed, 29 Jul 2026 18:24:58 GMT  
		Size: 13.8 KB (13840 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; 386

```console
$ docker pull nim@sha256:fa45f3657e13a7b58981fed94d88f71f60ea39802527873212294d7ed1eb81dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189324941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2336f27e218ab8a8a50525f5303fe6ec55109530eb2e257efa8f6d0e6db596`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:35 GMT
ENV NIM_VERSION=2.0.14
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f939c72a420b59352deb0dd2b4abce0d0582c7f6427cc81a2c7e60a87916e0f`  
		Last Modified: Wed, 29 Jul 2026 18:25:56 GMT  
		Size: 130.5 MB (130464037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897adb10c8c845fd9a6027f7632e9c63cbaee752ed1bd93edd428bbca64d9aef`  
		Last Modified: Wed, 29 Jul 2026 18:25:53 GMT  
		Size: 27.6 MB (27564438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e291b79b356d897065713f3f57e6daa3523391b2937038668dcc8a1e83752f77`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:40b41a6b25657935494d4e79f5b1bd8ac4feccdf3bde3a18dc10627f3bfd8733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb629373838d9f97a9ac3d3d12b54dcb11055f948861734998cf326c315bf5b3`

```dockerfile
```

-	Layers:
	-	`sha256:88085293f8d7f0d32abca324c7f8a0d96c209122b013f9fa2f8263d9c9e9f3b3`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 13.7 KB (13720 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.2`

```console
$ docker pull nim@sha256:09453d4bda4757ce27a65188e3ab837929595923802603e1089fff46c599c22c
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
$ docker pull nim@sha256:0d3e92db6420dc423caf670663d511022b9b3f4a374a423ac53aadb86518fa45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185315952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cfa49d14e66cbdd5beae9d8f27ef3a6cf7509205e48c31e559fbe4cb411d85`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:59 GMT
ENV NIM_VERSION=2.0.2
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:29 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:29 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a43474d6165e0f5cbdb54846294146afca6269f3714835162cf33b667bfca9f`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 130.2 MB (130158431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2019a3cf1225da216cf02336c90c153abbf20f62aa77b86471628e237bf50b3a`  
		Last Modified: Wed, 29 Jul 2026 18:25:37 GMT  
		Size: 25.4 MB (25376452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4fdf73110771f7c38c8fd56e39c1342fe34373c4835a88652df61349ff0805`  
		Last Modified: Wed, 29 Jul 2026 18:25:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:f4c1111f97b60d185454a23f1b3bd2d2a34f763ad88b014f0e16393bb7805ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d3f23e157293718ad9e76a3691f1ada8e9c3a07aa8a53e928113d0b835628b`

```dockerfile
```

-	Layers:
	-	`sha256:3ee8b8b42be2f1c52c741c293a722d4b926381be0f904a63cf2d4fa441b9cf66`  
		Last Modified: Wed, 29 Jul 2026 18:25:36 GMT  
		Size: 13.4 KB (13440 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:adc1dda19dfb205bd4497f3f4640dd562513560a1efd32d98c7eee174d09c000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148192829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474700f8cb94052a43b4f2a2a5815048b2039396dee8e87c5b314c188eca9809`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:25 GMT
ENV NIM_VERSION=2.0.2
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:11 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:11 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3495709931d4faa04a0b75541e06e88b267581d2eefd57425b226e6135de87ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:43 GMT  
		Size: 96.7 MB (96693160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6dcf804db1826cdb8bbb7a8b0b8a21cf46782a7bc2e65412b2e3afcf34ecf9`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 25.3 MB (25293037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b236d821a9a06ff4b5002451afcd638988d8b775fc7f4e44457c125842120fc`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:8a9688f726d3f11387cadda5e63e0953945569ab457600c10cadd8f7d24dbc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac0eab89eeb5c2b78b71491b7cdbc84d5296f0b030a5a3791687a0f25edd027`

```dockerfile
```

-	Layers:
	-	`sha256:c2a8e1d0bca1563357ed547def62a8dc8b0c2628bdaa48cad3d2e5a43d7c06ea`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 13.5 KB (13506 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:e9c9732d9a96b1639d366cedcc0746e7e18b91b532afdfdb987c0118802557a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177760675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a44f37ce4eb4ea5845575242cba04075afebf5ad9748a07586a26a9a561881`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:39 GMT
ENV NIM_VERSION=2.0.2
# Wed, 29 Jul 2026 18:24:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:39 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:12 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:12 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8783e6b402f4ad2cf1e2687f2295ce2e7f77edb61cf04a642dea6e59a06d7c`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 122.8 MB (122848023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d0df310b42a079a1543ae1ece08512db48eb2a2704d225f736445968e92ec`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 24.8 MB (24768783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2808bb0fcedbe0244aace80c041da5529fa9cb30fafc4213cbff3c88eec5baf2`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:6c4e3410f814fef6e6807ada2c31de7ffafd4ee8bf3a99bb8d1755121efa0a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296d516de27331af4db25c3c4d90dc52bc0751ff4aaf61d861a83642eea6691b`

```dockerfile
```

-	Layers:
	-	`sha256:d4cf0e1dc2b6a7d3ab8ea578d82ce2d443455f57821725a1c525089c969788c5`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; 386

```console
$ docker pull nim@sha256:0d0912cfd33e7ea559e82177297a8aa4b2516a82f41058c628990737ab65f9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188320064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868d2e560e7b5598621da69e40d8acb05c1b06d98f05adf317325cb38b79798f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:59 GMT
ENV NIM_VERSION=2.0.2
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:32 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:32 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbef8da34346714a44a3c12aa8d74a21c8d4076f6078d15c91568ad5c02d538`  
		Last Modified: Wed, 29 Jul 2026 18:25:22 GMT  
		Size: 130.5 MB (130464064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd74fd29acb0728eb6decc0293f7182a3898e3cbd2f4900a8fd745f851dd410c`  
		Last Modified: Wed, 29 Jul 2026 18:25:40 GMT  
		Size: 26.6 MB (26559534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce631ca0d05db0abc849769c93a4b2c18c41e01ef75e949eeef7228fa2d0141`  
		Last Modified: Wed, 29 Jul 2026 18:25:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:41fe7f8d96ee895c04194039faff7a8d673aa85f307d5d074d27afc27c182b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027cbb2499dcef4581cd6ff94aebc979038d4e1a7541e6302c5127741a86e2e6`

```dockerfile
```

-	Layers:
	-	`sha256:a7d809e10ce43e544aae040d5449f440b07db406190a53e9010a9b234e45bcff`  
		Last Modified: Wed, 29 Jul 2026 18:25:39 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.4`

```console
$ docker pull nim@sha256:8fe5d9acb8ce66430d4cbb2fa88a599857218f308cfc527f8bcc0c7823909ec7
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
$ docker pull nim@sha256:9ab8b1b92876728c5622cae33a5dfb23c75b069d4a1c9d922b1b1b17cd445653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185344041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dd4974f6f43fd3aa1d43ce89269aeb13bfd8b0e2e9f6b107a5e1551ed0327d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:57 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:58 GMT
ENV NIM_VERSION=2.0.4
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:27 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6192d75b8de5634f8f79e6a992b43683914ec05f00dbfd541fa7c1da7293dbbf`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 130.2 MB (130157850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd563a442579fe9dc47f2aeaa214dc0d297a7f5a054d818ef6bdf95e791551a`  
		Last Modified: Wed, 29 Jul 2026 18:25:35 GMT  
		Size: 25.4 MB (25405121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:261e6e4aad018149207d8758d61ddc568b515a8d666bf2fbdc39b4e89c2d4025`  
		Last Modified: Wed, 29 Jul 2026 18:25:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:de1257d155504906ff95d327eb8db8e78147e3786e43f43b7019685bbe38fbeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5df58420e08abeefeeed046788ea3372fcb1e0cc4bb599169ccd9c90571fa4e`

```dockerfile
```

-	Layers:
	-	`sha256:a642e03f128c4772a78e0f5b648e7974ff306b90b41520fc66b1e0ea4d7473bc`  
		Last Modified: Wed, 29 Jul 2026 18:25:34 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; arm variant v7

```console
$ docker pull nim@sha256:9ce82a376286d536df5648db33eb115a627a07c8aeb279b02538310e1be72dd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148229287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8f007851cc483443f4e1a440cbb55ff112cc1ab4143e88af5aa21d1d8d4c6e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:43 GMT
ENV NIM_VERSION=2.0.4
# Wed, 29 Jul 2026 18:24:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:12 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:12 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dde4f5b8255a967016daa596f78e6403cbde0ae5b2da2e8e3138c21ca38e358`  
		Last Modified: Wed, 29 Jul 2026 18:25:00 GMT  
		Size: 96.7 MB (96692993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4e3189269550c3c93951be6686e6205b4a1bdfd778281948f166cb687c5d9e`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 25.3 MB (25329663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2808bb0fcedbe0244aace80c041da5529fa9cb30fafc4213cbff3c88eec5baf2`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:8afdb3fc687cb203c6b114ddcaf5ea7f5b1d47ffbf798a5eb43e38af976fe98d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add551bd4f81cf2b2c364fc66cbaaccba70f223818bd152bb1c109d1d416765c`

```dockerfile
```

-	Layers:
	-	`sha256:d1a55e8c152dfd260e6c0ba941996f3da7d8bf7096f0b85917fae0728235a5f4`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 13.5 KB (13506 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:d5c097ab9b8f912b19844b7b889b0eafd3bf796977f06c29d71ee64c55965c46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177796118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d36035c280c54263b943a6e0c9943a449f945e863ab0d918201a92e8f1eea5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:36 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:36 GMT
ENV NIM_VERSION=2.0.4
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:08 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2de7cd521795ec9ebcecc067e93fd7eb1e56c82fd618f818b35831cd394336`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 122.8 MB (122848076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f96f3131531aa59beca9483ec7d67aaf5d2ae84b26b21acb0d9925542c0fc1`  
		Last Modified: Wed, 29 Jul 2026 18:25:16 GMT  
		Size: 24.8 MB (24804174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5a6792a2ca9f24652c63f34057d4ebdfa9b0ab2670c2819b0fc73f123f0a82`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:6a9c52cf06901403904acc5b5f38e4bfb9a37c02a537b4c7087a2b71bcfc1cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6553e642aa32b2c7610ca467207fc4b23b8109f998af9eb7f70b39bc956f8f8`

```dockerfile
```

-	Layers:
	-	`sha256:0e200d43cfa0eb4bea592ff2ad9e3aa962e9554394a720c74c967ccdc7f81402`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; 386

```console
$ docker pull nim@sha256:49442269dafc8dab76ea98f05c7662993b06c7dc802a5f36823ce067ca85584a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188358395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e071fa0e9acf8a12694d26d38d27541f5e4d15cf36ce6f64bb258dc65e9d53`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV NIM_VERSION=2.0.4
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:28 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c918e5470170ab5f262101807a29546974abe29020869e43ed0fccc6e87b93`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 130.5 MB (130464459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25dc88185bf9149aa1101c454d2ccee9e25a4846355dc8e6b688fd10dce33e30`  
		Last Modified: Wed, 29 Jul 2026 18:25:36 GMT  
		Size: 26.6 MB (26597472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f77729b72a2d9c7f85e7d1cffe4d024a11d72ddb7b432522454147c155cffc7`  
		Last Modified: Wed, 29 Jul 2026 18:25:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:1a3eaba5df767df5c4b2a60719104c8dbca0f48a467e68b63e8c634dd418b5c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23efe71cf9d653b7f5531e0f9fbdb785f3997862b62b681e8b2121b41b7c7693`

```dockerfile
```

-	Layers:
	-	`sha256:18d3d7072df7b3d86d251661f518eb45d4303253fcf2a45cf07118cb22c9f849`  
		Last Modified: Wed, 29 Jul 2026 18:25:35 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.6`

```console
$ docker pull nim@sha256:e89211b232d688d292a6d1cf49c3f6076ef2d513b8cc968dc9057ce49efff2d3
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
$ docker pull nim@sha256:1dd769889042cc5071dee43a590759079bfbb42c33831be786afb4ddbe292cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185874373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08078f522efaebbcc5ef18e1e6cba45ad494a15c511e7bc3234c0aa8d195524`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:52 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:52 GMT
ENV NIM_VERSION=2.0.6
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:25 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:25 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ac8d10184bdb7fccb9ff23d327f74bf7d562e77dcc952b1e43e3cafd4fe0d8`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 130.2 MB (130157508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec8917ed0b9d80b2db501214b3da8b321cf40d2fa89b758445cab7fd8901c4d`  
		Last Modified: Wed, 29 Jul 2026 18:25:33 GMT  
		Size: 25.9 MB (25935795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f1843ce176c89bfe1b27bba5c0ebda6e53ca566a0315afccd32530bd86a286`  
		Last Modified: Wed, 29 Jul 2026 18:25:32 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:003eec6ad22fa74e9a7137120020db8ff9362fb89f54073df216b725010cd662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6ccca76517bb616278f20dd57e4845c7bbf70dca50d7cd887338a5e28630ed`

```dockerfile
```

-	Layers:
	-	`sha256:6e23a055d00b2f7602506f42e59d1818f349189cdd1536294885c5818f8e3ebf`  
		Last Modified: Wed, 29 Jul 2026 18:25:32 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; arm variant v7

```console
$ docker pull nim@sha256:02d68a9fb6d827aa25d3c25c4a384425c5bd767daaf5da2a6f50d6523fdfc657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148740037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671ecb6073c222dc15a54a0b8b0c552b815ae5cc2b751413d83120f2d505171a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:47 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:47 GMT
ENV NIM_VERSION=2.0.6
# Wed, 29 Jul 2026 18:25:47 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:47 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:47 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:49 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:49 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6635fe239ee1c523ae59a333e4f8eb55153989d6b641d610b7aea0d4ce3e36e0`  
		Last Modified: Wed, 29 Jul 2026 18:26:05 GMT  
		Size: 96.7 MB (96692954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c364c019a71e31505467a7b7ed397f6de2f2e6eb261cb0db94536cd0e173ac51`  
		Last Modified: Wed, 29 Jul 2026 18:26:03 GMT  
		Size: 25.8 MB (25840452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a6cd6e8d062865af05be7258be03d34b30001fa6c172af4744bcc0e8f03783`  
		Last Modified: Wed, 29 Jul 2026 18:26:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:6c53fc7d0b7519a912531ae670379eb275331bc1523c4d20f16207e1ee9a3fe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775294e1adbb9efd2c3dce7359c640da3455e34aa6b6a1e19890cc28b4f36f34`

```dockerfile
```

-	Layers:
	-	`sha256:40ed50d0c33fe328895f0ddf15fd4a1047edd5d64a81982362e54a5495f78499`  
		Last Modified: Wed, 29 Jul 2026 18:26:01 GMT  
		Size: 13.5 KB (13506 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:cc56e08c87f01730943cc0ed2640e1480658481e91059a219c8abf7fd6d03505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178283531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2236f66fb5ee5b60d5e201dd0ba236be315850132251c1042d0550ae32faf1d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:42 GMT
ENV NIM_VERSION=2.0.6
# Wed, 29 Jul 2026 18:25:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:44 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d75e9a406ea9c9f10b3cdbedebf0ef7bddf98590edd3b45d634b6166e1c9e6e`  
		Last Modified: Wed, 29 Jul 2026 18:26:03 GMT  
		Size: 122.8 MB (122847949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f854996982e9a75a8f6275e31e91393db20d5f6cd29c62fb380b31fbe13e7025`  
		Last Modified: Wed, 29 Jul 2026 18:26:01 GMT  
		Size: 25.3 MB (25291714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d26d21bf86738b83b6797021d461dab06d1fdb44b2e04648c389da27ab8fdd5`  
		Last Modified: Wed, 29 Jul 2026 18:26:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:caaa939fee479e9d5fb52905dd22f8c514c99b1c61ce1031b1666d24a08463c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26eccd5a7f459ae6783329fdd986d31ed114503b94aa2bd7a5ec201517141c15`

```dockerfile
```

-	Layers:
	-	`sha256:ad8ce03e5bb0b6bdf328561033c7e01ab1544e14243edf415437b787a9b63625`  
		Last Modified: Wed, 29 Jul 2026 18:26:00 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; 386

```console
$ docker pull nim@sha256:9f20642051624b4dacf779af07421aa865ca44fb25ff5c5e90bc83ef6dc3d8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188890281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a450225a727fe7d75a3b55107afc1b865c2cd8f6119cc8c2bec942d5fb72da0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:26:18 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:26:18 GMT
ENV NIM_VERSION=2.0.6
# Wed, 29 Jul 2026 18:26:18 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:18 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:18 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:26:20 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:26:20 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:26:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9059dcd91b6d34c27a283d5efa0620f00f1c8bb512b4c8d7effeb59b429adf7d`  
		Last Modified: Wed, 29 Jul 2026 18:26:40 GMT  
		Size: 130.5 MB (130463260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578c417f04557e275a230aeb6111396322204ac51b4eb70a0cf7103a3bd533f1`  
		Last Modified: Wed, 29 Jul 2026 18:26:38 GMT  
		Size: 27.1 MB (27130555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39117c8715ef1a101eeb6f9bfe3e8c291af65a871fa228ddc0e69d7272cd5bd4`  
		Last Modified: Wed, 29 Jul 2026 18:26:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:30336269bab87f525f008da553447607ad3112f5fae33fb594999bd6409d8170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14aebb2c20505f60863a383b63f336aebb728553572e52dc558a89eaf2f4470e`

```dockerfile
```

-	Layers:
	-	`sha256:12d4c7c742ce8936da6021034e692b478982264ab13d6c53c0a20a108e7967e0`  
		Last Modified: Wed, 29 Jul 2026 18:26:37 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.8`

```console
$ docker pull nim@sha256:dce55dd8fc82a273f5bf23206e48d2983ad52d7b764eec24df1a12ec7c109199
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
$ docker pull nim@sha256:cd171dd5ec688153c25b32121702d23cc83f05ebd355a3501fa89688391f699c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185964309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97f06562321f311403f039c8a6bd483f971cccc4738353c97e97c3c7b75419f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:53 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:53 GMT
ENV NIM_VERSION=2.0.8
# Wed, 29 Jul 2026 18:25:53 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:53 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:53 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:55 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:55 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df0adee8e171a7b6be990152c666ff0f745f2b606aff943ceed2e950f9954c6`  
		Last Modified: Wed, 29 Jul 2026 18:26:15 GMT  
		Size: 130.2 MB (130157682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b77ec5b74e16c3dc473697ec2ffdb1538c34fb351ff3c908bd5af57e3fbf599`  
		Last Modified: Wed, 29 Jul 2026 18:26:12 GMT  
		Size: 26.0 MB (26025557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d48b4ec5cad5a9898fe897e5dc71791c5d4cbeb267980216798c4e436671f8`  
		Last Modified: Wed, 29 Jul 2026 18:26:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:92774b88a47fb7174ecafa5cdc05ce1e09cb4e74ef5eab0dfc3cf4b863d79919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058c59e777c2bf7cd6ac190d597a51188565a94f2bfbf20cc0c7759e9309635f`

```dockerfile
```

-	Layers:
	-	`sha256:a9bed6e0196dd9bbf8f6bfbe87714e96259d24dd192bd7eec9ceb10ceced72fb`  
		Last Modified: Wed, 29 Jul 2026 18:26:11 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; arm variant v7

```console
$ docker pull nim@sha256:c03db67a35d58eca32da24d2c617d771d4c46b94d334812fce1ffb22104318e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148856971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80247ef443f3398228669f734f38b5d23953b868c9e8473dd6d4f1a1f432c12b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:36 GMT
ENV NIM_VERSION=2.0.8
# Wed, 29 Jul 2026 18:25:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:38 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ef5ba566724e3fab3728a6a4be67cff85608629c54ca30868f77a6d5e2999e`  
		Last Modified: Wed, 29 Jul 2026 18:25:52 GMT  
		Size: 96.7 MB (96692877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5614e180182ada989a23afb97b063b3f4734d9f5303167c2a2214f6474fe871`  
		Last Modified: Wed, 29 Jul 2026 18:25:50 GMT  
		Size: 26.0 MB (25957462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c002e61964f26b897b1f5fa0040ce2865d9005748878bc1c45484dc0b83f72c7`  
		Last Modified: Wed, 29 Jul 2026 18:25:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:82b1b1fc800cc6984643ff9486a4bf4b1ec032878c9fba9393aaa9f8a548712d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f397c25c1a51f988fc465f76eddd727759490c319290bdc953d2322a20b891`

```dockerfile
```

-	Layers:
	-	`sha256:e217267fb784f1aa3b7e79baab4985218f27c266fbfe765200120b137fbb0b62`  
		Last Modified: Wed, 29 Jul 2026 18:25:49 GMT  
		Size: 13.5 KB (13505 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:fb1d534c178b7db5568dd3b0ad878ba4bb542a98848d2af5039957cbfb398349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178381644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa320538fd6423ac4207aa69bf4091167cd2002418f16aa20546cb38589a1208`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
ENV NIM_VERSION=2.0.8
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:39 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944d482b3aa0feb6875779a84e5b4df049f6f1c94da918e2782250af09a651c8`  
		Last Modified: Wed, 29 Jul 2026 18:25:58 GMT  
		Size: 122.8 MB (122848117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335f48fa800c12f96eac1561fcc1e6317c624b5a695cb917d04a1fb617a1fa3e`  
		Last Modified: Wed, 29 Jul 2026 18:25:56 GMT  
		Size: 25.4 MB (25389657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd1eb46e22e271cea35d52768f5f95bde6cb867b373c1a626be5d5cd0115f06`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:27006fdab79ef8173c14e2e3e4a75a5ed3f425a4d6bfc430e59e57f89a7c57ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278007d81f84010f8820a9d38c287669d467d5958163feb430e36c3b3c68a15d`

```dockerfile
```

-	Layers:
	-	`sha256:9c7d2ff5b0fb21054d1d4ed614d57e2380955c3aa3daad7554e4eac07e281b70`  
		Last Modified: Wed, 29 Jul 2026 18:25:55 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; 386

```console
$ docker pull nim@sha256:93b3f6990277eb856e0c31140dc34f02923dad0cddbe7e1b46e2e481b8bbb6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188993802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38139069fcd72f1b419829ddcca2db422a3cba70a7330d86bc0df985398c0820`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV NIM_VERSION=2.0.8
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:13 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c918e5470170ab5f262101807a29546974abe29020869e43ed0fccc6e87b93`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 130.5 MB (130464459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1498c184040cd14323bbd61b1ce0f9f42edac0890acee94a38825e5e8dc6d2e`  
		Last Modified: Wed, 29 Jul 2026 18:25:21 GMT  
		Size: 27.2 MB (27232877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ff238197a2cfec72bc3bf63e3a63d285f43fb17e601f0ba900a3f4bf4021f2`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:7be18a757edb3b4d7fab6fce65e207fbece681f6a601c1c9a4ecada84fdb30e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48edfff7d75116bc4e8f0dc37070b2df354b7d73ec9cd75241edde24df8fd6cf`

```dockerfile
```

-	Layers:
	-	`sha256:2c98d39a784a28592da27954ef110e6bd6926e1052d73307a69024c6fd64af64`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

```console
$ docker pull nim@sha256:aebcfaeaf662b62842b9b583a4fa367f19f51f246118fa6b3e61732f25e12561
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
$ docker pull nim@sha256:b198302c705bcc2df2315b2e3dbb1bdbf4e51dca987d6b38cec4f824f87588e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190128174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bb98841f465a3d75663003f67980665906ec7d5fc4d515637112aff4811623`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:52 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:52 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:54 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ac8d10184bdb7fccb9ff23d327f74bf7d562e77dcc952b1e43e3cafd4fe0d8`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 130.2 MB (130157508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dce80176a6676558812a01259a68774c660c8109ba28abc8c4156073a98a9`  
		Last Modified: Wed, 29 Jul 2026 18:25:11 GMT  
		Size: 30.2 MB (30189596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b7a15d4a27aff4934777dea929efadcf828fd9371e4130f65ea5a9394a5452`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:345f241229547cf08a6d411707c52ceba03ee7a7187995d44e3ade7974666a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61be45c43503cd4028874e444ecd29a8c60a1680da4b169174b07205dfb4b19`

```dockerfile
```

-	Layers:
	-	`sha256:bb93f5880302584c438430388da60a52e9406efbe49b50f7fd339800a6e8b5d1`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 14.3 KB (14319 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:7cee56bade69cbfe8407c5be5aa20cda27a24fcd211f55b90e00c6cbaa702e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153477446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792ba0e6d30d0f6114287ae386a7280733994553c2b35435c03880e1128ae647`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:27 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3495709931d4faa04a0b75541e06e88b267581d2eefd57425b226e6135de87ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:43 GMT  
		Size: 96.7 MB (96693160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de31de51cc886d58822b8468e7deeb57d1e485a8d2d4e6d9f1b347f46d98316`  
		Last Modified: Wed, 29 Jul 2026 18:24:41 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa8b14dc4186d58b6299a896f0059e895b8097c81d35a15ffcf61ca33309bb`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:cc1829012ce59a64d312efe4cf008079b52381abaf26d71f2c92c18d982870fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3919c301997fe3fe785f5532c2222f2596d8dcf34e28e51f99d65d5c22949b53`

```dockerfile
```

-	Layers:
	-	`sha256:baf9fece1910091220178328aa108d5471109f9ad0a52ecb66cae0b311dbe329`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 14.4 KB (14408 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:bcdc6dbd3efd5478f721c58326065df65513c86a77094961b7a33bbcf696ee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182483808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e4f9e1a579f337590de5f21f2ec043f7197bd60877cc71cec2105fd12a25b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:36 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:38 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2de7cd521795ec9ebcecc067e93fd7eb1e56c82fd618f818b35831cd394336`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 122.8 MB (122848076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763631542b8a67e1589d246516a3890deeb8db200182eafbbbd78d4caa04a402`  
		Last Modified: Wed, 29 Jul 2026 18:24:55 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e370b010770da2b699efeef05847e4579842a5531f0891b1f04ff0f9127918b6`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:b558a5c099a9b24e5afb7cafc888d2ef76eefba39a28d896c2a729152a549bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e4452a9b0ee2eaa33b7fecfd40f5b43060bfe2046b25afeabcea58959f715`

```dockerfile
```

-	Layers:
	-	`sha256:47003adc5244456e964b4511bfb8c267c1f28712ddc6c122cb4865c13b0f0b5b`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 14.4 KB (14438 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:370aeeda66cb31c651eb995affba0d2748f83ece9989f0c6d28460f2b21857ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193561596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ea6d49cb5b80bdd9d11bbea6e498ede947c90734d77a4a0d6bd3f6a456c30a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:45 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c918e5470170ab5f262101807a29546974abe29020869e43ed0fccc6e87b93`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 130.5 MB (130464459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586c57dfe19282379a5a3d73d47f7f78e2c27d62d4abf4ca14c012193a07c596`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd65b41293776730d684001723eeee0de9774aa8b1fd51e50b458736ea184f0`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:c4b53fcdafe910f333c997f0f45c7f089a999a433358b6f6a536fd83a29ee9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f7760288e6dcb65fbd6d1f30522f8a576e721cb86ec9fc3a08f23057fe7bd`

```dockerfile
```

-	Layers:
	-	`sha256:78d436cb6ef10b3c2c3cd601f54bebb411e72fd2973a9ab44670c598dfaea73e`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 14.3 KB (14285 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.0`

```console
$ docker pull nim@sha256:b0d5d1125a33425f8b45ec7e1a947d4db4f3effdece9e14a17dc3cbfec4b8e22
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
$ docker pull nim@sha256:f0394fbf27c068ddb0cab9d55408370c0bc5e142ca496b8c6311de08c164368c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.8 MB (186832491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bf615260bb4d533cdccf0959e629ee285a3b4949795c08bb6563857f28ff5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:59 GMT
ENV NIM_VERSION=2.2.0
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:00 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a43474d6165e0f5cbdb54846294146afca6269f3714835162cf33b667bfca9f`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 130.2 MB (130158431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4346a2725d7bb207e01388062c1c75818c281f1a56bc9d5c199fbf386781ce03`  
		Last Modified: Wed, 29 Jul 2026 18:25:17 GMT  
		Size: 26.9 MB (26892990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eeff8e92997dc4e7683d0ebc1ae8039ef29a1293d1ef0491f9502c104bac8c8`  
		Last Modified: Wed, 29 Jul 2026 18:25:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:e0cddb5132f8864a20b6a70c56418651018e94bbd7f0ed8c110f8b7d0de82e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c2898ac5e582f4f906c83832c179c7d2f6b2c79e7725423441618713f367be`

```dockerfile
```

-	Layers:
	-	`sha256:c88b49f9f21dafe33dfac042db76e8bf8b6cd57e4ec822845e233c3781f9ea38`  
		Last Modified: Wed, 29 Jul 2026 18:25:16 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:70b832a3aa74bec4225381f001d92975426b8fc5e8f3e8c448100fcb16372d55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149821308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5a9b86ffe5a2d0f5a60ff6f114bcde81a9c9f2bc2c30007b7cbf6c92709175`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:13 GMT
ENV NIM_VERSION=2.2.0
# Wed, 29 Jul 2026 18:25:13 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:13 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:13 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:15 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:15 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e492be2904ed845bde8a1c13b07785de6655d4c7f1097a719ebea481b5107d`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 96.7 MB (96693195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ae8b370f0a3ac287bdd83f8756273e9ca368cae4c2d2f05c0f16526b5a25a1`  
		Last Modified: Wed, 29 Jul 2026 18:25:28 GMT  
		Size: 26.9 MB (26921482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e01664c88a829635f36794f3dfaf9f09ddc5a5737686b92b2938ec4d349ef6b`  
		Last Modified: Wed, 29 Jul 2026 18:25:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:e0b17be3062d1b44e8b0c1f4e8415ecea5f73c6cc00b2038996b007e9569ecfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c205d0527fe8311920662d4017b9d386200c6753956232c8a33ffd0eab25218`

```dockerfile
```

-	Layers:
	-	`sha256:276ded2c40449e773c046018a3e5dc6c263098a902d47a32e2eeb4fa8cd75960`  
		Last Modified: Wed, 29 Jul 2026 18:25:27 GMT  
		Size: 13.5 KB (13506 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:2300a9e109b8fa963dc380aa7bc840e229447170622f47c74c07094018d5e04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179193764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d9f7762c72361cb470736440b3b15684325e912da0805daae18d52c2e70878`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:58 GMT
ENV NIM_VERSION=2.2.0
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:00 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe1c78271db7185946d5dcaea9cf408e97336577d270bad8bb7272b91fae153`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 122.8 MB (122848083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9a357dc54de8573cc4e5873899d0f8f2f8fadff7d8fbc2ffb3baf127316cfc`  
		Last Modified: Wed, 29 Jul 2026 18:25:17 GMT  
		Size: 26.2 MB (26201811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eeff8e92997dc4e7683d0ebc1ae8039ef29a1293d1ef0491f9502c104bac8c8`  
		Last Modified: Wed, 29 Jul 2026 18:25:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:1929010242bb990f91b66d49d5057ed0293cf4a9ad8d90b40e600f748a4653e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166a246a781a361aacc235cf11b3bf0d188d760324671fae9c60fd250af8eb6e`

```dockerfile
```

-	Layers:
	-	`sha256:436354f71625984b7fabfe0635bb2bf4ee268f62654e777686f94c5a8657b4e1`  
		Last Modified: Wed, 29 Jul 2026 18:25:16 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; 386

```console
$ docker pull nim@sha256:01137757cd62f8494566b4068021e38e46e47e40f86f1e79b004bb4fe5b4ba2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190025136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4387388e9a19d3a2010584373735e591626869ad33c421f13da04dc834a5f407`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:37 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:37 GMT
ENV NIM_VERSION=2.2.0
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:39 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:39 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad98ab6f017f1b5b421f839eaf563bf6b82d41aafcaf26c9aa11433fa7861c3a`  
		Last Modified: Wed, 29 Jul 2026 18:25:58 GMT  
		Size: 130.5 MB (130464106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ac1644bcb20209ed8fe9c1ac0d217fd5f622fc36e66681e5d00ebba51eade`  
		Last Modified: Wed, 29 Jul 2026 18:25:56 GMT  
		Size: 28.3 MB (28264564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd1eb46e22e271cea35d52768f5f95bde6cb867b373c1a626be5d5cd0115f06`  
		Last Modified: Wed, 29 Jul 2026 18:25:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:78b20582af63819097722156588391fb5938ded6d0bce9479648aa1bf31efc3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287ad2844543968ba112606d75344a9006300bfe99f7f5c70bcc6fb953eb8d65`

```dockerfile
```

-	Layers:
	-	`sha256:443b64ded2a3f1324eb3fe5478ebea1823dada16eb2a6799e5b2ccedd75f0df8`  
		Last Modified: Wed, 29 Jul 2026 18:25:54 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.10`

```console
$ docker pull nim@sha256:aebcfaeaf662b62842b9b583a4fa367f19f51f246118fa6b3e61732f25e12561
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
$ docker pull nim@sha256:b198302c705bcc2df2315b2e3dbb1bdbf4e51dca987d6b38cec4f824f87588e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190128174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bb98841f465a3d75663003f67980665906ec7d5fc4d515637112aff4811623`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:52 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:52 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:54 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ac8d10184bdb7fccb9ff23d327f74bf7d562e77dcc952b1e43e3cafd4fe0d8`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 130.2 MB (130157508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dce80176a6676558812a01259a68774c660c8109ba28abc8c4156073a98a9`  
		Last Modified: Wed, 29 Jul 2026 18:25:11 GMT  
		Size: 30.2 MB (30189596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b7a15d4a27aff4934777dea929efadcf828fd9371e4130f65ea5a9394a5452`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:345f241229547cf08a6d411707c52ceba03ee7a7187995d44e3ade7974666a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61be45c43503cd4028874e444ecd29a8c60a1680da4b169174b07205dfb4b19`

```dockerfile
```

-	Layers:
	-	`sha256:bb93f5880302584c438430388da60a52e9406efbe49b50f7fd339800a6e8b5d1`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 14.3 KB (14319 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; arm variant v7

```console
$ docker pull nim@sha256:7cee56bade69cbfe8407c5be5aa20cda27a24fcd211f55b90e00c6cbaa702e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153477446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792ba0e6d30d0f6114287ae386a7280733994553c2b35435c03880e1128ae647`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:27 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3495709931d4faa04a0b75541e06e88b267581d2eefd57425b226e6135de87ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:43 GMT  
		Size: 96.7 MB (96693160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de31de51cc886d58822b8468e7deeb57d1e485a8d2d4e6d9f1b347f46d98316`  
		Last Modified: Wed, 29 Jul 2026 18:24:41 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa8b14dc4186d58b6299a896f0059e895b8097c81d35a15ffcf61ca33309bb`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:cc1829012ce59a64d312efe4cf008079b52381abaf26d71f2c92c18d982870fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3919c301997fe3fe785f5532c2222f2596d8dcf34e28e51f99d65d5c22949b53`

```dockerfile
```

-	Layers:
	-	`sha256:baf9fece1910091220178328aa108d5471109f9ad0a52ecb66cae0b311dbe329`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 14.4 KB (14408 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:bcdc6dbd3efd5478f721c58326065df65513c86a77094961b7a33bbcf696ee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182483808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e4f9e1a579f337590de5f21f2ec043f7197bd60877cc71cec2105fd12a25b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:36 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:38 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2de7cd521795ec9ebcecc067e93fd7eb1e56c82fd618f818b35831cd394336`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 122.8 MB (122848076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763631542b8a67e1589d246516a3890deeb8db200182eafbbbd78d4caa04a402`  
		Last Modified: Wed, 29 Jul 2026 18:24:55 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e370b010770da2b699efeef05847e4579842a5531f0891b1f04ff0f9127918b6`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:b558a5c099a9b24e5afb7cafc888d2ef76eefba39a28d896c2a729152a549bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e4452a9b0ee2eaa33b7fecfd40f5b43060bfe2046b25afeabcea58959f715`

```dockerfile
```

-	Layers:
	-	`sha256:47003adc5244456e964b4511bfb8c267c1f28712ddc6c122cb4865c13b0f0b5b`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 14.4 KB (14438 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; 386

```console
$ docker pull nim@sha256:370aeeda66cb31c651eb995affba0d2748f83ece9989f0c6d28460f2b21857ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193561596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ea6d49cb5b80bdd9d11bbea6e498ede947c90734d77a4a0d6bd3f6a456c30a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:45 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c918e5470170ab5f262101807a29546974abe29020869e43ed0fccc6e87b93`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 130.5 MB (130464459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586c57dfe19282379a5a3d73d47f7f78e2c27d62d4abf4ca14c012193a07c596`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd65b41293776730d684001723eeee0de9774aa8b1fd51e50b458736ea184f0`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:c4b53fcdafe910f333c997f0f45c7f089a999a433358b6f6a536fd83a29ee9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f7760288e6dcb65fbd6d1f30522f8a576e721cb86ec9fc3a08f23057fe7bd`

```dockerfile
```

-	Layers:
	-	`sha256:78d436cb6ef10b3c2c3cd601f54bebb411e72fd2973a9ab44670c598dfaea73e`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 14.3 KB (14285 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.2`

```console
$ docker pull nim@sha256:c1d6ba1957c82dd36bd605d0f274441500c7b29dc8f5303edb27ee466d01a0a6
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
$ docker pull nim@sha256:38f5203ad8945aa4322f5870e50b5e78b4f313e8b744a449373adbaa0efd4cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187217202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f8e5df027043ed2b623b313fe6e8aeb6887f81feea313c622001c977d4d2b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:28 GMT
ENV NIM_VERSION=2.2.2
# Wed, 29 Jul 2026 18:25:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:28 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:30 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139bb4c0134c1955aab6699e90b0ef654694bb107660961dcc2ec3714fbe0e68`  
		Last Modified: Wed, 29 Jul 2026 18:25:50 GMT  
		Size: 130.2 MB (130158344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0825966f89f3af6cd8c303d3394e3abf367741ac326a2e62df420788948893cd`  
		Last Modified: Wed, 29 Jul 2026 18:25:47 GMT  
		Size: 27.3 MB (27277788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c6f9d23a04cdb202d78a27ccd62c3eca9f6ebe2ee8ba509440fcb8832c9a26`  
		Last Modified: Wed, 29 Jul 2026 18:25:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:98edc7dac3eeeff6fb4998d3b0e148eedbce13a7a1301a93cc2686d11899ddbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b19e42ccaf7a2c7b63dc9e9a547cbd2af3599dce37dd191b1c7ffc3e6f53694`

```dockerfile
```

-	Layers:
	-	`sha256:cb36959d018de70393a6a6c592ce56691417709f5b4d85b67e61e2b0736f0e67`  
		Last Modified: Wed, 29 Jul 2026 18:25:46 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:c522e907dba68112a7d6f83d9ab0bdb5f0b821cfd7af07a629e145cb8188db4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150214980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db12f68a7f593da6d8d846c20a7d1f46b836f8b03370c314ea923128e318d0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:01 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:01 GMT
ENV NIM_VERSION=2.2.2
# Wed, 29 Jul 2026 18:25:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:01 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:03 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a046e329e92d17bd5a897245e03732157f8f0a3b4a77c78a7823c1b5e34d5d1`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 96.7 MB (96692965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14c684de26f6e2ebfdcb984ce48b5911050846b22337e6102bb92f687fc4e4f`  
		Last Modified: Wed, 29 Jul 2026 18:25:16 GMT  
		Size: 27.3 MB (27315382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c24424b669b645f7500e9abe59eacbaed84a315d47313ce7f8d894f37dde5e`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:cfaa36ca746e7a104796c59637095fa397c1c5b1b169993dbb282aa7f458da12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237852258e053a70f286384dee35bdd78824919c26aea5e7e9c4d42f42084929`

```dockerfile
```

-	Layers:
	-	`sha256:eac608279213fe5f2bf38fd25edee2aed57aa8bdc348526c01b010248b7c0dfb`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 13.5 KB (13505 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:7f6afd30db3bcfd7d0d67cca844835abc593a43c52fe2968044e679adc12281c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179538430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd89232b8c71496a0c17f978d1ad956ddbf87689a8ef8b64ccfce45fc90dccf1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:55 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:55 GMT
ENV NIM_VERSION=2.2.2
# Wed, 29 Jul 2026 18:24:55 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:55 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:55 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:57 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:57 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2589635fb66883892d13c2344d3b0236c8eb6146fdd0e3b89501f8ba4c8e28af`  
		Last Modified: Wed, 29 Jul 2026 18:25:17 GMT  
		Size: 122.8 MB (122847906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd59d86bfb238ab68641b7bd43cfb2b6a4d6f9f3fa39aecb240b200bdc984a6`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 26.5 MB (26546653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4b879453137427ee363ed48b1fe78b1bd6ab7264144bb2cecac5d62ede85bd`  
		Last Modified: Wed, 29 Jul 2026 18:25:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:0c4618c87916325e90b10ec052ca2a6650dc96824c344c254150a6030a451d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1481c45d4bfe17373591a595e3c1ac177d953381547c6ec45cd6b29433489c`

```dockerfile
```

-	Layers:
	-	`sha256:7212b3de93f87769f9db73ba602facf504999439f8cdd0b930a6ca72f0a68c25`  
		Last Modified: Wed, 29 Jul 2026 18:25:14 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; 386

```console
$ docker pull nim@sha256:a0c3915920efb6728d4b010e27b96c6939b2db5bf7acafb16e55d966870960a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190437564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0434f7cf0d2813f68db204ff1bd583c7053cf91d6de3e4c0a66d70c0a5febabb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:20 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:20 GMT
ENV NIM_VERSION=2.2.2
# Wed, 29 Jul 2026 18:25:20 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:20 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:20 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:23 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:23 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf3b1e384cd577016a6996a2fd6617bf64ef50c85d5da5215e68713fd6cf97c`  
		Last Modified: Wed, 29 Jul 2026 18:25:43 GMT  
		Size: 130.5 MB (130464192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00208df6a40dc38b0e353a570c27d2c7164b7fe11fbb865f5143565990a0bb33`  
		Last Modified: Wed, 29 Jul 2026 18:25:41 GMT  
		Size: 28.7 MB (28676906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e8e087c04a43973ea28200eda5542343886035f66f6587efd73f8547a6026e`  
		Last Modified: Wed, 29 Jul 2026 18:25:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:8b31f9cbb65e4daec375b11fffc797ebe5c5bdbe46e4c05849153b9c5350929c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298b0ff4dc4b193f74923996a9dcd02035bbdb5abe9759c7b5ce7ba56debf87e`

```dockerfile
```

-	Layers:
	-	`sha256:fa384492593e65024ddf5764716aa760980f44399187a84852930e1b1a9e0f4e`  
		Last Modified: Wed, 29 Jul 2026 18:25:39 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.4`

```console
$ docker pull nim@sha256:74f0c23ef7283cae71cf5ee9feef0a178d44f1b5de7f58289ff6e8b6165ffee9
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
$ docker pull nim@sha256:1fd24fadc5a91e4b194b00ed122f9bd8f0d8318574b5312bd09cdac64209013b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187679141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1436738e079c60e414ff0b582d5715765c6233c9c4ea1c9893384ab38c86ab31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:13 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:13 GMT
ENV NIM_VERSION=2.2.4
# Wed, 29 Jul 2026 18:25:13 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:13 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:13 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:15 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:15 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba42cce79d7be4e36f5e9777c448d4e109d0836d17c5c1426981d4d488eae68a`  
		Last Modified: Wed, 29 Jul 2026 18:25:35 GMT  
		Size: 130.2 MB (130158115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32cc050973deb9397701806348911b5ff365c7d6f5c7a7b29eecd134952d2b5e`  
		Last Modified: Wed, 29 Jul 2026 18:25:33 GMT  
		Size: 27.7 MB (27739957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e01664c88a829635f36794f3dfaf9f09ddc5a5737686b92b2938ec4d349ef6b`  
		Last Modified: Wed, 29 Jul 2026 18:25:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:576325d2815d850db9b75e736173107d64a0c6d3224a69c1a47d48ecad090149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed988b6f05832fc3b88b8e40e658a544bcbd5bb17d8eb71f8db02f2c42b1e75d`

```dockerfile
```

-	Layers:
	-	`sha256:5b8f4e9f9c7da61235cde2b96074d5b3d2ba511eabb9fbe116ec2e8f8bbd9c48`  
		Last Modified: Wed, 29 Jul 2026 18:25:31 GMT  
		Size: 13.4 KB (13441 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; arm variant v7

```console
$ docker pull nim@sha256:b9040ce39f5e52110335ebb0ea727513f57530ec8afd556728440fc23084e3ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150855704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6caa233194c63e96ef9b5f7ff481044ba9d065dc455654b1558d404d44c2699`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:47 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:47 GMT
ENV NIM_VERSION=2.2.4
# Wed, 29 Jul 2026 18:24:47 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:47 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:47 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:49 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:49 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806743e7850655158f189f93dc9c0a774bd9b8e640ca790f3b9280058cc5d143`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 96.7 MB (96692916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaaa17e204937a75e36fc49ef6ba994cf7f7baa41f68ec316c30342406adfe7`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 28.0 MB (27956156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba20b8e30f0f5534e02db8f90f5a173aaeb45d08a89c088ff5ba87165c390d46`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:862f04a726ea1036cd8a522869844cf771af6edfe680e2066cfb6f51b36c7f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad328c9f856905b2b96832485a169aa922740ed0e5c183482b7a6e43e4c26d8`

```dockerfile
```

-	Layers:
	-	`sha256:e1eb24a3a07552c70f164d0a367510b4fda8fb1f96af2c7f30a80426645d68e1`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 13.5 KB (13506 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:396a4bb67e369e014109e8988bf7d95fe5290aab1daeeb3110f9cd8210adef4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180057534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376a40023bb8ff400db8ff3c57f08b8fb3a1907316926fd249f3f6a9c4a57ce7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:55 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:55 GMT
ENV NIM_VERSION=2.2.4
# Wed, 29 Jul 2026 18:24:55 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:55 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:55 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:56 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:57 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2ea15d6f82e2731483f3672ddf160c2be7117c151737c9208a74b506a57585`  
		Last Modified: Wed, 29 Jul 2026 18:25:38 GMT  
		Size: 122.8 MB (122848025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f3be0d5ee686a88fe3fce924d1a620108a515b0439e6323517aa30e4cd4a72`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 27.1 MB (27065638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4b879453137427ee363ed48b1fe78b1bd6ab7264144bb2cecac5d62ede85bd`  
		Last Modified: Wed, 29 Jul 2026 18:25:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:052bf53c088e28dfd84c756d6162ecaf5eae3b73b626ebc575a452c875a7dd38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183b360ee11763bfcfbca445c5fbd0760a7ac30766279260786fc5541971f769`

```dockerfile
```

-	Layers:
	-	`sha256:79bedd9cd8912bf35e69a79bb1323dc778fef4de9a8e224c8e8b7760d91b47bb`  
		Last Modified: Wed, 29 Jul 2026 18:25:13 GMT  
		Size: 13.5 KB (13524 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; 386

```console
$ docker pull nim@sha256:60e2dd1bf5763a939ffa710c49fcc005c2960604fc9fe016f6ad9f0b066ed9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190963371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120df56282437f0e5a217eb0b876a4d49b3eb96ad99b97fcc6459a85b9108b6d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:06 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:06 GMT
ENV NIM_VERSION=2.2.4
# Wed, 29 Jul 2026 18:25:06 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:06 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:06 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:08 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:08 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ab7b1dadbe9d5b453e813d43ff11e25fee695b88d866cffb5af9c94ab23d40`  
		Last Modified: Wed, 29 Jul 2026 18:25:26 GMT  
		Size: 130.5 MB (130463415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b6621d5c90ad89b904a960147657a0860a6392ad45fd7f5877171f8a92255c`  
		Last Modified: Wed, 29 Jul 2026 18:25:24 GMT  
		Size: 29.2 MB (29203492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5a6792a2ca9f24652c63f34057d4ebdfa9b0ab2670c2819b0fc73f123f0a82`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:96191f44f6527746dd8036b00c99b91556ed496dc481fa614cbd0323bdd67d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f613aa23d2c959f6c68e8c74f10ec418087d65e9d4fbe15793e2f7b6a72269`

```dockerfile
```

-	Layers:
	-	`sha256:ad2767715f4adac4404863120ad7ad5bd6c48f6322b198d59d5e8090cb164e74`  
		Last Modified: Wed, 29 Jul 2026 18:25:22 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.6`

```console
$ docker pull nim@sha256:5d7793e068b44111cde82eefaa723e5ce0614eeba51e359bded09a6e4ee74cae
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
$ docker pull nim@sha256:68d103dc1c61f92e4bca08eef3b8571b739509f883a0c3bafccfcdbb639d642b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188051565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e78f4153762d1fd1d050481e5c65f5a5443a7bd1709ef1cfb5e31e4aa9b1ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:02 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:25:02 GMT
ENV NIM_VERSION=2.2.6
# Wed, 29 Jul 2026 18:25:02 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:02 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:02 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:04 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d3d46ac12a37553f711c59ec10c70d42a8ff7ea6441a96ea84f8b44ec8d55d`  
		Last Modified: Wed, 29 Jul 2026 18:25:23 GMT  
		Size: 130.2 MB (130159122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a379585fbaab83390dc8c564ed3bf3a00feec676cf3267023eea7a8342eaa`  
		Last Modified: Wed, 29 Jul 2026 18:25:21 GMT  
		Size: 28.1 MB (28111374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3edc9191ac7446dccd03f84fbb0e108c884beedcd7b7d06cad4080239a9fd0b`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:be7f9e6fd2f28e9fd110e6b35d34b302fe043a94c2d04b0a2bfe90f65ac4ee95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a123ab7fbb1b8406f352d65b9b9714c7ce80af8271efe3c7fded3b0294db39ca`

```dockerfile
```

-	Layers:
	-	`sha256:19b09d4b63c0f470f86254b4f5fe36232643d3b48569cf5fffd25061c0a2d117`  
		Last Modified: Wed, 29 Jul 2026 18:25:20 GMT  
		Size: 12.8 KB (12829 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.6` - linux; arm variant v7

```console
$ docker pull nim@sha256:20f83eb11efa708b3c913042a19a4e78b7f9f007a2f4691d944ff7b64c4de6f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151300044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42015a46dd422b92d1c3fdcbaaf38de7b34de047fc44b17b5bd90b596fe34d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:44 GMT
ENV NIM_VERSION=2.2.6
# Wed, 29 Jul 2026 18:24:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:44 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:47 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa468d0403dabd5b1f7cd8a6a8987e0b96949f9275b26bc3f893e4121e796c25`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 96.7 MB (96693104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6f6cb6e4d50d2811e6215a9ef5c30a6c42f656e1e7510a7a43d3052a8fd9a2`  
		Last Modified: Wed, 29 Jul 2026 18:25:00 GMT  
		Size: 28.4 MB (28400308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374e243326fa3c8774103f5cc7ea557351ea54ddff64bdc9fecc65db9e2494ad`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:fece76f8342cc7e019cfef5d2d78fc426149982f910ab8e2c3b4144bf5649c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 KB (12894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1126ae9ae3afba73625c7dd97c96cac54b3cc0c07bc951f16b3da3c5909ac893`

```dockerfile
```

-	Layers:
	-	`sha256:3e6b7a141a01f768f4d263432a1684214934aff084efb1b543ba406b632a0cfd`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 12.9 KB (12894 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.6` - linux; 386

```console
$ docker pull nim@sha256:d11fbd52e1e5247a648158cd11d165ba934d5fc1ca926bd3a32a20671096c7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191402622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b88af2f42d335eeb1336c25ab5c5ad3866292da2ef3ff6abcde33d331bc467`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:59 GMT
ENV NIM_VERSION=2.2.6
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:02 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:02 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbef8da34346714a44a3c12aa8d74a21c8d4076f6078d15c91568ad5c02d538`  
		Last Modified: Wed, 29 Jul 2026 18:25:22 GMT  
		Size: 130.5 MB (130464064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462ce34d52456d914301ffbdfedfba4b882a80c5e54b89d75e99cd5516ebc177`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 29.6 MB (29642092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1aa436f2a6e596a632e3ae0882ac8d8ffeed686c2894dabcfc6b6a07ebafcef`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:5b509509dabb8c686bae346bb7cedc426dfb976eeb433be724d866e428288728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbba77a6ade739b5aa13880b8d3fad2c2ffbdfe3f33f97438bac590f379fcc6`

```dockerfile
```

-	Layers:
	-	`sha256:60312d3a5357f61841760f8ead271f1fdd847b160629af953f4cc1b04d95e15b`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 12.8 KB (12810 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.8`

```console
$ docker pull nim@sha256:3210ec06f810149b8b03f286110e42d748a39f4fec54c55b2704ebb625a94a86
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
$ docker pull nim@sha256:cbf0f7e40059132aa50defbc693c93e4798d4e3fa4d49841bba7a49fba25f488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189234822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f87662c8e578abb444672b8f3a041f2525dce56eac407ba51abac2f3c56e4e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:57 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:58 GMT
ENV NIM_VERSION=2.2.8
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:59 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:59 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6192d75b8de5634f8f79e6a992b43683914ec05f00dbfd541fa7c1da7293dbbf`  
		Last Modified: Wed, 29 Jul 2026 18:25:19 GMT  
		Size: 130.2 MB (130157850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2bcdc24f924bddf29d03cb16c0e1ce1eebdf54131b02421f8419c03315bba3`  
		Last Modified: Wed, 29 Jul 2026 18:25:17 GMT  
		Size: 29.3 MB (29295901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cccb45249550a408f82abd106171fe56d0eec2e2965e043ffd106bea307d84ea`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:762da1ebb484f06fdefa0d97a4c027cc5e833c140469cfc027c278022f5773f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0525c58e36ee25f09285cd42e1e02e6b72808611ba14ad97fde9e5a14a9b81aa`

```dockerfile
```

-	Layers:
	-	`sha256:8416a31a0cc18b521e11574b99265aac4c7df1430a93ebc18ceea03254fa961e`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 13.4 KB (13440 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; arm variant v7

```console
$ docker pull nim@sha256:3a2fad3075a1cd8e1078da9aacd9aee7028ba113956430ec274995a5fcb03ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152540755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cab7127c87252a737a6f94961b1faf9fb3856fa67954cf454ada78e2dd57775`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:43 GMT
ENV NIM_VERSION=2.2.8
# Wed, 29 Jul 2026 18:24:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:45 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dde4f5b8255a967016daa596f78e6403cbde0ae5b2da2e8e3138c21ca38e358`  
		Last Modified: Wed, 29 Jul 2026 18:25:00 GMT  
		Size: 96.7 MB (96692993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40ac41212cead54e7671fffbbd9241e01a6c5bb8a3b4cc80cc751b1df45ae92`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 29.6 MB (29641131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd65b41293776730d684001723eeee0de9774aa8b1fd51e50b458736ea184f0`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:b248d48156db96be8311acca77184475adcf6ae04380c82c1cb4d4532133891c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e103669814de9c0e3c1dc134a22560559c8dd5d5f6bb7eac98b60aa3a4e37c6b`

```dockerfile
```

-	Layers:
	-	`sha256:62b3987100b125d2c0f9d0ef794e392cb6a62d413ac3d3c32cb613e4f7c14531`  
		Last Modified: Wed, 29 Jul 2026 18:24:58 GMT  
		Size: 13.5 KB (13505 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:db7badaec724479948b09638829ba7cb3f64a0e4633a3a1c9ed264a525d99fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.6 MB (181600300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ce93cb621b4cb35233cb1f83ee8245a350d23ef2857f14390ea9e9179d9c6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:41 GMT
ENV NIM_VERSION=2.2.8
# Wed, 29 Jul 2026 18:24:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:41 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:43 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e4727bd7392938fef9c382ec34a1b1e1e2656f19cdc1e6a18331bc9615357c`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 122.8 MB (122847928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b4f06f1ae8c1cf05938dabbf161fae12f09441ab980b7fa485f1c2b71e2159`  
		Last Modified: Wed, 29 Jul 2026 18:25:00 GMT  
		Size: 28.6 MB (28608502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af0d31f221535745164a3343688526417cd44c6d44a649ec744d273f255b9605`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:217b8b31c78dc9db2f5aa0136ed4db0eea10bbeb2468dd047ba299da38ded5ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 KB (13522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ff8aacd2388c6ba5f7071898598bd00f88f562f0ba49268222a7b2526ab885`

```dockerfile
```

-	Layers:
	-	`sha256:43df64722ff5740ae26eb9ffaf064e491cf4f2cdeca24b5f40c4a327082b10e5`  
		Last Modified: Wed, 29 Jul 2026 18:24:59 GMT  
		Size: 13.5 KB (13522 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; 386

```console
$ docker pull nim@sha256:6f6703ece95d66f4c7f7fbbb46558f18eb983547c345cd193d0450aff36d8848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192613925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aeb160aaced4b6bd88353f15be1acb10c72f7d226ed79b2fe6961d1977b6758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:58 GMT
ENV NIM_VERSION=2.2.8
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:25:01 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:25:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203cd99d07c67412a4f2d546e0bcf987bb25565c4e7d58b6ae758da7fab4c1bc`  
		Last Modified: Wed, 29 Jul 2026 18:25:23 GMT  
		Size: 130.5 MB (130464005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8567958813c4653baf83d147d120e05b6a007f27cf22136e37d1d6b12b5ec43e`  
		Last Modified: Wed, 29 Jul 2026 18:25:18 GMT  
		Size: 30.9 MB (30853454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a246c6e2f18e654a1c65dcb504170abc554defb9f6242fdf8c71990c81bc5ac`  
		Last Modified: Wed, 29 Jul 2026 18:25:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:cdfa909272c5732ac4b504cdd41391f1eac8c9aac1f671f33c87aee8f2054e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b9a4908ade1415a661a1e4a9d7cac19e0a077ce25a9f2767095dbb03e9b308`

```dockerfile
```

-	Layers:
	-	`sha256:b3e98bff1298808608e74fb9202974c4f904efb24908722398f35b64d6ef5234`  
		Last Modified: Wed, 29 Jul 2026 18:25:17 GMT  
		Size: 13.4 KB (13422 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:aebcfaeaf662b62842b9b583a4fa367f19f51f246118fa6b3e61732f25e12561
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
$ docker pull nim@sha256:b198302c705bcc2df2315b2e3dbb1bdbf4e51dca987d6b38cec4f824f87588e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190128174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bb98841f465a3d75663003f67980665906ec7d5fc4d515637112aff4811623`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:52 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:52 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:54 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ac8d10184bdb7fccb9ff23d327f74bf7d562e77dcc952b1e43e3cafd4fe0d8`  
		Last Modified: Wed, 29 Jul 2026 18:25:15 GMT  
		Size: 130.2 MB (130157508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dce80176a6676558812a01259a68774c660c8109ba28abc8c4156073a98a9`  
		Last Modified: Wed, 29 Jul 2026 18:25:11 GMT  
		Size: 30.2 MB (30189596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b7a15d4a27aff4934777dea929efadcf828fd9371e4130f65ea5a9394a5452`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:345f241229547cf08a6d411707c52ceba03ee7a7187995d44e3ade7974666a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61be45c43503cd4028874e444ecd29a8c60a1680da4b169174b07205dfb4b19`

```dockerfile
```

-	Layers:
	-	`sha256:bb93f5880302584c438430388da60a52e9406efbe49b50f7fd339800a6e8b5d1`  
		Last Modified: Wed, 29 Jul 2026 18:25:10 GMT  
		Size: 14.3 KB (14319 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm variant v7

```console
$ docker pull nim@sha256:7cee56bade69cbfe8407c5be5aa20cda27a24fcd211f55b90e00c6cbaa702e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153477446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792ba0e6d30d0f6114287ae386a7280733994553c2b35435c03880e1128ae647`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:25 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:27 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3495709931d4faa04a0b75541e06e88b267581d2eefd57425b226e6135de87ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:43 GMT  
		Size: 96.7 MB (96693160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de31de51cc886d58822b8468e7deeb57d1e485a8d2d4e6d9f1b347f46d98316`  
		Last Modified: Wed, 29 Jul 2026 18:24:41 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa8b14dc4186d58b6299a896f0059e895b8097c81d35a15ffcf61ca33309bb`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:cc1829012ce59a64d312efe4cf008079b52381abaf26d71f2c92c18d982870fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3919c301997fe3fe785f5532c2222f2596d8dcf34e28e51f99d65d5c22949b53`

```dockerfile
```

-	Layers:
	-	`sha256:baf9fece1910091220178328aa108d5471109f9ad0a52ecb66cae0b311dbe329`  
		Last Modified: Wed, 29 Jul 2026 18:24:39 GMT  
		Size: 14.4 KB (14408 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:bcdc6dbd3efd5478f721c58326065df65513c86a77094961b7a33bbcf696ee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182483808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e4f9e1a579f337590de5f21f2ec043f7197bd60877cc71cec2105fd12a25b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:36 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:38 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2de7cd521795ec9ebcecc067e93fd7eb1e56c82fd618f818b35831cd394336`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 122.8 MB (122848076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763631542b8a67e1589d246516a3890deeb8db200182eafbbbd78d4caa04a402`  
		Last Modified: Wed, 29 Jul 2026 18:24:55 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e370b010770da2b699efeef05847e4579842a5531f0891b1f04ff0f9127918b6`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:b558a5c099a9b24e5afb7cafc888d2ef76eefba39a28d896c2a729152a549bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e4452a9b0ee2eaa33b7fecfd40f5b43060bfe2046b25afeabcea58959f715`

```dockerfile
```

-	Layers:
	-	`sha256:47003adc5244456e964b4511bfb8c267c1f28712ddc6c122cb4865c13b0f0b5b`  
		Last Modified: Wed, 29 Jul 2026 18:24:54 GMT  
		Size: 14.4 KB (14438 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:370aeeda66cb31c651eb995affba0d2748f83ece9989f0c6d28460f2b21857ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193561596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ea6d49cb5b80bdd9d11bbea6e498ede947c90734d77a4a0d6bd3f6a456c30a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV NIM_VERSION=2.2.10
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 29 Jul 2026 18:24:45 GMT
WORKDIR /usr/src/app
# Wed, 29 Jul 2026 18:24:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c918e5470170ab5f262101807a29546974abe29020869e43ed0fccc6e87b93`  
		Last Modified: Wed, 29 Jul 2026 18:25:04 GMT  
		Size: 130.5 MB (130464459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586c57dfe19282379a5a3d73d47f7f78e2c27d62d4abf4ca14c012193a07c596`  
		Last Modified: Wed, 29 Jul 2026 18:25:02 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd65b41293776730d684001723eeee0de9774aa8b1fd51e50b458736ea184f0`  
		Last Modified: Wed, 29 Jul 2026 18:24:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:c4b53fcdafe910f333c997f0f45c7f089a999a433358b6f6a536fd83a29ee9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f7760288e6dcb65fbd6d1f30522f8a576e721cb86ec9fc3a08f23057fe7bd`

```dockerfile
```

-	Layers:
	-	`sha256:78d436cb6ef10b3c2c3cd601f54bebb411e72fd2973a9ab44670c598dfaea73e`  
		Last Modified: Wed, 29 Jul 2026 18:25:01 GMT  
		Size: 14.3 KB (14285 bytes)  
		MIME: application/vnd.in-toto+json
