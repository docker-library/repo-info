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
$ docker pull spiped@sha256:6f74957b02de05fabc6ce74dd9bcb9e4873524daf8b9cd365607224bf676304e
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
$ docker pull spiped@sha256:98b533ce76a5ea450e71b0c30310ae9d5a2207b7fe5eaed4e07f76ebff86f3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36905762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb16fd7997fe56f3946681ef80d5c4aba4187321690b0f0c5b230850fa24550e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:32:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:32:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:33:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:33:09 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6119d72f7738258a2e278127c9d5c933ac38a7820f1aa4361cf02a54ca4834ff`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a08c6107acd8b963eaf53426ddbe174fbe78879c1abaefa498428ebfe775c0`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b691d1e32a5665f093692da88a39ef35e4357950cce31d075398278ce051ac0e`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 7.0 MB (7048155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663a7ef61aca708dde91335a7efef10f84c0356df1a0ed52c995fe62e23dca02`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f35f4a526ed5d9cc0d36872e49985698edfa14bb27e0e50ae004455e8b7c961`  
		Last Modified: Wed, 28 Oct 2026 01:33:17 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:33fa2fdc99cf03be08f945006961749ecdac690e61e7772d9a428249b0ef1d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ea675db82006de04bd4d68599716e1da85e2f893221e1a14f39d680b8123d5`

```dockerfile
```

-	Layers:
	-	`sha256:f5501cd875539a6e4eac1b9227b449bdc9b45bc6f438e916b7bfce7e06b14ff9`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b334fd0d367f102ee469c6009f979483cc63d5de6ad1f9111d9e76fb6432fcda`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4c3fe88c6a6d78c9385a2db525e82632dc3809e12509e7a4b1878dd52e8f8e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33811642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28aa70c797cc3101c2dc7c5ad6c7a1f95d9a9c2c7c03dd7d6c6dd42d66b817a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:38:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:38:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:38:59 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:38:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:38:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2f874bac7966d3071ea63b41873eb9fb3a47da4d2f503f388893c7d237b587`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f0b76ed968b15780cce4af952a13d1e9e412e54d01265bef96a2ce45ab56e8`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ee7762f3de3993826ec21b4e1a296262da605fe9e4546612e8a95c6bd8827a`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 5.8 MB (5790599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4dc51106d2784eb9da8af245df38eb000dfd712482be26869bc40ad5464e06`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d57cfaee6858bda4564866d1a668e2a1acecb1e99c546578fea68e1ad2ccaa`  
		Last Modified: Wed, 28 Oct 2026 01:39:07 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:51143dc328177ef26685e62435e9cf7a29288f05c8e9ced7e48498a92a00ba4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f01d7b38263c0d7852e363d6e575d6b757b1fb7d06df43deb924667280b507`

```dockerfile
```

-	Layers:
	-	`sha256:8f4eb3b1a319b689cad5bc26c9d15c5bbc4307a6afccc59afcbe4c4d16d8951e`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07e9c376239ccaa37e2c94eb9e8946e3f25b22f69418f81ec6f6bfc5ecfff1f`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:92e0ea5e944cc4203a0ba7abd47cc2014746eaf53b6a0ea63538fe16074f5170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31859923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142b01fc557ce056b409d36817fb2330f48a83ceffa6099abd1615a0861cdb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:22 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:20:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:20:54 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:20:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:20:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fc4670c69cdbca4421d9c257ff6a31dab6f65e800ac01d91f530135002e48d`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c6d65a08ac97003bac6b78861ad85e4f3a28900f30012b77d984310d0cbd60`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa9e4f49e2c30c42faa0b53d3a79bcf69e30adba5b013577418168f66f353d3`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 5.6 MB (5585383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a610dde382477ceae678fcb87de97a04ffe17e14ac15c21ed4c90541e5bc6559`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d97e7a329e7956004bb78ef38fbb4c18adcd4a94e1613e351791504dfffded`  
		Last Modified: Wed, 28 Oct 2026 02:21:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:119ec78421eb8196c9aa49778f6db512f8e0e6cae89fb2b1c9f2774375204a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4effd0d96be8448dc8bb6c1981dae5f200979d55663ee51609b16a219c374e7b`

```dockerfile
```

-	Layers:
	-	`sha256:641f3083728d329d47c49c8c5db101c4ebe6a0b40481d2a1a40819fd5dc1247a`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f04025206f2c1a07baaa172db49a2509f7d49bd3667413279e96b39d2150bba`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a447047be1f162a8f5c5d700f6baa03acc3ff9e68c18e9431accbe60c975774e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255f6e8b0ea74fc0111abaed627b57cf01f660feb97714195cc669e4dc21b07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:36:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:36:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:36:27 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:36:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:36:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacbf9b2f370d732fbb60d9330e013b3f8e19784546aec4c4509fa690296b6ba`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5307cdac9265a5aa88b58c62e6590e08cff8e9c7c5ffde90965c3e91b0b7`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235dd8bd24db4ee469dd25d40eb78a72ec916838f8027096428970a167c18acf`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 6.2 MB (6234359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b364bc77a79a6d52006755d4f19524b49c9f92c684ebaea1dc6870f86d0efb0`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75669f9ae75e2c26e84bcb05d24433841c456d1409ec4d941a435492b669b62f`  
		Last Modified: Wed, 28 Oct 2026 01:36:36 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:72da53fc0a00d2b40f1762606c697a773510c6f48c63946e5e719b4eecb5e9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f619a4ba52c213bfd5a8e92dc87aea517e03c4d76422f248ec57326c64d010c9`

```dockerfile
```

-	Layers:
	-	`sha256:e10fc6976dfe20f14c250a1c7726adef2fe0d8e561b08a9b8a6b9cee0404ee0f`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ddebf451c60156664497ae21616f6cc0cd64c7e5cf73bb230e0a62e1ee2f26f`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:bb34556f703ccc044a0b45d3649df41bdc6b7a528de6088a6864711c9151e23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37814964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb7b7dc10512eb456ff4c615080077dac674f4e5114556dd6a0e47ceafa6002`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:42:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:42:53 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:42:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc2a5073bd18a724e6b62ac546fd2fe6db7af3e2cff9a593787af65db3f3885`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1675c2493927e9e7ef1da3a593db623c5aeb6292a1dd255f295f3d06444f646b`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41a8586635742699a02374b98205d7bb0e9c473a1c888ff393443d2127d8014`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 6.4 MB (6444005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2c1937c73bd1811afe6349e4431ded3887ad58272f9ebc34325f096c291973`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee5f7e112ac084203a0f6fbba76c247e002fe0c8ac642249f1d8004b8bb2fca`  
		Last Modified: Wed, 28 Oct 2026 01:43:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:2e556a19b618cedfa8f32427772a42c2054fb8058fca83940da712d81e328787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d704c3e3290019cb118bf4214d33b533306381c5ed98844f7592c3156d438b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d46cad6153858cb15d02b7154f5d6a22aebc3bf23409ef5b9f6a59bede8d79e0`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcb2a1e8a2a0fd8ce556c94e88d50a26e7504fe17a80c5ebe9c0136476b31175`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
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
$ docker pull spiped@sha256:de43e6e1abdd7268c5ebc092a77a0e47e67dcb256343422a40c1c1f1db9a53dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36048387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a37b54889b4904143e2bfd7b82584acf5d41f1f914e1b50d34cc6ac9b8c50eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:41:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:41:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:41:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:41:57 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:41:57 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:41:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62073feb37bfe3cf6a05970ee17909b03e8e053715996ab637ccadc96659e2fc`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1334f2c9d625528a031598e0e84eec1a556cc4ac09cf59900f5a7ab5df5574d`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d5bb56af1345c6f34202f15cc6cc88e5d579644862d915fc504dfdc98d427`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 6.1 MB (6123093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa6cec41ec900342c8780beacf41a832cb44265a193ec56358984218224749`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b17843fe29d954c41a62899980169397d6aad32d6bcad2aa8e93d0b449a883`  
		Last Modified: Wed, 28 Oct 2026 02:42:09 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:cbd729f4d0ff05a0f2a34a1c38be52338f76a1794ae7f5926c779dc8f74c5d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2a6198da80e76842d971691122e2bf577af6c65845f80ca3e1d5c2bb976ad`

```dockerfile
```

-	Layers:
	-	`sha256:49bb5a9bb9f1f123ffa27bec755c93655069eca3b9e9da9c58f4c9e3c771d9db`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91eda75e1515605bb701b30cd96fd506ebe0615d64292510637b6e734562b185`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 15.0 KB (14981 bytes)  
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
$ docker pull spiped@sha256:6f74957b02de05fabc6ce74dd9bcb9e4873524daf8b9cd365607224bf676304e
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
$ docker pull spiped@sha256:98b533ce76a5ea450e71b0c30310ae9d5a2207b7fe5eaed4e07f76ebff86f3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36905762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb16fd7997fe56f3946681ef80d5c4aba4187321690b0f0c5b230850fa24550e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:32:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:32:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:33:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:33:09 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6119d72f7738258a2e278127c9d5c933ac38a7820f1aa4361cf02a54ca4834ff`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a08c6107acd8b963eaf53426ddbe174fbe78879c1abaefa498428ebfe775c0`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b691d1e32a5665f093692da88a39ef35e4357950cce31d075398278ce051ac0e`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 7.0 MB (7048155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663a7ef61aca708dde91335a7efef10f84c0356df1a0ed52c995fe62e23dca02`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f35f4a526ed5d9cc0d36872e49985698edfa14bb27e0e50ae004455e8b7c961`  
		Last Modified: Wed, 28 Oct 2026 01:33:17 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:33fa2fdc99cf03be08f945006961749ecdac690e61e7772d9a428249b0ef1d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ea675db82006de04bd4d68599716e1da85e2f893221e1a14f39d680b8123d5`

```dockerfile
```

-	Layers:
	-	`sha256:f5501cd875539a6e4eac1b9227b449bdc9b45bc6f438e916b7bfce7e06b14ff9`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b334fd0d367f102ee469c6009f979483cc63d5de6ad1f9111d9e76fb6432fcda`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4c3fe88c6a6d78c9385a2db525e82632dc3809e12509e7a4b1878dd52e8f8e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33811642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28aa70c797cc3101c2dc7c5ad6c7a1f95d9a9c2c7c03dd7d6c6dd42d66b817a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:38:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:38:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:38:59 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:38:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:38:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2f874bac7966d3071ea63b41873eb9fb3a47da4d2f503f388893c7d237b587`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f0b76ed968b15780cce4af952a13d1e9e412e54d01265bef96a2ce45ab56e8`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ee7762f3de3993826ec21b4e1a296262da605fe9e4546612e8a95c6bd8827a`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 5.8 MB (5790599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4dc51106d2784eb9da8af245df38eb000dfd712482be26869bc40ad5464e06`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d57cfaee6858bda4564866d1a668e2a1acecb1e99c546578fea68e1ad2ccaa`  
		Last Modified: Wed, 28 Oct 2026 01:39:07 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:51143dc328177ef26685e62435e9cf7a29288f05c8e9ced7e48498a92a00ba4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f01d7b38263c0d7852e363d6e575d6b757b1fb7d06df43deb924667280b507`

```dockerfile
```

-	Layers:
	-	`sha256:8f4eb3b1a319b689cad5bc26c9d15c5bbc4307a6afccc59afcbe4c4d16d8951e`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07e9c376239ccaa37e2c94eb9e8946e3f25b22f69418f81ec6f6bfc5ecfff1f`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:92e0ea5e944cc4203a0ba7abd47cc2014746eaf53b6a0ea63538fe16074f5170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31859923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142b01fc557ce056b409d36817fb2330f48a83ceffa6099abd1615a0861cdb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:22 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:20:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:20:54 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:20:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:20:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fc4670c69cdbca4421d9c257ff6a31dab6f65e800ac01d91f530135002e48d`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c6d65a08ac97003bac6b78861ad85e4f3a28900f30012b77d984310d0cbd60`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa9e4f49e2c30c42faa0b53d3a79bcf69e30adba5b013577418168f66f353d3`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 5.6 MB (5585383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a610dde382477ceae678fcb87de97a04ffe17e14ac15c21ed4c90541e5bc6559`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d97e7a329e7956004bb78ef38fbb4c18adcd4a94e1613e351791504dfffded`  
		Last Modified: Wed, 28 Oct 2026 02:21:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:119ec78421eb8196c9aa49778f6db512f8e0e6cae89fb2b1c9f2774375204a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4effd0d96be8448dc8bb6c1981dae5f200979d55663ee51609b16a219c374e7b`

```dockerfile
```

-	Layers:
	-	`sha256:641f3083728d329d47c49c8c5db101c4ebe6a0b40481d2a1a40819fd5dc1247a`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f04025206f2c1a07baaa172db49a2509f7d49bd3667413279e96b39d2150bba`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a447047be1f162a8f5c5d700f6baa03acc3ff9e68c18e9431accbe60c975774e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255f6e8b0ea74fc0111abaed627b57cf01f660feb97714195cc669e4dc21b07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:36:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:36:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:36:27 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:36:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:36:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacbf9b2f370d732fbb60d9330e013b3f8e19784546aec4c4509fa690296b6ba`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5307cdac9265a5aa88b58c62e6590e08cff8e9c7c5ffde90965c3e91b0b7`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235dd8bd24db4ee469dd25d40eb78a72ec916838f8027096428970a167c18acf`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 6.2 MB (6234359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b364bc77a79a6d52006755d4f19524b49c9f92c684ebaea1dc6870f86d0efb0`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75669f9ae75e2c26e84bcb05d24433841c456d1409ec4d941a435492b669b62f`  
		Last Modified: Wed, 28 Oct 2026 01:36:36 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:72da53fc0a00d2b40f1762606c697a773510c6f48c63946e5e719b4eecb5e9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f619a4ba52c213bfd5a8e92dc87aea517e03c4d76422f248ec57326c64d010c9`

```dockerfile
```

-	Layers:
	-	`sha256:e10fc6976dfe20f14c250a1c7726adef2fe0d8e561b08a9b8a6b9cee0404ee0f`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ddebf451c60156664497ae21616f6cc0cd64c7e5cf73bb230e0a62e1ee2f26f`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:bb34556f703ccc044a0b45d3649df41bdc6b7a528de6088a6864711c9151e23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37814964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb7b7dc10512eb456ff4c615080077dac674f4e5114556dd6a0e47ceafa6002`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:42:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:42:53 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:42:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc2a5073bd18a724e6b62ac546fd2fe6db7af3e2cff9a593787af65db3f3885`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1675c2493927e9e7ef1da3a593db623c5aeb6292a1dd255f295f3d06444f646b`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41a8586635742699a02374b98205d7bb0e9c473a1c888ff393443d2127d8014`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 6.4 MB (6444005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2c1937c73bd1811afe6349e4431ded3887ad58272f9ebc34325f096c291973`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee5f7e112ac084203a0f6fbba76c247e002fe0c8ac642249f1d8004b8bb2fca`  
		Last Modified: Wed, 28 Oct 2026 01:43:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:2e556a19b618cedfa8f32427772a42c2054fb8058fca83940da712d81e328787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d704c3e3290019cb118bf4214d33b533306381c5ed98844f7592c3156d438b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d46cad6153858cb15d02b7154f5d6a22aebc3bf23409ef5b9f6a59bede8d79e0`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcb2a1e8a2a0fd8ce556c94e88d50a26e7504fe17a80c5ebe9c0136476b31175`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
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
$ docker pull spiped@sha256:de43e6e1abdd7268c5ebc092a77a0e47e67dcb256343422a40c1c1f1db9a53dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36048387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a37b54889b4904143e2bfd7b82584acf5d41f1f914e1b50d34cc6ac9b8c50eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:41:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:41:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:41:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:41:57 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:41:57 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:41:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62073feb37bfe3cf6a05970ee17909b03e8e053715996ab637ccadc96659e2fc`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1334f2c9d625528a031598e0e84eec1a556cc4ac09cf59900f5a7ab5df5574d`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d5bb56af1345c6f34202f15cc6cc88e5d579644862d915fc504dfdc98d427`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 6.1 MB (6123093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa6cec41ec900342c8780beacf41a832cb44265a193ec56358984218224749`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b17843fe29d954c41a62899980169397d6aad32d6bcad2aa8e93d0b449a883`  
		Last Modified: Wed, 28 Oct 2026 02:42:09 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:cbd729f4d0ff05a0f2a34a1c38be52338f76a1794ae7f5926c779dc8f74c5d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2a6198da80e76842d971691122e2bf577af6c65845f80ca3e1d5c2bb976ad`

```dockerfile
```

-	Layers:
	-	`sha256:49bb5a9bb9f1f123ffa27bec755c93655069eca3b9e9da9c58f4c9e3c771d9db`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91eda75e1515605bb701b30cd96fd506ebe0615d64292510637b6e734562b185`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 15.0 KB (14981 bytes)  
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
$ docker pull spiped@sha256:6f74957b02de05fabc6ce74dd9bcb9e4873524daf8b9cd365607224bf676304e
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
$ docker pull spiped@sha256:98b533ce76a5ea450e71b0c30310ae9d5a2207b7fe5eaed4e07f76ebff86f3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36905762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb16fd7997fe56f3946681ef80d5c4aba4187321690b0f0c5b230850fa24550e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:32:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:32:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:33:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:33:09 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6119d72f7738258a2e278127c9d5c933ac38a7820f1aa4361cf02a54ca4834ff`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a08c6107acd8b963eaf53426ddbe174fbe78879c1abaefa498428ebfe775c0`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b691d1e32a5665f093692da88a39ef35e4357950cce31d075398278ce051ac0e`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 7.0 MB (7048155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663a7ef61aca708dde91335a7efef10f84c0356df1a0ed52c995fe62e23dca02`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f35f4a526ed5d9cc0d36872e49985698edfa14bb27e0e50ae004455e8b7c961`  
		Last Modified: Wed, 28 Oct 2026 01:33:17 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:33fa2fdc99cf03be08f945006961749ecdac690e61e7772d9a428249b0ef1d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ea675db82006de04bd4d68599716e1da85e2f893221e1a14f39d680b8123d5`

```dockerfile
```

-	Layers:
	-	`sha256:f5501cd875539a6e4eac1b9227b449bdc9b45bc6f438e916b7bfce7e06b14ff9`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b334fd0d367f102ee469c6009f979483cc63d5de6ad1f9111d9e76fb6432fcda`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4c3fe88c6a6d78c9385a2db525e82632dc3809e12509e7a4b1878dd52e8f8e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33811642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28aa70c797cc3101c2dc7c5ad6c7a1f95d9a9c2c7c03dd7d6c6dd42d66b817a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:38:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:38:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:38:59 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:38:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:38:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2f874bac7966d3071ea63b41873eb9fb3a47da4d2f503f388893c7d237b587`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f0b76ed968b15780cce4af952a13d1e9e412e54d01265bef96a2ce45ab56e8`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ee7762f3de3993826ec21b4e1a296262da605fe9e4546612e8a95c6bd8827a`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 5.8 MB (5790599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4dc51106d2784eb9da8af245df38eb000dfd712482be26869bc40ad5464e06`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d57cfaee6858bda4564866d1a668e2a1acecb1e99c546578fea68e1ad2ccaa`  
		Last Modified: Wed, 28 Oct 2026 01:39:07 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:51143dc328177ef26685e62435e9cf7a29288f05c8e9ced7e48498a92a00ba4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f01d7b38263c0d7852e363d6e575d6b757b1fb7d06df43deb924667280b507`

```dockerfile
```

-	Layers:
	-	`sha256:8f4eb3b1a319b689cad5bc26c9d15c5bbc4307a6afccc59afcbe4c4d16d8951e`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07e9c376239ccaa37e2c94eb9e8946e3f25b22f69418f81ec6f6bfc5ecfff1f`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:92e0ea5e944cc4203a0ba7abd47cc2014746eaf53b6a0ea63538fe16074f5170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31859923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142b01fc557ce056b409d36817fb2330f48a83ceffa6099abd1615a0861cdb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:22 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:20:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:20:54 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:20:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:20:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fc4670c69cdbca4421d9c257ff6a31dab6f65e800ac01d91f530135002e48d`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c6d65a08ac97003bac6b78861ad85e4f3a28900f30012b77d984310d0cbd60`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa9e4f49e2c30c42faa0b53d3a79bcf69e30adba5b013577418168f66f353d3`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 5.6 MB (5585383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a610dde382477ceae678fcb87de97a04ffe17e14ac15c21ed4c90541e5bc6559`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d97e7a329e7956004bb78ef38fbb4c18adcd4a94e1613e351791504dfffded`  
		Last Modified: Wed, 28 Oct 2026 02:21:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:119ec78421eb8196c9aa49778f6db512f8e0e6cae89fb2b1c9f2774375204a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4effd0d96be8448dc8bb6c1981dae5f200979d55663ee51609b16a219c374e7b`

```dockerfile
```

-	Layers:
	-	`sha256:641f3083728d329d47c49c8c5db101c4ebe6a0b40481d2a1a40819fd5dc1247a`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f04025206f2c1a07baaa172db49a2509f7d49bd3667413279e96b39d2150bba`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a447047be1f162a8f5c5d700f6baa03acc3ff9e68c18e9431accbe60c975774e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255f6e8b0ea74fc0111abaed627b57cf01f660feb97714195cc669e4dc21b07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:36:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:36:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:36:27 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:36:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:36:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacbf9b2f370d732fbb60d9330e013b3f8e19784546aec4c4509fa690296b6ba`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5307cdac9265a5aa88b58c62e6590e08cff8e9c7c5ffde90965c3e91b0b7`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235dd8bd24db4ee469dd25d40eb78a72ec916838f8027096428970a167c18acf`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 6.2 MB (6234359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b364bc77a79a6d52006755d4f19524b49c9f92c684ebaea1dc6870f86d0efb0`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75669f9ae75e2c26e84bcb05d24433841c456d1409ec4d941a435492b669b62f`  
		Last Modified: Wed, 28 Oct 2026 01:36:36 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:72da53fc0a00d2b40f1762606c697a773510c6f48c63946e5e719b4eecb5e9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f619a4ba52c213bfd5a8e92dc87aea517e03c4d76422f248ec57326c64d010c9`

```dockerfile
```

-	Layers:
	-	`sha256:e10fc6976dfe20f14c250a1c7726adef2fe0d8e561b08a9b8a6b9cee0404ee0f`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ddebf451c60156664497ae21616f6cc0cd64c7e5cf73bb230e0a62e1ee2f26f`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:bb34556f703ccc044a0b45d3649df41bdc6b7a528de6088a6864711c9151e23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37814964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb7b7dc10512eb456ff4c615080077dac674f4e5114556dd6a0e47ceafa6002`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:42:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:42:53 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:42:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc2a5073bd18a724e6b62ac546fd2fe6db7af3e2cff9a593787af65db3f3885`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1675c2493927e9e7ef1da3a593db623c5aeb6292a1dd255f295f3d06444f646b`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41a8586635742699a02374b98205d7bb0e9c473a1c888ff393443d2127d8014`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 6.4 MB (6444005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2c1937c73bd1811afe6349e4431ded3887ad58272f9ebc34325f096c291973`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee5f7e112ac084203a0f6fbba76c247e002fe0c8ac642249f1d8004b8bb2fca`  
		Last Modified: Wed, 28 Oct 2026 01:43:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:2e556a19b618cedfa8f32427772a42c2054fb8058fca83940da712d81e328787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d704c3e3290019cb118bf4214d33b533306381c5ed98844f7592c3156d438b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d46cad6153858cb15d02b7154f5d6a22aebc3bf23409ef5b9f6a59bede8d79e0`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcb2a1e8a2a0fd8ce556c94e88d50a26e7504fe17a80c5ebe9c0136476b31175`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
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
$ docker pull spiped@sha256:de43e6e1abdd7268c5ebc092a77a0e47e67dcb256343422a40c1c1f1db9a53dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36048387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a37b54889b4904143e2bfd7b82584acf5d41f1f914e1b50d34cc6ac9b8c50eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:41:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:41:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:41:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:41:57 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:41:57 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:41:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62073feb37bfe3cf6a05970ee17909b03e8e053715996ab637ccadc96659e2fc`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1334f2c9d625528a031598e0e84eec1a556cc4ac09cf59900f5a7ab5df5574d`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d5bb56af1345c6f34202f15cc6cc88e5d579644862d915fc504dfdc98d427`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 6.1 MB (6123093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa6cec41ec900342c8780beacf41a832cb44265a193ec56358984218224749`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b17843fe29d954c41a62899980169397d6aad32d6bcad2aa8e93d0b449a883`  
		Last Modified: Wed, 28 Oct 2026 02:42:09 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:cbd729f4d0ff05a0f2a34a1c38be52338f76a1794ae7f5926c779dc8f74c5d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2a6198da80e76842d971691122e2bf577af6c65845f80ca3e1d5c2bb976ad`

```dockerfile
```

-	Layers:
	-	`sha256:49bb5a9bb9f1f123ffa27bec755c93655069eca3b9e9da9c58f4c9e3c771d9db`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91eda75e1515605bb701b30cd96fd506ebe0615d64292510637b6e734562b185`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 15.0 KB (14981 bytes)  
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
$ docker pull spiped@sha256:6f74957b02de05fabc6ce74dd9bcb9e4873524daf8b9cd365607224bf676304e
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
$ docker pull spiped@sha256:98b533ce76a5ea450e71b0c30310ae9d5a2207b7fe5eaed4e07f76ebff86f3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36905762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb16fd7997fe56f3946681ef80d5c4aba4187321690b0f0c5b230850fa24550e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:32:45 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:32:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:33:09 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:33:09 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6119d72f7738258a2e278127c9d5c933ac38a7820f1aa4361cf02a54ca4834ff`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a08c6107acd8b963eaf53426ddbe174fbe78879c1abaefa498428ebfe775c0`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b691d1e32a5665f093692da88a39ef35e4357950cce31d075398278ce051ac0e`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 7.0 MB (7048155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663a7ef61aca708dde91335a7efef10f84c0356df1a0ed52c995fe62e23dca02`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f35f4a526ed5d9cc0d36872e49985698edfa14bb27e0e50ae004455e8b7c961`  
		Last Modified: Wed, 28 Oct 2026 01:33:17 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:33fa2fdc99cf03be08f945006961749ecdac690e61e7772d9a428249b0ef1d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ea675db82006de04bd4d68599716e1da85e2f893221e1a14f39d680b8123d5`

```dockerfile
```

-	Layers:
	-	`sha256:f5501cd875539a6e4eac1b9227b449bdc9b45bc6f438e916b7bfce7e06b14ff9`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b334fd0d367f102ee469c6009f979483cc63d5de6ad1f9111d9e76fb6432fcda`  
		Last Modified: Wed, 28 Oct 2026 01:33:16 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4c3fe88c6a6d78c9385a2db525e82632dc3809e12509e7a4b1878dd52e8f8e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33811642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28aa70c797cc3101c2dc7c5ad6c7a1f95d9a9c2c7c03dd7d6c6dd42d66b817a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:38:31 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:38:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:38:59 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:38:59 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:38:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2f874bac7966d3071ea63b41873eb9fb3a47da4d2f503f388893c7d237b587`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f0b76ed968b15780cce4af952a13d1e9e412e54d01265bef96a2ce45ab56e8`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ee7762f3de3993826ec21b4e1a296262da605fe9e4546612e8a95c6bd8827a`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 5.8 MB (5790599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4dc51106d2784eb9da8af245df38eb000dfd712482be26869bc40ad5464e06`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d57cfaee6858bda4564866d1a668e2a1acecb1e99c546578fea68e1ad2ccaa`  
		Last Modified: Wed, 28 Oct 2026 01:39:07 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:51143dc328177ef26685e62435e9cf7a29288f05c8e9ced7e48498a92a00ba4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f01d7b38263c0d7852e363d6e575d6b757b1fb7d06df43deb924667280b507`

```dockerfile
```

-	Layers:
	-	`sha256:8f4eb3b1a319b689cad5bc26c9d15c5bbc4307a6afccc59afcbe4c4d16d8951e`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07e9c376239ccaa37e2c94eb9e8946e3f25b22f69418f81ec6f6bfc5ecfff1f`  
		Last Modified: Wed, 28 Oct 2026 01:39:06 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:92e0ea5e944cc4203a0ba7abd47cc2014746eaf53b6a0ea63538fe16074f5170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31859923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142b01fc557ce056b409d36817fb2330f48a83ceffa6099abd1615a0861cdb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:22 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:20:54 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:20:54 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:20:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:20:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fc4670c69cdbca4421d9c257ff6a31dab6f65e800ac01d91f530135002e48d`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c6d65a08ac97003bac6b78861ad85e4f3a28900f30012b77d984310d0cbd60`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa9e4f49e2c30c42faa0b53d3a79bcf69e30adba5b013577418168f66f353d3`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 5.6 MB (5585383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a610dde382477ceae678fcb87de97a04ffe17e14ac15c21ed4c90541e5bc6559`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d97e7a329e7956004bb78ef38fbb4c18adcd4a94e1613e351791504dfffded`  
		Last Modified: Wed, 28 Oct 2026 02:21:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:119ec78421eb8196c9aa49778f6db512f8e0e6cae89fb2b1c9f2774375204a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4effd0d96be8448dc8bb6c1981dae5f200979d55663ee51609b16a219c374e7b`

```dockerfile
```

-	Layers:
	-	`sha256:641f3083728d329d47c49c8c5db101c4ebe6a0b40481d2a1a40819fd5dc1247a`  
		Last Modified: Wed, 28 Oct 2026 02:21:02 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f04025206f2c1a07baaa172db49a2509f7d49bd3667413279e96b39d2150bba`  
		Last Modified: Wed, 28 Oct 2026 02:21:01 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a447047be1f162a8f5c5d700f6baa03acc3ff9e68c18e9431accbe60c975774e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36450226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255f6e8b0ea74fc0111abaed627b57cf01f660feb97714195cc669e4dc21b07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:36:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:36:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:36:27 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:36:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:36:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacbf9b2f370d732fbb60d9330e013b3f8e19784546aec4c4509fa690296b6ba`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5307cdac9265a5aa88b58c62e6590e08cff8e9c7c5ffde90965c3e91b0b7`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235dd8bd24db4ee469dd25d40eb78a72ec916838f8027096428970a167c18acf`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 6.2 MB (6234359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b364bc77a79a6d52006755d4f19524b49c9f92c684ebaea1dc6870f86d0efb0`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75669f9ae75e2c26e84bcb05d24433841c456d1409ec4d941a435492b669b62f`  
		Last Modified: Wed, 28 Oct 2026 01:36:36 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:72da53fc0a00d2b40f1762606c697a773510c6f48c63946e5e719b4eecb5e9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f619a4ba52c213bfd5a8e92dc87aea517e03c4d76422f248ec57326c64d010c9`

```dockerfile
```

-	Layers:
	-	`sha256:e10fc6976dfe20f14c250a1c7726adef2fe0d8e561b08a9b8a6b9cee0404ee0f`  
		Last Modified: Wed, 28 Oct 2026 01:36:35 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ddebf451c60156664497ae21616f6cc0cd64c7e5cf73bb230e0a62e1ee2f26f`  
		Last Modified: Wed, 28 Oct 2026 01:36:34 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:bb34556f703ccc044a0b45d3649df41bdc6b7a528de6088a6864711c9151e23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37814964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb7b7dc10512eb456ff4c615080077dac674f4e5114556dd6a0e47ceafa6002`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 01:42:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 01:42:53 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 01:42:53 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc2a5073bd18a724e6b62ac546fd2fe6db7af3e2cff9a593787af65db3f3885`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1675c2493927e9e7ef1da3a593db623c5aeb6292a1dd255f295f3d06444f646b`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41a8586635742699a02374b98205d7bb0e9c473a1c888ff393443d2127d8014`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 6.4 MB (6444005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2c1937c73bd1811afe6349e4431ded3887ad58272f9ebc34325f096c291973`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee5f7e112ac084203a0f6fbba76c247e002fe0c8ac642249f1d8004b8bb2fca`  
		Last Modified: Wed, 28 Oct 2026 01:43:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:2e556a19b618cedfa8f32427772a42c2054fb8058fca83940da712d81e328787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d704c3e3290019cb118bf4214d33b533306381c5ed98844f7592c3156d438b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d46cad6153858cb15d02b7154f5d6a22aebc3bf23409ef5b9f6a59bede8d79e0`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcb2a1e8a2a0fd8ce556c94e88d50a26e7504fe17a80c5ebe9c0136476b31175`  
		Last Modified: Wed, 28 Oct 2026 01:43:00 GMT  
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
$ docker pull spiped@sha256:de43e6e1abdd7268c5ebc092a77a0e47e67dcb256343422a40c1c1f1db9a53dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36048387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a37b54889b4904143e2bfd7b82584acf5d41f1f914e1b50d34cc6ac9b8c50eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:41:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 28 Oct 2026 02:41:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 28 Oct 2026 02:41:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
VOLUME [/spiped]
# Wed, 28 Oct 2026 02:41:57 GMT
WORKDIR /spiped
# Wed, 28 Oct 2026 02:41:57 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:41:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62073feb37bfe3cf6a05970ee17909b03e8e053715996ab637ccadc96659e2fc`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1334f2c9d625528a031598e0e84eec1a556cc4ac09cf59900f5a7ab5df5574d`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d5bb56af1345c6f34202f15cc6cc88e5d579644862d915fc504dfdc98d427`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 6.1 MB (6123093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa6cec41ec900342c8780beacf41a832cb44265a193ec56358984218224749`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b17843fe29d954c41a62899980169397d6aad32d6bcad2aa8e93d0b449a883`  
		Last Modified: Wed, 28 Oct 2026 02:42:09 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:cbd729f4d0ff05a0f2a34a1c38be52338f76a1794ae7f5926c779dc8f74c5d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2a6198da80e76842d971691122e2bf577af6c65845f80ca3e1d5c2bb976ad`

```dockerfile
```

-	Layers:
	-	`sha256:49bb5a9bb9f1f123ffa27bec755c93655069eca3b9e9da9c58f4c9e3c771d9db`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91eda75e1515605bb701b30cd96fd506ebe0615d64292510637b6e734562b185`  
		Last Modified: Wed, 28 Oct 2026 02:42:08 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json
