## `golang:tip-20261002-bookworm`

```console
$ docker pull golang@sha256:e6684144adf41a6704da72b2697aeb3787cbb41b23130f5b48a3a02caf1a764c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `golang:tip-20261002-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:1ce8a585c08701d643350b722b200aa38772b6768240cc9919a5b1606cf8a172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (335003188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42b26f6da511f4258f651210b67ad9577bef7e122fd7df1916ce717bfea2929`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:36:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:37:55 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:37:55 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:37:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:37:55 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:37:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:37:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d01792f1a91b76559a12164eff83f5c1dc4dde4cab7ec6fdab00636082b9f7`  
		Last Modified: Mon, 05 Oct 2026 21:38:26 GMT  
		Size: 92.6 MB (92576022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbe3044d04838fb226e2758d6f7875c948ff92f0ba997a96dfabf1955b4fcd5`  
		Last Modified: Mon, 05 Oct 2026 21:38:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2d6f6a98c7debe15ababcb4e3f49a5bf7691756f374d339849adb630c6fe5b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94df104ecf2d305fe10488fb8986c9668f2847658901e2f6eb57e2ead9f6d13f`

```dockerfile
```

-	Layers:
	-	`sha256:85fc663b255e1dff159bc807da53fcef950e25fe392a40fa4bd733c4d2cb5e36`  
		Last Modified: Mon, 05 Oct 2026 21:38:24 GMT  
		Size: 10.5 MB (10503090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4227909d06ff9de701b1d29e8a99373df20846f756e49d9ee5225b3f05bd324a`  
		Last Modified: Mon, 05 Oct 2026 21:38:24 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:7f3587eb6c0ae3cdb076533a77168a764f3982192f02c1caca9b6cdf49519f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.5 MB (293506737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e43b962a18f757dd3485a7fd4331781df242ea6e94ee1870ccd856cd404564f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:26:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:54:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:56:09 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:56:09 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:56:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:56:09 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:56:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:56:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b05f2afa4aeb0abd1b387e407cc8939c894ecaf8fbd3b034a72e34dae98c9a2`  
		Last Modified: Sat, 19 Sep 2026 02:26:25 GMT  
		Size: 59.7 MB (59661780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e320471af5b538bfcdd6dd5db9a11ef9a746300b11ef3e9c2eee0d5d2bfbc7aa`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 66.4 MB (66426184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e68218ef97cc2dc23f8552be5a565f9b20f0310e38bc01e8c3c4b3bd9837e4`  
		Last Modified: Mon, 05 Oct 2026 21:56:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:7bd0b98ee1c69190a8558dd05acb25a2acf6b5165a0098ac11faf5abf3eda7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de761c92c5ac98f7d0e4774e26dfbbe2153b8f35f67ea9c8acf5b7bcfa4b72f`

```dockerfile
```

-	Layers:
	-	`sha256:34c5f8e1df2ccd5c085ea145c0dffa274383f8106e68cad4e4d3a756e15f1406`  
		Last Modified: Mon, 05 Oct 2026 21:56:35 GMT  
		Size: 10.3 MB (10309784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:948d9488fd0e1b697b5e73c7b1f8cb91c49b7a5bb554d11b71a33b802040c639`  
		Last Modified: Mon, 05 Oct 2026 21:56:34 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:dfbc206db5a1c706bcf1f2f2f688e982a6ba32e175f96b204c7236ec27c55719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322905617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97b2f78ca36e070608ac2f0a893732e0d955fdd48d35189edb55b4f76ffd7a6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:42:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:43:33 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:43:33 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:43:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:43:33 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:43:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:43:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846efa5e092a4fc40dfa68e3052205f763cddcea769e6645ab935cd3e2e69f3a`  
		Last Modified: Mon, 05 Oct 2026 21:44:03 GMT  
		Size: 86.6 MB (86641790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfba88edaf714aaff2249b4dd427f99158bb2a423f36dc3dc2768b8bfeaabca6`  
		Last Modified: Mon, 05 Oct 2026 21:43:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:14dfd1be14d424c21eeb2bae758c0129cb161137cb4f712be8e0246be4a22f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faaf6e38800c70e757ea60c2f7bde6278f5324ef6ed7126d4a7f3b971af42456`

```dockerfile
```

-	Layers:
	-	`sha256:bf648a70419077bea2416f1baf08a346ad95cc123ae9913cfe0f81a7cb20b315`  
		Last Modified: Mon, 05 Oct 2026 21:44:01 GMT  
		Size: 10.5 MB (10530914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc9efc8e330bdd8bdf05eaa4fe3bac72cdc457e38651bed1466746c9cb7c8bd`  
		Last Modified: Mon, 05 Oct 2026 21:44:00 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-bookworm` - linux; 386

```console
$ docker pull golang@sha256:2e762f42416bfdbe0cb28e1b424672b3a66ae8dbd65de210fa0c28847fc34e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333811500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8412ea888e73975f9d7054e8964d172d02b2e8c2b2efd83ec9cdb1beb678d9bd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:50:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:51:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:51:48 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:51:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:51:48 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:51:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:51:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c174bce5c479c370db8c38f79e92be811489d0b5368dade3e5c99cb5c4002874`  
		Last Modified: Mon, 05 Oct 2026 21:52:17 GMT  
		Size: 90.0 MB (89991290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16223acc1da25fe8083362b6a1b4cda8f1ef259350640ca618ddbc68a6dbf77`  
		Last Modified: Mon, 05 Oct 2026 21:52:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d8312ed04622f1737897e5b9afb7f1d1f4fd6e863fd501246c8bfc78f04046fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3255d1c2cfbbd75f7d2c79bfb580a0e2830b90876d58102a64c75d9575de010d`

```dockerfile
```

-	Layers:
	-	`sha256:6fa20b7eea4042ff6ccc9090ef85075758d67d98f1ce9a2a3d658bbb26281027`  
		Last Modified: Mon, 05 Oct 2026 21:52:15 GMT  
		Size: 10.5 MB (10482669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e6db8e4b023594baae5858dfd1ddcfccec8268d4bf913b8e49dce7492860fc2`  
		Last Modified: Mon, 05 Oct 2026 21:52:15 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:e62690e4a6224cfec259c769d705e1d02bbb902349fa2da87bdc0bdfd3bb67b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340441812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382792a0a7171a9b9273660edca73970195ca8db69b6673d32f6daf1a052d55f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 18:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 22:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:50:26 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 22:55:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 22:55:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e9f3363ace736c21292a425cd627663814b1275272b7cf79f502454af1cac`  
		Last Modified: Sat, 19 Sep 2026 03:16:20 GMT  
		Size: 25.7 MB (25703264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb8363b45637c8da3b7da1113159dbb24fb241a976701cf530477d2ae974472`  
		Last Modified: Sat, 19 Sep 2026 09:06:01 GMT  
		Size: 69.8 MB (69849171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2297a3bf9de8e522a5fddf94dc3aa1a0c0fead87ee774876352205e76ad574c`  
		Last Modified: Tue, 29 Sep 2026 18:12:16 GMT  
		Size: 90.6 MB (90578198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac676012f1bbd8448d220a8cfba37f4a3c5a64f330bfc3efc7d2b7d17868a22`  
		Last Modified: Mon, 05 Oct 2026 22:55:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bba022df7ef011036c0bd79b0f43aa0a0d1b33c9384ca31d5225eeccf64eb560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10503723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0c4cfe7258b0a0bafc345f8972286b9d1b0fa9fa036b9d17ece9f4482f0f26`

```dockerfile
```

-	Layers:
	-	`sha256:f97627c0f3605b56b04cdab8415f1ac7f2d45c28ed8cd01504a321a1e50e08f9`  
		Last Modified: Mon, 05 Oct 2026 22:55:56 GMT  
		Size: 10.5 MB (10475575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edda888b61607ad6891d7bd4396f37c1c2d70a29c5f981c039dddf31bed6b721`  
		Last Modified: Mon, 05 Oct 2026 22:55:55 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
