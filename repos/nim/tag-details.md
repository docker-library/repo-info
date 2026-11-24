<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nim`

-	[`nim:2`](#nim2)
-	[`nim:2.2`](#nim22)
-	[`nim:2.2.14`](#nim2214)
-	[`nim:2.4`](#nim24)
-	[`nim:2.4.0`](#nim240)
-	[`nim:latest`](#nimlatest)

## `nim:2`

```console
$ docker pull nim@sha256:a07a589deceb3abe0808988cb3c9321ca9c9e23e81e2c4907b67857af27bfac7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2` - linux; amd64

```console
$ docker pull nim@sha256:5be4ead1bd5566c4a8109a1e799c25165b9b1f450e1892b7a0247cd019b8abe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192726532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9165ffc6064dd6e971f6bd50d897d9df85bc52081c03081ddfcf48440f36355d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:17:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:54 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:17:58 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:17:58 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:17:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cc407bffa67c9bf4f37c7851814f6e5a6a091d85cca41f8c87a29b10ae5439`  
		Last Modified: Tue, 24 Nov 2026 04:18:16 GMT  
		Size: 119.6 MB (119557946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c2cdfda99a89a41080a269687114c7d79eee31d7be72d6ec74c6200101e54`  
		Last Modified: Tue, 24 Nov 2026 04:18:15 GMT  
		Size: 44.9 MB (44920463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5b419ce04775534f3e0783a9cb3b65cc80de64969429ed8faa18a6fcd38a0a`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:7b89d2578453ca28dac718cbc40bc593f709234b65ccfb49c0f76b50562e3422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547e9381544f6efef4426d663bbfdd44cea2963f7cfc183a131cb0911997fbb3`

```dockerfile
```

-	Layers:
	-	`sha256:22c7f7500189b16492b306fbe558d9d231ad6c79cd658703c84c5e2665479e07`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:23467cf0e880caa20d1894e6fab1334c5b685193cfad9f9cc67507a400e906d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196800691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca76dd9ddf0178ac566212fef372e99816b60553f0c71aac937a32a146d8db4d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:56 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:16:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:16:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:16:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc98e7fa1a8ea5c8d5ab88f13a955654c036123dc5eb60879768a13935d1f09f`  
		Last Modified: Tue, 24 Nov 2026 04:16:19 GMT  
		Size: 118.6 MB (118558820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2864cc1bd9aa0ecec6018d84b8df45057a75732cd9b898b77635ea3c981d1d2`  
		Last Modified: Tue, 24 Nov 2026 04:16:18 GMT  
		Size: 49.0 MB (49002498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ba627193313b8421abd6865155676c28e0f3232ff90534ea935fb092a6ab3`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:9efd816ad1c9a294ad4c2795af61f0ade058aa30703bdabd526063984084b1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0240124a805046e2e7c041d5692e6a24c72ee7c2810663ed8c4d2273bd4793`

```dockerfile
```

-	Layers:
	-	`sha256:8ab6596732f26e26a242a9d661812b1f4a84c6354b007b4925c186937af835da`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 13.2 KB (13171 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2`

```console
$ docker pull nim@sha256:16119a73cd72160258e3a20b2ec1626fba96b7ec2e06455d516529d6b5c6c53b
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
$ docker pull nim@sha256:482111ea5fdcf4c2fdaf02be1d5428e9b27f7176f687a60ebc9af6f88c0dd331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179659467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0331d4230cbfcdebe5bd1c35417a49e9b20e3991a3327f8f68ab512dd493a7b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:18:11 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:11 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:18:11 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:11 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:11 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:18:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:18:13 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:18:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2f7dee2f82ff849415f2eebbcfa5ce150f5ddf50b29be0d7a22e32b440a1a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:30 GMT  
		Size: 119.6 MB (119558388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9247be4bb6330ac70e71eb1c5a078751b52e9a49b1143fc5d34bec6601edd213`  
		Last Modified: Tue, 24 Nov 2026 04:18:28 GMT  
		Size: 31.9 MB (31852957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62e79026796fb16c01c48682cfd41ea6d746005fd52cdcb2968d51fb8eb7bd2`  
		Last Modified: Tue, 24 Nov 2026 04:18:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:786506c86981df46aa640765f9373148c98f3cf6270223217fe1b0f61d19602d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9294c9cf576b01428c0284b383553c04091eaeb6ea4e8d042377b9599d986d`

```dockerfile
```

-	Layers:
	-	`sha256:e1d32f66d8c648a8dcd7a2af8d1669ae890bce1d69591313f2d3ff7c10c9a8d1`  
		Last Modified: Tue, 24 Nov 2026 04:18:27 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:daa50c0f8c49c2d290fb02a3ce55672f57d5f5d8f4bd045616bb6ef31cb5298a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145384691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226d164dd5fad8d18b6cf479c63c98812f823f7552150241ec9cb03c057a17ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:22:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:22:32 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:22:32 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:22:32 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:22:32 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:22:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:22:35 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:22:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf8455d6f6d4d81003022b7c6b106b3b2f7c27c33b4014a83479a8443e873fc`  
		Last Modified: Tue, 24 Nov 2026 04:22:50 GMT  
		Size: 89.0 MB (89010474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c292b687306afccedaf395b32fe77883a6ce126c5c8ec65015ced1d8c93a7d25`  
		Last Modified: Tue, 24 Nov 2026 04:22:48 GMT  
		Size: 32.4 MB (32412723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504ed9f687739c019438984caf6f0aab91db204fe3ac0299dac11c6f17819d00`  
		Last Modified: Tue, 24 Nov 2026 04:22:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:89c6467345d24d34ebe5a087db9817efa26c5887324c1786a2aa54b7138baf4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9193edeae1f85ae2e408adcf65c123b39b1ab1920e77fd05ea688a71344f7d4`

```dockerfile
```

-	Layers:
	-	`sha256:aee708ff4522aead88fb042fca214b5942f8da01b1fec03d664bbc56b4f8e1f2`  
		Last Modified: Tue, 24 Nov 2026 04:22:47 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:795f9e9695bdeadd5a7f8e0c63c28e80605e52d8947e230ca2e4351fa84d5564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172992993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b637267da6ea4c6afb0fd093dfdc729bb785a75a340461acef8e8e35d81d4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:18:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:35 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:18:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:35 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:18:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:18:37 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:18:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4eb6f22e67652623fc8bd85031b6e0cd753243aa84cf8def89d562469113550`  
		Last Modified: Tue, 24 Nov 2026 04:18:55 GMT  
		Size: 113.6 MB (113638039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d64935b1037c1eb7a8f662a66ec469a10a1b62cca25d798e33be2bdc5e906e6`  
		Last Modified: Tue, 24 Nov 2026 04:18:53 GMT  
		Size: 31.2 MB (31210486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2562e365edc1e3628aebb206db4f49feae4482d19b2bfafd74bf0cb18b6cb36a`  
		Last Modified: Tue, 24 Nov 2026 04:18:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:7119489388a7b1c9013c624d41d382f2a3593afd4026d423ffdf966605b4e4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0bb42e1779637dff68ebf2d84f28fc1bcc0d4ddae92b16ef2e046fc7f280b17`

```dockerfile
```

-	Layers:
	-	`sha256:983edc8d2010a4c316f728de65271b20d9d731d08396f4ae4f79cc4de5be6d8c`  
		Last Modified: Tue, 24 Nov 2026 04:18:51 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:2e2499db8067080e29f7238f127d6a5a5570006ea200dce9f7d1df46c990fc3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181392996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16746674788e4b48d974ab031c8e75e4155b01e9076520dca9e3054b0d4a63be`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:56 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:16:02 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:16:02 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:16:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7f2e60169653a7d45e540ee7359d5b95428499b1334412709895f3c44735a`  
		Last Modified: Tue, 24 Nov 2026 04:16:19 GMT  
		Size: 118.6 MB (118558820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9a82b40ec6fde96e7e2783bd7df6278d619a0b85f600f76b2cc98149128224`  
		Last Modified: Tue, 24 Nov 2026 04:16:17 GMT  
		Size: 33.6 MB (33594801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5a57932a51515d1b2b96607e20f65e656a1b872d331ca86f3d026f059fe398`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:3c67ea51d078cb1f05f9d6d684c74a9bda5eed8ecaa0b63bc54822b07dcd98bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a6f3a14cd94f381879d509045689a20179a0b603125c4297755438437de355`

```dockerfile
```

-	Layers:
	-	`sha256:0fcd8cc9f2eaf16b33c72866aaba80a243004b0856befbcdf8ba7786b1951234`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.14`

```console
$ docker pull nim@sha256:16119a73cd72160258e3a20b2ec1626fba96b7ec2e06455d516529d6b5c6c53b
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

### `nim:2.2.14` - linux; amd64

```console
$ docker pull nim@sha256:482111ea5fdcf4c2fdaf02be1d5428e9b27f7176f687a60ebc9af6f88c0dd331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179659467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0331d4230cbfcdebe5bd1c35417a49e9b20e3991a3327f8f68ab512dd493a7b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:18:11 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:11 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:18:11 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:11 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:11 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:18:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:18:13 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:18:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2f7dee2f82ff849415f2eebbcfa5ce150f5ddf50b29be0d7a22e32b440a1a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:30 GMT  
		Size: 119.6 MB (119558388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9247be4bb6330ac70e71eb1c5a078751b52e9a49b1143fc5d34bec6601edd213`  
		Last Modified: Tue, 24 Nov 2026 04:18:28 GMT  
		Size: 31.9 MB (31852957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62e79026796fb16c01c48682cfd41ea6d746005fd52cdcb2968d51fb8eb7bd2`  
		Last Modified: Tue, 24 Nov 2026 04:18:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:786506c86981df46aa640765f9373148c98f3cf6270223217fe1b0f61d19602d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9294c9cf576b01428c0284b383553c04091eaeb6ea4e8d042377b9599d986d`

```dockerfile
```

-	Layers:
	-	`sha256:e1d32f66d8c648a8dcd7a2af8d1669ae890bce1d69591313f2d3ff7c10c9a8d1`  
		Last Modified: Tue, 24 Nov 2026 04:18:27 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:daa50c0f8c49c2d290fb02a3ce55672f57d5f5d8f4bd045616bb6ef31cb5298a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145384691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226d164dd5fad8d18b6cf479c63c98812f823f7552150241ec9cb03c057a17ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:22:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:22:32 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:22:32 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:22:32 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:22:32 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:22:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:22:35 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:22:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf8455d6f6d4d81003022b7c6b106b3b2f7c27c33b4014a83479a8443e873fc`  
		Last Modified: Tue, 24 Nov 2026 04:22:50 GMT  
		Size: 89.0 MB (89010474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c292b687306afccedaf395b32fe77883a6ce126c5c8ec65015ced1d8c93a7d25`  
		Last Modified: Tue, 24 Nov 2026 04:22:48 GMT  
		Size: 32.4 MB (32412723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504ed9f687739c019438984caf6f0aab91db204fe3ac0299dac11c6f17819d00`  
		Last Modified: Tue, 24 Nov 2026 04:22:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:89c6467345d24d34ebe5a087db9817efa26c5887324c1786a2aa54b7138baf4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9193edeae1f85ae2e408adcf65c123b39b1ab1920e77fd05ea688a71344f7d4`

```dockerfile
```

-	Layers:
	-	`sha256:aee708ff4522aead88fb042fca214b5942f8da01b1fec03d664bbc56b4f8e1f2`  
		Last Modified: Tue, 24 Nov 2026 04:22:47 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:795f9e9695bdeadd5a7f8e0c63c28e80605e52d8947e230ca2e4351fa84d5564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172992993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b637267da6ea4c6afb0fd093dfdc729bb785a75a340461acef8e8e35d81d4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:18:35 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:35 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:18:35 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:35 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:18:35 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:18:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:18:37 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:18:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4eb6f22e67652623fc8bd85031b6e0cd753243aa84cf8def89d562469113550`  
		Last Modified: Tue, 24 Nov 2026 04:18:55 GMT  
		Size: 113.6 MB (113638039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d64935b1037c1eb7a8f662a66ec469a10a1b62cca25d798e33be2bdc5e906e6`  
		Last Modified: Tue, 24 Nov 2026 04:18:53 GMT  
		Size: 31.2 MB (31210486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2562e365edc1e3628aebb206db4f49feae4482d19b2bfafd74bf0cb18b6cb36a`  
		Last Modified: Tue, 24 Nov 2026 04:18:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:7119489388a7b1c9013c624d41d382f2a3593afd4026d423ffdf966605b4e4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0bb42e1779637dff68ebf2d84f28fc1bcc0d4ddae92b16ef2e046fc7f280b17`

```dockerfile
```

-	Layers:
	-	`sha256:983edc8d2010a4c316f728de65271b20d9d731d08396f4ae4f79cc4de5be6d8c`  
		Last Modified: Tue, 24 Nov 2026 04:18:51 GMT  
		Size: 14.0 KB (13969 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.14` - linux; 386

```console
$ docker pull nim@sha256:2e2499db8067080e29f7238f127d6a5a5570006ea200dce9f7d1df46c990fc3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181392996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16746674788e4b48d974ab031c8e75e4155b01e9076520dca9e3054b0d4a63be`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:56 GMT
ENV NIM_VERSION=2.2.14
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:16:02 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:16:02 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:16:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7f2e60169653a7d45e540ee7359d5b95428499b1334412709895f3c44735a`  
		Last Modified: Tue, 24 Nov 2026 04:16:19 GMT  
		Size: 118.6 MB (118558820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9a82b40ec6fde96e7e2783bd7df6278d619a0b85f600f76b2cc98149128224`  
		Last Modified: Tue, 24 Nov 2026 04:16:17 GMT  
		Size: 33.6 MB (33594801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5a57932a51515d1b2b96607e20f65e656a1b872d331ca86f3d026f059fe398`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:3c67ea51d078cb1f05f9d6d684c74a9bda5eed8ecaa0b63bc54822b07dcd98bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a6f3a14cd94f381879d509045689a20179a0b603125c4297755438437de355`

```dockerfile
```

-	Layers:
	-	`sha256:0fcd8cc9f2eaf16b33c72866aaba80a243004b0856befbcdf8ba7786b1951234`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 13.8 KB (13850 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.4`

```console
$ docker pull nim@sha256:a07a589deceb3abe0808988cb3c9321ca9c9e23e81e2c4907b67857af27bfac7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.4` - linux; amd64

```console
$ docker pull nim@sha256:5be4ead1bd5566c4a8109a1e799c25165b9b1f450e1892b7a0247cd019b8abe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192726532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9165ffc6064dd6e971f6bd50d897d9df85bc52081c03081ddfcf48440f36355d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:17:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:54 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:17:58 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:17:58 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:17:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cc407bffa67c9bf4f37c7851814f6e5a6a091d85cca41f8c87a29b10ae5439`  
		Last Modified: Tue, 24 Nov 2026 04:18:16 GMT  
		Size: 119.6 MB (119557946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c2cdfda99a89a41080a269687114c7d79eee31d7be72d6ec74c6200101e54`  
		Last Modified: Tue, 24 Nov 2026 04:18:15 GMT  
		Size: 44.9 MB (44920463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5b419ce04775534f3e0783a9cb3b65cc80de64969429ed8faa18a6fcd38a0a`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.4` - unknown; unknown

```console
$ docker pull nim@sha256:7b89d2578453ca28dac718cbc40bc593f709234b65ccfb49c0f76b50562e3422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547e9381544f6efef4426d663bbfdd44cea2963f7cfc183a131cb0911997fbb3`

```dockerfile
```

-	Layers:
	-	`sha256:22c7f7500189b16492b306fbe558d9d231ad6c79cd658703c84c5e2665479e07`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.4` - linux; 386

```console
$ docker pull nim@sha256:23467cf0e880caa20d1894e6fab1334c5b685193cfad9f9cc67507a400e906d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196800691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca76dd9ddf0178ac566212fef372e99816b60553f0c71aac937a32a146d8db4d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:56 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:16:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:16:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:16:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc98e7fa1a8ea5c8d5ab88f13a955654c036123dc5eb60879768a13935d1f09f`  
		Last Modified: Tue, 24 Nov 2026 04:16:19 GMT  
		Size: 118.6 MB (118558820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2864cc1bd9aa0ecec6018d84b8df45057a75732cd9b898b77635ea3c981d1d2`  
		Last Modified: Tue, 24 Nov 2026 04:16:18 GMT  
		Size: 49.0 MB (49002498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ba627193313b8421abd6865155676c28e0f3232ff90534ea935fb092a6ab3`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.4` - unknown; unknown

```console
$ docker pull nim@sha256:9efd816ad1c9a294ad4c2795af61f0ade058aa30703bdabd526063984084b1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0240124a805046e2e7c041d5692e6a24c72ee7c2810663ed8c4d2273bd4793`

```dockerfile
```

-	Layers:
	-	`sha256:8ab6596732f26e26a242a9d661812b1f4a84c6354b007b4925c186937af835da`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 13.2 KB (13171 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.4.0`

```console
$ docker pull nim@sha256:a07a589deceb3abe0808988cb3c9321ca9c9e23e81e2c4907b67857af27bfac7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.4.0` - linux; amd64

```console
$ docker pull nim@sha256:5be4ead1bd5566c4a8109a1e799c25165b9b1f450e1892b7a0247cd019b8abe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192726532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9165ffc6064dd6e971f6bd50d897d9df85bc52081c03081ddfcf48440f36355d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:17:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:54 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:17:58 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:17:58 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:17:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cc407bffa67c9bf4f37c7851814f6e5a6a091d85cca41f8c87a29b10ae5439`  
		Last Modified: Tue, 24 Nov 2026 04:18:16 GMT  
		Size: 119.6 MB (119557946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c2cdfda99a89a41080a269687114c7d79eee31d7be72d6ec74c6200101e54`  
		Last Modified: Tue, 24 Nov 2026 04:18:15 GMT  
		Size: 44.9 MB (44920463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5b419ce04775534f3e0783a9cb3b65cc80de64969429ed8faa18a6fcd38a0a`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.4.0` - unknown; unknown

```console
$ docker pull nim@sha256:7b89d2578453ca28dac718cbc40bc593f709234b65ccfb49c0f76b50562e3422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547e9381544f6efef4426d663bbfdd44cea2963f7cfc183a131cb0911997fbb3`

```dockerfile
```

-	Layers:
	-	`sha256:22c7f7500189b16492b306fbe558d9d231ad6c79cd658703c84c5e2665479e07`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.4.0` - linux; 386

```console
$ docker pull nim@sha256:23467cf0e880caa20d1894e6fab1334c5b685193cfad9f9cc67507a400e906d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196800691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca76dd9ddf0178ac566212fef372e99816b60553f0c71aac937a32a146d8db4d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:56 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:16:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:16:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:16:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc98e7fa1a8ea5c8d5ab88f13a955654c036123dc5eb60879768a13935d1f09f`  
		Last Modified: Tue, 24 Nov 2026 04:16:19 GMT  
		Size: 118.6 MB (118558820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2864cc1bd9aa0ecec6018d84b8df45057a75732cd9b898b77635ea3c981d1d2`  
		Last Modified: Tue, 24 Nov 2026 04:16:18 GMT  
		Size: 49.0 MB (49002498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ba627193313b8421abd6865155676c28e0f3232ff90534ea935fb092a6ab3`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.4.0` - unknown; unknown

```console
$ docker pull nim@sha256:9efd816ad1c9a294ad4c2795af61f0ade058aa30703bdabd526063984084b1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0240124a805046e2e7c041d5692e6a24c72ee7c2810663ed8c4d2273bd4793`

```dockerfile
```

-	Layers:
	-	`sha256:8ab6596732f26e26a242a9d661812b1f4a84c6354b007b4925c186937af835da`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 13.2 KB (13171 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:a07a589deceb3abe0808988cb3c9321ca9c9e23e81e2c4907b67857af27bfac7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:latest` - linux; amd64

```console
$ docker pull nim@sha256:5be4ead1bd5566c4a8109a1e799c25165b9b1f450e1892b7a0247cd019b8abe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192726532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9165ffc6064dd6e971f6bd50d897d9df85bc52081c03081ddfcf48440f36355d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:17:54 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:54 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:54 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:17:58 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:17:58 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:17:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cc407bffa67c9bf4f37c7851814f6e5a6a091d85cca41f8c87a29b10ae5439`  
		Last Modified: Tue, 24 Nov 2026 04:18:16 GMT  
		Size: 119.6 MB (119557946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992c2cdfda99a89a41080a269687114c7d79eee31d7be72d6ec74c6200101e54`  
		Last Modified: Tue, 24 Nov 2026 04:18:15 GMT  
		Size: 44.9 MB (44920463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5b419ce04775534f3e0783a9cb3b65cc80de64969429ed8faa18a6fcd38a0a`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:7b89d2578453ca28dac718cbc40bc593f709234b65ccfb49c0f76b50562e3422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547e9381544f6efef4426d663bbfdd44cea2963f7cfc183a131cb0911997fbb3`

```dockerfile
```

-	Layers:
	-	`sha256:22c7f7500189b16492b306fbe558d9d231ad6c79cd658703c84c5e2665479e07`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:23467cf0e880caa20d1894e6fab1334c5b685193cfad9f9cc67507a400e906d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196800691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca76dd9ddf0178ac566212fef372e99816b60553f0c71aac937a32a146d8db4d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:56 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:56 GMT
ENV NIM_VERSION=2.4.0
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 04:16:00 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Tue, 24 Nov 2026 04:16:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:16:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc98e7fa1a8ea5c8d5ab88f13a955654c036123dc5eb60879768a13935d1f09f`  
		Last Modified: Tue, 24 Nov 2026 04:16:19 GMT  
		Size: 118.6 MB (118558820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2864cc1bd9aa0ecec6018d84b8df45057a75732cd9b898b77635ea3c981d1d2`  
		Last Modified: Tue, 24 Nov 2026 04:16:18 GMT  
		Size: 49.0 MB (49002498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ba627193313b8421abd6865155676c28e0f3232ff90534ea935fb092a6ab3`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:9efd816ad1c9a294ad4c2795af61f0ade058aa30703bdabd526063984084b1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0240124a805046e2e7c041d5692e6a24c72ee7c2810663ed8c4d2273bd4793`

```dockerfile
```

-	Layers:
	-	`sha256:8ab6596732f26e26a242a9d661812b1f4a84c6354b007b4925c186937af835da`  
		Last Modified: Tue, 24 Nov 2026 04:16:16 GMT  
		Size: 13.2 KB (13171 bytes)  
		MIME: application/vnd.in-toto+json
