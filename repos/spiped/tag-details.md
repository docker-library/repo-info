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
$ docker pull spiped@sha256:6fb63b65c5f6865698ff08f1edb9fbd4048a900d87634ada44acc6619d80cac2
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
$ docker pull spiped@sha256:c6b926c3127b0b4a1df810736d1a8daa11357fa1bd759d3c8aa3087a5121332d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37636755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e674528ff1408a65c3d392edffc6f5ae60e11ca391271a6396f5f54c5f3f494`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:18:24 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 15 Jul 2026 17:18:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 15 Jul 2026 17:22:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
VOLUME [/spiped]
# Wed, 15 Jul 2026 17:22:17 GMT
WORKDIR /spiped
# Wed, 15 Jul 2026 17:22:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Jul 2026 17:22:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a420115b3f86c9a5aa860cbd81275317eadcbb60e188005049e086299099ae7a`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1851b9c4d0085823160ded6d4d6ba8e8251dd39f23b77058e8a445da3bc6db8`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe24725915dd44f73024983e5dbb51c438e3302436e23df1d6b08fb45563f4c`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 9.4 MB (9356192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc90689ae96446b2c5ebbb9b98ef283db3718fb4e70160ef3b24cbb6a51ff70`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0736930e05807a40ff5f5f99c61274cc1ba7ae0498cbcf920fd9646a6300e2`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a94799ed41432191418fe62d27d10f37659f5c1ac349781595a686b89e87b145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b265c4d972de445eeafbf4ce2c7e3c31b7f340998d346095fbabc618b7ffb`

```dockerfile
```

-	Layers:
	-	`sha256:0b9cc89fd0a6535c4a0ff8cf9bc13e5ff7c8845b84f536a54a0ff65d695b0080`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 3.6 MB (3613481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960799062bca5d66de4151a9c5238a411da9a01f23c0a68891206a52ff2f0390`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
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
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
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
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:6fb63b65c5f6865698ff08f1edb9fbd4048a900d87634ada44acc6619d80cac2
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
$ docker pull spiped@sha256:c6b926c3127b0b4a1df810736d1a8daa11357fa1bd759d3c8aa3087a5121332d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37636755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e674528ff1408a65c3d392edffc6f5ae60e11ca391271a6396f5f54c5f3f494`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:18:24 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 15 Jul 2026 17:18:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 15 Jul 2026 17:22:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
VOLUME [/spiped]
# Wed, 15 Jul 2026 17:22:17 GMT
WORKDIR /spiped
# Wed, 15 Jul 2026 17:22:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Jul 2026 17:22:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a420115b3f86c9a5aa860cbd81275317eadcbb60e188005049e086299099ae7a`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1851b9c4d0085823160ded6d4d6ba8e8251dd39f23b77058e8a445da3bc6db8`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe24725915dd44f73024983e5dbb51c438e3302436e23df1d6b08fb45563f4c`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 9.4 MB (9356192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc90689ae96446b2c5ebbb9b98ef283db3718fb4e70160ef3b24cbb6a51ff70`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0736930e05807a40ff5f5f99c61274cc1ba7ae0498cbcf920fd9646a6300e2`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a94799ed41432191418fe62d27d10f37659f5c1ac349781595a686b89e87b145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b265c4d972de445eeafbf4ce2c7e3c31b7f340998d346095fbabc618b7ffb`

```dockerfile
```

-	Layers:
	-	`sha256:0b9cc89fd0a6535c4a0ff8cf9bc13e5ff7c8845b84f536a54a0ff65d695b0080`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 3.6 MB (3613481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960799062bca5d66de4151a9c5238a411da9a01f23c0a68891206a52ff2f0390`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
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
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
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
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:6fb63b65c5f6865698ff08f1edb9fbd4048a900d87634ada44acc6619d80cac2
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
$ docker pull spiped@sha256:c6b926c3127b0b4a1df810736d1a8daa11357fa1bd759d3c8aa3087a5121332d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37636755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e674528ff1408a65c3d392edffc6f5ae60e11ca391271a6396f5f54c5f3f494`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:18:24 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 15 Jul 2026 17:18:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 15 Jul 2026 17:22:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
VOLUME [/spiped]
# Wed, 15 Jul 2026 17:22:17 GMT
WORKDIR /spiped
# Wed, 15 Jul 2026 17:22:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Jul 2026 17:22:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a420115b3f86c9a5aa860cbd81275317eadcbb60e188005049e086299099ae7a`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1851b9c4d0085823160ded6d4d6ba8e8251dd39f23b77058e8a445da3bc6db8`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe24725915dd44f73024983e5dbb51c438e3302436e23df1d6b08fb45563f4c`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 9.4 MB (9356192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc90689ae96446b2c5ebbb9b98ef283db3718fb4e70160ef3b24cbb6a51ff70`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0736930e05807a40ff5f5f99c61274cc1ba7ae0498cbcf920fd9646a6300e2`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a94799ed41432191418fe62d27d10f37659f5c1ac349781595a686b89e87b145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b265c4d972de445eeafbf4ce2c7e3c31b7f340998d346095fbabc618b7ffb`

```dockerfile
```

-	Layers:
	-	`sha256:0b9cc89fd0a6535c4a0ff8cf9bc13e5ff7c8845b84f536a54a0ff65d695b0080`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 3.6 MB (3613481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960799062bca5d66de4151a9c5238a411da9a01f23c0a68891206a52ff2f0390`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
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
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
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
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
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
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:6fb63b65c5f6865698ff08f1edb9fbd4048a900d87634ada44acc6619d80cac2
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
$ docker pull spiped@sha256:c6b926c3127b0b4a1df810736d1a8daa11357fa1bd759d3c8aa3087a5121332d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37636755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e674528ff1408a65c3d392edffc6f5ae60e11ca391271a6396f5f54c5f3f494`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:18:24 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 15 Jul 2026 17:18:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 15 Jul 2026 17:22:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
VOLUME [/spiped]
# Wed, 15 Jul 2026 17:22:17 GMT
WORKDIR /spiped
# Wed, 15 Jul 2026 17:22:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 17:22:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Jul 2026 17:22:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a420115b3f86c9a5aa860cbd81275317eadcbb60e188005049e086299099ae7a`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1851b9c4d0085823160ded6d4d6ba8e8251dd39f23b77058e8a445da3bc6db8`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe24725915dd44f73024983e5dbb51c438e3302436e23df1d6b08fb45563f4c`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 9.4 MB (9356192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc90689ae96446b2c5ebbb9b98ef283db3718fb4e70160ef3b24cbb6a51ff70`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0736930e05807a40ff5f5f99c61274cc1ba7ae0498cbcf920fd9646a6300e2`  
		Last Modified: Wed, 15 Jul 2026 17:23:31 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a94799ed41432191418fe62d27d10f37659f5c1ac349781595a686b89e87b145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b265c4d972de445eeafbf4ce2c7e3c31b7f340998d346095fbabc618b7ffb`

```dockerfile
```

-	Layers:
	-	`sha256:0b9cc89fd0a6535c4a0ff8cf9bc13e5ff7c8845b84f536a54a0ff65d695b0080`  
		Last Modified: Wed, 15 Jul 2026 17:23:30 GMT  
		Size: 3.6 MB (3613481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960799062bca5d66de4151a9c5238a411da9a01f23c0a68891206a52ff2f0390`  
		Last Modified: Wed, 15 Jul 2026 17:23:29 GMT  
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
