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
$ docker pull spiped@sha256:376b8da3eff5f3dc0cca7865305020923b900add58c7c8f4685cd4f241950cb8
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
$ docker pull spiped@sha256:67ba8a8b1eb0a1b258820fb92529d5660abb9d7f6968e731675cdb361381a35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36906769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda9078e5a6813dfd86986e0adb228d1f2e6ac6df05eb0f46d67f6aa41f984ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:31:55 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:31:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:32:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:32:19 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:32:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9af441e97dbb7df4df37f2f05dd01b6c8b2267f98f3f77d0a28cfd664a7a449`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f6ac472f6b8f06394c36c7387dcd086e10be48ff4d125c03e483a65949afcb`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ed808344fba0778c8a0d63f3bc0788ceaa1147539a5b3c95d088fab2624238`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 7.0 MB (7048267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df81f24363e9b34c6738276179e26823a1388d0da76a22ed8b3b59c583cefe6`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37a1ece0542ed7ca6fd36d0465d14579baaa90ffa6cc62c91c7142a099a4176`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:3fed213575dec31223b420bd966a5b4b88d7bc6970d8cbe2441ce7fb8bd3b9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b279565d03fdb87f8b42c6f37b9e77338328047f14010c218f10abe8e6de67`

```dockerfile
```

-	Layers:
	-	`sha256:e0e7a51578429da5d9912d0c4d18c9768437c8fb36ec1229eb12d9c7786f0ed9`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc95c643e62a3e4485276e9a20bb468034d856ef7661ddf7c1051203dbcb3bf`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
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
$ docker pull spiped@sha256:1324ba8cf4308389e7f501a909db645d7c1b27bc9c74b75e9be7cd067552466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31860612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b0eae726456af37507b8713ccf607ec729de518f986cfa0711377bdf7fb4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:17:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 08:17:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 08:17:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 08:17:46 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 08:17:46 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:17:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958b05b2f3f84db369ea9fc6c4093ac2a73a10059d4b95f8a0277d7fefcca225`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f09b5345c06ec25c54b261d67d3530b61896111bcd70c6c7e08e72c85875dbb`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffab072e138f79f39ab5f89dadf440861116a594aa0a2efd9ced6724756d2a89`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 5.6 MB (5585327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3a8c9445ef1b3c80903dcf7630928d77c96ddca0bb32260c8f989e2757fae2`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5231e18f079e298f31b607a5ad7db4221d0b10a4c33eb6c9e84798a99873095f`  
		Last Modified: Thu, 05 Nov 2026 08:17:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:32cb4799d5d89873f8cb42123e776e58157da5cd1322b2dbdedd0f5ff73f130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490219631aafc3ae850c08f91a4691b1f95095617459774d1080e20067e2ecd1`

```dockerfile
```

-	Layers:
	-	`sha256:d20c34578f0cff31d067ad3dd5335cae25a6ae9a3644afc25a7b06ccd03aa20b`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca9fb1eb0fa33f715a2f6ee2fd4488ac8520a830299bedc8ff9de201002da36`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:90f28c27e8a514c8f478082d714d70bf8022087466190c68bd89825b2ac2a6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e4c60d6870dfe19f6fdeb6d247c717c349a92daea7007c69818f4abd2fe55e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:35:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:35:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:35:53 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:35:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:35:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d412eba183001b1800ed0abda4cc9687a5383011d1fcd25e9c7ae79e40060d`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c85b5459872baa5b7f3ec55f8c0533721604417a0f4defd3cfc38ee811f45a`  
		Last Modified: Thu, 05 Nov 2026 07:36:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b719684b810b0558547fe801c4171b00fe7f0a9a7eb3d80049621588cba021`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 6.2 MB (6234318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ba7be46f08d63b2a99b9494fa2e602a4d75d64dae8f4dbcb7deeaaf414d6c0`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b61560f10140c8f3445f5a803727732f003be1f35ea80d918622a5d990470f`  
		Last Modified: Thu, 05 Nov 2026 07:36:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:cdbbc9fa422945f37d0010c4723c7d99b372006b3641a82c2b6efdf28a284559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0739b558d48954266868764c9d7ebf733adc5f84d697f07fd6d067b1406854be`

```dockerfile
```

-	Layers:
	-	`sha256:17c6c72e4b0fe815b8de6ad75965cbb88d8dbd2df6ed6fd1e1fca5d65d624602`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c1fbdc96ca4d5216976f550fda8f220061ba9f29966b13bfbbdaae3c87f8b59`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 15.1 KB (15115 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6c5a715f8dfe3a0c375d84b4a10026533df5fdddc6d7c347f581f94136a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37817063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad84d436ca73e2c14aa78e40c2dda0962f8151e1fc07f03d32aafb0c4ef3e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:40:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:41:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:41:13 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:41:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cff4eb9cca52b7083f2c7b695d5bb46f97a84aa947685458eeb46f3e55fb1d`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db1eedd6bf55b358dfa0738b3034b09a121ec697bc4050a90b65f91b2fdaca9`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdb6e03cfc67d09e0ae493d888d075636602a2f4aedcf25882c3e0c003528cd`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 6.4 MB (6443932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dafc966dc5f7355e545247151928bdca5d55993c5eb1a02862715351f3c0f8b`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780459744940039532dadc7d1ab938e3154ad359b7113fcd57fb80dea3883df5`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:281aee41d912e70d2f63f63d98cbe6c346337ca06291078fccf834a0851c76a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3d5701b7b19aa09bd61289c88e367b118b6567f2b43e991c77d7ae49a4acd7`

```dockerfile
```

-	Layers:
	-	`sha256:8f347b2d8dbc041e31daf858ff762592bba5c2d840d1770329b2ea447154c9b3`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81078ca6f29dea4b84e7f50950759215d71e32d151cd3aea4aeda96f5e221085`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:dbdc8cb64b3240e1e53ee9ca10792840fe2a17a83536c464098496a5faf5b7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40510509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af71503e4a4a920fbaaaf44d24055164ddde95c5095e6ceebd7cf56b21e19f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:17:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 04:17:18 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 04:18:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 04:18:11 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 04:18:11 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:18:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c532a96a65b6c76818f3aa0bafc5ba30a767fe223cedf4fa11ca7d9e6bb281`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038c135564453b0d89900dcdcf05af84bbbce708048bd2ee87640eff222bae07`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4574058b954f8b1741fcab873a95435265e4b86c57967f5692d102bb638cce08`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 6.8 MB (6841870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92710ced092c85ae4ce916ea20784fe4a7e32485629a8cddff79569c14d6326`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f26c0b0dfae4a37e467e8212c173f2fade12a7114dcf7a00ebb3c7860c9b19`  
		Last Modified: Wed, 28 Oct 2026 04:18:26 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:309608ea6922e9e93f1cf16aca303183d63fcdc461da62ff16487c7935997d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76e660cb8882bd66df972adcf14fef96b24d3ac9056641468f052fd68f2021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a223416248bfa70d635fa12211df0e46e917efca70a49b15e90d426148e794a`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f10264dacefe91a022cc4f939c5d141713036011e492b45046139ee0d4fc55c3`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:70222e376b7f2d6b2d25e486f75644faf5a37663c4df1c670d0441bce0092de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da86f868b845066d9e0c14ca3426072a01a48318cac0ee348c08e0d5c3e1bfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 09:13:38 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sun, 01 Nov 2026 09:14:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sun, 01 Nov 2026 09:17:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
VOLUME [/spiped]
# Sun, 01 Nov 2026 09:17:21 GMT
WORKDIR /spiped
# Sun, 01 Nov 2026 09:17:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Nov 2026 09:17:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b119ae0d8ffcaa8bf95e8eefc917e78491393b3dc40074d38c9077a9b4331e9f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d42f18c680febf7e9bef7f658e8a51ce918ec0b38606e7f1caaf6e6e36f59f8`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62438ca0473e6f9b05aa236083c0e9a325568186717e24fc3cf4310c9ff148c3`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 9.4 MB (9355252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e807d3d144e43fc3aa798501d6ac24905709d55ce9efd9d2f0f3a9fbbac2330f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79335a14fd5077be37a56915cf0dee5a59c8359fa19420eaa760e54849460a03`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:31407f33245e29ec01ec1b0338a5495e7bd275f6d45b89990ce2ff4b9ca2f545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2fbf5ab10eb074c351dcb6c78deed07691ef5726830ad4c546157d92c3b00f`

```dockerfile
```

-	Layers:
	-	`sha256:e2c29d5bd5f529510cf7adb0c7a2e75d388fca3c19db4c78b235a412d88f1428`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d02d1ea9bbb8e72e6d8deb6c579a19796660e5af64dbca31cebb15a7dfe065`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 15.0 KB (15030 bytes)  
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
$ docker pull spiped@sha256:f87b41f6885a06ec29791db5ff19cd96dba3114f2143f36f8b8b111329b02aad
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
$ docker pull spiped@sha256:fae47a0feee759714da5ca5026c2fe921094f916e48a73cc6cbf33be2d74a9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51206e85df9028b0197fe24e3aea8727a21a48517c55b1e986cc83a168ca012d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 22:55:38 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 22:55:47 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 22:55:47 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 22:55:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ccea66733e5e329fc380fbd70602115d61ebf1830fdcdcab04e07ddf2151bd`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6483d800ec6a4572e94005c8f27eccfe31b3f8448602dff138ab12a0d0f315a8`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 8.8 KB (8822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19567fa338cb9246928918d9dedf59e36a93df6b306b2619b16b316f2ce90b0d`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 110.9 KB (110888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da7d8262435708979208484110728d5ad1b02564fef4c6b23bab7d02a316c96`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f5f77f09c7d9217acedb6eeaf5cb0ed080d7383a775f3a502b6ea75e82dcb8`  
		Last Modified: Wed, 21 Oct 2026 22:55:53 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:24dc6af9542df84e97dddf1de7779b545d6bacccb7bc5ef192d623955e49706d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f4d26c89a05424a174916a7bc487b545ef58a4294f584f04570be14d2ec456`

```dockerfile
```

-	Layers:
	-	`sha256:4c73a2016cd897e27f58391aca513540b89f3710d6f6485f74f8ebbbb14b8e97`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee51489b073b9071c4fd8884d01d7e9a6d7e7c26574cc950c84b11ef9436b53`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:835b777890bdd3686a4d6de4e3fb1eaab9cc89bcd81f0f8e685f04d26cf9d163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13c584945777da7e214e19912bd7b849a3f4fa79acf34e2647615cfce2a208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:28:17 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:28:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:28:27 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:28:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e003aafa803fdacf543c0a6c1b4781a7a55be5fc5e2827150d2c18dfc4944b5`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaaf48d551f4183ed3173b58b3a7f847d7264a5a33c90507cbc0e0487877066`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 8.8 KB (8796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfe19d7d50cfbf3563f0d9f80729da34e63d5af72d8b4aab696f7443ff36269`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 91.9 KB (91941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899092046cba52e61819b3671eb8399e9f97863cd20dccd701f9c2f3dde69441`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd6927df458bd7c3a38e1785c3af65c6c96e33fae9e843cfc7e8ba7097da4d`  
		Last Modified: Wed, 21 Oct 2026 23:28:32 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7abc9357498b6107742b1527c613ad8ea2f779a25840e544344a7e3b095c7e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c1566415362b7ab66b94785d44b457e40b841816e6e15161a8024462c3ad7e`

```dockerfile
```

-	Layers:
	-	`sha256:414f26a17784412c3209adfedadb982d31e691c4c39ba38a77575641518caf3d`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:e56ccc35b52d066e9d8976e1e83c441ca1538e098108f78ba37c052e0c717797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30c25e536629275e2fc68512b1b9014916da97a31aa3b3264efcbe2d924c5e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:31:05 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:31:15 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60d9daa50a5b83e1ec0e52c6ddb774bae6f2b16f7a4fbb05fc0a9ffe7039927`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbcc58a98d56444c6b0a0790b7b0ac188fc882fc16ee1e933121b0ebb5b35d3`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584658d3cc15f526d41a755550e40e0f7f984afca5e549b195e52bc3bda38e1a`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 84.8 KB (84781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935329e376c503bd6eba4ba8c149b05abbeb4ad872582b95b42e482ccaf68e98`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa93819aa2d9bb55fa60d3f486512485689cee0456cc39b001db1f62f5e0ce`  
		Last Modified: Wed, 21 Oct 2026 23:31:21 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:18dbe89bad4c36f54f4afcdb289625abd84464432e98b00ab7d72f029f732633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf33b77967437212b05adfffa313c94095cd127650a412f52dcf947741d2c79f`

```dockerfile
```

-	Layers:
	-	`sha256:a6c416b3486c2716c21da9fba066bee54ac74ad103ff668ebc812acd9a953638`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a530e5b93df87e40deae694883e029c696da63a4e5d372c9f1ddc77e3727f451`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e8e51a1778c050c6efcbe5c81790bb392d03f6be74b2338bb16f4bafd5777e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83eb622d27387c7868f534140b4e46f05c9d63f2a13cd21f53897ec4ae8eb9a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:18:57 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:19:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:19:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:19:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5eec00b79fe5f7aa506117865799d803af32965f75321b2a534e9d61b0bfa1`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b003d3789581651be66152a8be0bbb8dfc47ef822a3a6aad6d16fe517ef7af5`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 8.8 KB (8808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249c4a547c9aaf541ffde306f6706750268dc25993dee680c23a9b0e1907b2e`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 102.5 KB (102533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7109008bdad5f8266087a6e90b8a93a74ffd42caf2c0505ac8da9214578b9215`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec486d7b0ccc7715bbd877dbf8c7d3466f256de41bf596bcbe2f6d7d2d557cfe`  
		Last Modified: Wed, 21 Oct 2026 23:19:13 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e72cfdde2fcd845760f11ae7aad412ce0fa38794a173a8d5bc6b258aaa3ae1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ffc2afcd37f58fb10d1e284e749abbba3382f818bc60277a84741e906c9abb`

```dockerfile
```

-	Layers:
	-	`sha256:3b0f11994ccc3f5b722e06b7c987fb17c0e6f657dece6c293d6161f54bc4886c`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e83efaefa25b93609781f9255eadf0e2be845ebff391644ebe8602cb6350cc2`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 14.4 KB (14392 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:4860a48b13f95daa97857b2ba674d8923f3f9c397bfa3ef818d01a874fbe832e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3811857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1ebb3dcf7282f42daa8c509010cfbe731d1813b741ec5f9a66edef9ef358f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:02 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:20:02 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:20:13 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:20:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1001fcf2d5dd2cd24bab5bb41e2aa30dbd64a3c3d58716d666594f05779f9c5`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8303b8659a9cf34d5f77cb56bd2040814171d1718e05eec93a08c9927eb8fde7`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72e37ca3f04ca70ff2ff207216f3d95f6377d0867f5c479876ff6e273f7ea56`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 122.7 KB (122680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c445b3e75892cf903e5fede1d8c69d43ababee56702fdb54c2efebeedc8a9c2`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fd01cb412a9cf725099855c6ac237793397d55907755a1e92a3ad7de13530c`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:03c9c91025afbe21dd96149143300310cf9c6034c529d5d45f7d3f3d942f45ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829f08da011a3067754782f698299417997aec3bc63c33e840a04ec95cb0272a`

```dockerfile
```

-	Layers:
	-	`sha256:6434b1be1aef0376b2dfc7e001a82a0fb4a5264866ca044998793f4cad66e783`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a44e55a67d94720888fdc0cf7c2e109104aa8c93709d54d947116ca1caa96543`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:8130f5af0cbfb690315f294b466959177843230f4e2d8a9a4d39e74a1406f15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cd697cea0db5223fdbd7ce75d9170617c1906b780764f851ef76635d7724aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:36:45 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 22 Oct 2026 13:36:47 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 13:37:06 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 13:37:07 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 13:37:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383eedb718628b41f5453b4f5850e1bb046130d884224627c4a667bea4b54cdb`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de430ac3744da88e48dcdbe1426294069eba010cc1415065a02cb6d0ef57bce7`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d6d13480a6bac609cad818d0cddf50afdcc67c6c4509e006da895188c28206`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 114.8 KB (114776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4207aae685f645a5d5b1f1da62d38b5ca002533f025c9bd0a162ba1512243a90`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a07a7b5ea2d07a3dfcc5b102d88cced14dd6b9e4e733475291d508d5315a69`  
		Last Modified: Thu, 22 Oct 2026 13:37:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f963765042adc10500c34620fdf4df65e6db88e61f14544a77b7cf7833ac8318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00465b139c19e7a29bea330d7d7cddc7d67d654fa3284d878c37e9941e74f292`

```dockerfile
```

-	Layers:
	-	`sha256:1b6e9dcf0d021824973415e1d9ccc35fbcc45e3448b5ed9bf863c33357bc232d`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f107775d2849fe505548948b8d77c45ee40ba368c9c98db8e66a4a3fdb5d622`  
		Last Modified: Thu, 22 Oct 2026 13:37:28 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:53738435200a852984e06e8f55d1185f5af7d5b2477feaee44ddc306b1f55d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df69f77f3af173aafb007cb769c2fd325fd6db778819db2800330f3046947957`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:39:27 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 26 Oct 2026 13:39:31 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 26 Oct 2026 13:41:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
VOLUME [/spiped]
# Mon, 26 Oct 2026 13:41:16 GMT
WORKDIR /spiped
# Mon, 26 Oct 2026 13:41:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:41:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abd10e6004641b9d368d4c58c556a132c6ef8161fb9f7ef9950eba3d44b69f3`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbadca6b144dc832377a024fd79259d6f7cdd7880aed30d91b3615f58fe952b`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 8.8 KB (8819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7469bb2961ca90e0cc2c80e75e99b67276559aeaabcf09693e5b9f79b33123`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 99.9 KB (99934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa44063a678b784a510943e7f6b7dc1241bb88022131ad7dfed90d6c815750e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e2068c7fd2203202fbcad894c947b8e9159d51ea3e5615f3e57abd5216fe5d`  
		Last Modified: Mon, 26 Oct 2026 13:41:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f596c6f8533940d3dfaad1547105638f9dc9469f962d6c09f2d949204e75087e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c0d21073cd8fa926c7d7cca0487df9d52ea37cedd0c249a358e5801ec0a3cf`

```dockerfile
```

-	Layers:
	-	`sha256:bd8472152f717c3faa5f933b1435c32999bd7c59397fd4839eb3f8bd1c1a692e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae28d2ad8bde1e6cc5c02c2a0580fd2a1da70956125f973faba9514979fcf7a`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:7c3c7045a4cd76c6c4f8bcd2902c2573aa6bc1eb311d784c2fbb1b4c9e527c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3828475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dadd7f3d3e769067ac23b085ace4c69d63c074e8f6cf5ddae3308c347a08e6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:39:43 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:39:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:39:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:39:51 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:39:51 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:39:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c3bbbcbfef63767d15533edd8c67cf7c97eae292b66aea682869d819973307`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e1fc1c690eaaad7b98710773fca2b30e7abec926608311870f7eb0403539ea`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 8.8 KB (8810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bbab8ba82cb8e2e5e6f932fdc78f279e57b08ad4f8de72648a4413ae29c25a`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 98.6 KB (98574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c5c2c18995bb7f78c15316c6ade4ef1cadce1dc1d4453a51619a3eef57320e`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702e0e671cfe2187530f14f2c8d183171fea789419e537c3166518b86276d3b1`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06dc0af4db3c917a3fb9b34a2d119dc3b31c9476fed7334a2a6659001a4aa519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1dc8cb63481de845260aa46a44a219baed02101e802033f51ff8072828719d`

```dockerfile
```

-	Layers:
	-	`sha256:1dd478d322d4be702ad1147754a1e64dbfaccd4bb6b60dfcdddf75c2d77369a0`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ac00af6e5270e3572ed157415934c1088b74d6ebdf1a360c7f98a9e0e16364`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:376b8da3eff5f3dc0cca7865305020923b900add58c7c8f4685cd4f241950cb8
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
$ docker pull spiped@sha256:67ba8a8b1eb0a1b258820fb92529d5660abb9d7f6968e731675cdb361381a35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36906769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda9078e5a6813dfd86986e0adb228d1f2e6ac6df05eb0f46d67f6aa41f984ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:31:55 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:31:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:32:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:32:19 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:32:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9af441e97dbb7df4df37f2f05dd01b6c8b2267f98f3f77d0a28cfd664a7a449`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f6ac472f6b8f06394c36c7387dcd086e10be48ff4d125c03e483a65949afcb`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ed808344fba0778c8a0d63f3bc0788ceaa1147539a5b3c95d088fab2624238`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 7.0 MB (7048267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df81f24363e9b34c6738276179e26823a1388d0da76a22ed8b3b59c583cefe6`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37a1ece0542ed7ca6fd36d0465d14579baaa90ffa6cc62c91c7142a099a4176`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:3fed213575dec31223b420bd966a5b4b88d7bc6970d8cbe2441ce7fb8bd3b9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b279565d03fdb87f8b42c6f37b9e77338328047f14010c218f10abe8e6de67`

```dockerfile
```

-	Layers:
	-	`sha256:e0e7a51578429da5d9912d0c4d18c9768437c8fb36ec1229eb12d9c7786f0ed9`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc95c643e62a3e4485276e9a20bb468034d856ef7661ddf7c1051203dbcb3bf`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
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
$ docker pull spiped@sha256:1324ba8cf4308389e7f501a909db645d7c1b27bc9c74b75e9be7cd067552466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31860612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b0eae726456af37507b8713ccf607ec729de518f986cfa0711377bdf7fb4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:17:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 08:17:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 08:17:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 08:17:46 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 08:17:46 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:17:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958b05b2f3f84db369ea9fc6c4093ac2a73a10059d4b95f8a0277d7fefcca225`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f09b5345c06ec25c54b261d67d3530b61896111bcd70c6c7e08e72c85875dbb`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffab072e138f79f39ab5f89dadf440861116a594aa0a2efd9ced6724756d2a89`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 5.6 MB (5585327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3a8c9445ef1b3c80903dcf7630928d77c96ddca0bb32260c8f989e2757fae2`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5231e18f079e298f31b607a5ad7db4221d0b10a4c33eb6c9e84798a99873095f`  
		Last Modified: Thu, 05 Nov 2026 08:17:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:32cb4799d5d89873f8cb42123e776e58157da5cd1322b2dbdedd0f5ff73f130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490219631aafc3ae850c08f91a4691b1f95095617459774d1080e20067e2ecd1`

```dockerfile
```

-	Layers:
	-	`sha256:d20c34578f0cff31d067ad3dd5335cae25a6ae9a3644afc25a7b06ccd03aa20b`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca9fb1eb0fa33f715a2f6ee2fd4488ac8520a830299bedc8ff9de201002da36`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:90f28c27e8a514c8f478082d714d70bf8022087466190c68bd89825b2ac2a6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e4c60d6870dfe19f6fdeb6d247c717c349a92daea7007c69818f4abd2fe55e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:35:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:35:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:35:53 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:35:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:35:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d412eba183001b1800ed0abda4cc9687a5383011d1fcd25e9c7ae79e40060d`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c85b5459872baa5b7f3ec55f8c0533721604417a0f4defd3cfc38ee811f45a`  
		Last Modified: Thu, 05 Nov 2026 07:36:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b719684b810b0558547fe801c4171b00fe7f0a9a7eb3d80049621588cba021`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 6.2 MB (6234318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ba7be46f08d63b2a99b9494fa2e602a4d75d64dae8f4dbcb7deeaaf414d6c0`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b61560f10140c8f3445f5a803727732f003be1f35ea80d918622a5d990470f`  
		Last Modified: Thu, 05 Nov 2026 07:36:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:cdbbc9fa422945f37d0010c4723c7d99b372006b3641a82c2b6efdf28a284559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0739b558d48954266868764c9d7ebf733adc5f84d697f07fd6d067b1406854be`

```dockerfile
```

-	Layers:
	-	`sha256:17c6c72e4b0fe815b8de6ad75965cbb88d8dbd2df6ed6fd1e1fca5d65d624602`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c1fbdc96ca4d5216976f550fda8f220061ba9f29966b13bfbbdaae3c87f8b59`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 15.1 KB (15115 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6c5a715f8dfe3a0c375d84b4a10026533df5fdddc6d7c347f581f94136a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37817063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad84d436ca73e2c14aa78e40c2dda0962f8151e1fc07f03d32aafb0c4ef3e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:40:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:41:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:41:13 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:41:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cff4eb9cca52b7083f2c7b695d5bb46f97a84aa947685458eeb46f3e55fb1d`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db1eedd6bf55b358dfa0738b3034b09a121ec697bc4050a90b65f91b2fdaca9`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdb6e03cfc67d09e0ae493d888d075636602a2f4aedcf25882c3e0c003528cd`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 6.4 MB (6443932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dafc966dc5f7355e545247151928bdca5d55993c5eb1a02862715351f3c0f8b`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780459744940039532dadc7d1ab938e3154ad359b7113fcd57fb80dea3883df5`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:281aee41d912e70d2f63f63d98cbe6c346337ca06291078fccf834a0851c76a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3d5701b7b19aa09bd61289c88e367b118b6567f2b43e991c77d7ae49a4acd7`

```dockerfile
```

-	Layers:
	-	`sha256:8f347b2d8dbc041e31daf858ff762592bba5c2d840d1770329b2ea447154c9b3`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81078ca6f29dea4b84e7f50950759215d71e32d151cd3aea4aeda96f5e221085`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:dbdc8cb64b3240e1e53ee9ca10792840fe2a17a83536c464098496a5faf5b7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40510509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af71503e4a4a920fbaaaf44d24055164ddde95c5095e6ceebd7cf56b21e19f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:17:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 04:17:18 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 04:18:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 04:18:11 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 04:18:11 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:18:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c532a96a65b6c76818f3aa0bafc5ba30a767fe223cedf4fa11ca7d9e6bb281`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038c135564453b0d89900dcdcf05af84bbbce708048bd2ee87640eff222bae07`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4574058b954f8b1741fcab873a95435265e4b86c57967f5692d102bb638cce08`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 6.8 MB (6841870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92710ced092c85ae4ce916ea20784fe4a7e32485629a8cddff79569c14d6326`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f26c0b0dfae4a37e467e8212c173f2fade12a7114dcf7a00ebb3c7860c9b19`  
		Last Modified: Wed, 28 Oct 2026 04:18:26 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:309608ea6922e9e93f1cf16aca303183d63fcdc461da62ff16487c7935997d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76e660cb8882bd66df972adcf14fef96b24d3ac9056641468f052fd68f2021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a223416248bfa70d635fa12211df0e46e917efca70a49b15e90d426148e794a`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f10264dacefe91a022cc4f939c5d141713036011e492b45046139ee0d4fc55c3`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:70222e376b7f2d6b2d25e486f75644faf5a37663c4df1c670d0441bce0092de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da86f868b845066d9e0c14ca3426072a01a48318cac0ee348c08e0d5c3e1bfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 09:13:38 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sun, 01 Nov 2026 09:14:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sun, 01 Nov 2026 09:17:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
VOLUME [/spiped]
# Sun, 01 Nov 2026 09:17:21 GMT
WORKDIR /spiped
# Sun, 01 Nov 2026 09:17:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Nov 2026 09:17:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b119ae0d8ffcaa8bf95e8eefc917e78491393b3dc40074d38c9077a9b4331e9f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d42f18c680febf7e9bef7f658e8a51ce918ec0b38606e7f1caaf6e6e36f59f8`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62438ca0473e6f9b05aa236083c0e9a325568186717e24fc3cf4310c9ff148c3`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 9.4 MB (9355252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e807d3d144e43fc3aa798501d6ac24905709d55ce9efd9d2f0f3a9fbbac2330f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79335a14fd5077be37a56915cf0dee5a59c8359fa19420eaa760e54849460a03`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:31407f33245e29ec01ec1b0338a5495e7bd275f6d45b89990ce2ff4b9ca2f545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2fbf5ab10eb074c351dcb6c78deed07691ef5726830ad4c546157d92c3b00f`

```dockerfile
```

-	Layers:
	-	`sha256:e2c29d5bd5f529510cf7adb0c7a2e75d388fca3c19db4c78b235a412d88f1428`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d02d1ea9bbb8e72e6d8deb6c579a19796660e5af64dbca31cebb15a7dfe065`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 15.0 KB (15030 bytes)  
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
$ docker pull spiped@sha256:f87b41f6885a06ec29791db5ff19cd96dba3114f2143f36f8b8b111329b02aad
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
$ docker pull spiped@sha256:fae47a0feee759714da5ca5026c2fe921094f916e48a73cc6cbf33be2d74a9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51206e85df9028b0197fe24e3aea8727a21a48517c55b1e986cc83a168ca012d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 22:55:38 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 22:55:47 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 22:55:47 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 22:55:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ccea66733e5e329fc380fbd70602115d61ebf1830fdcdcab04e07ddf2151bd`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6483d800ec6a4572e94005c8f27eccfe31b3f8448602dff138ab12a0d0f315a8`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 8.8 KB (8822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19567fa338cb9246928918d9dedf59e36a93df6b306b2619b16b316f2ce90b0d`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 110.9 KB (110888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da7d8262435708979208484110728d5ad1b02564fef4c6b23bab7d02a316c96`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f5f77f09c7d9217acedb6eeaf5cb0ed080d7383a775f3a502b6ea75e82dcb8`  
		Last Modified: Wed, 21 Oct 2026 22:55:53 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:24dc6af9542df84e97dddf1de7779b545d6bacccb7bc5ef192d623955e49706d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f4d26c89a05424a174916a7bc487b545ef58a4294f584f04570be14d2ec456`

```dockerfile
```

-	Layers:
	-	`sha256:4c73a2016cd897e27f58391aca513540b89f3710d6f6485f74f8ebbbb14b8e97`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee51489b073b9071c4fd8884d01d7e9a6d7e7c26574cc950c84b11ef9436b53`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:835b777890bdd3686a4d6de4e3fb1eaab9cc89bcd81f0f8e685f04d26cf9d163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13c584945777da7e214e19912bd7b849a3f4fa79acf34e2647615cfce2a208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:28:17 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:28:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:28:27 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:28:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e003aafa803fdacf543c0a6c1b4781a7a55be5fc5e2827150d2c18dfc4944b5`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaaf48d551f4183ed3173b58b3a7f847d7264a5a33c90507cbc0e0487877066`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 8.8 KB (8796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfe19d7d50cfbf3563f0d9f80729da34e63d5af72d8b4aab696f7443ff36269`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 91.9 KB (91941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899092046cba52e61819b3671eb8399e9f97863cd20dccd701f9c2f3dde69441`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd6927df458bd7c3a38e1785c3af65c6c96e33fae9e843cfc7e8ba7097da4d`  
		Last Modified: Wed, 21 Oct 2026 23:28:32 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7abc9357498b6107742b1527c613ad8ea2f779a25840e544344a7e3b095c7e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c1566415362b7ab66b94785d44b457e40b841816e6e15161a8024462c3ad7e`

```dockerfile
```

-	Layers:
	-	`sha256:414f26a17784412c3209adfedadb982d31e691c4c39ba38a77575641518caf3d`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:e56ccc35b52d066e9d8976e1e83c441ca1538e098108f78ba37c052e0c717797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30c25e536629275e2fc68512b1b9014916da97a31aa3b3264efcbe2d924c5e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:31:05 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:31:15 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60d9daa50a5b83e1ec0e52c6ddb774bae6f2b16f7a4fbb05fc0a9ffe7039927`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbcc58a98d56444c6b0a0790b7b0ac188fc882fc16ee1e933121b0ebb5b35d3`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584658d3cc15f526d41a755550e40e0f7f984afca5e549b195e52bc3bda38e1a`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 84.8 KB (84781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935329e376c503bd6eba4ba8c149b05abbeb4ad872582b95b42e482ccaf68e98`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa93819aa2d9bb55fa60d3f486512485689cee0456cc39b001db1f62f5e0ce`  
		Last Modified: Wed, 21 Oct 2026 23:31:21 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:18dbe89bad4c36f54f4afcdb289625abd84464432e98b00ab7d72f029f732633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf33b77967437212b05adfffa313c94095cd127650a412f52dcf947741d2c79f`

```dockerfile
```

-	Layers:
	-	`sha256:a6c416b3486c2716c21da9fba066bee54ac74ad103ff668ebc812acd9a953638`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a530e5b93df87e40deae694883e029c696da63a4e5d372c9f1ddc77e3727f451`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e8e51a1778c050c6efcbe5c81790bb392d03f6be74b2338bb16f4bafd5777e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83eb622d27387c7868f534140b4e46f05c9d63f2a13cd21f53897ec4ae8eb9a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:18:57 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:19:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:19:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:19:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5eec00b79fe5f7aa506117865799d803af32965f75321b2a534e9d61b0bfa1`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b003d3789581651be66152a8be0bbb8dfc47ef822a3a6aad6d16fe517ef7af5`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 8.8 KB (8808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249c4a547c9aaf541ffde306f6706750268dc25993dee680c23a9b0e1907b2e`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 102.5 KB (102533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7109008bdad5f8266087a6e90b8a93a74ffd42caf2c0505ac8da9214578b9215`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec486d7b0ccc7715bbd877dbf8c7d3466f256de41bf596bcbe2f6d7d2d557cfe`  
		Last Modified: Wed, 21 Oct 2026 23:19:13 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e72cfdde2fcd845760f11ae7aad412ce0fa38794a173a8d5bc6b258aaa3ae1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ffc2afcd37f58fb10d1e284e749abbba3382f818bc60277a84741e906c9abb`

```dockerfile
```

-	Layers:
	-	`sha256:3b0f11994ccc3f5b722e06b7c987fb17c0e6f657dece6c293d6161f54bc4886c`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e83efaefa25b93609781f9255eadf0e2be845ebff391644ebe8602cb6350cc2`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 14.4 KB (14392 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:4860a48b13f95daa97857b2ba674d8923f3f9c397bfa3ef818d01a874fbe832e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3811857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1ebb3dcf7282f42daa8c509010cfbe731d1813b741ec5f9a66edef9ef358f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:02 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:20:02 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:20:13 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:20:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1001fcf2d5dd2cd24bab5bb41e2aa30dbd64a3c3d58716d666594f05779f9c5`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8303b8659a9cf34d5f77cb56bd2040814171d1718e05eec93a08c9927eb8fde7`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72e37ca3f04ca70ff2ff207216f3d95f6377d0867f5c479876ff6e273f7ea56`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 122.7 KB (122680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c445b3e75892cf903e5fede1d8c69d43ababee56702fdb54c2efebeedc8a9c2`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fd01cb412a9cf725099855c6ac237793397d55907755a1e92a3ad7de13530c`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:03c9c91025afbe21dd96149143300310cf9c6034c529d5d45f7d3f3d942f45ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829f08da011a3067754782f698299417997aec3bc63c33e840a04ec95cb0272a`

```dockerfile
```

-	Layers:
	-	`sha256:6434b1be1aef0376b2dfc7e001a82a0fb4a5264866ca044998793f4cad66e783`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a44e55a67d94720888fdc0cf7c2e109104aa8c93709d54d947116ca1caa96543`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:8130f5af0cbfb690315f294b466959177843230f4e2d8a9a4d39e74a1406f15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cd697cea0db5223fdbd7ce75d9170617c1906b780764f851ef76635d7724aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:36:45 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 22 Oct 2026 13:36:47 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 13:37:06 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 13:37:07 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 13:37:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383eedb718628b41f5453b4f5850e1bb046130d884224627c4a667bea4b54cdb`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de430ac3744da88e48dcdbe1426294069eba010cc1415065a02cb6d0ef57bce7`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d6d13480a6bac609cad818d0cddf50afdcc67c6c4509e006da895188c28206`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 114.8 KB (114776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4207aae685f645a5d5b1f1da62d38b5ca002533f025c9bd0a162ba1512243a90`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a07a7b5ea2d07a3dfcc5b102d88cced14dd6b9e4e733475291d508d5315a69`  
		Last Modified: Thu, 22 Oct 2026 13:37:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f963765042adc10500c34620fdf4df65e6db88e61f14544a77b7cf7833ac8318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00465b139c19e7a29bea330d7d7cddc7d67d654fa3284d878c37e9941e74f292`

```dockerfile
```

-	Layers:
	-	`sha256:1b6e9dcf0d021824973415e1d9ccc35fbcc45e3448b5ed9bf863c33357bc232d`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f107775d2849fe505548948b8d77c45ee40ba368c9c98db8e66a4a3fdb5d622`  
		Last Modified: Thu, 22 Oct 2026 13:37:28 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:53738435200a852984e06e8f55d1185f5af7d5b2477feaee44ddc306b1f55d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df69f77f3af173aafb007cb769c2fd325fd6db778819db2800330f3046947957`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:39:27 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 26 Oct 2026 13:39:31 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 26 Oct 2026 13:41:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
VOLUME [/spiped]
# Mon, 26 Oct 2026 13:41:16 GMT
WORKDIR /spiped
# Mon, 26 Oct 2026 13:41:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:41:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abd10e6004641b9d368d4c58c556a132c6ef8161fb9f7ef9950eba3d44b69f3`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbadca6b144dc832377a024fd79259d6f7cdd7880aed30d91b3615f58fe952b`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 8.8 KB (8819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7469bb2961ca90e0cc2c80e75e99b67276559aeaabcf09693e5b9f79b33123`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 99.9 KB (99934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa44063a678b784a510943e7f6b7dc1241bb88022131ad7dfed90d6c815750e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e2068c7fd2203202fbcad894c947b8e9159d51ea3e5615f3e57abd5216fe5d`  
		Last Modified: Mon, 26 Oct 2026 13:41:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f596c6f8533940d3dfaad1547105638f9dc9469f962d6c09f2d949204e75087e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c0d21073cd8fa926c7d7cca0487df9d52ea37cedd0c249a358e5801ec0a3cf`

```dockerfile
```

-	Layers:
	-	`sha256:bd8472152f717c3faa5f933b1435c32999bd7c59397fd4839eb3f8bd1c1a692e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae28d2ad8bde1e6cc5c02c2a0580fd2a1da70956125f973faba9514979fcf7a`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:7c3c7045a4cd76c6c4f8bcd2902c2573aa6bc1eb311d784c2fbb1b4c9e527c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3828475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dadd7f3d3e769067ac23b085ace4c69d63c074e8f6cf5ddae3308c347a08e6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:39:43 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:39:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:39:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:39:51 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:39:51 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:39:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c3bbbcbfef63767d15533edd8c67cf7c97eae292b66aea682869d819973307`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e1fc1c690eaaad7b98710773fca2b30e7abec926608311870f7eb0403539ea`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 8.8 KB (8810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bbab8ba82cb8e2e5e6f932fdc78f279e57b08ad4f8de72648a4413ae29c25a`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 98.6 KB (98574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c5c2c18995bb7f78c15316c6ade4ef1cadce1dc1d4453a51619a3eef57320e`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702e0e671cfe2187530f14f2c8d183171fea789419e537c3166518b86276d3b1`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06dc0af4db3c917a3fb9b34a2d119dc3b31c9476fed7334a2a6659001a4aa519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1dc8cb63481de845260aa46a44a219baed02101e802033f51ff8072828719d`

```dockerfile
```

-	Layers:
	-	`sha256:1dd478d322d4be702ad1147754a1e64dbfaccd4bb6b60dfcdddf75c2d77369a0`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ac00af6e5270e3572ed157415934c1088b74d6ebdf1a360c7f98a9e0e16364`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:376b8da3eff5f3dc0cca7865305020923b900add58c7c8f4685cd4f241950cb8
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
$ docker pull spiped@sha256:67ba8a8b1eb0a1b258820fb92529d5660abb9d7f6968e731675cdb361381a35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36906769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda9078e5a6813dfd86986e0adb228d1f2e6ac6df05eb0f46d67f6aa41f984ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:31:55 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:31:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:32:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:32:19 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:32:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9af441e97dbb7df4df37f2f05dd01b6c8b2267f98f3f77d0a28cfd664a7a449`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f6ac472f6b8f06394c36c7387dcd086e10be48ff4d125c03e483a65949afcb`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ed808344fba0778c8a0d63f3bc0788ceaa1147539a5b3c95d088fab2624238`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 7.0 MB (7048267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df81f24363e9b34c6738276179e26823a1388d0da76a22ed8b3b59c583cefe6`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37a1ece0542ed7ca6fd36d0465d14579baaa90ffa6cc62c91c7142a099a4176`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:3fed213575dec31223b420bd966a5b4b88d7bc6970d8cbe2441ce7fb8bd3b9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b279565d03fdb87f8b42c6f37b9e77338328047f14010c218f10abe8e6de67`

```dockerfile
```

-	Layers:
	-	`sha256:e0e7a51578429da5d9912d0c4d18c9768437c8fb36ec1229eb12d9c7786f0ed9`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc95c643e62a3e4485276e9a20bb468034d856ef7661ddf7c1051203dbcb3bf`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
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
$ docker pull spiped@sha256:1324ba8cf4308389e7f501a909db645d7c1b27bc9c74b75e9be7cd067552466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31860612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b0eae726456af37507b8713ccf607ec729de518f986cfa0711377bdf7fb4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:17:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 08:17:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 08:17:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 08:17:46 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 08:17:46 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:17:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958b05b2f3f84db369ea9fc6c4093ac2a73a10059d4b95f8a0277d7fefcca225`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f09b5345c06ec25c54b261d67d3530b61896111bcd70c6c7e08e72c85875dbb`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffab072e138f79f39ab5f89dadf440861116a594aa0a2efd9ced6724756d2a89`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 5.6 MB (5585327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3a8c9445ef1b3c80903dcf7630928d77c96ddca0bb32260c8f989e2757fae2`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5231e18f079e298f31b607a5ad7db4221d0b10a4c33eb6c9e84798a99873095f`  
		Last Modified: Thu, 05 Nov 2026 08:17:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:32cb4799d5d89873f8cb42123e776e58157da5cd1322b2dbdedd0f5ff73f130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490219631aafc3ae850c08f91a4691b1f95095617459774d1080e20067e2ecd1`

```dockerfile
```

-	Layers:
	-	`sha256:d20c34578f0cff31d067ad3dd5335cae25a6ae9a3644afc25a7b06ccd03aa20b`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca9fb1eb0fa33f715a2f6ee2fd4488ac8520a830299bedc8ff9de201002da36`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:90f28c27e8a514c8f478082d714d70bf8022087466190c68bd89825b2ac2a6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e4c60d6870dfe19f6fdeb6d247c717c349a92daea7007c69818f4abd2fe55e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:35:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:35:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:35:53 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:35:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:35:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d412eba183001b1800ed0abda4cc9687a5383011d1fcd25e9c7ae79e40060d`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c85b5459872baa5b7f3ec55f8c0533721604417a0f4defd3cfc38ee811f45a`  
		Last Modified: Thu, 05 Nov 2026 07:36:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b719684b810b0558547fe801c4171b00fe7f0a9a7eb3d80049621588cba021`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 6.2 MB (6234318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ba7be46f08d63b2a99b9494fa2e602a4d75d64dae8f4dbcb7deeaaf414d6c0`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b61560f10140c8f3445f5a803727732f003be1f35ea80d918622a5d990470f`  
		Last Modified: Thu, 05 Nov 2026 07:36:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:cdbbc9fa422945f37d0010c4723c7d99b372006b3641a82c2b6efdf28a284559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0739b558d48954266868764c9d7ebf733adc5f84d697f07fd6d067b1406854be`

```dockerfile
```

-	Layers:
	-	`sha256:17c6c72e4b0fe815b8de6ad75965cbb88d8dbd2df6ed6fd1e1fca5d65d624602`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c1fbdc96ca4d5216976f550fda8f220061ba9f29966b13bfbbdaae3c87f8b59`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 15.1 KB (15115 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6c5a715f8dfe3a0c375d84b4a10026533df5fdddc6d7c347f581f94136a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37817063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad84d436ca73e2c14aa78e40c2dda0962f8151e1fc07f03d32aafb0c4ef3e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:40:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:41:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:41:13 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:41:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cff4eb9cca52b7083f2c7b695d5bb46f97a84aa947685458eeb46f3e55fb1d`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db1eedd6bf55b358dfa0738b3034b09a121ec697bc4050a90b65f91b2fdaca9`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdb6e03cfc67d09e0ae493d888d075636602a2f4aedcf25882c3e0c003528cd`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 6.4 MB (6443932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dafc966dc5f7355e545247151928bdca5d55993c5eb1a02862715351f3c0f8b`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780459744940039532dadc7d1ab938e3154ad359b7113fcd57fb80dea3883df5`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:281aee41d912e70d2f63f63d98cbe6c346337ca06291078fccf834a0851c76a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3d5701b7b19aa09bd61289c88e367b118b6567f2b43e991c77d7ae49a4acd7`

```dockerfile
```

-	Layers:
	-	`sha256:8f347b2d8dbc041e31daf858ff762592bba5c2d840d1770329b2ea447154c9b3`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81078ca6f29dea4b84e7f50950759215d71e32d151cd3aea4aeda96f5e221085`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:dbdc8cb64b3240e1e53ee9ca10792840fe2a17a83536c464098496a5faf5b7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40510509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af71503e4a4a920fbaaaf44d24055164ddde95c5095e6ceebd7cf56b21e19f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:17:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 04:17:18 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 04:18:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 04:18:11 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 04:18:11 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:18:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c532a96a65b6c76818f3aa0bafc5ba30a767fe223cedf4fa11ca7d9e6bb281`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038c135564453b0d89900dcdcf05af84bbbce708048bd2ee87640eff222bae07`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4574058b954f8b1741fcab873a95435265e4b86c57967f5692d102bb638cce08`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 6.8 MB (6841870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92710ced092c85ae4ce916ea20784fe4a7e32485629a8cddff79569c14d6326`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f26c0b0dfae4a37e467e8212c173f2fade12a7114dcf7a00ebb3c7860c9b19`  
		Last Modified: Wed, 28 Oct 2026 04:18:26 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:309608ea6922e9e93f1cf16aca303183d63fcdc461da62ff16487c7935997d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76e660cb8882bd66df972adcf14fef96b24d3ac9056641468f052fd68f2021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a223416248bfa70d635fa12211df0e46e917efca70a49b15e90d426148e794a`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f10264dacefe91a022cc4f939c5d141713036011e492b45046139ee0d4fc55c3`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:70222e376b7f2d6b2d25e486f75644faf5a37663c4df1c670d0441bce0092de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da86f868b845066d9e0c14ca3426072a01a48318cac0ee348c08e0d5c3e1bfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 09:13:38 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sun, 01 Nov 2026 09:14:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sun, 01 Nov 2026 09:17:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
VOLUME [/spiped]
# Sun, 01 Nov 2026 09:17:21 GMT
WORKDIR /spiped
# Sun, 01 Nov 2026 09:17:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Nov 2026 09:17:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b119ae0d8ffcaa8bf95e8eefc917e78491393b3dc40074d38c9077a9b4331e9f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d42f18c680febf7e9bef7f658e8a51ce918ec0b38606e7f1caaf6e6e36f59f8`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62438ca0473e6f9b05aa236083c0e9a325568186717e24fc3cf4310c9ff148c3`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 9.4 MB (9355252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e807d3d144e43fc3aa798501d6ac24905709d55ce9efd9d2f0f3a9fbbac2330f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79335a14fd5077be37a56915cf0dee5a59c8359fa19420eaa760e54849460a03`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:31407f33245e29ec01ec1b0338a5495e7bd275f6d45b89990ce2ff4b9ca2f545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2fbf5ab10eb074c351dcb6c78deed07691ef5726830ad4c546157d92c3b00f`

```dockerfile
```

-	Layers:
	-	`sha256:e2c29d5bd5f529510cf7adb0c7a2e75d388fca3c19db4c78b235a412d88f1428`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d02d1ea9bbb8e72e6d8deb6c579a19796660e5af64dbca31cebb15a7dfe065`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 15.0 KB (15030 bytes)  
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
$ docker pull spiped@sha256:f87b41f6885a06ec29791db5ff19cd96dba3114f2143f36f8b8b111329b02aad
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
$ docker pull spiped@sha256:fae47a0feee759714da5ca5026c2fe921094f916e48a73cc6cbf33be2d74a9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51206e85df9028b0197fe24e3aea8727a21a48517c55b1e986cc83a168ca012d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 22:55:38 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 22:55:47 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 22:55:47 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 22:55:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ccea66733e5e329fc380fbd70602115d61ebf1830fdcdcab04e07ddf2151bd`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6483d800ec6a4572e94005c8f27eccfe31b3f8448602dff138ab12a0d0f315a8`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 8.8 KB (8822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19567fa338cb9246928918d9dedf59e36a93df6b306b2619b16b316f2ce90b0d`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 110.9 KB (110888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da7d8262435708979208484110728d5ad1b02564fef4c6b23bab7d02a316c96`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f5f77f09c7d9217acedb6eeaf5cb0ed080d7383a775f3a502b6ea75e82dcb8`  
		Last Modified: Wed, 21 Oct 2026 22:55:53 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:24dc6af9542df84e97dddf1de7779b545d6bacccb7bc5ef192d623955e49706d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f4d26c89a05424a174916a7bc487b545ef58a4294f584f04570be14d2ec456`

```dockerfile
```

-	Layers:
	-	`sha256:4c73a2016cd897e27f58391aca513540b89f3710d6f6485f74f8ebbbb14b8e97`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee51489b073b9071c4fd8884d01d7e9a6d7e7c26574cc950c84b11ef9436b53`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:835b777890bdd3686a4d6de4e3fb1eaab9cc89bcd81f0f8e685f04d26cf9d163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13c584945777da7e214e19912bd7b849a3f4fa79acf34e2647615cfce2a208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:28:17 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:28:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:28:27 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:28:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e003aafa803fdacf543c0a6c1b4781a7a55be5fc5e2827150d2c18dfc4944b5`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaaf48d551f4183ed3173b58b3a7f847d7264a5a33c90507cbc0e0487877066`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 8.8 KB (8796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfe19d7d50cfbf3563f0d9f80729da34e63d5af72d8b4aab696f7443ff36269`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 91.9 KB (91941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899092046cba52e61819b3671eb8399e9f97863cd20dccd701f9c2f3dde69441`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd6927df458bd7c3a38e1785c3af65c6c96e33fae9e843cfc7e8ba7097da4d`  
		Last Modified: Wed, 21 Oct 2026 23:28:32 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7abc9357498b6107742b1527c613ad8ea2f779a25840e544344a7e3b095c7e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c1566415362b7ab66b94785d44b457e40b841816e6e15161a8024462c3ad7e`

```dockerfile
```

-	Layers:
	-	`sha256:414f26a17784412c3209adfedadb982d31e691c4c39ba38a77575641518caf3d`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:e56ccc35b52d066e9d8976e1e83c441ca1538e098108f78ba37c052e0c717797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30c25e536629275e2fc68512b1b9014916da97a31aa3b3264efcbe2d924c5e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:31:05 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:31:15 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60d9daa50a5b83e1ec0e52c6ddb774bae6f2b16f7a4fbb05fc0a9ffe7039927`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbcc58a98d56444c6b0a0790b7b0ac188fc882fc16ee1e933121b0ebb5b35d3`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584658d3cc15f526d41a755550e40e0f7f984afca5e549b195e52bc3bda38e1a`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 84.8 KB (84781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935329e376c503bd6eba4ba8c149b05abbeb4ad872582b95b42e482ccaf68e98`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa93819aa2d9bb55fa60d3f486512485689cee0456cc39b001db1f62f5e0ce`  
		Last Modified: Wed, 21 Oct 2026 23:31:21 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:18dbe89bad4c36f54f4afcdb289625abd84464432e98b00ab7d72f029f732633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf33b77967437212b05adfffa313c94095cd127650a412f52dcf947741d2c79f`

```dockerfile
```

-	Layers:
	-	`sha256:a6c416b3486c2716c21da9fba066bee54ac74ad103ff668ebc812acd9a953638`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a530e5b93df87e40deae694883e029c696da63a4e5d372c9f1ddc77e3727f451`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e8e51a1778c050c6efcbe5c81790bb392d03f6be74b2338bb16f4bafd5777e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83eb622d27387c7868f534140b4e46f05c9d63f2a13cd21f53897ec4ae8eb9a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:18:57 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:19:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:19:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:19:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5eec00b79fe5f7aa506117865799d803af32965f75321b2a534e9d61b0bfa1`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b003d3789581651be66152a8be0bbb8dfc47ef822a3a6aad6d16fe517ef7af5`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 8.8 KB (8808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249c4a547c9aaf541ffde306f6706750268dc25993dee680c23a9b0e1907b2e`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 102.5 KB (102533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7109008bdad5f8266087a6e90b8a93a74ffd42caf2c0505ac8da9214578b9215`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec486d7b0ccc7715bbd877dbf8c7d3466f256de41bf596bcbe2f6d7d2d557cfe`  
		Last Modified: Wed, 21 Oct 2026 23:19:13 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e72cfdde2fcd845760f11ae7aad412ce0fa38794a173a8d5bc6b258aaa3ae1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ffc2afcd37f58fb10d1e284e749abbba3382f818bc60277a84741e906c9abb`

```dockerfile
```

-	Layers:
	-	`sha256:3b0f11994ccc3f5b722e06b7c987fb17c0e6f657dece6c293d6161f54bc4886c`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e83efaefa25b93609781f9255eadf0e2be845ebff391644ebe8602cb6350cc2`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 14.4 KB (14392 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:4860a48b13f95daa97857b2ba674d8923f3f9c397bfa3ef818d01a874fbe832e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3811857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1ebb3dcf7282f42daa8c509010cfbe731d1813b741ec5f9a66edef9ef358f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:02 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:20:02 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:20:13 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:20:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1001fcf2d5dd2cd24bab5bb41e2aa30dbd64a3c3d58716d666594f05779f9c5`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8303b8659a9cf34d5f77cb56bd2040814171d1718e05eec93a08c9927eb8fde7`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72e37ca3f04ca70ff2ff207216f3d95f6377d0867f5c479876ff6e273f7ea56`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 122.7 KB (122680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c445b3e75892cf903e5fede1d8c69d43ababee56702fdb54c2efebeedc8a9c2`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fd01cb412a9cf725099855c6ac237793397d55907755a1e92a3ad7de13530c`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:03c9c91025afbe21dd96149143300310cf9c6034c529d5d45f7d3f3d942f45ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829f08da011a3067754782f698299417997aec3bc63c33e840a04ec95cb0272a`

```dockerfile
```

-	Layers:
	-	`sha256:6434b1be1aef0376b2dfc7e001a82a0fb4a5264866ca044998793f4cad66e783`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a44e55a67d94720888fdc0cf7c2e109104aa8c93709d54d947116ca1caa96543`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:8130f5af0cbfb690315f294b466959177843230f4e2d8a9a4d39e74a1406f15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cd697cea0db5223fdbd7ce75d9170617c1906b780764f851ef76635d7724aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:36:45 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 22 Oct 2026 13:36:47 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 13:37:06 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 13:37:07 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 13:37:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383eedb718628b41f5453b4f5850e1bb046130d884224627c4a667bea4b54cdb`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de430ac3744da88e48dcdbe1426294069eba010cc1415065a02cb6d0ef57bce7`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d6d13480a6bac609cad818d0cddf50afdcc67c6c4509e006da895188c28206`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 114.8 KB (114776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4207aae685f645a5d5b1f1da62d38b5ca002533f025c9bd0a162ba1512243a90`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a07a7b5ea2d07a3dfcc5b102d88cced14dd6b9e4e733475291d508d5315a69`  
		Last Modified: Thu, 22 Oct 2026 13:37:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f963765042adc10500c34620fdf4df65e6db88e61f14544a77b7cf7833ac8318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00465b139c19e7a29bea330d7d7cddc7d67d654fa3284d878c37e9941e74f292`

```dockerfile
```

-	Layers:
	-	`sha256:1b6e9dcf0d021824973415e1d9ccc35fbcc45e3448b5ed9bf863c33357bc232d`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f107775d2849fe505548948b8d77c45ee40ba368c9c98db8e66a4a3fdb5d622`  
		Last Modified: Thu, 22 Oct 2026 13:37:28 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:53738435200a852984e06e8f55d1185f5af7d5b2477feaee44ddc306b1f55d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df69f77f3af173aafb007cb769c2fd325fd6db778819db2800330f3046947957`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:39:27 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 26 Oct 2026 13:39:31 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 26 Oct 2026 13:41:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
VOLUME [/spiped]
# Mon, 26 Oct 2026 13:41:16 GMT
WORKDIR /spiped
# Mon, 26 Oct 2026 13:41:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:41:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abd10e6004641b9d368d4c58c556a132c6ef8161fb9f7ef9950eba3d44b69f3`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbadca6b144dc832377a024fd79259d6f7cdd7880aed30d91b3615f58fe952b`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 8.8 KB (8819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7469bb2961ca90e0cc2c80e75e99b67276559aeaabcf09693e5b9f79b33123`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 99.9 KB (99934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa44063a678b784a510943e7f6b7dc1241bb88022131ad7dfed90d6c815750e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e2068c7fd2203202fbcad894c947b8e9159d51ea3e5615f3e57abd5216fe5d`  
		Last Modified: Mon, 26 Oct 2026 13:41:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f596c6f8533940d3dfaad1547105638f9dc9469f962d6c09f2d949204e75087e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c0d21073cd8fa926c7d7cca0487df9d52ea37cedd0c249a358e5801ec0a3cf`

```dockerfile
```

-	Layers:
	-	`sha256:bd8472152f717c3faa5f933b1435c32999bd7c59397fd4839eb3f8bd1c1a692e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae28d2ad8bde1e6cc5c02c2a0580fd2a1da70956125f973faba9514979fcf7a`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:7c3c7045a4cd76c6c4f8bcd2902c2573aa6bc1eb311d784c2fbb1b4c9e527c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3828475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dadd7f3d3e769067ac23b085ace4c69d63c074e8f6cf5ddae3308c347a08e6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:39:43 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:39:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:39:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:39:51 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:39:51 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:39:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c3bbbcbfef63767d15533edd8c67cf7c97eae292b66aea682869d819973307`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e1fc1c690eaaad7b98710773fca2b30e7abec926608311870f7eb0403539ea`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 8.8 KB (8810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bbab8ba82cb8e2e5e6f932fdc78f279e57b08ad4f8de72648a4413ae29c25a`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 98.6 KB (98574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c5c2c18995bb7f78c15316c6ade4ef1cadce1dc1d4453a51619a3eef57320e`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702e0e671cfe2187530f14f2c8d183171fea789419e537c3166518b86276d3b1`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06dc0af4db3c917a3fb9b34a2d119dc3b31c9476fed7334a2a6659001a4aa519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1dc8cb63481de845260aa46a44a219baed02101e802033f51ff8072828719d`

```dockerfile
```

-	Layers:
	-	`sha256:1dd478d322d4be702ad1147754a1e64dbfaccd4bb6b60dfcdddf75c2d77369a0`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ac00af6e5270e3572ed157415934c1088b74d6ebdf1a360c7f98a9e0e16364`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:f87b41f6885a06ec29791db5ff19cd96dba3114f2143f36f8b8b111329b02aad
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
$ docker pull spiped@sha256:fae47a0feee759714da5ca5026c2fe921094f916e48a73cc6cbf33be2d74a9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51206e85df9028b0197fe24e3aea8727a21a48517c55b1e986cc83a168ca012d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 22:55:38 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 22:55:47 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 22:55:47 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 22:55:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ccea66733e5e329fc380fbd70602115d61ebf1830fdcdcab04e07ddf2151bd`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6483d800ec6a4572e94005c8f27eccfe31b3f8448602dff138ab12a0d0f315a8`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 8.8 KB (8822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19567fa338cb9246928918d9dedf59e36a93df6b306b2619b16b316f2ce90b0d`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 110.9 KB (110888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da7d8262435708979208484110728d5ad1b02564fef4c6b23bab7d02a316c96`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f5f77f09c7d9217acedb6eeaf5cb0ed080d7383a775f3a502b6ea75e82dcb8`  
		Last Modified: Wed, 21 Oct 2026 22:55:53 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:24dc6af9542df84e97dddf1de7779b545d6bacccb7bc5ef192d623955e49706d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f4d26c89a05424a174916a7bc487b545ef58a4294f584f04570be14d2ec456`

```dockerfile
```

-	Layers:
	-	`sha256:4c73a2016cd897e27f58391aca513540b89f3710d6f6485f74f8ebbbb14b8e97`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee51489b073b9071c4fd8884d01d7e9a6d7e7c26574cc950c84b11ef9436b53`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:835b777890bdd3686a4d6de4e3fb1eaab9cc89bcd81f0f8e685f04d26cf9d163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13c584945777da7e214e19912bd7b849a3f4fa79acf34e2647615cfce2a208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:28:17 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:28:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:28:27 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:28:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e003aafa803fdacf543c0a6c1b4781a7a55be5fc5e2827150d2c18dfc4944b5`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaaf48d551f4183ed3173b58b3a7f847d7264a5a33c90507cbc0e0487877066`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 8.8 KB (8796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfe19d7d50cfbf3563f0d9f80729da34e63d5af72d8b4aab696f7443ff36269`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 91.9 KB (91941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899092046cba52e61819b3671eb8399e9f97863cd20dccd701f9c2f3dde69441`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd6927df458bd7c3a38e1785c3af65c6c96e33fae9e843cfc7e8ba7097da4d`  
		Last Modified: Wed, 21 Oct 2026 23:28:32 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7abc9357498b6107742b1527c613ad8ea2f779a25840e544344a7e3b095c7e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c1566415362b7ab66b94785d44b457e40b841816e6e15161a8024462c3ad7e`

```dockerfile
```

-	Layers:
	-	`sha256:414f26a17784412c3209adfedadb982d31e691c4c39ba38a77575641518caf3d`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:e56ccc35b52d066e9d8976e1e83c441ca1538e098108f78ba37c052e0c717797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30c25e536629275e2fc68512b1b9014916da97a31aa3b3264efcbe2d924c5e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:31:05 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:31:15 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60d9daa50a5b83e1ec0e52c6ddb774bae6f2b16f7a4fbb05fc0a9ffe7039927`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbcc58a98d56444c6b0a0790b7b0ac188fc882fc16ee1e933121b0ebb5b35d3`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584658d3cc15f526d41a755550e40e0f7f984afca5e549b195e52bc3bda38e1a`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 84.8 KB (84781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935329e376c503bd6eba4ba8c149b05abbeb4ad872582b95b42e482ccaf68e98`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa93819aa2d9bb55fa60d3f486512485689cee0456cc39b001db1f62f5e0ce`  
		Last Modified: Wed, 21 Oct 2026 23:31:21 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:18dbe89bad4c36f54f4afcdb289625abd84464432e98b00ab7d72f029f732633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf33b77967437212b05adfffa313c94095cd127650a412f52dcf947741d2c79f`

```dockerfile
```

-	Layers:
	-	`sha256:a6c416b3486c2716c21da9fba066bee54ac74ad103ff668ebc812acd9a953638`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a530e5b93df87e40deae694883e029c696da63a4e5d372c9f1ddc77e3727f451`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e8e51a1778c050c6efcbe5c81790bb392d03f6be74b2338bb16f4bafd5777e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83eb622d27387c7868f534140b4e46f05c9d63f2a13cd21f53897ec4ae8eb9a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:18:57 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:19:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:19:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:19:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5eec00b79fe5f7aa506117865799d803af32965f75321b2a534e9d61b0bfa1`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b003d3789581651be66152a8be0bbb8dfc47ef822a3a6aad6d16fe517ef7af5`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 8.8 KB (8808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249c4a547c9aaf541ffde306f6706750268dc25993dee680c23a9b0e1907b2e`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 102.5 KB (102533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7109008bdad5f8266087a6e90b8a93a74ffd42caf2c0505ac8da9214578b9215`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec486d7b0ccc7715bbd877dbf8c7d3466f256de41bf596bcbe2f6d7d2d557cfe`  
		Last Modified: Wed, 21 Oct 2026 23:19:13 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e72cfdde2fcd845760f11ae7aad412ce0fa38794a173a8d5bc6b258aaa3ae1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ffc2afcd37f58fb10d1e284e749abbba3382f818bc60277a84741e906c9abb`

```dockerfile
```

-	Layers:
	-	`sha256:3b0f11994ccc3f5b722e06b7c987fb17c0e6f657dece6c293d6161f54bc4886c`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e83efaefa25b93609781f9255eadf0e2be845ebff391644ebe8602cb6350cc2`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 14.4 KB (14392 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:4860a48b13f95daa97857b2ba674d8923f3f9c397bfa3ef818d01a874fbe832e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3811857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1ebb3dcf7282f42daa8c509010cfbe731d1813b741ec5f9a66edef9ef358f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:02 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:20:02 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:20:13 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:20:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1001fcf2d5dd2cd24bab5bb41e2aa30dbd64a3c3d58716d666594f05779f9c5`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8303b8659a9cf34d5f77cb56bd2040814171d1718e05eec93a08c9927eb8fde7`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72e37ca3f04ca70ff2ff207216f3d95f6377d0867f5c479876ff6e273f7ea56`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 122.7 KB (122680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c445b3e75892cf903e5fede1d8c69d43ababee56702fdb54c2efebeedc8a9c2`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fd01cb412a9cf725099855c6ac237793397d55907755a1e92a3ad7de13530c`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:03c9c91025afbe21dd96149143300310cf9c6034c529d5d45f7d3f3d942f45ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829f08da011a3067754782f698299417997aec3bc63c33e840a04ec95cb0272a`

```dockerfile
```

-	Layers:
	-	`sha256:6434b1be1aef0376b2dfc7e001a82a0fb4a5264866ca044998793f4cad66e783`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a44e55a67d94720888fdc0cf7c2e109104aa8c93709d54d947116ca1caa96543`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:8130f5af0cbfb690315f294b466959177843230f4e2d8a9a4d39e74a1406f15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cd697cea0db5223fdbd7ce75d9170617c1906b780764f851ef76635d7724aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:36:45 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 22 Oct 2026 13:36:47 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 13:37:06 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 13:37:07 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 13:37:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383eedb718628b41f5453b4f5850e1bb046130d884224627c4a667bea4b54cdb`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de430ac3744da88e48dcdbe1426294069eba010cc1415065a02cb6d0ef57bce7`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d6d13480a6bac609cad818d0cddf50afdcc67c6c4509e006da895188c28206`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 114.8 KB (114776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4207aae685f645a5d5b1f1da62d38b5ca002533f025c9bd0a162ba1512243a90`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a07a7b5ea2d07a3dfcc5b102d88cced14dd6b9e4e733475291d508d5315a69`  
		Last Modified: Thu, 22 Oct 2026 13:37:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f963765042adc10500c34620fdf4df65e6db88e61f14544a77b7cf7833ac8318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00465b139c19e7a29bea330d7d7cddc7d67d654fa3284d878c37e9941e74f292`

```dockerfile
```

-	Layers:
	-	`sha256:1b6e9dcf0d021824973415e1d9ccc35fbcc45e3448b5ed9bf863c33357bc232d`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f107775d2849fe505548948b8d77c45ee40ba368c9c98db8e66a4a3fdb5d622`  
		Last Modified: Thu, 22 Oct 2026 13:37:28 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:53738435200a852984e06e8f55d1185f5af7d5b2477feaee44ddc306b1f55d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df69f77f3af173aafb007cb769c2fd325fd6db778819db2800330f3046947957`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:39:27 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 26 Oct 2026 13:39:31 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 26 Oct 2026 13:41:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
VOLUME [/spiped]
# Mon, 26 Oct 2026 13:41:16 GMT
WORKDIR /spiped
# Mon, 26 Oct 2026 13:41:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:41:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abd10e6004641b9d368d4c58c556a132c6ef8161fb9f7ef9950eba3d44b69f3`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbadca6b144dc832377a024fd79259d6f7cdd7880aed30d91b3615f58fe952b`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 8.8 KB (8819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7469bb2961ca90e0cc2c80e75e99b67276559aeaabcf09693e5b9f79b33123`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 99.9 KB (99934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa44063a678b784a510943e7f6b7dc1241bb88022131ad7dfed90d6c815750e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e2068c7fd2203202fbcad894c947b8e9159d51ea3e5615f3e57abd5216fe5d`  
		Last Modified: Mon, 26 Oct 2026 13:41:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f596c6f8533940d3dfaad1547105638f9dc9469f962d6c09f2d949204e75087e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c0d21073cd8fa926c7d7cca0487df9d52ea37cedd0c249a358e5801ec0a3cf`

```dockerfile
```

-	Layers:
	-	`sha256:bd8472152f717c3faa5f933b1435c32999bd7c59397fd4839eb3f8bd1c1a692e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae28d2ad8bde1e6cc5c02c2a0580fd2a1da70956125f973faba9514979fcf7a`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:7c3c7045a4cd76c6c4f8bcd2902c2573aa6bc1eb311d784c2fbb1b4c9e527c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3828475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dadd7f3d3e769067ac23b085ace4c69d63c074e8f6cf5ddae3308c347a08e6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:39:43 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:39:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:39:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:39:51 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:39:51 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:39:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c3bbbcbfef63767d15533edd8c67cf7c97eae292b66aea682869d819973307`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e1fc1c690eaaad7b98710773fca2b30e7abec926608311870f7eb0403539ea`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 8.8 KB (8810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bbab8ba82cb8e2e5e6f932fdc78f279e57b08ad4f8de72648a4413ae29c25a`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 98.6 KB (98574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c5c2c18995bb7f78c15316c6ade4ef1cadce1dc1d4453a51619a3eef57320e`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702e0e671cfe2187530f14f2c8d183171fea789419e537c3166518b86276d3b1`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06dc0af4db3c917a3fb9b34a2d119dc3b31c9476fed7334a2a6659001a4aa519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1dc8cb63481de845260aa46a44a219baed02101e802033f51ff8072828719d`

```dockerfile
```

-	Layers:
	-	`sha256:1dd478d322d4be702ad1147754a1e64dbfaccd4bb6b60dfcdddf75c2d77369a0`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ac00af6e5270e3572ed157415934c1088b74d6ebdf1a360c7f98a9e0e16364`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:376b8da3eff5f3dc0cca7865305020923b900add58c7c8f4685cd4f241950cb8
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
$ docker pull spiped@sha256:67ba8a8b1eb0a1b258820fb92529d5660abb9d7f6968e731675cdb361381a35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36906769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda9078e5a6813dfd86986e0adb228d1f2e6ac6df05eb0f46d67f6aa41f984ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:31:55 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:31:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:32:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:32:19 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:32:19 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:32:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9af441e97dbb7df4df37f2f05dd01b6c8b2267f98f3f77d0a28cfd664a7a449`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f6ac472f6b8f06394c36c7387dcd086e10be48ff4d125c03e483a65949afcb`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ed808344fba0778c8a0d63f3bc0788ceaa1147539a5b3c95d088fab2624238`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 7.0 MB (7048267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df81f24363e9b34c6738276179e26823a1388d0da76a22ed8b3b59c583cefe6`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37a1ece0542ed7ca6fd36d0465d14579baaa90ffa6cc62c91c7142a099a4176`  
		Last Modified: Thu, 05 Nov 2026 07:32:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:3fed213575dec31223b420bd966a5b4b88d7bc6970d8cbe2441ce7fb8bd3b9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b279565d03fdb87f8b42c6f37b9e77338328047f14010c218f10abe8e6de67`

```dockerfile
```

-	Layers:
	-	`sha256:e0e7a51578429da5d9912d0c4d18c9768437c8fb36ec1229eb12d9c7786f0ed9`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc95c643e62a3e4485276e9a20bb468034d856ef7661ddf7c1051203dbcb3bf`  
		Last Modified: Thu, 05 Nov 2026 07:32:26 GMT  
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
$ docker pull spiped@sha256:1324ba8cf4308389e7f501a909db645d7c1b27bc9c74b75e9be7cd067552466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31860612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b0eae726456af37507b8713ccf607ec729de518f986cfa0711377bdf7fb4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:17:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 08:17:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 08:17:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 08:17:46 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 08:17:46 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:17:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958b05b2f3f84db369ea9fc6c4093ac2a73a10059d4b95f8a0277d7fefcca225`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f09b5345c06ec25c54b261d67d3530b61896111bcd70c6c7e08e72c85875dbb`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffab072e138f79f39ab5f89dadf440861116a594aa0a2efd9ced6724756d2a89`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 5.6 MB (5585327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3a8c9445ef1b3c80903dcf7630928d77c96ddca0bb32260c8f989e2757fae2`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5231e18f079e298f31b607a5ad7db4221d0b10a4c33eb6c9e84798a99873095f`  
		Last Modified: Thu, 05 Nov 2026 08:17:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:32cb4799d5d89873f8cb42123e776e58157da5cd1322b2dbdedd0f5ff73f130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490219631aafc3ae850c08f91a4691b1f95095617459774d1080e20067e2ecd1`

```dockerfile
```

-	Layers:
	-	`sha256:d20c34578f0cff31d067ad3dd5335cae25a6ae9a3644afc25a7b06ccd03aa20b`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca9fb1eb0fa33f715a2f6ee2fd4488ac8520a830299bedc8ff9de201002da36`  
		Last Modified: Thu, 05 Nov 2026 08:17:53 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:90f28c27e8a514c8f478082d714d70bf8022087466190c68bd89825b2ac2a6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e4c60d6870dfe19f6fdeb6d247c717c349a92daea7007c69818f4abd2fe55e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:35:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:35:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:35:53 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:35:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:35:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:35:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d412eba183001b1800ed0abda4cc9687a5383011d1fcd25e9c7ae79e40060d`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c85b5459872baa5b7f3ec55f8c0533721604417a0f4defd3cfc38ee811f45a`  
		Last Modified: Thu, 05 Nov 2026 07:36:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b719684b810b0558547fe801c4171b00fe7f0a9a7eb3d80049621588cba021`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 6.2 MB (6234318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ba7be46f08d63b2a99b9494fa2e602a4d75d64dae8f4dbcb7deeaaf414d6c0`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b61560f10140c8f3445f5a803727732f003be1f35ea80d918622a5d990470f`  
		Last Modified: Thu, 05 Nov 2026 07:36:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:cdbbc9fa422945f37d0010c4723c7d99b372006b3641a82c2b6efdf28a284559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0739b558d48954266868764c9d7ebf733adc5f84d697f07fd6d067b1406854be`

```dockerfile
```

-	Layers:
	-	`sha256:17c6c72e4b0fe815b8de6ad75965cbb88d8dbd2df6ed6fd1e1fca5d65d624602`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c1fbdc96ca4d5216976f550fda8f220061ba9f29966b13bfbbdaae3c87f8b59`  
		Last Modified: Thu, 05 Nov 2026 07:36:01 GMT  
		Size: 15.1 KB (15115 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6c5a715f8dfe3a0c375d84b4a10026533df5fdddc6d7c347f581f94136a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37817063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad84d436ca73e2c14aa78e40c2dda0962f8151e1fc07f03d32aafb0c4ef3e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 05 Nov 2026 07:40:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 05 Nov 2026 07:41:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
VOLUME [/spiped]
# Thu, 05 Nov 2026 07:41:13 GMT
WORKDIR /spiped
# Thu, 05 Nov 2026 07:41:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cff4eb9cca52b7083f2c7b695d5bb46f97a84aa947685458eeb46f3e55fb1d`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db1eedd6bf55b358dfa0738b3034b09a121ec697bc4050a90b65f91b2fdaca9`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdb6e03cfc67d09e0ae493d888d075636602a2f4aedcf25882c3e0c003528cd`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 6.4 MB (6443932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dafc966dc5f7355e545247151928bdca5d55993c5eb1a02862715351f3c0f8b`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780459744940039532dadc7d1ab938e3154ad359b7113fcd57fb80dea3883df5`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:281aee41d912e70d2f63f63d98cbe6c346337ca06291078fccf834a0851c76a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3d5701b7b19aa09bd61289c88e367b118b6567f2b43e991c77d7ae49a4acd7`

```dockerfile
```

-	Layers:
	-	`sha256:8f347b2d8dbc041e31daf858ff762592bba5c2d840d1770329b2ea447154c9b3`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81078ca6f29dea4b84e7f50950759215d71e32d151cd3aea4aeda96f5e221085`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:dbdc8cb64b3240e1e53ee9ca10792840fe2a17a83536c464098496a5faf5b7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40510509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af71503e4a4a920fbaaaf44d24055164ddde95c5095e6ceebd7cf56b21e19f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:17:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 04:17:18 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 04:18:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 04:18:10 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 04:18:11 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 04:18:11 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:18:11 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c532a96a65b6c76818f3aa0bafc5ba30a767fe223cedf4fa11ca7d9e6bb281`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038c135564453b0d89900dcdcf05af84bbbce708048bd2ee87640eff222bae07`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4574058b954f8b1741fcab873a95435265e4b86c57967f5692d102bb638cce08`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 6.8 MB (6841870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92710ced092c85ae4ce916ea20784fe4a7e32485629a8cddff79569c14d6326`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f26c0b0dfae4a37e467e8212c173f2fade12a7114dcf7a00ebb3c7860c9b19`  
		Last Modified: Wed, 28 Oct 2026 04:18:26 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:309608ea6922e9e93f1cf16aca303183d63fcdc461da62ff16487c7935997d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76e660cb8882bd66df972adcf14fef96b24d3ac9056641468f052fd68f2021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a223416248bfa70d635fa12211df0e46e917efca70a49b15e90d426148e794a`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f10264dacefe91a022cc4f939c5d141713036011e492b45046139ee0d4fc55c3`  
		Last Modified: Wed, 28 Oct 2026 04:18:25 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:70222e376b7f2d6b2d25e486f75644faf5a37663c4df1c670d0441bce0092de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37703282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da86f868b845066d9e0c14ca3426072a01a48318cac0ee348c08e0d5c3e1bfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 09:13:38 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sun, 01 Nov 2026 09:14:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sun, 01 Nov 2026 09:17:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
VOLUME [/spiped]
# Sun, 01 Nov 2026 09:17:21 GMT
WORKDIR /spiped
# Sun, 01 Nov 2026 09:17:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sun, 01 Nov 2026 09:17:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 01 Nov 2026 09:17:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b119ae0d8ffcaa8bf95e8eefc917e78491393b3dc40074d38c9077a9b4331e9f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d42f18c680febf7e9bef7f658e8a51ce918ec0b38606e7f1caaf6e6e36f59f8`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62438ca0473e6f9b05aa236083c0e9a325568186717e24fc3cf4310c9ff148c3`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 9.4 MB (9355252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e807d3d144e43fc3aa798501d6ac24905709d55ce9efd9d2f0f3a9fbbac2330f`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79335a14fd5077be37a56915cf0dee5a59c8359fa19420eaa760e54849460a03`  
		Last Modified: Sun, 01 Nov 2026 09:18:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:31407f33245e29ec01ec1b0338a5495e7bd275f6d45b89990ce2ff4b9ca2f545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2fbf5ab10eb074c351dcb6c78deed07691ef5726830ad4c546157d92c3b00f`

```dockerfile
```

-	Layers:
	-	`sha256:e2c29d5bd5f529510cf7adb0c7a2e75d388fca3c19db4c78b235a412d88f1428`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d02d1ea9bbb8e72e6d8deb6c579a19796660e5af64dbca31cebb15a7dfe065`  
		Last Modified: Sun, 01 Nov 2026 09:18:35 GMT  
		Size: 15.0 KB (15030 bytes)  
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
