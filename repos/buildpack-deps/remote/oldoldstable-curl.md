## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:7f423a8099a72ef9550c4bb06c46fe2ba6a70db4f8b04173cbaea33133555ef5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9a0ac8cd3036820811df78e54eecb3d6b9ad20c103bccf986cae81ad34988f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69567404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724ca065bfa12b351838453154b6d687870f591e7237ba56d579d734fe9376c9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5681d8e1155e1bb706091f1a7eebabc55855cdbdb20c01f3851abaef0f290`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 15.8 MB (15790828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:df6bd056e26e3fc428b4325eb542f02e9c3bbba49be381e677e28a7dc4c5f469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4644286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3251a09ca9f208a322ef800193ed45efaee6729d8a1080089b19838d732753`

```dockerfile
```

-	Layers:
	-	`sha256:dbb4a2967d63656c6f39ccfe3b81c90c9e12df5ee6be3d5af582c4bc8f81a997`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 4.6 MB (4637523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15a5266b454b04daa3c8e8052b0fa088e8ced7e6b91576ea29acfb0e2123aa6`  
		Last Modified: Tue, 14 Jul 2026 01:43:31 GMT  
		Size: 6.8 KB (6763 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b065d6966d829720c18773e33baf14590d790019068018f6ba4cfac0126a9aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63972144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372ceeba7933b8add5425abb5ce53d704f3ae70523c70caa0aef8bf76a524737`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:79f8122bf1fad87c58a2f6b6abc369f6df714bcc40cd08395085726d7a1357a4`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 49.1 MB (49066855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729edf26ef2001255f6a93744a2467482c1d8c2d0cc94c098a71afb3dd3af65a`  
		Last Modified: Tue, 14 Jul 2026 02:29:50 GMT  
		Size: 14.9 MB (14905289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cff2b3f34c3c6854b4eafe23efcd21077a6846cbe5969313497748ba437bf1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4645987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c48f46c986f37ec30fbfd7e5505410b915db9abc015c2d2084fcff0c27a3723`

```dockerfile
```

-	Layers:
	-	`sha256:5cbf24aad40b9b864880224af491a6374d0d10beee15a9434a4df9ac8702f0c3`  
		Last Modified: Tue, 14 Jul 2026 02:29:50 GMT  
		Size: 4.6 MB (4639159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7457b90bcb3e7ae6c47617c5985803ebccd2385b637c259e7769d9656a89203f`  
		Last Modified: Tue, 14 Jul 2026 02:29:49 GMT  
		Size: 6.8 KB (6828 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7d2e9ef9bfe2a7be24d8f4d3354b4ad7e2cd87a042fb81104396149503465466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68035823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b46330d194b922743d8d5e3ad5ad514aa0cccb003cd9d5062e7e6d91c9671c0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8ec33dc561d736c45e9bd0a2160810db1f866ce8bb8fdd35dbb5297f5d4cd2`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 15.8 MB (15774933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1542d7c74a56e8615432d846a203be4af4a6fb2fac3edad11a9fc1ace84f514f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4643981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac176684b1437d8760b4407e941b526453eb91ce618a5fd2a749a00460b89c5b`

```dockerfile
```

-	Layers:
	-	`sha256:847c1717033a9b587cb52b5259f59ab74e357c8adef848df811aef797fa2615e`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 4.6 MB (4637137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:720db0fb8f48c37f89f3858ba8ac6b7329eed7162c60f28203a99f22381902b5`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 6.8 KB (6844 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:26666260d85e2ba982dc56f8d214fc607aa5848a14e55b9691c2551071775662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71011297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6bbdc0f56a35008e9740874f1f55b4422ea02db1db7ccfc74b3b02d63e4069`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63cbf6f5806fb8aa6c69a5959b7d567988ef18fca9270d4385dd0048cf1ef04`  
		Last Modified: Tue, 14 Jul 2026 01:47:41 GMT  
		Size: 16.3 MB (16295690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fbad32f8f77c1308467f1b00631bd0ada3581958515d8f289f3d96805d48aeba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4640768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241472f1615d117c56b9a3e70653a0aafd2320e36e16fe653f629e1becc2e0c3`

```dockerfile
```

-	Layers:
	-	`sha256:d7fa0cd0ca0446b1eb9ac27738aac7bd4ffc6d73a8298bf587a3d8d800482c01`  
		Last Modified: Tue, 14 Jul 2026 01:47:41 GMT  
		Size: 4.6 MB (4634026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1e4ed6eab7e7d40c097ba9478f48598458abc93fa0441201b011ac5f0032b21`  
		Last Modified: Tue, 14 Jul 2026 01:47:41 GMT  
		Size: 6.7 KB (6742 bytes)  
		MIME: application/vnd.in-toto+json
