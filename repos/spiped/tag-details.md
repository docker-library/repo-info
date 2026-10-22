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
$ docker pull spiped@sha256:697cb92339011402beecdea53b544f149a7e23b93a35c5056a15eab9ee403a2d
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
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5ca020872a5c517115a08331dc936eb20f79d6f63fc99b41930d8eda3e8069a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b61f3550efc8dd7dedb544b73ad9626992260dbe6d000f2c115119ad5502d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:28:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:28:36 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:28:36 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:28:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:28:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e4472cdb684532cf53c60b411d7f0a6cb776a317936cc89e85c671237ec887`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d007c08fc8bbfcc7163861acde2a7e60d25619b8c07c597cd6530ca757bfad0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a82af2744c68b3a29873dc16998f6cc5984eaca3285eb94bb9cb48ad6f6c0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 5.6 MB (5585268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e21e0cec54f1fa7e9f1076b886c14f19eaa01fc8c377c9053107af28199ddf9`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d6b18147074fe28a633f1bdd2c35761e55025959247069405dfe42864c6a85`  
		Last Modified: Wed, 21 Oct 2026 01:28:45 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:1305566620c5eb6436ffb2e2979e0f5df8163a6cc9c76888ed329c83399ce45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2fbffe05991a786b39026e97635fe8081ca09c7f2c55023ce2a2ae4111d2af`

```dockerfile
```

-	Layers:
	-	`sha256:03e9ce87697d3e489c0351537cd06de6c4ec397d2baa6d1f3162c51da6268fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a607b386e6a211a7255efaf9ed6c93b7ac256a682790f2044bced19b17c8cb`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:779958e1203881b9d7701243b2f0997bbe5356941ace8542dd9d43bfd6446b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9d7f250d3cc26692fa168408e9c8a51236d1e17400f499053cef0f9d933b66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:08 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:35 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbc74bdb54a20b90b4e8682152f341fffbc27e365dd65af18dbffaa34abd903`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fa012cea6a852c28a482c6763b10a474c6e09d37066efdcecf1f66976eb91e`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fa993f331985a05d7664e08e4aa1eee424c523193c901fadb5c9caa1df76e7`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 6.4 MB (6443871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ab7e353bafe40b4cf569d417fa1e89c7432548d51cd825e0ddb7521161a50f`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd228f214872d93da02d5c9584360467eeba1ca9a8ab26f29701e32dd11f6600`  
		Last Modified: Wed, 21 Oct 2026 00:48:43 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:400e2402bcc4c1f14e73313e97df2a5b6b50c7647b59f9c7f3b8421bca130838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18f503036460079a7b78e9b520c8a8b02a5d9e0cc34bffc6815d1f2b1c178e3`

```dockerfile
```

-	Layers:
	-	`sha256:b2e7503da674b1584f776362bdb65c4af784a19bbc113751dfadc7a3e12ac7a5`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c9b80334c25a7a6e545782683f45eeae9f6c9c561cf1f8de1eb79f3908a937`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:56274e48633e97c1d56080a8bfdcfeaabb5ecbba9fffc3ed572377048508699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40496008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf2c23031dc89cf7e7a88ac9515be9e2057e0941a4f07f000a990c1bccb20c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:18:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 04:18:49 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 04:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 04:20:03 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 04:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 04:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554192e148aad4dd0d32a8c61ac196bd66779e4682b4d898e086f66170409486`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ff4f6d5275cc59bdc9dcc89d17f4297adbfc248ba9b1fd4a320611fb78afd2`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d88b09914357885b5913c7e55152875dd26f7adea25fb053ab13350b0ed6699`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 6.8 MB (6841699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4676cd26d16c514543ed689f9e22b1f76b82535cc733a50930917f72ab1e759`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8ddf775e86e963b524286ff4f6415b193c5128e9bb383f098cff6f55153c94`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:fa07eb53b0c73dbc947a5a5035891f2ba6a41c6873cca0e91bc7d1f190575ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee9e3065fd8d20cf6ec5e7c8e19a5f3735453187a362a620bbbde3951b0d168`

```dockerfile
```

-	Layers:
	-	`sha256:c00d0ad23fcfcec54dd8d16b573d8dca09aeae092357c254955fbe1b573bd234`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459effeed0e28849a40a20fed1e48b28011da6071554307afb29952edadd0396`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:4206d4d9439d3732ef1a0e62da60a682a436b9466bc9c53c912066c0c75452c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7685a30ad088e39a0423d202a6a5248d9e1e5db464a2e77d786a0e7cf69b8c97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 04:57:23 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 22 Oct 2026 04:57:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 05:01:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 05:01:09 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 05:01:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 05:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0794bb06954049c6b9cbf26bf10088f20690a83a3dec8a0eeb3210a939ff36ac`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c9193f6614cc90c166936054bd9df16d24d104ceb4f4796453a62b1ca2c8fb`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 822.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737770ea7c130d38ddaf1251896b62e22564a12b826602dd92f9c82b856c832b`  
		Last Modified: Thu, 22 Oct 2026 05:02:36 GMT  
		Size: 9.4 MB (9355229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4dc9ebd94b9589b000155a8c7b336e108dd75c254bb5bd747d2420da4bd7d22`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bec251d1579c1b496dc52025e22f85d5d219dcd9c34c0f308625e5ab4f8edc`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:c3a5816e307bcf36cde5be6c3a82c65efc51097ead828853899d3dc66ceac8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad82a96609ad65f45ecfd6887eab7837a7af8a81867edfc49255c3e0ffa9be8`

```dockerfile
```

-	Layers:
	-	`sha256:3dfa9c003b93ec39551ed7f59bf3053cb3ee8b26a23d91f7a36afa5398bd9312`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3f1f40c4d3f81b35e8e68422ad7d9fec0756248586278b2bfe83c2fac44d96`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:0d166983006d793236049ef9c4561acf1273e4cc2dd3819d8642d5c7eda8dab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36036803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13bd3b0f4628cf50effb877ba1eb2ce55950042f9fff27e87cf49ef86f7aae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:08:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:08:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:08:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:08:52 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:08:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:08:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db569eebb698e083e5fa4051e4763c48c3162e61286a05bbe4da037be1af4dac`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa3e3c87010f04ae7dbc089cf49cd8259842101008bdc0ee5f612874bdd1f7c`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d767c9b09cfe521a79f2cb00e235b2bf5480be834d02f8044201639c1eec8402`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 6.1 MB (6122997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8272b72bf8d3d899d59e137e789e7b6a4ddb94c957598289be6fc89310ae6af`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eccfdb9c7a1400155b88373477a0581429024536502cccec465fb75db040ab7`  
		Last Modified: Wed, 21 Oct 2026 01:09:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:dc4c2b3028be25382d0ca6204c5db9f747c46b64f3bc59e195f64f3bae6c3fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028227d86c9ee5baefebd348068dd5cb880503cd24b381d8d84f53a859974a20`

```dockerfile
```

-	Layers:
	-	`sha256:3525f4342f3ae5e4ea80bac357750ab4e3400b3dcce7cd80bd72817eb00647e5`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e7c8d677cea71d62ed31a5bf9b82de586add32d285213f4c6233fa8f998a7b`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:119781e0e80c8f1f608d83ccce8f2458d5e0fb3bf1aff56609a9c35bf7edd0c3
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
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
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
$ docker pull spiped@sha256:697cb92339011402beecdea53b544f149a7e23b93a35c5056a15eab9ee403a2d
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
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5ca020872a5c517115a08331dc936eb20f79d6f63fc99b41930d8eda3e8069a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b61f3550efc8dd7dedb544b73ad9626992260dbe6d000f2c115119ad5502d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:28:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:28:36 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:28:36 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:28:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:28:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e4472cdb684532cf53c60b411d7f0a6cb776a317936cc89e85c671237ec887`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d007c08fc8bbfcc7163861acde2a7e60d25619b8c07c597cd6530ca757bfad0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a82af2744c68b3a29873dc16998f6cc5984eaca3285eb94bb9cb48ad6f6c0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 5.6 MB (5585268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e21e0cec54f1fa7e9f1076b886c14f19eaa01fc8c377c9053107af28199ddf9`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d6b18147074fe28a633f1bdd2c35761e55025959247069405dfe42864c6a85`  
		Last Modified: Wed, 21 Oct 2026 01:28:45 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:1305566620c5eb6436ffb2e2979e0f5df8163a6cc9c76888ed329c83399ce45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2fbffe05991a786b39026e97635fe8081ca09c7f2c55023ce2a2ae4111d2af`

```dockerfile
```

-	Layers:
	-	`sha256:03e9ce87697d3e489c0351537cd06de6c4ec397d2baa6d1f3162c51da6268fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a607b386e6a211a7255efaf9ed6c93b7ac256a682790f2044bced19b17c8cb`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:779958e1203881b9d7701243b2f0997bbe5356941ace8542dd9d43bfd6446b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9d7f250d3cc26692fa168408e9c8a51236d1e17400f499053cef0f9d933b66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:08 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:35 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbc74bdb54a20b90b4e8682152f341fffbc27e365dd65af18dbffaa34abd903`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fa012cea6a852c28a482c6763b10a474c6e09d37066efdcecf1f66976eb91e`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fa993f331985a05d7664e08e4aa1eee424c523193c901fadb5c9caa1df76e7`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 6.4 MB (6443871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ab7e353bafe40b4cf569d417fa1e89c7432548d51cd825e0ddb7521161a50f`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd228f214872d93da02d5c9584360467eeba1ca9a8ab26f29701e32dd11f6600`  
		Last Modified: Wed, 21 Oct 2026 00:48:43 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:400e2402bcc4c1f14e73313e97df2a5b6b50c7647b59f9c7f3b8421bca130838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18f503036460079a7b78e9b520c8a8b02a5d9e0cc34bffc6815d1f2b1c178e3`

```dockerfile
```

-	Layers:
	-	`sha256:b2e7503da674b1584f776362bdb65c4af784a19bbc113751dfadc7a3e12ac7a5`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c9b80334c25a7a6e545782683f45eeae9f6c9c561cf1f8de1eb79f3908a937`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:56274e48633e97c1d56080a8bfdcfeaabb5ecbba9fffc3ed572377048508699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40496008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf2c23031dc89cf7e7a88ac9515be9e2057e0941a4f07f000a990c1bccb20c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:18:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 04:18:49 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 04:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 04:20:03 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 04:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 04:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554192e148aad4dd0d32a8c61ac196bd66779e4682b4d898e086f66170409486`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ff4f6d5275cc59bdc9dcc89d17f4297adbfc248ba9b1fd4a320611fb78afd2`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d88b09914357885b5913c7e55152875dd26f7adea25fb053ab13350b0ed6699`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 6.8 MB (6841699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4676cd26d16c514543ed689f9e22b1f76b82535cc733a50930917f72ab1e759`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8ddf775e86e963b524286ff4f6415b193c5128e9bb383f098cff6f55153c94`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:fa07eb53b0c73dbc947a5a5035891f2ba6a41c6873cca0e91bc7d1f190575ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee9e3065fd8d20cf6ec5e7c8e19a5f3735453187a362a620bbbde3951b0d168`

```dockerfile
```

-	Layers:
	-	`sha256:c00d0ad23fcfcec54dd8d16b573d8dca09aeae092357c254955fbe1b573bd234`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459effeed0e28849a40a20fed1e48b28011da6071554307afb29952edadd0396`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:4206d4d9439d3732ef1a0e62da60a682a436b9466bc9c53c912066c0c75452c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7685a30ad088e39a0423d202a6a5248d9e1e5db464a2e77d786a0e7cf69b8c97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 04:57:23 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 22 Oct 2026 04:57:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 05:01:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 05:01:09 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 05:01:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 05:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0794bb06954049c6b9cbf26bf10088f20690a83a3dec8a0eeb3210a939ff36ac`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c9193f6614cc90c166936054bd9df16d24d104ceb4f4796453a62b1ca2c8fb`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 822.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737770ea7c130d38ddaf1251896b62e22564a12b826602dd92f9c82b856c832b`  
		Last Modified: Thu, 22 Oct 2026 05:02:36 GMT  
		Size: 9.4 MB (9355229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4dc9ebd94b9589b000155a8c7b336e108dd75c254bb5bd747d2420da4bd7d22`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bec251d1579c1b496dc52025e22f85d5d219dcd9c34c0f308625e5ab4f8edc`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:c3a5816e307bcf36cde5be6c3a82c65efc51097ead828853899d3dc66ceac8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad82a96609ad65f45ecfd6887eab7837a7af8a81867edfc49255c3e0ffa9be8`

```dockerfile
```

-	Layers:
	-	`sha256:3dfa9c003b93ec39551ed7f59bf3053cb3ee8b26a23d91f7a36afa5398bd9312`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3f1f40c4d3f81b35e8e68422ad7d9fec0756248586278b2bfe83c2fac44d96`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:0d166983006d793236049ef9c4561acf1273e4cc2dd3819d8642d5c7eda8dab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36036803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13bd3b0f4628cf50effb877ba1eb2ce55950042f9fff27e87cf49ef86f7aae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:08:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:08:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:08:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:08:52 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:08:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:08:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db569eebb698e083e5fa4051e4763c48c3162e61286a05bbe4da037be1af4dac`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa3e3c87010f04ae7dbc089cf49cd8259842101008bdc0ee5f612874bdd1f7c`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d767c9b09cfe521a79f2cb00e235b2bf5480be834d02f8044201639c1eec8402`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 6.1 MB (6122997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8272b72bf8d3d899d59e137e789e7b6a4ddb94c957598289be6fc89310ae6af`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eccfdb9c7a1400155b88373477a0581429024536502cccec465fb75db040ab7`  
		Last Modified: Wed, 21 Oct 2026 01:09:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:dc4c2b3028be25382d0ca6204c5db9f747c46b64f3bc59e195f64f3bae6c3fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028227d86c9ee5baefebd348068dd5cb880503cd24b381d8d84f53a859974a20`

```dockerfile
```

-	Layers:
	-	`sha256:3525f4342f3ae5e4ea80bac357750ab4e3400b3dcce7cd80bd72817eb00647e5`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e7c8d677cea71d62ed31a5bf9b82de586add32d285213f4c6233fa8f998a7b`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:119781e0e80c8f1f608d83ccce8f2458d5e0fb3bf1aff56609a9c35bf7edd0c3
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
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
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
$ docker pull spiped@sha256:697cb92339011402beecdea53b544f149a7e23b93a35c5056a15eab9ee403a2d
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
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5ca020872a5c517115a08331dc936eb20f79d6f63fc99b41930d8eda3e8069a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b61f3550efc8dd7dedb544b73ad9626992260dbe6d000f2c115119ad5502d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:28:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:28:36 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:28:36 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:28:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:28:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e4472cdb684532cf53c60b411d7f0a6cb776a317936cc89e85c671237ec887`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d007c08fc8bbfcc7163861acde2a7e60d25619b8c07c597cd6530ca757bfad0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a82af2744c68b3a29873dc16998f6cc5984eaca3285eb94bb9cb48ad6f6c0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 5.6 MB (5585268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e21e0cec54f1fa7e9f1076b886c14f19eaa01fc8c377c9053107af28199ddf9`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d6b18147074fe28a633f1bdd2c35761e55025959247069405dfe42864c6a85`  
		Last Modified: Wed, 21 Oct 2026 01:28:45 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:1305566620c5eb6436ffb2e2979e0f5df8163a6cc9c76888ed329c83399ce45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2fbffe05991a786b39026e97635fe8081ca09c7f2c55023ce2a2ae4111d2af`

```dockerfile
```

-	Layers:
	-	`sha256:03e9ce87697d3e489c0351537cd06de6c4ec397d2baa6d1f3162c51da6268fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a607b386e6a211a7255efaf9ed6c93b7ac256a682790f2044bced19b17c8cb`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:779958e1203881b9d7701243b2f0997bbe5356941ace8542dd9d43bfd6446b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9d7f250d3cc26692fa168408e9c8a51236d1e17400f499053cef0f9d933b66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:08 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:35 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbc74bdb54a20b90b4e8682152f341fffbc27e365dd65af18dbffaa34abd903`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fa012cea6a852c28a482c6763b10a474c6e09d37066efdcecf1f66976eb91e`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fa993f331985a05d7664e08e4aa1eee424c523193c901fadb5c9caa1df76e7`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 6.4 MB (6443871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ab7e353bafe40b4cf569d417fa1e89c7432548d51cd825e0ddb7521161a50f`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd228f214872d93da02d5c9584360467eeba1ca9a8ab26f29701e32dd11f6600`  
		Last Modified: Wed, 21 Oct 2026 00:48:43 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:400e2402bcc4c1f14e73313e97df2a5b6b50c7647b59f9c7f3b8421bca130838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18f503036460079a7b78e9b520c8a8b02a5d9e0cc34bffc6815d1f2b1c178e3`

```dockerfile
```

-	Layers:
	-	`sha256:b2e7503da674b1584f776362bdb65c4af784a19bbc113751dfadc7a3e12ac7a5`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c9b80334c25a7a6e545782683f45eeae9f6c9c561cf1f8de1eb79f3908a937`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:56274e48633e97c1d56080a8bfdcfeaabb5ecbba9fffc3ed572377048508699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40496008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf2c23031dc89cf7e7a88ac9515be9e2057e0941a4f07f000a990c1bccb20c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:18:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 04:18:49 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 04:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 04:20:03 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 04:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 04:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554192e148aad4dd0d32a8c61ac196bd66779e4682b4d898e086f66170409486`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ff4f6d5275cc59bdc9dcc89d17f4297adbfc248ba9b1fd4a320611fb78afd2`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d88b09914357885b5913c7e55152875dd26f7adea25fb053ab13350b0ed6699`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 6.8 MB (6841699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4676cd26d16c514543ed689f9e22b1f76b82535cc733a50930917f72ab1e759`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8ddf775e86e963b524286ff4f6415b193c5128e9bb383f098cff6f55153c94`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:fa07eb53b0c73dbc947a5a5035891f2ba6a41c6873cca0e91bc7d1f190575ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee9e3065fd8d20cf6ec5e7c8e19a5f3735453187a362a620bbbde3951b0d168`

```dockerfile
```

-	Layers:
	-	`sha256:c00d0ad23fcfcec54dd8d16b573d8dca09aeae092357c254955fbe1b573bd234`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459effeed0e28849a40a20fed1e48b28011da6071554307afb29952edadd0396`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:4206d4d9439d3732ef1a0e62da60a682a436b9466bc9c53c912066c0c75452c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7685a30ad088e39a0423d202a6a5248d9e1e5db464a2e77d786a0e7cf69b8c97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 04:57:23 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 22 Oct 2026 04:57:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 05:01:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 05:01:09 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 05:01:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 05:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0794bb06954049c6b9cbf26bf10088f20690a83a3dec8a0eeb3210a939ff36ac`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c9193f6614cc90c166936054bd9df16d24d104ceb4f4796453a62b1ca2c8fb`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 822.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737770ea7c130d38ddaf1251896b62e22564a12b826602dd92f9c82b856c832b`  
		Last Modified: Thu, 22 Oct 2026 05:02:36 GMT  
		Size: 9.4 MB (9355229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4dc9ebd94b9589b000155a8c7b336e108dd75c254bb5bd747d2420da4bd7d22`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bec251d1579c1b496dc52025e22f85d5d219dcd9c34c0f308625e5ab4f8edc`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:c3a5816e307bcf36cde5be6c3a82c65efc51097ead828853899d3dc66ceac8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad82a96609ad65f45ecfd6887eab7837a7af8a81867edfc49255c3e0ffa9be8`

```dockerfile
```

-	Layers:
	-	`sha256:3dfa9c003b93ec39551ed7f59bf3053cb3ee8b26a23d91f7a36afa5398bd9312`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3f1f40c4d3f81b35e8e68422ad7d9fec0756248586278b2bfe83c2fac44d96`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:0d166983006d793236049ef9c4561acf1273e4cc2dd3819d8642d5c7eda8dab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36036803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13bd3b0f4628cf50effb877ba1eb2ce55950042f9fff27e87cf49ef86f7aae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:08:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:08:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:08:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:08:52 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:08:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:08:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db569eebb698e083e5fa4051e4763c48c3162e61286a05bbe4da037be1af4dac`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa3e3c87010f04ae7dbc089cf49cd8259842101008bdc0ee5f612874bdd1f7c`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d767c9b09cfe521a79f2cb00e235b2bf5480be834d02f8044201639c1eec8402`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 6.1 MB (6122997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8272b72bf8d3d899d59e137e789e7b6a4ddb94c957598289be6fc89310ae6af`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eccfdb9c7a1400155b88373477a0581429024536502cccec465fb75db040ab7`  
		Last Modified: Wed, 21 Oct 2026 01:09:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:dc4c2b3028be25382d0ca6204c5db9f747c46b64f3bc59e195f64f3bae6c3fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028227d86c9ee5baefebd348068dd5cb880503cd24b381d8d84f53a859974a20`

```dockerfile
```

-	Layers:
	-	`sha256:3525f4342f3ae5e4ea80bac357750ab4e3400b3dcce7cd80bd72817eb00647e5`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e7c8d677cea71d62ed31a5bf9b82de586add32d285213f4c6233fa8f998a7b`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:119781e0e80c8f1f608d83ccce8f2458d5e0fb3bf1aff56609a9c35bf7edd0c3
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
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
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
$ docker pull spiped@sha256:119781e0e80c8f1f608d83ccce8f2458d5e0fb3bf1aff56609a9c35bf7edd0c3
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
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
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
$ docker pull spiped@sha256:697cb92339011402beecdea53b544f149a7e23b93a35c5056a15eab9ee403a2d
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
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5ca020872a5c517115a08331dc936eb20f79d6f63fc99b41930d8eda3e8069a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b61f3550efc8dd7dedb544b73ad9626992260dbe6d000f2c115119ad5502d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:28:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:28:36 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:28:36 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:28:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:28:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:28:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e4472cdb684532cf53c60b411d7f0a6cb776a317936cc89e85c671237ec887`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d007c08fc8bbfcc7163861acde2a7e60d25619b8c07c597cd6530ca757bfad0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a82af2744c68b3a29873dc16998f6cc5984eaca3285eb94bb9cb48ad6f6c0e`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 5.6 MB (5585268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e21e0cec54f1fa7e9f1076b886c14f19eaa01fc8c377c9053107af28199ddf9`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d6b18147074fe28a633f1bdd2c35761e55025959247069405dfe42864c6a85`  
		Last Modified: Wed, 21 Oct 2026 01:28:45 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:1305566620c5eb6436ffb2e2979e0f5df8163a6cc9c76888ed329c83399ce45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2fbffe05991a786b39026e97635fe8081ca09c7f2c55023ce2a2ae4111d2af`

```dockerfile
```

-	Layers:
	-	`sha256:03e9ce87697d3e489c0351537cd06de6c4ec397d2baa6d1f3162c51da6268fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:44 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a607b386e6a211a7255efaf9ed6c93b7ac256a682790f2044bced19b17c8cb`  
		Last Modified: Wed, 21 Oct 2026 01:28:43 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:779958e1203881b9d7701243b2f0997bbe5356941ace8542dd9d43bfd6446b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9d7f250d3cc26692fa168408e9c8a51236d1e17400f499053cef0f9d933b66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:08 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:35 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbc74bdb54a20b90b4e8682152f341fffbc27e365dd65af18dbffaa34abd903`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fa012cea6a852c28a482c6763b10a474c6e09d37066efdcecf1f66976eb91e`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fa993f331985a05d7664e08e4aa1eee424c523193c901fadb5c9caa1df76e7`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 6.4 MB (6443871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ab7e353bafe40b4cf569d417fa1e89c7432548d51cd825e0ddb7521161a50f`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd228f214872d93da02d5c9584360467eeba1ca9a8ab26f29701e32dd11f6600`  
		Last Modified: Wed, 21 Oct 2026 00:48:43 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:400e2402bcc4c1f14e73313e97df2a5b6b50c7647b59f9c7f3b8421bca130838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18f503036460079a7b78e9b520c8a8b02a5d9e0cc34bffc6815d1f2b1c178e3`

```dockerfile
```

-	Layers:
	-	`sha256:b2e7503da674b1584f776362bdb65c4af784a19bbc113751dfadc7a3e12ac7a5`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c9b80334c25a7a6e545782683f45eeae9f6c9c561cf1f8de1eb79f3908a937`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:56274e48633e97c1d56080a8bfdcfeaabb5ecbba9fffc3ed572377048508699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40496008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf2c23031dc89cf7e7a88ac9515be9e2057e0941a4f07f000a990c1bccb20c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:18:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 04:18:49 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 04:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 04:20:03 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 04:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 04:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 04:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554192e148aad4dd0d32a8c61ac196bd66779e4682b4d898e086f66170409486`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ff4f6d5275cc59bdc9dcc89d17f4297adbfc248ba9b1fd4a320611fb78afd2`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d88b09914357885b5913c7e55152875dd26f7adea25fb053ab13350b0ed6699`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 6.8 MB (6841699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4676cd26d16c514543ed689f9e22b1f76b82535cc733a50930917f72ab1e759`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8ddf775e86e963b524286ff4f6415b193c5128e9bb383f098cff6f55153c94`  
		Last Modified: Wed, 21 Oct 2026 04:20:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:fa07eb53b0c73dbc947a5a5035891f2ba6a41c6873cca0e91bc7d1f190575ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee9e3065fd8d20cf6ec5e7c8e19a5f3735453187a362a620bbbde3951b0d168`

```dockerfile
```

-	Layers:
	-	`sha256:c00d0ad23fcfcec54dd8d16b573d8dca09aeae092357c254955fbe1b573bd234`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459effeed0e28849a40a20fed1e48b28011da6071554307afb29952edadd0396`  
		Last Modified: Wed, 21 Oct 2026 04:20:19 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:4206d4d9439d3732ef1a0e62da60a682a436b9466bc9c53c912066c0c75452c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7685a30ad088e39a0423d202a6a5248d9e1e5db464a2e77d786a0e7cf69b8c97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 04:57:23 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 22 Oct 2026 04:57:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 05:01:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 05:01:09 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 05:01:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 05:01:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 05:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0794bb06954049c6b9cbf26bf10088f20690a83a3dec8a0eeb3210a939ff36ac`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c9193f6614cc90c166936054bd9df16d24d104ceb4f4796453a62b1ca2c8fb`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 822.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737770ea7c130d38ddaf1251896b62e22564a12b826602dd92f9c82b856c832b`  
		Last Modified: Thu, 22 Oct 2026 05:02:36 GMT  
		Size: 9.4 MB (9355229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4dc9ebd94b9589b000155a8c7b336e108dd75c254bb5bd747d2420da4bd7d22`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bec251d1579c1b496dc52025e22f85d5d219dcd9c34c0f308625e5ab4f8edc`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:c3a5816e307bcf36cde5be6c3a82c65efc51097ead828853899d3dc66ceac8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad82a96609ad65f45ecfd6887eab7837a7af8a81867edfc49255c3e0ffa9be8`

```dockerfile
```

-	Layers:
	-	`sha256:3dfa9c003b93ec39551ed7f59bf3053cb3ee8b26a23d91f7a36afa5398bd9312`  
		Last Modified: Thu, 22 Oct 2026 05:02:35 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3f1f40c4d3f81b35e8e68422ad7d9fec0756248586278b2bfe83c2fac44d96`  
		Last Modified: Thu, 22 Oct 2026 05:02:34 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:0d166983006d793236049ef9c4561acf1273e4cc2dd3819d8642d5c7eda8dab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36036803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13bd3b0f4628cf50effb877ba1eb2ce55950042f9fff27e87cf49ef86f7aae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:08:32 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 01:08:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 01:08:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 01:08:52 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 01:08:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:08:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db569eebb698e083e5fa4051e4763c48c3162e61286a05bbe4da037be1af4dac`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa3e3c87010f04ae7dbc089cf49cd8259842101008bdc0ee5f612874bdd1f7c`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d767c9b09cfe521a79f2cb00e235b2bf5480be834d02f8044201639c1eec8402`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 6.1 MB (6122997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8272b72bf8d3d899d59e137e789e7b6a4ddb94c957598289be6fc89310ae6af`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eccfdb9c7a1400155b88373477a0581429024536502cccec465fb75db040ab7`  
		Last Modified: Wed, 21 Oct 2026 01:09:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:dc4c2b3028be25382d0ca6204c5db9f747c46b64f3bc59e195f64f3bae6c3fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028227d86c9ee5baefebd348068dd5cb880503cd24b381d8d84f53a859974a20`

```dockerfile
```

-	Layers:
	-	`sha256:3525f4342f3ae5e4ea80bac357750ab4e3400b3dcce7cd80bd72817eb00647e5`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e7c8d677cea71d62ed31a5bf9b82de586add32d285213f4c6233fa8f998a7b`  
		Last Modified: Wed, 21 Oct 2026 01:09:04 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
