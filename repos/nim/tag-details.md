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
$ docker pull nim@sha256:f4893b331defe491db812bceef3d994cf5b165153919a1e5f55fd54ded2d43b1
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
$ docker pull nim@sha256:069077b161b5ab21b0a7129e6ff10b1b76ea88c6f0f35265e9e44ed0c1133b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179070819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f993a13fe87eb720da4c503141217c483c098285fe9d38f82dbf521647c5994c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:33 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:35 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2f9639610b0e270346aaaf780ba46762f0c0c8650df7c01b75bb0842c3a2ae`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 119.7 MB (119733964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11246e4dfecf230ec17b38a8666ca2529d99f68bd4c77ac73d4ded0d29a4012`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 31.1 MB (31104036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5354a4fa4cefe0e4e81367cab795ed56d9bd53bc6af9e4fb5571c0bf5aa592ea`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:ae4aa416f02b7b3c924abac077dea923e5b5bd6b2e35bee2cfcac83c2a290251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b855b70456869b0049fda054e1c0a39017005bf7f3033e4ccf8d77037faf612`

```dockerfile
```

-	Layers:
	-	`sha256:c4daaff9a2a8a1f83d703927c6b54ece088cf7c576ad2be33fe0c19eb584e0c8`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm variant v7

```console
$ docker pull nim@sha256:70182dd1a252c3227208aee5d2146c50a764ad35e4ee0b9fe965424e503af8a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144706027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97335cc80186a9c964072f945f7b026a49598b08affb9d9e3c6ab535aa96d649`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:21:00 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:21:01 GMT
ENV NIM_VERSION=2.2.12
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 00:21:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Sat, 19 Sep 2026 00:21:03 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 00:21:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19338db8d291539ee13b8a4995056e69f9defadcd224ff59676dd7cf15d31d43`  
		Last Modified: Sat, 19 Sep 2026 00:21:17 GMT  
		Size: 89.2 MB (89202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baad0a1f573ef28d39ec51c19a4d1a75aa7daf6a909e79d7d28c10feba136f6`  
		Last Modified: Sat, 19 Sep 2026 00:21:16 GMT  
		Size: 31.6 MB (31560051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6005e084b0ec2a3a2208416126641c0acf761665e9e795d5796e2286ff24ee7e`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:1ac09bfec3fee4d1a4d050bf2d7403a6021fc5a3ceb8c2cf1bc2a9b9100f9173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b0b9423d8b929316ca7c39e4650a02720ea9fd468eeee1314ae5b456ee5054`

```dockerfile
```

-	Layers:
	-	`sha256:c3da340d337116e4d448f525f31aa6bec59c0afffa92631f215447573c4254d7`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:490bf5754203126c670d8800ce30d4aaa6177550fbc6c249e1966b0443aa42e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172463751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df450085c6a7c7fc0facf4854894043de20898362649d921218824eb3ad6a16`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:12 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:14 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc1546f965929e31a1e99b19f39ac618717c3a94393d2dac82db621725971a8`  
		Last Modified: Wed, 09 Sep 2026 20:26:32 GMT  
		Size: 113.8 MB (113830905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3272afa199f4fc7521eb5b84e458ec5f172b234a35fedfd5571c6f6dceb24cd8`  
		Last Modified: Wed, 09 Sep 2026 20:26:30 GMT  
		Size: 30.5 MB (30515392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32220a5d4112b0070aa2efc8bb384c9ef9f9ec976dc71236ccb78a1bbfea232e`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:c6832a8ec780f268751255dfceeeaa4b3391ec901117c6029a94121cb1240ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94eed0d530cc91527e671d6125e4adea0438390c58690e8e7ce9a192d0abd0c`

```dockerfile
```

-	Layers:
	-	`sha256:c815e0bb6a8a032e72d64a1208474b2a0ab59c1b948ea0cf4c4c9b4aabf98246`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; 386

```console
$ docker pull nim@sha256:2ce38fba6dacafb9abd1a0ac4a5af35d5c34a3f4d5ae99193fa9b6c5c12aa6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180737301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9a1b1743c5165533d6fff6061dc1fae5454fe53ace341abd5c88f6d1e9cc5f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:34 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d8d10e59a9d1638f7417dd94db704c757dc408a166ad9fbd5bdee058e34043`  
		Last Modified: Wed, 09 Sep 2026 20:26:54 GMT  
		Size: 118.7 MB (118733150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea6d8d49895428b27a2aa039a4ac354d21fe81cdf09e346d3455da736387af`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 32.8 MB (32782935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0efdb01825c60ebeafa7629c4e22c0bb9a46896e77110fcb33b05a57f745a3`  
		Last Modified: Wed, 09 Sep 2026 20:26:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:29fef5aba38d80bc3df849bf458e99ea814ffb85003f2309b417960daeb4535a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f60976b94d6db812469af447b00212f570fc31cc8b8a7896c28522623b9943b`

```dockerfile
```

-	Layers:
	-	`sha256:35b12387fd364acf888b248cc3f3d14b8cbe4386b6783b244dabfabbf5b66f1a`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

```console
$ docker pull nim@sha256:32d0d52bc3303580705625535bd0550454f45f0b664b8e1729838907e2e2a6f5
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
$ docker pull nim@sha256:e6ec4cb20f3f58359b2a964b711750c080969e6f3baf28378a803ba86068097f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139380312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd2da36e7f5ad721feed1d666f4201219aeb98bbbaf9e3f266cdb46625a9c9c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:22:10 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:10 GMT
ENV NIM_VERSION=2.0.14
# Sat, 19 Sep 2026 00:22:10 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:22:10 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:22:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 00:22:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Sat, 19 Sep 2026 00:22:13 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 00:22:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a938372e6f39567450cee3e07b459dce3d7545ddf4fc5aee9c6f70c39dd281`  
		Last Modified: Sat, 19 Sep 2026 00:22:26 GMT  
		Size: 89.2 MB (89202885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8536a46a1c6dc719f10bdb3a7c1963d9cd825beb918b0dd6167984f7d0270324`  
		Last Modified: Sat, 19 Sep 2026 00:22:25 GMT  
		Size: 26.2 MB (26234148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092ad166648357bf9c8d5714f8149d0236d171751be134cae061e0b0f32477f4`  
		Last Modified: Sat, 19 Sep 2026 00:22:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0` - unknown; unknown

```console
$ docker pull nim@sha256:4c63569d171b92d54770b818fd53f0e6a6435ab7bcbd0af41185a09d55894631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6ab41545d8874412357e9ebff34987629656753fcbd7a2ae34cbdec29c262a`

```dockerfile
```

-	Layers:
	-	`sha256:5191ebe37b21ea3cf6322a6da74d3e76b3ea8c397782dfbfe5f5590eb04b3945`  
		Last Modified: Sat, 19 Sep 2026 00:22:23 GMT  
		Size: 13.9 KB (13946 bytes)  
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

## `nim:2.0.14`

```console
$ docker pull nim@sha256:32d0d52bc3303580705625535bd0550454f45f0b664b8e1729838907e2e2a6f5
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
$ docker pull nim@sha256:e6ec4cb20f3f58359b2a964b711750c080969e6f3baf28378a803ba86068097f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139380312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd2da36e7f5ad721feed1d666f4201219aeb98bbbaf9e3f266cdb46625a9c9c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:22:10 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:10 GMT
ENV NIM_VERSION=2.0.14
# Sat, 19 Sep 2026 00:22:10 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:22:10 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:22:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 00:22:13 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x64.tar.xz'; sha256='ae7ab1178565b8b56848ac714c3be0efa565f32684aca9bea6bd0aab11047ba3' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_arm64.tar.xz'; sha256='7f21018b88ac1afc1fd563dc4208e94fa2941ab8bbc873a234f87e19b95a461b' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_x32.tar.xz'; sha256='9e038c760d591f96337f62ca3abf3c739f23d7f9b91ebf6627e52ad5ffc0a4df' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2024-12-23-version-2-0-bf4de6a394e040d9810cba8c69fb2829ff04dcc6/nim-2.0.14-linux_armv7l.tar.xz'; sha256='c15439e201cd9ecb83a655c7c30b088ae06593de07717571bc77e1fc7b606f28' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.0.14";   rm nim.tar.xz;   nim --version # buildkit
# Sat, 19 Sep 2026 00:22:13 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 00:22:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a938372e6f39567450cee3e07b459dce3d7545ddf4fc5aee9c6f70c39dd281`  
		Last Modified: Sat, 19 Sep 2026 00:22:26 GMT  
		Size: 89.2 MB (89202885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8536a46a1c6dc719f10bdb3a7c1963d9cd825beb918b0dd6167984f7d0270324`  
		Last Modified: Sat, 19 Sep 2026 00:22:25 GMT  
		Size: 26.2 MB (26234148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092ad166648357bf9c8d5714f8149d0236d171751be134cae061e0b0f32477f4`  
		Last Modified: Sat, 19 Sep 2026 00:22:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.0.14` - unknown; unknown

```console
$ docker pull nim@sha256:4c63569d171b92d54770b818fd53f0e6a6435ab7bcbd0af41185a09d55894631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6ab41545d8874412357e9ebff34987629656753fcbd7a2ae34cbdec29c262a`

```dockerfile
```

-	Layers:
	-	`sha256:5191ebe37b21ea3cf6322a6da74d3e76b3ea8c397782dfbfe5f5590eb04b3945`  
		Last Modified: Sat, 19 Sep 2026 00:22:23 GMT  
		Size: 13.9 KB (13946 bytes)  
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

## `nim:2.2`

```console
$ docker pull nim@sha256:f4893b331defe491db812bceef3d994cf5b165153919a1e5f55fd54ded2d43b1
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
$ docker pull nim@sha256:069077b161b5ab21b0a7129e6ff10b1b76ea88c6f0f35265e9e44ed0c1133b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179070819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f993a13fe87eb720da4c503141217c483c098285fe9d38f82dbf521647c5994c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:33 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:35 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2f9639610b0e270346aaaf780ba46762f0c0c8650df7c01b75bb0842c3a2ae`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 119.7 MB (119733964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11246e4dfecf230ec17b38a8666ca2529d99f68bd4c77ac73d4ded0d29a4012`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 31.1 MB (31104036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5354a4fa4cefe0e4e81367cab795ed56d9bd53bc6af9e4fb5571c0bf5aa592ea`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:ae4aa416f02b7b3c924abac077dea923e5b5bd6b2e35bee2cfcac83c2a290251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b855b70456869b0049fda054e1c0a39017005bf7f3033e4ccf8d77037faf612`

```dockerfile
```

-	Layers:
	-	`sha256:c4daaff9a2a8a1f83d703927c6b54ece088cf7c576ad2be33fe0c19eb584e0c8`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:70182dd1a252c3227208aee5d2146c50a764ad35e4ee0b9fe965424e503af8a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144706027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97335cc80186a9c964072f945f7b026a49598b08affb9d9e3c6ab535aa96d649`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:21:00 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:21:01 GMT
ENV NIM_VERSION=2.2.12
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 00:21:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Sat, 19 Sep 2026 00:21:03 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 00:21:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19338db8d291539ee13b8a4995056e69f9defadcd224ff59676dd7cf15d31d43`  
		Last Modified: Sat, 19 Sep 2026 00:21:17 GMT  
		Size: 89.2 MB (89202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baad0a1f573ef28d39ec51c19a4d1a75aa7daf6a909e79d7d28c10feba136f6`  
		Last Modified: Sat, 19 Sep 2026 00:21:16 GMT  
		Size: 31.6 MB (31560051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6005e084b0ec2a3a2208416126641c0acf761665e9e795d5796e2286ff24ee7e`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:1ac09bfec3fee4d1a4d050bf2d7403a6021fc5a3ceb8c2cf1bc2a9b9100f9173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b0b9423d8b929316ca7c39e4650a02720ea9fd468eeee1314ae5b456ee5054`

```dockerfile
```

-	Layers:
	-	`sha256:c3da340d337116e4d448f525f31aa6bec59c0afffa92631f215447573c4254d7`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:490bf5754203126c670d8800ce30d4aaa6177550fbc6c249e1966b0443aa42e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172463751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df450085c6a7c7fc0facf4854894043de20898362649d921218824eb3ad6a16`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:12 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:14 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc1546f965929e31a1e99b19f39ac618717c3a94393d2dac82db621725971a8`  
		Last Modified: Wed, 09 Sep 2026 20:26:32 GMT  
		Size: 113.8 MB (113830905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3272afa199f4fc7521eb5b84e458ec5f172b234a35fedfd5571c6f6dceb24cd8`  
		Last Modified: Wed, 09 Sep 2026 20:26:30 GMT  
		Size: 30.5 MB (30515392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32220a5d4112b0070aa2efc8bb384c9ef9f9ec976dc71236ccb78a1bbfea232e`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:c6832a8ec780f268751255dfceeeaa4b3391ec901117c6029a94121cb1240ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94eed0d530cc91527e671d6125e4adea0438390c58690e8e7ce9a192d0abd0c`

```dockerfile
```

-	Layers:
	-	`sha256:c815e0bb6a8a032e72d64a1208474b2a0ab59c1b948ea0cf4c4c9b4aabf98246`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:2ce38fba6dacafb9abd1a0ac4a5af35d5c34a3f4d5ae99193fa9b6c5c12aa6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180737301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9a1b1743c5165533d6fff6061dc1fae5454fe53ace341abd5c88f6d1e9cc5f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:34 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d8d10e59a9d1638f7417dd94db704c757dc408a166ad9fbd5bdee058e34043`  
		Last Modified: Wed, 09 Sep 2026 20:26:54 GMT  
		Size: 118.7 MB (118733150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea6d8d49895428b27a2aa039a4ac354d21fe81cdf09e346d3455da736387af`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 32.8 MB (32782935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0efdb01825c60ebeafa7629c4e22c0bb9a46896e77110fcb33b05a57f745a3`  
		Last Modified: Wed, 09 Sep 2026 20:26:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:29fef5aba38d80bc3df849bf458e99ea814ffb85003f2309b417960daeb4535a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f60976b94d6db812469af447b00212f570fc31cc8b8a7896c28522623b9943b`

```dockerfile
```

-	Layers:
	-	`sha256:35b12387fd364acf888b248cc3f3d14b8cbe4386b6783b244dabfabbf5b66f1a`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.12`

```console
$ docker pull nim@sha256:f4893b331defe491db812bceef3d994cf5b165153919a1e5f55fd54ded2d43b1
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
$ docker pull nim@sha256:069077b161b5ab21b0a7129e6ff10b1b76ea88c6f0f35265e9e44ed0c1133b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179070819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f993a13fe87eb720da4c503141217c483c098285fe9d38f82dbf521647c5994c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:33 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:35 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2f9639610b0e270346aaaf780ba46762f0c0c8650df7c01b75bb0842c3a2ae`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 119.7 MB (119733964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11246e4dfecf230ec17b38a8666ca2529d99f68bd4c77ac73d4ded0d29a4012`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 31.1 MB (31104036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5354a4fa4cefe0e4e81367cab795ed56d9bd53bc6af9e4fb5571c0bf5aa592ea`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:ae4aa416f02b7b3c924abac077dea923e5b5bd6b2e35bee2cfcac83c2a290251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b855b70456869b0049fda054e1c0a39017005bf7f3033e4ccf8d77037faf612`

```dockerfile
```

-	Layers:
	-	`sha256:c4daaff9a2a8a1f83d703927c6b54ece088cf7c576ad2be33fe0c19eb584e0c8`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; arm variant v7

```console
$ docker pull nim@sha256:70182dd1a252c3227208aee5d2146c50a764ad35e4ee0b9fe965424e503af8a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144706027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97335cc80186a9c964072f945f7b026a49598b08affb9d9e3c6ab535aa96d649`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:21:00 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:21:01 GMT
ENV NIM_VERSION=2.2.12
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 00:21:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Sat, 19 Sep 2026 00:21:03 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 00:21:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19338db8d291539ee13b8a4995056e69f9defadcd224ff59676dd7cf15d31d43`  
		Last Modified: Sat, 19 Sep 2026 00:21:17 GMT  
		Size: 89.2 MB (89202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baad0a1f573ef28d39ec51c19a4d1a75aa7daf6a909e79d7d28c10feba136f6`  
		Last Modified: Sat, 19 Sep 2026 00:21:16 GMT  
		Size: 31.6 MB (31560051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6005e084b0ec2a3a2208416126641c0acf761665e9e795d5796e2286ff24ee7e`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:1ac09bfec3fee4d1a4d050bf2d7403a6021fc5a3ceb8c2cf1bc2a9b9100f9173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b0b9423d8b929316ca7c39e4650a02720ea9fd468eeee1314ae5b456ee5054`

```dockerfile
```

-	Layers:
	-	`sha256:c3da340d337116e4d448f525f31aa6bec59c0afffa92631f215447573c4254d7`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:490bf5754203126c670d8800ce30d4aaa6177550fbc6c249e1966b0443aa42e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172463751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df450085c6a7c7fc0facf4854894043de20898362649d921218824eb3ad6a16`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:12 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:14 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc1546f965929e31a1e99b19f39ac618717c3a94393d2dac82db621725971a8`  
		Last Modified: Wed, 09 Sep 2026 20:26:32 GMT  
		Size: 113.8 MB (113830905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3272afa199f4fc7521eb5b84e458ec5f172b234a35fedfd5571c6f6dceb24cd8`  
		Last Modified: Wed, 09 Sep 2026 20:26:30 GMT  
		Size: 30.5 MB (30515392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32220a5d4112b0070aa2efc8bb384c9ef9f9ec976dc71236ccb78a1bbfea232e`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:c6832a8ec780f268751255dfceeeaa4b3391ec901117c6029a94121cb1240ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94eed0d530cc91527e671d6125e4adea0438390c58690e8e7ce9a192d0abd0c`

```dockerfile
```

-	Layers:
	-	`sha256:c815e0bb6a8a032e72d64a1208474b2a0ab59c1b948ea0cf4c4c9b4aabf98246`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.12` - linux; 386

```console
$ docker pull nim@sha256:2ce38fba6dacafb9abd1a0ac4a5af35d5c34a3f4d5ae99193fa9b6c5c12aa6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180737301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9a1b1743c5165533d6fff6061dc1fae5454fe53ace341abd5c88f6d1e9cc5f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:34 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d8d10e59a9d1638f7417dd94db704c757dc408a166ad9fbd5bdee058e34043`  
		Last Modified: Wed, 09 Sep 2026 20:26:54 GMT  
		Size: 118.7 MB (118733150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea6d8d49895428b27a2aa039a4ac354d21fe81cdf09e346d3455da736387af`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 32.8 MB (32782935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0efdb01825c60ebeafa7629c4e22c0bb9a46896e77110fcb33b05a57f745a3`  
		Last Modified: Wed, 09 Sep 2026 20:26:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.12` - unknown; unknown

```console
$ docker pull nim@sha256:29fef5aba38d80bc3df849bf458e99ea814ffb85003f2309b417960daeb4535a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f60976b94d6db812469af447b00212f570fc31cc8b8a7896c28522623b9943b`

```dockerfile
```

-	Layers:
	-	`sha256:35b12387fd364acf888b248cc3f3d14b8cbe4386b6783b244dabfabbf5b66f1a`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:latest`

```console
$ docker pull nim@sha256:f4893b331defe491db812bceef3d994cf5b165153919a1e5f55fd54ded2d43b1
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
$ docker pull nim@sha256:069077b161b5ab21b0a7129e6ff10b1b76ea88c6f0f35265e9e44ed0c1133b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179070819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f993a13fe87eb720da4c503141217c483c098285fe9d38f82dbf521647c5994c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:33 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:33 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:33 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:35 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2f9639610b0e270346aaaf780ba46762f0c0c8650df7c01b75bb0842c3a2ae`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 119.7 MB (119733964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11246e4dfecf230ec17b38a8666ca2529d99f68bd4c77ac73d4ded0d29a4012`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 31.1 MB (31104036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5354a4fa4cefe0e4e81367cab795ed56d9bd53bc6af9e4fb5571c0bf5aa592ea`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:ae4aa416f02b7b3c924abac077dea923e5b5bd6b2e35bee2cfcac83c2a290251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b855b70456869b0049fda054e1c0a39017005bf7f3033e4ccf8d77037faf612`

```dockerfile
```

-	Layers:
	-	`sha256:c4daaff9a2a8a1f83d703927c6b54ece088cf7c576ad2be33fe0c19eb584e0c8`  
		Last Modified: Wed, 09 Sep 2026 20:26:49 GMT  
		Size: 14.4 KB (14448 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm variant v7

```console
$ docker pull nim@sha256:70182dd1a252c3227208aee5d2146c50a764ad35e4ee0b9fe965424e503af8a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144706027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97335cc80186a9c964072f945f7b026a49598b08affb9d9e3c6ab535aa96d649`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:21:00 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:21:01 GMT
ENV NIM_VERSION=2.2.12
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:21:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 00:21:03 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Sat, 19 Sep 2026 00:21:03 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 00:21:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19338db8d291539ee13b8a4995056e69f9defadcd224ff59676dd7cf15d31d43`  
		Last Modified: Sat, 19 Sep 2026 00:21:17 GMT  
		Size: 89.2 MB (89202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baad0a1f573ef28d39ec51c19a4d1a75aa7daf6a909e79d7d28c10feba136f6`  
		Last Modified: Sat, 19 Sep 2026 00:21:16 GMT  
		Size: 31.6 MB (31560051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6005e084b0ec2a3a2208416126641c0acf761665e9e795d5796e2286ff24ee7e`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:1ac09bfec3fee4d1a4d050bf2d7403a6021fc5a3ceb8c2cf1bc2a9b9100f9173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 KB (14536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b0b9423d8b929316ca7c39e4650a02720ea9fd468eeee1314ae5b456ee5054`

```dockerfile
```

-	Layers:
	-	`sha256:c3da340d337116e4d448f525f31aa6bec59c0afffa92631f215447573c4254d7`  
		Last Modified: Sat, 19 Sep 2026 00:21:14 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:490bf5754203126c670d8800ce30d4aaa6177550fbc6c249e1966b0443aa42e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172463751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df450085c6a7c7fc0facf4854894043de20898362649d921218824eb3ad6a16`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:12 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:12 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:14 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc1546f965929e31a1e99b19f39ac618717c3a94393d2dac82db621725971a8`  
		Last Modified: Wed, 09 Sep 2026 20:26:32 GMT  
		Size: 113.8 MB (113830905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3272afa199f4fc7521eb5b84e458ec5f172b234a35fedfd5571c6f6dceb24cd8`  
		Last Modified: Wed, 09 Sep 2026 20:26:30 GMT  
		Size: 30.5 MB (30515392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32220a5d4112b0070aa2efc8bb384c9ef9f9ec976dc71236ccb78a1bbfea232e`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:c6832a8ec780f268751255dfceeeaa4b3391ec901117c6029a94121cb1240ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 KB (14567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94eed0d530cc91527e671d6125e4adea0438390c58690e8e7ce9a192d0abd0c`

```dockerfile
```

-	Layers:
	-	`sha256:c815e0bb6a8a032e72d64a1208474b2a0ab59c1b948ea0cf4c4c9b4aabf98246`  
		Last Modified: Wed, 09 Sep 2026 20:26:29 GMT  
		Size: 14.6 KB (14567 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:2ce38fba6dacafb9abd1a0ac4a5af35d5c34a3f4d5ae99193fa9b6c5c12aa6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180737301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9a1b1743c5165533d6fff6061dc1fae5454fe53ace341abd5c88f6d1e9cc5f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 20:26:31 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 20:26:31 GMT
ENV NIM_VERSION=2.2.12
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 20:26:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 20:26:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x64.tar.xz'; sha256='7df1611449a6842af69322aa2c1206942982650a5f6bc0d37bc8ec109932f638' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_arm64.tar.xz'; sha256='3dc04191af72a8310cf1c8ffb6f772cc3716fc5f264bc7c453ab4aecb4085221' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_x32.tar.xz'; sha256='fabe576a48db63d20d6077b3ee921b2806fcfa108b7aaddf8f230d09f4b54e5d' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-09-08-version-2-2-8e8fbf60693418dc95bb0d762fd660231d08a583/nim-2.2.12-linux_armv7l.tar.xz'; sha256='c4893f5c4b51064ae9a686a4aeb168d0ba1da97f4cbc7032b6c684e51d63e881' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.12";   rm nim.tar.xz;   nim --version # buildkit
# Wed, 09 Sep 2026 20:26:34 GMT
WORKDIR /usr/src/app
# Wed, 09 Sep 2026 20:26:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d8d10e59a9d1638f7417dd94db704c757dc408a166ad9fbd5bdee058e34043`  
		Last Modified: Wed, 09 Sep 2026 20:26:54 GMT  
		Size: 118.7 MB (118733150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea6d8d49895428b27a2aa039a4ac354d21fe81cdf09e346d3455da736387af`  
		Last Modified: Wed, 09 Sep 2026 20:26:52 GMT  
		Size: 32.8 MB (32782935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0efdb01825c60ebeafa7629c4e22c0bb9a46896e77110fcb33b05a57f745a3`  
		Last Modified: Wed, 09 Sep 2026 20:26:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:29fef5aba38d80bc3df849bf458e99ea814ffb85003f2309b417960daeb4535a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 KB (14414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f60976b94d6db812469af447b00212f570fc31cc8b8a7896c28522623b9943b`

```dockerfile
```

-	Layers:
	-	`sha256:35b12387fd364acf888b248cc3f3d14b8cbe4386b6783b244dabfabbf5b66f1a`  
		Last Modified: Wed, 09 Sep 2026 20:26:50 GMT  
		Size: 14.4 KB (14414 bytes)  
		MIME: application/vnd.in-toto+json
