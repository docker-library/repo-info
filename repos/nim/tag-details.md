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
$ docker pull nim@sha256:e57d2f41e300c04f699653c36546a13713be9ecb7b6462775c278c1ef796ae4a
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
$ docker pull nim@sha256:efe8a97b5420f309e77c0d02c8c8c31704a2d53adc48c85f8493f399f98c8899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c1b5556260242e9cf67d7aaa193885e41e0a08ff5b6fc384bb1ebd2d1f83c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:01 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc36fbdd37230994f2569f3fdb30d6b12949adbcfc7ade51519e7b7e521e89`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 30.2 MB (30189594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807db6dfb2bd20fd7093ccc235a9d297390978d04a85705b79881fae504d5f0`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:f03ea86395eb490fe93a8fac712cf7874b491f8b47d75ce531ac9df401573906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b498f2bc52ab40a8b2659181321c6878381880ce0f2f7897e0042ad06a6df3`

```dockerfile
```

-	Layers:
	-	`sha256:8c49dab6c97c04ecfd63ab658004fbb2b4ffce18d4dec60cf8c218b6cc9fc082`  
		Last Modified: Tue, 04 Aug 2026 20:45:15 GMT  
		Size: 14.4 KB (14447 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm variant v7

```console
$ docker pull nim@sha256:ecc4cf5c885c73e6541106765c413166144e97255e18f4e6e268d807e9cf5614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143676697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b24079617754c8277210a99a0b4d34ff0d69cfbc9068a421a4b1deb471a7e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:38 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3863efb2cceacb40e4340c56439a9fb3abc7f51444578302b6d7ab1ddc66fe3`  
		Last Modified: Wed, 05 Aug 2026 00:23:51 GMT  
		Size: 89.2 MB (89159131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b317b97b6147534e749bd9e63de7b649b8911ea2bc300b4d7989c044c5f3281`  
		Last Modified: Wed, 05 Aug 2026 00:23:50 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453330cf47ff34ce5506863eb5a8af11ddbfcdb03875bf113be7f1719c181c88`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:80ced51afc2407572ac40c07c9a95568e9e40c47e000c7d357aa4534f5c63910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5273fc485e118392fa25dcc51a166d9d84c945af43a880f6fa3d2ca1efc99f`

```dockerfile
```

-	Layers:
	-	`sha256:f3f7666136cd6baecc80eb5c862f466c4819b3d291bbcdee4a5f4113ade3614b`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:c27862828f0ffafdd824a3d46e14fbbdb9f86f77188eb283bc0b9f01a518a162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171406360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f001bfb55ec97b536656998b1e2c56fa00324a6e1376fa933798697faad1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:33 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:34 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a6edfe05dc402fad0aebf97804ef6b3ae299021fdf1873467453d0aa86bf8b`  
		Last Modified: Tue, 04 Aug 2026 20:44:53 GMT  
		Size: 113.8 MB (113797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e7e7d0f5ec6733a3b407ad6bf94cc0735929c207fdd06c2f9c6a3d97a1d17f`  
		Last Modified: Tue, 04 Aug 2026 20:44:51 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d791a0ea99c5a55b29851c3ac69082e5418c49b0a89243e4bf7e60b67462deb5`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:295f3733d2ac00260d49a96f70d156a55096ebec71eba9847db6686326a1c236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279d8cffb47f7203913b3c8ea591af76aaa7ac061709207410d718446ef7ab97`

```dockerfile
```

-	Layers:
	-	`sha256:f4b06b0675242b0522e249a4ceeacfbcd4c8db492fa825d1701a036fe4fb2b62`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:3085fa892a34a22e155be67d312f1e84e65c5c3b4bbff948bc439d19b9ca92f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179737013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf3dca5da8c7830d269140421934ae28c050d5d024aa19595e4e20379b909ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:48 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:51 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3779bf8c3c5171379c55d3dcbc69627fa41d08e85859ddebcabafd5f621bee`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 118.7 MB (118715123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f785b5bb135d1da02f8154c7aa458d8b3b6d5f30e18f62bf4691040d4bb8c7c1`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677a04a1d1e06e411211d477fbd9ec0fadbb21c5a62515f1712b69c8ca64290f`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:6507204e4285d6d7144893adb26d6f82a1ba641fb79b31f0c3e73163858371f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10285ed0b656514e586c4a6c1dfed4a3b9950fc183b53b4c9aeb2b0bae9054e1`

```dockerfile
```

-	Layers:
	-	`sha256:21cf8b53e50573fb165bba68b30cceccfc93693e5c5035e6eb951f05ab550605`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

```console
$ docker pull nim@sha256:0946e21bec6f22ad9405a7cdc44bcbf9be4fea3b7d23be92151f9cdc8b7f0674
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
$ docker pull nim@sha256:47bd3bdcdf6f03dbfcc5ae00c3a406130bcf2f2fe7bbc5ce2cdd3bac4ccade9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174214362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edbb9d6623ea3f70176dceb0e838e142847f4ff1821268807fdfe72bff4c493`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:12 GMT
ENV NIM_VERSION=2.0.14
# Tue, 04 Aug 2026 20:46:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:14 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5e87427b66b5437298c6cddf19705d67303dc9925502cb64dbbb7e6003c0c1`  
		Last Modified: Tue, 04 Aug 2026 20:46:34 GMT  
		Size: 119.7 MB (119719583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fcba9dc2831288ca577096230c4d59089ed8cf622a5baf44ef7f611ca301c61`  
		Last Modified: Tue, 04 Aug 2026 20:46:32 GMT  
		Size: 26.3 MB (26261971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6853bd44363d50b35bc92944e2121f35156a1d802466e0a0f0da94f78398d3`  
		Last Modified: Tue, 04 Aug 2026 20:46:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:654196c9747a0defeebf11a0eba4aebad97d8852893c19fafb40ace5e75024ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c2d40c69dae99f7643a929f9f8f81073997018d738613ebc18d08d71a1856d`

```dockerfile
```

-	Layers:
	-	`sha256:e27c8d2204b63be828235160d1e5b48de32f3621d691cc2c926e1da806bd4491`  
		Last Modified: Tue, 04 Aug 2026 20:46:30 GMT  
		Size: 13.9 KB (13873 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:693693ef60f83c208a5e77e16a0b24ac76947879ca807c1d28165bbff514bddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139333190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704e5d8dc2e5001c21753e54bf5b3a63a1e8ca37882b2c2f4984834ca0bc7758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:26:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:26:39 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:26:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:26:42 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:26:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320246a862e8f418234e5f5d5a03e02b3b241fc73eafcb1864606859f544b102`  
		Last Modified: Wed, 05 Aug 2026 00:26:55 GMT  
		Size: 89.2 MB (89159125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecca0d2bd9eed86ab94a7a177cce8e463663da2ca58f6a9826c77e7952cb648`  
		Last Modified: Wed, 05 Aug 2026 00:26:54 GMT  
		Size: 26.2 MB (26234153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b41c2359d3e581492c4466ddd2b76d1325c65b6a1a089ee23fdf6336fab8e22`  
		Last Modified: Wed, 05 Aug 2026 00:26:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:518af036a042a5a59ba97771adb469615d2ef0b33b2a7975d13f9863778dab64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cd15a2e2f447615dc76335f69f75d8f9449c1168d1ffe3571511b1a054abc2`

```dockerfile
```

-	Layers:
	-	`sha256:84aa6131e28ab5658698180f0ba671235a678b8a4ff8786cbac93bfdb0d59b58`  
		Last Modified: Wed, 05 Aug 2026 00:26:53 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:f1f0f9499105496e6666760556298b2bac6bd3cb2bbd7bc47deca58f64ae3d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167513991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11126f29f1acaef2466cd3d206025715f67e84b25c5bd7bdf2073632d61139b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:28 GMT
ENV NIM_VERSION=2.0.14
# Tue, 04 Aug 2026 20:45:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:30 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17af716070254aa14d48ae991aa8003f8555137b8b91739077c40ae37b194ce0`  
		Last Modified: Tue, 04 Aug 2026 20:45:49 GMT  
		Size: 113.8 MB (113796845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5406119c7868a4986879f2dcb93f36eb1c3f54006e4aeb49addfe5b0ddcab23`  
		Last Modified: Tue, 04 Aug 2026 20:45:47 GMT  
		Size: 25.6 MB (25599726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e6a27e83b0190fe6b60520859bacd38460514da92963edd99a19fb264eec5`  
		Last Modified: Tue, 04 Aug 2026 20:45:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:291edc7024377dea5747378aaf02a7c3bab531673a2abd7665bc3dd0d8ac6b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e542d0eb90e960076428770f9e856e9ba92cb757d2ad7915525191992e6fc5d1`

```dockerfile
```

-	Layers:
	-	`sha256:87b702e8b021309c9e1542868874cf3a58ad53b43a2527651f9d6f5b8a6426fa`  
		Last Modified: Tue, 04 Aug 2026 20:45:46 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0` - linux; 386

```console
$ docker pull nim@sha256:0dfa965996f3c1f9938a0c5e979f0ffc1e48a0ab7765aa4573136261175487e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175500715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade972b7f196d5d59e9beb9f6f8beddc6b35fade473efcfda431d84fa1bcbe21`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:45 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:45 GMT
ENV NIM_VERSION=2.0.14
# Tue, 04 Aug 2026 20:45:45 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:45 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:45 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:47 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9decc7ce1cdb535ee09d345e819281229602c102890e3d7936755eca8f907c7`  
		Last Modified: Tue, 04 Aug 2026 20:46:06 GMT  
		Size: 118.7 MB (118715051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045146da90a309d0df991ae8eb1b143a3df078430b71d7da5bbbc9afd494a6e`  
		Last Modified: Tue, 04 Aug 2026 20:46:04 GMT  
		Size: 27.6 MB (27564447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1227695fc097e9df97b0ebeb0683dd184c50d7ebaddd9e5d6cfc9c7ea68fb78a`  
		Last Modified: Tue, 04 Aug 2026 20:45:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:9c84a6f6977c56b0ff19c9a3dfe2b1991619461dc38f9306f7bae1010ea77d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9422601ff1584860109e756a16e8423a42c9a20324a1857ee21e1ed1a44535`

```dockerfile
```

-	Layers:
	-	`sha256:0d2d77d144896a99b86a022031a8917cf8823e21eee1ac52fd4ff21f9456682e`  
		Last Modified: Tue, 04 Aug 2026 20:46:03 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.0`

```console
$ docker pull nim@sha256:27ae5068940d58893805445f0d6cd4b4d891a3b36bad8700b4ee2d141206d0ce
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
$ docker pull nim@sha256:84a819363605a4f2be6350f7e118a2fa8b514a286a148139f6112fce24e6eb64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173273322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa196aca0537445b5122829f3e5e9bde0e1533b384e47c554641df44d0c5b97`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:54 GMT
ENV NIM_VERSION=2.0.0
# Tue, 04 Aug 2026 20:46:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:54 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:56 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:56 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee046ef954f0955b80b807963418507f950d0193fbd4b1a4ea30baf1d521e651`  
		Last Modified: Tue, 04 Aug 2026 20:47:16 GMT  
		Size: 119.7 MB (119719900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db64e7b5136520e8f6e61a628a6d4644a8e6ac51cd8e987cea5a67e6c32d26`  
		Last Modified: Tue, 04 Aug 2026 20:47:14 GMT  
		Size: 25.3 MB (25320615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01432229557fb2f566b1a5da4393482f2093f7dc889cb0affd1d94fcba918a42`  
		Last Modified: Tue, 04 Aug 2026 20:47:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:76a0be4ab37a00e305c2f846a3b16c0696fd14feb93acfe19caab66fdeb48329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1daf967e2b405891cffd3ece2889bfd1f9186f659d239b85a81c8a6b6d30981`

```dockerfile
```

-	Layers:
	-	`sha256:7970658c912ad760173be531a34a7fce8fee1128737a3f6bb0dcb987a74bf54d`  
		Last Modified: Tue, 04 Aug 2026 20:47:12 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:dfeceb431f1ec5c6ed8e9b44f378ef267c968524dd6c74da848787cf30119c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138341704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53722817f3001a73b5f4ad36bfbcc58799cf08295ed6e55828533f604d3d8b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:29:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:29:27 GMT
ENV NIM_VERSION=2.0.0
# Wed, 05 Aug 2026 00:29:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:29:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:29:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:30:05 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:30:05 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:30:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdc8186d1d6149b0bef4e5f6856dfb3510d11ede4f1733bcea950927c7c7aab`  
		Last Modified: Wed, 05 Aug 2026 00:29:42 GMT  
		Size: 89.2 MB (89159111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27f6992fd922039b4efb2867f963ed6f1e6c92c6c2cb52c8602e53c59bfcff0`  
		Last Modified: Wed, 05 Aug 2026 00:30:13 GMT  
		Size: 25.2 MB (25242681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6eaacfa2dd7e58ccb7dac9ed02aff8e65fcb79d915f4d6326277c078fd0f2f`  
		Last Modified: Wed, 05 Aug 2026 00:30:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:960f6b5ee1656989d66b0d9ce0f4a7448fd3a77ff9e016be9781235969b38524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a7410d80426634274bc3308eb1cda7af5dd109fb2711ae75d21b901078af0b`

```dockerfile
```

-	Layers:
	-	`sha256:671d707189c59726faef4b29c9c937468f0e870212435c9e8f68123a5b3a8718`  
		Last Modified: Wed, 05 Aug 2026 00:30:12 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:53e56d63c460df1623d65093e4f7140478ab34799301b34030e8514908c4ee13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166615472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d66f08a2307a1a008c8c289cecc995c3189ef02a4639a7b2c29258442a3b36`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:43 GMT
ENV NIM_VERSION=2.0.0
# Tue, 04 Aug 2026 20:44:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:43 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:12 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:13 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192d99115dd926aab1b13faf3fcd9b4e3652d75010c03e7cf36e87622233a9af`  
		Last Modified: Tue, 04 Aug 2026 20:45:03 GMT  
		Size: 113.8 MB (113796931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f271d98e530f42a44acd046c609df5fa7b89f29c49dc993c03356661d9b27bff`  
		Last Modified: Tue, 04 Aug 2026 20:45:20 GMT  
		Size: 24.7 MB (24701120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b84d63cf3162d0007a56d1a63a4fc9f39e5bfb14723754cad41d8edc28f750`  
		Last Modified: Tue, 04 Aug 2026 20:45:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:5c63e55f549eb3e7b3e85f25d1b4350f7a1184af0f1251ce3a740ec120c4bc38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7950ce137f680a5d16aadcdc98dfab29b9bed464cf4142ad595f22337a319c`

```dockerfile
```

-	Layers:
	-	`sha256:5468094505a8c0e6ac6eaa7eb462a8e1ee9104e13b545a7c29f5ca9555a6b163`  
		Last Modified: Tue, 04 Aug 2026 20:45:19 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.0` - linux; 386

```console
$ docker pull nim@sha256:ebff9a2bcb53ebfd554eaef1c45a13f51779842bb914d9c95bbd8d7074e5584a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174449215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6701a2dca2f5745383ca3cc691128efd34052e5f894eea7792d767e834a98649`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:23 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:23 GMT
ENV NIM_VERSION=2.0.0
# Tue, 04 Aug 2026 20:46:23 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:23 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:23 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:25 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x64.tar.xz'; sha256='ca1ffec35439a02b3102faf1c1caf5a033f929832b7fa2c76b3a6a7216f14f01' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_arm64.tar.xz'; sha256='96c2b96c68ca598720b4e6048e4d89b88f47612e7f7887f7b6da734270eb00e2' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_x32.tar.xz'; sha256='0221d595597abc9068885b5833db69a137bdf3c59b073ff1f4c290b22f8ecff3' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-08-01-version-2-0-a488067a4130f029000be4550a0fb1b39e0e9e7c/nim-2.0.0-linux_armv7l.tar.xz'; sha256='812b6264e4b33fff7356e648438dc4bcfb0a78a945f7f1a0b8314427afc20fe0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:25 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288473aefdf12a576910f860fdff868126a9233f73fd6f6d67a2f50b4ce62665`  
		Last Modified: Tue, 04 Aug 2026 20:46:43 GMT  
		Size: 118.7 MB (118714981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c766b7eab9a9e6720718241d7c787d11c01100af95235aab7427674a16c8c0`  
		Last Modified: Tue, 04 Aug 2026 20:46:41 GMT  
		Size: 26.5 MB (26513018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ec01394647b6588facf1416ce4db3534bacc4b3bfa2d2cc07611897db63974`  
		Last Modified: Tue, 04 Aug 2026 20:46:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.0` - unknown; unknown

```console
$ docker pull nim@sha256:ae776467c502602f66bea5c80d60d74c3b94391693ed885123e8e5dfcc33ea8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e4dd2511763f5cb13cf67cd9321c43bac60073596962c63c35f6185658f7b23`

```dockerfile
```

-	Layers:
	-	`sha256:a2bf30fbc885dd685b42d30b9b8653198310ff1f45891ae605c77a5ef496849d`  
		Last Modified: Tue, 04 Aug 2026 20:46:39 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.10`

```console
$ docker pull nim@sha256:7385ee1f432497e6d35d27e258cf952585ce671dc575c38e4d90aa155bc235aa
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
$ docker pull nim@sha256:2717081d25e2df76c166b401ea1cf591e34675b66685ed019ee0f5bf6f20b6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174052728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd6e9983732ecb33a8fc0684b8c8805b05e28f14a1c295603b3a2fac1f662c0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.0.10
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:42 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803336a13ae5f2baaafe6619e6912d41db57b1c0de480e5d6473c1466041b93b`  
		Last Modified: Tue, 04 Aug 2026 20:45:49 GMT  
		Size: 26.1 MB (26100821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d1b859d8a49dffc7dcf593586bb005586ce5201474e2f4f83d9a7768ac5b4e`  
		Last Modified: Tue, 04 Aug 2026 20:45:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:085bf1df05b7ca02925244dce14106e128abcdb88ef48a28834fa8c81ebe8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208696b83883907e8dcd22da4a2f0860abdcc0ec75638d528e2143f6608875e5`

```dockerfile
```

-	Layers:
	-	`sha256:ddd8d3077f133087033669840880fe145e7d16cafcd21a0fd68f7d0ac539c65b`  
		Last Modified: Tue, 04 Aug 2026 20:45:49 GMT  
		Size: 13.6 KB (13588 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; arm variant v7

```console
$ docker pull nim@sha256:a752219ad01e13b28ad49c7b559b31ac3f05f35796212079b04c76d0e55fdb99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139162377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffdb709d326185d5e475813f1d7de2744b6d7aae859097adfe3c1d9f86c7a85`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:26:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:26:39 GMT
ENV NIM_VERSION=2.0.10
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:27:18 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:27:18 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:27:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320246a862e8f418234e5f5d5a03e02b3b241fc73eafcb1864606859f544b102`  
		Last Modified: Wed, 05 Aug 2026 00:26:55 GMT  
		Size: 89.2 MB (89159125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cad347883865c01e3626939f4a43d748e45b5318230c29d95767adada3f6cb`  
		Last Modified: Wed, 05 Aug 2026 00:27:26 GMT  
		Size: 26.1 MB (26063340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0abf26cae51a7437761cdd0deb1f7ae569e26e58f5dbb2eec86365e0e0a97ab`  
		Last Modified: Wed, 05 Aug 2026 00:27:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:bca95493658f52602714003cb2669a0281aba466902cd09e28d0b132edfd250f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee111c117a29269788f1a04516b55a4bf2ad1e2a08fb89cc39731caba89d1f2b`

```dockerfile
```

-	Layers:
	-	`sha256:bf4535ac027b0a8fe99f68ea67c671468598f371f9155565b66b9b28e7c89671`  
		Last Modified: Wed, 05 Aug 2026 00:27:25 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:42034b6abf62e6268cce263fd3f7c896d1c769de2fce280e245e84b1ee0ba2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167357845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339d3d6d54415e2bcb3f6c9d07a9ebf49dd8ba4433d7af61435b8f06996521ae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:42 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:42 GMT
ENV NIM_VERSION=2.0.10
# Tue, 04 Aug 2026 20:45:42 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:42 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:44 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:44 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cfc1a3c0fa8873c8c347ddbcd6947098fa0aacd043cdd4c5e1332273cd04789`  
		Last Modified: Tue, 04 Aug 2026 20:46:01 GMT  
		Size: 113.8 MB (113797396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c442b788d02d25402b19b071d78f0913529c63f120295137317a5386e83b8b8`  
		Last Modified: Tue, 04 Aug 2026 20:46:00 GMT  
		Size: 25.4 MB (25443029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47212fb87f7571231375ba2318655eac9ef24702f9e13ff22bf5ec880876b55a`  
		Last Modified: Tue, 04 Aug 2026 20:45:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:64cc0de17900f01613925750ef911a75e71cf50b3f6bae003318530218566b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d686008b88dcccedda380df63789280f89c8a2e998168bb4a2c507ef13489`

```dockerfile
```

-	Layers:
	-	`sha256:043697060e571ab13495e1843fd86d7dcacb8827f39b53773b9f323aa449ffc6`  
		Last Modified: Tue, 04 Aug 2026 20:45:58 GMT  
		Size: 13.7 KB (13671 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.10` - linux; 386

```console
$ docker pull nim@sha256:1064321f0fe0674a0134a018b918daa86aa0171f9ce0c5e12c3606d7fe7c3d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175322448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd9754d4a6c0fcd76665e8adb03d7e741025bc27abb855893f6e240b8318229`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:05 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:05 GMT
ENV NIM_VERSION=2.0.10
# Tue, 04 Aug 2026 20:46:05 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:05 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x64.tar.xz'; sha256='e5b3412092771430bf5e5adc6ffea010dbf3d8b40cb6d2747a89aa827d50383e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_arm64.tar.xz'; sha256='b62440d97056dfeaeb710bbc59d98c0da7dc2e92c05f07a100283f988162380a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_x32.tar.xz'; sha256='c8e2578d78efc9bcd38719da1579468c638ec21b80b222e1aecc7700f876493b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-01-version-2-0-e941ee15be775fe3c46db1bed9b4f41c7dfb1334/nim-2.0.10-linux_armv7l.tar.xz'; sha256='e897fdcd470efa80ec9cd83a5265f8066ccec43fb564a5504307b4bf0e1724b6' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:07 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f98090357c5e3cefb6b04e916ecf66055b05c31114d4586972b8e2c4e00e32`  
		Last Modified: Tue, 04 Aug 2026 20:46:24 GMT  
		Size: 118.7 MB (118715029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3c361ad0c15d23aac848418aeb40497b74c118ef75dd02c536145f9a914a82`  
		Last Modified: Tue, 04 Aug 2026 20:46:22 GMT  
		Size: 27.4 MB (27386202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfff9ae8c2b93fc4b99ea04d0924d722687836cab020b520de279c40e1c8d0e3`  
		Last Modified: Tue, 04 Aug 2026 20:46:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.10` - unknown; unknown

```console
$ docker pull nim@sha256:1781bc5a695d8567afa3b29a01deb9859f5f029069ff37ff69658950c6bae81c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c3e53f1f798d950df9086c0d6f908b3ee648dd0cb0d8800e56ab19a55c984c`

```dockerfile
```

-	Layers:
	-	`sha256:9310ec63725c5a1decf27585e469c83e19f3055b11283ecffb002b370bccaff8`  
		Last Modified: Tue, 04 Aug 2026 20:46:21 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.12`

```console
$ docker pull nim@sha256:b946bcf4ec05f458ab9e92ee4d101831377e4535de988ee93803db001c1dd4e7
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
$ docker pull nim@sha256:6c58dcf66987d704be9a0b2c6a078c480c80dc4fa4819ce6810a1342b12a7c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174068774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8336351c0b5c628e90c2b133162ee5e908277004b0a1ee141aa9713deef548`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:27 GMT
ENV NIM_VERSION=2.0.12
# Tue, 04 Aug 2026 20:46:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:27 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:29 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:29 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a66bc5f4016fd85269fcb7da4e0edf57b616bbe2cd36edc664e4a8562b9eb14`  
		Last Modified: Tue, 04 Aug 2026 20:46:48 GMT  
		Size: 119.7 MB (119719759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3454150cda98e8318c2dc00a857b89dd195930259e1d3b09e73ac8c991475474`  
		Last Modified: Tue, 04 Aug 2026 20:46:46 GMT  
		Size: 26.1 MB (26116207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1715d16432dff0fcb50bae8a8c5bda5f8f04c1a8fe5b935d075c86d6381bcbb`  
		Last Modified: Tue, 04 Aug 2026 20:46:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:e43f1568835f5f66ce04e56e676f4a2db464bb2430877cf4f210f4363a0de8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f3f9cfd999e68abe0eb72345fea6b1a911a72c791aa08ecb1e3623e183db36`

```dockerfile
```

-	Layers:
	-	`sha256:dec0adf0103f301574c7c9cfc70db43a2a4ef4330f0283d1ba8d1c23f623fdba`  
		Last Modified: Tue, 04 Aug 2026 20:46:45 GMT  
		Size: 13.6 KB (13588 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; arm variant v7

```console
$ docker pull nim@sha256:d90bc235bfda0fb792125b645509355b8763f5ceac631dee3b4e0f3c6172426c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139182183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064d51a4b0bbbf7c0801f48824a72a567225056f3b8b27aa74ebd312f4a970b7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:26:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:26:39 GMT
ENV NIM_VERSION=2.0.12
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:27:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:27:03 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:27:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320246a862e8f418234e5f5d5a03e02b3b241fc73eafcb1864606859f544b102`  
		Last Modified: Wed, 05 Aug 2026 00:26:55 GMT  
		Size: 89.2 MB (89159125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2610973a9128f0d2a0806034465aa5087093e9ef358775293178081dd519d5db`  
		Last Modified: Wed, 05 Aug 2026 00:27:10 GMT  
		Size: 26.1 MB (26083146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e56fe79d443e1dc110dc83b90169def54e45cc4229aad043888dd7230a8f7e4`  
		Last Modified: Wed, 05 Aug 2026 00:27:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:bfc54ec652198fd743ec382ed24d38b4a941a5458732c944f26f6e0815e8180a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709018377ab6461316ff8395c5fd3987cf595a848e49ced3925f65ea0e14d900`

```dockerfile
```

-	Layers:
	-	`sha256:5f4ce5321e7929fa561ab375bf5129c0861374282ee49cce9f8cb6ca01a1e21e`  
		Last Modified: Wed, 05 Aug 2026 00:27:09 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:5deab3a6d040867cd86c47d742db9accafab71dcb744590931cb2fdd99988173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167366581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e31f009a97767dedc8931dcaa55a8d2ec42c030e3c204353bd8c2d7c5717eb2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:39 GMT
ENV NIM_VERSION=2.0.12
# Tue, 04 Aug 2026 20:45:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:41 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0712eef80b774878a13e1a8651c9798ca94ff117cdbe406da536b79a0fe3c3f0`  
		Last Modified: Tue, 04 Aug 2026 20:45:59 GMT  
		Size: 113.8 MB (113796934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d510d467a070f58c0f978bd9f57aa81d69f7e12c20bf95e4174ff0524cd0547c`  
		Last Modified: Tue, 04 Aug 2026 20:45:57 GMT  
		Size: 25.5 MB (25452226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4496fe61f83b4c2946c35d50a0dbc70a78c85f5fa970eaa505d2824bcbe9ba1f`  
		Last Modified: Tue, 04 Aug 2026 20:45:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:678a34d3c6e2817088ebd9b7375e606f44def0e3a4066c514e2a18021630c0b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f50fa8ece279c9902298388f2b6d82c432f514082914b0496364b7cc3844e5`

```dockerfile
```

-	Layers:
	-	`sha256:bf7a00443c85603ebf0d992ed4b8675018ad4e8025eecf3eea0ca15db3375105`  
		Last Modified: Tue, 04 Aug 2026 20:45:57 GMT  
		Size: 13.7 KB (13671 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.12` - linux; 386

```console
$ docker pull nim@sha256:c851049963b0c028b76e97bed79df795e450b4c6f0d530daa777da12d751cf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175345891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e7a448bbc4689930a41656cfd1342353226b08528d18c1f235c5c6de5cbf40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:48 GMT
ENV NIM_VERSION=2.0.12
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:18 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x64.tar.xz'; sha256='b89e0d38f55cd207b0dacb5ee4d6cef4fd1268b63c1490f923d6959839f4548c' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_arm64.tar.xz'; sha256='fad4dceef1e208407f94e284dd948fe0732dfe85c999f03dba35c5c64063a0be' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_x32.tar.xz'; sha256='19fd305089d1d2e63411792f0a2a73e3d19409f5f39e73e88da6d2599c968776' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-11-01-version-2-0-ce7c6f4f3365db2cc63bdd9d460c71ed937ee9e9/nim-2.0.12-linux_armv7l.tar.xz'; sha256='3e344ff0294fa2fc3939f415b047cafd56abd844ba57edf9fb2c05473e728486' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.12";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:18 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3779bf8c3c5171379c55d3dcbc69627fa41d08e85859ddebcabafd5f621bee`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 118.7 MB (118715123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c38dade90f41f79ae5d7afe4ea609c71a8fcf88b8d9024dac1c7a37ed6c71bc`  
		Last Modified: Tue, 04 Aug 2026 20:45:26 GMT  
		Size: 27.4 MB (27409550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d7ab58fc4ea8c667fb986b2f86a3164e8e82114f0b930e1a03c8945292702c`  
		Last Modified: Tue, 04 Aug 2026 20:45:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.12` - unknown; unknown

```console
$ docker pull nim@sha256:141e503ce6a94ab153377a14da138206522c171391a24b79311d32cd8fd1cb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd191166cd204c62b7961f16beb922b88fb7223837b1616fe854f4e2321756bd`

```dockerfile
```

-	Layers:
	-	`sha256:b0fb0a938293485fc8739599d000225d613c768fb0ad7aa89f3ddd488e7f4e5e`  
		Last Modified: Tue, 04 Aug 2026 20:45:25 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.14`

```console
$ docker pull nim@sha256:0946e21bec6f22ad9405a7cdc44bcbf9be4fea3b7d23be92151f9cdc8b7f0674
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
$ docker pull nim@sha256:47bd3bdcdf6f03dbfcc5ae00c3a406130bcf2f2fe7bbc5ce2cdd3bac4ccade9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174214362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edbb9d6623ea3f70176dceb0e838e142847f4ff1821268807fdfe72bff4c493`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:12 GMT
ENV NIM_VERSION=2.0.14
# Tue, 04 Aug 2026 20:46:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:14 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5e87427b66b5437298c6cddf19705d67303dc9925502cb64dbbb7e6003c0c1`  
		Last Modified: Tue, 04 Aug 2026 20:46:34 GMT  
		Size: 119.7 MB (119719583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fcba9dc2831288ca577096230c4d59089ed8cf622a5baf44ef7f611ca301c61`  
		Last Modified: Tue, 04 Aug 2026 20:46:32 GMT  
		Size: 26.3 MB (26261971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6853bd44363d50b35bc92944e2121f35156a1d802466e0a0f0da94f78398d3`  
		Last Modified: Tue, 04 Aug 2026 20:46:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:654196c9747a0defeebf11a0eba4aebad97d8852893c19fafb40ace5e75024ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c2d40c69dae99f7643a929f9f8f81073997018d738613ebc18d08d71a1856d`

```dockerfile
```

-	Layers:
	-	`sha256:e27c8d2204b63be828235160d1e5b48de32f3621d691cc2c926e1da806bd4491`  
		Last Modified: Tue, 04 Aug 2026 20:46:30 GMT  
		Size: 13.9 KB (13873 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:693693ef60f83c208a5e77e16a0b24ac76947879ca807c1d28165bbff514bddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139333190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704e5d8dc2e5001c21753e54bf5b3a63a1e8ca37882b2c2f4984834ca0bc7758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:26:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:26:39 GMT
ENV NIM_VERSION=2.0.14
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:26:42 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:26:42 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:26:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320246a862e8f418234e5f5d5a03e02b3b241fc73eafcb1864606859f544b102`  
		Last Modified: Wed, 05 Aug 2026 00:26:55 GMT  
		Size: 89.2 MB (89159125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecca0d2bd9eed86ab94a7a177cce8e463663da2ca58f6a9826c77e7952cb648`  
		Last Modified: Wed, 05 Aug 2026 00:26:54 GMT  
		Size: 26.2 MB (26234153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b41c2359d3e581492c4466ddd2b76d1325c65b6a1a089ee23fdf6336fab8e22`  
		Last Modified: Wed, 05 Aug 2026 00:26:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:518af036a042a5a59ba97771adb469615d2ef0b33b2a7975d13f9863778dab64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cd15a2e2f447615dc76335f69f75d8f9449c1168d1ffe3571511b1a054abc2`

```dockerfile
```

-	Layers:
	-	`sha256:84aa6131e28ab5658698180f0ba671235a678b8a4ff8786cbac93bfdb0d59b58`  
		Last Modified: Wed, 05 Aug 2026 00:26:53 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:f1f0f9499105496e6666760556298b2bac6bd3cb2bbd7bc47deca58f64ae3d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167513991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11126f29f1acaef2466cd3d206025715f67e84b25c5bd7bdf2073632d61139b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:28 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:28 GMT
ENV NIM_VERSION=2.0.14
# Tue, 04 Aug 2026 20:45:28 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:28 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:30 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:30 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17af716070254aa14d48ae991aa8003f8555137b8b91739077c40ae37b194ce0`  
		Last Modified: Tue, 04 Aug 2026 20:45:49 GMT  
		Size: 113.8 MB (113796845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5406119c7868a4986879f2dcb93f36eb1c3f54006e4aeb49addfe5b0ddcab23`  
		Last Modified: Tue, 04 Aug 2026 20:45:47 GMT  
		Size: 25.6 MB (25599726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e6a27e83b0190fe6b60520859bacd38460514da92963edd99a19fb264eec5`  
		Last Modified: Tue, 04 Aug 2026 20:45:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:291edc7024377dea5747378aaf02a7c3bab531673a2abd7665bc3dd0d8ac6b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e542d0eb90e960076428770f9e856e9ba92cb757d2ad7915525191992e6fc5d1`

```dockerfile
```

-	Layers:
	-	`sha256:87b702e8b021309c9e1542868874cf3a58ad53b43a2527651f9d6f5b8a6426fa`  
		Last Modified: Tue, 04 Aug 2026 20:45:46 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.14` - linux; 386

```console
$ docker pull nim@sha256:0dfa965996f3c1f9938a0c5e979f0ffc1e48a0ab7765aa4573136261175487e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175500715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade972b7f196d5d59e9beb9f6f8beddc6b35fade473efcfda431d84fa1bcbe21`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:45 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:45 GMT
ENV NIM_VERSION=2.0.14
# Tue, 04 Aug 2026 20:45:45 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:45 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:45 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:47 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9decc7ce1cdb535ee09d345e819281229602c102890e3d7936755eca8f907c7`  
		Last Modified: Tue, 04 Aug 2026 20:46:06 GMT  
		Size: 118.7 MB (118715051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045146da90a309d0df991ae8eb1b143a3df078430b71d7da5bbbc9afd494a6e`  
		Last Modified: Tue, 04 Aug 2026 20:46:04 GMT  
		Size: 27.6 MB (27564447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1227695fc097e9df97b0ebeb0683dd184c50d7ebaddd9e5d6cfc9c7ea68fb78a`  
		Last Modified: Tue, 04 Aug 2026 20:45:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:9c84a6f6977c56b0ff19c9a3dfe2b1991619461dc38f9306f7bae1010ea77d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9422601ff1584860109e756a16e8423a42c9a20324a1857ee21e1ed1a44535`

```dockerfile
```

-	Layers:
	-	`sha256:0d2d77d144896a99b86a022031a8917cf8823e21eee1ac52fd4ff21f9456682e`  
		Last Modified: Tue, 04 Aug 2026 20:46:03 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.2`

```console
$ docker pull nim@sha256:7f8f3422801f02d75c5bb1e537dc60b6fbd950038f7a292c8c1a706c10452dda
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
$ docker pull nim@sha256:e5e6a82e91afa06ce5a7bf3cf72598eceb1a4f61fee0c3492381ff8988ed0859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173327695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c3b7f82ea16d55964e1540f6160cf910e216a58c3aed52cc6a218a673a5d578`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:47 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:48 GMT
ENV NIM_VERSION=2.0.2
# Tue, 04 Aug 2026 20:46:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:50 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05dd7e70a3a13109700af30a4f81d3ae7903ff0ce7daf822e1131fe204c68ad5`  
		Last Modified: Tue, 04 Aug 2026 20:47:07 GMT  
		Size: 119.7 MB (119718436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77e0cf98013058cdfa81740ed7fb1518d81dbea938cf64ac0490960c0b33387`  
		Last Modified: Tue, 04 Aug 2026 20:47:05 GMT  
		Size: 25.4 MB (25376451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f651702bb39d33bb383dbd9376cfcc721b17435b5e74e85323f3277e1cf4531d`  
		Last Modified: Tue, 04 Aug 2026 20:47:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:d032d226ce357924d7402d054b1ddc8a88eb48277742f319523e26e0691f3350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f3089800a9ebe991f4fc5d233e877f102ba3ff2d374850ff7843003c3cd0cb`

```dockerfile
```

-	Layers:
	-	`sha256:c030d2368bea5658fbf01d0878cef8415861896f9cf70a99025d815e16689e81`  
		Last Modified: Tue, 04 Aug 2026 20:47:04 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:487f5945f511eaf12b4d0477c74194fece327d3ab1c46110567646e3aef25345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138392076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579953acc202f8e076e667ce493adcb0542a5caa077a871c306b0f0af2fbe561`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:29:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:29:27 GMT
ENV NIM_VERSION=2.0.2
# Wed, 05 Aug 2026 00:29:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:29:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:29:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:29:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:29:50 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:29:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdc8186d1d6149b0bef4e5f6856dfb3510d11ede4f1733bcea950927c7c7aab`  
		Last Modified: Wed, 05 Aug 2026 00:29:42 GMT  
		Size: 89.2 MB (89159111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0d9db67b8e62a47247a78c1958ac59f06d73447a966a95a3946c98f66e65fa`  
		Last Modified: Wed, 05 Aug 2026 00:29:57 GMT  
		Size: 25.3 MB (25293052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd23b4b41304ac1300beadc87d54b64e6415e2055b1c1ce3603f8b89118bba5`  
		Last Modified: Wed, 05 Aug 2026 00:29:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:788afde309cbfe8b66ba3ef94ce81286f4befa5f7e0b20817a8912176bcdcb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38bc37ab3a77ae1b80d01e7a1fb079ae144bde3be8d8887af9a9707c35d77aba`

```dockerfile
```

-	Layers:
	-	`sha256:9703c6b540dc06b4444275541edbe817e2609746aac6acd0a29e2ac43b9d4b68`  
		Last Modified: Wed, 05 Aug 2026 00:29:57 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:1d3f3195701f65cab36919d0e80798cfbfdc76a20bed5e09da5bec6d0d23f57f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166682777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9feef692c4e2c7e12050202841a81ccebcc9011c9cb6eb06ebe7f643fdc7439d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:58 GMT
ENV NIM_VERSION=2.0.2
# Tue, 04 Aug 2026 20:45:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:58 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:00 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf4b6b3631cd3fc16f1843e975538e7c25ad0bddc5342cd471a45607414da7`  
		Last Modified: Tue, 04 Aug 2026 20:46:19 GMT  
		Size: 113.8 MB (113796585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f995dcf91470d930602508fc1237d19399f93ca027c7542fb2e4c666f6d7704`  
		Last Modified: Tue, 04 Aug 2026 20:46:18 GMT  
		Size: 24.8 MB (24768772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5180fc26db0f833b6583996696e3db6dc326a8bcb73f25e92fbded32dbda00`  
		Last Modified: Tue, 04 Aug 2026 20:46:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:f1e766973ad3beb75766b35a53b09ce2242ec7aa6262d8c4f3876f139a035a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda52ba87c72728fba566627eb0590552174ac798764bb3e016541ea1c53b743`

```dockerfile
```

-	Layers:
	-	`sha256:0d914a062cb738e67b3d812ef1ad78eb8872c664b3614470dfe1731530222faf`  
		Last Modified: Tue, 04 Aug 2026 20:46:16 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.2` - linux; 386

```console
$ docker pull nim@sha256:e16f4d8f3b9b61780e698b9e266b21dc19e38f47f738920b004f4ec940bc3154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174495877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b79c4d723ae1279dafd7c2858ff0de2e2d8aa9fe9cfc78f0674cc165763ff63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:48 GMT
ENV NIM_VERSION=2.0.2
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x64.tar.xz'; sha256='047dde8ff40b18628ac1188baa9ca992d05f1f45c5121d1d07a76224f06e1551' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_arm64.tar.xz'; sha256='1888d1ffe41360e0accbd3547e0699c8b9781cd9e96fc1ff2692d8449d8168ac' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_x32.tar.xz'; sha256='ac9afbf8c4543d2486e54911b7eaeeb7b963573815f95650de3319e10f72e9c8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2023-12-15-version-2-0-c4c44d10df8a14204a75c34e499def200589cb7c/nim-2.0.2-linux_armv7l.tar.xz'; sha256='31307c6e1489b68ed0b152d3c08aa5a57c6e9a3546b54b4b453f3b6145fb4cbb' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:34 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3779bf8c3c5171379c55d3dcbc69627fa41d08e85859ddebcabafd5f621bee`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 118.7 MB (118715123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36d2d60e4a16358f8da639ff807cff016e153a1bd693e03e7457c9dab04b192`  
		Last Modified: Tue, 04 Aug 2026 20:45:42 GMT  
		Size: 26.6 MB (26559536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40651785b3f3891b51e5da875967c1ced59324389c23e7d051bc079c7410a4c0`  
		Last Modified: Tue, 04 Aug 2026 20:45:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.2` - unknown; unknown

```console
$ docker pull nim@sha256:0d9e38dad722516b263da337c283032bd4d4936426d216cc2f58422b404cc885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b48a03477c43fc662247af8edc12a98fc37f126daf01b7e7c5620cea47e79c3`

```dockerfile
```

-	Layers:
	-	`sha256:2900edb70342418e80600ea536fee21ce81cf4bf69b389ed30be271384f249b6`  
		Last Modified: Tue, 04 Aug 2026 20:45:41 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.4`

```console
$ docker pull nim@sha256:dcdd07411998e52363f619c6e49024b0294f563157426aa97af902dbf16edb8d
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
$ docker pull nim@sha256:ad4dbe217acee32cfb05262e36eb4fc013535c0899ec76074c7c3ed0e4d9f1ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173357584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d58c89e481e1fc7dd854a17c5dcd9e8599860d83161d1a52ae2fb28f3474105`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:33 GMT
ENV NIM_VERSION=2.0.4
# Tue, 04 Aug 2026 20:45:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:03 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e67d8d7013a6f3b30945404cdc9f6f1fee62eba3db863796eb8aa1e9f2a9d40`  
		Last Modified: Tue, 04 Aug 2026 20:45:55 GMT  
		Size: 119.7 MB (119719657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c4866efb02b0d9cb242ca3abe70186108b1959912cecdd2dba3abf97d9139a`  
		Last Modified: Tue, 04 Aug 2026 20:46:10 GMT  
		Size: 25.4 MB (25405118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e87c51a0c678f71818399749be6487ae3cbf8632f15baafd7fd0ee3c8bf3fc`  
		Last Modified: Tue, 04 Aug 2026 20:46:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:550237a8cd1835e3efd7e2236c3207ec11beaf30ebb88273a8d3657629710566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa81988d79523dde6ab6d2eff03c0ef5655e3b09674097c02f0fbcf468491d7`

```dockerfile
```

-	Layers:
	-	`sha256:d383d30daedd8ee7372f4cadde9ff63377e9519319b152b2b81d0ceb69304e5f`  
		Last Modified: Tue, 04 Aug 2026 20:46:10 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; arm variant v7

```console
$ docker pull nim@sha256:aaa6568f989dbf96569c26f582cec54c570968e576201b91fe46eef39d909b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138428670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4f74f7c306b1eaef34377dbe7c56f64095105d1a079cacd7d92b0fb4e2d142`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:29:27 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:29:27 GMT
ENV NIM_VERSION=2.0.4
# Wed, 05 Aug 2026 00:29:27 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:29:27 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:29:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:29:29 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:29:29 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:29:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdc8186d1d6149b0bef4e5f6856dfb3510d11ede4f1733bcea950927c7c7aab`  
		Last Modified: Wed, 05 Aug 2026 00:29:42 GMT  
		Size: 89.2 MB (89159111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34631e30e3bcf62da0ad0a824272795400d51a9311c7261c0c587e725e7fb66`  
		Last Modified: Wed, 05 Aug 2026 00:29:41 GMT  
		Size: 25.3 MB (25329646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f1a0367a60bfa42a5f834862aeadfc51477d92c83de1d734b34707555d9e9`  
		Last Modified: Wed, 05 Aug 2026 00:29:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:7b38a2082208e1f4c6362eea8d3a208344c68ca14cd9eac44c8e34fc523cf4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bae06ab3b4df32cf3a9d4e1922f0e0e6632d11b16913930c27fc6336307eb6`

```dockerfile
```

-	Layers:
	-	`sha256:cb9b5929db2336335c8e7dd0b355e86fc62332db171c114081bfa2f9dff541c0`  
		Last Modified: Wed, 05 Aug 2026 00:29:40 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:a80fb9b9e99a56611a103ff3f8b985f526385a286078d11c12fb3e29c201e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166718627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83b8bda685dd807288a9a53fbd370d0cbd5bd665fd268b98688e0bb84f06415`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:41 GMT
ENV NIM_VERSION=2.0.4
# Tue, 04 Aug 2026 20:44:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:41 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:09 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:09 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6fd7f73c7271ef607bbdb0e700e131164866e83bc634ade0ab94be663eb4b6`  
		Last Modified: Tue, 04 Aug 2026 20:45:00 GMT  
		Size: 113.8 MB (113797038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806849a640817226c73dff05f1f65863417f64c9b46eb222f0433e99ac73aa2f`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 24.8 MB (24804169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88db41d2aaeeeba11966992eda7b72a4d311d0513b747df8808884a22b3890d4`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:2324b8580bd846ad2bbf7ae3c7729e2b4e9a4728bc2f39347e6e1430ca059a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c927a875e6ea02ca4def4d610e8c11a62217914f5030cb6fe03208d0346c1b1`

```dockerfile
```

-	Layers:
	-	`sha256:dd137c8fe70d4648ce7233ef860cec863e344dc98ac7ea1a2b522d4428d745f7`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 13.7 KB (13652 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.4` - linux; 386

```console
$ docker pull nim@sha256:154968496615cccfbc20dcc2e2f7610a18694a0a85f533563ef45b25eef48aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174533676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c054a03eb7f2872db1fd869400ae56c4cb936b49464d2c18c98dd625a5a87053`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:03 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:03 GMT
ENV NIM_VERSION=2.0.4
# Tue, 04 Aug 2026 20:45:03 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:03 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:31 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x64.tar.xz'; sha256='2ca6e7b701bdfee2e7a8def2f0f5eeba026420c612261faa3d4a85be04c679b5' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_arm64.tar.xz'; sha256='a907adc2ef294d632969877438a5643ffad7b03995d947381b01630fe444f3a4' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_x32.tar.xz'; sha256='50a67191af157ee860f600e33f333895a92faa956ed27b7fb99a167e20a77b7f' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-03-28-version-2-0-b47747d31844c6bd9af4322efe55e24fefea544c/nim-2.0.4-linux_armv7l.tar.xz'; sha256='fda40d94e88859fcd66892a3780d8b4ef818e795074aae331be187c88ffbb4f9' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:32 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355c89d573954c01ff8c9e9681bc7e31ac4ca3d2cb9b88ac9788aa5eb61ea117`  
		Last Modified: Tue, 04 Aug 2026 20:45:22 GMT  
		Size: 118.7 MB (118714986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbf54db25327ce6022b7e8e6102578d328ac0784da04671836ff343ad35e17b`  
		Last Modified: Tue, 04 Aug 2026 20:45:39 GMT  
		Size: 26.6 MB (26597473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e460ac9b45927dde44ba72e97d7a345c1dc4ed4e714629f94fd7383277673a6b`  
		Last Modified: Tue, 04 Aug 2026 20:45:38 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.4` - unknown; unknown

```console
$ docker pull nim@sha256:4e34253acb4f5315954499a01cc01fcaf320e10f6b835bc4d097c983f86d549c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3471b73edc2c0d97f2912a59a85ac31b2bd30ebede3355d43a921f4ee227a6f9`

```dockerfile
```

-	Layers:
	-	`sha256:8d89ea8ee88bcbc31b0a577e0565e88e9081b8cc507289295214ccf1c4fd8f31`  
		Last Modified: Tue, 04 Aug 2026 20:45:38 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.6`

```console
$ docker pull nim@sha256:d7e359d2fdc7bd0e2ea44a465e411d96601770d4c932eac298555d6392291e56
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
$ docker pull nim@sha256:91c9a087fe4745a42d692cbee121a5eb2a1165b3709b4ec9b95dfe4aae70e9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173888382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25220eb4946063704bdbdb30360724627b59317ff7d5ac4fa2104d6bebe9ce71`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:51 GMT
ENV NIM_VERSION=2.0.6
# Tue, 04 Aug 2026 20:46:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:53 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:53 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35076d95a46c1e5e0b8ba40828db19f90c6938a834e4b05f6af382de5b7cf17d`  
		Last Modified: Tue, 04 Aug 2026 20:47:12 GMT  
		Size: 119.7 MB (119719780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9dc4c8bca3f9106ac93dd051a0ec920d8100305af220bf772348620e7ccf96`  
		Last Modified: Tue, 04 Aug 2026 20:47:10 GMT  
		Size: 25.9 MB (25935794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87187a3e04983553103f93202a2454a8fb0fa4761069a9828a86ef97588d118f`  
		Last Modified: Tue, 04 Aug 2026 20:47:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:7e29117f2283815de618f8d8f658487775405cd102ebc210a2ca88bf5baa0805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef08be0788f48516d09cc9cbf2b2f5981dc8f988c7c047f0d70a1da6843ebefd`

```dockerfile
```

-	Layers:
	-	`sha256:db522cfb3e868dd16f7d783236314657f6176fd95677960ead550bb07b6814be`  
		Last Modified: Tue, 04 Aug 2026 20:47:09 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; arm variant v7

```console
$ docker pull nim@sha256:08c7f9d7bbebee88c711fa80fb63b0a4d09d7c535f3f94394ef7d530466c1d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138939383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744f2cd7ef21ffe26c6d1abee1c2eb85388f2af9a66486966a047232cdb8067f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:28:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:28:44 GMT
ENV NIM_VERSION=2.0.6
# Wed, 05 Aug 2026 00:28:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:28:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:28:44 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:28:46 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:28:46 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:28:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4179708029148a9fd37a0faecfe1cf33d9166134f5524dac084280a0eb9dbd13`  
		Last Modified: Wed, 05 Aug 2026 00:28:59 GMT  
		Size: 89.2 MB (89159020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6dd6bf9a590e302092c8bcb58bbfdb1cd770586a88c3517de411cb23ed3f957`  
		Last Modified: Wed, 05 Aug 2026 00:28:57 GMT  
		Size: 25.8 MB (25840452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7649b115b3cc149868e35ee9b83e94b4146f5240090202c05fb9aba2e18d7a`  
		Last Modified: Wed, 05 Aug 2026 00:28:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:f52d69953cd35adc04bf07c12c02c6b6326c4ac55b17b6fce7bc2b541bfe4071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857145c2bb8aacdda7fc3e00cbcccae72ade53d5a6c6526ebd1c207c15e8aafe`

```dockerfile
```

-	Layers:
	-	`sha256:f48b8f0843c692e4a5c6307c8d35346fa2fa279665c2dab775c7683e8f5329d7`  
		Last Modified: Wed, 05 Aug 2026 00:28:56 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:7b6c6bc93e1ddc86e6026bca845c8718558b562fe5be57b3616f24b7d2decd23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167206221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa894491c0984c0404e6fa5b5306b567ca037f74abc2f3e244661c6e48ad4b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:33 GMT
ENV NIM_VERSION=2.0.6
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:01 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a6edfe05dc402fad0aebf97804ef6b3ae299021fdf1873467453d0aa86bf8b`  
		Last Modified: Tue, 04 Aug 2026 20:44:53 GMT  
		Size: 113.8 MB (113797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13f0e03a37b347a8fa420692137f7293e749762e5c45f67e8ab79242b3cbf0f`  
		Last Modified: Tue, 04 Aug 2026 20:45:09 GMT  
		Size: 25.3 MB (25291723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807db6dfb2bd20fd7093ccc235a9d297390978d04a85705b79881fae504d5f0`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:9e5c6732e0b3d41c750d7889aa1265184c4ef3705c58101d09a7ecd85a63d623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb6bc9f7307cc170ad692538849f243fe46504a90590c7c1557580f4b965d3e`

```dockerfile
```

-	Layers:
	-	`sha256:a5da6e90eb0cfe923a2f2d0999405789668c585ef9a6c53964a1f5d4985532d1`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.6` - linux; 386

```console
$ docker pull nim@sha256:1f0700b4244b426fcae075f874b5bd1488e27e2b62f87c26b995b7e9dd4e176b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175066844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d24f9a24396f72b7e4e493183e468e8246f03d7bdcbce87d386faf36102ac38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:51 GMT
ENV NIM_VERSION=2.0.6
# Tue, 04 Aug 2026 20:44:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:23 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x64.tar.xz'; sha256='4613c18f6c70d14f7fcbcb0c644425699862902ec64d7b785ededaf161815cdc' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_arm64.tar.xz'; sha256='6a94ff6db8d2d4ff12259e1b78c5d91392621309096f4d932aec9d71bad11f49' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_x32.tar.xz'; sha256='d8b81f042c79f473c14e59a2a6ecb4f9b9e44762c42d16425a2488c3f767ced8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-06-17-version-2-0-c00e8e71e0c8465b5a5257c76c674b803273b222/nim-2.0.6-linux_armv7l.tar.xz'; sha256='be8ede6c8d663a136087dab38e1436a1fb2675d4624f7e30eb2feb0a31f43644' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:23 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f9615b455415ef5710636bdc4af1a04e597d2310b1f6ba2a7f43a69b4ab8e3`  
		Last Modified: Tue, 04 Aug 2026 20:45:13 GMT  
		Size: 118.7 MB (118715081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7781f9eb59ed97c42fef0ee3721e9a34bf4726d296d527c282ece1ca4b294e`  
		Last Modified: Tue, 04 Aug 2026 20:45:31 GMT  
		Size: 27.1 MB (27130545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7d09c51b4e83ba14a825dc8a329de6c0013001af31218c39fe7dc951413bd4`  
		Last Modified: Tue, 04 Aug 2026 20:45:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.6` - unknown; unknown

```console
$ docker pull nim@sha256:c2f10f152d836babb3763e19a5be70a189da0d39212bb3ffc67a8ff2fabfab30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283cf1040875dc3bbae4b75f9d00e2ec3a4ef88a9b64a026fcca7f36b85c8de9`

```dockerfile
```

-	Layers:
	-	`sha256:2b118a1559fc2faaa47f4f66e9177478a43d2e4897e214c389a00c405b7c0033`  
		Last Modified: Tue, 04 Aug 2026 20:45:30 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0.8`

```console
$ docker pull nim@sha256:9487094fbbd70eca2eb17ff3e770598d26e35c9025921b53bbe05d3ea3172022
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
$ docker pull nim@sha256:be757aa083aca17f956113c43318a4a50641e16a4e415a0adbc53f09ec8a720d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173977465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ee69d027d341b98d7be4663ed003bce31928269f1999ccc7d41387bfd705b5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.0.8
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:57 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:57 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90062f6327b988ad10928b5a5c7a2f8089678b1807cca40e54e759a356993da8`  
		Last Modified: Tue, 04 Aug 2026 20:46:04 GMT  
		Size: 26.0 MB (26025558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7494cf4a117777e118f2889262c10538228e1d81948e20b2b2d046a103694b4`  
		Last Modified: Tue, 04 Aug 2026 20:46:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:cca2c830f998fac5bbf6b69b647046494b30faa2faf4a77612d1d931069552b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6d73b9ceb950c76c9f7d921065536ecab152be765b7858c1def2692f6a557a`

```dockerfile
```

-	Layers:
	-	`sha256:a6b98d2e87617021e53d06b9310b4c9ecb76a40b2c0f1ff029a4a3cc8bd41dc3`  
		Last Modified: Tue, 04 Aug 2026 20:46:04 GMT  
		Size: 13.6 KB (13569 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; arm variant v7

```console
$ docker pull nim@sha256:369837fc41e31d1de0fd736531cd6b3ce570c079313da33f2629c8eee9057e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139056511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f92f03fd8b65f0028ffb8acf6314b6f4e510647b1585a7025f68f76e1611b19`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:36 GMT
ENV NIM_VERSION=2.0.8
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:27:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:27:50 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:27:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3863efb2cceacb40e4340c56439a9fb3abc7f51444578302b6d7ab1ddc66fe3`  
		Last Modified: Wed, 05 Aug 2026 00:23:51 GMT  
		Size: 89.2 MB (89159131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829be89a6857b1eb2b8a9383681545aa540f09b9b11efe0318faec5a5c05e33a`  
		Last Modified: Wed, 05 Aug 2026 00:27:58 GMT  
		Size: 26.0 MB (25957468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2057a77c1dacd0e8ad143136ae62552b5a504c9cc8bb9b93b6da62999fbea4de`  
		Last Modified: Wed, 05 Aug 2026 00:27:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:476941d304eea999da4052580e563ae2075bf33b282c4dd90b68cbed3dfa070b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1301e18a660e943ea4b00f0734ad0d28bf56e808ae071cbca708e4b5017fbbf`

```dockerfile
```

-	Layers:
	-	`sha256:390431eb07bedc5fe61c79f39d62647ca9081f0a1a0c68c331a724e05bd1f7f9`  
		Last Modified: Wed, 05 Aug 2026 00:27:57 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:7399efe7c98dc68aa464e7d0e4af8e78041e1567afa94bd5cb6ca5b4b636bb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167304442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf2dc52036f7fdf42d91aabb93e75a6212c9789fcb09f1d098763e46af2c1fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:45 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:45 GMT
ENV NIM_VERSION=2.0.8
# Tue, 04 Aug 2026 20:45:45 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:45 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:45 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:47 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:47 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee98c39be46c1e95ccfd7874eec4638f049a573118f8e1b8bfc7863626e91f40`  
		Last Modified: Tue, 04 Aug 2026 20:46:05 GMT  
		Size: 113.8 MB (113797366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c070adf011dcb1ea96781aed113165f752ff891a0492996c13697187653e6c3`  
		Last Modified: Tue, 04 Aug 2026 20:46:03 GMT  
		Size: 25.4 MB (25389656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1227695fc097e9df97b0ebeb0683dd184c50d7ebaddd9e5d6cfc9c7ea68fb78a`  
		Last Modified: Tue, 04 Aug 2026 20:45:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:dc54bcc27a835d12b42d1b0a2de1df0ff53e4d4bdca1bbad93a172195dbfeed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ffe3f78b5fd26745f0f890a663e6b6b6f4f7890ec85ffedefdde00a5d97822`

```dockerfile
```

-	Layers:
	-	`sha256:5f6096acb4b6b6e29012f9dd03e12bdd1ff126c5e91cb06e4b499bafd894d49a`  
		Last Modified: Tue, 04 Aug 2026 20:46:02 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.0.8` - linux; 386

```console
$ docker pull nim@sha256:427f7e1a19831a69a5020e41c134166991d35408b119d2df0af2515d99e55679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175169103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353fcb537e783b9c2f54b17cf192d47a717cb9e5a3c0a985ffad4fcabac32f94`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:46:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:46:07 GMT
ENV NIM_VERSION=2.0.8
# Tue, 04 Aug 2026 20:46:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:46:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:46:09 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x64.tar.xz'; sha256='c971320d391db30917b3b61c471cff4b3cd3cd883d4f7af099d3c9018cc15683' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_arm64.tar.xz'; sha256='144caecaa5750ba7aca52062322645fe6cb64063074168e0f459653c3a71fa7f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_x32.tar.xz'; sha256='ccb27d7bdedd585c59670f444f6d075bde6844a2f2398652708ddb415c36e4d8' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-07-03-version-2-0-5935c3bfa9fec6505394867b23510eb5cbab3dbf/nim-2.0.8-linux_armv7l.tar.xz'; sha256='6b588dc6f286d2f37f4bc75583b1dc5400377deec4db7fa865915e6f681133e0' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:46:09 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:46:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79478529b31fed2e980f5ab05e07be2cb428b11a77dc355f320c7e735e3a8db`  
		Last Modified: Tue, 04 Aug 2026 20:46:26 GMT  
		Size: 118.7 MB (118715009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4b8732c06db3b6856d90a96dee09a7e44920f6cb9cca44b5085a9bf0994a9a`  
		Last Modified: Tue, 04 Aug 2026 20:46:24 GMT  
		Size: 27.2 MB (27232877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7610b8ea8773733414549273250c253ceb4c2b9b45bb9490824eeb42877ee59a`  
		Last Modified: Tue, 04 Aug 2026 20:46:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.8` - unknown; unknown

```console
$ docker pull nim@sha256:a5078d61f349533d9ecde00c79bab1f54103a40c427a48cab0732beb206b2cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dbd1e4bc78bac485325a9831f6660b2b6dde22d6cde49aba54d55fae5b4af9`

```dockerfile
```

-	Layers:
	-	`sha256:58a7933a00f70b8cf5b95db8705eb2a1a0da01769e8d3392adb75d3127061e20`  
		Last Modified: Tue, 04 Aug 2026 20:46:23 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

```console
$ docker pull nim@sha256:e57d2f41e300c04f699653c36546a13713be9ecb7b6462775c278c1ef796ae4a
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
$ docker pull nim@sha256:efe8a97b5420f309e77c0d02c8c8c31704a2d53adc48c85f8493f399f98c8899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c1b5556260242e9cf67d7aaa193885e41e0a08ff5b6fc384bb1ebd2d1f83c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:01 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc36fbdd37230994f2569f3fdb30d6b12949adbcfc7ade51519e7b7e521e89`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 30.2 MB (30189594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807db6dfb2bd20fd7093ccc235a9d297390978d04a85705b79881fae504d5f0`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:f03ea86395eb490fe93a8fac712cf7874b491f8b47d75ce531ac9df401573906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b498f2bc52ab40a8b2659181321c6878381880ce0f2f7897e0042ad06a6df3`

```dockerfile
```

-	Layers:
	-	`sha256:8c49dab6c97c04ecfd63ab658004fbb2b4ffce18d4dec60cf8c218b6cc9fc082`  
		Last Modified: Tue, 04 Aug 2026 20:45:15 GMT  
		Size: 14.4 KB (14447 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:ecc4cf5c885c73e6541106765c413166144e97255e18f4e6e268d807e9cf5614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143676697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b24079617754c8277210a99a0b4d34ff0d69cfbc9068a421a4b1deb471a7e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:38 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3863efb2cceacb40e4340c56439a9fb3abc7f51444578302b6d7ab1ddc66fe3`  
		Last Modified: Wed, 05 Aug 2026 00:23:51 GMT  
		Size: 89.2 MB (89159131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b317b97b6147534e749bd9e63de7b649b8911ea2bc300b4d7989c044c5f3281`  
		Last Modified: Wed, 05 Aug 2026 00:23:50 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453330cf47ff34ce5506863eb5a8af11ddbfcdb03875bf113be7f1719c181c88`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:80ced51afc2407572ac40c07c9a95568e9e40c47e000c7d357aa4534f5c63910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5273fc485e118392fa25dcc51a166d9d84c945af43a880f6fa3d2ca1efc99f`

```dockerfile
```

-	Layers:
	-	`sha256:f3f7666136cd6baecc80eb5c862f466c4819b3d291bbcdee4a5f4113ade3614b`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:c27862828f0ffafdd824a3d46e14fbbdb9f86f77188eb283bc0b9f01a518a162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171406360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f001bfb55ec97b536656998b1e2c56fa00324a6e1376fa933798697faad1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:33 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:34 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a6edfe05dc402fad0aebf97804ef6b3ae299021fdf1873467453d0aa86bf8b`  
		Last Modified: Tue, 04 Aug 2026 20:44:53 GMT  
		Size: 113.8 MB (113797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e7e7d0f5ec6733a3b407ad6bf94cc0735929c207fdd06c2f9c6a3d97a1d17f`  
		Last Modified: Tue, 04 Aug 2026 20:44:51 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d791a0ea99c5a55b29851c3ac69082e5418c49b0a89243e4bf7e60b67462deb5`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:295f3733d2ac00260d49a96f70d156a55096ebec71eba9847db6686326a1c236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279d8cffb47f7203913b3c8ea591af76aaa7ac061709207410d718446ef7ab97`

```dockerfile
```

-	Layers:
	-	`sha256:f4b06b0675242b0522e249a4ceeacfbcd4c8db492fa825d1701a036fe4fb2b62`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:3085fa892a34a22e155be67d312f1e84e65c5c3b4bbff948bc439d19b9ca92f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179737013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf3dca5da8c7830d269140421934ae28c050d5d024aa19595e4e20379b909ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:48 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:51 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3779bf8c3c5171379c55d3dcbc69627fa41d08e85859ddebcabafd5f621bee`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 118.7 MB (118715123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f785b5bb135d1da02f8154c7aa458d8b3b6d5f30e18f62bf4691040d4bb8c7c1`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677a04a1d1e06e411211d477fbd9ec0fadbb21c5a62515f1712b69c8ca64290f`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:6507204e4285d6d7144893adb26d6f82a1ba641fb79b31f0c3e73163858371f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10285ed0b656514e586c4a6c1dfed4a3b9950fc183b53b4c9aeb2b0bae9054e1`

```dockerfile
```

-	Layers:
	-	`sha256:21cf8b53e50573fb165bba68b30cceccfc93693e5c5035e6eb951f05ab550605`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.0`

```console
$ docker pull nim@sha256:52d2a8f8f77082e67e1b3efcf93b83d50c31c728b60ae78a0197befeaed091f7
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
$ docker pull nim@sha256:418cba40675318a6b36e2bb2dbe2760a38ee6464f414740806b4f8a4a2ae3799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174844897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5add5a78223f7e7016851ec2400da9b59a13b14cb2249d0a235d2c833ec2b144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.2.0
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:26 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:26 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dced994b5e816fc959491e21d00f9d269da377014d3a3b3b9bda61bfb980d4`  
		Last Modified: Tue, 04 Aug 2026 20:45:33 GMT  
		Size: 26.9 MB (26892990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2806122160ac4def7b2efb130e6feb557b38b9f1aca84130c988e96468ea180`  
		Last Modified: Tue, 04 Aug 2026 20:45:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:f82aa65b97899e9d5652fea97c60fca3ab84c0a594cd397be27a68a28b53ea0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f728f700bef620d40885f1f003cbb7183113d3e95de8ae0b8edad17ed358e305`

```dockerfile
```

-	Layers:
	-	`sha256:9b9bff313f9b89acc789a298121e14a5f2638b8f86ef1c6f0594b131a57cb7c9`  
		Last Modified: Tue, 04 Aug 2026 20:45:32 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; arm variant v7

```console
$ docker pull nim@sha256:1ee6ae387cde64e509d9515f1516dba6f14477266cbeb07456c1a3933cd985aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140020468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f8fb68764a76baeac553a286e03dd5620fc106fe4f5fed7151a05080d39bed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:25:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:25:58 GMT
ENV NIM_VERSION=2.2.0
# Wed, 05 Aug 2026 00:25:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:26:22 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:26:22 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:26:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e226b4e8eca961817646af705caf5946072e07def6cbea2dd613027d6548dbd6`  
		Last Modified: Wed, 05 Aug 2026 00:26:14 GMT  
		Size: 89.2 MB (89159062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04e0851927f3c614248e7b88d32dacabc466551fe3d4468d30c6bf7d1f69e83`  
		Last Modified: Wed, 05 Aug 2026 00:26:29 GMT  
		Size: 26.9 MB (26921494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9b406d47f1bf40b7f5f213397c53ac25f0c0cd9689a1c6470246bab43f9024`  
		Last Modified: Wed, 05 Aug 2026 00:26:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:e13efad4eee3041955dd4d879a68e52aeaa12ac5425bae5c8db6ef64d8c0d87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12be6828911da261cfab2e8af57bb47f7ff07ae1f48c5c434c0fc0d564b610c0`

```dockerfile
```

-	Layers:
	-	`sha256:6d4ab4962291160a593962bc5e3f70a9b21fc763acc7fabbf57109fd7d287fa8`  
		Last Modified: Wed, 05 Aug 2026 00:26:29 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:47f99cc6599f1a7184d8c4d79fa1305b96c49b553f2780cb57afb84fbaec34f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168116344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25cfcf29b4e6de96b0ceee1ddac604da37d5896453c9d35148b617ef8af832cd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:07 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:07 GMT
ENV NIM_VERSION=2.2.0
# Tue, 04 Aug 2026 20:45:07 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:07 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:09 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:09 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaecc1e44d36ee0bfa7a0e7a11dc8b145672cb6759267535110672c79cd4d271`  
		Last Modified: Tue, 04 Aug 2026 20:45:28 GMT  
		Size: 113.8 MB (113797093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa1c887f02929070580939420fc5c81e7964f8156896724f73595655524ba9`  
		Last Modified: Tue, 04 Aug 2026 20:45:26 GMT  
		Size: 26.2 MB (26201831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88db41d2aaeeeba11966992eda7b72a4d311d0513b747df8808884a22b3890d4`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:a6cdf8faf588ed66c8f9d556dd7178554c71812f8efa102ec5f85d00f7fa1f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141efa7ac5f6de70654173e70495afdefefcb799d2b0a8243e6169daf95a1df1`

```dockerfile
```

-	Layers:
	-	`sha256:335991391d1da53498bfecc8f0a73af9289d82b47cdc5e0d25047e6dccf8c539`  
		Last Modified: Tue, 04 Aug 2026 20:45:25 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.0` - linux; 386

```console
$ docker pull nim@sha256:149d69df8897218501af032ba198cb4233e722b24f11244aa088f2daa1ac5e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176200690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f05d603e120bb879d22c410595d2aa53c03947753e50e42fd7d4e6b3650a4c8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:43 GMT
ENV NIM_VERSION=2.2.0
# Tue, 04 Aug 2026 20:45:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:43 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x64.tar.xz'; sha256='942e047879fd81193b2ff3c105436a0c5016800c4e97864f90039ae204f89ded' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_arm64.tar.xz'; sha256='c1b75c7a05486ead8f9e9df3c9a074d1f99edbeb4767c23188bbaba8691f0017' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_x32.tar.xz'; sha256='1e46dcb720e93b84573c6ce6190b96944daa0f71877a720b05e52a7662e53f68' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-10-02-version-2-2-78983f1876726a49c69d65629ab433ea1310ece1/nim-2.2.0-linux_armv7l.tar.xz'; sha256='8b93fe40f0b37538f3f6ff5c9c9cea2c3558a693519cfc2b6917efdbbcbb253d' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:45 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0f63940273e1e75f6729025ba0cf902573c2a7c9a5c052e12701fe2aefd30c`  
		Last Modified: Tue, 04 Aug 2026 20:46:02 GMT  
		Size: 118.7 MB (118714914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d9a3b354ce9875c272ae77f70e3125f35b7dc9818b9a8b1eed9aa2f8cec13a`  
		Last Modified: Tue, 04 Aug 2026 20:46:00 GMT  
		Size: 28.3 MB (28264559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32af3fea87d9ec7b88663e17126c0b763665144a1058740fa06f4bbdffdf229c`  
		Last Modified: Tue, 04 Aug 2026 20:45:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.0` - unknown; unknown

```console
$ docker pull nim@sha256:b34caa8bff4894977cae813a2afd8413197e792572728e5e7e99870748e323bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157f98830aee7f0c4277c05aaa133f84f44707957af61591075830cdd093cad5`

```dockerfile
```

-	Layers:
	-	`sha256:9bda9b120f547b0694ca28cb8a474ac6bc6d8b6e2ec63e87814c0cc61bd69b9f`  
		Last Modified: Tue, 04 Aug 2026 20:45:59 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.10`

```console
$ docker pull nim@sha256:e57d2f41e300c04f699653c36546a13713be9ecb7b6462775c278c1ef796ae4a
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
$ docker pull nim@sha256:efe8a97b5420f309e77c0d02c8c8c31704a2d53adc48c85f8493f399f98c8899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c1b5556260242e9cf67d7aaa193885e41e0a08ff5b6fc384bb1ebd2d1f83c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:01 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc36fbdd37230994f2569f3fdb30d6b12949adbcfc7ade51519e7b7e521e89`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 30.2 MB (30189594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807db6dfb2bd20fd7093ccc235a9d297390978d04a85705b79881fae504d5f0`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:f03ea86395eb490fe93a8fac712cf7874b491f8b47d75ce531ac9df401573906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b498f2bc52ab40a8b2659181321c6878381880ce0f2f7897e0042ad06a6df3`

```dockerfile
```

-	Layers:
	-	`sha256:8c49dab6c97c04ecfd63ab658004fbb2b4ffce18d4dec60cf8c218b6cc9fc082`  
		Last Modified: Tue, 04 Aug 2026 20:45:15 GMT  
		Size: 14.4 KB (14447 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; arm variant v7

```console
$ docker pull nim@sha256:ecc4cf5c885c73e6541106765c413166144e97255e18f4e6e268d807e9cf5614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143676697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b24079617754c8277210a99a0b4d34ff0d69cfbc9068a421a4b1deb471a7e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:38 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3863efb2cceacb40e4340c56439a9fb3abc7f51444578302b6d7ab1ddc66fe3`  
		Last Modified: Wed, 05 Aug 2026 00:23:51 GMT  
		Size: 89.2 MB (89159131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b317b97b6147534e749bd9e63de7b649b8911ea2bc300b4d7989c044c5f3281`  
		Last Modified: Wed, 05 Aug 2026 00:23:50 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453330cf47ff34ce5506863eb5a8af11ddbfcdb03875bf113be7f1719c181c88`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:80ced51afc2407572ac40c07c9a95568e9e40c47e000c7d357aa4534f5c63910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5273fc485e118392fa25dcc51a166d9d84c945af43a880f6fa3d2ca1efc99f`

```dockerfile
```

-	Layers:
	-	`sha256:f3f7666136cd6baecc80eb5c862f466c4819b3d291bbcdee4a5f4113ade3614b`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:c27862828f0ffafdd824a3d46e14fbbdb9f86f77188eb283bc0b9f01a518a162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171406360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f001bfb55ec97b536656998b1e2c56fa00324a6e1376fa933798697faad1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:33 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:34 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a6edfe05dc402fad0aebf97804ef6b3ae299021fdf1873467453d0aa86bf8b`  
		Last Modified: Tue, 04 Aug 2026 20:44:53 GMT  
		Size: 113.8 MB (113797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e7e7d0f5ec6733a3b407ad6bf94cc0735929c207fdd06c2f9c6a3d97a1d17f`  
		Last Modified: Tue, 04 Aug 2026 20:44:51 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d791a0ea99c5a55b29851c3ac69082e5418c49b0a89243e4bf7e60b67462deb5`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:295f3733d2ac00260d49a96f70d156a55096ebec71eba9847db6686326a1c236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279d8cffb47f7203913b3c8ea591af76aaa7ac061709207410d718446ef7ab97`

```dockerfile
```

-	Layers:
	-	`sha256:f4b06b0675242b0522e249a4ceeacfbcd4c8db492fa825d1701a036fe4fb2b62`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; 386

```console
$ docker pull nim@sha256:3085fa892a34a22e155be67d312f1e84e65c5c3b4bbff948bc439d19b9ca92f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179737013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf3dca5da8c7830d269140421934ae28c050d5d024aa19595e4e20379b909ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:48 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:51 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3779bf8c3c5171379c55d3dcbc69627fa41d08e85859ddebcabafd5f621bee`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 118.7 MB (118715123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f785b5bb135d1da02f8154c7aa458d8b3b6d5f30e18f62bf4691040d4bb8c7c1`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677a04a1d1e06e411211d477fbd9ec0fadbb21c5a62515f1712b69c8ca64290f`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:6507204e4285d6d7144893adb26d6f82a1ba641fb79b31f0c3e73163858371f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10285ed0b656514e586c4a6c1dfed4a3b9950fc183b53b4c9aeb2b0bae9054e1`

```dockerfile
```

-	Layers:
	-	`sha256:21cf8b53e50573fb165bba68b30cceccfc93693e5c5035e6eb951f05ab550605`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.2`

```console
$ docker pull nim@sha256:2773355ace0dc9a7bf7982d17d91a0cdb040484a645e12b5e86549e382dcf860
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
$ docker pull nim@sha256:f6fe66705ca3a25513288cf11297c429fa887607e4ac65580984c1d3b59596d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175230183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd73fb711c6454a293a5148f27b758206b30c8bebec94fe613d783cfecf9a891`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:54 GMT
ENV NIM_VERSION=2.2.2
# Tue, 04 Aug 2026 20:45:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:54 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:57 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:57 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0021c8859836a7038b59f2cde16a93f821abff656eb7ffa2d8232ac11a3b809`  
		Last Modified: Tue, 04 Aug 2026 20:46:16 GMT  
		Size: 119.7 MB (119719596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185b94faf9ca73eba7ddc6cb70268beee2bbb84b37a1cd8a6286637dc685a9e1`  
		Last Modified: Tue, 04 Aug 2026 20:46:14 GMT  
		Size: 27.3 MB (27277779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7494cf4a117777e118f2889262c10538228e1d81948e20b2b2d046a103694b4`  
		Last Modified: Tue, 04 Aug 2026 20:46:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:bc86f2e6ee2306a38a8c46b9f06e55f281368d416c3a309426dd4606aa7a1b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0db4a55ccb1a4b7958ccded878d6309260b5088f051cdb61fcb96a71f031de`

```dockerfile
```

-	Layers:
	-	`sha256:3d62735b6fb2dd2158c4372df1e513fb9fe2b5ec11d4f8a0ca0cc461367694a5`  
		Last Modified: Tue, 04 Aug 2026 20:46:13 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:515da7247da1148ec819a04e474cb164573612ebeb92c480ddb93a4ed1b4ea79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140414159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8983e99300c2115a57a2528476ead602fa618bd3391c2cca5c2d6e9016a07dbc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:26:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:26:43 GMT
ENV NIM_VERSION=2.2.2
# Wed, 05 Aug 2026 00:26:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:26:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:26:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:26:45 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:26:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f19f2853ef1d4010a907037bf1722d549f2ddee731004313dd5de8463316cf8`  
		Last Modified: Wed, 05 Aug 2026 00:26:59 GMT  
		Size: 89.2 MB (89158882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88282461a1019c38b3f36b58263518abba9dc26e80c4da7eaa14bd1a9a5f36e7`  
		Last Modified: Wed, 05 Aug 2026 00:26:57 GMT  
		Size: 27.3 MB (27315365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13167a94fa374b7ba7afcd04e196b5472c7685bc487710b0f7482f978dbe2e93`  
		Last Modified: Wed, 05 Aug 2026 00:26:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:920a31cfb0922c950f08075d9d62d16afff3b19fefee94cf81c1e624947ec46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f31b612aee41121b03a9bf7352dbd1eeb6017e09a75eca5a81492d208e179c`

```dockerfile
```

-	Layers:
	-	`sha256:5d7aad399aff81e3c865fadaf7ff78e59fffb447fc2b1e36e56ced35758250b9`  
		Last Modified: Wed, 05 Aug 2026 00:26:56 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:342e2f975eacaf4aed4b24a21209972ddb6a10278d4493dbf59e40dda681bfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168460587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e0d23e471b8ea068917327ae3efe0a14b8bcc523652ae1c949a587b83d0d05`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:47 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:47 GMT
ENV NIM_VERSION=2.2.2
# Tue, 04 Aug 2026 20:44:47 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:47 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:47 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:49 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:49 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0d408d0194eece9cc5566e1ba7b089b4e6a5cb2be158923cfff244849e7335`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 113.8 MB (113796551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff15f9ab3899e50d4dfea39cc892526bea32dd9b98d94c4f81235dbbc7d78f9`  
		Last Modified: Tue, 04 Aug 2026 20:45:06 GMT  
		Size: 26.5 MB (26546615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65414d9894e512aade88b8d523ba8545783d82ecb0bf3826800e3a87fc5073d`  
		Last Modified: Tue, 04 Aug 2026 20:45:06 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:4238c36433a0cfe301758dc694cf1cb1e1e39516850afa5b8195b6c395c45500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a40467f6606a0fa2fae8759738636f9c018143c9ade99ee4f5be3daddff9e49`

```dockerfile
```

-	Layers:
	-	`sha256:8e5313c55f1d53482c1ae95732f4ca0568d36b2962f922871f8c9075895d5912`  
		Last Modified: Tue, 04 Aug 2026 20:45:05 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.2` - linux; 386

```console
$ docker pull nim@sha256:be6331d6d173f8ebc1b1d4ef31029219db33321a7dc24d31440b7e8704bd762b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176613214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e28517304fb5ce7f391708447b8625f37383f2fa0f077bac0b8bf1573dd02`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:25 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:25 GMT
ENV NIM_VERSION=2.2.2
# Tue, 04 Aug 2026 20:45:25 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:25 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:25 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:28 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x64.tar.xz'; sha256='2deeec22fcfafb240f7d58e21744f52bafcf9b6e1d5b8add5925e9b8f7cca0b3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_arm64.tar.xz'; sha256='d983fadd58afd78b0dda5f690b03bf0ba2ee034e3476f4c62cbbe352ffc4656b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_x32.tar.xz'; sha256='ed74edec95eee2cbfa1d0c5a04789beb8ab2ebddcb6f94624c714e5f7424cb1b' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-02-14-version-2-2-6c34f62785263ad412f662f3e4e4bf8d8751d113/nim-2.2.2-linux_armv7l.tar.xz'; sha256='35447feb9e1cc3d7c80f1e0f64175e7212092b32da98d3bb3c9e2195a64b0619' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.2";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:28 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05ba2d3b7b456294bf8a6079761221b4c6efbcccf4ce3252ed226e0466e839c`  
		Last Modified: Tue, 04 Aug 2026 20:45:47 GMT  
		Size: 118.7 MB (118715097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c77ed55bd55069fa0e006d34678baded45d844e2f4be3bd68b9c9aa0663ce68`  
		Last Modified: Tue, 04 Aug 2026 20:45:45 GMT  
		Size: 28.7 MB (28676901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f78df67085bad2d4ad749ab0d153de6fd39e158494549198c1662ba706e905`  
		Last Modified: Tue, 04 Aug 2026 20:45:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.2` - unknown; unknown

```console
$ docker pull nim@sha256:6ce11e4cf6c57a9c82b1b48403604da5844ed08e84589fbea40834acc90872ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21fb47807196ad03df51303ce58b236e8293cdb5e4abd71b23822932969e721`

```dockerfile
```

-	Layers:
	-	`sha256:ba53be26af76b9ac91b3ecd3d9b401157a9e56b16b75ebded030524667217584`  
		Last Modified: Tue, 04 Aug 2026 20:45:44 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.4`

```console
$ docker pull nim@sha256:83efd3c8ff3b53fd5b0daac819661816b403eb1fd5df96d6085a4d85c28aeb34
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
$ docker pull nim@sha256:3d52b11270170efc18f0e0b8eca07ddb3ab5fc1c557a534b0082b0e83f324d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175691704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3b165cd4553a8d995f7ee190f1d9b3981b70d11491b2efbfea0e1c1a60dc13`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:44 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:44 GMT
ENV NIM_VERSION=2.2.4
# Tue, 04 Aug 2026 20:45:44 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:44 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:44 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:46 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:46 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302481ff8d74cd651d8fcfab619984ffd9df6c4f035f225a4126916838da4e56`  
		Last Modified: Tue, 04 Aug 2026 20:46:05 GMT  
		Size: 119.7 MB (119718946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba498f21fd4d89cf5c5796c02d3deba46e8e957d9e2dd02b40a96e2b22d6da5`  
		Last Modified: Tue, 04 Aug 2026 20:46:03 GMT  
		Size: 27.7 MB (27739950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e6db4270d67c22436fdc42221728d2cde630d7cda7bdc43686c87c27c036a2`  
		Last Modified: Tue, 04 Aug 2026 20:46:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:d5cdbc05c69f72f285694d9af5e9af1fa3afdd3884584b587e492a1aef80c02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d98d0ccf164f63f437d70b72f6b4fd0f9357734611be8c75dbd725908b89a`

```dockerfile
```

-	Layers:
	-	`sha256:51cc8d8860bf93778c0fd20dc95a2f2dcab050e84e1c20d50216fe6afbefe53f`  
		Last Modified: Tue, 04 Aug 2026 20:46:02 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; arm variant v7

```console
$ docker pull nim@sha256:cabaae5fd71ee8f6d3cc2d2f63b002cc7d38f32786643515271a5893814064a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141055128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192b5bffb7bc655b67f687843fab32ac4e70df8ad01624db44e10507997f855c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:25:58 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:25:58 GMT
ENV NIM_VERSION=2.2.4
# Wed, 05 Aug 2026 00:25:58 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:58 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:26:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:26:00 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:26:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e226b4e8eca961817646af705caf5946072e07def6cbea2dd613027d6548dbd6`  
		Last Modified: Wed, 05 Aug 2026 00:26:14 GMT  
		Size: 89.2 MB (89159062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ca324f0e7eefb9a31252e58a23a8f3baeea840a129e084013186f8c4c4873`  
		Last Modified: Wed, 05 Aug 2026 00:26:12 GMT  
		Size: 28.0 MB (27956154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6f607723ead8db1f08cbebee1d94eddf8a23a787ed073d02bc744c928ca556`  
		Last Modified: Wed, 05 Aug 2026 00:26:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:b868c69fbfc6417945c76e70130089ca53fea4692fa194a7801daf574553fed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c0268269321d05e59d0a99999403a81775a0cbe0ead945f9eae5741737adbb`

```dockerfile
```

-	Layers:
	-	`sha256:7843bdb0b305f0b2c337032d0aa930710fc051a3450cc8751cd077b658349da2`  
		Last Modified: Wed, 05 Aug 2026 00:26:11 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:e4dd60ba74ea2badcba6137fe4788a5c5fbcaf3c219419f2c415cb745ef339d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168979989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330adc5c0365a307cff9f72c5b89bf938febe0950a7680d395e8ab5bb4029444`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:43 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:43 GMT
ENV NIM_VERSION=2.2.4
# Tue, 04 Aug 2026 20:44:43 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:43 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:43 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:45 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:45 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192d99115dd926aab1b13faf3fcd9b4e3652d75010c03e7cf36e87622233a9af`  
		Last Modified: Tue, 04 Aug 2026 20:45:03 GMT  
		Size: 113.8 MB (113796931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ac3f5bf3c42b335fe92f74373db1fd667a98c2104634aac9a779df2debaff3`  
		Last Modified: Tue, 04 Aug 2026 20:45:02 GMT  
		Size: 27.1 MB (27065638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ab1054c8dc57306d1d2330b129769720108268931d5294641583889e0eaa8`  
		Last Modified: Tue, 04 Aug 2026 20:45:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:08cce19a7cdb06f9633a6d5278f7f7a986903747692be7f13a5c2a53723ae8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe94383fd8c1dd0d59f29d67a2da1e4fa7b6c702cf436bbc136bf795dd84c1b2`

```dockerfile
```

-	Layers:
	-	`sha256:df9cbfa839387f8ad3d97ee4e9f83822aa446adbee6761f473bb7ff231f4db63`  
		Last Modified: Tue, 04 Aug 2026 20:45:01 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.4` - linux; 386

```console
$ docker pull nim@sha256:4f439bf9858ca8720574e0645cc8d07458f60e476934bfffbbad35c46742f59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177139683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192f887e1eea6df934676d5d5f742b7fac22cd11f4a1381a44e4283712df87b5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:14 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:14 GMT
ENV NIM_VERSION=2.2.4
# Tue, 04 Aug 2026 20:45:14 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:14 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:14 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:16 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x64.tar.xz'; sha256='791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_arm64.tar.xz'; sha256='62b9cc99c8e3e5fe6c7b0f6657cb7a656822066a527344aab6c1c1dbc61cc0fe' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_x32.tar.xz'; sha256='4548e643996a8e38cc4532e38e1bd5fbb36ff76407866ea317307568389a3af2' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-04-22-version-2-2-f7145dd26efeeeb6eeae6fff649db244d81b212d/nim-2.2.4-linux_armv7l.tar.xz'; sha256='797f72ee82301c954c801dafa4e7ae30762c1d8fde092efc9a749847ab2add97' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.4";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:16 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3e816978e198b76e7ea38efb7691ade1ba967b56d8cd2c75523e194c5d7cf6`  
		Last Modified: Tue, 04 Aug 2026 20:45:36 GMT  
		Size: 118.7 MB (118714972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8055070c72871a76a4cceaa99f6a8d60ee4e0c5332fc52898d4bb273dd02731a`  
		Last Modified: Tue, 04 Aug 2026 20:45:34 GMT  
		Size: 29.2 MB (29203493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79aff84182d3bdb5e48dd93a2bad84129e99204369e4a4f3b484b42b589ab1d`  
		Last Modified: Tue, 04 Aug 2026 20:45:22 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.4` - unknown; unknown

```console
$ docker pull nim@sha256:935d21d21f171551d485cc4f048eee49b6e4ef41f417dc83542587e7fb651636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d662c38f301f8eed08dda490e984f4a20e39ff953939d2783d4bc44744973fe`

```dockerfile
```

-	Layers:
	-	`sha256:a74a21c64e137454cb0e999f0751d0d937ca3502fcfcb1e189202781932e819a`  
		Last Modified: Tue, 04 Aug 2026 20:45:32 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.6`

```console
$ docker pull nim@sha256:558fe6ee981a0b0b3c93e853f04abe126d5f4d230abc3c21faab0148e8c60d79
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
$ docker pull nim@sha256:0e9c9923456a6fd070a83d92226852bd0b6ba9fed2eaad8fd768d04e323046cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176063721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842368d6f50b4f2824f0a96560537b80b5156fb3475d0f7ffd881d2cf2046cc2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:39 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:39 GMT
ENV NIM_VERSION=2.2.6
# Tue, 04 Aug 2026 20:45:39 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:39 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:41 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:41 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff796233845040b50aec76c01e41f8526cf8a9561de0eda7d8cc991b9ea5481`  
		Last Modified: Tue, 04 Aug 2026 20:46:00 GMT  
		Size: 119.7 MB (119719529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1026643449529963fa07dcdc43104ec558d96adc95236cb83ded91597c1885`  
		Last Modified: Tue, 04 Aug 2026 20:45:58 GMT  
		Size: 28.1 MB (28111383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4496fe61f83b4c2946c35d50a0dbc70a78c85f5fa970eaa505d2824bcbe9ba1f`  
		Last Modified: Tue, 04 Aug 2026 20:45:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:a7f2483c9036690d2bf07d66cfd68c60db2f47fd0fbca187bef344c9df89b59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 KB (12957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100eec1845934ce9f4ce41aee88f984d1bb7ff52f4e302e785f3860ea3b458d8`

```dockerfile
```

-	Layers:
	-	`sha256:ccc0b529d9b5a442d3fc27d403755c236b83fd1062530ff1389006609d2b7c44`  
		Last Modified: Tue, 04 Aug 2026 20:45:57 GMT  
		Size: 13.0 KB (12957 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.6` - linux; arm variant v7

```console
$ docker pull nim@sha256:b3d4a171f9eb4034c806eaee50cf76eec6e94e7ba49235d2d548f5f8dde23264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141499326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ef5971a7607a5c0387e5e394220826206b5296b4a4e59bc1d1758e4f859985`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:25:02 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:25:02 GMT
ENV NIM_VERSION=2.2.6
# Wed, 05 Aug 2026 00:25:02 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:02 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:02 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:25:27 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:25:27 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:25:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01023b6163f6b134d174b7598795a7b7357fcf6e2076d27827631f78015c8bfb`  
		Last Modified: Wed, 05 Aug 2026 00:25:19 GMT  
		Size: 89.2 MB (89159113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becc87899299ed6094d065a0e34fdb3ae12485265c9b2fc8483d89b9ea32fa53`  
		Last Modified: Wed, 05 Aug 2026 00:25:35 GMT  
		Size: 28.4 MB (28400301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5afdbc87f6d6b792d5d888792837199db6c6424b4a695e84768a9834b13a3ba9`  
		Last Modified: Wed, 05 Aug 2026 00:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:6b2b940f6b9dca28c6eee7c569a3e5eed998bec5b19d1ad974b2c5a583b6d8e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 KB (13023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03510b4ecc930a4ac045add6cba17340afa1f553d3d09141b51e567cef0755eb`

```dockerfile
```

-	Layers:
	-	`sha256:d5703d06a45d4fb1abbbc4028f05d1204bcb0aadcab224ccb7017e807f5bfedd`  
		Last Modified: Wed, 05 Aug 2026 00:25:34 GMT  
		Size: 13.0 KB (13023 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.6` - linux; 386

```console
$ docker pull nim@sha256:52bc6bd042f9a64f5a7c9b456d2ec6f21ff950d8fc68665821553daafc27d2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177578295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859aa4143f01cf4785e218c90bbc9229092d36de05daecb4a6e5568cb1f2fcba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:03 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:03 GMT
ENV NIM_VERSION=2.2.6
# Tue, 04 Aug 2026 20:45:03 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:03 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:05 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x64.tar.xz'; sha256='38b8407f87d78bd207390051e4c76f38a45d0a26983cb262017c899b56ad8d06' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_x32.tar.xz'; sha256='337e5474e6f198e6f66a5c7cf5d3e65cb533f672a65ad59826cb99a443c9e3bb' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2025-10-31-version-2-2-ab00c56904e3126ad826bb520d243513a139436a/nim-2.2.6-linux_armv7l.tar.xz'; sha256='f634a67559ee54485d4007e3547555c94e661bfd9463e932c821129e0ba08577' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.6";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:05 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355c89d573954c01ff8c9e9681bc7e31ac4ca3d2cb9b88ac9788aa5eb61ea117`  
		Last Modified: Tue, 04 Aug 2026 20:45:22 GMT  
		Size: 118.7 MB (118714986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5c40fda9131bbbf7695591eded514e35dbc7d9fb898bda8bc792a392689fd4`  
		Last Modified: Tue, 04 Aug 2026 20:45:20 GMT  
		Size: 29.6 MB (29642091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbd0e15fcf6f8d385930c9fdaf24db1a72b557598c0091c70bffdc93680e576`  
		Last Modified: Tue, 04 Aug 2026 20:45:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.6` - unknown; unknown

```console
$ docker pull nim@sha256:b7ad2874098db73c436956dae825b0f70dc97a98529e75f1fcd77c33cfc4e467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 KB (12939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9f5518f81f79d72c1db69b68d96c931c628acafd211b654216767151d4248b`

```dockerfile
```

-	Layers:
	-	`sha256:f07f3e3e67b72f562264e0a73f366290c69f73cde5a29d7f9462a49307508caf`  
		Last Modified: Tue, 04 Aug 2026 20:45:19 GMT  
		Size: 12.9 KB (12939 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.8`

```console
$ docker pull nim@sha256:5fa6c2a68d534a0c7177e822cff912fe7e46a044c02921de295daef87d1b8bfd
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
$ docker pull nim@sha256:a773f16c6a4783507ff0404da3ec321b7688c37f408812d227de1eb0f8b3bfe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177248385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75305724efa248156f4295a88dc2018b0de377727c8b56d2ab9c3f8291e6512`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:45:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:45:33 GMT
ENV NIM_VERSION=2.2.8
# Tue, 04 Aug 2026 20:45:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:45:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:36 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:36 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e67d8d7013a6f3b30945404cdc9f6f1fee62eba3db863796eb8aa1e9f2a9d40`  
		Last Modified: Tue, 04 Aug 2026 20:45:55 GMT  
		Size: 119.7 MB (119719657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1028ad190d7d8747de6dfd2a496f29af68aecee9ce8ce4f16766e7ef3f0107c`  
		Last Modified: Tue, 04 Aug 2026 20:45:53 GMT  
		Size: 29.3 MB (29295921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971b1837942f3549385e94690e07ea39709d9c4b814add0da0c54a7be8f9167d`  
		Last Modified: Tue, 04 Aug 2026 20:45:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:f3df639339919cab85e9bf5dca7401e70e9a221caffc25eaf36066a7ccb20921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4caf7d5de1f68632e1f5739df2d0dcb73c71ba421d2f55e184d1ef0a45b242d7`

```dockerfile
```

-	Layers:
	-	`sha256:8f91662629c5644c5188ff2ff45b6f7652853f1551986c5b3256d35683eb99f9`  
		Last Modified: Tue, 04 Aug 2026 20:45:52 GMT  
		Size: 13.6 KB (13570 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; arm variant v7

```console
$ docker pull nim@sha256:5d03935943b0b11717327d1a503e39c39b7e689af62ca7876d04eb775519331f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142740140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a2912299a488eb374dd9af22a4240d669d5a7520b3fd6464e7fdd1b59f858b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:25:02 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:25:02 GMT
ENV NIM_VERSION=2.2.8
# Wed, 05 Aug 2026 00:25:02 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:02 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:25:02 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:25:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:25:04 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:25:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01023b6163f6b134d174b7598795a7b7357fcf6e2076d27827631f78015c8bfb`  
		Last Modified: Wed, 05 Aug 2026 00:25:19 GMT  
		Size: 89.2 MB (89159113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360886854cb635ce63905eba3bb8e8b0377df5506787c74b9a448661b912cd16`  
		Last Modified: Wed, 05 Aug 2026 00:25:17 GMT  
		Size: 29.6 MB (29641115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e496ea35004c823b8f23c8cdc3b16f989cb4e4b883721284894a50a22e10bfe`  
		Last Modified: Wed, 05 Aug 2026 00:25:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:5548344ead2c0e1e48672bc192ea769f05daf37e523f455c9860191afdda4f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9a67ba78e74e4f198a51ecb267f4aa2a22d19de82a69b0b81fb68491d48619`

```dockerfile
```

-	Layers:
	-	`sha256:760f1024d23e3ab21975755c79cf73914c47a7de3df2c2ac5cd99eb94a3ea1fb`  
		Last Modified: Wed, 05 Aug 2026 00:25:16 GMT  
		Size: 13.6 KB (13635 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:a933a182f94178362d3ddf8e3f5ff45eac11381a8ba0f62723431376e60d06a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170522970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669162fd4611e3881085cfaafc0755588c37b2b2a3d7516662b7bb55bcf08cf4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:41 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:41 GMT
ENV NIM_VERSION=2.2.8
# Tue, 04 Aug 2026 20:44:41 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:41 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:41 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:43 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6fd7f73c7271ef607bbdb0e700e131164866e83bc634ade0ab94be663eb4b6`  
		Last Modified: Tue, 04 Aug 2026 20:45:00 GMT  
		Size: 113.8 MB (113797038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a4554f8a385cea835883867af1aad966eaab04c9918a7155af0ea44a50401b`  
		Last Modified: Tue, 04 Aug 2026 20:44:58 GMT  
		Size: 28.6 MB (28608512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45625c5c7d8c3658364437f5a998e579efae933b8755630b9e14a19239817a6`  
		Last Modified: Tue, 04 Aug 2026 20:44:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:7cb7093b7a676e27481d3fdb21af96ff6d52204207c5eb161cc8a5ea2d4de7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 KB (13653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982d5f24c300701283fb48202750248cc685ec619fa2621843d976efe573158d`

```dockerfile
```

-	Layers:
	-	`sha256:0f09e4c4056b45f825f612080e03f119e2b896d5af1be123f180ee77e6dcd2f6`  
		Last Modified: Tue, 04 Aug 2026 20:44:57 GMT  
		Size: 13.7 KB (13653 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.8` - linux; 386

```console
$ docker pull nim@sha256:272d255108f454ad4b050cab93ab6154fcbd2d5309b852c879d6eedf143d7a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178789725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd954be2154e547510a01098fb8124db6f708503d78a943aa3304f9c3e5d419`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:51 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:51 GMT
ENV NIM_VERSION=2.2.8
# Tue, 04 Aug 2026 20:44:51 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:51 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x64.tar.xz'; sha256='eed763d0f8ed849781198fe18730638eb520e5ada81d8bc916f8d3c1b256dd6e' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_arm64.tar.xz'; sha256='19d8f79b054d40f41bb125ee5dd7867b446e7ea386d96a703d835159e3237301' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_x32.tar.xz'; sha256='daffda91d4c6c15ba441f4715262617016c7187cda215bdf6e36ece944f9071a' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-02-23-version-2-2-4f500679b196fad944caa50a753f5bbfaefda001/nim-2.2.8-linux_armv7l.tar.xz'; sha256='56b5102261cdc9485e374effc0b8e0f4600915bdb349f30380c06fe8281f57fe' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.8";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:54 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f9615b455415ef5710636bdc4af1a04e597d2310b1f6ba2a7f43a69b4ab8e3`  
		Last Modified: Tue, 04 Aug 2026 20:45:13 GMT  
		Size: 118.7 MB (118715081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7efdb92195b34c73324179b8667fa9146ddcf3ea5d10809a2dfa8aac382788`  
		Last Modified: Tue, 04 Aug 2026 20:45:11 GMT  
		Size: 30.9 MB (30853427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9450dbea22a428984410ac6bd31efdaad53d4c0c23ca6a4e37e578bb9f36d736`  
		Last Modified: Tue, 04 Aug 2026 20:45:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.8` - unknown; unknown

```console
$ docker pull nim@sha256:3bfbb232e9316a1d42d37ecb650b538527423826bbda7ab64e3a6fbdf967774e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 KB (13551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9ea1b3ccb07a71d31eb15f7f107976fde507dc69c319a2d6c6782cdbf47620`

```dockerfile
```

-	Layers:
	-	`sha256:e3dc6001b7ecd223a5bfa6c5db9dfd492d250534be03ef1a56db35dadc8aa78e`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 13.6 KB (13551 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:e57d2f41e300c04f699653c36546a13713be9ecb7b6462775c278c1ef796ae4a
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
$ docker pull nim@sha256:efe8a97b5420f309e77c0d02c8c8c31704a2d53adc48c85f8493f399f98c8899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178141501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c1b5556260242e9cf67d7aaa193885e41e0a08ff5b6fc384bb1ebd2d1f83c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:59 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:59 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:45:01 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:45:01 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:45:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4735558771e534b4302be210494adaf8ea4b019c49e6cd41edebfb8a167a2`  
		Last Modified: Tue, 04 Aug 2026 20:45:18 GMT  
		Size: 119.7 MB (119719099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc36fbdd37230994f2569f3fdb30d6b12949adbcfc7ade51519e7b7e521e89`  
		Last Modified: Tue, 04 Aug 2026 20:45:16 GMT  
		Size: 30.2 MB (30189594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807db6dfb2bd20fd7093ccc235a9d297390978d04a85705b79881fae504d5f0`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:f03ea86395eb490fe93a8fac712cf7874b491f8b47d75ce531ac9df401573906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b498f2bc52ab40a8b2659181321c6878381880ce0f2f7897e0042ad06a6df3`

```dockerfile
```

-	Layers:
	-	`sha256:8c49dab6c97c04ecfd63ab658004fbb2b4ffce18d4dec60cf8c218b6cc9fc082`  
		Last Modified: Tue, 04 Aug 2026 20:45:15 GMT  
		Size: 14.4 KB (14447 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm variant v7

```console
$ docker pull nim@sha256:ecc4cf5c885c73e6541106765c413166144e97255e18f4e6e268d807e9cf5614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143676697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b24079617754c8277210a99a0b4d34ff0d69cfbc9068a421a4b1deb471a7e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:23:36 GMT
ENV NIM_VERSION=2.2.10
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:23:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 00:23:38 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 05 Aug 2026 00:23:38 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:23:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3863efb2cceacb40e4340c56439a9fb3abc7f51444578302b6d7ab1ddc66fe3`  
		Last Modified: Wed, 05 Aug 2026 00:23:51 GMT  
		Size: 89.2 MB (89159131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b317b97b6147534e749bd9e63de7b649b8911ea2bc300b4d7989c044c5f3281`  
		Last Modified: Wed, 05 Aug 2026 00:23:50 GMT  
		Size: 30.6 MB (30577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453330cf47ff34ce5506863eb5a8af11ddbfcdb03875bf113be7f1719c181c88`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:80ced51afc2407572ac40c07c9a95568e9e40c47e000c7d357aa4534f5c63910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5273fc485e118392fa25dcc51a166d9d84c945af43a880f6fa3d2ca1efc99f`

```dockerfile
```

-	Layers:
	-	`sha256:f3f7666136cd6baecc80eb5c862f466c4819b3d291bbcdee4a5f4113ade3614b`  
		Last Modified: Wed, 05 Aug 2026 00:23:49 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:c27862828f0ffafdd824a3d46e14fbbdb9f86f77188eb283bc0b9f01a518a162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171406360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f001bfb55ec97b536656998b1e2c56fa00324a6e1376fa933798697faad1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:33 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:34 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a6edfe05dc402fad0aebf97804ef6b3ae299021fdf1873467453d0aa86bf8b`  
		Last Modified: Tue, 04 Aug 2026 20:44:53 GMT  
		Size: 113.8 MB (113797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e7e7d0f5ec6733a3b407ad6bf94cc0735929c207fdd06c2f9c6a3d97a1d17f`  
		Last Modified: Tue, 04 Aug 2026 20:44:51 GMT  
		Size: 29.5 MB (29491862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d791a0ea99c5a55b29851c3ac69082e5418c49b0a89243e4bf7e60b67462deb5`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:295f3733d2ac00260d49a96f70d156a55096ebec71eba9847db6686326a1c236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279d8cffb47f7203913b3c8ea591af76aaa7ac061709207410d718446ef7ab97`

```dockerfile
```

-	Layers:
	-	`sha256:f4b06b0675242b0522e249a4ceeacfbcd4c8db492fa825d1701a036fe4fb2b62`  
		Last Modified: Tue, 04 Aug 2026 20:44:50 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:3085fa892a34a22e155be67d312f1e84e65c5c3b4bbff948bc439d19b9ca92f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179737013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf3dca5da8c7830d269140421934ae28c050d5d024aa19595e4e20379b909ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 20:44:48 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:44:48 GMT
ENV NIM_VERSION=2.2.10
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:44:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 20:44:50 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x32.tar.xz'; sha256='7e018e66e570943c8e079e5cf78898444fc627bc0d47b7a5c17dc97cbc12083e' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_armv7l.tar.xz'; sha256='f8b9ef0adc31b848dc8b57953afd1c8e8223a7f47069caf346363ae73f2b8627' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.10";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 04 Aug 2026 20:44:51 GMT
WORKDIR /usr/src/app
# Tue, 04 Aug 2026 20:44:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3779bf8c3c5171379c55d3dcbc69627fa41d08e85859ddebcabafd5f621bee`  
		Last Modified: Tue, 04 Aug 2026 20:45:10 GMT  
		Size: 118.7 MB (118715123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f785b5bb135d1da02f8154c7aa458d8b3b6d5f30e18f62bf4691040d4bb8c7c1`  
		Last Modified: Tue, 04 Aug 2026 20:45:08 GMT  
		Size: 31.8 MB (31800672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677a04a1d1e06e411211d477fbd9ec0fadbb21c5a62515f1712b69c8ca64290f`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:6507204e4285d6d7144893adb26d6f82a1ba641fb79b31f0c3e73163858371f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10285ed0b656514e586c4a6c1dfed4a3b9950fc183b53b4c9aeb2b0bae9054e1`

```dockerfile
```

-	Layers:
	-	`sha256:21cf8b53e50573fb165bba68b30cceccfc93693e5c5035e6eb951f05ab550605`  
		Last Modified: Tue, 04 Aug 2026 20:45:07 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json
