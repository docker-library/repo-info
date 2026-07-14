## `buildpack-deps:bullseye-scm`

```console
$ docker pull buildpack-deps@sha256:052767b489ccab1dc5025383f42de3573156e91c4bdecd22c623e975c51ff3c9
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

### `buildpack-deps:bullseye-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7b1523b21fa0b6766302581d923309943df943a02bfc666e52c25a8d0d9d629e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124310312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457ff1ff0f3ff0c0da5273d3bf360dbd73e2c43617e0d0352879e6a9c92c8f68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:a3214a37800dcb85308a3ee26895ae746a8913db3cf74dba437915f1e979ed64`  
		Last Modified: Tue, 14 Jul 2026 02:30:03 GMT  
		Size: 54.7 MB (54742908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7518d846630c56c73263569f552e9905f35534f55b7979a03575071bef3a6004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7928697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dc6302267a2a57378e42110b0df73b05a30f635b6ca3d02778e356b11f77bda`

```dockerfile
```

-	Layers:
	-	`sha256:4ef66d8b0acaf546f866b0b5171e558075ba2e94a30b02c542ab844bec0a3da7`  
		Last Modified: Tue, 14 Jul 2026 02:30:02 GMT  
		Size: 7.9 MB (7921381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4a5a17322a561b1214e94776ef100391bbf5d6efb4b88169ffedfa0d53c2541`  
		Last Modified: Tue, 14 Jul 2026 02:30:01 GMT  
		Size: 7.3 KB (7316 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5870843c08dec3253ce61d067f356e4cfe0e760d0bbdec00ee0cdde5b5d630d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114631651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f391df7510ebe9ed4e5f5fce87145f529a3e590e0c05d5fd3a874f7e8327dc36`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:9c3d3e8b4b8edda5ad2406be24f1948a6aaea76f38cd8c698f40887fd5749332`  
		Last Modified: Tue, 14 Jul 2026 04:15:25 GMT  
		Size: 50.7 MB (50659507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:37d5177e8a5860728f39ef22296817c9802b1c7cbd4fb80c529de83816715def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7930163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643c8a248ac2459dbc4c2ac98c8f6355d83e69cdabe1e7245a44ad2d37836485`

```dockerfile
```

-	Layers:
	-	`sha256:53d0547996de31fbf0e1572f9ad902044996e83c70ccfb06522c5797af30cdaf`  
		Last Modified: Tue, 14 Jul 2026 04:15:24 GMT  
		Size: 7.9 MB (7922783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f69920f725cab42003b6d31817dfc7a725c9161306a2b5bb96cd1124fab3e7a`  
		Last Modified: Tue, 14 Jul 2026 04:15:23 GMT  
		Size: 7.4 KB (7380 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:642f721d5d66b7efc0b6e9a2cb5c9d5cf582f7a8621598cd9af7abe95b2d0ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122915371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2827c3bf0abd4c78592fd156bfbad33e33eb94432b0488f312dd1e1725e75bc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:d62f54371529143bb3cc8355513868c57b4480ed394f322c2f387e2b83d41c6f`  
		Last Modified: Tue, 14 Jul 2026 02:37:04 GMT  
		Size: 54.9 MB (54879548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e575aa94dba51020a22754648f1b49264211ce5c13a6f4f413be579d90c37ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7934511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e509a7514cbbe9e53f620804cec98de2e8b4490af5d0ddfd2b8af3c9e3a4df7a`

```dockerfile
```

-	Layers:
	-	`sha256:6d398d987d727135e92547e79d7ee86963a884e610c77ac3667559de4a37d020`  
		Last Modified: Tue, 14 Jul 2026 02:37:02 GMT  
		Size: 7.9 MB (7927115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a4e699f623d117c336693448baf112317acf92a31805381059a049d7583772a`  
		Last Modified: Tue, 14 Jul 2026 02:37:02 GMT  
		Size: 7.4 KB (7396 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:98f257a1a77163bce44812a58f717875185feb13b69ff2c2ccf6c3f9da625afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127058440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2213d3cf886469ee480ff980aa64891a2303bfd58a9b4bbc7dad2c720bd759`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:0ed14eb3b977d9bba05e944f824145a76a67b16e46cc4e8ab58539219eeca0e1`  
		Last Modified: Tue, 14 Jul 2026 02:36:17 GMT  
		Size: 56.0 MB (56047143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2461d2ed7073d3a4b1c2eaa88a3e97ca9bbb1c208c494cea03ec6e4ad336c7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7924245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6198d62c2e4425869af630cc07a25f1a28aefae4c58ee42b7b8093d1156df6`

```dockerfile
```

-	Layers:
	-	`sha256:1af848e901427a7210ff169b3538e19b2b8ad8cbec69b63f59db71abf454f1ce`  
		Last Modified: Tue, 14 Jul 2026 02:36:16 GMT  
		Size: 7.9 MB (7916951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10818c16e25e07a7be97685ea7b44d57131b9d88a3becc16c26fc8d6385e59e2`  
		Last Modified: Tue, 14 Jul 2026 02:36:16 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json
