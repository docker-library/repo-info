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
$ docker pull spiped@sha256:da16cceb667ecca45289a20ab103936dd02b412ff24da59197576f788c3b2b15
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
$ docker pull spiped@sha256:7353d7dd73a28784cf826b2082473aaecf580ca75d7866ef7347632ec3aead54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36881029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d98a8c1f51472c2d2f5467b47a63fb137e31bc46ab08e62f557dc0c6286f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:38:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:38:42 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:38:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017d9771e02207de8ec68d7a725c9189a54d564c4bbf21f374c9d1c7c609053a`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c954b2da2b153c110a020a4cf74f35427a844dc426faf65222772a374df0d437`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8984e0603f1dbe31b61c1e889dd132509370c424ba6ad6c00c3390ce3a5a3240`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 7.0 MB (7048243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc13bdb7aae315b8ca9c1e8a976837b92915ea6c2f491fa3b5fd2d57dee0f11`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778bcc63be92ca27a0959dce208d63bdee95810a57927cafe5c95ac12f7a4369`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:1c6a48f84d9e7dc4d938950026c31730b47c6735ba6bb264ca055e23ece99cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feaa0ea4bcec21262834daa44adcdb6624e8879a52d90fcf4631207a90d6c8f5`

```dockerfile
```

-	Layers:
	-	`sha256:253897ab8cdfca15308cb5216127597083c022077a80d2f06e5d99143228d32e`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a750145ef3fd6fe646bbd007d039e8c972af8b176e8f1d09ea28685f5b80df16`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:86e82741687628ae7283c7d81e835b43972b56be2ccc478b7281cb84b337d2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33790743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8292ec413b6c39bb54e9cb74982a4c563042b35758bbe7a63a77531bd38bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:44 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:50:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:50:17 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:50:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:50:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e960ddc4c44a4a8c329ca4ba5fcb4010ca16184528d6b5795cd4d4596d07cf5`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3c9db5ffdd74e32826b8fac90093d3ee068fb12ea676ed76b9abe091d5cc07`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d80f8194e5cbef6add621d2eb71c71b184c0cc8d5c0a57e30cc2cf285a18e`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 5.8 MB (5790340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d831270605e99b7a2aa93b8798a3bfebdd2a35ceda5bb704d17a0bed4b50ac4`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3576b4e0a3945f6bf98e272389738fec5562d9bbc942048f9f1630d45915c6`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:e31bf45f4cf2970c9173b381cdcbb1a0b536217c49ebc939d36f904d5b4b7b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f236a98ff63acb52f10eee9ed87d377a0f1f72ab5e2edc930b994e32520824`

```dockerfile
```

-	Layers:
	-	`sha256:e77e6b9ab461abf4b2f821acf690e7c848cc037555db6f70f6103a7a14b5b096`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a07f574cdf7a78e36b40028ddd07bd151bff73d32cfde760ae8c2c33eb85a50b`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:eb986b3f62f3f07c9be468b124f715f04d7d2bead4245a53c5da102aae068aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fbbddf8c319c7a2cb3519cebd7acc7f209477294469d672a6352d7195c47c02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 01:26:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 01:27:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 01:27:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 01:27:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:27:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7198a81ecc39b73b4c4433304f6eec28566a495afa9beaa2facb6538cabb79ef`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461b49e8804703e1fa31d3dcc84aa864b4261f10a7a34c6a3ea42c9e6af44744`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0924e135f8dc12be31f1626e083fa47e71f7aaa299cd8089012cea8e99466ea7`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 5.6 MB (5585106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51569bff100daaac01d2b00dbd61b83d7d3ec083584b35aa709a7ab6057b9df2`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bb6e791c94d535f4fcea218f7507540a447d0d91bb6bbc2b84d29f7b1e70a8`  
		Last Modified: Sat, 19 Sep 2026 01:27:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:5e637bcfeee6b1ad54b282c10c8945974354581d4657b8266f58915fd9cea999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7397dd7f0e60ba06aa77b8c68a6008aa50485d5b7301afab212ae7f8236c334`

```dockerfile
```

-	Layers:
	-	`sha256:bc745974b609bec55c6d1da84ceceb1abd5e2c4918b4457dc5b8334d0495573d`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3821a13d185511dcacf1a03c7191448b6a2d2c7a04a1adbc8447381ec34730`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f392bbce56db2b014109167ab5d207a14afa026c7ce9c66a01d6346abfa9d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36426258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036d4e4b70df2a90901b7ed2c8a26cc415173786432f9a92ced093a791ff9142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:31 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:41:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:41:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:41:56 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:41:56 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd91dfb4d8678a8f98215a7ae3b77c7afcd0b94fb180933815f48226fe9423a`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb54c7eda95bc4bdc9f417d8f16eda70b7e18640d6a8a857b0ebdaf0b4c07b3`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120436d5f7daa7a207bb255b03df6cfe95196a70148c15292d372521d3940a39`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 6.2 MB (6234199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a2507faf445d0719471ac2cf4e5c4688fa08a9ff9f45ff3b2be1a8113267cd`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f110d3ec7233436555530fe2ee81e29e7df32b8fc63dc4538a52d59d95589c0e`  
		Last Modified: Sat, 19 Sep 2026 00:42:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:77a22ac53da721c36ef900023ea03188b6b6b144c13f0b1ad953dab635db582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b0ec0023be15e15eac8ec383c571649d6c911f69304e548fb975b333c4ea7b`

```dockerfile
```

-	Layers:
	-	`sha256:388b105ab6ec60a97f19e7d1489e9a739c28911e760b5bc8559bcf5d706d5f9f`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75c4689df9db568a7b490483248a4f78b31dd069f4cd42a5ccaca363aecd262`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:84723663f709bd509d94651a0c8b041c4ce611a6cbbf22c0118b4fda33451986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37786515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907ab73b077e983e9571fafa3f760db038cef29b0cd77648b370691f2cbb68ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:49:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:49:40 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:49:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4908c3dc36a366c01391a008986ee7aa5be81a7829d7d1c1b4d8bd7647dce4e1`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170bbe785a3282995184cfcaa798fe96795673dd71ab957eb12d3f4ccc09e2bc`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed642e18b16d3f7a245ea7ab3a669f7efbd517f0ee714beaea95e323c11a8bd`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 6.4 MB (6443749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8660c9ce77f2ab09b8fa17a82bf4617e5165104684d59e2a5f09e10aadd9028`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9d31d585b3f22d84e32f79600a2437dbe2c4e64c5bbc87621cb85343c9c7ec`  
		Last Modified: Sat, 19 Sep 2026 00:49:47 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:30faa82dd631417b2896ac4a2adba361563eab51698b693c99409bcfdc491552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0308860b9b41e60a0bb9eeca5ea836927909dddb8037d3ff36a248b17fe90b7`

```dockerfile
```

-	Layers:
	-	`sha256:4a6c71d744b43e2ba0fcc18ac36650942a8d192f013527aa6b54f125d9250a99`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b540d7710e7f926bd19afd5233e80d8edd658b245b9df2a3cf3ce9c7a8a0a47b`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:72b91927a5f1b8be0cb3f91635d506360cec0651500946d4d90478f9daecdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40484811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd70325c07bd6d6d7f99a535e54f44f261d986b8e18ac3d0e234de969c163fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:13:35 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 03:13:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 03:14:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 03:14:44 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 03:14:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:14:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bd3c7d07214edfaf01b3c50aae84373110c4719d0f0d8cad1bdc70a31fbfad`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb1a1a0e66b8bf582f67b3c6d2d5b3a957822580dee78aac22bffaa7e5a796`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710cfa79bab2d47e6fe3a3c93aa941366630f1156e2af577f24093efce6f84f`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 6.8 MB (6841211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bb9218b23e34b2c2275f0c2fb39a70efb760de928a433aa592bf6cbed0f786`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87a679a7c1c36d76edcabdbf9d38643b508ba333a4f9135e76545bd107ed277`  
		Last Modified: Sat, 19 Sep 2026 03:15:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:af68a0485d4c7a0761ab5c7d04670ad3b5898f1080e075bfbefbbb3179a0356a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d7500e172dfc0ed4506bb59c320ac2ee6c0eb82fd3a3b2c18bfcfb4b43124a`

```dockerfile
```

-	Layers:
	-	`sha256:8651137e4a3c9273a67f8719abceb8659f465debbeadaa4c467778f1aa91dc27`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137f83425d22f42392948b9a436a6f2022942c7f27f0a40670450eff0c39a5e6`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:437b0db9d2086fe68b5ab3aeb722594c6049045f835489ea1139cbbc9233c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40322901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0fce9d2f84c1fcfa47e47e09b974798c4c0e3162f24b719c03573956b100a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:09:33 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 27 Aug 2026 00:10:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 27 Aug 2026 00:13:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
VOLUME [/spiped]
# Thu, 27 Aug 2026 00:13:20 GMT
WORKDIR /spiped
# Thu, 27 Aug 2026 00:13:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 00:13:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 00:13:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cff9bdd54b7736eecec1633a765af1f4258a7dfe32130674a13f848ae02ebb`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1be10a6023e9656f65a19348c0b7e9e71777e067462312805bbea9974e2a57`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 2.7 MB (2668220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfe09fea9105cbd4f03510e63e7a4ebf3b8e8c51bd5e4ad074918d70c8ee494`  
		Last Modified: Thu, 27 Aug 2026 00:14:35 GMT  
		Size: 9.4 MB (9356677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b18009021d7f93982ff9985333fc189b7eaf11526397a6d4541340ed100538`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0c2713b5aaec6a11a085b1e169c4baa388a08f14f416bec025d6936822eb4e`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:7e652623e49c73f33220eec969ce14bb38f24ebc695ef15f89dde3293cd77812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f1010afc19989ab942c0e18a50f88fb20e0cf26e22e02a30299a9cef8514dd`

```dockerfile
```

-	Layers:
	-	`sha256:445f87a7ccaf2eda27a99ad4b879a88143aebeb758de175f17dd8c1d6121ed58`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 3.6 MB (3613683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82def89c0338de159596617cd566902febee3775661d9b80d3ed20f87721c29`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 15.0 KB (15046 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:261d9943771db7a464d4bea90d0d98004dc220f4b28aec340cbdaf316de6c365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36024522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fe49d530a323095e5993eb17ca9cbce2efd280951a7724922ff0e23c2c9629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:57:01 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:57:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:57:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:57:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:57:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:57:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0822fdc1e0199082c3b590faecf14910420fc2cf99a17307b737b1386bce54`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b1c81d959d41b3e9ee79d81c3d4763bf857785fa73a511e4ac025b51490db0`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb594626d9dab2e9892d65b18792c713c4cdc7fe5f594d230c5e9917519fa66`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 6.1 MB (6123004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee21a1d22d6729290e3c46bf4551479f673aef8775a8924dac9ae31963a722f`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d591f154fbea106dd61c98167ed984c9cef1ab7b21c046a27cddf07343bb682`  
		Last Modified: Sat, 19 Sep 2026 00:57:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a32a433c2001bf818edd1e53f8a439fbf9846928809a82b198b74ab6d3867e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15b0627de10732a399d95e42576c8b2ba58a937921ee0ff2a4b6f5e751dbd69`

```dockerfile
```

-	Layers:
	-	`sha256:678d7836aff14fb215a9bfbe28a906b35be2312811c6a38338cf995a238e9479`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd68b6f11cbfebf142b00c307b84d159a62a63d5f355c7149284807ef42d66f9`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
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
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
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
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:da16cceb667ecca45289a20ab103936dd02b412ff24da59197576f788c3b2b15
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
$ docker pull spiped@sha256:7353d7dd73a28784cf826b2082473aaecf580ca75d7866ef7347632ec3aead54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36881029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d98a8c1f51472c2d2f5467b47a63fb137e31bc46ab08e62f557dc0c6286f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:38:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:38:42 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:38:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017d9771e02207de8ec68d7a725c9189a54d564c4bbf21f374c9d1c7c609053a`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c954b2da2b153c110a020a4cf74f35427a844dc426faf65222772a374df0d437`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8984e0603f1dbe31b61c1e889dd132509370c424ba6ad6c00c3390ce3a5a3240`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 7.0 MB (7048243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc13bdb7aae315b8ca9c1e8a976837b92915ea6c2f491fa3b5fd2d57dee0f11`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778bcc63be92ca27a0959dce208d63bdee95810a57927cafe5c95ac12f7a4369`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:1c6a48f84d9e7dc4d938950026c31730b47c6735ba6bb264ca055e23ece99cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feaa0ea4bcec21262834daa44adcdb6624e8879a52d90fcf4631207a90d6c8f5`

```dockerfile
```

-	Layers:
	-	`sha256:253897ab8cdfca15308cb5216127597083c022077a80d2f06e5d99143228d32e`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a750145ef3fd6fe646bbd007d039e8c972af8b176e8f1d09ea28685f5b80df16`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:86e82741687628ae7283c7d81e835b43972b56be2ccc478b7281cb84b337d2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33790743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8292ec413b6c39bb54e9cb74982a4c563042b35758bbe7a63a77531bd38bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:44 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:50:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:50:17 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:50:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:50:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e960ddc4c44a4a8c329ca4ba5fcb4010ca16184528d6b5795cd4d4596d07cf5`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3c9db5ffdd74e32826b8fac90093d3ee068fb12ea676ed76b9abe091d5cc07`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d80f8194e5cbef6add621d2eb71c71b184c0cc8d5c0a57e30cc2cf285a18e`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 5.8 MB (5790340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d831270605e99b7a2aa93b8798a3bfebdd2a35ceda5bb704d17a0bed4b50ac4`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3576b4e0a3945f6bf98e272389738fec5562d9bbc942048f9f1630d45915c6`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:e31bf45f4cf2970c9173b381cdcbb1a0b536217c49ebc939d36f904d5b4b7b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f236a98ff63acb52f10eee9ed87d377a0f1f72ab5e2edc930b994e32520824`

```dockerfile
```

-	Layers:
	-	`sha256:e77e6b9ab461abf4b2f821acf690e7c848cc037555db6f70f6103a7a14b5b096`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a07f574cdf7a78e36b40028ddd07bd151bff73d32cfde760ae8c2c33eb85a50b`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:eb986b3f62f3f07c9be468b124f715f04d7d2bead4245a53c5da102aae068aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fbbddf8c319c7a2cb3519cebd7acc7f209477294469d672a6352d7195c47c02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 01:26:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 01:27:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 01:27:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 01:27:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:27:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7198a81ecc39b73b4c4433304f6eec28566a495afa9beaa2facb6538cabb79ef`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461b49e8804703e1fa31d3dcc84aa864b4261f10a7a34c6a3ea42c9e6af44744`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0924e135f8dc12be31f1626e083fa47e71f7aaa299cd8089012cea8e99466ea7`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 5.6 MB (5585106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51569bff100daaac01d2b00dbd61b83d7d3ec083584b35aa709a7ab6057b9df2`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bb6e791c94d535f4fcea218f7507540a447d0d91bb6bbc2b84d29f7b1e70a8`  
		Last Modified: Sat, 19 Sep 2026 01:27:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:5e637bcfeee6b1ad54b282c10c8945974354581d4657b8266f58915fd9cea999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7397dd7f0e60ba06aa77b8c68a6008aa50485d5b7301afab212ae7f8236c334`

```dockerfile
```

-	Layers:
	-	`sha256:bc745974b609bec55c6d1da84ceceb1abd5e2c4918b4457dc5b8334d0495573d`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3821a13d185511dcacf1a03c7191448b6a2d2c7a04a1adbc8447381ec34730`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f392bbce56db2b014109167ab5d207a14afa026c7ce9c66a01d6346abfa9d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36426258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036d4e4b70df2a90901b7ed2c8a26cc415173786432f9a92ced093a791ff9142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:31 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:41:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:41:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:41:56 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:41:56 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd91dfb4d8678a8f98215a7ae3b77c7afcd0b94fb180933815f48226fe9423a`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb54c7eda95bc4bdc9f417d8f16eda70b7e18640d6a8a857b0ebdaf0b4c07b3`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120436d5f7daa7a207bb255b03df6cfe95196a70148c15292d372521d3940a39`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 6.2 MB (6234199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a2507faf445d0719471ac2cf4e5c4688fa08a9ff9f45ff3b2be1a8113267cd`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f110d3ec7233436555530fe2ee81e29e7df32b8fc63dc4538a52d59d95589c0e`  
		Last Modified: Sat, 19 Sep 2026 00:42:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:77a22ac53da721c36ef900023ea03188b6b6b144c13f0b1ad953dab635db582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b0ec0023be15e15eac8ec383c571649d6c911f69304e548fb975b333c4ea7b`

```dockerfile
```

-	Layers:
	-	`sha256:388b105ab6ec60a97f19e7d1489e9a739c28911e760b5bc8559bcf5d706d5f9f`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75c4689df9db568a7b490483248a4f78b31dd069f4cd42a5ccaca363aecd262`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:84723663f709bd509d94651a0c8b041c4ce611a6cbbf22c0118b4fda33451986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37786515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907ab73b077e983e9571fafa3f760db038cef29b0cd77648b370691f2cbb68ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:49:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:49:40 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:49:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4908c3dc36a366c01391a008986ee7aa5be81a7829d7d1c1b4d8bd7647dce4e1`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170bbe785a3282995184cfcaa798fe96795673dd71ab957eb12d3f4ccc09e2bc`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed642e18b16d3f7a245ea7ab3a669f7efbd517f0ee714beaea95e323c11a8bd`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 6.4 MB (6443749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8660c9ce77f2ab09b8fa17a82bf4617e5165104684d59e2a5f09e10aadd9028`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9d31d585b3f22d84e32f79600a2437dbe2c4e64c5bbc87621cb85343c9c7ec`  
		Last Modified: Sat, 19 Sep 2026 00:49:47 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:30faa82dd631417b2896ac4a2adba361563eab51698b693c99409bcfdc491552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0308860b9b41e60a0bb9eeca5ea836927909dddb8037d3ff36a248b17fe90b7`

```dockerfile
```

-	Layers:
	-	`sha256:4a6c71d744b43e2ba0fcc18ac36650942a8d192f013527aa6b54f125d9250a99`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b540d7710e7f926bd19afd5233e80d8edd658b245b9df2a3cf3ce9c7a8a0a47b`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:72b91927a5f1b8be0cb3f91635d506360cec0651500946d4d90478f9daecdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40484811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd70325c07bd6d6d7f99a535e54f44f261d986b8e18ac3d0e234de969c163fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:13:35 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 03:13:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 03:14:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 03:14:44 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 03:14:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:14:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bd3c7d07214edfaf01b3c50aae84373110c4719d0f0d8cad1bdc70a31fbfad`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb1a1a0e66b8bf582f67b3c6d2d5b3a957822580dee78aac22bffaa7e5a796`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710cfa79bab2d47e6fe3a3c93aa941366630f1156e2af577f24093efce6f84f`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 6.8 MB (6841211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bb9218b23e34b2c2275f0c2fb39a70efb760de928a433aa592bf6cbed0f786`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87a679a7c1c36d76edcabdbf9d38643b508ba333a4f9135e76545bd107ed277`  
		Last Modified: Sat, 19 Sep 2026 03:15:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:af68a0485d4c7a0761ab5c7d04670ad3b5898f1080e075bfbefbbb3179a0356a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d7500e172dfc0ed4506bb59c320ac2ee6c0eb82fd3a3b2c18bfcfb4b43124a`

```dockerfile
```

-	Layers:
	-	`sha256:8651137e4a3c9273a67f8719abceb8659f465debbeadaa4c467778f1aa91dc27`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137f83425d22f42392948b9a436a6f2022942c7f27f0a40670450eff0c39a5e6`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:437b0db9d2086fe68b5ab3aeb722594c6049045f835489ea1139cbbc9233c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40322901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0fce9d2f84c1fcfa47e47e09b974798c4c0e3162f24b719c03573956b100a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:09:33 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 27 Aug 2026 00:10:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 27 Aug 2026 00:13:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
VOLUME [/spiped]
# Thu, 27 Aug 2026 00:13:20 GMT
WORKDIR /spiped
# Thu, 27 Aug 2026 00:13:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 00:13:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 00:13:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cff9bdd54b7736eecec1633a765af1f4258a7dfe32130674a13f848ae02ebb`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1be10a6023e9656f65a19348c0b7e9e71777e067462312805bbea9974e2a57`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 2.7 MB (2668220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfe09fea9105cbd4f03510e63e7a4ebf3b8e8c51bd5e4ad074918d70c8ee494`  
		Last Modified: Thu, 27 Aug 2026 00:14:35 GMT  
		Size: 9.4 MB (9356677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b18009021d7f93982ff9985333fc189b7eaf11526397a6d4541340ed100538`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0c2713b5aaec6a11a085b1e169c4baa388a08f14f416bec025d6936822eb4e`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:7e652623e49c73f33220eec969ce14bb38f24ebc695ef15f89dde3293cd77812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f1010afc19989ab942c0e18a50f88fb20e0cf26e22e02a30299a9cef8514dd`

```dockerfile
```

-	Layers:
	-	`sha256:445f87a7ccaf2eda27a99ad4b879a88143aebeb758de175f17dd8c1d6121ed58`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 3.6 MB (3613683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82def89c0338de159596617cd566902febee3775661d9b80d3ed20f87721c29`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 15.0 KB (15046 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:261d9943771db7a464d4bea90d0d98004dc220f4b28aec340cbdaf316de6c365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36024522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fe49d530a323095e5993eb17ca9cbce2efd280951a7724922ff0e23c2c9629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:57:01 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:57:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:57:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:57:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:57:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:57:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0822fdc1e0199082c3b590faecf14910420fc2cf99a17307b737b1386bce54`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b1c81d959d41b3e9ee79d81c3d4763bf857785fa73a511e4ac025b51490db0`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb594626d9dab2e9892d65b18792c713c4cdc7fe5f594d230c5e9917519fa66`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 6.1 MB (6123004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee21a1d22d6729290e3c46bf4551479f673aef8775a8924dac9ae31963a722f`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d591f154fbea106dd61c98167ed984c9cef1ab7b21c046a27cddf07343bb682`  
		Last Modified: Sat, 19 Sep 2026 00:57:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a32a433c2001bf818edd1e53f8a439fbf9846928809a82b198b74ab6d3867e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15b0627de10732a399d95e42576c8b2ba58a937921ee0ff2a4b6f5e751dbd69`

```dockerfile
```

-	Layers:
	-	`sha256:678d7836aff14fb215a9bfbe28a906b35be2312811c6a38338cf995a238e9479`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd68b6f11cbfebf142b00c307b84d159a62a63d5f355c7149284807ef42d66f9`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
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
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
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
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:da16cceb667ecca45289a20ab103936dd02b412ff24da59197576f788c3b2b15
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
$ docker pull spiped@sha256:7353d7dd73a28784cf826b2082473aaecf580ca75d7866ef7347632ec3aead54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36881029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d98a8c1f51472c2d2f5467b47a63fb137e31bc46ab08e62f557dc0c6286f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:38:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:38:42 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:38:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017d9771e02207de8ec68d7a725c9189a54d564c4bbf21f374c9d1c7c609053a`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c954b2da2b153c110a020a4cf74f35427a844dc426faf65222772a374df0d437`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8984e0603f1dbe31b61c1e889dd132509370c424ba6ad6c00c3390ce3a5a3240`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 7.0 MB (7048243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc13bdb7aae315b8ca9c1e8a976837b92915ea6c2f491fa3b5fd2d57dee0f11`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778bcc63be92ca27a0959dce208d63bdee95810a57927cafe5c95ac12f7a4369`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:1c6a48f84d9e7dc4d938950026c31730b47c6735ba6bb264ca055e23ece99cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feaa0ea4bcec21262834daa44adcdb6624e8879a52d90fcf4631207a90d6c8f5`

```dockerfile
```

-	Layers:
	-	`sha256:253897ab8cdfca15308cb5216127597083c022077a80d2f06e5d99143228d32e`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a750145ef3fd6fe646bbd007d039e8c972af8b176e8f1d09ea28685f5b80df16`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:86e82741687628ae7283c7d81e835b43972b56be2ccc478b7281cb84b337d2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33790743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8292ec413b6c39bb54e9cb74982a4c563042b35758bbe7a63a77531bd38bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:44 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:50:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:50:17 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:50:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:50:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e960ddc4c44a4a8c329ca4ba5fcb4010ca16184528d6b5795cd4d4596d07cf5`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3c9db5ffdd74e32826b8fac90093d3ee068fb12ea676ed76b9abe091d5cc07`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d80f8194e5cbef6add621d2eb71c71b184c0cc8d5c0a57e30cc2cf285a18e`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 5.8 MB (5790340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d831270605e99b7a2aa93b8798a3bfebdd2a35ceda5bb704d17a0bed4b50ac4`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3576b4e0a3945f6bf98e272389738fec5562d9bbc942048f9f1630d45915c6`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:e31bf45f4cf2970c9173b381cdcbb1a0b536217c49ebc939d36f904d5b4b7b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f236a98ff63acb52f10eee9ed87d377a0f1f72ab5e2edc930b994e32520824`

```dockerfile
```

-	Layers:
	-	`sha256:e77e6b9ab461abf4b2f821acf690e7c848cc037555db6f70f6103a7a14b5b096`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a07f574cdf7a78e36b40028ddd07bd151bff73d32cfde760ae8c2c33eb85a50b`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:eb986b3f62f3f07c9be468b124f715f04d7d2bead4245a53c5da102aae068aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fbbddf8c319c7a2cb3519cebd7acc7f209477294469d672a6352d7195c47c02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 01:26:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 01:27:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 01:27:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 01:27:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:27:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7198a81ecc39b73b4c4433304f6eec28566a495afa9beaa2facb6538cabb79ef`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461b49e8804703e1fa31d3dcc84aa864b4261f10a7a34c6a3ea42c9e6af44744`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0924e135f8dc12be31f1626e083fa47e71f7aaa299cd8089012cea8e99466ea7`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 5.6 MB (5585106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51569bff100daaac01d2b00dbd61b83d7d3ec083584b35aa709a7ab6057b9df2`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bb6e791c94d535f4fcea218f7507540a447d0d91bb6bbc2b84d29f7b1e70a8`  
		Last Modified: Sat, 19 Sep 2026 01:27:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:5e637bcfeee6b1ad54b282c10c8945974354581d4657b8266f58915fd9cea999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7397dd7f0e60ba06aa77b8c68a6008aa50485d5b7301afab212ae7f8236c334`

```dockerfile
```

-	Layers:
	-	`sha256:bc745974b609bec55c6d1da84ceceb1abd5e2c4918b4457dc5b8334d0495573d`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3821a13d185511dcacf1a03c7191448b6a2d2c7a04a1adbc8447381ec34730`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f392bbce56db2b014109167ab5d207a14afa026c7ce9c66a01d6346abfa9d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36426258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036d4e4b70df2a90901b7ed2c8a26cc415173786432f9a92ced093a791ff9142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:31 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:41:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:41:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:41:56 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:41:56 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd91dfb4d8678a8f98215a7ae3b77c7afcd0b94fb180933815f48226fe9423a`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb54c7eda95bc4bdc9f417d8f16eda70b7e18640d6a8a857b0ebdaf0b4c07b3`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120436d5f7daa7a207bb255b03df6cfe95196a70148c15292d372521d3940a39`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 6.2 MB (6234199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a2507faf445d0719471ac2cf4e5c4688fa08a9ff9f45ff3b2be1a8113267cd`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f110d3ec7233436555530fe2ee81e29e7df32b8fc63dc4538a52d59d95589c0e`  
		Last Modified: Sat, 19 Sep 2026 00:42:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:77a22ac53da721c36ef900023ea03188b6b6b144c13f0b1ad953dab635db582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b0ec0023be15e15eac8ec383c571649d6c911f69304e548fb975b333c4ea7b`

```dockerfile
```

-	Layers:
	-	`sha256:388b105ab6ec60a97f19e7d1489e9a739c28911e760b5bc8559bcf5d706d5f9f`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75c4689df9db568a7b490483248a4f78b31dd069f4cd42a5ccaca363aecd262`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:84723663f709bd509d94651a0c8b041c4ce611a6cbbf22c0118b4fda33451986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37786515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907ab73b077e983e9571fafa3f760db038cef29b0cd77648b370691f2cbb68ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:49:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:49:40 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:49:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4908c3dc36a366c01391a008986ee7aa5be81a7829d7d1c1b4d8bd7647dce4e1`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170bbe785a3282995184cfcaa798fe96795673dd71ab957eb12d3f4ccc09e2bc`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed642e18b16d3f7a245ea7ab3a669f7efbd517f0ee714beaea95e323c11a8bd`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 6.4 MB (6443749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8660c9ce77f2ab09b8fa17a82bf4617e5165104684d59e2a5f09e10aadd9028`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9d31d585b3f22d84e32f79600a2437dbe2c4e64c5bbc87621cb85343c9c7ec`  
		Last Modified: Sat, 19 Sep 2026 00:49:47 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:30faa82dd631417b2896ac4a2adba361563eab51698b693c99409bcfdc491552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0308860b9b41e60a0bb9eeca5ea836927909dddb8037d3ff36a248b17fe90b7`

```dockerfile
```

-	Layers:
	-	`sha256:4a6c71d744b43e2ba0fcc18ac36650942a8d192f013527aa6b54f125d9250a99`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b540d7710e7f926bd19afd5233e80d8edd658b245b9df2a3cf3ce9c7a8a0a47b`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:72b91927a5f1b8be0cb3f91635d506360cec0651500946d4d90478f9daecdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40484811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd70325c07bd6d6d7f99a535e54f44f261d986b8e18ac3d0e234de969c163fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:13:35 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 03:13:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 03:14:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 03:14:44 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 03:14:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:14:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bd3c7d07214edfaf01b3c50aae84373110c4719d0f0d8cad1bdc70a31fbfad`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb1a1a0e66b8bf582f67b3c6d2d5b3a957822580dee78aac22bffaa7e5a796`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710cfa79bab2d47e6fe3a3c93aa941366630f1156e2af577f24093efce6f84f`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 6.8 MB (6841211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bb9218b23e34b2c2275f0c2fb39a70efb760de928a433aa592bf6cbed0f786`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87a679a7c1c36d76edcabdbf9d38643b508ba333a4f9135e76545bd107ed277`  
		Last Modified: Sat, 19 Sep 2026 03:15:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:af68a0485d4c7a0761ab5c7d04670ad3b5898f1080e075bfbefbbb3179a0356a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d7500e172dfc0ed4506bb59c320ac2ee6c0eb82fd3a3b2c18bfcfb4b43124a`

```dockerfile
```

-	Layers:
	-	`sha256:8651137e4a3c9273a67f8719abceb8659f465debbeadaa4c467778f1aa91dc27`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137f83425d22f42392948b9a436a6f2022942c7f27f0a40670450eff0c39a5e6`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:437b0db9d2086fe68b5ab3aeb722594c6049045f835489ea1139cbbc9233c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40322901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0fce9d2f84c1fcfa47e47e09b974798c4c0e3162f24b719c03573956b100a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:09:33 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 27 Aug 2026 00:10:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 27 Aug 2026 00:13:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
VOLUME [/spiped]
# Thu, 27 Aug 2026 00:13:20 GMT
WORKDIR /spiped
# Thu, 27 Aug 2026 00:13:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 00:13:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 00:13:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cff9bdd54b7736eecec1633a765af1f4258a7dfe32130674a13f848ae02ebb`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1be10a6023e9656f65a19348c0b7e9e71777e067462312805bbea9974e2a57`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 2.7 MB (2668220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfe09fea9105cbd4f03510e63e7a4ebf3b8e8c51bd5e4ad074918d70c8ee494`  
		Last Modified: Thu, 27 Aug 2026 00:14:35 GMT  
		Size: 9.4 MB (9356677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b18009021d7f93982ff9985333fc189b7eaf11526397a6d4541340ed100538`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0c2713b5aaec6a11a085b1e169c4baa388a08f14f416bec025d6936822eb4e`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:7e652623e49c73f33220eec969ce14bb38f24ebc695ef15f89dde3293cd77812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f1010afc19989ab942c0e18a50f88fb20e0cf26e22e02a30299a9cef8514dd`

```dockerfile
```

-	Layers:
	-	`sha256:445f87a7ccaf2eda27a99ad4b879a88143aebeb758de175f17dd8c1d6121ed58`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 3.6 MB (3613683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82def89c0338de159596617cd566902febee3775661d9b80d3ed20f87721c29`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 15.0 KB (15046 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:261d9943771db7a464d4bea90d0d98004dc220f4b28aec340cbdaf316de6c365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36024522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fe49d530a323095e5993eb17ca9cbce2efd280951a7724922ff0e23c2c9629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:57:01 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:57:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:57:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:57:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:57:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:57:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0822fdc1e0199082c3b590faecf14910420fc2cf99a17307b737b1386bce54`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b1c81d959d41b3e9ee79d81c3d4763bf857785fa73a511e4ac025b51490db0`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb594626d9dab2e9892d65b18792c713c4cdc7fe5f594d230c5e9917519fa66`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 6.1 MB (6123004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee21a1d22d6729290e3c46bf4551479f673aef8775a8924dac9ae31963a722f`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d591f154fbea106dd61c98167ed984c9cef1ab7b21c046a27cddf07343bb682`  
		Last Modified: Sat, 19 Sep 2026 00:57:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a32a433c2001bf818edd1e53f8a439fbf9846928809a82b198b74ab6d3867e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15b0627de10732a399d95e42576c8b2ba58a937921ee0ff2a4b6f5e751dbd69`

```dockerfile
```

-	Layers:
	-	`sha256:678d7836aff14fb215a9bfbe28a906b35be2312811c6a38338cf995a238e9479`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd68b6f11cbfebf142b00c307b84d159a62a63d5f355c7149284807ef42d66f9`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
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
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
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
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
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
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
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
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:da16cceb667ecca45289a20ab103936dd02b412ff24da59197576f788c3b2b15
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
$ docker pull spiped@sha256:7353d7dd73a28784cf826b2082473aaecf580ca75d7866ef7347632ec3aead54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36881029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d98a8c1f51472c2d2f5467b47a63fb137e31bc46ab08e62f557dc0c6286f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:38:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:38:42 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:38:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017d9771e02207de8ec68d7a725c9189a54d564c4bbf21f374c9d1c7c609053a`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c954b2da2b153c110a020a4cf74f35427a844dc426faf65222772a374df0d437`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8984e0603f1dbe31b61c1e889dd132509370c424ba6ad6c00c3390ce3a5a3240`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 7.0 MB (7048243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc13bdb7aae315b8ca9c1e8a976837b92915ea6c2f491fa3b5fd2d57dee0f11`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778bcc63be92ca27a0959dce208d63bdee95810a57927cafe5c95ac12f7a4369`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:1c6a48f84d9e7dc4d938950026c31730b47c6735ba6bb264ca055e23ece99cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feaa0ea4bcec21262834daa44adcdb6624e8879a52d90fcf4631207a90d6c8f5`

```dockerfile
```

-	Layers:
	-	`sha256:253897ab8cdfca15308cb5216127597083c022077a80d2f06e5d99143228d32e`  
		Last Modified: Sat, 19 Sep 2026 00:38:49 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a750145ef3fd6fe646bbd007d039e8c972af8b176e8f1d09ea28685f5b80df16`  
		Last Modified: Sat, 19 Sep 2026 00:38:48 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:86e82741687628ae7283c7d81e835b43972b56be2ccc478b7281cb84b337d2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33790743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8292ec413b6c39bb54e9cb74982a4c563042b35758bbe7a63a77531bd38bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:44 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:50:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:50:17 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:50:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:50:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e960ddc4c44a4a8c329ca4ba5fcb4010ca16184528d6b5795cd4d4596d07cf5`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3c9db5ffdd74e32826b8fac90093d3ee068fb12ea676ed76b9abe091d5cc07`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d80f8194e5cbef6add621d2eb71c71b184c0cc8d5c0a57e30cc2cf285a18e`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 5.8 MB (5790340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d831270605e99b7a2aa93b8798a3bfebdd2a35ceda5bb704d17a0bed4b50ac4`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3576b4e0a3945f6bf98e272389738fec5562d9bbc942048f9f1630d45915c6`  
		Last Modified: Sat, 19 Sep 2026 00:50:25 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:e31bf45f4cf2970c9173b381cdcbb1a0b536217c49ebc939d36f904d5b4b7b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f236a98ff63acb52f10eee9ed87d377a0f1f72ab5e2edc930b994e32520824`

```dockerfile
```

-	Layers:
	-	`sha256:e77e6b9ab461abf4b2f821acf690e7c848cc037555db6f70f6103a7a14b5b096`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a07f574cdf7a78e36b40028ddd07bd151bff73d32cfde760ae8c2c33eb85a50b`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:eb986b3f62f3f07c9be468b124f715f04d7d2bead4245a53c5da102aae068aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fbbddf8c319c7a2cb3519cebd7acc7f209477294469d672a6352d7195c47c02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:53 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 01:26:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 01:27:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 01:27:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 01:27:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:27:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:27:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7198a81ecc39b73b4c4433304f6eec28566a495afa9beaa2facb6538cabb79ef`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461b49e8804703e1fa31d3dcc84aa864b4261f10a7a34c6a3ea42c9e6af44744`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0924e135f8dc12be31f1626e083fa47e71f7aaa299cd8089012cea8e99466ea7`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 5.6 MB (5585106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51569bff100daaac01d2b00dbd61b83d7d3ec083584b35aa709a7ab6057b9df2`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bb6e791c94d535f4fcea218f7507540a447d0d91bb6bbc2b84d29f7b1e70a8`  
		Last Modified: Sat, 19 Sep 2026 01:27:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:5e637bcfeee6b1ad54b282c10c8945974354581d4657b8266f58915fd9cea999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7397dd7f0e60ba06aa77b8c68a6008aa50485d5b7301afab212ae7f8236c334`

```dockerfile
```

-	Layers:
	-	`sha256:bc745974b609bec55c6d1da84ceceb1abd5e2c4918b4457dc5b8334d0495573d`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3821a13d185511dcacf1a03c7191448b6a2d2c7a04a1adbc8447381ec34730`  
		Last Modified: Sat, 19 Sep 2026 01:27:26 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f392bbce56db2b014109167ab5d207a14afa026c7ce9c66a01d6346abfa9d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36426258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036d4e4b70df2a90901b7ed2c8a26cc415173786432f9a92ced093a791ff9142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:31 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:41:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:41:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:41:56 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:41:56 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:41:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd91dfb4d8678a8f98215a7ae3b77c7afcd0b94fb180933815f48226fe9423a`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb54c7eda95bc4bdc9f417d8f16eda70b7e18640d6a8a857b0ebdaf0b4c07b3`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120436d5f7daa7a207bb255b03df6cfe95196a70148c15292d372521d3940a39`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 6.2 MB (6234199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a2507faf445d0719471ac2cf4e5c4688fa08a9ff9f45ff3b2be1a8113267cd`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f110d3ec7233436555530fe2ee81e29e7df32b8fc63dc4538a52d59d95589c0e`  
		Last Modified: Sat, 19 Sep 2026 00:42:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:77a22ac53da721c36ef900023ea03188b6b6b144c13f0b1ad953dab635db582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b0ec0023be15e15eac8ec383c571649d6c911f69304e548fb975b333c4ea7b`

```dockerfile
```

-	Layers:
	-	`sha256:388b105ab6ec60a97f19e7d1489e9a739c28911e760b5bc8559bcf5d706d5f9f`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75c4689df9db568a7b490483248a4f78b31dd069f4cd42a5ccaca363aecd262`  
		Last Modified: Sat, 19 Sep 2026 00:42:03 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:84723663f709bd509d94651a0c8b041c4ce611a6cbbf22c0118b4fda33451986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37786515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907ab73b077e983e9571fafa3f760db038cef29b0cd77648b370691f2cbb68ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:49:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:49:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:49:39 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:49:40 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:49:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4908c3dc36a366c01391a008986ee7aa5be81a7829d7d1c1b4d8bd7647dce4e1`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170bbe785a3282995184cfcaa798fe96795673dd71ab957eb12d3f4ccc09e2bc`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed642e18b16d3f7a245ea7ab3a669f7efbd517f0ee714beaea95e323c11a8bd`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 6.4 MB (6443749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8660c9ce77f2ab09b8fa17a82bf4617e5165104684d59e2a5f09e10aadd9028`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9d31d585b3f22d84e32f79600a2437dbe2c4e64c5bbc87621cb85343c9c7ec`  
		Last Modified: Sat, 19 Sep 2026 00:49:47 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:30faa82dd631417b2896ac4a2adba361563eab51698b693c99409bcfdc491552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0308860b9b41e60a0bb9eeca5ea836927909dddb8037d3ff36a248b17fe90b7`

```dockerfile
```

-	Layers:
	-	`sha256:4a6c71d744b43e2ba0fcc18ac36650942a8d192f013527aa6b54f125d9250a99`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b540d7710e7f926bd19afd5233e80d8edd658b245b9df2a3cf3ce9c7a8a0a47b`  
		Last Modified: Sat, 19 Sep 2026 00:49:46 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:72b91927a5f1b8be0cb3f91635d506360cec0651500946d4d90478f9daecdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40484811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd70325c07bd6d6d7f99a535e54f44f261d986b8e18ac3d0e234de969c163fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:13:35 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 03:13:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 03:14:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 03:14:44 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 03:14:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:14:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bd3c7d07214edfaf01b3c50aae84373110c4719d0f0d8cad1bdc70a31fbfad`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb1a1a0e66b8bf582f67b3c6d2d5b3a957822580dee78aac22bffaa7e5a796`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710cfa79bab2d47e6fe3a3c93aa941366630f1156e2af577f24093efce6f84f`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 6.8 MB (6841211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bb9218b23e34b2c2275f0c2fb39a70efb760de928a433aa592bf6cbed0f786`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87a679a7c1c36d76edcabdbf9d38643b508ba333a4f9135e76545bd107ed277`  
		Last Modified: Sat, 19 Sep 2026 03:15:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:af68a0485d4c7a0761ab5c7d04670ad3b5898f1080e075bfbefbbb3179a0356a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d7500e172dfc0ed4506bb59c320ac2ee6c0eb82fd3a3b2c18bfcfb4b43124a`

```dockerfile
```

-	Layers:
	-	`sha256:8651137e4a3c9273a67f8719abceb8659f465debbeadaa4c467778f1aa91dc27`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137f83425d22f42392948b9a436a6f2022942c7f27f0a40670450eff0c39a5e6`  
		Last Modified: Sat, 19 Sep 2026 03:15:07 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:437b0db9d2086fe68b5ab3aeb722594c6049045f835489ea1139cbbc9233c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40322901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0fce9d2f84c1fcfa47e47e09b974798c4c0e3162f24b719c03573956b100a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:09:33 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Thu, 27 Aug 2026 00:10:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 27 Aug 2026 00:13:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 27 Aug 2026 00:13:20 GMT
VOLUME [/spiped]
# Thu, 27 Aug 2026 00:13:20 GMT
WORKDIR /spiped
# Thu, 27 Aug 2026 00:13:21 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 00:13:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 00:13:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cff9bdd54b7736eecec1633a765af1f4258a7dfe32130674a13f848ae02ebb`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1be10a6023e9656f65a19348c0b7e9e71777e067462312805bbea9974e2a57`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 2.7 MB (2668220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfe09fea9105cbd4f03510e63e7a4ebf3b8e8c51bd5e4ad074918d70c8ee494`  
		Last Modified: Thu, 27 Aug 2026 00:14:35 GMT  
		Size: 9.4 MB (9356677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b18009021d7f93982ff9985333fc189b7eaf11526397a6d4541340ed100538`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0c2713b5aaec6a11a085b1e169c4baa388a08f14f416bec025d6936822eb4e`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:7e652623e49c73f33220eec969ce14bb38f24ebc695ef15f89dde3293cd77812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f1010afc19989ab942c0e18a50f88fb20e0cf26e22e02a30299a9cef8514dd`

```dockerfile
```

-	Layers:
	-	`sha256:445f87a7ccaf2eda27a99ad4b879a88143aebeb758de175f17dd8c1d6121ed58`  
		Last Modified: Thu, 27 Aug 2026 00:14:34 GMT  
		Size: 3.6 MB (3613683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82def89c0338de159596617cd566902febee3775661d9b80d3ed20f87721c29`  
		Last Modified: Thu, 27 Aug 2026 00:14:33 GMT  
		Size: 15.0 KB (15046 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:261d9943771db7a464d4bea90d0d98004dc220f4b28aec340cbdaf316de6c365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36024522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fe49d530a323095e5993eb17ca9cbce2efd280951a7724922ff0e23c2c9629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:57:01 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 19 Sep 2026 00:57:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 19 Sep 2026 00:57:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
VOLUME [/spiped]
# Sat, 19 Sep 2026 00:57:19 GMT
WORKDIR /spiped
# Sat, 19 Sep 2026 00:57:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:57:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0822fdc1e0199082c3b590faecf14910420fc2cf99a17307b737b1386bce54`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b1c81d959d41b3e9ee79d81c3d4763bf857785fa73a511e4ac025b51490db0`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb594626d9dab2e9892d65b18792c713c4cdc7fe5f594d230c5e9917519fa66`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 6.1 MB (6123004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee21a1d22d6729290e3c46bf4551479f673aef8775a8924dac9ae31963a722f`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d591f154fbea106dd61c98167ed984c9cef1ab7b21c046a27cddf07343bb682`  
		Last Modified: Sat, 19 Sep 2026 00:57:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a32a433c2001bf818edd1e53f8a439fbf9846928809a82b198b74ab6d3867e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15b0627de10732a399d95e42576c8b2ba58a937921ee0ff2a4b6f5e751dbd69`

```dockerfile
```

-	Layers:
	-	`sha256:678d7836aff14fb215a9bfbe28a906b35be2312811c6a38338cf995a238e9479`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd68b6f11cbfebf142b00c307b84d159a62a63d5f355c7149284807ef42d66f9`  
		Last Modified: Sat, 19 Sep 2026 00:57:31 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
