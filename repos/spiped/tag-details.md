<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1`](#spiped1)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1.6.4`](#spiped164)
-	[`spiped:1.6.4-alpine`](#spiped164-alpine)
-	[`spiped:alpine`](#spipedalpine)
-	[`spiped:latest`](#spipedlatest)

## `spiped:1`

```console
$ docker pull spiped@sha256:c3b5fb94d33151f480e6263553d199b3c2a980200ea4d392090d511539da6f63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1` - linux; amd64

```console
$ docker pull spiped@sha256:e1dbc4a7502a65ea440d5b4177da41a1e107a287bd1ca743a67adf0977df87ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36891615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cadff837bc122b061eb50643a1b85e815b5cf3cdc7b8ef25b837f5cd06898a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:32:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:33:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:33:07 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:33:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:33:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c1790dd5965454db0dd2327d8217aa3a724f8f480dabcf7d4750e7815314e`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5faed6d3715345b91756bf7582a479a3930fd6e7b723e6a201b4547016dd328b`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ec87e27de9545fd067e173c96519b74709dca28f8dc9668c0282db16379db6`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 7.0 MB (7047068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6f0056ae7bb34906cd64839d3dacebfb13c8f1932fe4565fd03c829cc8b460`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d880b89084a66ce18a50f49a5572594771ff7ed59283faa393946d49db3391b`  
		Last Modified: Tue, 24 Nov 2026 04:33:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:f9dbab597301838fc16f61bc48547033dc828618f1cfb5492065324d81b2fcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c386ad861a32d81ec237cebca879e8093e9200cffd872f99a85075e39525680`

```dockerfile
```

-	Layers:
	-	`sha256:5bd2b2fd1b175650db4861e4c489ee1f8fe877823550a9d8734bc43a8c38e417`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 3.6 MB (3633075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c91231db25d8b4869cecf5c19d00f6e9160b6905a1eff206020a90d2dadddde`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:79fbc96b403e2ea77447302383151d79ecc274cd14f1564b4a32b54f02139108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33812395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf5ffe3d1de7853776adad0c003eee463dcf0e5182610e840d094bcfb294549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:39:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:39:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:39:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:39:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:39:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdbdcf267173ad2e372b8566543dca07e33316b7819ca1bd63371fc7d68e2af`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61b7571093cdadbff6dc6669eb23f2ff63096665e246ee0c6a94bec44dc95e8`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9eec73584775f71667055b0b4cc6f4252300ce37ec267c5e82a8e504ee3e26`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 5.8 MB (5790410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387cc20ad3f6b83411fc818292f698731caa31e4482ba2b22c65f7a5cce8343a`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07953ed7cd122c55a5776747f3bacacb4b31dd9410b3057809e3e1031ed3b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:06 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:add2d26b749d242a946e096c646b660e907634cfd4732746ad979df1904b5202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfcff736c460aa06bb0416dc4270cbdac214ba36811fd5297965d375e96061d`

```dockerfile
```

-	Layers:
	-	`sha256:dbfbbc267168315ac57b103107cc2eab87a1f9822797a228ccd2aa231175251b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d4ed2cb83537df039ccabb0830c1c3bc4798edddea0b40d537568835ce7b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:a9741c1718afdbf87bc6aebfe375d862280eaba2a55d918d66a3bbb61a837c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31849652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ea92ba538b78670a1956a492d6468c16eb2f2c92ec01ec2e94c00a1d00d0fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 05:15:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 05:15:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 05:15:31 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 05:15:31 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ea652564d8f6474e18203515702f646209b761cfa2e21f49b5c7849b4f8908`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660d992dda85b805970708c00d9be9ebf44dc465d617ca0bcbd2a8ff63e676d8`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5350db6511ce9801401cf9cc09dc3869e56e213f73fb711c03d7ad9105614fda`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 5.6 MB (5584828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192cab6f316db8b921791d320dec21a42b85c722d9ff82435d3c85a03d62de04`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e985b8211eacba9c048abf6b6940e4006bb7b6324929baa4e6affd84dea8e059`  
		Last Modified: Tue, 24 Nov 2026 05:15:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:702543e629bfcc9b05e5615c8b0d420524cf446238237517a1fab1a1ae739888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7c8a2b1156de16c7389771cc1608047fface670ec409cd273f9e783d637371`

```dockerfile
```

-	Layers:
	-	`sha256:0ecc849e98e042b30330745f941bd3d9685147dea1b52282662999fc60e244e3`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 3.6 MB (3625193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686a662dbedb4b0931f5483b4b6fe2c9bf4ec62ef83add3ab5e3c112ac05c468`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5f5981e43bc40d76f978a46d4e29752ee2c38e1b84013c01230d2eb40b7d2154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36435189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028e627509eac7b502d3bc8440a4ef50bf835ea2a6c9f28bf19e356a48578a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:36:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:37:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:37:10 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:37:10 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:37:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94624b8c41d51b29d5a8a52d86c5b507f883f19369564a2069817893327d2857`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b647ea832855085a84fd5c30181c7ccacb2d43c45809d99b171875f8d7a59f4f`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bbeb2a9cd060794e3ad90b1688091ddac6d05746bcdbe01fe6392fe8b5c575`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 6.2 MB (6234788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cf85b5c45966b129c96d867f3bde8f2c0ab50363e56139b66a79fb4f410a63`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1857089c201b1c78c96f112d958c0fe0b418d0af355821d3a31c873e9f6c5d5`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:4e02ae074112ba4293176c2bdc7293320215d958e7a93989ceb48aa69e55c138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c3b8e5bf4c487de760d2e0ea01be24cf1adc1f4d84e9bd78130f2935c945da`

```dockerfile
```

-	Layers:
	-	`sha256:cfd76395d0fe8baea060575e2da2c8fa6623af2b26712ca156a10f50a9139db4`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 3.6 MB (3628104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aba7d78d913ba077c26e937a53c2530e76ed35d0c9d45633a61af0e1f6865c6`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:2df803c194d2902c9c105604bac9e90fb184afb6ee2fa9f7a246d3500a79fd08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37803735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50de5425b8094f2107dd3bb14789fcad9e549897de1e216ecb0390b22bf6a16d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:40:55 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:41:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:41:19 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:41:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:41:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fd3cf858ba9bfd075aedeffe92d4fee06e68cf2b6fcbaa20223608e4871583`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86b9d87d5f1d9a01b4b5f0867aa3fd54a131afd5a6b6279a9444ffdfd8ed7cb`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797239de2d469afb5ed61dbcdd0f48445157df04c9ed4e608a8c074def06267`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 6.4 MB (6443454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5582a167695528591718fcd1ac59ed1c16429238f9a7f67032b889bfb9cfe5`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e855d33c830c6ecfd2822951b296f86b2cde0186ba36216ee0fc33a67cd428`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:8f27ab2cbd8def841c3b594f3e1a7ac61aeb7119295a79571f5eff2002feb999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46261d8127d2a427370bf8b83f8dd1c0925159f6a5840d8b1e817e2d7a4ebea`

```dockerfile
```

-	Layers:
	-	`sha256:e4ecef937e90823576b3475c67ca0ab5c9ef2fce307a67f2c89dedcdc118892a`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 3.6 MB (3627202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c7385525bbfab7553ad1be2917d7b3f5f2a69867e4e7f73a8723a849775e3ac`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:2d484eae75b3bf9cf940d884ae79ae399dc5b0c082e327b147448a4d61ca0af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40511744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38124623173479896bbf9d63df7cfb4e74c4f8a080597d185587142770bc8143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:06:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 10:06:41 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 10:08:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 10:08:09 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 10:08:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:08:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6dbc047dd98e5e0cb5971aff99145a1dfe054b75cbc6cf138d0c68b66ef22d`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125772938ce6d1d954e9ab176386f281ef889e53940ff5345efb5c72ca18c8c1`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0556ae6cdbd81c23eb0505ea19c25f919788880dff8a61b0ea78da3a5ab91cfd`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 6.8 MB (6841727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc5fb8c17fddca4ffc2218b12d5100a2ff575358b91e30876fb89240cf1d3df`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e9546749fee01783ca074057f575f64490c39555bbb07e47c2ba66a5a00ada`  
		Last Modified: Thu, 05 Nov 2026 10:08:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:133b34ed5cafffdb86fe1bc40ba09c92287ef95b7d8586105978b3eafb6114de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a876e7422d2f72ee9b56956d2618cdcba8f5e931e67bab19b895c635309b2985`

```dockerfile
```

-	Layers:
	-	`sha256:3a32d11fbcce2a818987ecad7c9cb4742e1e8b70130f040b402dbd630cd5d4f0`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b290355e4d1f563c547a8ffbe0e350e2d24741e6aa3f1454898dcf36f2fa56fa`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:35cc1532ab43c2a18daf89683bcc26049067c065679b871636b21758d4fbd807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d40a7c2b5bf86cc4b50070065f3100027e21de85b7afd3b217f86e398d039`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:04:20 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 07 Nov 2026 04:04:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 07 Nov 2026 04:08:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
VOLUME [/spiped]
# Sat, 07 Nov 2026 04:08:05 GMT
WORKDIR /spiped
# Sat, 07 Nov 2026 04:08:05 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 07 Nov 2026 04:08:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Nov 2026 04:08:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8711eff2ac142381294eebe60399feaef8206444b8feb998c7a8653fc302dc25`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c897706e29403414d166a413de7eb7fddd323825e48af9ee04011b62099157`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41118deb4d4ec9b631e27cf6348a64bfeebb362abdb69894bde47e4a88162a3d`  
		Last Modified: Sat, 07 Nov 2026 04:09:32 GMT  
		Size: 9.4 MB (9355136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c7770c07c289caa7ba47dc3e58b9ef6f210adb9e06616e4e617552505deeec`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09cfefc9051798c71e3d51e00f0792ae1f08c071404ae651d64a52297630334`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:6499ea0ebd442c3545d5d2f764af1267463c4c2d79de463c0a7ffb799ebd5477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccdac3a69721902a24ff310c4d5c85a25089828051f77583a05b8e30ea4bc1d`

```dockerfile
```

-	Layers:
	-	`sha256:4748193751057d2c62f7817b4e1b65c30f58606a137bed24ac4d3bc5014608e3`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aaa624800a9011d2d7056b521231f7eb4d129e41d90d28465c35a7d2eceed36`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:cfc4467bf333ff8a49b5e77e92b80a640ad0c10cea13269b75c765a34ca954af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36049634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193702359e6d2f0df0aced8a97146f2677dd1ef1a41efb0082cc3bcb847bbf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:55:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:55:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:55:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:55:52 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:55:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:55:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9f298606f5469abf6226fd3076af755fa5822cec38ae302e52a8be41de1746`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60926960f4793d206e92d52fe44ec91a62a3b9a8604c8db19592aef8dc02215`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ddf91f8c10272110750c8f4cf6b7ec5d5c620cc25fb4cc1419b67a9a2027cc`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 6.1 MB (6123146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ea65264a731e6f754629ef9eb7ede6398cd461bc191fb34a97add0f43dc5e7`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab72a08603ec00fae265bcf34012ec29c07ad9b56437ccc48ad07170a83cc839`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:071ab523185f68ff208882585dbba66d8ecde04d21245010cde87487b89ed6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf7b4ff4833060b27e17908e095900f46b9eadae8af4148768e64b3176d9bc3`

```dockerfile
```

-	Layers:
	-	`sha256:628c426af067407a3dd88e9d69565124756e6d97f0b252c9d8bae4747aea8011`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a20e191097174684494fb73cb22292d1880914f714714a29b86d7738950a58c2`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:7acba2c58083cf5246e055818bd95932bb6a26851e0123543a3c4b9681a07061
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:c8814ead20dd0135d43845bdb606434de17dd4d8394a77db82f8cd1419bbf4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017cf7a2498139d32c92843ec0042267d9ed0f5b9be74a16bd1e73a9d88f0d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:09 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:11:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:11:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:11:20 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:11:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acd53230c52bec943981247a905df07d70dc469b82dac9bf38a418fef554944`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbf9f86182e7ab01acb625bac991d1a7f4384ac5ca4fec81b3e099b8d867320`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52b53a35477527b1abac84987377e2f7b4a61a0b1a1234078e4ee114e2cd347`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254df10c93c764806260eea3e3e599d2078b1f26b31ab7ad3544ee5ce5e8506`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5717d2606e46632e930687a1018927c12250db01ee27fe066803833c7e15ccea`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ba58f5dc970b3cfd128f4e3bdb45898784da729523674112c24de415b7de4bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83bb2ce7201d9ed10437f997b4d90bf1f461199a89778928579e27de14caaf6`

```dockerfile
```

-	Layers:
	-	`sha256:fa86b9d5aee07aba15b79553b8ab7d4ed67320708d0f325c1cade2cdf66af211`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b71a8ff2d7c76f094fc79a8a6edfd6d25700299c758df034a23387a14d0197`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:70db8d86b05ec26142aa3d3d8961a775de77f3a621bc1e9298556a107ca23484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2602118fa9da33230ea21f6ef767c71561dd78ec70bba98ca802aa3edc91c737`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:48 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:48 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca1a2659556803f6a1f6ac7d6023ca9f508e3d7125c7b01c95946924b2ed51`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37684309d1b4eb2dd500cfd27f41468d43228f7fcfa563c08f5b640f8dccd8e3`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 8.8 KB (8790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fc4301184250473c315117e1c261152628841241af29638ba9b0000f761d5a`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 91.9 KB (91929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc65774cf43bfde90b2b7d93317e188ef54b067c5dfae29f8f01aab354dd033`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2c948f14287f8c84f3eb612a8cc4a5045675206711a7bcdffe757246dd581d`  
		Last Modified: Thu, 05 Nov 2026 18:49:03 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a8e07addb11eb7b1aabb2dd5fb32ebe27e8da3033fb4d4f84de7412d2ba5c7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68283f9451e454b2fe6cc00e43c70e595e7c4191722af9f1c6270480a25f8cd`

```dockerfile
```

-	Layers:
	-	`sha256:dd196a5d75b963fe9314f6a2063792de81c9861494363261ecca095942aab9fe`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ab66d876a3ca036eda73796574f97547d4de5c3ceefc7ea5a7767e86e2920ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b0075220b5c19f3262bcd77d4e12f9b0517aa8cd9602ea68c9f9259f6c552b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:30 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:40 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d0f0615e8d55c6242d81d13f3db7fffca693c9cbd68870becb41c713fe8019`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e3f2f3661700aab30f46d94b02ae98b5c1f6100ef137252e1eb3dc45a1de78`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 8.8 KB (8817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8265b684072869980c8eddf8c8d3e07321db73132a997574d0b315ba5626e8`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 84.8 KB (84786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8199b54aa825b54f8e4ac23282635f854437170901b91eef0c2ce97669440f`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda927b0712de724ea660dab6136c859fc0eddc89a00ebe34a2960e6716e34f`  
		Last Modified: Thu, 05 Nov 2026 18:48:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0aa6ecee97db325b426397a987ac96f9a0a978c974728b01f8cf059da73b5c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ad275529a3f6f0d250f7a5b7dd0a44019ec27127e76fd41b9a96ccb0e5dfda`

```dockerfile
```

-	Layers:
	-	`sha256:59064eebff5f6739a4626bd342f2333fc6e7d7d904f086ae2300d8ff58f7760e`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94106d1790a743d9aecf4d888ac34ed9f68d2a2987676bc74011be7c36a838fa`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:366d3152f6ae8a2c1bb9cc6aef0528a26a2fbc2b0806610c25cd830cb62dbfd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bed8cb5fc52d4c7a4744ecb4d7a857e45a708ece281dc5b6de8c564adbc4e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:50 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:06:51 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:07:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:07:01 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:07:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:07:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed8812f601e63f3ae2d579822b2ca176eb0b42230acbb2109d22e2be1c99a8d`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe94e4f4b71b1cfcb08ae673678374424b90f412b61a6d870faf0ef3648206`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a9f5ddfd40b137c9e556f63e5963e2b2363476b8361639d04daf1a13f6a274`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 102.5 KB (102525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbe8768f2b4db8a252a2cd0b149c7be784a73134c8a44ed6a776302c957dab8`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfae279723b6acec32f3f4ad5d384a9655279b4a06e3f52bb336397acd247415`  
		Last Modified: Thu, 05 Nov 2026 19:07:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:b23a8ab6e6e4b0875fd5d8a28e8b3aaa3dec523a658350d7c7038f54b15df376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfca6d13959e631b9f334ea9e7448a1b714fa92334d59f5960e25493357e508`

```dockerfile
```

-	Layers:
	-	`sha256:dd1a15271bc9858a87a2c35b58f5794baea4506e0d853fffc823261a0ed5298f`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2b42d1db8e90cc38fddac94c8b48cbbd255237a357e250f3a83ecbcc4038a77`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:c318b0571478e852feb5b4e868f09bb5a8621e23388bfeb5ad9ce197bcfb383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f123fa232629113cd3fcfe9ff59c0b8726a45936d92b8420704df4ca581a5a8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:31:15 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263a3eef9df69172f478cbecf184e19615d2c98fcaf5c4d5a3da329cd922a05`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6278b421c79ae1ed4441d3ce137340a27b51d545b06ba8b61503fc6934778f82`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba8ad68ec67b53b2a247693a26c0fc581705b877a8f91c12fc2f14894ce7495`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 122.7 KB (122667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0471844cad600228f0a90ea657792a5bdd89cec1204267a9f33abf76ddc7aed3`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24cc3c0807bac51471a18717507ad53ba7ceae67b78b75b1f264398cf80a781`  
		Last Modified: Thu, 05 Nov 2026 18:31:21 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:6b5f659dcf7ff13d36b6d2f6ace3e0709f4eee888c5b0d6cfaf4f38cd2df9788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ff6af46d8f6d2a6ee115485fef72ecaa3b67879d6e2b434326b14134e83b38`

```dockerfile
```

-	Layers:
	-	`sha256:7f50c2732b10dd5e78a79a62553481b58d9d92fe68207b27d3742f833a06c6a5`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3cf60335290bbd6f70a6eb2e820264e02f1ef240d37c2efaf09586a01f8a9e`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c3b74127fd762270ea09516893a3a510f2ea6b8380ec818d941dd4a7fef9982c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b700e11283501869f4300663854274d43bbadda041f36f3bbb6891966ebaa8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:20 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 23:38:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 23:38:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 23:38:45 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 23:38:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:38:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b875e42055c8d6b3aaec97f6a84522e08cdf7023ca5a47f402b8daa7ace993da`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336256a0193a36892fe91c980764cff3ff84622befa5704a4f9b43a4ee5b68d4`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 8.8 KB (8795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa1948355a9639a5a35a86cd0b34e2dc70214438b051760716501e3adea582e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bda1f7eb51c3167d00d5e47401f03a9e07d7039c865d5e7eef633f9572a431e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da55f6f39777ca28d8374a3230edf168a0f220873e981c6c48ca066756d97d91`  
		Last Modified: Thu, 05 Nov 2026 23:38:56 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bfb4fdf17be8d322d203e7b8b67fb60c0e09ea2f4247dee2ff9c4fc2c0f913a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc83bb2bbdada5a2f9041b79b683476ca96619264bfc8f172835dc941adfe85`

```dockerfile
```

-	Layers:
	-	`sha256:ddcc8b73c16cc397632839e15fb28bb764aa075907181e0eb66db19c82743c99`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05044ae64e9d40114fce788798d1f0aad9e1514dd48da371b89313f45ff8086`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:dadf18f82eee65e3838fd2eb34f8d72ab72772f49aa93db19a0a13d4e3a8fb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5016a1412ba4ecf671f92adbc6611f14bab16899b6b66da7a9f75a79aeb59f54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 22:36:03 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 11 Nov 2026 22:36:07 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 11 Nov 2026 22:37:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
VOLUME [/spiped]
# Wed, 11 Nov 2026 22:37:53 GMT
WORKDIR /spiped
# Wed, 11 Nov 2026 22:37:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:37:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e05f161df46ae72c8b186f3a9bb5d9ead065043fcddd2b3b4403f0ddddafaa8`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670410ca393732984f1ef705bc50ed09a16cd7c6ac4042388c7ec606981496d7`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 8.8 KB (8807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8a2048e856be5d72b4a87a50e558c3932a3ffde819f63f42f6b94a07a4777`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 99.9 KB (99919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ee1aecd55e1dfeb9366aa3eda304573a03be0f11fce1343e5f306b9a496a07`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a13d85f57cd29bdd1459de372a2094e5b680f2e76b76ac027cb5b954b3a8de`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:07f733e4a076be0883af4641a6b32a2035d51bb14ccae8b78097770f77e4deae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8e9ff4b673b2e7f6a4a7ae453381acce021cbef0bd508e7890454319db3ddc`

```dockerfile
```

-	Layers:
	-	`sha256:a536706220e5af9f592ce1db2a95a2a6695925c17bdb68a94b9bd8b07bb14754`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f94b9fc57452f9dcdb95303ba8ac0e5b3f04bc2c3e86bbcf6fa85fea97b27e`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 14.3 KB (14303 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b09f57888b62efc1cbe09acab75f347b92538b3554788d9e04543dfd43b43a55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3829421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27da4bf2cbd844403f63a249fe6a86cddb47f49a6fa6430f5672cb322e14274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:14:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:14:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:14:22 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:14:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf905e459948a0f823dff09c6fb4e54324cf9cf736c2beb2a1be4dfbe9dda66`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ff33e4b9d337e9d280713326a5e8371625c094921391c35517fa7297d2c4e6`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 8.8 KB (8809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa783ac66a3f2a6cf773250b6d6be238bea1a4336e6ce63cf4c6983bdd82f5`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 98.6 KB (98559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7f9044e5d9d66eda59cbaea85817f5d7a2e2ca2e64432d742a8d46d7cdfa84`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6d4ee01f72cdf5e63a9c5c10186f476a3af211e45301ce0f23a9d11f341d9`  
		Last Modified: Thu, 05 Nov 2026 19:14:33 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:97c0a7161662a2fb8015a6fa218302b603787306deb433a10a1df4456deee4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95915711476b52732e3c71221566386a66e4941d22c85d40865e43f10b9ea0d2`

```dockerfile
```

-	Layers:
	-	`sha256:4590a6964bc71086b68e5b24103a500cd2ed1af028e21d853e9db1c092b785e4`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f1d8bd9114220e9ae5b442e52da6643b78f65ed11772c184a527b21aa5de3d`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:c3b5fb94d33151f480e6263553d199b3c2a980200ea4d392090d511539da6f63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6` - linux; amd64

```console
$ docker pull spiped@sha256:e1dbc4a7502a65ea440d5b4177da41a1e107a287bd1ca743a67adf0977df87ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36891615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cadff837bc122b061eb50643a1b85e815b5cf3cdc7b8ef25b837f5cd06898a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:32:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:33:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:33:07 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:33:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:33:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c1790dd5965454db0dd2327d8217aa3a724f8f480dabcf7d4750e7815314e`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5faed6d3715345b91756bf7582a479a3930fd6e7b723e6a201b4547016dd328b`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ec87e27de9545fd067e173c96519b74709dca28f8dc9668c0282db16379db6`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 7.0 MB (7047068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6f0056ae7bb34906cd64839d3dacebfb13c8f1932fe4565fd03c829cc8b460`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d880b89084a66ce18a50f49a5572594771ff7ed59283faa393946d49db3391b`  
		Last Modified: Tue, 24 Nov 2026 04:33:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:f9dbab597301838fc16f61bc48547033dc828618f1cfb5492065324d81b2fcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c386ad861a32d81ec237cebca879e8093e9200cffd872f99a85075e39525680`

```dockerfile
```

-	Layers:
	-	`sha256:5bd2b2fd1b175650db4861e4c489ee1f8fe877823550a9d8734bc43a8c38e417`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 3.6 MB (3633075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c91231db25d8b4869cecf5c19d00f6e9160b6905a1eff206020a90d2dadddde`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:79fbc96b403e2ea77447302383151d79ecc274cd14f1564b4a32b54f02139108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33812395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf5ffe3d1de7853776adad0c003eee463dcf0e5182610e840d094bcfb294549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:39:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:39:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:39:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:39:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:39:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdbdcf267173ad2e372b8566543dca07e33316b7819ca1bd63371fc7d68e2af`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61b7571093cdadbff6dc6669eb23f2ff63096665e246ee0c6a94bec44dc95e8`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9eec73584775f71667055b0b4cc6f4252300ce37ec267c5e82a8e504ee3e26`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 5.8 MB (5790410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387cc20ad3f6b83411fc818292f698731caa31e4482ba2b22c65f7a5cce8343a`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07953ed7cd122c55a5776747f3bacacb4b31dd9410b3057809e3e1031ed3b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:06 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:add2d26b749d242a946e096c646b660e907634cfd4732746ad979df1904b5202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfcff736c460aa06bb0416dc4270cbdac214ba36811fd5297965d375e96061d`

```dockerfile
```

-	Layers:
	-	`sha256:dbfbbc267168315ac57b103107cc2eab87a1f9822797a228ccd2aa231175251b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d4ed2cb83537df039ccabb0830c1c3bc4798edddea0b40d537568835ce7b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:a9741c1718afdbf87bc6aebfe375d862280eaba2a55d918d66a3bbb61a837c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31849652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ea92ba538b78670a1956a492d6468c16eb2f2c92ec01ec2e94c00a1d00d0fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 05:15:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 05:15:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 05:15:31 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 05:15:31 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ea652564d8f6474e18203515702f646209b761cfa2e21f49b5c7849b4f8908`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660d992dda85b805970708c00d9be9ebf44dc465d617ca0bcbd2a8ff63e676d8`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5350db6511ce9801401cf9cc09dc3869e56e213f73fb711c03d7ad9105614fda`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 5.6 MB (5584828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192cab6f316db8b921791d320dec21a42b85c722d9ff82435d3c85a03d62de04`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e985b8211eacba9c048abf6b6940e4006bb7b6324929baa4e6affd84dea8e059`  
		Last Modified: Tue, 24 Nov 2026 05:15:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:702543e629bfcc9b05e5615c8b0d420524cf446238237517a1fab1a1ae739888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7c8a2b1156de16c7389771cc1608047fface670ec409cd273f9e783d637371`

```dockerfile
```

-	Layers:
	-	`sha256:0ecc849e98e042b30330745f941bd3d9685147dea1b52282662999fc60e244e3`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 3.6 MB (3625193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686a662dbedb4b0931f5483b4b6fe2c9bf4ec62ef83add3ab5e3c112ac05c468`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5f5981e43bc40d76f978a46d4e29752ee2c38e1b84013c01230d2eb40b7d2154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36435189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028e627509eac7b502d3bc8440a4ef50bf835ea2a6c9f28bf19e356a48578a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:36:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:37:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:37:10 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:37:10 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:37:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94624b8c41d51b29d5a8a52d86c5b507f883f19369564a2069817893327d2857`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b647ea832855085a84fd5c30181c7ccacb2d43c45809d99b171875f8d7a59f4f`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bbeb2a9cd060794e3ad90b1688091ddac6d05746bcdbe01fe6392fe8b5c575`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 6.2 MB (6234788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cf85b5c45966b129c96d867f3bde8f2c0ab50363e56139b66a79fb4f410a63`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1857089c201b1c78c96f112d958c0fe0b418d0af355821d3a31c873e9f6c5d5`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:4e02ae074112ba4293176c2bdc7293320215d958e7a93989ceb48aa69e55c138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c3b8e5bf4c487de760d2e0ea01be24cf1adc1f4d84e9bd78130f2935c945da`

```dockerfile
```

-	Layers:
	-	`sha256:cfd76395d0fe8baea060575e2da2c8fa6623af2b26712ca156a10f50a9139db4`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 3.6 MB (3628104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aba7d78d913ba077c26e937a53c2530e76ed35d0c9d45633a61af0e1f6865c6`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:2df803c194d2902c9c105604bac9e90fb184afb6ee2fa9f7a246d3500a79fd08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37803735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50de5425b8094f2107dd3bb14789fcad9e549897de1e216ecb0390b22bf6a16d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:40:55 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:41:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:41:19 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:41:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:41:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fd3cf858ba9bfd075aedeffe92d4fee06e68cf2b6fcbaa20223608e4871583`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86b9d87d5f1d9a01b4b5f0867aa3fd54a131afd5a6b6279a9444ffdfd8ed7cb`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797239de2d469afb5ed61dbcdd0f48445157df04c9ed4e608a8c074def06267`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 6.4 MB (6443454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5582a167695528591718fcd1ac59ed1c16429238f9a7f67032b889bfb9cfe5`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e855d33c830c6ecfd2822951b296f86b2cde0186ba36216ee0fc33a67cd428`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:8f27ab2cbd8def841c3b594f3e1a7ac61aeb7119295a79571f5eff2002feb999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46261d8127d2a427370bf8b83f8dd1c0925159f6a5840d8b1e817e2d7a4ebea`

```dockerfile
```

-	Layers:
	-	`sha256:e4ecef937e90823576b3475c67ca0ab5c9ef2fce307a67f2c89dedcdc118892a`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 3.6 MB (3627202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c7385525bbfab7553ad1be2917d7b3f5f2a69867e4e7f73a8723a849775e3ac`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:2d484eae75b3bf9cf940d884ae79ae399dc5b0c082e327b147448a4d61ca0af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40511744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38124623173479896bbf9d63df7cfb4e74c4f8a080597d185587142770bc8143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:06:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 10:06:41 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 10:08:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 10:08:09 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 10:08:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:08:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6dbc047dd98e5e0cb5971aff99145a1dfe054b75cbc6cf138d0c68b66ef22d`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125772938ce6d1d954e9ab176386f281ef889e53940ff5345efb5c72ca18c8c1`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0556ae6cdbd81c23eb0505ea19c25f919788880dff8a61b0ea78da3a5ab91cfd`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 6.8 MB (6841727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc5fb8c17fddca4ffc2218b12d5100a2ff575358b91e30876fb89240cf1d3df`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e9546749fee01783ca074057f575f64490c39555bbb07e47c2ba66a5a00ada`  
		Last Modified: Thu, 05 Nov 2026 10:08:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:133b34ed5cafffdb86fe1bc40ba09c92287ef95b7d8586105978b3eafb6114de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a876e7422d2f72ee9b56956d2618cdcba8f5e931e67bab19b895c635309b2985`

```dockerfile
```

-	Layers:
	-	`sha256:3a32d11fbcce2a818987ecad7c9cb4742e1e8b70130f040b402dbd630cd5d4f0`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b290355e4d1f563c547a8ffbe0e350e2d24741e6aa3f1454898dcf36f2fa56fa`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:35cc1532ab43c2a18daf89683bcc26049067c065679b871636b21758d4fbd807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d40a7c2b5bf86cc4b50070065f3100027e21de85b7afd3b217f86e398d039`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:04:20 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 07 Nov 2026 04:04:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 07 Nov 2026 04:08:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
VOLUME [/spiped]
# Sat, 07 Nov 2026 04:08:05 GMT
WORKDIR /spiped
# Sat, 07 Nov 2026 04:08:05 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 07 Nov 2026 04:08:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Nov 2026 04:08:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8711eff2ac142381294eebe60399feaef8206444b8feb998c7a8653fc302dc25`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c897706e29403414d166a413de7eb7fddd323825e48af9ee04011b62099157`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41118deb4d4ec9b631e27cf6348a64bfeebb362abdb69894bde47e4a88162a3d`  
		Last Modified: Sat, 07 Nov 2026 04:09:32 GMT  
		Size: 9.4 MB (9355136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c7770c07c289caa7ba47dc3e58b9ef6f210adb9e06616e4e617552505deeec`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09cfefc9051798c71e3d51e00f0792ae1f08c071404ae651d64a52297630334`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:6499ea0ebd442c3545d5d2f764af1267463c4c2d79de463c0a7ffb799ebd5477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccdac3a69721902a24ff310c4d5c85a25089828051f77583a05b8e30ea4bc1d`

```dockerfile
```

-	Layers:
	-	`sha256:4748193751057d2c62f7817b4e1b65c30f58606a137bed24ac4d3bc5014608e3`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aaa624800a9011d2d7056b521231f7eb4d129e41d90d28465c35a7d2eceed36`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:cfc4467bf333ff8a49b5e77e92b80a640ad0c10cea13269b75c765a34ca954af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36049634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193702359e6d2f0df0aced8a97146f2677dd1ef1a41efb0082cc3bcb847bbf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:55:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:55:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:55:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:55:52 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:55:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:55:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9f298606f5469abf6226fd3076af755fa5822cec38ae302e52a8be41de1746`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60926960f4793d206e92d52fe44ec91a62a3b9a8604c8db19592aef8dc02215`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ddf91f8c10272110750c8f4cf6b7ec5d5c620cc25fb4cc1419b67a9a2027cc`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 6.1 MB (6123146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ea65264a731e6f754629ef9eb7ede6398cd461bc191fb34a97add0f43dc5e7`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab72a08603ec00fae265bcf34012ec29c07ad9b56437ccc48ad07170a83cc839`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:071ab523185f68ff208882585dbba66d8ecde04d21245010cde87487b89ed6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf7b4ff4833060b27e17908e095900f46b9eadae8af4148768e64b3176d9bc3`

```dockerfile
```

-	Layers:
	-	`sha256:628c426af067407a3dd88e9d69565124756e6d97f0b252c9d8bae4747aea8011`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a20e191097174684494fb73cb22292d1880914f714714a29b86d7738950a58c2`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:7acba2c58083cf5246e055818bd95932bb6a26851e0123543a3c4b9681a07061
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:c8814ead20dd0135d43845bdb606434de17dd4d8394a77db82f8cd1419bbf4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017cf7a2498139d32c92843ec0042267d9ed0f5b9be74a16bd1e73a9d88f0d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:09 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:11:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:11:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:11:20 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:11:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acd53230c52bec943981247a905df07d70dc469b82dac9bf38a418fef554944`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbf9f86182e7ab01acb625bac991d1a7f4384ac5ca4fec81b3e099b8d867320`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52b53a35477527b1abac84987377e2f7b4a61a0b1a1234078e4ee114e2cd347`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254df10c93c764806260eea3e3e599d2078b1f26b31ab7ad3544ee5ce5e8506`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5717d2606e46632e930687a1018927c12250db01ee27fe066803833c7e15ccea`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ba58f5dc970b3cfd128f4e3bdb45898784da729523674112c24de415b7de4bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83bb2ce7201d9ed10437f997b4d90bf1f461199a89778928579e27de14caaf6`

```dockerfile
```

-	Layers:
	-	`sha256:fa86b9d5aee07aba15b79553b8ab7d4ed67320708d0f325c1cade2cdf66af211`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b71a8ff2d7c76f094fc79a8a6edfd6d25700299c758df034a23387a14d0197`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:70db8d86b05ec26142aa3d3d8961a775de77f3a621bc1e9298556a107ca23484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2602118fa9da33230ea21f6ef767c71561dd78ec70bba98ca802aa3edc91c737`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:48 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:48 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca1a2659556803f6a1f6ac7d6023ca9f508e3d7125c7b01c95946924b2ed51`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37684309d1b4eb2dd500cfd27f41468d43228f7fcfa563c08f5b640f8dccd8e3`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 8.8 KB (8790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fc4301184250473c315117e1c261152628841241af29638ba9b0000f761d5a`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 91.9 KB (91929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc65774cf43bfde90b2b7d93317e188ef54b067c5dfae29f8f01aab354dd033`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2c948f14287f8c84f3eb612a8cc4a5045675206711a7bcdffe757246dd581d`  
		Last Modified: Thu, 05 Nov 2026 18:49:03 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a8e07addb11eb7b1aabb2dd5fb32ebe27e8da3033fb4d4f84de7412d2ba5c7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68283f9451e454b2fe6cc00e43c70e595e7c4191722af9f1c6270480a25f8cd`

```dockerfile
```

-	Layers:
	-	`sha256:dd196a5d75b963fe9314f6a2063792de81c9861494363261ecca095942aab9fe`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ab66d876a3ca036eda73796574f97547d4de5c3ceefc7ea5a7767e86e2920ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b0075220b5c19f3262bcd77d4e12f9b0517aa8cd9602ea68c9f9259f6c552b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:30 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:40 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d0f0615e8d55c6242d81d13f3db7fffca693c9cbd68870becb41c713fe8019`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e3f2f3661700aab30f46d94b02ae98b5c1f6100ef137252e1eb3dc45a1de78`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 8.8 KB (8817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8265b684072869980c8eddf8c8d3e07321db73132a997574d0b315ba5626e8`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 84.8 KB (84786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8199b54aa825b54f8e4ac23282635f854437170901b91eef0c2ce97669440f`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda927b0712de724ea660dab6136c859fc0eddc89a00ebe34a2960e6716e34f`  
		Last Modified: Thu, 05 Nov 2026 18:48:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0aa6ecee97db325b426397a987ac96f9a0a978c974728b01f8cf059da73b5c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ad275529a3f6f0d250f7a5b7dd0a44019ec27127e76fd41b9a96ccb0e5dfda`

```dockerfile
```

-	Layers:
	-	`sha256:59064eebff5f6739a4626bd342f2333fc6e7d7d904f086ae2300d8ff58f7760e`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94106d1790a743d9aecf4d888ac34ed9f68d2a2987676bc74011be7c36a838fa`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:366d3152f6ae8a2c1bb9cc6aef0528a26a2fbc2b0806610c25cd830cb62dbfd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bed8cb5fc52d4c7a4744ecb4d7a857e45a708ece281dc5b6de8c564adbc4e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:50 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:06:51 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:07:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:07:01 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:07:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:07:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed8812f601e63f3ae2d579822b2ca176eb0b42230acbb2109d22e2be1c99a8d`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe94e4f4b71b1cfcb08ae673678374424b90f412b61a6d870faf0ef3648206`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a9f5ddfd40b137c9e556f63e5963e2b2363476b8361639d04daf1a13f6a274`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 102.5 KB (102525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbe8768f2b4db8a252a2cd0b149c7be784a73134c8a44ed6a776302c957dab8`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfae279723b6acec32f3f4ad5d384a9655279b4a06e3f52bb336397acd247415`  
		Last Modified: Thu, 05 Nov 2026 19:07:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:b23a8ab6e6e4b0875fd5d8a28e8b3aaa3dec523a658350d7c7038f54b15df376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfca6d13959e631b9f334ea9e7448a1b714fa92334d59f5960e25493357e508`

```dockerfile
```

-	Layers:
	-	`sha256:dd1a15271bc9858a87a2c35b58f5794baea4506e0d853fffc823261a0ed5298f`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2b42d1db8e90cc38fddac94c8b48cbbd255237a357e250f3a83ecbcc4038a77`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:c318b0571478e852feb5b4e868f09bb5a8621e23388bfeb5ad9ce197bcfb383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f123fa232629113cd3fcfe9ff59c0b8726a45936d92b8420704df4ca581a5a8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:31:15 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263a3eef9df69172f478cbecf184e19615d2c98fcaf5c4d5a3da329cd922a05`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6278b421c79ae1ed4441d3ce137340a27b51d545b06ba8b61503fc6934778f82`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba8ad68ec67b53b2a247693a26c0fc581705b877a8f91c12fc2f14894ce7495`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 122.7 KB (122667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0471844cad600228f0a90ea657792a5bdd89cec1204267a9f33abf76ddc7aed3`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24cc3c0807bac51471a18717507ad53ba7ceae67b78b75b1f264398cf80a781`  
		Last Modified: Thu, 05 Nov 2026 18:31:21 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:6b5f659dcf7ff13d36b6d2f6ace3e0709f4eee888c5b0d6cfaf4f38cd2df9788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ff6af46d8f6d2a6ee115485fef72ecaa3b67879d6e2b434326b14134e83b38`

```dockerfile
```

-	Layers:
	-	`sha256:7f50c2732b10dd5e78a79a62553481b58d9d92fe68207b27d3742f833a06c6a5`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3cf60335290bbd6f70a6eb2e820264e02f1ef240d37c2efaf09586a01f8a9e`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c3b74127fd762270ea09516893a3a510f2ea6b8380ec818d941dd4a7fef9982c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b700e11283501869f4300663854274d43bbadda041f36f3bbb6891966ebaa8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:20 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 23:38:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 23:38:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 23:38:45 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 23:38:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:38:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b875e42055c8d6b3aaec97f6a84522e08cdf7023ca5a47f402b8daa7ace993da`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336256a0193a36892fe91c980764cff3ff84622befa5704a4f9b43a4ee5b68d4`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 8.8 KB (8795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa1948355a9639a5a35a86cd0b34e2dc70214438b051760716501e3adea582e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bda1f7eb51c3167d00d5e47401f03a9e07d7039c865d5e7eef633f9572a431e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da55f6f39777ca28d8374a3230edf168a0f220873e981c6c48ca066756d97d91`  
		Last Modified: Thu, 05 Nov 2026 23:38:56 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bfb4fdf17be8d322d203e7b8b67fb60c0e09ea2f4247dee2ff9c4fc2c0f913a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc83bb2bbdada5a2f9041b79b683476ca96619264bfc8f172835dc941adfe85`

```dockerfile
```

-	Layers:
	-	`sha256:ddcc8b73c16cc397632839e15fb28bb764aa075907181e0eb66db19c82743c99`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05044ae64e9d40114fce788798d1f0aad9e1514dd48da371b89313f45ff8086`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:dadf18f82eee65e3838fd2eb34f8d72ab72772f49aa93db19a0a13d4e3a8fb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5016a1412ba4ecf671f92adbc6611f14bab16899b6b66da7a9f75a79aeb59f54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 22:36:03 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 11 Nov 2026 22:36:07 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 11 Nov 2026 22:37:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
VOLUME [/spiped]
# Wed, 11 Nov 2026 22:37:53 GMT
WORKDIR /spiped
# Wed, 11 Nov 2026 22:37:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:37:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e05f161df46ae72c8b186f3a9bb5d9ead065043fcddd2b3b4403f0ddddafaa8`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670410ca393732984f1ef705bc50ed09a16cd7c6ac4042388c7ec606981496d7`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 8.8 KB (8807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8a2048e856be5d72b4a87a50e558c3932a3ffde819f63f42f6b94a07a4777`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 99.9 KB (99919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ee1aecd55e1dfeb9366aa3eda304573a03be0f11fce1343e5f306b9a496a07`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a13d85f57cd29bdd1459de372a2094e5b680f2e76b76ac027cb5b954b3a8de`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:07f733e4a076be0883af4641a6b32a2035d51bb14ccae8b78097770f77e4deae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8e9ff4b673b2e7f6a4a7ae453381acce021cbef0bd508e7890454319db3ddc`

```dockerfile
```

-	Layers:
	-	`sha256:a536706220e5af9f592ce1db2a95a2a6695925c17bdb68a94b9bd8b07bb14754`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f94b9fc57452f9dcdb95303ba8ac0e5b3f04bc2c3e86bbcf6fa85fea97b27e`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 14.3 KB (14303 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b09f57888b62efc1cbe09acab75f347b92538b3554788d9e04543dfd43b43a55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3829421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27da4bf2cbd844403f63a249fe6a86cddb47f49a6fa6430f5672cb322e14274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:14:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:14:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:14:22 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:14:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf905e459948a0f823dff09c6fb4e54324cf9cf736c2beb2a1be4dfbe9dda66`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ff33e4b9d337e9d280713326a5e8371625c094921391c35517fa7297d2c4e6`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 8.8 KB (8809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa783ac66a3f2a6cf773250b6d6be238bea1a4336e6ce63cf4c6983bdd82f5`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 98.6 KB (98559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7f9044e5d9d66eda59cbaea85817f5d7a2e2ca2e64432d742a8d46d7cdfa84`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6d4ee01f72cdf5e63a9c5c10186f476a3af211e45301ce0f23a9d11f341d9`  
		Last Modified: Thu, 05 Nov 2026 19:14:33 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:97c0a7161662a2fb8015a6fa218302b603787306deb433a10a1df4456deee4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95915711476b52732e3c71221566386a66e4941d22c85d40865e43f10b9ea0d2`

```dockerfile
```

-	Layers:
	-	`sha256:4590a6964bc71086b68e5b24103a500cd2ed1af028e21d853e9db1c092b785e4`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f1d8bd9114220e9ae5b442e52da6643b78f65ed11772c184a527b21aa5de3d`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:c3b5fb94d33151f480e6263553d199b3c2a980200ea4d392090d511539da6f63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6.4` - linux; amd64

```console
$ docker pull spiped@sha256:e1dbc4a7502a65ea440d5b4177da41a1e107a287bd1ca743a67adf0977df87ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36891615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cadff837bc122b061eb50643a1b85e815b5cf3cdc7b8ef25b837f5cd06898a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:32:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:33:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:33:07 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:33:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:33:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c1790dd5965454db0dd2327d8217aa3a724f8f480dabcf7d4750e7815314e`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5faed6d3715345b91756bf7582a479a3930fd6e7b723e6a201b4547016dd328b`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ec87e27de9545fd067e173c96519b74709dca28f8dc9668c0282db16379db6`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 7.0 MB (7047068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6f0056ae7bb34906cd64839d3dacebfb13c8f1932fe4565fd03c829cc8b460`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d880b89084a66ce18a50f49a5572594771ff7ed59283faa393946d49db3391b`  
		Last Modified: Tue, 24 Nov 2026 04:33:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:f9dbab597301838fc16f61bc48547033dc828618f1cfb5492065324d81b2fcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c386ad861a32d81ec237cebca879e8093e9200cffd872f99a85075e39525680`

```dockerfile
```

-	Layers:
	-	`sha256:5bd2b2fd1b175650db4861e4c489ee1f8fe877823550a9d8734bc43a8c38e417`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 3.6 MB (3633075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c91231db25d8b4869cecf5c19d00f6e9160b6905a1eff206020a90d2dadddde`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:79fbc96b403e2ea77447302383151d79ecc274cd14f1564b4a32b54f02139108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33812395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf5ffe3d1de7853776adad0c003eee463dcf0e5182610e840d094bcfb294549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:39:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:39:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:39:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:39:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:39:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdbdcf267173ad2e372b8566543dca07e33316b7819ca1bd63371fc7d68e2af`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61b7571093cdadbff6dc6669eb23f2ff63096665e246ee0c6a94bec44dc95e8`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9eec73584775f71667055b0b4cc6f4252300ce37ec267c5e82a8e504ee3e26`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 5.8 MB (5790410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387cc20ad3f6b83411fc818292f698731caa31e4482ba2b22c65f7a5cce8343a`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07953ed7cd122c55a5776747f3bacacb4b31dd9410b3057809e3e1031ed3b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:06 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:add2d26b749d242a946e096c646b660e907634cfd4732746ad979df1904b5202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfcff736c460aa06bb0416dc4270cbdac214ba36811fd5297965d375e96061d`

```dockerfile
```

-	Layers:
	-	`sha256:dbfbbc267168315ac57b103107cc2eab87a1f9822797a228ccd2aa231175251b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d4ed2cb83537df039ccabb0830c1c3bc4798edddea0b40d537568835ce7b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:a9741c1718afdbf87bc6aebfe375d862280eaba2a55d918d66a3bbb61a837c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31849652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ea92ba538b78670a1956a492d6468c16eb2f2c92ec01ec2e94c00a1d00d0fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 05:15:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 05:15:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 05:15:31 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 05:15:31 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ea652564d8f6474e18203515702f646209b761cfa2e21f49b5c7849b4f8908`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660d992dda85b805970708c00d9be9ebf44dc465d617ca0bcbd2a8ff63e676d8`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5350db6511ce9801401cf9cc09dc3869e56e213f73fb711c03d7ad9105614fda`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 5.6 MB (5584828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192cab6f316db8b921791d320dec21a42b85c722d9ff82435d3c85a03d62de04`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e985b8211eacba9c048abf6b6940e4006bb7b6324929baa4e6affd84dea8e059`  
		Last Modified: Tue, 24 Nov 2026 05:15:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:702543e629bfcc9b05e5615c8b0d420524cf446238237517a1fab1a1ae739888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7c8a2b1156de16c7389771cc1608047fface670ec409cd273f9e783d637371`

```dockerfile
```

-	Layers:
	-	`sha256:0ecc849e98e042b30330745f941bd3d9685147dea1b52282662999fc60e244e3`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 3.6 MB (3625193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686a662dbedb4b0931f5483b4b6fe2c9bf4ec62ef83add3ab5e3c112ac05c468`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5f5981e43bc40d76f978a46d4e29752ee2c38e1b84013c01230d2eb40b7d2154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36435189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028e627509eac7b502d3bc8440a4ef50bf835ea2a6c9f28bf19e356a48578a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:36:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:37:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:37:10 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:37:10 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:37:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94624b8c41d51b29d5a8a52d86c5b507f883f19369564a2069817893327d2857`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b647ea832855085a84fd5c30181c7ccacb2d43c45809d99b171875f8d7a59f4f`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bbeb2a9cd060794e3ad90b1688091ddac6d05746bcdbe01fe6392fe8b5c575`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 6.2 MB (6234788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cf85b5c45966b129c96d867f3bde8f2c0ab50363e56139b66a79fb4f410a63`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1857089c201b1c78c96f112d958c0fe0b418d0af355821d3a31c873e9f6c5d5`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:4e02ae074112ba4293176c2bdc7293320215d958e7a93989ceb48aa69e55c138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c3b8e5bf4c487de760d2e0ea01be24cf1adc1f4d84e9bd78130f2935c945da`

```dockerfile
```

-	Layers:
	-	`sha256:cfd76395d0fe8baea060575e2da2c8fa6623af2b26712ca156a10f50a9139db4`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 3.6 MB (3628104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aba7d78d913ba077c26e937a53c2530e76ed35d0c9d45633a61af0e1f6865c6`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:2df803c194d2902c9c105604bac9e90fb184afb6ee2fa9f7a246d3500a79fd08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37803735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50de5425b8094f2107dd3bb14789fcad9e549897de1e216ecb0390b22bf6a16d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:40:55 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:41:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:41:19 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:41:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:41:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fd3cf858ba9bfd075aedeffe92d4fee06e68cf2b6fcbaa20223608e4871583`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86b9d87d5f1d9a01b4b5f0867aa3fd54a131afd5a6b6279a9444ffdfd8ed7cb`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797239de2d469afb5ed61dbcdd0f48445157df04c9ed4e608a8c074def06267`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 6.4 MB (6443454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5582a167695528591718fcd1ac59ed1c16429238f9a7f67032b889bfb9cfe5`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e855d33c830c6ecfd2822951b296f86b2cde0186ba36216ee0fc33a67cd428`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:8f27ab2cbd8def841c3b594f3e1a7ac61aeb7119295a79571f5eff2002feb999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46261d8127d2a427370bf8b83f8dd1c0925159f6a5840d8b1e817e2d7a4ebea`

```dockerfile
```

-	Layers:
	-	`sha256:e4ecef937e90823576b3475c67ca0ab5c9ef2fce307a67f2c89dedcdc118892a`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 3.6 MB (3627202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c7385525bbfab7553ad1be2917d7b3f5f2a69867e4e7f73a8723a849775e3ac`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:2d484eae75b3bf9cf940d884ae79ae399dc5b0c082e327b147448a4d61ca0af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40511744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38124623173479896bbf9d63df7cfb4e74c4f8a080597d185587142770bc8143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:06:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 10:06:41 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 10:08:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 10:08:09 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 10:08:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:08:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6dbc047dd98e5e0cb5971aff99145a1dfe054b75cbc6cf138d0c68b66ef22d`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125772938ce6d1d954e9ab176386f281ef889e53940ff5345efb5c72ca18c8c1`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0556ae6cdbd81c23eb0505ea19c25f919788880dff8a61b0ea78da3a5ab91cfd`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 6.8 MB (6841727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc5fb8c17fddca4ffc2218b12d5100a2ff575358b91e30876fb89240cf1d3df`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e9546749fee01783ca074057f575f64490c39555bbb07e47c2ba66a5a00ada`  
		Last Modified: Thu, 05 Nov 2026 10:08:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:133b34ed5cafffdb86fe1bc40ba09c92287ef95b7d8586105978b3eafb6114de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a876e7422d2f72ee9b56956d2618cdcba8f5e931e67bab19b895c635309b2985`

```dockerfile
```

-	Layers:
	-	`sha256:3a32d11fbcce2a818987ecad7c9cb4742e1e8b70130f040b402dbd630cd5d4f0`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b290355e4d1f563c547a8ffbe0e350e2d24741e6aa3f1454898dcf36f2fa56fa`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:35cc1532ab43c2a18daf89683bcc26049067c065679b871636b21758d4fbd807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d40a7c2b5bf86cc4b50070065f3100027e21de85b7afd3b217f86e398d039`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:04:20 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 07 Nov 2026 04:04:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 07 Nov 2026 04:08:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
VOLUME [/spiped]
# Sat, 07 Nov 2026 04:08:05 GMT
WORKDIR /spiped
# Sat, 07 Nov 2026 04:08:05 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 07 Nov 2026 04:08:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Nov 2026 04:08:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8711eff2ac142381294eebe60399feaef8206444b8feb998c7a8653fc302dc25`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c897706e29403414d166a413de7eb7fddd323825e48af9ee04011b62099157`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41118deb4d4ec9b631e27cf6348a64bfeebb362abdb69894bde47e4a88162a3d`  
		Last Modified: Sat, 07 Nov 2026 04:09:32 GMT  
		Size: 9.4 MB (9355136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c7770c07c289caa7ba47dc3e58b9ef6f210adb9e06616e4e617552505deeec`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09cfefc9051798c71e3d51e00f0792ae1f08c071404ae651d64a52297630334`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:6499ea0ebd442c3545d5d2f764af1267463c4c2d79de463c0a7ffb799ebd5477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccdac3a69721902a24ff310c4d5c85a25089828051f77583a05b8e30ea4bc1d`

```dockerfile
```

-	Layers:
	-	`sha256:4748193751057d2c62f7817b4e1b65c30f58606a137bed24ac4d3bc5014608e3`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aaa624800a9011d2d7056b521231f7eb4d129e41d90d28465c35a7d2eceed36`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:cfc4467bf333ff8a49b5e77e92b80a640ad0c10cea13269b75c765a34ca954af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36049634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193702359e6d2f0df0aced8a97146f2677dd1ef1a41efb0082cc3bcb847bbf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:55:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:55:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:55:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:55:52 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:55:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:55:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9f298606f5469abf6226fd3076af755fa5822cec38ae302e52a8be41de1746`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60926960f4793d206e92d52fe44ec91a62a3b9a8604c8db19592aef8dc02215`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ddf91f8c10272110750c8f4cf6b7ec5d5c620cc25fb4cc1419b67a9a2027cc`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 6.1 MB (6123146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ea65264a731e6f754629ef9eb7ede6398cd461bc191fb34a97add0f43dc5e7`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab72a08603ec00fae265bcf34012ec29c07ad9b56437ccc48ad07170a83cc839`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:071ab523185f68ff208882585dbba66d8ecde04d21245010cde87487b89ed6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf7b4ff4833060b27e17908e095900f46b9eadae8af4148768e64b3176d9bc3`

```dockerfile
```

-	Layers:
	-	`sha256:628c426af067407a3dd88e9d69565124756e6d97f0b252c9d8bae4747aea8011`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a20e191097174684494fb73cb22292d1880914f714714a29b86d7738950a58c2`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:7acba2c58083cf5246e055818bd95932bb6a26851e0123543a3c4b9681a07061
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6.4-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:c8814ead20dd0135d43845bdb606434de17dd4d8394a77db82f8cd1419bbf4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017cf7a2498139d32c92843ec0042267d9ed0f5b9be74a16bd1e73a9d88f0d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:09 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:11:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:11:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:11:20 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:11:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acd53230c52bec943981247a905df07d70dc469b82dac9bf38a418fef554944`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbf9f86182e7ab01acb625bac991d1a7f4384ac5ca4fec81b3e099b8d867320`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52b53a35477527b1abac84987377e2f7b4a61a0b1a1234078e4ee114e2cd347`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254df10c93c764806260eea3e3e599d2078b1f26b31ab7ad3544ee5ce5e8506`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5717d2606e46632e930687a1018927c12250db01ee27fe066803833c7e15ccea`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ba58f5dc970b3cfd128f4e3bdb45898784da729523674112c24de415b7de4bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83bb2ce7201d9ed10437f997b4d90bf1f461199a89778928579e27de14caaf6`

```dockerfile
```

-	Layers:
	-	`sha256:fa86b9d5aee07aba15b79553b8ab7d4ed67320708d0f325c1cade2cdf66af211`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b71a8ff2d7c76f094fc79a8a6edfd6d25700299c758df034a23387a14d0197`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:70db8d86b05ec26142aa3d3d8961a775de77f3a621bc1e9298556a107ca23484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2602118fa9da33230ea21f6ef767c71561dd78ec70bba98ca802aa3edc91c737`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:48 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:48 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca1a2659556803f6a1f6ac7d6023ca9f508e3d7125c7b01c95946924b2ed51`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37684309d1b4eb2dd500cfd27f41468d43228f7fcfa563c08f5b640f8dccd8e3`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 8.8 KB (8790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fc4301184250473c315117e1c261152628841241af29638ba9b0000f761d5a`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 91.9 KB (91929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc65774cf43bfde90b2b7d93317e188ef54b067c5dfae29f8f01aab354dd033`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2c948f14287f8c84f3eb612a8cc4a5045675206711a7bcdffe757246dd581d`  
		Last Modified: Thu, 05 Nov 2026 18:49:03 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a8e07addb11eb7b1aabb2dd5fb32ebe27e8da3033fb4d4f84de7412d2ba5c7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68283f9451e454b2fe6cc00e43c70e595e7c4191722af9f1c6270480a25f8cd`

```dockerfile
```

-	Layers:
	-	`sha256:dd196a5d75b963fe9314f6a2063792de81c9861494363261ecca095942aab9fe`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ab66d876a3ca036eda73796574f97547d4de5c3ceefc7ea5a7767e86e2920ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b0075220b5c19f3262bcd77d4e12f9b0517aa8cd9602ea68c9f9259f6c552b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:30 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:40 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d0f0615e8d55c6242d81d13f3db7fffca693c9cbd68870becb41c713fe8019`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e3f2f3661700aab30f46d94b02ae98b5c1f6100ef137252e1eb3dc45a1de78`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 8.8 KB (8817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8265b684072869980c8eddf8c8d3e07321db73132a997574d0b315ba5626e8`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 84.8 KB (84786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8199b54aa825b54f8e4ac23282635f854437170901b91eef0c2ce97669440f`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda927b0712de724ea660dab6136c859fc0eddc89a00ebe34a2960e6716e34f`  
		Last Modified: Thu, 05 Nov 2026 18:48:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0aa6ecee97db325b426397a987ac96f9a0a978c974728b01f8cf059da73b5c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ad275529a3f6f0d250f7a5b7dd0a44019ec27127e76fd41b9a96ccb0e5dfda`

```dockerfile
```

-	Layers:
	-	`sha256:59064eebff5f6739a4626bd342f2333fc6e7d7d904f086ae2300d8ff58f7760e`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94106d1790a743d9aecf4d888ac34ed9f68d2a2987676bc74011be7c36a838fa`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:366d3152f6ae8a2c1bb9cc6aef0528a26a2fbc2b0806610c25cd830cb62dbfd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bed8cb5fc52d4c7a4744ecb4d7a857e45a708ece281dc5b6de8c564adbc4e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:50 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:06:51 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:07:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:07:01 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:07:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:07:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed8812f601e63f3ae2d579822b2ca176eb0b42230acbb2109d22e2be1c99a8d`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe94e4f4b71b1cfcb08ae673678374424b90f412b61a6d870faf0ef3648206`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a9f5ddfd40b137c9e556f63e5963e2b2363476b8361639d04daf1a13f6a274`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 102.5 KB (102525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbe8768f2b4db8a252a2cd0b149c7be784a73134c8a44ed6a776302c957dab8`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfae279723b6acec32f3f4ad5d384a9655279b4a06e3f52bb336397acd247415`  
		Last Modified: Thu, 05 Nov 2026 19:07:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:b23a8ab6e6e4b0875fd5d8a28e8b3aaa3dec523a658350d7c7038f54b15df376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfca6d13959e631b9f334ea9e7448a1b714fa92334d59f5960e25493357e508`

```dockerfile
```

-	Layers:
	-	`sha256:dd1a15271bc9858a87a2c35b58f5794baea4506e0d853fffc823261a0ed5298f`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2b42d1db8e90cc38fddac94c8b48cbbd255237a357e250f3a83ecbcc4038a77`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:c318b0571478e852feb5b4e868f09bb5a8621e23388bfeb5ad9ce197bcfb383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f123fa232629113cd3fcfe9ff59c0b8726a45936d92b8420704df4ca581a5a8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:31:15 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263a3eef9df69172f478cbecf184e19615d2c98fcaf5c4d5a3da329cd922a05`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6278b421c79ae1ed4441d3ce137340a27b51d545b06ba8b61503fc6934778f82`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba8ad68ec67b53b2a247693a26c0fc581705b877a8f91c12fc2f14894ce7495`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 122.7 KB (122667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0471844cad600228f0a90ea657792a5bdd89cec1204267a9f33abf76ddc7aed3`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24cc3c0807bac51471a18717507ad53ba7ceae67b78b75b1f264398cf80a781`  
		Last Modified: Thu, 05 Nov 2026 18:31:21 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:6b5f659dcf7ff13d36b6d2f6ace3e0709f4eee888c5b0d6cfaf4f38cd2df9788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ff6af46d8f6d2a6ee115485fef72ecaa3b67879d6e2b434326b14134e83b38`

```dockerfile
```

-	Layers:
	-	`sha256:7f50c2732b10dd5e78a79a62553481b58d9d92fe68207b27d3742f833a06c6a5`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3cf60335290bbd6f70a6eb2e820264e02f1ef240d37c2efaf09586a01f8a9e`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c3b74127fd762270ea09516893a3a510f2ea6b8380ec818d941dd4a7fef9982c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b700e11283501869f4300663854274d43bbadda041f36f3bbb6891966ebaa8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:20 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 23:38:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 23:38:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 23:38:45 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 23:38:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:38:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b875e42055c8d6b3aaec97f6a84522e08cdf7023ca5a47f402b8daa7ace993da`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336256a0193a36892fe91c980764cff3ff84622befa5704a4f9b43a4ee5b68d4`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 8.8 KB (8795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa1948355a9639a5a35a86cd0b34e2dc70214438b051760716501e3adea582e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bda1f7eb51c3167d00d5e47401f03a9e07d7039c865d5e7eef633f9572a431e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da55f6f39777ca28d8374a3230edf168a0f220873e981c6c48ca066756d97d91`  
		Last Modified: Thu, 05 Nov 2026 23:38:56 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bfb4fdf17be8d322d203e7b8b67fb60c0e09ea2f4247dee2ff9c4fc2c0f913a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc83bb2bbdada5a2f9041b79b683476ca96619264bfc8f172835dc941adfe85`

```dockerfile
```

-	Layers:
	-	`sha256:ddcc8b73c16cc397632839e15fb28bb764aa075907181e0eb66db19c82743c99`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05044ae64e9d40114fce788798d1f0aad9e1514dd48da371b89313f45ff8086`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:dadf18f82eee65e3838fd2eb34f8d72ab72772f49aa93db19a0a13d4e3a8fb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5016a1412ba4ecf671f92adbc6611f14bab16899b6b66da7a9f75a79aeb59f54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 22:36:03 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 11 Nov 2026 22:36:07 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 11 Nov 2026 22:37:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
VOLUME [/spiped]
# Wed, 11 Nov 2026 22:37:53 GMT
WORKDIR /spiped
# Wed, 11 Nov 2026 22:37:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:37:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e05f161df46ae72c8b186f3a9bb5d9ead065043fcddd2b3b4403f0ddddafaa8`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670410ca393732984f1ef705bc50ed09a16cd7c6ac4042388c7ec606981496d7`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 8.8 KB (8807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8a2048e856be5d72b4a87a50e558c3932a3ffde819f63f42f6b94a07a4777`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 99.9 KB (99919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ee1aecd55e1dfeb9366aa3eda304573a03be0f11fce1343e5f306b9a496a07`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a13d85f57cd29bdd1459de372a2094e5b680f2e76b76ac027cb5b954b3a8de`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:07f733e4a076be0883af4641a6b32a2035d51bb14ccae8b78097770f77e4deae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8e9ff4b673b2e7f6a4a7ae453381acce021cbef0bd508e7890454319db3ddc`

```dockerfile
```

-	Layers:
	-	`sha256:a536706220e5af9f592ce1db2a95a2a6695925c17bdb68a94b9bd8b07bb14754`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f94b9fc57452f9dcdb95303ba8ac0e5b3f04bc2c3e86bbcf6fa85fea97b27e`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 14.3 KB (14303 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b09f57888b62efc1cbe09acab75f347b92538b3554788d9e04543dfd43b43a55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3829421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27da4bf2cbd844403f63a249fe6a86cddb47f49a6fa6430f5672cb322e14274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:14:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:14:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:14:22 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:14:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf905e459948a0f823dff09c6fb4e54324cf9cf736c2beb2a1be4dfbe9dda66`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ff33e4b9d337e9d280713326a5e8371625c094921391c35517fa7297d2c4e6`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 8.8 KB (8809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa783ac66a3f2a6cf773250b6d6be238bea1a4336e6ce63cf4c6983bdd82f5`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 98.6 KB (98559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7f9044e5d9d66eda59cbaea85817f5d7a2e2ca2e64432d742a8d46d7cdfa84`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6d4ee01f72cdf5e63a9c5c10186f476a3af211e45301ce0f23a9d11f341d9`  
		Last Modified: Thu, 05 Nov 2026 19:14:33 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:97c0a7161662a2fb8015a6fa218302b603787306deb433a10a1df4456deee4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95915711476b52732e3c71221566386a66e4941d22c85d40865e43f10b9ea0d2`

```dockerfile
```

-	Layers:
	-	`sha256:4590a6964bc71086b68e5b24103a500cd2ed1af028e21d853e9db1c092b785e4`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f1d8bd9114220e9ae5b442e52da6643b78f65ed11772c184a527b21aa5de3d`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:7acba2c58083cf5246e055818bd95932bb6a26851e0123543a3c4b9681a07061
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:c8814ead20dd0135d43845bdb606434de17dd4d8394a77db82f8cd1419bbf4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017cf7a2498139d32c92843ec0042267d9ed0f5b9be74a16bd1e73a9d88f0d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:09 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:11:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:11:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:11:20 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:11:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acd53230c52bec943981247a905df07d70dc469b82dac9bf38a418fef554944`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbf9f86182e7ab01acb625bac991d1a7f4384ac5ca4fec81b3e099b8d867320`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52b53a35477527b1abac84987377e2f7b4a61a0b1a1234078e4ee114e2cd347`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254df10c93c764806260eea3e3e599d2078b1f26b31ab7ad3544ee5ce5e8506`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5717d2606e46632e930687a1018927c12250db01ee27fe066803833c7e15ccea`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ba58f5dc970b3cfd128f4e3bdb45898784da729523674112c24de415b7de4bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83bb2ce7201d9ed10437f997b4d90bf1f461199a89778928579e27de14caaf6`

```dockerfile
```

-	Layers:
	-	`sha256:fa86b9d5aee07aba15b79553b8ab7d4ed67320708d0f325c1cade2cdf66af211`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b71a8ff2d7c76f094fc79a8a6edfd6d25700299c758df034a23387a14d0197`  
		Last Modified: Thu, 05 Nov 2026 19:11:25 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:70db8d86b05ec26142aa3d3d8961a775de77f3a621bc1e9298556a107ca23484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2602118fa9da33230ea21f6ef767c71561dd78ec70bba98ca802aa3edc91c737`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:48 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:48 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca1a2659556803f6a1f6ac7d6023ca9f508e3d7125c7b01c95946924b2ed51`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37684309d1b4eb2dd500cfd27f41468d43228f7fcfa563c08f5b640f8dccd8e3`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 8.8 KB (8790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fc4301184250473c315117e1c261152628841241af29638ba9b0000f761d5a`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 91.9 KB (91929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc65774cf43bfde90b2b7d93317e188ef54b067c5dfae29f8f01aab354dd033`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2c948f14287f8c84f3eb612a8cc4a5045675206711a7bcdffe757246dd581d`  
		Last Modified: Thu, 05 Nov 2026 18:49:03 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a8e07addb11eb7b1aabb2dd5fb32ebe27e8da3033fb4d4f84de7412d2ba5c7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68283f9451e454b2fe6cc00e43c70e595e7c4191722af9f1c6270480a25f8cd`

```dockerfile
```

-	Layers:
	-	`sha256:dd196a5d75b963fe9314f6a2063792de81c9861494363261ecca095942aab9fe`  
		Last Modified: Thu, 05 Nov 2026 18:49:02 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:ab66d876a3ca036eda73796574f97547d4de5c3ceefc7ea5a7767e86e2920ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b0075220b5c19f3262bcd77d4e12f9b0517aa8cd9602ea68c9f9259f6c552b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:30 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:48:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:48:40 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:48:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d0f0615e8d55c6242d81d13f3db7fffca693c9cbd68870becb41c713fe8019`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e3f2f3661700aab30f46d94b02ae98b5c1f6100ef137252e1eb3dc45a1de78`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 8.8 KB (8817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8265b684072869980c8eddf8c8d3e07321db73132a997574d0b315ba5626e8`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 84.8 KB (84786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8199b54aa825b54f8e4ac23282635f854437170901b91eef0c2ce97669440f`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda927b0712de724ea660dab6136c859fc0eddc89a00ebe34a2960e6716e34f`  
		Last Modified: Thu, 05 Nov 2026 18:48:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0aa6ecee97db325b426397a987ac96f9a0a978c974728b01f8cf059da73b5c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ad275529a3f6f0d250f7a5b7dd0a44019ec27127e76fd41b9a96ccb0e5dfda`

```dockerfile
```

-	Layers:
	-	`sha256:59064eebff5f6739a4626bd342f2333fc6e7d7d904f086ae2300d8ff58f7760e`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94106d1790a743d9aecf4d888ac34ed9f68d2a2987676bc74011be7c36a838fa`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:366d3152f6ae8a2c1bb9cc6aef0528a26a2fbc2b0806610c25cd830cb62dbfd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bed8cb5fc52d4c7a4744ecb4d7a857e45a708ece281dc5b6de8c564adbc4e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:50 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:06:51 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:07:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:07:01 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:07:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:07:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed8812f601e63f3ae2d579822b2ca176eb0b42230acbb2109d22e2be1c99a8d`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe94e4f4b71b1cfcb08ae673678374424b90f412b61a6d870faf0ef3648206`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a9f5ddfd40b137c9e556f63e5963e2b2363476b8361639d04daf1a13f6a274`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 102.5 KB (102525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbe8768f2b4db8a252a2cd0b149c7be784a73134c8a44ed6a776302c957dab8`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfae279723b6acec32f3f4ad5d384a9655279b4a06e3f52bb336397acd247415`  
		Last Modified: Thu, 05 Nov 2026 19:07:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:b23a8ab6e6e4b0875fd5d8a28e8b3aaa3dec523a658350d7c7038f54b15df376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfca6d13959e631b9f334ea9e7448a1b714fa92334d59f5960e25493357e508`

```dockerfile
```

-	Layers:
	-	`sha256:dd1a15271bc9858a87a2c35b58f5794baea4506e0d853fffc823261a0ed5298f`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2b42d1db8e90cc38fddac94c8b48cbbd255237a357e250f3a83ecbcc4038a77`  
		Last Modified: Thu, 05 Nov 2026 19:07:05 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:c318b0571478e852feb5b4e868f09bb5a8621e23388bfeb5ad9ce197bcfb383b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f123fa232629113cd3fcfe9ff59c0b8726a45936d92b8420704df4ca581a5a8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 18:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 18:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 18:31:15 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 18:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263a3eef9df69172f478cbecf184e19615d2c98fcaf5c4d5a3da329cd922a05`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6278b421c79ae1ed4441d3ce137340a27b51d545b06ba8b61503fc6934778f82`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba8ad68ec67b53b2a247693a26c0fc581705b877a8f91c12fc2f14894ce7495`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 122.7 KB (122667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0471844cad600228f0a90ea657792a5bdd89cec1204267a9f33abf76ddc7aed3`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24cc3c0807bac51471a18717507ad53ba7ceae67b78b75b1f264398cf80a781`  
		Last Modified: Thu, 05 Nov 2026 18:31:21 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:6b5f659dcf7ff13d36b6d2f6ace3e0709f4eee888c5b0d6cfaf4f38cd2df9788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ff6af46d8f6d2a6ee115485fef72ecaa3b67879d6e2b434326b14134e83b38`

```dockerfile
```

-	Layers:
	-	`sha256:7f50c2732b10dd5e78a79a62553481b58d9d92fe68207b27d3742f833a06c6a5`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3cf60335290bbd6f70a6eb2e820264e02f1ef240d37c2efaf09586a01f8a9e`  
		Last Modified: Thu, 05 Nov 2026 18:31:20 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c3b74127fd762270ea09516893a3a510f2ea6b8380ec818d941dd4a7fef9982c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b700e11283501869f4300663854274d43bbadda041f36f3bbb6891966ebaa8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:20 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 23:38:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 23:38:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 23:38:44 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 23:38:45 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 23:38:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:38:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b875e42055c8d6b3aaec97f6a84522e08cdf7023ca5a47f402b8daa7ace993da`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336256a0193a36892fe91c980764cff3ff84622befa5704a4f9b43a4ee5b68d4`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 8.8 KB (8795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa1948355a9639a5a35a86cd0b34e2dc70214438b051760716501e3adea582e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bda1f7eb51c3167d00d5e47401f03a9e07d7039c865d5e7eef633f9572a431e`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da55f6f39777ca28d8374a3230edf168a0f220873e981c6c48ca066756d97d91`  
		Last Modified: Thu, 05 Nov 2026 23:38:56 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bfb4fdf17be8d322d203e7b8b67fb60c0e09ea2f4247dee2ff9c4fc2c0f913a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc83bb2bbdada5a2f9041b79b683476ca96619264bfc8f172835dc941adfe85`

```dockerfile
```

-	Layers:
	-	`sha256:ddcc8b73c16cc397632839e15fb28bb764aa075907181e0eb66db19c82743c99`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05044ae64e9d40114fce788798d1f0aad9e1514dd48da371b89313f45ff8086`  
		Last Modified: Thu, 05 Nov 2026 23:38:55 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:dadf18f82eee65e3838fd2eb34f8d72ab72772f49aa93db19a0a13d4e3a8fb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5016a1412ba4ecf671f92adbc6611f14bab16899b6b66da7a9f75a79aeb59f54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 22:36:03 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 11 Nov 2026 22:36:07 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 11 Nov 2026 22:37:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
VOLUME [/spiped]
# Wed, 11 Nov 2026 22:37:53 GMT
WORKDIR /spiped
# Wed, 11 Nov 2026 22:37:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:37:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e05f161df46ae72c8b186f3a9bb5d9ead065043fcddd2b3b4403f0ddddafaa8`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670410ca393732984f1ef705bc50ed09a16cd7c6ac4042388c7ec606981496d7`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 8.8 KB (8807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8a2048e856be5d72b4a87a50e558c3932a3ffde819f63f42f6b94a07a4777`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 99.9 KB (99919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ee1aecd55e1dfeb9366aa3eda304573a03be0f11fce1343e5f306b9a496a07`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a13d85f57cd29bdd1459de372a2094e5b680f2e76b76ac027cb5b954b3a8de`  
		Last Modified: Wed, 11 Nov 2026 22:38:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:07f733e4a076be0883af4641a6b32a2035d51bb14ccae8b78097770f77e4deae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8e9ff4b673b2e7f6a4a7ae453381acce021cbef0bd508e7890454319db3ddc`

```dockerfile
```

-	Layers:
	-	`sha256:a536706220e5af9f592ce1db2a95a2a6695925c17bdb68a94b9bd8b07bb14754`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f94b9fc57452f9dcdb95303ba8ac0e5b3f04bc2c3e86bbcf6fa85fea97b27e`  
		Last Modified: Wed, 11 Nov 2026 22:38:24 GMT  
		Size: 14.3 KB (14303 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b09f57888b62efc1cbe09acab75f347b92538b3554788d9e04543dfd43b43a55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3829421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27da4bf2cbd844403f63a249fe6a86cddb47f49a6fa6430f5672cb322e14274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 05 Nov 2026 19:14:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 19:14:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:14:22 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 19:14:22 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 19:14:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf905e459948a0f823dff09c6fb4e54324cf9cf736c2beb2a1be4dfbe9dda66`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ff33e4b9d337e9d280713326a5e8371625c094921391c35517fa7297d2c4e6`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 8.8 KB (8809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa783ac66a3f2a6cf773250b6d6be238bea1a4336e6ce63cf4c6983bdd82f5`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 98.6 KB (98559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7f9044e5d9d66eda59cbaea85817f5d7a2e2ca2e64432d742a8d46d7cdfa84`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6d4ee01f72cdf5e63a9c5c10186f476a3af211e45301ce0f23a9d11f341d9`  
		Last Modified: Thu, 05 Nov 2026 19:14:33 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:97c0a7161662a2fb8015a6fa218302b603787306deb433a10a1df4456deee4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95915711476b52732e3c71221566386a66e4941d22c85d40865e43f10b9ea0d2`

```dockerfile
```

-	Layers:
	-	`sha256:4590a6964bc71086b68e5b24103a500cd2ed1af028e21d853e9db1c092b785e4`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f1d8bd9114220e9ae5b442e52da6643b78f65ed11772c184a527b21aa5de3d`  
		Last Modified: Thu, 05 Nov 2026 19:14:32 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:c3b5fb94d33151f480e6263553d199b3c2a980200ea4d392090d511539da6f63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:e1dbc4a7502a65ea440d5b4177da41a1e107a287bd1ca743a67adf0977df87ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36891615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cadff837bc122b061eb50643a1b85e815b5cf3cdc7b8ef25b837f5cd06898a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:32:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:33:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:33:07 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:33:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:33:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c1790dd5965454db0dd2327d8217aa3a724f8f480dabcf7d4750e7815314e`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5faed6d3715345b91756bf7582a479a3930fd6e7b723e6a201b4547016dd328b`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ec87e27de9545fd067e173c96519b74709dca28f8dc9668c0282db16379db6`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 7.0 MB (7047068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6f0056ae7bb34906cd64839d3dacebfb13c8f1932fe4565fd03c829cc8b460`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d880b89084a66ce18a50f49a5572594771ff7ed59283faa393946d49db3391b`  
		Last Modified: Tue, 24 Nov 2026 04:33:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:f9dbab597301838fc16f61bc48547033dc828618f1cfb5492065324d81b2fcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c386ad861a32d81ec237cebca879e8093e9200cffd872f99a85075e39525680`

```dockerfile
```

-	Layers:
	-	`sha256:5bd2b2fd1b175650db4861e4c489ee1f8fe877823550a9d8734bc43a8c38e417`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 3.6 MB (3633075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c91231db25d8b4869cecf5c19d00f6e9160b6905a1eff206020a90d2dadddde`  
		Last Modified: Tue, 24 Nov 2026 04:33:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:79fbc96b403e2ea77447302383151d79ecc274cd14f1564b4a32b54f02139108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33812395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf5ffe3d1de7853776adad0c003eee463dcf0e5182610e840d094bcfb294549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:39:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:39:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:39:58 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:39:58 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:39:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdbdcf267173ad2e372b8566543dca07e33316b7819ca1bd63371fc7d68e2af`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61b7571093cdadbff6dc6669eb23f2ff63096665e246ee0c6a94bec44dc95e8`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9eec73584775f71667055b0b4cc6f4252300ce37ec267c5e82a8e504ee3e26`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 5.8 MB (5790410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387cc20ad3f6b83411fc818292f698731caa31e4482ba2b22c65f7a5cce8343a`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07953ed7cd122c55a5776747f3bacacb4b31dd9410b3057809e3e1031ed3b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:06 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:add2d26b749d242a946e096c646b660e907634cfd4732746ad979df1904b5202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfcff736c460aa06bb0416dc4270cbdac214ba36811fd5297965d375e96061d`

```dockerfile
```

-	Layers:
	-	`sha256:dbfbbc267168315ac57b103107cc2eab87a1f9822797a228ccd2aa231175251b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d4ed2cb83537df039ccabb0830c1c3bc4798edddea0b40d537568835ce7b4b`  
		Last Modified: Thu, 05 Nov 2026 07:40:05 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:a9741c1718afdbf87bc6aebfe375d862280eaba2a55d918d66a3bbb61a837c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31849652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ea92ba538b78670a1956a492d6468c16eb2f2c92ec01ec2e94c00a1d00d0fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 05:15:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 05:15:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 05:15:31 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 05:15:31 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ea652564d8f6474e18203515702f646209b761cfa2e21f49b5c7849b4f8908`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660d992dda85b805970708c00d9be9ebf44dc465d617ca0bcbd2a8ff63e676d8`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5350db6511ce9801401cf9cc09dc3869e56e213f73fb711c03d7ad9105614fda`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 5.6 MB (5584828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192cab6f316db8b921791d320dec21a42b85c722d9ff82435d3c85a03d62de04`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e985b8211eacba9c048abf6b6940e4006bb7b6324929baa4e6affd84dea8e059`  
		Last Modified: Tue, 24 Nov 2026 05:15:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:702543e629bfcc9b05e5615c8b0d420524cf446238237517a1fab1a1ae739888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7c8a2b1156de16c7389771cc1608047fface670ec409cd273f9e783d637371`

```dockerfile
```

-	Layers:
	-	`sha256:0ecc849e98e042b30330745f941bd3d9685147dea1b52282662999fc60e244e3`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 3.6 MB (3625193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686a662dbedb4b0931f5483b4b6fe2c9bf4ec62ef83add3ab5e3c112ac05c468`  
		Last Modified: Tue, 24 Nov 2026 05:15:38 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5f5981e43bc40d76f978a46d4e29752ee2c38e1b84013c01230d2eb40b7d2154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36435189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028e627509eac7b502d3bc8440a4ef50bf835ea2a6c9f28bf19e356a48578a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:36:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:37:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:37:10 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:37:10 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:37:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94624b8c41d51b29d5a8a52d86c5b507f883f19369564a2069817893327d2857`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b647ea832855085a84fd5c30181c7ccacb2d43c45809d99b171875f8d7a59f4f`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bbeb2a9cd060794e3ad90b1688091ddac6d05746bcdbe01fe6392fe8b5c575`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 6.2 MB (6234788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cf85b5c45966b129c96d867f3bde8f2c0ab50363e56139b66a79fb4f410a63`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1857089c201b1c78c96f112d958c0fe0b418d0af355821d3a31c873e9f6c5d5`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:4e02ae074112ba4293176c2bdc7293320215d958e7a93989ceb48aa69e55c138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c3b8e5bf4c487de760d2e0ea01be24cf1adc1f4d84e9bd78130f2935c945da`

```dockerfile
```

-	Layers:
	-	`sha256:cfd76395d0fe8baea060575e2da2c8fa6623af2b26712ca156a10f50a9139db4`  
		Last Modified: Tue, 24 Nov 2026 04:37:18 GMT  
		Size: 3.6 MB (3628104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aba7d78d913ba077c26e937a53c2530e76ed35d0c9d45633a61af0e1f6865c6`  
		Last Modified: Tue, 24 Nov 2026 04:37:17 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:2df803c194d2902c9c105604bac9e90fb184afb6ee2fa9f7a246d3500a79fd08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37803735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50de5425b8094f2107dd3bb14789fcad9e549897de1e216ecb0390b22bf6a16d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 24 Nov 2026 04:40:55 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 24 Nov 2026 04:41:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
VOLUME [/spiped]
# Tue, 24 Nov 2026 04:41:19 GMT
WORKDIR /spiped
# Tue, 24 Nov 2026 04:41:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:41:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:41:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fd3cf858ba9bfd075aedeffe92d4fee06e68cf2b6fcbaa20223608e4871583`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86b9d87d5f1d9a01b4b5f0867aa3fd54a131afd5a6b6279a9444ffdfd8ed7cb`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797239de2d469afb5ed61dbcdd0f48445157df04c9ed4e608a8c074def06267`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 6.4 MB (6443454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5582a167695528591718fcd1ac59ed1c16429238f9a7f67032b889bfb9cfe5`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e855d33c830c6ecfd2822951b296f86b2cde0186ba36216ee0fc33a67cd428`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:8f27ab2cbd8def841c3b594f3e1a7ac61aeb7119295a79571f5eff2002feb999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46261d8127d2a427370bf8b83f8dd1c0925159f6a5840d8b1e817e2d7a4ebea`

```dockerfile
```

-	Layers:
	-	`sha256:e4ecef937e90823576b3475c67ca0ab5c9ef2fce307a67f2c89dedcdc118892a`  
		Last Modified: Tue, 24 Nov 2026 04:41:26 GMT  
		Size: 3.6 MB (3627202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c7385525bbfab7553ad1be2917d7b3f5f2a69867e4e7f73a8723a849775e3ac`  
		Last Modified: Tue, 24 Nov 2026 04:41:25 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:2d484eae75b3bf9cf940d884ae79ae399dc5b0c082e327b147448a4d61ca0af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40511744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38124623173479896bbf9d63df7cfb4e74c4f8a080597d185587142770bc8143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:06:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 10:06:41 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 10:08:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 10:08:05 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 10:08:09 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 10:08:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:08:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6dbc047dd98e5e0cb5971aff99145a1dfe054b75cbc6cf138d0c68b66ef22d`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125772938ce6d1d954e9ab176386f281ef889e53940ff5345efb5c72ca18c8c1`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0556ae6cdbd81c23eb0505ea19c25f919788880dff8a61b0ea78da3a5ab91cfd`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 6.8 MB (6841727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc5fb8c17fddca4ffc2218b12d5100a2ff575358b91e30876fb89240cf1d3df`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e9546749fee01783ca074057f575f64490c39555bbb07e47c2ba66a5a00ada`  
		Last Modified: Thu, 05 Nov 2026 10:08:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:133b34ed5cafffdb86fe1bc40ba09c92287ef95b7d8586105978b3eafb6114de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a876e7422d2f72ee9b56956d2618cdcba8f5e931e67bab19b895c635309b2985`

```dockerfile
```

-	Layers:
	-	`sha256:3a32d11fbcce2a818987ecad7c9cb4742e1e8b70130f040b402dbd630cd5d4f0`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b290355e4d1f563c547a8ffbe0e350e2d24741e6aa3f1454898dcf36f2fa56fa`  
		Last Modified: Thu, 05 Nov 2026 10:08:24 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:35cc1532ab43c2a18daf89683bcc26049067c065679b871636b21758d4fbd807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d40a7c2b5bf86cc4b50070065f3100027e21de85b7afd3b217f86e398d039`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:04:20 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 07 Nov 2026 04:04:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 07 Nov 2026 04:08:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 07 Nov 2026 04:08:04 GMT
VOLUME [/spiped]
# Sat, 07 Nov 2026 04:08:05 GMT
WORKDIR /spiped
# Sat, 07 Nov 2026 04:08:05 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 07 Nov 2026 04:08:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Nov 2026 04:08:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8711eff2ac142381294eebe60399feaef8206444b8feb998c7a8653fc302dc25`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c897706e29403414d166a413de7eb7fddd323825e48af9ee04011b62099157`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41118deb4d4ec9b631e27cf6348a64bfeebb362abdb69894bde47e4a88162a3d`  
		Last Modified: Sat, 07 Nov 2026 04:09:32 GMT  
		Size: 9.4 MB (9355136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c7770c07c289caa7ba47dc3e58b9ef6f210adb9e06616e4e617552505deeec`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09cfefc9051798c71e3d51e00f0792ae1f08c071404ae651d64a52297630334`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:6499ea0ebd442c3545d5d2f764af1267463c4c2d79de463c0a7ffb799ebd5477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccdac3a69721902a24ff310c4d5c85a25089828051f77583a05b8e30ea4bc1d`

```dockerfile
```

-	Layers:
	-	`sha256:4748193751057d2c62f7817b4e1b65c30f58606a137bed24ac4d3bc5014608e3`  
		Last Modified: Sat, 07 Nov 2026 04:09:31 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aaa624800a9011d2d7056b521231f7eb4d129e41d90d28465c35a7d2eceed36`  
		Last Modified: Sat, 07 Nov 2026 04:09:30 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:cfc4467bf333ff8a49b5e77e92b80a640ad0c10cea13269b75c765a34ca954af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36049634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193702359e6d2f0df0aced8a97146f2677dd1ef1a41efb0082cc3bcb847bbf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:55:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:55:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:55:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:55:52 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:55:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:55:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:55:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9f298606f5469abf6226fd3076af755fa5822cec38ae302e52a8be41de1746`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60926960f4793d206e92d52fe44ec91a62a3b9a8604c8db19592aef8dc02215`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ddf91f8c10272110750c8f4cf6b7ec5d5c620cc25fb4cc1419b67a9a2027cc`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 6.1 MB (6123146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ea65264a731e6f754629ef9eb7ede6398cd461bc191fb34a97add0f43dc5e7`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab72a08603ec00fae265bcf34012ec29c07ad9b56437ccc48ad07170a83cc839`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:071ab523185f68ff208882585dbba66d8ecde04d21245010cde87487b89ed6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf7b4ff4833060b27e17908e095900f46b9eadae8af4148768e64b3176d9bc3`

```dockerfile
```

-	Layers:
	-	`sha256:628c426af067407a3dd88e9d69565124756e6d97f0b252c9d8bae4747aea8011`  
		Last Modified: Thu, 05 Nov 2026 07:56:13 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a20e191097174684494fb73cb22292d1880914f714714a29b86d7738950a58c2`  
		Last Modified: Thu, 05 Nov 2026 07:56:12 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
