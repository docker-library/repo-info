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
$ docker pull spiped@sha256:50b5580e005523b97c76253b3644e720174c534c576d25a7bdfe499e1f580b84
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
$ docker pull spiped@sha256:50b5580e005523b97c76253b3644e720174c534c576d25a7bdfe499e1f580b84
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
$ docker pull spiped@sha256:50b5580e005523b97c76253b3644e720174c534c576d25a7bdfe499e1f580b84
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
$ docker pull spiped@sha256:50b5580e005523b97c76253b3644e720174c534c576d25a7bdfe499e1f580b84
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
