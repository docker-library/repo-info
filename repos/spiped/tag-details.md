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
$ docker pull spiped@sha256:e411103203f38aa5318df64e85d19d3c6fc06f9846e9f6253da553702f77b0bb
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:baabe7d190c1e5738dd084f8118cd24e3a219cbc027a22091f7d82991b48964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254d0dcbff0d06c1025fad7627d9c597b6aa324b91c516eda3884e1a31ab8cd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:23:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:24:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:24:12 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:24:12 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:24:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442162a06a7685f7b863f71eb570485c64f68376985e8270dcf53e71defa9e7b`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15dc4a19deb7be79b50ab832299282cac88046bd0d63e9615dd2e29cb0917488`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 834.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f860c05cb25aea3d2fead08ce64144bb538a290c5abb12702f32cf460f0837c9`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 5.8 MB (5789592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061bfdb5c244a8359e67ae1e48ad69f6d830025fcc9f8865d8b53da020a5b0e6`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4099a44ea35a4fded23095684a89943f18680d2217c8c80732946ce6c7b9355e`  
		Last Modified: Tue, 14 Jul 2026 02:24:20 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:122f1b99b1750f3dd325d33b9a5db2057bbf0c02cf26c160b8e0342c89442919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec79a91234b577ff2e1d1cc4a032327da6a5aea4e5dde2c0169f4ad5db91e40`

```dockerfile
```

-	Layers:
	-	`sha256:f59516ef5184b3cee484857b07d5789ec5b1d0800fc1f61b5bd470245312fb53`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 3.6 MB (3619332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f16f9d1f3c41985b9990e1fd8813eef31f9992e3e1bdf9f3264949194db3241`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d057b3a065724b035d57564a33e8fefc1cc2fb35006d5261cb4b4dd89ea4b079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c838135373992d006cbc2c7a3c2a7a9f4f8643f657ff817c8a4d48afeb4a59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:26:39 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:26:43 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:27:06 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:27:06 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:27:06 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:27:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becff6168375cac113b24a896ee75a9e4803e2a1a0ed1eba1c12acea05aa8fe4`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053167510d2f087f9fc81a9f78e8272e3c4f6cdc639aed09dd4f305787ff0b34`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3bceac3c1aca931ce245ee629d99fafa4154c67490415fbe4ea5b24876b6c1`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 5.6 MB (5584733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254cec89556f9393005f68d71852bed5c6b754f349f23dbc9d8a114bbafd7ec5`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea4f838cd405612707525db415756ebe39d4bad661cb95f4fc3b4eddd4d7cfc`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:0d85de526b1ae77041adf406787e5a5158622a27adfbf12727fffe27a0aef832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0b6e57672d6508a4290a589e7d0f6a9b9c516bf3acbb8a4149a8d7bf67880f`

```dockerfile
```

-	Layers:
	-	`sha256:16b882fb0c93c9b3aed636e12efd568064d9741ff1ac7881aee33ba35459eb38`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 3.6 MB (3618453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61943f15825fcfdcc240de78b82566a7535493e0df6f5cadf03a2d4e28917626`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:8414bc28377bf2f3cc92b076a893e2eb73d601694bee795a0de7f7d2d0568d44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53e876d0d8af9176aff5e500cf2428138196ef93dd5632e1c1f66123cae4363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:41:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:41:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:41:38 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:41:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:41:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f4fda57951a0f898a6c1df4fee78dfd8a5af486932a6974de400171dfe75b2`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c60f2142898721f3d607edfdd01ffefd0ceb5f45e841075bcde82fac5f41c6`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b954dd24ddc995434942106f21e079de810e301e900e46588b41bf7c84277b`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 6.2 MB (6234083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1ec7631258570cce6a5f11bdafc27116311f09a0eb7065b9a010bb1fedf02e`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58996e573a79e099553c313d7f97004398b5770f6f3bf43564e68ca8f0215e1d`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:08433de8a24b5e843b14351e5f48ed8ad57839b4448f692dca55722d23c989ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb61032dad38272d819e9ba795e1816d8c9e8366316d6e763c473c02eb998cd`

```dockerfile
```

-	Layers:
	-	`sha256:133b6c3a70b39bf4f991283d57a9f6eb3f3b09e0e8e0574431521d102525f3c9`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 3.6 MB (3621366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfdb132e89ccd42601a8135546cf2d721245d25fed2d1f7d028a38de3f78eaa`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:1ace726a6a07b837cdbc7dd814b2de12d8fee9107c776d6a113be2a47ff6eb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779cdf3040e1199718ab2d2d10ab26760824aa623d0ed59005e5d087ac1f821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:46:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:46:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:46:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:46:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:46:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80999c3537f29e4ad5892e7843a570007bba5e280468237472bac672568946cf`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502e9092eea2d656cc4475d4a6492bb27e01be1de1ec43007d441223edd9b60a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573411cca361a9a5b0ebf4afc5478cad1ae4f58bcb07734f598b78ee00cf0aaa`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 6.4 MB (6443040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59667100449e220285b2509328c7790aa7530b06a1478c2739637bcbb5632a40`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b29493e5d16a5677afc7115dcb8a00bbe86d3d33835344c6036163b303bb91`  
		Last Modified: Tue, 14 Jul 2026 01:46:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:4fb6b7101cf7fe2a638b59cc528ab91d6e604a13bd2301f08b07e7801f12e48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f824046dbca2722f783c6339df656a94ee4460136fc113a88186b8fe822a5fc`

```dockerfile
```

-	Layers:
	-	`sha256:20c6f3cddcf74c7e7548f2e4b4dc378b79973e043fe3e9f51268de4894f127e0`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 3.6 MB (3620467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04ff2795b44e235b800f67c0c567165b5145edcc87a90d65e5192e0d6a292c8a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:374fa7571271eae27039a3ed5474acfc0f40dfb23e8ade1d0495a5f18a51055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d7f9245f0e7ff9307f50139ab11bd6fe946223481f161e44edfc02c9edfbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:49:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:49:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b020f286ac3c7a948c8646daa3c99e5e7d3cd4823d8de06799df80f6a8dd0c73`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c691dd9677fb6276723e41bdb7b32a5719a42307e532ed94076df8bcb81b08`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7f6c5172a8fcce20a46dbf6161ddabe699992edea0f55ed17f4453afafe4b5`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 6.8 MB (6840941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127a57b53a31f161c9cb3dd6c5eda052256806a8b1e1b68f6268f935ce4d0c51`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511aca9bb50bd63b68c3f07b5c1e85d9f7c902a8852347dd144bdbe99918bea0`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:90508d4876e54a00df918ab903f102368f8a35ac2257f28b5af480459ecb895b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4fa2a73b63d2f9a863a6a2287f29a8e217588ace41480c1fd70fcdc4c88465`

```dockerfile
```

-	Layers:
	-	`sha256:aeec92e56e65686d38c1b034213afebac18d6973cf4a81c3ccc2cbf52a833992`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 3.6 MB (3622075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2808107173ca6261806408f1b6f6453da8a65cf6cfaf52b9d2567be751ddf85e`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:0528667ab6b42b9ca5dbcc553c8784d7e69f048f5cf4302839e1cdbd1ff47e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e060aafbe82496854ac2d76e653ba662569ecfa4f9f3d89d8eb38931a266a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:07:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:07:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:07:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:07:25 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:07:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:07:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67491dfcca75e3a0f0dcb928c2958ea9374228e94c605c046fee9e7342dcd95c`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6a3d2271c9c2ec59bc458af347b4ee85d4fb9f23935ae09e912b8f0ff2a5`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5db74e9046de8db7a2af5248d836fa2c983b6fd452bc0452a7978da4707bcc4`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 6.1 MB (6122197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343ec648dec71244733a9150dceeb4b75013230452b12cc6ae23ca33d585b7ef`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e385bf966373dece2e92cbfcb13e7418591b2a224dfc2b4e042bc3b4b128611a`  
		Last Modified: Tue, 14 Jul 2026 03:07:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:b2601d7016772b419cda89f484ada019f8be73562f18f04b25393186b426c4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbac74a7ca2b392a767e0c11638fd51f270f524d2a93c790d54771e79483cb1b`

```dockerfile
```

-	Layers:
	-	`sha256:48a0c1490fc6391629fb2d63341dc95dce75b3e1aee13d935b5ed0386540163b`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 3.6 MB (3618701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1645ce634ddca5de41297be4e90488aa42a52fe9fb9484bb21e68574e73c6d84`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
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
$ docker pull spiped@sha256:e411103203f38aa5318df64e85d19d3c6fc06f9846e9f6253da553702f77b0bb
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:baabe7d190c1e5738dd084f8118cd24e3a219cbc027a22091f7d82991b48964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254d0dcbff0d06c1025fad7627d9c597b6aa324b91c516eda3884e1a31ab8cd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:23:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:24:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:24:12 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:24:12 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:24:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442162a06a7685f7b863f71eb570485c64f68376985e8270dcf53e71defa9e7b`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15dc4a19deb7be79b50ab832299282cac88046bd0d63e9615dd2e29cb0917488`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 834.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f860c05cb25aea3d2fead08ce64144bb538a290c5abb12702f32cf460f0837c9`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 5.8 MB (5789592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061bfdb5c244a8359e67ae1e48ad69f6d830025fcc9f8865d8b53da020a5b0e6`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4099a44ea35a4fded23095684a89943f18680d2217c8c80732946ce6c7b9355e`  
		Last Modified: Tue, 14 Jul 2026 02:24:20 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:122f1b99b1750f3dd325d33b9a5db2057bbf0c02cf26c160b8e0342c89442919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec79a91234b577ff2e1d1cc4a032327da6a5aea4e5dde2c0169f4ad5db91e40`

```dockerfile
```

-	Layers:
	-	`sha256:f59516ef5184b3cee484857b07d5789ec5b1d0800fc1f61b5bd470245312fb53`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 3.6 MB (3619332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f16f9d1f3c41985b9990e1fd8813eef31f9992e3e1bdf9f3264949194db3241`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d057b3a065724b035d57564a33e8fefc1cc2fb35006d5261cb4b4dd89ea4b079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c838135373992d006cbc2c7a3c2a7a9f4f8643f657ff817c8a4d48afeb4a59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:26:39 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:26:43 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:27:06 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:27:06 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:27:06 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:27:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becff6168375cac113b24a896ee75a9e4803e2a1a0ed1eba1c12acea05aa8fe4`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053167510d2f087f9fc81a9f78e8272e3c4f6cdc639aed09dd4f305787ff0b34`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3bceac3c1aca931ce245ee629d99fafa4154c67490415fbe4ea5b24876b6c1`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 5.6 MB (5584733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254cec89556f9393005f68d71852bed5c6b754f349f23dbc9d8a114bbafd7ec5`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea4f838cd405612707525db415756ebe39d4bad661cb95f4fc3b4eddd4d7cfc`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:0d85de526b1ae77041adf406787e5a5158622a27adfbf12727fffe27a0aef832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0b6e57672d6508a4290a589e7d0f6a9b9c516bf3acbb8a4149a8d7bf67880f`

```dockerfile
```

-	Layers:
	-	`sha256:16b882fb0c93c9b3aed636e12efd568064d9741ff1ac7881aee33ba35459eb38`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 3.6 MB (3618453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61943f15825fcfdcc240de78b82566a7535493e0df6f5cadf03a2d4e28917626`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:8414bc28377bf2f3cc92b076a893e2eb73d601694bee795a0de7f7d2d0568d44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53e876d0d8af9176aff5e500cf2428138196ef93dd5632e1c1f66123cae4363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:41:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:41:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:41:38 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:41:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:41:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f4fda57951a0f898a6c1df4fee78dfd8a5af486932a6974de400171dfe75b2`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c60f2142898721f3d607edfdd01ffefd0ceb5f45e841075bcde82fac5f41c6`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b954dd24ddc995434942106f21e079de810e301e900e46588b41bf7c84277b`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 6.2 MB (6234083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1ec7631258570cce6a5f11bdafc27116311f09a0eb7065b9a010bb1fedf02e`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58996e573a79e099553c313d7f97004398b5770f6f3bf43564e68ca8f0215e1d`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:08433de8a24b5e843b14351e5f48ed8ad57839b4448f692dca55722d23c989ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb61032dad38272d819e9ba795e1816d8c9e8366316d6e763c473c02eb998cd`

```dockerfile
```

-	Layers:
	-	`sha256:133b6c3a70b39bf4f991283d57a9f6eb3f3b09e0e8e0574431521d102525f3c9`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 3.6 MB (3621366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfdb132e89ccd42601a8135546cf2d721245d25fed2d1f7d028a38de3f78eaa`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:1ace726a6a07b837cdbc7dd814b2de12d8fee9107c776d6a113be2a47ff6eb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779cdf3040e1199718ab2d2d10ab26760824aa623d0ed59005e5d087ac1f821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:46:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:46:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:46:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:46:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:46:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80999c3537f29e4ad5892e7843a570007bba5e280468237472bac672568946cf`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502e9092eea2d656cc4475d4a6492bb27e01be1de1ec43007d441223edd9b60a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573411cca361a9a5b0ebf4afc5478cad1ae4f58bcb07734f598b78ee00cf0aaa`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 6.4 MB (6443040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59667100449e220285b2509328c7790aa7530b06a1478c2739637bcbb5632a40`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b29493e5d16a5677afc7115dcb8a00bbe86d3d33835344c6036163b303bb91`  
		Last Modified: Tue, 14 Jul 2026 01:46:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:4fb6b7101cf7fe2a638b59cc528ab91d6e604a13bd2301f08b07e7801f12e48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f824046dbca2722f783c6339df656a94ee4460136fc113a88186b8fe822a5fc`

```dockerfile
```

-	Layers:
	-	`sha256:20c6f3cddcf74c7e7548f2e4b4dc378b79973e043fe3e9f51268de4894f127e0`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 3.6 MB (3620467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04ff2795b44e235b800f67c0c567165b5145edcc87a90d65e5192e0d6a292c8a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:374fa7571271eae27039a3ed5474acfc0f40dfb23e8ade1d0495a5f18a51055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d7f9245f0e7ff9307f50139ab11bd6fe946223481f161e44edfc02c9edfbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:49:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:49:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b020f286ac3c7a948c8646daa3c99e5e7d3cd4823d8de06799df80f6a8dd0c73`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c691dd9677fb6276723e41bdb7b32a5719a42307e532ed94076df8bcb81b08`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7f6c5172a8fcce20a46dbf6161ddabe699992edea0f55ed17f4453afafe4b5`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 6.8 MB (6840941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127a57b53a31f161c9cb3dd6c5eda052256806a8b1e1b68f6268f935ce4d0c51`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511aca9bb50bd63b68c3f07b5c1e85d9f7c902a8852347dd144bdbe99918bea0`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:90508d4876e54a00df918ab903f102368f8a35ac2257f28b5af480459ecb895b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4fa2a73b63d2f9a863a6a2287f29a8e217588ace41480c1fd70fcdc4c88465`

```dockerfile
```

-	Layers:
	-	`sha256:aeec92e56e65686d38c1b034213afebac18d6973cf4a81c3ccc2cbf52a833992`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 3.6 MB (3622075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2808107173ca6261806408f1b6f6453da8a65cf6cfaf52b9d2567be751ddf85e`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:0528667ab6b42b9ca5dbcc553c8784d7e69f048f5cf4302839e1cdbd1ff47e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e060aafbe82496854ac2d76e653ba662569ecfa4f9f3d89d8eb38931a266a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:07:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:07:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:07:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:07:25 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:07:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:07:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67491dfcca75e3a0f0dcb928c2958ea9374228e94c605c046fee9e7342dcd95c`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6a3d2271c9c2ec59bc458af347b4ee85d4fb9f23935ae09e912b8f0ff2a5`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5db74e9046de8db7a2af5248d836fa2c983b6fd452bc0452a7978da4707bcc4`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 6.1 MB (6122197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343ec648dec71244733a9150dceeb4b75013230452b12cc6ae23ca33d585b7ef`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e385bf966373dece2e92cbfcb13e7418591b2a224dfc2b4e042bc3b4b128611a`  
		Last Modified: Tue, 14 Jul 2026 03:07:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:b2601d7016772b419cda89f484ada019f8be73562f18f04b25393186b426c4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbac74a7ca2b392a767e0c11638fd51f270f524d2a93c790d54771e79483cb1b`

```dockerfile
```

-	Layers:
	-	`sha256:48a0c1490fc6391629fb2d63341dc95dce75b3e1aee13d935b5ed0386540163b`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 3.6 MB (3618701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1645ce634ddca5de41297be4e90488aa42a52fe9fb9484bb21e68574e73c6d84`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
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
$ docker pull spiped@sha256:e411103203f38aa5318df64e85d19d3c6fc06f9846e9f6253da553702f77b0bb
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:baabe7d190c1e5738dd084f8118cd24e3a219cbc027a22091f7d82991b48964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254d0dcbff0d06c1025fad7627d9c597b6aa324b91c516eda3884e1a31ab8cd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:23:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:24:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:24:12 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:24:12 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:24:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442162a06a7685f7b863f71eb570485c64f68376985e8270dcf53e71defa9e7b`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15dc4a19deb7be79b50ab832299282cac88046bd0d63e9615dd2e29cb0917488`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 834.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f860c05cb25aea3d2fead08ce64144bb538a290c5abb12702f32cf460f0837c9`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 5.8 MB (5789592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061bfdb5c244a8359e67ae1e48ad69f6d830025fcc9f8865d8b53da020a5b0e6`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4099a44ea35a4fded23095684a89943f18680d2217c8c80732946ce6c7b9355e`  
		Last Modified: Tue, 14 Jul 2026 02:24:20 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:122f1b99b1750f3dd325d33b9a5db2057bbf0c02cf26c160b8e0342c89442919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec79a91234b577ff2e1d1cc4a032327da6a5aea4e5dde2c0169f4ad5db91e40`

```dockerfile
```

-	Layers:
	-	`sha256:f59516ef5184b3cee484857b07d5789ec5b1d0800fc1f61b5bd470245312fb53`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 3.6 MB (3619332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f16f9d1f3c41985b9990e1fd8813eef31f9992e3e1bdf9f3264949194db3241`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d057b3a065724b035d57564a33e8fefc1cc2fb35006d5261cb4b4dd89ea4b079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c838135373992d006cbc2c7a3c2a7a9f4f8643f657ff817c8a4d48afeb4a59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:26:39 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:26:43 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:27:06 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:27:06 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:27:06 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:27:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becff6168375cac113b24a896ee75a9e4803e2a1a0ed1eba1c12acea05aa8fe4`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053167510d2f087f9fc81a9f78e8272e3c4f6cdc639aed09dd4f305787ff0b34`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3bceac3c1aca931ce245ee629d99fafa4154c67490415fbe4ea5b24876b6c1`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 5.6 MB (5584733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254cec89556f9393005f68d71852bed5c6b754f349f23dbc9d8a114bbafd7ec5`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea4f838cd405612707525db415756ebe39d4bad661cb95f4fc3b4eddd4d7cfc`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:0d85de526b1ae77041adf406787e5a5158622a27adfbf12727fffe27a0aef832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0b6e57672d6508a4290a589e7d0f6a9b9c516bf3acbb8a4149a8d7bf67880f`

```dockerfile
```

-	Layers:
	-	`sha256:16b882fb0c93c9b3aed636e12efd568064d9741ff1ac7881aee33ba35459eb38`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 3.6 MB (3618453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61943f15825fcfdcc240de78b82566a7535493e0df6f5cadf03a2d4e28917626`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:8414bc28377bf2f3cc92b076a893e2eb73d601694bee795a0de7f7d2d0568d44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53e876d0d8af9176aff5e500cf2428138196ef93dd5632e1c1f66123cae4363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:41:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:41:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:41:38 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:41:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:41:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f4fda57951a0f898a6c1df4fee78dfd8a5af486932a6974de400171dfe75b2`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c60f2142898721f3d607edfdd01ffefd0ceb5f45e841075bcde82fac5f41c6`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b954dd24ddc995434942106f21e079de810e301e900e46588b41bf7c84277b`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 6.2 MB (6234083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1ec7631258570cce6a5f11bdafc27116311f09a0eb7065b9a010bb1fedf02e`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58996e573a79e099553c313d7f97004398b5770f6f3bf43564e68ca8f0215e1d`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:08433de8a24b5e843b14351e5f48ed8ad57839b4448f692dca55722d23c989ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb61032dad38272d819e9ba795e1816d8c9e8366316d6e763c473c02eb998cd`

```dockerfile
```

-	Layers:
	-	`sha256:133b6c3a70b39bf4f991283d57a9f6eb3f3b09e0e8e0574431521d102525f3c9`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 3.6 MB (3621366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfdb132e89ccd42601a8135546cf2d721245d25fed2d1f7d028a38de3f78eaa`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:1ace726a6a07b837cdbc7dd814b2de12d8fee9107c776d6a113be2a47ff6eb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779cdf3040e1199718ab2d2d10ab26760824aa623d0ed59005e5d087ac1f821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:46:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:46:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:46:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:46:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:46:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80999c3537f29e4ad5892e7843a570007bba5e280468237472bac672568946cf`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502e9092eea2d656cc4475d4a6492bb27e01be1de1ec43007d441223edd9b60a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573411cca361a9a5b0ebf4afc5478cad1ae4f58bcb07734f598b78ee00cf0aaa`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 6.4 MB (6443040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59667100449e220285b2509328c7790aa7530b06a1478c2739637bcbb5632a40`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b29493e5d16a5677afc7115dcb8a00bbe86d3d33835344c6036163b303bb91`  
		Last Modified: Tue, 14 Jul 2026 01:46:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:4fb6b7101cf7fe2a638b59cc528ab91d6e604a13bd2301f08b07e7801f12e48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f824046dbca2722f783c6339df656a94ee4460136fc113a88186b8fe822a5fc`

```dockerfile
```

-	Layers:
	-	`sha256:20c6f3cddcf74c7e7548f2e4b4dc378b79973e043fe3e9f51268de4894f127e0`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 3.6 MB (3620467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04ff2795b44e235b800f67c0c567165b5145edcc87a90d65e5192e0d6a292c8a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:374fa7571271eae27039a3ed5474acfc0f40dfb23e8ade1d0495a5f18a51055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d7f9245f0e7ff9307f50139ab11bd6fe946223481f161e44edfc02c9edfbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:49:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:49:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b020f286ac3c7a948c8646daa3c99e5e7d3cd4823d8de06799df80f6a8dd0c73`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c691dd9677fb6276723e41bdb7b32a5719a42307e532ed94076df8bcb81b08`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7f6c5172a8fcce20a46dbf6161ddabe699992edea0f55ed17f4453afafe4b5`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 6.8 MB (6840941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127a57b53a31f161c9cb3dd6c5eda052256806a8b1e1b68f6268f935ce4d0c51`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511aca9bb50bd63b68c3f07b5c1e85d9f7c902a8852347dd144bdbe99918bea0`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:90508d4876e54a00df918ab903f102368f8a35ac2257f28b5af480459ecb895b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4fa2a73b63d2f9a863a6a2287f29a8e217588ace41480c1fd70fcdc4c88465`

```dockerfile
```

-	Layers:
	-	`sha256:aeec92e56e65686d38c1b034213afebac18d6973cf4a81c3ccc2cbf52a833992`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 3.6 MB (3622075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2808107173ca6261806408f1b6f6453da8a65cf6cfaf52b9d2567be751ddf85e`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:0528667ab6b42b9ca5dbcc553c8784d7e69f048f5cf4302839e1cdbd1ff47e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e060aafbe82496854ac2d76e653ba662569ecfa4f9f3d89d8eb38931a266a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:07:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:07:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:07:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:07:25 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:07:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:07:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67491dfcca75e3a0f0dcb928c2958ea9374228e94c605c046fee9e7342dcd95c`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6a3d2271c9c2ec59bc458af347b4ee85d4fb9f23935ae09e912b8f0ff2a5`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5db74e9046de8db7a2af5248d836fa2c983b6fd452bc0452a7978da4707bcc4`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 6.1 MB (6122197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343ec648dec71244733a9150dceeb4b75013230452b12cc6ae23ca33d585b7ef`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e385bf966373dece2e92cbfcb13e7418591b2a224dfc2b4e042bc3b4b128611a`  
		Last Modified: Tue, 14 Jul 2026 03:07:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:b2601d7016772b419cda89f484ada019f8be73562f18f04b25393186b426c4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbac74a7ca2b392a767e0c11638fd51f270f524d2a93c790d54771e79483cb1b`

```dockerfile
```

-	Layers:
	-	`sha256:48a0c1490fc6391629fb2d63341dc95dce75b3e1aee13d935b5ed0386540163b`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 3.6 MB (3618701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1645ce634ddca5de41297be4e90488aa42a52fe9fb9484bb21e68574e73c6d84`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
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
$ docker pull spiped@sha256:e411103203f38aa5318df64e85d19d3c6fc06f9846e9f6253da553702f77b0bb
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:baabe7d190c1e5738dd084f8118cd24e3a219cbc027a22091f7d82991b48964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33746782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254d0dcbff0d06c1025fad7627d9c597b6aa324b91c516eda3884e1a31ab8cd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:40 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:23:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:24:11 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:24:12 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:24:12 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:24:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442162a06a7685f7b863f71eb570485c64f68376985e8270dcf53e71defa9e7b`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15dc4a19deb7be79b50ab832299282cac88046bd0d63e9615dd2e29cb0917488`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 834.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f860c05cb25aea3d2fead08ce64144bb538a290c5abb12702f32cf460f0837c9`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 5.8 MB (5789592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061bfdb5c244a8359e67ae1e48ad69f6d830025fcc9f8865d8b53da020a5b0e6`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4099a44ea35a4fded23095684a89943f18680d2217c8c80732946ce6c7b9355e`  
		Last Modified: Tue, 14 Jul 2026 02:24:20 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:122f1b99b1750f3dd325d33b9a5db2057bbf0c02cf26c160b8e0342c89442919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec79a91234b577ff2e1d1cc4a032327da6a5aea4e5dde2c0169f4ad5db91e40`

```dockerfile
```

-	Layers:
	-	`sha256:f59516ef5184b3cee484857b07d5789ec5b1d0800fc1f61b5bd470245312fb53`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 3.6 MB (3619332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f16f9d1f3c41985b9990e1fd8813eef31f9992e3e1bdf9f3264949194db3241`  
		Last Modified: Tue, 14 Jul 2026 02:24:19 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d057b3a065724b035d57564a33e8fefc1cc2fb35006d5261cb4b4dd89ea4b079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31793568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c838135373992d006cbc2c7a3c2a7a9f4f8643f657ff817c8a4d48afeb4a59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:26:39 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 02:26:43 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 02:27:06 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 02:27:06 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 02:27:06 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:27:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becff6168375cac113b24a896ee75a9e4803e2a1a0ed1eba1c12acea05aa8fe4`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053167510d2f087f9fc81a9f78e8272e3c4f6cdc639aed09dd4f305787ff0b34`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3bceac3c1aca931ce245ee629d99fafa4154c67490415fbe4ea5b24876b6c1`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 5.6 MB (5584733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254cec89556f9393005f68d71852bed5c6b754f349f23dbc9d8a114bbafd7ec5`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea4f838cd405612707525db415756ebe39d4bad661cb95f4fc3b4eddd4d7cfc`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:0d85de526b1ae77041adf406787e5a5158622a27adfbf12727fffe27a0aef832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0b6e57672d6508a4290a589e7d0f6a9b9c516bf3acbb8a4149a8d7bf67880f`

```dockerfile
```

-	Layers:
	-	`sha256:16b882fb0c93c9b3aed636e12efd568064d9741ff1ac7881aee33ba35459eb38`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 3.6 MB (3618453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61943f15825fcfdcc240de78b82566a7535493e0df6f5cadf03a2d4e28917626`  
		Last Modified: Tue, 14 Jul 2026 02:27:13 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:8414bc28377bf2f3cc92b076a893e2eb73d601694bee795a0de7f7d2d0568d44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36380155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53e876d0d8af9176aff5e500cf2428138196ef93dd5632e1c1f66123cae4363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:13 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:41:16 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:41:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:41:38 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:41:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:41:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f4fda57951a0f898a6c1df4fee78dfd8a5af486932a6974de400171dfe75b2`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c60f2142898721f3d607edfdd01ffefd0ceb5f45e841075bcde82fac5f41c6`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b954dd24ddc995434942106f21e079de810e301e900e46588b41bf7c84277b`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 6.2 MB (6234083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1ec7631258570cce6a5f11bdafc27116311f09a0eb7065b9a010bb1fedf02e`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58996e573a79e099553c313d7f97004398b5770f6f3bf43564e68ca8f0215e1d`  
		Last Modified: Tue, 14 Jul 2026 01:41:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:08433de8a24b5e843b14351e5f48ed8ad57839b4448f692dca55722d23c989ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb61032dad38272d819e9ba795e1816d8c9e8366316d6e763c473c02eb998cd`

```dockerfile
```

-	Layers:
	-	`sha256:133b6c3a70b39bf4f991283d57a9f6eb3f3b09e0e8e0574431521d102525f3c9`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 3.6 MB (3621366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfdb132e89ccd42601a8135546cf2d721245d25fed2d1f7d028a38de3f78eaa`  
		Last Modified: Tue, 14 Jul 2026 01:41:46 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:1ace726a6a07b837cdbc7dd814b2de12d8fee9107c776d6a113be2a47ff6eb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37741709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c779cdf3040e1199718ab2d2d10ab26760824aa623d0ed59005e5d087ac1f821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:02 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:46:05 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:46:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:46:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:46:28 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:46:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80999c3537f29e4ad5892e7843a570007bba5e280468237472bac672568946cf`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502e9092eea2d656cc4475d4a6492bb27e01be1de1ec43007d441223edd9b60a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573411cca361a9a5b0ebf4afc5478cad1ae4f58bcb07734f598b78ee00cf0aaa`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 6.4 MB (6443040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59667100449e220285b2509328c7790aa7530b06a1478c2739637bcbb5632a40`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b29493e5d16a5677afc7115dcb8a00bbe86d3d33835344c6036163b303bb91`  
		Last Modified: Tue, 14 Jul 2026 01:46:36 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:4fb6b7101cf7fe2a638b59cc528ab91d6e604a13bd2301f08b07e7801f12e48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f824046dbca2722f783c6339df656a94ee4460136fc113a88186b8fe822a5fc`

```dockerfile
```

-	Layers:
	-	`sha256:20c6f3cddcf74c7e7548f2e4b4dc378b79973e043fe3e9f51268de4894f127e0`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 3.6 MB (3620467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04ff2795b44e235b800f67c0c567165b5145edcc87a90d65e5192e0d6a292c8a`  
		Last Modified: Tue, 14 Jul 2026 01:46:35 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:374fa7571271eae27039a3ed5474acfc0f40dfb23e8ade1d0495a5f18a51055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40444786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d7f9245f0e7ff9307f50139ab11bd6fe946223481f161e44edfc02c9edfbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:30 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:48:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:49:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:49:27 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:49:28 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b020f286ac3c7a948c8646daa3c99e5e7d3cd4823d8de06799df80f6a8dd0c73`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c691dd9677fb6276723e41bdb7b32a5719a42307e532ed94076df8bcb81b08`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7f6c5172a8fcce20a46dbf6161ddabe699992edea0f55ed17f4453afafe4b5`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 6.8 MB (6840941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127a57b53a31f161c9cb3dd6c5eda052256806a8b1e1b68f6268f935ce4d0c51`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511aca9bb50bd63b68c3f07b5c1e85d9f7c902a8852347dd144bdbe99918bea0`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:90508d4876e54a00df918ab903f102368f8a35ac2257f28b5af480459ecb895b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4fa2a73b63d2f9a863a6a2287f29a8e217588ace41480c1fd70fcdc4c88465`

```dockerfile
```

-	Layers:
	-	`sha256:aeec92e56e65686d38c1b034213afebac18d6973cf4a81c3ccc2cbf52a833992`  
		Last Modified: Tue, 14 Jul 2026 03:49:45 GMT  
		Size: 3.6 MB (3622075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2808107173ca6261806408f1b6f6453da8a65cf6cfaf52b9d2567be751ddf85e`  
		Last Modified: Tue, 14 Jul 2026 03:49:44 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:0528667ab6b42b9ca5dbcc553c8784d7e69f048f5cf4302839e1cdbd1ff47e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35971189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e060aafbe82496854ac2d76e653ba662569ecfa4f9f3d89d8eb38931a266a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:07:05 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 03:07:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 03:07:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 03:07:25 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 03:07:25 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:07:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67491dfcca75e3a0f0dcb928c2958ea9374228e94c605c046fee9e7342dcd95c`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6a3d2271c9c2ec59bc458af347b4ee85d4fb9f23935ae09e912b8f0ff2a5`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5db74e9046de8db7a2af5248d836fa2c983b6fd452bc0452a7978da4707bcc4`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 6.1 MB (6122197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343ec648dec71244733a9150dceeb4b75013230452b12cc6ae23ca33d585b7ef`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e385bf966373dece2e92cbfcb13e7418591b2a224dfc2b4e042bc3b4b128611a`  
		Last Modified: Tue, 14 Jul 2026 03:07:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:b2601d7016772b419cda89f484ada019f8be73562f18f04b25393186b426c4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbac74a7ca2b392a767e0c11638fd51f270f524d2a93c790d54771e79483cb1b`

```dockerfile
```

-	Layers:
	-	`sha256:48a0c1490fc6391629fb2d63341dc95dce75b3e1aee13d935b5ed0386540163b`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 3.6 MB (3618701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1645ce634ddca5de41297be4e90488aa42a52fe9fb9484bb21e68574e73c6d84`  
		Last Modified: Tue, 14 Jul 2026 03:07:37 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
