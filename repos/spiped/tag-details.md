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
$ docker pull spiped@sha256:5a934875d7996d8684ba6e7e3b7126e1f1806fadb35970ba4d6935666b9c32a7
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
$ docker pull spiped@sha256:061a51a5eca5d8ed704b04fec63289baa9be619c173881815dabb3b791c87722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d66c209d2fe5cd96a70de6af9acd235d2e355fd29ad21b25279d6b001953348`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:43:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:43:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:44:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:44:20 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:44:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:44:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b648e19628f8fc4dc3385c8e4b410d7e296a8dbdef51a738acc947fb53625f`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a972d33b1b2c29626270f9ef965afe83cc776b69a4d5c8d0b6bc8991980b4c2d`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa50e740c2642ac1c4587ee69e163c57eb23c41347d9e66260e414094d31458`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 7.0 MB (7047981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f7c7492dff0d349cc92470cabc353563483880582bb2529de396c9570b9962`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729ac6d54564e63f521fd398f8330e057ebe3eabfe55fcdf63696c768443ace2`  
		Last Modified: Tue, 25 Aug 2026 00:44:28 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:422e805c81e55ccc9f60c91596d73274df3e60bff2e84dc774c481e515f9dcf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb975efe5a6744318d4e4c2ccdf7e7fa44d905e035b7b632848dfeab59b98b64`

```dockerfile
```

-	Layers:
	-	`sha256:65280f8a77f1468467f1ecbec0ca46cacd28709ae28b6da0b9826c3ae643a819`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 3.6 MB (3626540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ff90694dc0bdfe501c5ac4ce6898bd0022811769202eb11eee993c4a9c25d99`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:fc846b65c515edc13ae7c1247566a816ce24c1786ae7835b6e208a0486259f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33761088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d79da106d992283b013c35227484e792a778d8b6af85b9ead23846ced9cd534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:46 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:45:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef2d765ef52f1bb8c1147bf4474c0a5935c835374203bafcf9e1202078f700`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54604234d5ba4fb387d4419cf65e2210297309b01af530108caa367cf393a61c`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03456332cf6a8794f0cd81aae7b15ab5822c59291e5d8d12a1587a7a24be2aa2`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 5.8 MB (5789775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468b4de274a5797a05ecef8a7c52ae0238ed3d2f893f309b75b5401028d8f845`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5ae213644f1be58da922a036941c5390bbf9df746398626f41323045b2d0bd`  
		Last Modified: Tue, 25 Aug 2026 00:46:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a479140f8c8ddf439f512cc198081b735acee4ebd7f7ffe164655273bd62f4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09878498c0065d54977c2ff4eccbf981ae178bfbff50d7d74c38b247050351ee`

```dockerfile
```

-	Layers:
	-	`sha256:5621c34cde24f217d6a38813b1e0ca92c33d9850b8dc7e7f64bde20ed10cc715`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 3.6 MB (3619534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fa2fe81da5f36db65bc155ce6b76454ee39891a70f69d4d8929fde128aec254`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7e0c2983991df7326edc348fb40583e140eee1c604ef96050ee548877a4de520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31806621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c519defc7d49e4685877e7d8f1cc6cd87e9144e943eae9d829848e05493ad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:32:00 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:32:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:32:23 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:32:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:32:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fae625d35973fa77801c36b44d76b24caede98067c572c3488bb2e83ebefa7f`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3ae025f8b4f1251b88c25f4031776ac973c2758b94220c0e752a7d42898ac5`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc07724555d494f5cba8ae5400735ed84d121142bf11cc0fbc73f820a8d19ea`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 5.6 MB (5585111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a685f4579f1665a358373c00fa0a489f3821430aa3ddd5edef99c753a0f9ef78`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c59ede0b5a512cbb0200d686e08eaaa74e0d7576f23aba3626793396fe24e43`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:659e063948507be934e1bac9399fe193c9620219fd980cf769a5908888b50142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9993a2c5bf2ac5b886c123c5855ad14b9e2def63c8ec8ec2cba0c45de6202a4`

```dockerfile
```

-	Layers:
	-	`sha256:9bae0f42e7a84a0a92adc08961fba5ecaf8f8c6940997d57eeea66db24cb5766`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 3.6 MB (3618655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03054723f3787909580be3fabe05a8016dd405c0873a4b11fd122c8c1db310ca`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d9074d9bf8f64ae28e6adfd2c0069331c1e2b9a3cf0313d040fa1333cdaedd51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36395830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e508092c8253d499747f2d7bb213e37898965263f8b03e37a94f5bd639377c9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:46:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:42 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebe8e86592bb87ade26e37ab540f5f3a1a6f9c163b62b9bdac868571da05eff`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adad34b03a9ddc673ac0db2a90ae865f0031a14724c28053bb49e8fa82d8f59`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2407cff7fead505b0fdfc09a1ab8e7f9c64b0788be54ae512de52814adb854d`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 6.2 MB (6233876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c85e1ad273b91869667cae3e2b0c040b2740e8133fef5f0e17d689bd09a785`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a773c5e89a8714ee1a0d4aafd11d79ef6213f973f95ddf304a4c334b149ee52d`  
		Last Modified: Tue, 25 Aug 2026 00:46:50 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:30db5fc844a4d4ea086bc015f9730f569096b12bd7ac41edf4f01c68cea3691a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67e8ff3a5f64308858f1a949e031666f85e2aa226215ca11b56ae4f46c8cef6`

```dockerfile
```

-	Layers:
	-	`sha256:affab127a1b6943cf542d99b92abc10d3133f4d3af87eb66ecdfcefb36433cac`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 3.6 MB (3621568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4b9a58495c91816aa65fcb8db80fa5ac2327e24c06f406ec7267e1897e0c9`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:76f42cdb68512aaabf5cb432f56a4789c684c74c099199b8fafa4eef380add75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37749273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6c838c070f1e96fa1d31dd1743cfde5ff224078a551b240b74aa209a0877d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:50:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:50:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:50:47 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:50:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67daa0a5313a3af1445ae7b7544240e82181daee5b553c03f0b8fe9cf0ce8026`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6dfd7e518de259cf4ead27f9945fefd3ac4ab995c8ba19da5eb4fd2d3b4450`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fb7ce57cc925b9f41cb7866ce8094278de7d049aaf0e523e9ad4b6373453d5`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 6.4 MB (6443504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e60a6443c6a3b09066eb75baac001bee7c3911ffd2f489fa8f98cd3d61b9ae6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7292fe4dd446047fa320b541be7b8b03a626b731a818017c0ff32e020460c467`  
		Last Modified: Tue, 25 Aug 2026 00:50:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:7253bf04459a4561c9e556477bbc9cf78dc6d96399d6f23886f9e92c8998e0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22707198810043f1690c8c686671426b8558fa26f7cd738cc2348537681aa86`

```dockerfile
```

-	Layers:
	-	`sha256:5c8304ae15be384dc2d8feca8046501d578db64e508032e58019f695d4ca5dc6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 3.6 MB (3620669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f14d3672fcc8df0d2d5dc48e0af1590ee228cfd992a24a797c088692616a1c88`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:b206381bc76af20b7c9dfffddbc1068ab4f091d382a81b12e7ac49e784e54447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40459722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abbc247a0fa38d866a7f729a289454bb2d0ee350dc51316439f37beb9d48329d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:35:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 03:35:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 03:36:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 03:36:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 03:36:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:36:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3275c4ff1be757631b7b73c34b2acc9cfaa0948419a286868655f5b4b54911`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fda3f85a8682b3a16a4f83cd3b399bb4f852e554d0996c281dfbaa5eba3cbe`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2677326c9855224aadc9e40b2b270ecc2cced380fb49b2e457f4fcbd0bc4c9cb`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 6.8 MB (6841888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ae1d0b255ff276145bb9ea8a5e118e4f9812fc241d9ee681363ead012c7378`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e088c9a05653033bc0cc9b996dbbe7c518b8f251423652f38a87a8553c4c450c`  
		Last Modified: Tue, 25 Aug 2026 03:36:31 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:31be4ce3f8095294096b4b748e09752b44ab79caee3725df8a4c99e2d3e79ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9938a5ccfa52e7b066cc3e35b0b6ce49ff69ca33fd6d22cba1ebfd365287eff8`

```dockerfile
```

-	Layers:
	-	`sha256:b5ac1c8280eadfdd40054ede50113625b42885ee5f62c958e747a0b681d1edff`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 3.6 MB (3622277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03316ba7722a7f55a1dc26a28253e968f63f36e70f933ea8e88696f2fc77efd3`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
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
$ docker pull spiped@sha256:f0b7e8e95b26f0339333cca815770e86f66f7cfe9714e68bbcbbc17cee7bb1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35992616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c3d4b2c94bf2280e444678c6fef4c9765920f7812f4651a449015c90456a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:23:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:23:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:23:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:23:28 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:23:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:23:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbdd1cfdd6371f868d34f7335daf32e60c677efb108f454060bec7c46bf6625`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eec0c24dd8e7c657fb52c55dde5386d76b767a75ae03610ec60ec62eca91bd2`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8601f76b73e5d6c1d7ac6072286a8b327a7181ea86175743a7671e46f031ab72`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 6.1 MB (6122525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69b83c4ef347607c3c899f9bfac404b8dec03961e0746c46603bd438e69f61`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c33fcef38fa10b5f5b15cde401d538c138c2edfef7d19a9973186e8a53150`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:ce5c60e8b3cf1e8164652a004bfc4d02b6709de5785bbae9e5d23250b3579ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785cf4eb2d83cf18ba9ba1a19bba6ea6b8df08a43ade7d7a9d5232c7355821bd`

```dockerfile
```

-	Layers:
	-	`sha256:da5ac46cdb425d010bc6ad062f92c2264a40db35030d112d2eda4e0d8b03ae2a`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 3.6 MB (3618903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b24d286201e8bc64395705d73886731821bde2d8318d3455eff531b92e9eef`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:83bf5099e5bceed9670af4c53f4ee8c6c04d88c3401cb29092f5c0c17225db60
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
$ docker pull spiped@sha256:d251843ba5911d4a1fcd1059324363118865b05815274872d87a6613cbe92c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3684465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08f5bd73b24fad6b48f07e4ac8c5090d9ac60cd5dc678a9f11297a46c95e884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 20:46:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 20:46:19 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 20:48:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 20:48:01 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 20:48:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 20:48:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e47cc9dce8e1fca62bf3a8d5d60223b9597955e145e796bf5111668949e765`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e4480b2a947b869482e7bdfc6bae06cf9bb40d2b790ffa34b5cab365788f9b`  
		Last Modified: Mon, 24 Aug 2026 20:48:21 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58ed91852f50d9aec977663cad694056c79e63faa3ec4ebc47a4900c162a94d`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 99.9 KB (99916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58da2c50abb545a672ebae9c063f99351eb1c3493ef5a7328755ffde25306242`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5f5066d6c7a2efc4bbd6603433cc2818c3bf268e0862e0a70669fec5ce96b`  
		Last Modified: Mon, 24 Aug 2026 20:48:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0d59b3fe02ccd02b1d999adc8a4d8c4995fe6a59d64598148fbb594f4a39e677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fb6babf72fa718228b04cbe9c69cd0c22633efa4f0e7bf9628e28e71d07e38`

```dockerfile
```

-	Layers:
	-	`sha256:6155eb1e42b11a79e9e02438ada81bd9a3b1849e148eb495d416db5e2ea1d72e`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecdd9899b21323897b34d1f33c133264082a2c1dd90f9e3896ec70c8da90c87`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
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
$ docker pull spiped@sha256:5a934875d7996d8684ba6e7e3b7126e1f1806fadb35970ba4d6935666b9c32a7
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
$ docker pull spiped@sha256:061a51a5eca5d8ed704b04fec63289baa9be619c173881815dabb3b791c87722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d66c209d2fe5cd96a70de6af9acd235d2e355fd29ad21b25279d6b001953348`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:43:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:43:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:44:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:44:20 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:44:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:44:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b648e19628f8fc4dc3385c8e4b410d7e296a8dbdef51a738acc947fb53625f`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a972d33b1b2c29626270f9ef965afe83cc776b69a4d5c8d0b6bc8991980b4c2d`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa50e740c2642ac1c4587ee69e163c57eb23c41347d9e66260e414094d31458`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 7.0 MB (7047981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f7c7492dff0d349cc92470cabc353563483880582bb2529de396c9570b9962`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729ac6d54564e63f521fd398f8330e057ebe3eabfe55fcdf63696c768443ace2`  
		Last Modified: Tue, 25 Aug 2026 00:44:28 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:422e805c81e55ccc9f60c91596d73274df3e60bff2e84dc774c481e515f9dcf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb975efe5a6744318d4e4c2ccdf7e7fa44d905e035b7b632848dfeab59b98b64`

```dockerfile
```

-	Layers:
	-	`sha256:65280f8a77f1468467f1ecbec0ca46cacd28709ae28b6da0b9826c3ae643a819`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 3.6 MB (3626540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ff90694dc0bdfe501c5ac4ce6898bd0022811769202eb11eee993c4a9c25d99`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:fc846b65c515edc13ae7c1247566a816ce24c1786ae7835b6e208a0486259f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33761088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d79da106d992283b013c35227484e792a778d8b6af85b9ead23846ced9cd534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:46 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:45:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef2d765ef52f1bb8c1147bf4474c0a5935c835374203bafcf9e1202078f700`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54604234d5ba4fb387d4419cf65e2210297309b01af530108caa367cf393a61c`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03456332cf6a8794f0cd81aae7b15ab5822c59291e5d8d12a1587a7a24be2aa2`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 5.8 MB (5789775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468b4de274a5797a05ecef8a7c52ae0238ed3d2f893f309b75b5401028d8f845`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5ae213644f1be58da922a036941c5390bbf9df746398626f41323045b2d0bd`  
		Last Modified: Tue, 25 Aug 2026 00:46:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a479140f8c8ddf439f512cc198081b735acee4ebd7f7ffe164655273bd62f4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09878498c0065d54977c2ff4eccbf981ae178bfbff50d7d74c38b247050351ee`

```dockerfile
```

-	Layers:
	-	`sha256:5621c34cde24f217d6a38813b1e0ca92c33d9850b8dc7e7f64bde20ed10cc715`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 3.6 MB (3619534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fa2fe81da5f36db65bc155ce6b76454ee39891a70f69d4d8929fde128aec254`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7e0c2983991df7326edc348fb40583e140eee1c604ef96050ee548877a4de520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31806621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c519defc7d49e4685877e7d8f1cc6cd87e9144e943eae9d829848e05493ad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:32:00 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:32:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:32:23 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:32:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:32:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fae625d35973fa77801c36b44d76b24caede98067c572c3488bb2e83ebefa7f`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3ae025f8b4f1251b88c25f4031776ac973c2758b94220c0e752a7d42898ac5`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc07724555d494f5cba8ae5400735ed84d121142bf11cc0fbc73f820a8d19ea`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 5.6 MB (5585111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a685f4579f1665a358373c00fa0a489f3821430aa3ddd5edef99c753a0f9ef78`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c59ede0b5a512cbb0200d686e08eaaa74e0d7576f23aba3626793396fe24e43`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:659e063948507be934e1bac9399fe193c9620219fd980cf769a5908888b50142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9993a2c5bf2ac5b886c123c5855ad14b9e2def63c8ec8ec2cba0c45de6202a4`

```dockerfile
```

-	Layers:
	-	`sha256:9bae0f42e7a84a0a92adc08961fba5ecaf8f8c6940997d57eeea66db24cb5766`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 3.6 MB (3618655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03054723f3787909580be3fabe05a8016dd405c0873a4b11fd122c8c1db310ca`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d9074d9bf8f64ae28e6adfd2c0069331c1e2b9a3cf0313d040fa1333cdaedd51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36395830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e508092c8253d499747f2d7bb213e37898965263f8b03e37a94f5bd639377c9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:46:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:42 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebe8e86592bb87ade26e37ab540f5f3a1a6f9c163b62b9bdac868571da05eff`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adad34b03a9ddc673ac0db2a90ae865f0031a14724c28053bb49e8fa82d8f59`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2407cff7fead505b0fdfc09a1ab8e7f9c64b0788be54ae512de52814adb854d`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 6.2 MB (6233876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c85e1ad273b91869667cae3e2b0c040b2740e8133fef5f0e17d689bd09a785`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a773c5e89a8714ee1a0d4aafd11d79ef6213f973f95ddf304a4c334b149ee52d`  
		Last Modified: Tue, 25 Aug 2026 00:46:50 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:30db5fc844a4d4ea086bc015f9730f569096b12bd7ac41edf4f01c68cea3691a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67e8ff3a5f64308858f1a949e031666f85e2aa226215ca11b56ae4f46c8cef6`

```dockerfile
```

-	Layers:
	-	`sha256:affab127a1b6943cf542d99b92abc10d3133f4d3af87eb66ecdfcefb36433cac`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 3.6 MB (3621568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4b9a58495c91816aa65fcb8db80fa5ac2327e24c06f406ec7267e1897e0c9`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:76f42cdb68512aaabf5cb432f56a4789c684c74c099199b8fafa4eef380add75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37749273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6c838c070f1e96fa1d31dd1743cfde5ff224078a551b240b74aa209a0877d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:50:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:50:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:50:47 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:50:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67daa0a5313a3af1445ae7b7544240e82181daee5b553c03f0b8fe9cf0ce8026`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6dfd7e518de259cf4ead27f9945fefd3ac4ab995c8ba19da5eb4fd2d3b4450`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fb7ce57cc925b9f41cb7866ce8094278de7d049aaf0e523e9ad4b6373453d5`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 6.4 MB (6443504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e60a6443c6a3b09066eb75baac001bee7c3911ffd2f489fa8f98cd3d61b9ae6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7292fe4dd446047fa320b541be7b8b03a626b731a818017c0ff32e020460c467`  
		Last Modified: Tue, 25 Aug 2026 00:50:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:7253bf04459a4561c9e556477bbc9cf78dc6d96399d6f23886f9e92c8998e0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22707198810043f1690c8c686671426b8558fa26f7cd738cc2348537681aa86`

```dockerfile
```

-	Layers:
	-	`sha256:5c8304ae15be384dc2d8feca8046501d578db64e508032e58019f695d4ca5dc6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 3.6 MB (3620669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f14d3672fcc8df0d2d5dc48e0af1590ee228cfd992a24a797c088692616a1c88`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:b206381bc76af20b7c9dfffddbc1068ab4f091d382a81b12e7ac49e784e54447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40459722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abbc247a0fa38d866a7f729a289454bb2d0ee350dc51316439f37beb9d48329d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:35:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 03:35:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 03:36:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 03:36:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 03:36:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:36:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3275c4ff1be757631b7b73c34b2acc9cfaa0948419a286868655f5b4b54911`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fda3f85a8682b3a16a4f83cd3b399bb4f852e554d0996c281dfbaa5eba3cbe`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2677326c9855224aadc9e40b2b270ecc2cced380fb49b2e457f4fcbd0bc4c9cb`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 6.8 MB (6841888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ae1d0b255ff276145bb9ea8a5e118e4f9812fc241d9ee681363ead012c7378`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e088c9a05653033bc0cc9b996dbbe7c518b8f251423652f38a87a8553c4c450c`  
		Last Modified: Tue, 25 Aug 2026 03:36:31 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:31be4ce3f8095294096b4b748e09752b44ab79caee3725df8a4c99e2d3e79ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9938a5ccfa52e7b066cc3e35b0b6ce49ff69ca33fd6d22cba1ebfd365287eff8`

```dockerfile
```

-	Layers:
	-	`sha256:b5ac1c8280eadfdd40054ede50113625b42885ee5f62c958e747a0b681d1edff`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 3.6 MB (3622277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03316ba7722a7f55a1dc26a28253e968f63f36e70f933ea8e88696f2fc77efd3`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
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
$ docker pull spiped@sha256:f0b7e8e95b26f0339333cca815770e86f66f7cfe9714e68bbcbbc17cee7bb1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35992616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c3d4b2c94bf2280e444678c6fef4c9765920f7812f4651a449015c90456a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:23:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:23:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:23:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:23:28 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:23:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:23:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbdd1cfdd6371f868d34f7335daf32e60c677efb108f454060bec7c46bf6625`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eec0c24dd8e7c657fb52c55dde5386d76b767a75ae03610ec60ec62eca91bd2`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8601f76b73e5d6c1d7ac6072286a8b327a7181ea86175743a7671e46f031ab72`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 6.1 MB (6122525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69b83c4ef347607c3c899f9bfac404b8dec03961e0746c46603bd438e69f61`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c33fcef38fa10b5f5b15cde401d538c138c2edfef7d19a9973186e8a53150`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:ce5c60e8b3cf1e8164652a004bfc4d02b6709de5785bbae9e5d23250b3579ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785cf4eb2d83cf18ba9ba1a19bba6ea6b8df08a43ade7d7a9d5232c7355821bd`

```dockerfile
```

-	Layers:
	-	`sha256:da5ac46cdb425d010bc6ad062f92c2264a40db35030d112d2eda4e0d8b03ae2a`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 3.6 MB (3618903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b24d286201e8bc64395705d73886731821bde2d8318d3455eff531b92e9eef`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:83bf5099e5bceed9670af4c53f4ee8c6c04d88c3401cb29092f5c0c17225db60
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
$ docker pull spiped@sha256:d251843ba5911d4a1fcd1059324363118865b05815274872d87a6613cbe92c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3684465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08f5bd73b24fad6b48f07e4ac8c5090d9ac60cd5dc678a9f11297a46c95e884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 20:46:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 20:46:19 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 20:48:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 20:48:01 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 20:48:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 20:48:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e47cc9dce8e1fca62bf3a8d5d60223b9597955e145e796bf5111668949e765`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e4480b2a947b869482e7bdfc6bae06cf9bb40d2b790ffa34b5cab365788f9b`  
		Last Modified: Mon, 24 Aug 2026 20:48:21 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58ed91852f50d9aec977663cad694056c79e63faa3ec4ebc47a4900c162a94d`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 99.9 KB (99916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58da2c50abb545a672ebae9c063f99351eb1c3493ef5a7328755ffde25306242`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5f5066d6c7a2efc4bbd6603433cc2818c3bf268e0862e0a70669fec5ce96b`  
		Last Modified: Mon, 24 Aug 2026 20:48:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0d59b3fe02ccd02b1d999adc8a4d8c4995fe6a59d64598148fbb594f4a39e677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fb6babf72fa718228b04cbe9c69cd0c22633efa4f0e7bf9628e28e71d07e38`

```dockerfile
```

-	Layers:
	-	`sha256:6155eb1e42b11a79e9e02438ada81bd9a3b1849e148eb495d416db5e2ea1d72e`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecdd9899b21323897b34d1f33c133264082a2c1dd90f9e3896ec70c8da90c87`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
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
$ docker pull spiped@sha256:5a934875d7996d8684ba6e7e3b7126e1f1806fadb35970ba4d6935666b9c32a7
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
$ docker pull spiped@sha256:061a51a5eca5d8ed704b04fec63289baa9be619c173881815dabb3b791c87722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d66c209d2fe5cd96a70de6af9acd235d2e355fd29ad21b25279d6b001953348`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:43:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:43:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:44:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:44:20 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:44:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:44:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b648e19628f8fc4dc3385c8e4b410d7e296a8dbdef51a738acc947fb53625f`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a972d33b1b2c29626270f9ef965afe83cc776b69a4d5c8d0b6bc8991980b4c2d`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa50e740c2642ac1c4587ee69e163c57eb23c41347d9e66260e414094d31458`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 7.0 MB (7047981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f7c7492dff0d349cc92470cabc353563483880582bb2529de396c9570b9962`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729ac6d54564e63f521fd398f8330e057ebe3eabfe55fcdf63696c768443ace2`  
		Last Modified: Tue, 25 Aug 2026 00:44:28 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:422e805c81e55ccc9f60c91596d73274df3e60bff2e84dc774c481e515f9dcf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb975efe5a6744318d4e4c2ccdf7e7fa44d905e035b7b632848dfeab59b98b64`

```dockerfile
```

-	Layers:
	-	`sha256:65280f8a77f1468467f1ecbec0ca46cacd28709ae28b6da0b9826c3ae643a819`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 3.6 MB (3626540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ff90694dc0bdfe501c5ac4ce6898bd0022811769202eb11eee993c4a9c25d99`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:fc846b65c515edc13ae7c1247566a816ce24c1786ae7835b6e208a0486259f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33761088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d79da106d992283b013c35227484e792a778d8b6af85b9ead23846ced9cd534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:46 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:45:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef2d765ef52f1bb8c1147bf4474c0a5935c835374203bafcf9e1202078f700`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54604234d5ba4fb387d4419cf65e2210297309b01af530108caa367cf393a61c`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03456332cf6a8794f0cd81aae7b15ab5822c59291e5d8d12a1587a7a24be2aa2`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 5.8 MB (5789775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468b4de274a5797a05ecef8a7c52ae0238ed3d2f893f309b75b5401028d8f845`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5ae213644f1be58da922a036941c5390bbf9df746398626f41323045b2d0bd`  
		Last Modified: Tue, 25 Aug 2026 00:46:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a479140f8c8ddf439f512cc198081b735acee4ebd7f7ffe164655273bd62f4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09878498c0065d54977c2ff4eccbf981ae178bfbff50d7d74c38b247050351ee`

```dockerfile
```

-	Layers:
	-	`sha256:5621c34cde24f217d6a38813b1e0ca92c33d9850b8dc7e7f64bde20ed10cc715`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 3.6 MB (3619534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fa2fe81da5f36db65bc155ce6b76454ee39891a70f69d4d8929fde128aec254`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7e0c2983991df7326edc348fb40583e140eee1c604ef96050ee548877a4de520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31806621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c519defc7d49e4685877e7d8f1cc6cd87e9144e943eae9d829848e05493ad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:32:00 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:32:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:32:23 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:32:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:32:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fae625d35973fa77801c36b44d76b24caede98067c572c3488bb2e83ebefa7f`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3ae025f8b4f1251b88c25f4031776ac973c2758b94220c0e752a7d42898ac5`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc07724555d494f5cba8ae5400735ed84d121142bf11cc0fbc73f820a8d19ea`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 5.6 MB (5585111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a685f4579f1665a358373c00fa0a489f3821430aa3ddd5edef99c753a0f9ef78`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c59ede0b5a512cbb0200d686e08eaaa74e0d7576f23aba3626793396fe24e43`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:659e063948507be934e1bac9399fe193c9620219fd980cf769a5908888b50142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9993a2c5bf2ac5b886c123c5855ad14b9e2def63c8ec8ec2cba0c45de6202a4`

```dockerfile
```

-	Layers:
	-	`sha256:9bae0f42e7a84a0a92adc08961fba5ecaf8f8c6940997d57eeea66db24cb5766`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 3.6 MB (3618655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03054723f3787909580be3fabe05a8016dd405c0873a4b11fd122c8c1db310ca`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d9074d9bf8f64ae28e6adfd2c0069331c1e2b9a3cf0313d040fa1333cdaedd51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36395830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e508092c8253d499747f2d7bb213e37898965263f8b03e37a94f5bd639377c9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:46:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:42 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebe8e86592bb87ade26e37ab540f5f3a1a6f9c163b62b9bdac868571da05eff`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adad34b03a9ddc673ac0db2a90ae865f0031a14724c28053bb49e8fa82d8f59`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2407cff7fead505b0fdfc09a1ab8e7f9c64b0788be54ae512de52814adb854d`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 6.2 MB (6233876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c85e1ad273b91869667cae3e2b0c040b2740e8133fef5f0e17d689bd09a785`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a773c5e89a8714ee1a0d4aafd11d79ef6213f973f95ddf304a4c334b149ee52d`  
		Last Modified: Tue, 25 Aug 2026 00:46:50 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:30db5fc844a4d4ea086bc015f9730f569096b12bd7ac41edf4f01c68cea3691a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67e8ff3a5f64308858f1a949e031666f85e2aa226215ca11b56ae4f46c8cef6`

```dockerfile
```

-	Layers:
	-	`sha256:affab127a1b6943cf542d99b92abc10d3133f4d3af87eb66ecdfcefb36433cac`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 3.6 MB (3621568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4b9a58495c91816aa65fcb8db80fa5ac2327e24c06f406ec7267e1897e0c9`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:76f42cdb68512aaabf5cb432f56a4789c684c74c099199b8fafa4eef380add75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37749273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6c838c070f1e96fa1d31dd1743cfde5ff224078a551b240b74aa209a0877d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:50:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:50:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:50:47 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:50:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67daa0a5313a3af1445ae7b7544240e82181daee5b553c03f0b8fe9cf0ce8026`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6dfd7e518de259cf4ead27f9945fefd3ac4ab995c8ba19da5eb4fd2d3b4450`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fb7ce57cc925b9f41cb7866ce8094278de7d049aaf0e523e9ad4b6373453d5`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 6.4 MB (6443504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e60a6443c6a3b09066eb75baac001bee7c3911ffd2f489fa8f98cd3d61b9ae6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7292fe4dd446047fa320b541be7b8b03a626b731a818017c0ff32e020460c467`  
		Last Modified: Tue, 25 Aug 2026 00:50:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:7253bf04459a4561c9e556477bbc9cf78dc6d96399d6f23886f9e92c8998e0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22707198810043f1690c8c686671426b8558fa26f7cd738cc2348537681aa86`

```dockerfile
```

-	Layers:
	-	`sha256:5c8304ae15be384dc2d8feca8046501d578db64e508032e58019f695d4ca5dc6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 3.6 MB (3620669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f14d3672fcc8df0d2d5dc48e0af1590ee228cfd992a24a797c088692616a1c88`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:b206381bc76af20b7c9dfffddbc1068ab4f091d382a81b12e7ac49e784e54447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40459722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abbc247a0fa38d866a7f729a289454bb2d0ee350dc51316439f37beb9d48329d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:35:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 03:35:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 03:36:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 03:36:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 03:36:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:36:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3275c4ff1be757631b7b73c34b2acc9cfaa0948419a286868655f5b4b54911`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fda3f85a8682b3a16a4f83cd3b399bb4f852e554d0996c281dfbaa5eba3cbe`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2677326c9855224aadc9e40b2b270ecc2cced380fb49b2e457f4fcbd0bc4c9cb`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 6.8 MB (6841888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ae1d0b255ff276145bb9ea8a5e118e4f9812fc241d9ee681363ead012c7378`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e088c9a05653033bc0cc9b996dbbe7c518b8f251423652f38a87a8553c4c450c`  
		Last Modified: Tue, 25 Aug 2026 03:36:31 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:31be4ce3f8095294096b4b748e09752b44ab79caee3725df8a4c99e2d3e79ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9938a5ccfa52e7b066cc3e35b0b6ce49ff69ca33fd6d22cba1ebfd365287eff8`

```dockerfile
```

-	Layers:
	-	`sha256:b5ac1c8280eadfdd40054ede50113625b42885ee5f62c958e747a0b681d1edff`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 3.6 MB (3622277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03316ba7722a7f55a1dc26a28253e968f63f36e70f933ea8e88696f2fc77efd3`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
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
$ docker pull spiped@sha256:f0b7e8e95b26f0339333cca815770e86f66f7cfe9714e68bbcbbc17cee7bb1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35992616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c3d4b2c94bf2280e444678c6fef4c9765920f7812f4651a449015c90456a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:23:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:23:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:23:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:23:28 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:23:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:23:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbdd1cfdd6371f868d34f7335daf32e60c677efb108f454060bec7c46bf6625`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eec0c24dd8e7c657fb52c55dde5386d76b767a75ae03610ec60ec62eca91bd2`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8601f76b73e5d6c1d7ac6072286a8b327a7181ea86175743a7671e46f031ab72`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 6.1 MB (6122525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69b83c4ef347607c3c899f9bfac404b8dec03961e0746c46603bd438e69f61`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c33fcef38fa10b5f5b15cde401d538c138c2edfef7d19a9973186e8a53150`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:ce5c60e8b3cf1e8164652a004bfc4d02b6709de5785bbae9e5d23250b3579ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785cf4eb2d83cf18ba9ba1a19bba6ea6b8df08a43ade7d7a9d5232c7355821bd`

```dockerfile
```

-	Layers:
	-	`sha256:da5ac46cdb425d010bc6ad062f92c2264a40db35030d112d2eda4e0d8b03ae2a`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 3.6 MB (3618903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b24d286201e8bc64395705d73886731821bde2d8318d3455eff531b92e9eef`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:83bf5099e5bceed9670af4c53f4ee8c6c04d88c3401cb29092f5c0c17225db60
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
$ docker pull spiped@sha256:d251843ba5911d4a1fcd1059324363118865b05815274872d87a6613cbe92c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3684465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08f5bd73b24fad6b48f07e4ac8c5090d9ac60cd5dc678a9f11297a46c95e884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 20:46:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 20:46:19 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 20:48:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 20:48:01 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 20:48:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 20:48:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e47cc9dce8e1fca62bf3a8d5d60223b9597955e145e796bf5111668949e765`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e4480b2a947b869482e7bdfc6bae06cf9bb40d2b790ffa34b5cab365788f9b`  
		Last Modified: Mon, 24 Aug 2026 20:48:21 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58ed91852f50d9aec977663cad694056c79e63faa3ec4ebc47a4900c162a94d`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 99.9 KB (99916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58da2c50abb545a672ebae9c063f99351eb1c3493ef5a7328755ffde25306242`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5f5066d6c7a2efc4bbd6603433cc2818c3bf268e0862e0a70669fec5ce96b`  
		Last Modified: Mon, 24 Aug 2026 20:48:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0d59b3fe02ccd02b1d999adc8a4d8c4995fe6a59d64598148fbb594f4a39e677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fb6babf72fa718228b04cbe9c69cd0c22633efa4f0e7bf9628e28e71d07e38`

```dockerfile
```

-	Layers:
	-	`sha256:6155eb1e42b11a79e9e02438ada81bd9a3b1849e148eb495d416db5e2ea1d72e`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecdd9899b21323897b34d1f33c133264082a2c1dd90f9e3896ec70c8da90c87`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
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
$ docker pull spiped@sha256:83bf5099e5bceed9670af4c53f4ee8c6c04d88c3401cb29092f5c0c17225db60
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
$ docker pull spiped@sha256:d251843ba5911d4a1fcd1059324363118865b05815274872d87a6613cbe92c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3684465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08f5bd73b24fad6b48f07e4ac8c5090d9ac60cd5dc678a9f11297a46c95e884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 20:46:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 24 Aug 2026 20:46:19 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 24 Aug 2026 20:48:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
VOLUME [/spiped]
# Mon, 24 Aug 2026 20:48:01 GMT
WORKDIR /spiped
# Mon, 24 Aug 2026 20:48:01 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 20:48:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 20:48:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e47cc9dce8e1fca62bf3a8d5d60223b9597955e145e796bf5111668949e765`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e4480b2a947b869482e7bdfc6bae06cf9bb40d2b790ffa34b5cab365788f9b`  
		Last Modified: Mon, 24 Aug 2026 20:48:21 GMT  
		Size: 8.8 KB (8803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58ed91852f50d9aec977663cad694056c79e63faa3ec4ebc47a4900c162a94d`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 99.9 KB (99916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58da2c50abb545a672ebae9c063f99351eb1c3493ef5a7328755ffde25306242`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5f5066d6c7a2efc4bbd6603433cc2818c3bf268e0862e0a70669fec5ce96b`  
		Last Modified: Mon, 24 Aug 2026 20:48:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:0d59b3fe02ccd02b1d999adc8a4d8c4995fe6a59d64598148fbb594f4a39e677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fb6babf72fa718228b04cbe9c69cd0c22633efa4f0e7bf9628e28e71d07e38`

```dockerfile
```

-	Layers:
	-	`sha256:6155eb1e42b11a79e9e02438ada81bd9a3b1849e148eb495d416db5e2ea1d72e`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecdd9899b21323897b34d1f33c133264082a2c1dd90f9e3896ec70c8da90c87`  
		Last Modified: Mon, 24 Aug 2026 20:48:22 GMT  
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
$ docker pull spiped@sha256:5a934875d7996d8684ba6e7e3b7126e1f1806fadb35970ba4d6935666b9c32a7
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
$ docker pull spiped@sha256:061a51a5eca5d8ed704b04fec63289baa9be619c173881815dabb3b791c87722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d66c209d2fe5cd96a70de6af9acd235d2e355fd29ad21b25279d6b001953348`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:43:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:43:58 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:44:20 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:44:20 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:44:20 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:44:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:44:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b648e19628f8fc4dc3385c8e4b410d7e296a8dbdef51a738acc947fb53625f`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a972d33b1b2c29626270f9ef965afe83cc776b69a4d5c8d0b6bc8991980b4c2d`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa50e740c2642ac1c4587ee69e163c57eb23c41347d9e66260e414094d31458`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 7.0 MB (7047981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f7c7492dff0d349cc92470cabc353563483880582bb2529de396c9570b9962`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729ac6d54564e63f521fd398f8330e057ebe3eabfe55fcdf63696c768443ace2`  
		Last Modified: Tue, 25 Aug 2026 00:44:28 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:422e805c81e55ccc9f60c91596d73274df3e60bff2e84dc774c481e515f9dcf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb975efe5a6744318d4e4c2ccdf7e7fa44d905e035b7b632848dfeab59b98b64`

```dockerfile
```

-	Layers:
	-	`sha256:65280f8a77f1468467f1ecbec0ca46cacd28709ae28b6da0b9826c3ae643a819`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 3.6 MB (3626540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ff90694dc0bdfe501c5ac4ce6898bd0022811769202eb11eee993c4a9c25d99`  
		Last Modified: Tue, 25 Aug 2026 00:44:27 GMT  
		Size: 15.0 KB (14981 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:fc846b65c515edc13ae7c1247566a816ce24c1786ae7835b6e208a0486259f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33761088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d79da106d992283b013c35227484e792a778d8b6af85b9ead23846ced9cd534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:46 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:45:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef2d765ef52f1bb8c1147bf4474c0a5935c835374203bafcf9e1202078f700`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54604234d5ba4fb387d4419cf65e2210297309b01af530108caa367cf393a61c`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03456332cf6a8794f0cd81aae7b15ab5822c59291e5d8d12a1587a7a24be2aa2`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 5.8 MB (5789775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468b4de274a5797a05ecef8a7c52ae0238ed3d2f893f309b75b5401028d8f845`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5ae213644f1be58da922a036941c5390bbf9df746398626f41323045b2d0bd`  
		Last Modified: Tue, 25 Aug 2026 00:46:25 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a479140f8c8ddf439f512cc198081b735acee4ebd7f7ffe164655273bd62f4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09878498c0065d54977c2ff4eccbf981ae178bfbff50d7d74c38b247050351ee`

```dockerfile
```

-	Layers:
	-	`sha256:5621c34cde24f217d6a38813b1e0ca92c33d9850b8dc7e7f64bde20ed10cc715`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 3.6 MB (3619534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fa2fe81da5f36db65bc155ce6b76454ee39891a70f69d4d8929fde128aec254`  
		Last Modified: Tue, 25 Aug 2026 00:46:24 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7e0c2983991df7326edc348fb40583e140eee1c604ef96050ee548877a4de520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31806621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c519defc7d49e4685877e7d8f1cc6cd87e9144e943eae9d829848e05493ad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:32:00 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:32:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:32:23 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:32:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:32:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fae625d35973fa77801c36b44d76b24caede98067c572c3488bb2e83ebefa7f`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3ae025f8b4f1251b88c25f4031776ac973c2758b94220c0e752a7d42898ac5`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc07724555d494f5cba8ae5400735ed84d121142bf11cc0fbc73f820a8d19ea`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 5.6 MB (5585111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a685f4579f1665a358373c00fa0a489f3821430aa3ddd5edef99c753a0f9ef78`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c59ede0b5a512cbb0200d686e08eaaa74e0d7576f23aba3626793396fe24e43`  
		Last Modified: Tue, 25 Aug 2026 01:32:31 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:659e063948507be934e1bac9399fe193c9620219fd980cf769a5908888b50142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9993a2c5bf2ac5b886c123c5855ad14b9e2def63c8ec8ec2cba0c45de6202a4`

```dockerfile
```

-	Layers:
	-	`sha256:9bae0f42e7a84a0a92adc08961fba5ecaf8f8c6940997d57eeea66db24cb5766`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 3.6 MB (3618655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03054723f3787909580be3fabe05a8016dd405c0873a4b11fd122c8c1db310ca`  
		Last Modified: Tue, 25 Aug 2026 01:32:30 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d9074d9bf8f64ae28e6adfd2c0069331c1e2b9a3cf0313d040fa1333cdaedd51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36395830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e508092c8253d499747f2d7bb213e37898965263f8b03e37a94f5bd639377c9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:46:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:46:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:46:42 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:46:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:46:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebe8e86592bb87ade26e37ab540f5f3a1a6f9c163b62b9bdac868571da05eff`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adad34b03a9ddc673ac0db2a90ae865f0031a14724c28053bb49e8fa82d8f59`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2407cff7fead505b0fdfc09a1ab8e7f9c64b0788be54ae512de52814adb854d`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 6.2 MB (6233876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c85e1ad273b91869667cae3e2b0c040b2740e8133fef5f0e17d689bd09a785`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a773c5e89a8714ee1a0d4aafd11d79ef6213f973f95ddf304a4c334b149ee52d`  
		Last Modified: Tue, 25 Aug 2026 00:46:50 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:30db5fc844a4d4ea086bc015f9730f569096b12bd7ac41edf4f01c68cea3691a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67e8ff3a5f64308858f1a949e031666f85e2aa226215ca11b56ae4f46c8cef6`

```dockerfile
```

-	Layers:
	-	`sha256:affab127a1b6943cf542d99b92abc10d3133f4d3af87eb66ecdfcefb36433cac`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 3.6 MB (3621568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4b9a58495c91816aa65fcb8db80fa5ac2327e24c06f406ec7267e1897e0c9`  
		Last Modified: Tue, 25 Aug 2026 00:46:49 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:76f42cdb68512aaabf5cb432f56a4789c684c74c099199b8fafa4eef380add75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37749273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6c838c070f1e96fa1d31dd1743cfde5ff224078a551b240b74aa209a0877d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:17 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 00:50:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 00:50:47 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 00:50:47 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 00:50:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67daa0a5313a3af1445ae7b7544240e82181daee5b553c03f0b8fe9cf0ce8026`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6dfd7e518de259cf4ead27f9945fefd3ac4ab995c8ba19da5eb4fd2d3b4450`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fb7ce57cc925b9f41cb7866ce8094278de7d049aaf0e523e9ad4b6373453d5`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 6.4 MB (6443504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e60a6443c6a3b09066eb75baac001bee7c3911ffd2f489fa8f98cd3d61b9ae6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7292fe4dd446047fa320b541be7b8b03a626b731a818017c0ff32e020460c467`  
		Last Modified: Tue, 25 Aug 2026 00:50:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:7253bf04459a4561c9e556477bbc9cf78dc6d96399d6f23886f9e92c8998e0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22707198810043f1690c8c686671426b8558fa26f7cd738cc2348537681aa86`

```dockerfile
```

-	Layers:
	-	`sha256:5c8304ae15be384dc2d8feca8046501d578db64e508032e58019f695d4ca5dc6`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 3.6 MB (3620669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f14d3672fcc8df0d2d5dc48e0af1590ee228cfd992a24a797c088692616a1c88`  
		Last Modified: Tue, 25 Aug 2026 00:50:54 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:b206381bc76af20b7c9dfffddbc1068ab4f091d382a81b12e7ac49e784e54447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40459722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abbc247a0fa38d866a7f729a289454bb2d0ee350dc51316439f37beb9d48329d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:35:14 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 03:35:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 03:36:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 03:36:16 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 03:36:17 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 03:36:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:36:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3275c4ff1be757631b7b73c34b2acc9cfaa0948419a286868655f5b4b54911`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fda3f85a8682b3a16a4f83cd3b399bb4f852e554d0996c281dfbaa5eba3cbe`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2677326c9855224aadc9e40b2b270ecc2cced380fb49b2e457f4fcbd0bc4c9cb`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 6.8 MB (6841888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ae1d0b255ff276145bb9ea8a5e118e4f9812fc241d9ee681363ead012c7378`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e088c9a05653033bc0cc9b996dbbe7c518b8f251423652f38a87a8553c4c450c`  
		Last Modified: Tue, 25 Aug 2026 03:36:31 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:31be4ce3f8095294096b4b748e09752b44ab79caee3725df8a4c99e2d3e79ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9938a5ccfa52e7b066cc3e35b0b6ce49ff69ca33fd6d22cba1ebfd365287eff8`

```dockerfile
```

-	Layers:
	-	`sha256:b5ac1c8280eadfdd40054ede50113625b42885ee5f62c958e747a0b681d1edff`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
		Size: 3.6 MB (3622277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03316ba7722a7f55a1dc26a28253e968f63f36e70f933ea8e88696f2fc77efd3`  
		Last Modified: Tue, 25 Aug 2026 03:36:30 GMT  
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
$ docker pull spiped@sha256:f0b7e8e95b26f0339333cca815770e86f66f7cfe9714e68bbcbbc17cee7bb1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35992616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c3d4b2c94bf2280e444678c6fef4c9765920f7812f4651a449015c90456a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:23:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 25 Aug 2026 01:23:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 25 Aug 2026 01:23:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
VOLUME [/spiped]
# Tue, 25 Aug 2026 01:23:28 GMT
WORKDIR /spiped
# Tue, 25 Aug 2026 01:23:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:23:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbdd1cfdd6371f868d34f7335daf32e60c677efb108f454060bec7c46bf6625`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eec0c24dd8e7c657fb52c55dde5386d76b767a75ae03610ec60ec62eca91bd2`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8601f76b73e5d6c1d7ac6072286a8b327a7181ea86175743a7671e46f031ab72`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 6.1 MB (6122525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69b83c4ef347607c3c899f9bfac404b8dec03961e0746c46603bd438e69f61`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c33fcef38fa10b5f5b15cde401d538c138c2edfef7d19a9973186e8a53150`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:ce5c60e8b3cf1e8164652a004bfc4d02b6709de5785bbae9e5d23250b3579ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785cf4eb2d83cf18ba9ba1a19bba6ea6b8df08a43ade7d7a9d5232c7355821bd`

```dockerfile
```

-	Layers:
	-	`sha256:da5ac46cdb425d010bc6ad062f92c2264a40db35030d112d2eda4e0d8b03ae2a`  
		Last Modified: Tue, 25 Aug 2026 01:23:40 GMT  
		Size: 3.6 MB (3618903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b24d286201e8bc64395705d73886731821bde2d8318d3455eff531b92e9eef`  
		Last Modified: Tue, 25 Aug 2026 01:23:39 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
