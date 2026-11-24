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
