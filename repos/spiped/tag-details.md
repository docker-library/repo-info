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
$ docker pull spiped@sha256:cf6fbec55a3b5ce874fb96fc4c04b71d565394847016fcd54260152e2314f58c
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
$ docker pull spiped@sha256:58aa905423dffdb5cf7a80c59c332552155d440e3228a976bd1d80af63f679cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d940240f0a7a96a7d701e601caca89b3ba10c9c72821af22ea68688fe0fb8eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:38:37 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:38:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:39:02 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:39:02 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:39:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:39:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda195448692a02a616c6cf2aa03032ddf253ebd49798bf76e13bf90726a86e8`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52ce2f4d140855001ab5e1b3fd7eb69f8abeb36e0def952819dc68f4df1ea95`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095848ca3678e9abf126364c3b301d0235e2e9bc24fcc0f52ece871173384699`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 7.0 MB (7047917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdba8beadd79658f895e36d8b9bd30c0a333ed2b803aa7a65a7743fe44e6007`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86612478d675d9f1f2a29ffd4e2b267f4d068143d6d54446a61821c310906d1a`  
		Last Modified: Wed, 05 Aug 2026 00:39:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:ddb1f2185bbf69a2faddf31c9cfbe817c1ae767dc2a9f64b710966fd59587c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c723de0c73a6719d340d0a8cba602d14ea5de1a681c7c9c87d47ee92a448c24b`

```dockerfile
```

-	Layers:
	-	`sha256:d08925f96f93d090591183801a085e53bb87685ddcf74613d3928c5d2a8e7fba`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 3.6 MB (3626342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3281c177f780c5c6bd660f06b0196e7e6f3e470d9cc6419413b5f5d5595f9e1`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:95f1ac452757b107b3486edb71c76fbd207b672417b431579f7709ccb0970b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f0668d0213025db956c59782938de6753ffaab0067082f0103e83d2e5bc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:58:58 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:59:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:59:29 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:59:29 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:59:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:59:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:59:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755482caf322c0f05223190cabf6eb5041faa54fa1d6e29fb1a576ceeb2fefb3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e76fbd508ed21fa02dd740f9d2f690f69d6d75aa4692a24b3e5b6ec2a377fc0`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227204de581a4ba64213b51f43c57ec3885cda6a04b6ead88fa1f4d32f25cc3d`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 5.8 MB (5789441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdc5a65852d1c7f467a97a0d2a78fd4eefa7c603712eede51f10b408a6a46f3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e67ec832bad0836f3381d728a24b692d9768bfc5c9fbd9810671c6aa7e85161`  
		Last Modified: Wed, 05 Aug 2026 00:59:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:4f6885e8684751e4483df98ef2aa795e9771cd8fe25e0683230cf68112460096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686d01335a44f920addbe5f390604b2bddf65e679b787ddb3ddd287bc40e2b43`

```dockerfile
```

-	Layers:
	-	`sha256:8f24225acb5ef4f93994abb09ecaec9de5bcc18892711b2ea1d5f1ffd7b76b49`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 3.6 MB (3619336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54eae5b34f8ea0b46e29ea422f7d2cdbf6cb33d2505865402406ca0d7e13348a`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:367003da4861499cb380022e3a611c46b55f51ddc43e87834458db958a691a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d813bed889310839716e60f162f5fcdd26a0ee1b2a28d66511f83c4c9a0f900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:19:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:19:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:20:03 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5cc50090ff50a5b7e97e1f7b96d579df0e5ed42395ac66e5c04d78e0f9aa4b`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d09a0c91140cf3c05fc6136401aff594283c4cf0d28cf33bf9d1a98dfcfa450`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39ac50f72c19095e755213d0a96082c5e38220b1626c694e28d310b33af1109`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 5.6 MB (5584810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58f6c2556cfb748764446965318f277a9a3cacea0e13582474ea93fbaf2b538`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0a6159527171f66d98e32ba64c5478c6a6a29d7ea5a4d1cb276e5b2f76bfd8`  
		Last Modified: Wed, 05 Aug 2026 01:20:11 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:c3dccf375ad79a04f66c0ca6672b2d2b31db510303d50aeed1e2eff549701081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d92d1751f4b68170b8e26289adaae4392fec8a200db92bff62b59757fb1c49`

```dockerfile
```

-	Layers:
	-	`sha256:3c80ac6658cb47a7f0ffa9c56a0b9e5216d49cb40422f67f7f78561176edace9`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 3.6 MB (3618457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7f14226ab2abd663788fb8f6af99bdf40bd6690a6654d66a01fa2de26560b5`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:59fd6a96d9c58952b1827477f6bc5c5408eda612323901f247bdfb41fef0a02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c71edddbb199c3f7b3782eed07995b4b024c24db96d8a50aa21a8e37d76cbcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:40:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:40:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:40:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:40:38 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:40:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:40:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ca4980dc8259c11c9db0c82eac1f419f02f191708431592b678193de5f8ae5`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc47cbd82ec82252a63beb54cc31c157c8bbbad7918b96fd5d307ed802d4ba4`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f12f289fb24b6e571f0b04b39004295e746d6c6eb6fa2f0509cb120df0530`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 6.2 MB (6234063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c032306e94af51b8a23f5258ede82ee65ac51129475c7dced8f94164bcec7cda`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a843dc2254b3815db6c12bdcdcc6dce0750e8bcea81e68e38d499f8abd32af6`  
		Last Modified: Wed, 05 Aug 2026 00:40:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:335a23767f77d5a4420c73c6fdf36fc6b3845cff2abb858ff094f4f0b3cf2187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10cbfda7e10dfee85521e083c02b637012274cdeeef17eeeeefd080d2be7c170`

```dockerfile
```

-	Layers:
	-	`sha256:48382757e84705216f44172e4614ca83d2d05bfcedcfd03111dc189b2aed0786`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 3.6 MB (3621370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adea5e26e738567cb2e264a5263734fb468ff181c1d6b5b785e4996dee6ec96f`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:55d082bbf8d9833de801ea3a2f903d78abffd5ebc04f449a0a1f887e78d7b800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739a9ff3804c8cc0351a76ff8a281cf56698d00f1dede579749ec60b4a30d35e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:46:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:46:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:46:39 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:46:39 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2e69b37badf1f85af7d00cc5400972cbb790047b32d005909419daa043e394`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea31ba7c11042872e7b1381715f6570d2cb959f7fd636cb7b4b6065e9e7fcc22`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b329c09215c558ae8294fe09474fb9cc128fbfb4cdd1586520f00277d1da4e`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 6.4 MB (6443005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e39b09955417838491fde60d31e17a6bfc23d82e63f22a5a2080bc5e180275`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbadfa5e7f5639628b1fdf4a687fb3000b7d7eecdb13414a8f20db5ed5581b51`  
		Last Modified: Wed, 05 Aug 2026 00:46:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:be1100a9fa20f157868025c08eedfa5ba1547c1b99b5e4444105c5782bfdf089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27463926dd48288f0c9311daa4d47affff74960922b1acd5d5bba5f3e2dc4032`

```dockerfile
```

-	Layers:
	-	`sha256:096bc79f8f2bbf787b4e60575cba4d5158e2eadfbd6968757e6d8009886bb0f0`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 3.6 MB (3620471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf76f4324d67df88162fcaaf1a002cab6a2a8f2e8f55b3c639096a13ae80333`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 14.9 KB (14945 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:da52600820351b17e8e8542d5bbf3f4a81ab47fce185939e8a9de182dba43c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3b4e744029cca3760a364476acef51cef03e3ca6da76b35c0ab35a7f205384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:22:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 05:22:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 05:23:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 05:23:53 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 05:23:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:23:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6fecb49f686a6e0fa9cdd832d61b9c99d5824d73e256d7af4fab281e570a2f`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ca2d02a9095600d5143fc711fe92681b285e93434c2c4841b17f7e9e561758`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177f26f1a339a83d3a47adad50570eaf515cde42316f1147458262421de453b`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 6.8 MB (6840888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5c12f1c12ed29b5eb4dbc32108fedcb76a61760cb12bec58ed0be453757e8d`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64883ec488063a6ea2900cf35be2e145afb3f947178b91026e5fc65e7552be37`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:9c63c2106b909591cb834e8dc653b8c84b9b228373533b4da578b5c8b2c463e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eaf4e9800cc4ddc2cda3525b983e99f0e670c146c965585eb76e40c92ccf0b`

```dockerfile
```

-	Layers:
	-	`sha256:8a0e4e52af0cd57a0418d6bac7a878d3df0552c7e8fdefad0a47e062ffe0b8e4`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 3.6 MB (3622079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d724b90d1330dacd8135e6d3edcf3c3b9a8f8d531169c5700644014c0cf9b765`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:19a2f84e957aac34c85613b42fabb2b15e1038d97c96dcc19628c9a742a1ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37637116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dd27448bc56284a1a843840e77d2ea1ac2e7954b2573c6e1a69f08dfe166b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:30:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 06 Aug 2026 19:31:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 06 Aug 2026 19:34:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
VOLUME [/spiped]
# Thu, 06 Aug 2026 19:34:17 GMT
WORKDIR /spiped
# Thu, 06 Aug 2026 19:34:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Aug 2026 19:34:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a270ae86e086812efe1395c6ddd2e741ff1f04a010dd3fd40d06564f2aaa0`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c392189021ea1f685fbc47f3b7f57684d556a5b6e208bd681d698109432beb`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785208cfc9b15f3018f667f7f16d39000cdaa0ed801760c3948bfab7ac785b02`  
		Last Modified: Thu, 06 Aug 2026 19:35:31 GMT  
		Size: 9.4 MB (9356637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eba3f63de0c7ea13e3642c9f6ead09f8c5fc65ad5a591ffc38cdd437027e663`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955ab9756283a3f65a286ebc6140fa5131922be5dda3e470e386fd3feee1ddd4`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:37a43a533cde72f1658ba81526c66c88e4af48535f9df07c5adec62b0ec3c81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516a98e78a958d1e150f5b8a184ea0612165702b350405a911e4fba24f949144`

```dockerfile
```

-	Layers:
	-	`sha256:4142e29da62ee97d743396cf915af0039bd5729a6c1d3ec3989f3eced3d5be50`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 3.6 MB (3613485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313c4e298d85451a708e39492ca8fa5568fee78cce76bfce8a78619c81531a1a`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:63d841c8881be79169fea3d63c7ac1041443e6f2d34824b0c9c6c1c2be8a943c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf517746699aead4c2e94fd6fbdedce392d29c08f162bc97eb9b20be5099bda0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:07:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:07:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:07:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:07:42 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:07:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:07:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1969e4688d17a10186c0112a169a3a66b120603c9623f83136d47b4a8a90f9f4`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938c3297899c98561c78b03c0da092118d3d5ae5f89b6fb76950a65e01caf345`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cce91936e00469ab3bf502d9ed81f8cb93f372652d81dca9379170a0b08364`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 6.1 MB (6122260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651efed2a8f5673aa3b09ccd02831d6da086c031e9a1d961a79e791d84086e97`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29277eec416d7bc43e64014dc6fa32d8789a3f3832a370d2d700c1666348eddf`  
		Last Modified: Wed, 05 Aug 2026 01:07:55 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:5b948bdb98f94ca99e3d6f7884c28eae70a457f6b8e05298a3561e32424178b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5d7d4746af00d78d360e60ca178bd1c62fd20a218a02f4268df4a2969dd902`

```dockerfile
```

-	Layers:
	-	`sha256:f1f7b0d3855eef871f90e658ce19012a64c72311c7babe1aef026c8b46762992`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 3.6 MB (3618705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7d327455b0bb23a2eceb2067ff6b56d548c49303b779e03c4edc3b0001def2a`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:e100be27be5d10ae06e64a73491e664cafef29711fc03b7e760ffd43ac97bc21
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
$ docker pull spiped@sha256:27c62f22136c98c38224eccbad0739cfa5f4cf9c4d4cd3377c43d46945484ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3967475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60eadd8ed1cdf5be0a209d2cb535c22d25c150dd65ff27d92e57616d27fa979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d10bab1d7548f8bce287f0517a87e92fa17fc9cd47e89537c4ae4d065a2baed`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220d7d87e5024ed87f61f47d90d1a1a59e931e117f2c04455a9f683ce8fc687b`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16de1a26386c992015e17006a7cbeacbd4d70b285fab4624a4aaa5f94ed298d`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecd81a13dc648d70c4d86fc7ec1d56cd674c50a487a6fd057fa6563720de4e`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff1b91798e651fa945d477d288f479fe430d9a60b56f2d48d2dde4798517ba`  
		Last Modified: Mon, 24 Aug 2026 18:03:58 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c8a0629317533451efd6f75405d02380e74341bc7ead41f9fc1dc2b465747484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ced2a3964c26249b77109955acff277efd16af016c2c9f088cd5e777ba67ba`

```dockerfile
```

-	Layers:
	-	`sha256:049d0be0e074eee81cb56a447b6c93c54a62a8b0781d7c36be8dd36deaeeb7f5`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1fdd893266754a769c44597a0a4afdb612628f0f9840f2b170a3e9503de`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:6b80d97447bed4659624276638f55197b04a6b072ffc7e016f5ae31ad43f427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbc88a77066cdad4fdc2aded9b1a6029d415bdacaf26c6bbeeb2adf7ef3cf94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:26 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:36 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04046c0d1a0f642415835c0cd925b347b78e9d7f2cbe46978afa939257bf77d`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547bb403f5ba5d25a74163afbfc33029e25e53a4f343fd418bfce82c4118ca55`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 8.8 KB (8789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d4923e4bc96a4128f69f0b4369ee7be976416ba008fa371fb974ea57c89db8`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 91.9 KB (91930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aca5802b6f4727cc1c446c6ac08c5adfff20d00618bc7a41a3834f15c2c1973`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8990e66bb18279d139a36d427cf5e20371f497b4f68fca0cb099705c5d902da1`  
		Last Modified: Mon, 24 Aug 2026 18:03:40 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:eda7e38bbcd3f06b08d3762878fa3d2c40d5227c0474c8ecfa9f1e2ca866fc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c1bb15c8e40e8960e835f075d08d400eef1f2ddbc0118e0aea5ebdfce4c7b8`

```dockerfile
```

-	Layers:
	-	`sha256:f90101685c100487de5c8e8dbd2d600f96cf696f7c76a95cd12451def92cc31c`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:3a4eab30c23da3d38a16fd401bd196a3b22dca21045607a23f584922e0dd7672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a44fcf7957eedc4fe1cbfb4bafa37b58302830116830aa7b525aa5fee52c1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:59 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c5aa77c1d9967f1626d60ac3399c46365611790ff73e34c29503375067b7c7`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5730d5744244a9b520e77da071dff779bff1738cd580d0466a2579818915a2d`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 8.8 KB (8825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f716412f07c1f4af1cb7f1655222874311083f76428095c316e8005aae73898a`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 84.8 KB (84782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc7fff0b0d6e9feeb63a0958bdce70e0a725a16e8340acf9ac57b5c997fe422`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca203aa6338fd9093c71aef9e0fd2f27658e7baf44f4d7bb80b390a5d2e2fd51`  
		Last Modified: Mon, 24 Aug 2026 18:03:05 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:df6a9f3f33d04dbfdefc854184db86e38230e0b77a744c6abb3d3c688d8820e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254f994d3f18390e35d0d4cd1504c913dc9a6ee8bf4d69276d25f792ec3dfb1e`

```dockerfile
```

-	Layers:
	-	`sha256:fad1555719469a326978ba42d815b033dd22f4a8bc4833d172c1a0fac144b477`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3193b0713ec9cf58f46ab553cbb653c9f0c92a021c8f32111961a6330a8a62c`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:b0584758f7ca377ed57529149272dced0a27a5da56e77b650ce238698e6cc090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4295743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b22c8c43ec801e02f7149f499ff79fc97a74aa051702cf1bded590b0c695a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:42 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43c53ec7306faa48240fbfaabb2225e75c1c03a8f0d9400f4ded80484d44d7f`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1461c499fdd81f98a332353e6dbca030f808ddc34f12b790d99bf3ad5a180ffa`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdc3578893f7a7490f6acb1d7af58eb72105acfa863bd645d00bfe980a9c809`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 102.5 KB (102521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c9758a6a1bf063650302b64ffa21497266692605b406e7858a19ed16019a3e`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea373606ee4e5f78e235158dc95567430efba6126793b60ab5f1d15ca20f56b`  
		Last Modified: Mon, 24 Aug 2026 18:02:58 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:37150a504595489d54398128ac384f6585201fb1670f428fc79304cc850d7668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d145683ca036dbabcc1337a709956d4e39e3935a1a665274da25858a95e670`

```dockerfile
```

-	Layers:
	-	`sha256:fa9f41709d1c65f5682dd0b69653ba51de6c25fd74cff525dd89bedee85a68d6`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14aad259868bb796080cbe550d1462b03650b94d19ce227c6ac33467cac2c4f2`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:8d52984b4268447b45aeda532f6dd7dcee33e31ef7dd14aa4eef8d622039530d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d18b8afa781096142c3bfe4d5d68225fbb61025d848fd3346d8339e3a769ff8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:25 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5674db770041dea7bdb9814e2780ecfa56f9e2b489a4d5304ae6d00956203b95`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c95bf2e4f450571f54d6609fe2c42bb90b079232eaaa0eb5b44ba5a715d852`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 8.8 KB (8801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d2b7088287ef460ab32b5cca3a095aecff4554b37e02e923e7b1a427391e5`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 122.7 KB (122665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8def0a966c55889e7f5d4f5df40cd61ccb20387d45e904df21d1b0f47f472b9`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be2d22ce1e1663ba424d1bbb9fa8966e7800f174f784017cc25491db6deafcf`  
		Last Modified: Mon, 24 Aug 2026 18:03:31 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e99b0521b200790057459b1d5f9da5e44cbc7dd68483e3bb9620ddaf53ef508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997688daaf4d4b562862b432479817dcefcf0b87bb708c043a62bd8fc082d75`

```dockerfile
```

-	Layers:
	-	`sha256:f46075ad8926246883be61045d15ec083df9b63a3bbadb923698d2b6bbd83641`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454fc7ec9bd31d623347b8b4b5e49e44c8c1de79bdcf9d650d381554c4e1b886`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:b01cd0d66e68f626cd37dd5692a413e6e236b573305ef4b04f66ccd35c4b4f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3938345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc36e7972a19c9e3eabc2d3e2eba307841c882659a2b2555ca5ecffef6f9570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:27 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c41f5967dd36f6a3c6e4053b0376de18da09db22c2688b06b9151e73687713`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131dd341cdd1237b30e6e90857aeedaaadd551060901e1647527e6489f2e2a8a`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d38c25b5cd0b3fc91329d326de269558d937cec097ed3ea2500a7648208fc3`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 114.8 KB (114767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f680f8924a6ad82588ac01386791b9b45ef1ffc4d6240c4d6490b4860dbe8eba`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9bab852347aca626dd44e4ba513a3a93a86524dee71c1cf5d86b391840343f`  
		Last Modified: Mon, 24 Aug 2026 18:02:39 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06ce29946f53e63cc3757cb235e2b2421a2a9f879792fbebacb2ebf793c6e466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6753d933c3f5e6c3b5184e662e2b7cfc23f8773f174addb132caf69aa4240b91`

```dockerfile
```

-	Layers:
	-	`sha256:d6e3ba9573349d6d6f3da52aa1234d60db55d6b28808436176969dbf92b62faf`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea5334b042f1a23f4eb8365bfe861654d8d42b8eba748502fa93c4f9f3fb2d00`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6bc3753ca761bae60e057fb76a2dd63cbec0924e3588c5c9bb240221e283dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9e72a79b8103a78314caacbdac0bfeeed605231cc777975ea53b586f9d2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:02 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac69498c376413b1ee4f841ef2f56b6b92d1044b25eed68abf73507acbc57278`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075673245df91e4a7d327e272bd0cb01891b2004277ac593a82fe7633a2f1659`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824dd19889ff6fb0830dbcbdf46aaf44f78570f414b5e080cb14826cb661029`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 98.6 KB (98566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fe48085e7b59fcf7b43df4161db2c671866390ad49b7043310a73781068f04`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ac5b140b0e3f1a67f13af786628597f050e4a3cb29e248eb873fffb4fc38ef`  
		Last Modified: Mon, 24 Aug 2026 18:03:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ec5863eed4a1091816be64761330b9de172ace1651e996c2d2a2432077c76390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef257f7618c01d3d73ad9a8dc2a4019d4aff9bf3e352280e8ee633f2541dac`

```dockerfile
```

-	Layers:
	-	`sha256:3cfc11d8b67b7eaa4240d7e28a34f715ec0a8d467f5ee257b175a02e2ce4fd93`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a8dc372a89fc1390ecacd49132d1851b1d36b9d2476b643ffcf67a7f097428`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:cf6fbec55a3b5ce874fb96fc4c04b71d565394847016fcd54260152e2314f58c
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
$ docker pull spiped@sha256:58aa905423dffdb5cf7a80c59c332552155d440e3228a976bd1d80af63f679cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d940240f0a7a96a7d701e601caca89b3ba10c9c72821af22ea68688fe0fb8eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:38:37 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:38:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:39:02 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:39:02 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:39:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:39:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda195448692a02a616c6cf2aa03032ddf253ebd49798bf76e13bf90726a86e8`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52ce2f4d140855001ab5e1b3fd7eb69f8abeb36e0def952819dc68f4df1ea95`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095848ca3678e9abf126364c3b301d0235e2e9bc24fcc0f52ece871173384699`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 7.0 MB (7047917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdba8beadd79658f895e36d8b9bd30c0a333ed2b803aa7a65a7743fe44e6007`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86612478d675d9f1f2a29ffd4e2b267f4d068143d6d54446a61821c310906d1a`  
		Last Modified: Wed, 05 Aug 2026 00:39:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:ddb1f2185bbf69a2faddf31c9cfbe817c1ae767dc2a9f64b710966fd59587c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c723de0c73a6719d340d0a8cba602d14ea5de1a681c7c9c87d47ee92a448c24b`

```dockerfile
```

-	Layers:
	-	`sha256:d08925f96f93d090591183801a085e53bb87685ddcf74613d3928c5d2a8e7fba`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 3.6 MB (3626342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3281c177f780c5c6bd660f06b0196e7e6f3e470d9cc6419413b5f5d5595f9e1`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:95f1ac452757b107b3486edb71c76fbd207b672417b431579f7709ccb0970b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f0668d0213025db956c59782938de6753ffaab0067082f0103e83d2e5bc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:58:58 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:59:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:59:29 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:59:29 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:59:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:59:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:59:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755482caf322c0f05223190cabf6eb5041faa54fa1d6e29fb1a576ceeb2fefb3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e76fbd508ed21fa02dd740f9d2f690f69d6d75aa4692a24b3e5b6ec2a377fc0`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227204de581a4ba64213b51f43c57ec3885cda6a04b6ead88fa1f4d32f25cc3d`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 5.8 MB (5789441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdc5a65852d1c7f467a97a0d2a78fd4eefa7c603712eede51f10b408a6a46f3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e67ec832bad0836f3381d728a24b692d9768bfc5c9fbd9810671c6aa7e85161`  
		Last Modified: Wed, 05 Aug 2026 00:59:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:4f6885e8684751e4483df98ef2aa795e9771cd8fe25e0683230cf68112460096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686d01335a44f920addbe5f390604b2bddf65e679b787ddb3ddd287bc40e2b43`

```dockerfile
```

-	Layers:
	-	`sha256:8f24225acb5ef4f93994abb09ecaec9de5bcc18892711b2ea1d5f1ffd7b76b49`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 3.6 MB (3619336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54eae5b34f8ea0b46e29ea422f7d2cdbf6cb33d2505865402406ca0d7e13348a`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:367003da4861499cb380022e3a611c46b55f51ddc43e87834458db958a691a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d813bed889310839716e60f162f5fcdd26a0ee1b2a28d66511f83c4c9a0f900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:19:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:19:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:20:03 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5cc50090ff50a5b7e97e1f7b96d579df0e5ed42395ac66e5c04d78e0f9aa4b`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d09a0c91140cf3c05fc6136401aff594283c4cf0d28cf33bf9d1a98dfcfa450`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39ac50f72c19095e755213d0a96082c5e38220b1626c694e28d310b33af1109`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 5.6 MB (5584810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58f6c2556cfb748764446965318f277a9a3cacea0e13582474ea93fbaf2b538`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0a6159527171f66d98e32ba64c5478c6a6a29d7ea5a4d1cb276e5b2f76bfd8`  
		Last Modified: Wed, 05 Aug 2026 01:20:11 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:c3dccf375ad79a04f66c0ca6672b2d2b31db510303d50aeed1e2eff549701081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d92d1751f4b68170b8e26289adaae4392fec8a200db92bff62b59757fb1c49`

```dockerfile
```

-	Layers:
	-	`sha256:3c80ac6658cb47a7f0ffa9c56a0b9e5216d49cb40422f67f7f78561176edace9`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 3.6 MB (3618457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7f14226ab2abd663788fb8f6af99bdf40bd6690a6654d66a01fa2de26560b5`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:59fd6a96d9c58952b1827477f6bc5c5408eda612323901f247bdfb41fef0a02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c71edddbb199c3f7b3782eed07995b4b024c24db96d8a50aa21a8e37d76cbcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:40:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:40:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:40:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:40:38 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:40:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:40:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ca4980dc8259c11c9db0c82eac1f419f02f191708431592b678193de5f8ae5`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc47cbd82ec82252a63beb54cc31c157c8bbbad7918b96fd5d307ed802d4ba4`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f12f289fb24b6e571f0b04b39004295e746d6c6eb6fa2f0509cb120df0530`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 6.2 MB (6234063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c032306e94af51b8a23f5258ede82ee65ac51129475c7dced8f94164bcec7cda`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a843dc2254b3815db6c12bdcdcc6dce0750e8bcea81e68e38d499f8abd32af6`  
		Last Modified: Wed, 05 Aug 2026 00:40:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:335a23767f77d5a4420c73c6fdf36fc6b3845cff2abb858ff094f4f0b3cf2187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10cbfda7e10dfee85521e083c02b637012274cdeeef17eeeeefd080d2be7c170`

```dockerfile
```

-	Layers:
	-	`sha256:48382757e84705216f44172e4614ca83d2d05bfcedcfd03111dc189b2aed0786`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 3.6 MB (3621370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adea5e26e738567cb2e264a5263734fb468ff181c1d6b5b785e4996dee6ec96f`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:55d082bbf8d9833de801ea3a2f903d78abffd5ebc04f449a0a1f887e78d7b800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739a9ff3804c8cc0351a76ff8a281cf56698d00f1dede579749ec60b4a30d35e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:46:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:46:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:46:39 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:46:39 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2e69b37badf1f85af7d00cc5400972cbb790047b32d005909419daa043e394`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea31ba7c11042872e7b1381715f6570d2cb959f7fd636cb7b4b6065e9e7fcc22`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b329c09215c558ae8294fe09474fb9cc128fbfb4cdd1586520f00277d1da4e`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 6.4 MB (6443005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e39b09955417838491fde60d31e17a6bfc23d82e63f22a5a2080bc5e180275`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbadfa5e7f5639628b1fdf4a687fb3000b7d7eecdb13414a8f20db5ed5581b51`  
		Last Modified: Wed, 05 Aug 2026 00:46:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:be1100a9fa20f157868025c08eedfa5ba1547c1b99b5e4444105c5782bfdf089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27463926dd48288f0c9311daa4d47affff74960922b1acd5d5bba5f3e2dc4032`

```dockerfile
```

-	Layers:
	-	`sha256:096bc79f8f2bbf787b4e60575cba4d5158e2eadfbd6968757e6d8009886bb0f0`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 3.6 MB (3620471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf76f4324d67df88162fcaaf1a002cab6a2a8f2e8f55b3c639096a13ae80333`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 14.9 KB (14945 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:da52600820351b17e8e8542d5bbf3f4a81ab47fce185939e8a9de182dba43c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3b4e744029cca3760a364476acef51cef03e3ca6da76b35c0ab35a7f205384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:22:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 05:22:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 05:23:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 05:23:53 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 05:23:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:23:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6fecb49f686a6e0fa9cdd832d61b9c99d5824d73e256d7af4fab281e570a2f`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ca2d02a9095600d5143fc711fe92681b285e93434c2c4841b17f7e9e561758`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177f26f1a339a83d3a47adad50570eaf515cde42316f1147458262421de453b`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 6.8 MB (6840888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5c12f1c12ed29b5eb4dbc32108fedcb76a61760cb12bec58ed0be453757e8d`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64883ec488063a6ea2900cf35be2e145afb3f947178b91026e5fc65e7552be37`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:9c63c2106b909591cb834e8dc653b8c84b9b228373533b4da578b5c8b2c463e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eaf4e9800cc4ddc2cda3525b983e99f0e670c146c965585eb76e40c92ccf0b`

```dockerfile
```

-	Layers:
	-	`sha256:8a0e4e52af0cd57a0418d6bac7a878d3df0552c7e8fdefad0a47e062ffe0b8e4`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 3.6 MB (3622079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d724b90d1330dacd8135e6d3edcf3c3b9a8f8d531169c5700644014c0cf9b765`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:19a2f84e957aac34c85613b42fabb2b15e1038d97c96dcc19628c9a742a1ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37637116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dd27448bc56284a1a843840e77d2ea1ac2e7954b2573c6e1a69f08dfe166b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:30:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 06 Aug 2026 19:31:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 06 Aug 2026 19:34:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
VOLUME [/spiped]
# Thu, 06 Aug 2026 19:34:17 GMT
WORKDIR /spiped
# Thu, 06 Aug 2026 19:34:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Aug 2026 19:34:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a270ae86e086812efe1395c6ddd2e741ff1f04a010dd3fd40d06564f2aaa0`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c392189021ea1f685fbc47f3b7f57684d556a5b6e208bd681d698109432beb`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785208cfc9b15f3018f667f7f16d39000cdaa0ed801760c3948bfab7ac785b02`  
		Last Modified: Thu, 06 Aug 2026 19:35:31 GMT  
		Size: 9.4 MB (9356637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eba3f63de0c7ea13e3642c9f6ead09f8c5fc65ad5a591ffc38cdd437027e663`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955ab9756283a3f65a286ebc6140fa5131922be5dda3e470e386fd3feee1ddd4`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:37a43a533cde72f1658ba81526c66c88e4af48535f9df07c5adec62b0ec3c81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516a98e78a958d1e150f5b8a184ea0612165702b350405a911e4fba24f949144`

```dockerfile
```

-	Layers:
	-	`sha256:4142e29da62ee97d743396cf915af0039bd5729a6c1d3ec3989f3eced3d5be50`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 3.6 MB (3613485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313c4e298d85451a708e39492ca8fa5568fee78cce76bfce8a78619c81531a1a`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:63d841c8881be79169fea3d63c7ac1041443e6f2d34824b0c9c6c1c2be8a943c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf517746699aead4c2e94fd6fbdedce392d29c08f162bc97eb9b20be5099bda0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:07:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:07:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:07:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:07:42 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:07:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:07:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1969e4688d17a10186c0112a169a3a66b120603c9623f83136d47b4a8a90f9f4`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938c3297899c98561c78b03c0da092118d3d5ae5f89b6fb76950a65e01caf345`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cce91936e00469ab3bf502d9ed81f8cb93f372652d81dca9379170a0b08364`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 6.1 MB (6122260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651efed2a8f5673aa3b09ccd02831d6da086c031e9a1d961a79e791d84086e97`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29277eec416d7bc43e64014dc6fa32d8789a3f3832a370d2d700c1666348eddf`  
		Last Modified: Wed, 05 Aug 2026 01:07:55 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:5b948bdb98f94ca99e3d6f7884c28eae70a457f6b8e05298a3561e32424178b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5d7d4746af00d78d360e60ca178bd1c62fd20a218a02f4268df4a2969dd902`

```dockerfile
```

-	Layers:
	-	`sha256:f1f7b0d3855eef871f90e658ce19012a64c72311c7babe1aef026c8b46762992`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 3.6 MB (3618705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7d327455b0bb23a2eceb2067ff6b56d548c49303b779e03c4edc3b0001def2a`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:e100be27be5d10ae06e64a73491e664cafef29711fc03b7e760ffd43ac97bc21
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
$ docker pull spiped@sha256:27c62f22136c98c38224eccbad0739cfa5f4cf9c4d4cd3377c43d46945484ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3967475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60eadd8ed1cdf5be0a209d2cb535c22d25c150dd65ff27d92e57616d27fa979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d10bab1d7548f8bce287f0517a87e92fa17fc9cd47e89537c4ae4d065a2baed`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220d7d87e5024ed87f61f47d90d1a1a59e931e117f2c04455a9f683ce8fc687b`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16de1a26386c992015e17006a7cbeacbd4d70b285fab4624a4aaa5f94ed298d`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecd81a13dc648d70c4d86fc7ec1d56cd674c50a487a6fd057fa6563720de4e`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff1b91798e651fa945d477d288f479fe430d9a60b56f2d48d2dde4798517ba`  
		Last Modified: Mon, 24 Aug 2026 18:03:58 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c8a0629317533451efd6f75405d02380e74341bc7ead41f9fc1dc2b465747484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ced2a3964c26249b77109955acff277efd16af016c2c9f088cd5e777ba67ba`

```dockerfile
```

-	Layers:
	-	`sha256:049d0be0e074eee81cb56a447b6c93c54a62a8b0781d7c36be8dd36deaeeb7f5`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1fdd893266754a769c44597a0a4afdb612628f0f9840f2b170a3e9503de`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:6b80d97447bed4659624276638f55197b04a6b072ffc7e016f5ae31ad43f427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbc88a77066cdad4fdc2aded9b1a6029d415bdacaf26c6bbeeb2adf7ef3cf94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:26 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:36 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04046c0d1a0f642415835c0cd925b347b78e9d7f2cbe46978afa939257bf77d`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547bb403f5ba5d25a74163afbfc33029e25e53a4f343fd418bfce82c4118ca55`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 8.8 KB (8789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d4923e4bc96a4128f69f0b4369ee7be976416ba008fa371fb974ea57c89db8`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 91.9 KB (91930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aca5802b6f4727cc1c446c6ac08c5adfff20d00618bc7a41a3834f15c2c1973`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8990e66bb18279d139a36d427cf5e20371f497b4f68fca0cb099705c5d902da1`  
		Last Modified: Mon, 24 Aug 2026 18:03:40 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:eda7e38bbcd3f06b08d3762878fa3d2c40d5227c0474c8ecfa9f1e2ca866fc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c1bb15c8e40e8960e835f075d08d400eef1f2ddbc0118e0aea5ebdfce4c7b8`

```dockerfile
```

-	Layers:
	-	`sha256:f90101685c100487de5c8e8dbd2d600f96cf696f7c76a95cd12451def92cc31c`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:3a4eab30c23da3d38a16fd401bd196a3b22dca21045607a23f584922e0dd7672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a44fcf7957eedc4fe1cbfb4bafa37b58302830116830aa7b525aa5fee52c1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:59 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c5aa77c1d9967f1626d60ac3399c46365611790ff73e34c29503375067b7c7`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5730d5744244a9b520e77da071dff779bff1738cd580d0466a2579818915a2d`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 8.8 KB (8825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f716412f07c1f4af1cb7f1655222874311083f76428095c316e8005aae73898a`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 84.8 KB (84782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc7fff0b0d6e9feeb63a0958bdce70e0a725a16e8340acf9ac57b5c997fe422`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca203aa6338fd9093c71aef9e0fd2f27658e7baf44f4d7bb80b390a5d2e2fd51`  
		Last Modified: Mon, 24 Aug 2026 18:03:05 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:df6a9f3f33d04dbfdefc854184db86e38230e0b77a744c6abb3d3c688d8820e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254f994d3f18390e35d0d4cd1504c913dc9a6ee8bf4d69276d25f792ec3dfb1e`

```dockerfile
```

-	Layers:
	-	`sha256:fad1555719469a326978ba42d815b033dd22f4a8bc4833d172c1a0fac144b477`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3193b0713ec9cf58f46ab553cbb653c9f0c92a021c8f32111961a6330a8a62c`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:b0584758f7ca377ed57529149272dced0a27a5da56e77b650ce238698e6cc090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4295743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b22c8c43ec801e02f7149f499ff79fc97a74aa051702cf1bded590b0c695a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:42 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43c53ec7306faa48240fbfaabb2225e75c1c03a8f0d9400f4ded80484d44d7f`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1461c499fdd81f98a332353e6dbca030f808ddc34f12b790d99bf3ad5a180ffa`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdc3578893f7a7490f6acb1d7af58eb72105acfa863bd645d00bfe980a9c809`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 102.5 KB (102521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c9758a6a1bf063650302b64ffa21497266692605b406e7858a19ed16019a3e`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea373606ee4e5f78e235158dc95567430efba6126793b60ab5f1d15ca20f56b`  
		Last Modified: Mon, 24 Aug 2026 18:02:58 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:37150a504595489d54398128ac384f6585201fb1670f428fc79304cc850d7668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d145683ca036dbabcc1337a709956d4e39e3935a1a665274da25858a95e670`

```dockerfile
```

-	Layers:
	-	`sha256:fa9f41709d1c65f5682dd0b69653ba51de6c25fd74cff525dd89bedee85a68d6`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14aad259868bb796080cbe550d1462b03650b94d19ce227c6ac33467cac2c4f2`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:8d52984b4268447b45aeda532f6dd7dcee33e31ef7dd14aa4eef8d622039530d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d18b8afa781096142c3bfe4d5d68225fbb61025d848fd3346d8339e3a769ff8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:25 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5674db770041dea7bdb9814e2780ecfa56f9e2b489a4d5304ae6d00956203b95`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c95bf2e4f450571f54d6609fe2c42bb90b079232eaaa0eb5b44ba5a715d852`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 8.8 KB (8801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d2b7088287ef460ab32b5cca3a095aecff4554b37e02e923e7b1a427391e5`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 122.7 KB (122665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8def0a966c55889e7f5d4f5df40cd61ccb20387d45e904df21d1b0f47f472b9`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be2d22ce1e1663ba424d1bbb9fa8966e7800f174f784017cc25491db6deafcf`  
		Last Modified: Mon, 24 Aug 2026 18:03:31 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e99b0521b200790057459b1d5f9da5e44cbc7dd68483e3bb9620ddaf53ef508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997688daaf4d4b562862b432479817dcefcf0b87bb708c043a62bd8fc082d75`

```dockerfile
```

-	Layers:
	-	`sha256:f46075ad8926246883be61045d15ec083df9b63a3bbadb923698d2b6bbd83641`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454fc7ec9bd31d623347b8b4b5e49e44c8c1de79bdcf9d650d381554c4e1b886`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:b01cd0d66e68f626cd37dd5692a413e6e236b573305ef4b04f66ccd35c4b4f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3938345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc36e7972a19c9e3eabc2d3e2eba307841c882659a2b2555ca5ecffef6f9570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:27 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c41f5967dd36f6a3c6e4053b0376de18da09db22c2688b06b9151e73687713`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131dd341cdd1237b30e6e90857aeedaaadd551060901e1647527e6489f2e2a8a`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d38c25b5cd0b3fc91329d326de269558d937cec097ed3ea2500a7648208fc3`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 114.8 KB (114767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f680f8924a6ad82588ac01386791b9b45ef1ffc4d6240c4d6490b4860dbe8eba`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9bab852347aca626dd44e4ba513a3a93a86524dee71c1cf5d86b391840343f`  
		Last Modified: Mon, 24 Aug 2026 18:02:39 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06ce29946f53e63cc3757cb235e2b2421a2a9f879792fbebacb2ebf793c6e466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6753d933c3f5e6c3b5184e662e2b7cfc23f8773f174addb132caf69aa4240b91`

```dockerfile
```

-	Layers:
	-	`sha256:d6e3ba9573349d6d6f3da52aa1234d60db55d6b28808436176969dbf92b62faf`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea5334b042f1a23f4eb8365bfe861654d8d42b8eba748502fa93c4f9f3fb2d00`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6bc3753ca761bae60e057fb76a2dd63cbec0924e3588c5c9bb240221e283dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9e72a79b8103a78314caacbdac0bfeeed605231cc777975ea53b586f9d2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:02 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac69498c376413b1ee4f841ef2f56b6b92d1044b25eed68abf73507acbc57278`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075673245df91e4a7d327e272bd0cb01891b2004277ac593a82fe7633a2f1659`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824dd19889ff6fb0830dbcbdf46aaf44f78570f414b5e080cb14826cb661029`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 98.6 KB (98566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fe48085e7b59fcf7b43df4161db2c671866390ad49b7043310a73781068f04`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ac5b140b0e3f1a67f13af786628597f050e4a3cb29e248eb873fffb4fc38ef`  
		Last Modified: Mon, 24 Aug 2026 18:03:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ec5863eed4a1091816be64761330b9de172ace1651e996c2d2a2432077c76390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef257f7618c01d3d73ad9a8dc2a4019d4aff9bf3e352280e8ee633f2541dac`

```dockerfile
```

-	Layers:
	-	`sha256:3cfc11d8b67b7eaa4240d7e28a34f715ec0a8d467f5ee257b175a02e2ce4fd93`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a8dc372a89fc1390ecacd49132d1851b1d36b9d2476b643ffcf67a7f097428`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:cf6fbec55a3b5ce874fb96fc4c04b71d565394847016fcd54260152e2314f58c
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
$ docker pull spiped@sha256:58aa905423dffdb5cf7a80c59c332552155d440e3228a976bd1d80af63f679cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d940240f0a7a96a7d701e601caca89b3ba10c9c72821af22ea68688fe0fb8eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:38:37 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:38:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:39:02 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:39:02 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:39:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:39:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda195448692a02a616c6cf2aa03032ddf253ebd49798bf76e13bf90726a86e8`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52ce2f4d140855001ab5e1b3fd7eb69f8abeb36e0def952819dc68f4df1ea95`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095848ca3678e9abf126364c3b301d0235e2e9bc24fcc0f52ece871173384699`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 7.0 MB (7047917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdba8beadd79658f895e36d8b9bd30c0a333ed2b803aa7a65a7743fe44e6007`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86612478d675d9f1f2a29ffd4e2b267f4d068143d6d54446a61821c310906d1a`  
		Last Modified: Wed, 05 Aug 2026 00:39:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:ddb1f2185bbf69a2faddf31c9cfbe817c1ae767dc2a9f64b710966fd59587c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c723de0c73a6719d340d0a8cba602d14ea5de1a681c7c9c87d47ee92a448c24b`

```dockerfile
```

-	Layers:
	-	`sha256:d08925f96f93d090591183801a085e53bb87685ddcf74613d3928c5d2a8e7fba`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 3.6 MB (3626342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3281c177f780c5c6bd660f06b0196e7e6f3e470d9cc6419413b5f5d5595f9e1`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:95f1ac452757b107b3486edb71c76fbd207b672417b431579f7709ccb0970b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f0668d0213025db956c59782938de6753ffaab0067082f0103e83d2e5bc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:58:58 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:59:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:59:29 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:59:29 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:59:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:59:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:59:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755482caf322c0f05223190cabf6eb5041faa54fa1d6e29fb1a576ceeb2fefb3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e76fbd508ed21fa02dd740f9d2f690f69d6d75aa4692a24b3e5b6ec2a377fc0`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227204de581a4ba64213b51f43c57ec3885cda6a04b6ead88fa1f4d32f25cc3d`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 5.8 MB (5789441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdc5a65852d1c7f467a97a0d2a78fd4eefa7c603712eede51f10b408a6a46f3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e67ec832bad0836f3381d728a24b692d9768bfc5c9fbd9810671c6aa7e85161`  
		Last Modified: Wed, 05 Aug 2026 00:59:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:4f6885e8684751e4483df98ef2aa795e9771cd8fe25e0683230cf68112460096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686d01335a44f920addbe5f390604b2bddf65e679b787ddb3ddd287bc40e2b43`

```dockerfile
```

-	Layers:
	-	`sha256:8f24225acb5ef4f93994abb09ecaec9de5bcc18892711b2ea1d5f1ffd7b76b49`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 3.6 MB (3619336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54eae5b34f8ea0b46e29ea422f7d2cdbf6cb33d2505865402406ca0d7e13348a`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:367003da4861499cb380022e3a611c46b55f51ddc43e87834458db958a691a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d813bed889310839716e60f162f5fcdd26a0ee1b2a28d66511f83c4c9a0f900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:19:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:19:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:20:03 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5cc50090ff50a5b7e97e1f7b96d579df0e5ed42395ac66e5c04d78e0f9aa4b`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d09a0c91140cf3c05fc6136401aff594283c4cf0d28cf33bf9d1a98dfcfa450`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39ac50f72c19095e755213d0a96082c5e38220b1626c694e28d310b33af1109`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 5.6 MB (5584810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58f6c2556cfb748764446965318f277a9a3cacea0e13582474ea93fbaf2b538`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0a6159527171f66d98e32ba64c5478c6a6a29d7ea5a4d1cb276e5b2f76bfd8`  
		Last Modified: Wed, 05 Aug 2026 01:20:11 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:c3dccf375ad79a04f66c0ca6672b2d2b31db510303d50aeed1e2eff549701081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d92d1751f4b68170b8e26289adaae4392fec8a200db92bff62b59757fb1c49`

```dockerfile
```

-	Layers:
	-	`sha256:3c80ac6658cb47a7f0ffa9c56a0b9e5216d49cb40422f67f7f78561176edace9`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 3.6 MB (3618457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7f14226ab2abd663788fb8f6af99bdf40bd6690a6654d66a01fa2de26560b5`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:59fd6a96d9c58952b1827477f6bc5c5408eda612323901f247bdfb41fef0a02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c71edddbb199c3f7b3782eed07995b4b024c24db96d8a50aa21a8e37d76cbcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:40:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:40:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:40:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:40:38 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:40:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:40:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ca4980dc8259c11c9db0c82eac1f419f02f191708431592b678193de5f8ae5`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc47cbd82ec82252a63beb54cc31c157c8bbbad7918b96fd5d307ed802d4ba4`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f12f289fb24b6e571f0b04b39004295e746d6c6eb6fa2f0509cb120df0530`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 6.2 MB (6234063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c032306e94af51b8a23f5258ede82ee65ac51129475c7dced8f94164bcec7cda`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a843dc2254b3815db6c12bdcdcc6dce0750e8bcea81e68e38d499f8abd32af6`  
		Last Modified: Wed, 05 Aug 2026 00:40:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:335a23767f77d5a4420c73c6fdf36fc6b3845cff2abb858ff094f4f0b3cf2187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10cbfda7e10dfee85521e083c02b637012274cdeeef17eeeeefd080d2be7c170`

```dockerfile
```

-	Layers:
	-	`sha256:48382757e84705216f44172e4614ca83d2d05bfcedcfd03111dc189b2aed0786`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 3.6 MB (3621370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adea5e26e738567cb2e264a5263734fb468ff181c1d6b5b785e4996dee6ec96f`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:55d082bbf8d9833de801ea3a2f903d78abffd5ebc04f449a0a1f887e78d7b800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739a9ff3804c8cc0351a76ff8a281cf56698d00f1dede579749ec60b4a30d35e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:46:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:46:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:46:39 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:46:39 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2e69b37badf1f85af7d00cc5400972cbb790047b32d005909419daa043e394`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea31ba7c11042872e7b1381715f6570d2cb959f7fd636cb7b4b6065e9e7fcc22`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b329c09215c558ae8294fe09474fb9cc128fbfb4cdd1586520f00277d1da4e`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 6.4 MB (6443005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e39b09955417838491fde60d31e17a6bfc23d82e63f22a5a2080bc5e180275`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbadfa5e7f5639628b1fdf4a687fb3000b7d7eecdb13414a8f20db5ed5581b51`  
		Last Modified: Wed, 05 Aug 2026 00:46:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:be1100a9fa20f157868025c08eedfa5ba1547c1b99b5e4444105c5782bfdf089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27463926dd48288f0c9311daa4d47affff74960922b1acd5d5bba5f3e2dc4032`

```dockerfile
```

-	Layers:
	-	`sha256:096bc79f8f2bbf787b4e60575cba4d5158e2eadfbd6968757e6d8009886bb0f0`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 3.6 MB (3620471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf76f4324d67df88162fcaaf1a002cab6a2a8f2e8f55b3c639096a13ae80333`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 14.9 KB (14945 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:da52600820351b17e8e8542d5bbf3f4a81ab47fce185939e8a9de182dba43c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3b4e744029cca3760a364476acef51cef03e3ca6da76b35c0ab35a7f205384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:22:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 05:22:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 05:23:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 05:23:53 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 05:23:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:23:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6fecb49f686a6e0fa9cdd832d61b9c99d5824d73e256d7af4fab281e570a2f`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ca2d02a9095600d5143fc711fe92681b285e93434c2c4841b17f7e9e561758`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177f26f1a339a83d3a47adad50570eaf515cde42316f1147458262421de453b`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 6.8 MB (6840888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5c12f1c12ed29b5eb4dbc32108fedcb76a61760cb12bec58ed0be453757e8d`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64883ec488063a6ea2900cf35be2e145afb3f947178b91026e5fc65e7552be37`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:9c63c2106b909591cb834e8dc653b8c84b9b228373533b4da578b5c8b2c463e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eaf4e9800cc4ddc2cda3525b983e99f0e670c146c965585eb76e40c92ccf0b`

```dockerfile
```

-	Layers:
	-	`sha256:8a0e4e52af0cd57a0418d6bac7a878d3df0552c7e8fdefad0a47e062ffe0b8e4`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 3.6 MB (3622079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d724b90d1330dacd8135e6d3edcf3c3b9a8f8d531169c5700644014c0cf9b765`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:19a2f84e957aac34c85613b42fabb2b15e1038d97c96dcc19628c9a742a1ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37637116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dd27448bc56284a1a843840e77d2ea1ac2e7954b2573c6e1a69f08dfe166b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:30:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 06 Aug 2026 19:31:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 06 Aug 2026 19:34:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
VOLUME [/spiped]
# Thu, 06 Aug 2026 19:34:17 GMT
WORKDIR /spiped
# Thu, 06 Aug 2026 19:34:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Aug 2026 19:34:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a270ae86e086812efe1395c6ddd2e741ff1f04a010dd3fd40d06564f2aaa0`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c392189021ea1f685fbc47f3b7f57684d556a5b6e208bd681d698109432beb`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785208cfc9b15f3018f667f7f16d39000cdaa0ed801760c3948bfab7ac785b02`  
		Last Modified: Thu, 06 Aug 2026 19:35:31 GMT  
		Size: 9.4 MB (9356637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eba3f63de0c7ea13e3642c9f6ead09f8c5fc65ad5a591ffc38cdd437027e663`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955ab9756283a3f65a286ebc6140fa5131922be5dda3e470e386fd3feee1ddd4`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:37a43a533cde72f1658ba81526c66c88e4af48535f9df07c5adec62b0ec3c81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516a98e78a958d1e150f5b8a184ea0612165702b350405a911e4fba24f949144`

```dockerfile
```

-	Layers:
	-	`sha256:4142e29da62ee97d743396cf915af0039bd5729a6c1d3ec3989f3eced3d5be50`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 3.6 MB (3613485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313c4e298d85451a708e39492ca8fa5568fee78cce76bfce8a78619c81531a1a`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:63d841c8881be79169fea3d63c7ac1041443e6f2d34824b0c9c6c1c2be8a943c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf517746699aead4c2e94fd6fbdedce392d29c08f162bc97eb9b20be5099bda0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:07:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:07:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:07:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:07:42 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:07:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:07:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1969e4688d17a10186c0112a169a3a66b120603c9623f83136d47b4a8a90f9f4`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938c3297899c98561c78b03c0da092118d3d5ae5f89b6fb76950a65e01caf345`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cce91936e00469ab3bf502d9ed81f8cb93f372652d81dca9379170a0b08364`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 6.1 MB (6122260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651efed2a8f5673aa3b09ccd02831d6da086c031e9a1d961a79e791d84086e97`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29277eec416d7bc43e64014dc6fa32d8789a3f3832a370d2d700c1666348eddf`  
		Last Modified: Wed, 05 Aug 2026 01:07:55 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:5b948bdb98f94ca99e3d6f7884c28eae70a457f6b8e05298a3561e32424178b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5d7d4746af00d78d360e60ca178bd1c62fd20a218a02f4268df4a2969dd902`

```dockerfile
```

-	Layers:
	-	`sha256:f1f7b0d3855eef871f90e658ce19012a64c72311c7babe1aef026c8b46762992`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 3.6 MB (3618705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7d327455b0bb23a2eceb2067ff6b56d548c49303b779e03c4edc3b0001def2a`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:e100be27be5d10ae06e64a73491e664cafef29711fc03b7e760ffd43ac97bc21
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
$ docker pull spiped@sha256:27c62f22136c98c38224eccbad0739cfa5f4cf9c4d4cd3377c43d46945484ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3967475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60eadd8ed1cdf5be0a209d2cb535c22d25c150dd65ff27d92e57616d27fa979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d10bab1d7548f8bce287f0517a87e92fa17fc9cd47e89537c4ae4d065a2baed`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220d7d87e5024ed87f61f47d90d1a1a59e931e117f2c04455a9f683ce8fc687b`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16de1a26386c992015e17006a7cbeacbd4d70b285fab4624a4aaa5f94ed298d`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecd81a13dc648d70c4d86fc7ec1d56cd674c50a487a6fd057fa6563720de4e`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff1b91798e651fa945d477d288f479fe430d9a60b56f2d48d2dde4798517ba`  
		Last Modified: Mon, 24 Aug 2026 18:03:58 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c8a0629317533451efd6f75405d02380e74341bc7ead41f9fc1dc2b465747484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ced2a3964c26249b77109955acff277efd16af016c2c9f088cd5e777ba67ba`

```dockerfile
```

-	Layers:
	-	`sha256:049d0be0e074eee81cb56a447b6c93c54a62a8b0781d7c36be8dd36deaeeb7f5`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1fdd893266754a769c44597a0a4afdb612628f0f9840f2b170a3e9503de`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:6b80d97447bed4659624276638f55197b04a6b072ffc7e016f5ae31ad43f427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbc88a77066cdad4fdc2aded9b1a6029d415bdacaf26c6bbeeb2adf7ef3cf94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:26 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:36 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04046c0d1a0f642415835c0cd925b347b78e9d7f2cbe46978afa939257bf77d`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547bb403f5ba5d25a74163afbfc33029e25e53a4f343fd418bfce82c4118ca55`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 8.8 KB (8789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d4923e4bc96a4128f69f0b4369ee7be976416ba008fa371fb974ea57c89db8`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 91.9 KB (91930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aca5802b6f4727cc1c446c6ac08c5adfff20d00618bc7a41a3834f15c2c1973`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8990e66bb18279d139a36d427cf5e20371f497b4f68fca0cb099705c5d902da1`  
		Last Modified: Mon, 24 Aug 2026 18:03:40 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:eda7e38bbcd3f06b08d3762878fa3d2c40d5227c0474c8ecfa9f1e2ca866fc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c1bb15c8e40e8960e835f075d08d400eef1f2ddbc0118e0aea5ebdfce4c7b8`

```dockerfile
```

-	Layers:
	-	`sha256:f90101685c100487de5c8e8dbd2d600f96cf696f7c76a95cd12451def92cc31c`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:3a4eab30c23da3d38a16fd401bd196a3b22dca21045607a23f584922e0dd7672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a44fcf7957eedc4fe1cbfb4bafa37b58302830116830aa7b525aa5fee52c1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:59 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c5aa77c1d9967f1626d60ac3399c46365611790ff73e34c29503375067b7c7`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5730d5744244a9b520e77da071dff779bff1738cd580d0466a2579818915a2d`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 8.8 KB (8825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f716412f07c1f4af1cb7f1655222874311083f76428095c316e8005aae73898a`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 84.8 KB (84782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc7fff0b0d6e9feeb63a0958bdce70e0a725a16e8340acf9ac57b5c997fe422`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca203aa6338fd9093c71aef9e0fd2f27658e7baf44f4d7bb80b390a5d2e2fd51`  
		Last Modified: Mon, 24 Aug 2026 18:03:05 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:df6a9f3f33d04dbfdefc854184db86e38230e0b77a744c6abb3d3c688d8820e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254f994d3f18390e35d0d4cd1504c913dc9a6ee8bf4d69276d25f792ec3dfb1e`

```dockerfile
```

-	Layers:
	-	`sha256:fad1555719469a326978ba42d815b033dd22f4a8bc4833d172c1a0fac144b477`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3193b0713ec9cf58f46ab553cbb653c9f0c92a021c8f32111961a6330a8a62c`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:b0584758f7ca377ed57529149272dced0a27a5da56e77b650ce238698e6cc090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4295743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b22c8c43ec801e02f7149f499ff79fc97a74aa051702cf1bded590b0c695a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:42 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43c53ec7306faa48240fbfaabb2225e75c1c03a8f0d9400f4ded80484d44d7f`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1461c499fdd81f98a332353e6dbca030f808ddc34f12b790d99bf3ad5a180ffa`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdc3578893f7a7490f6acb1d7af58eb72105acfa863bd645d00bfe980a9c809`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 102.5 KB (102521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c9758a6a1bf063650302b64ffa21497266692605b406e7858a19ed16019a3e`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea373606ee4e5f78e235158dc95567430efba6126793b60ab5f1d15ca20f56b`  
		Last Modified: Mon, 24 Aug 2026 18:02:58 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:37150a504595489d54398128ac384f6585201fb1670f428fc79304cc850d7668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d145683ca036dbabcc1337a709956d4e39e3935a1a665274da25858a95e670`

```dockerfile
```

-	Layers:
	-	`sha256:fa9f41709d1c65f5682dd0b69653ba51de6c25fd74cff525dd89bedee85a68d6`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14aad259868bb796080cbe550d1462b03650b94d19ce227c6ac33467cac2c4f2`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:8d52984b4268447b45aeda532f6dd7dcee33e31ef7dd14aa4eef8d622039530d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d18b8afa781096142c3bfe4d5d68225fbb61025d848fd3346d8339e3a769ff8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:25 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5674db770041dea7bdb9814e2780ecfa56f9e2b489a4d5304ae6d00956203b95`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c95bf2e4f450571f54d6609fe2c42bb90b079232eaaa0eb5b44ba5a715d852`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 8.8 KB (8801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d2b7088287ef460ab32b5cca3a095aecff4554b37e02e923e7b1a427391e5`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 122.7 KB (122665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8def0a966c55889e7f5d4f5df40cd61ccb20387d45e904df21d1b0f47f472b9`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be2d22ce1e1663ba424d1bbb9fa8966e7800f174f784017cc25491db6deafcf`  
		Last Modified: Mon, 24 Aug 2026 18:03:31 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e99b0521b200790057459b1d5f9da5e44cbc7dd68483e3bb9620ddaf53ef508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997688daaf4d4b562862b432479817dcefcf0b87bb708c043a62bd8fc082d75`

```dockerfile
```

-	Layers:
	-	`sha256:f46075ad8926246883be61045d15ec083df9b63a3bbadb923698d2b6bbd83641`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454fc7ec9bd31d623347b8b4b5e49e44c8c1de79bdcf9d650d381554c4e1b886`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:b01cd0d66e68f626cd37dd5692a413e6e236b573305ef4b04f66ccd35c4b4f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3938345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc36e7972a19c9e3eabc2d3e2eba307841c882659a2b2555ca5ecffef6f9570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:27 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c41f5967dd36f6a3c6e4053b0376de18da09db22c2688b06b9151e73687713`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131dd341cdd1237b30e6e90857aeedaaadd551060901e1647527e6489f2e2a8a`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d38c25b5cd0b3fc91329d326de269558d937cec097ed3ea2500a7648208fc3`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 114.8 KB (114767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f680f8924a6ad82588ac01386791b9b45ef1ffc4d6240c4d6490b4860dbe8eba`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9bab852347aca626dd44e4ba513a3a93a86524dee71c1cf5d86b391840343f`  
		Last Modified: Mon, 24 Aug 2026 18:02:39 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06ce29946f53e63cc3757cb235e2b2421a2a9f879792fbebacb2ebf793c6e466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6753d933c3f5e6c3b5184e662e2b7cfc23f8773f174addb132caf69aa4240b91`

```dockerfile
```

-	Layers:
	-	`sha256:d6e3ba9573349d6d6f3da52aa1234d60db55d6b28808436176969dbf92b62faf`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea5334b042f1a23f4eb8365bfe861654d8d42b8eba748502fa93c4f9f3fb2d00`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6bc3753ca761bae60e057fb76a2dd63cbec0924e3588c5c9bb240221e283dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9e72a79b8103a78314caacbdac0bfeeed605231cc777975ea53b586f9d2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:02 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac69498c376413b1ee4f841ef2f56b6b92d1044b25eed68abf73507acbc57278`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075673245df91e4a7d327e272bd0cb01891b2004277ac593a82fe7633a2f1659`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824dd19889ff6fb0830dbcbdf46aaf44f78570f414b5e080cb14826cb661029`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 98.6 KB (98566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fe48085e7b59fcf7b43df4161db2c671866390ad49b7043310a73781068f04`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ac5b140b0e3f1a67f13af786628597f050e4a3cb29e248eb873fffb4fc38ef`  
		Last Modified: Mon, 24 Aug 2026 18:03:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ec5863eed4a1091816be64761330b9de172ace1651e996c2d2a2432077c76390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef257f7618c01d3d73ad9a8dc2a4019d4aff9bf3e352280e8ee633f2541dac`

```dockerfile
```

-	Layers:
	-	`sha256:3cfc11d8b67b7eaa4240d7e28a34f715ec0a8d467f5ee257b175a02e2ce4fd93`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a8dc372a89fc1390ecacd49132d1851b1d36b9d2476b643ffcf67a7f097428`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:e100be27be5d10ae06e64a73491e664cafef29711fc03b7e760ffd43ac97bc21
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
$ docker pull spiped@sha256:27c62f22136c98c38224eccbad0739cfa5f4cf9c4d4cd3377c43d46945484ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3967475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60eadd8ed1cdf5be0a209d2cb535c22d25c150dd65ff27d92e57616d27fa979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d10bab1d7548f8bce287f0517a87e92fa17fc9cd47e89537c4ae4d065a2baed`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220d7d87e5024ed87f61f47d90d1a1a59e931e117f2c04455a9f683ce8fc687b`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16de1a26386c992015e17006a7cbeacbd4d70b285fab4624a4aaa5f94ed298d`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 110.9 KB (110880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecd81a13dc648d70c4d86fc7ec1d56cd674c50a487a6fd057fa6563720de4e`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff1b91798e651fa945d477d288f479fe430d9a60b56f2d48d2dde4798517ba`  
		Last Modified: Mon, 24 Aug 2026 18:03:58 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c8a0629317533451efd6f75405d02380e74341bc7ead41f9fc1dc2b465747484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ced2a3964c26249b77109955acff277efd16af016c2c9f088cd5e777ba67ba`

```dockerfile
```

-	Layers:
	-	`sha256:049d0be0e074eee81cb56a447b6c93c54a62a8b0781d7c36be8dd36deaeeb7f5`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1fdd893266754a769c44597a0a4afdb612628f0f9840f2b170a3e9503de`  
		Last Modified: Mon, 24 Aug 2026 18:03:57 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:6b80d97447bed4659624276638f55197b04a6b072ffc7e016f5ae31ad43f427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbc88a77066cdad4fdc2aded9b1a6029d415bdacaf26c6bbeeb2adf7ef3cf94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:26 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:36 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:36 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04046c0d1a0f642415835c0cd925b347b78e9d7f2cbe46978afa939257bf77d`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547bb403f5ba5d25a74163afbfc33029e25e53a4f343fd418bfce82c4118ca55`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 8.8 KB (8789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d4923e4bc96a4128f69f0b4369ee7be976416ba008fa371fb974ea57c89db8`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 91.9 KB (91930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aca5802b6f4727cc1c446c6ac08c5adfff20d00618bc7a41a3834f15c2c1973`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8990e66bb18279d139a36d427cf5e20371f497b4f68fca0cb099705c5d902da1`  
		Last Modified: Mon, 24 Aug 2026 18:03:40 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:eda7e38bbcd3f06b08d3762878fa3d2c40d5227c0474c8ecfa9f1e2ca866fc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c1bb15c8e40e8960e835f075d08d400eef1f2ddbc0118e0aea5ebdfce4c7b8`

```dockerfile
```

-	Layers:
	-	`sha256:f90101685c100487de5c8e8dbd2d600f96cf696f7c76a95cd12451def92cc31c`  
		Last Modified: Mon, 24 Aug 2026 18:03:39 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:3a4eab30c23da3d38a16fd401bd196a3b22dca21045607a23f584922e0dd7672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a44fcf7957eedc4fe1cbfb4bafa37b58302830116830aa7b525aa5fee52c1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:59 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c5aa77c1d9967f1626d60ac3399c46365611790ff73e34c29503375067b7c7`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5730d5744244a9b520e77da071dff779bff1738cd580d0466a2579818915a2d`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 8.8 KB (8825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f716412f07c1f4af1cb7f1655222874311083f76428095c316e8005aae73898a`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 84.8 KB (84782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc7fff0b0d6e9feeb63a0958bdce70e0a725a16e8340acf9ac57b5c997fe422`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca203aa6338fd9093c71aef9e0fd2f27658e7baf44f4d7bb80b390a5d2e2fd51`  
		Last Modified: Mon, 24 Aug 2026 18:03:05 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:df6a9f3f33d04dbfdefc854184db86e38230e0b77a744c6abb3d3c688d8820e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254f994d3f18390e35d0d4cd1504c913dc9a6ee8bf4d69276d25f792ec3dfb1e`

```dockerfile
```

-	Layers:
	-	`sha256:fad1555719469a326978ba42d815b033dd22f4a8bc4833d172c1a0fac144b477`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3193b0713ec9cf58f46ab553cbb653c9f0c92a021c8f32111961a6330a8a62c`  
		Last Modified: Mon, 24 Aug 2026 18:03:04 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:b0584758f7ca377ed57529149272dced0a27a5da56e77b650ce238698e6cc090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4295743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b22c8c43ec801e02f7149f499ff79fc97a74aa051702cf1bded590b0c695a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:42 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:42 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:52 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:52 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43c53ec7306faa48240fbfaabb2225e75c1c03a8f0d9400f4ded80484d44d7f`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1461c499fdd81f98a332353e6dbca030f808ddc34f12b790d99bf3ad5a180ffa`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdc3578893f7a7490f6acb1d7af58eb72105acfa863bd645d00bfe980a9c809`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 102.5 KB (102521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c9758a6a1bf063650302b64ffa21497266692605b406e7858a19ed16019a3e`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea373606ee4e5f78e235158dc95567430efba6126793b60ab5f1d15ca20f56b`  
		Last Modified: Mon, 24 Aug 2026 18:02:58 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:37150a504595489d54398128ac384f6585201fb1670f428fc79304cc850d7668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d145683ca036dbabcc1337a709956d4e39e3935a1a665274da25858a95e670`

```dockerfile
```

-	Layers:
	-	`sha256:fa9f41709d1c65f5682dd0b69653ba51de6c25fd74cff525dd89bedee85a68d6`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14aad259868bb796080cbe550d1462b03650b94d19ce227c6ac33467cac2c4f2`  
		Last Modified: Mon, 24 Aug 2026 18:02:57 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:8d52984b4268447b45aeda532f6dd7dcee33e31ef7dd14aa4eef8d622039530d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d18b8afa781096142c3bfe4d5d68225fbb61025d848fd3346d8339e3a769ff8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:03:13 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:03:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:25 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5674db770041dea7bdb9814e2780ecfa56f9e2b489a4d5304ae6d00956203b95`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c95bf2e4f450571f54d6609fe2c42bb90b079232eaaa0eb5b44ba5a715d852`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 8.8 KB (8801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d2b7088287ef460ab32b5cca3a095aecff4554b37e02e923e7b1a427391e5`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 122.7 KB (122665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8def0a966c55889e7f5d4f5df40cd61ccb20387d45e904df21d1b0f47f472b9`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be2d22ce1e1663ba424d1bbb9fa8966e7800f174f784017cc25491db6deafcf`  
		Last Modified: Mon, 24 Aug 2026 18:03:31 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e99b0521b200790057459b1d5f9da5e44cbc7dd68483e3bb9620ddaf53ef508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997688daaf4d4b562862b432479817dcefcf0b87bb708c043a62bd8fc082d75`

```dockerfile
```

-	Layers:
	-	`sha256:f46075ad8926246883be61045d15ec083df9b63a3bbadb923698d2b6bbd83641`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454fc7ec9bd31d623347b8b4b5e49e44c8c1de79bdcf9d650d381554c4e1b886`  
		Last Modified: Mon, 24 Aug 2026 18:03:30 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:b01cd0d66e68f626cd37dd5692a413e6e236b573305ef4b04f66ccd35c4b4f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3938345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc36e7972a19c9e3eabc2d3e2eba307841c882659a2b2555ca5ecffef6f9570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:10 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:02:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:02:27 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:02:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:02:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:02:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c41f5967dd36f6a3c6e4053b0376de18da09db22c2688b06b9151e73687713`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131dd341cdd1237b30e6e90857aeedaaadd551060901e1647527e6489f2e2a8a`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d38c25b5cd0b3fc91329d326de269558d937cec097ed3ea2500a7648208fc3`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 114.8 KB (114767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f680f8924a6ad82588ac01386791b9b45ef1ffc4d6240c4d6490b4860dbe8eba`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9bab852347aca626dd44e4ba513a3a93a86524dee71c1cf5d86b391840343f`  
		Last Modified: Mon, 24 Aug 2026 18:02:39 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06ce29946f53e63cc3757cb235e2b2421a2a9f879792fbebacb2ebf793c6e466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6753d933c3f5e6c3b5184e662e2b7cfc23f8773f174addb132caf69aa4240b91`

```dockerfile
```

-	Layers:
	-	`sha256:d6e3ba9573349d6d6f3da52aa1234d60db55d6b28808436176969dbf92b62faf`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea5334b042f1a23f4eb8365bfe861654d8d42b8eba748502fa93c4f9f3fb2d00`  
		Last Modified: Mon, 24 Aug 2026 18:02:38 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6bc3753ca761bae60e057fb76a2dd63cbec0924e3588c5c9bb240221e283dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9e72a79b8103a78314caacbdac0bfeeed605231cc777975ea53b586f9d2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 18:02:50 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 18:03:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 18:03:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 18:03:02 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 18:03:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:03:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac69498c376413b1ee4f841ef2f56b6b92d1044b25eed68abf73507acbc57278`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075673245df91e4a7d327e272bd0cb01891b2004277ac593a82fe7633a2f1659`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824dd19889ff6fb0830dbcbdf46aaf44f78570f414b5e080cb14826cb661029`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 98.6 KB (98566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fe48085e7b59fcf7b43df4161db2c671866390ad49b7043310a73781068f04`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ac5b140b0e3f1a67f13af786628597f050e4a3cb29e248eb873fffb4fc38ef`  
		Last Modified: Mon, 24 Aug 2026 18:03:36 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ec5863eed4a1091816be64761330b9de172ace1651e996c2d2a2432077c76390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef257f7618c01d3d73ad9a8dc2a4019d4aff9bf3e352280e8ee633f2541dac`

```dockerfile
```

-	Layers:
	-	`sha256:3cfc11d8b67b7eaa4240d7e28a34f715ec0a8d467f5ee257b175a02e2ce4fd93`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a8dc372a89fc1390ecacd49132d1851b1d36b9d2476b643ffcf67a7f097428`  
		Last Modified: Mon, 24 Aug 2026 18:03:35 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:cf6fbec55a3b5ce874fb96fc4c04b71d565394847016fcd54260152e2314f58c
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
$ docker pull spiped@sha256:58aa905423dffdb5cf7a80c59c332552155d440e3228a976bd1d80af63f679cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d940240f0a7a96a7d701e601caca89b3ba10c9c72821af22ea68688fe0fb8eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:38:37 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:38:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:39:02 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:39:02 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:39:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:39:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:39:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda195448692a02a616c6cf2aa03032ddf253ebd49798bf76e13bf90726a86e8`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52ce2f4d140855001ab5e1b3fd7eb69f8abeb36e0def952819dc68f4df1ea95`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095848ca3678e9abf126364c3b301d0235e2e9bc24fcc0f52ece871173384699`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 7.0 MB (7047917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdba8beadd79658f895e36d8b9bd30c0a333ed2b803aa7a65a7743fe44e6007`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86612478d675d9f1f2a29ffd4e2b267f4d068143d6d54446a61821c310906d1a`  
		Last Modified: Wed, 05 Aug 2026 00:39:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:ddb1f2185bbf69a2faddf31c9cfbe817c1ae767dc2a9f64b710966fd59587c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c723de0c73a6719d340d0a8cba602d14ea5de1a681c7c9c87d47ee92a448c24b`

```dockerfile
```

-	Layers:
	-	`sha256:d08925f96f93d090591183801a085e53bb87685ddcf74613d3928c5d2a8e7fba`  
		Last Modified: Wed, 05 Aug 2026 00:39:10 GMT  
		Size: 3.6 MB (3626342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3281c177f780c5c6bd660f06b0196e7e6f3e470d9cc6419413b5f5d5595f9e1`  
		Last Modified: Wed, 05 Aug 2026 00:39:09 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:95f1ac452757b107b3486edb71c76fbd207b672417b431579f7709ccb0970b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f0668d0213025db956c59782938de6753ffaab0067082f0103e83d2e5bc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:58:58 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:59:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:59:29 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:59:29 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:59:29 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:59:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:59:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:59:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755482caf322c0f05223190cabf6eb5041faa54fa1d6e29fb1a576ceeb2fefb3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e76fbd508ed21fa02dd740f9d2f690f69d6d75aa4692a24b3e5b6ec2a377fc0`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227204de581a4ba64213b51f43c57ec3885cda6a04b6ead88fa1f4d32f25cc3d`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 5.8 MB (5789441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdc5a65852d1c7f467a97a0d2a78fd4eefa7c603712eede51f10b408a6a46f3`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e67ec832bad0836f3381d728a24b692d9768bfc5c9fbd9810671c6aa7e85161`  
		Last Modified: Wed, 05 Aug 2026 00:59:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:4f6885e8684751e4483df98ef2aa795e9771cd8fe25e0683230cf68112460096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686d01335a44f920addbe5f390604b2bddf65e679b787ddb3ddd287bc40e2b43`

```dockerfile
```

-	Layers:
	-	`sha256:8f24225acb5ef4f93994abb09ecaec9de5bcc18892711b2ea1d5f1ffd7b76b49`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 3.6 MB (3619336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54eae5b34f8ea0b46e29ea422f7d2cdbf6cb33d2505865402406ca0d7e13348a`  
		Last Modified: Wed, 05 Aug 2026 00:59:37 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:367003da4861499cb380022e3a611c46b55f51ddc43e87834458db958a691a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d813bed889310839716e60f162f5fcdd26a0ee1b2a28d66511f83c4c9a0f900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:19:36 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:19:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:20:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:20:03 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:20:03 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:20:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5cc50090ff50a5b7e97e1f7b96d579df0e5ed42395ac66e5c04d78e0f9aa4b`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d09a0c91140cf3c05fc6136401aff594283c4cf0d28cf33bf9d1a98dfcfa450`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39ac50f72c19095e755213d0a96082c5e38220b1626c694e28d310b33af1109`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 5.6 MB (5584810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58f6c2556cfb748764446965318f277a9a3cacea0e13582474ea93fbaf2b538`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0a6159527171f66d98e32ba64c5478c6a6a29d7ea5a4d1cb276e5b2f76bfd8`  
		Last Modified: Wed, 05 Aug 2026 01:20:11 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:c3dccf375ad79a04f66c0ca6672b2d2b31db510303d50aeed1e2eff549701081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d92d1751f4b68170b8e26289adaae4392fec8a200db92bff62b59757fb1c49`

```dockerfile
```

-	Layers:
	-	`sha256:3c80ac6658cb47a7f0ffa9c56a0b9e5216d49cb40422f67f7f78561176edace9`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 3.6 MB (3618457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7f14226ab2abd663788fb8f6af99bdf40bd6690a6654d66a01fa2de26560b5`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:59fd6a96d9c58952b1827477f6bc5c5408eda612323901f247bdfb41fef0a02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c71edddbb199c3f7b3782eed07995b4b024c24db96d8a50aa21a8e37d76cbcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:40:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:40:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:40:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:40:38 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:40:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:40:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ca4980dc8259c11c9db0c82eac1f419f02f191708431592b678193de5f8ae5`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc47cbd82ec82252a63beb54cc31c157c8bbbad7918b96fd5d307ed802d4ba4`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f12f289fb24b6e571f0b04b39004295e746d6c6eb6fa2f0509cb120df0530`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 6.2 MB (6234063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c032306e94af51b8a23f5258ede82ee65ac51129475c7dced8f94164bcec7cda`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a843dc2254b3815db6c12bdcdcc6dce0750e8bcea81e68e38d499f8abd32af6`  
		Last Modified: Wed, 05 Aug 2026 00:40:46 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:335a23767f77d5a4420c73c6fdf36fc6b3845cff2abb858ff094f4f0b3cf2187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10cbfda7e10dfee85521e083c02b637012274cdeeef17eeeeefd080d2be7c170`

```dockerfile
```

-	Layers:
	-	`sha256:48382757e84705216f44172e4614ca83d2d05bfcedcfd03111dc189b2aed0786`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 3.6 MB (3621370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adea5e26e738567cb2e264a5263734fb468ff181c1d6b5b785e4996dee6ec96f`  
		Last Modified: Wed, 05 Aug 2026 00:40:45 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:55d082bbf8d9833de801ea3a2f903d78abffd5ebc04f449a0a1f887e78d7b800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739a9ff3804c8cc0351a76ff8a281cf56698d00f1dede579749ec60b4a30d35e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 00:46:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 00:46:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 00:46:39 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 00:46:39 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2e69b37badf1f85af7d00cc5400972cbb790047b32d005909419daa043e394`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea31ba7c11042872e7b1381715f6570d2cb959f7fd636cb7b4b6065e9e7fcc22`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b329c09215c558ae8294fe09474fb9cc128fbfb4cdd1586520f00277d1da4e`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 6.4 MB (6443005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e39b09955417838491fde60d31e17a6bfc23d82e63f22a5a2080bc5e180275`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbadfa5e7f5639628b1fdf4a687fb3000b7d7eecdb13414a8f20db5ed5581b51`  
		Last Modified: Wed, 05 Aug 2026 00:46:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:be1100a9fa20f157868025c08eedfa5ba1547c1b99b5e4444105c5782bfdf089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27463926dd48288f0c9311daa4d47affff74960922b1acd5d5bba5f3e2dc4032`

```dockerfile
```

-	Layers:
	-	`sha256:096bc79f8f2bbf787b4e60575cba4d5158e2eadfbd6968757e6d8009886bb0f0`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 3.6 MB (3620471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf76f4324d67df88162fcaaf1a002cab6a2a8f2e8f55b3c639096a13ae80333`  
		Last Modified: Wed, 05 Aug 2026 00:46:45 GMT  
		Size: 14.9 KB (14945 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:da52600820351b17e8e8542d5bbf3f4a81ab47fce185939e8a9de182dba43c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3b4e744029cca3760a364476acef51cef03e3ca6da76b35c0ab35a7f205384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:22:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 05:22:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 05:23:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 05:23:53 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 05:23:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:23:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6fecb49f686a6e0fa9cdd832d61b9c99d5824d73e256d7af4fab281e570a2f`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ca2d02a9095600d5143fc711fe92681b285e93434c2c4841b17f7e9e561758`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177f26f1a339a83d3a47adad50570eaf515cde42316f1147458262421de453b`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 6.8 MB (6840888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5c12f1c12ed29b5eb4dbc32108fedcb76a61760cb12bec58ed0be453757e8d`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64883ec488063a6ea2900cf35be2e145afb3f947178b91026e5fc65e7552be37`  
		Last Modified: Wed, 05 Aug 2026 05:24:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:9c63c2106b909591cb834e8dc653b8c84b9b228373533b4da578b5c8b2c463e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eaf4e9800cc4ddc2cda3525b983e99f0e670c146c965585eb76e40c92ccf0b`

```dockerfile
```

-	Layers:
	-	`sha256:8a0e4e52af0cd57a0418d6bac7a878d3df0552c7e8fdefad0a47e062ffe0b8e4`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 3.6 MB (3622079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d724b90d1330dacd8135e6d3edcf3c3b9a8f8d531169c5700644014c0cf9b765`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:19a2f84e957aac34c85613b42fabb2b15e1038d97c96dcc19628c9a742a1ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37637116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dd27448bc56284a1a843840e77d2ea1ac2e7954b2573c6e1a69f08dfe166b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:30:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 06 Aug 2026 19:31:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 06 Aug 2026 19:34:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
VOLUME [/spiped]
# Thu, 06 Aug 2026 19:34:17 GMT
WORKDIR /spiped
# Thu, 06 Aug 2026 19:34:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 19:34:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Aug 2026 19:34:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a270ae86e086812efe1395c6ddd2e741ff1f04a010dd3fd40d06564f2aaa0`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c392189021ea1f685fbc47f3b7f57684d556a5b6e208bd681d698109432beb`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785208cfc9b15f3018f667f7f16d39000cdaa0ed801760c3948bfab7ac785b02`  
		Last Modified: Thu, 06 Aug 2026 19:35:31 GMT  
		Size: 9.4 MB (9356637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eba3f63de0c7ea13e3642c9f6ead09f8c5fc65ad5a591ffc38cdd437027e663`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955ab9756283a3f65a286ebc6140fa5131922be5dda3e470e386fd3feee1ddd4`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:37a43a533cde72f1658ba81526c66c88e4af48535f9df07c5adec62b0ec3c81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516a98e78a958d1e150f5b8a184ea0612165702b350405a911e4fba24f949144`

```dockerfile
```

-	Layers:
	-	`sha256:4142e29da62ee97d743396cf915af0039bd5729a6c1d3ec3989f3eced3d5be50`  
		Last Modified: Thu, 06 Aug 2026 19:35:30 GMT  
		Size: 3.6 MB (3613485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313c4e298d85451a708e39492ca8fa5568fee78cce76bfce8a78619c81531a1a`  
		Last Modified: Thu, 06 Aug 2026 19:35:29 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:63d841c8881be79169fea3d63c7ac1041443e6f2d34824b0c9c6c1c2be8a943c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf517746699aead4c2e94fd6fbdedce392d29c08f162bc97eb9b20be5099bda0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:07:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 05 Aug 2026 01:07:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 05 Aug 2026 01:07:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
VOLUME [/spiped]
# Wed, 05 Aug 2026 01:07:42 GMT
WORKDIR /spiped
# Wed, 05 Aug 2026 01:07:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:07:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1969e4688d17a10186c0112a169a3a66b120603c9623f83136d47b4a8a90f9f4`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938c3297899c98561c78b03c0da092118d3d5ae5f89b6fb76950a65e01caf345`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cce91936e00469ab3bf502d9ed81f8cb93f372652d81dca9379170a0b08364`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 6.1 MB (6122260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651efed2a8f5673aa3b09ccd02831d6da086c031e9a1d961a79e791d84086e97`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29277eec416d7bc43e64014dc6fa32d8789a3f3832a370d2d700c1666348eddf`  
		Last Modified: Wed, 05 Aug 2026 01:07:55 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:5b948bdb98f94ca99e3d6f7884c28eae70a457f6b8e05298a3561e32424178b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5d7d4746af00d78d360e60ca178bd1c62fd20a218a02f4268df4a2969dd902`

```dockerfile
```

-	Layers:
	-	`sha256:f1f7b0d3855eef871f90e658ce19012a64c72311c7babe1aef026c8b46762992`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 3.6 MB (3618705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7d327455b0bb23a2eceb2067ff6b56d548c49303b779e03c4edc3b0001def2a`  
		Last Modified: Wed, 05 Aug 2026 01:07:54 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
