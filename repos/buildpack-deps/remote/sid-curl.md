## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:8e0a965025effe0bb40558f491fca299acaa58cbd5d59d29aed640a189e61d2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b50d2b2264d233bdd3e6a63b78e11ef83051cb6f4ab82dace176cc6b661485bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79211697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f4ec76f23f56a5c4d9e162800acefb02ec33e5e33321eea833cc1836aa3e14`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:38:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4273df8690da95456a1a9afee73682592f8aec24169da4f16e634c55be6fc3a`  
		Last Modified: Thu, 05 Nov 2026 07:38:30 GMT  
		Size: 28.5 MB (28484938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3533d62006e02d89751cc71cb75ea8870b3036b8925f07401441c1943b963ed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4080413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9898138b6002d85c902d2360f08fe98cdf7242820af7d3741166b032dd648f`

```dockerfile
```

-	Layers:
	-	`sha256:c3a697cbc26158edf626643f9c5832baab9ce9b2bf444d99b355473e0c404a9b`  
		Last Modified: Thu, 05 Nov 2026 07:38:29 GMT  
		Size: 4.1 MB (4073652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1e58e59c7b401e47c793d481d82c27334793f82749ded424a233ca13f5549e7`  
		Last Modified: Thu, 05 Nov 2026 07:38:29 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f1b91bf587f50560864eaf9a36bca874cdd2a8828e5f1822d244e8ebd8c3680c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.3 MB (72303044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd028c4537c3863877e05310158f18fa530c3c415dffa9a8a3df46dda5a4426`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:613d25b7667af2a220f573c279bf82bbef55bc5c774950c59eebaa05fbd97bf5`  
		Last Modified: Thu, 05 Nov 2026 06:16:26 GMT  
		Size: 46.7 MB (46655893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4327113c2aad6720902fc85ab305e9fcb11a5f664c179906ff07ae22dc74ba17`  
		Last Modified: Thu, 05 Nov 2026 08:18:38 GMT  
		Size: 25.6 MB (25647151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:65e0993e0b78ad3c555f6dc36ca588f4389bd1a8aa20b639f9862e89f4f1a668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4082135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b2f7aff7e46be4ecf692c525647bebab0b9259db5d71037c1f47e5f76d8de9`

```dockerfile
```

-	Layers:
	-	`sha256:0212f5b992158d8625a83bfa84d90da2405d0a6dfc86624ecae108c1bf045d4e`  
		Last Modified: Thu, 05 Nov 2026 08:18:38 GMT  
		Size: 4.1 MB (4075310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdb8df60f3e8cae7b96ffcf8227913d09bec7d0af3a85f88d036cd9c9b53f1b5`  
		Last Modified: Thu, 05 Nov 2026 08:18:37 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ab8dd046cac76ed11666daee33dfcaa94e350c4aec39fe1394704ad4c3ef310e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77253923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99e6a182fe8ea32dfce965b70d40f8e707b3ca6b992239662a817bfa1bf3c3e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d97bf474429e52e6150d13d3b5e082a8df5e1ab3276ef938597c5478ad75e6b`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27387460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e3bbe54c2a6eb9ceacfdf0fcb679c2c85278846b70efed07897446b49a784809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4083994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02da784153c1e82e80d3b210abd278961579da92f83aa6982cb2fd2ae0c7d6f7`

```dockerfile
```

-	Layers:
	-	`sha256:7a28bf55ebaad775fc3a23382f8b3ddf203b27e42342c8c7910af4fec25fcbef`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 4.1 MB (4077154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3dd37616637435a41e3ee0a0051c590aab7614664bb611927bab1d8df0f51eb`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 6.8 KB (6840 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d84047546ba0a0b1060454962000034ca9c87f38fb357165219edee324eacf25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81421464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b4eeec22a5d6dd70a63c3bacb7b22fe02cb0fa1bc18a5048abff8147edb27d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32022506408b6385b68a95a3d7ccc48745ae3095167986e3061e179ec815c332`  
		Last Modified: Thu, 05 Nov 2026 07:41:32 GMT  
		Size: 29.6 MB (29633135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:401e6bb2943d88613d9f8c531914ae3ccf04310e8709838b7965881945183d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf1ed259db7d390798d998b762b1a24ec2062d49192fead0bdae9ea4d31bea7`

```dockerfile
```

-	Layers:
	-	`sha256:19be0338bb3f4762bd7d733668ea2f17ec28afac03503078e79ddc69a24367c2`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 4.1 MB (4070658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4d17c865136ca2f5471bf8f2cd9340acf3ebb38f9aa22be467c8fc778c66efa`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 6.7 KB (6737 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:484124913d5aa450ebf9d77fae9ea6b43e0f3049a30b50a5ce967192c4863da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85850416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0248e0d75601e7380f30063db3d96a2529fd0e290379337fafb3382f642c2c1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 10:09:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:71727a7c52ae923ce7dcf0437407248a4f42af9d7dfda02dd727e04556f7305f`  
		Last Modified: Thu, 05 Nov 2026 06:16:13 GMT  
		Size: 55.3 MB (55318193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2dbbb8da0cb60b0bcbd35289c935d149c1d915be3db7cfa0de4fb889d48f4`  
		Last Modified: Thu, 05 Nov 2026 10:09:27 GMT  
		Size: 30.5 MB (30532223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:31e0a6d19dc3e76f60d3194a4571f53648bfc4ca4932bc94b10764bbd271dc24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4084558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38ca410deee8d300092769ad107fe9ca91102ae428908408e2da85ba7564fdb`

```dockerfile
```

-	Layers:
	-	`sha256:abe623952a6414b2bd7772b7acdc45adfe8f1356496715cffe9d789c389e975f`  
		Last Modified: Thu, 05 Nov 2026 10:09:26 GMT  
		Size: 4.1 MB (4077765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c2bb3282aca73e2bb871941b2458b8bd6f80e06db2ce0c508b22f54fa6fad86`  
		Last Modified: Thu, 05 Nov 2026 10:09:26 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:b314bc29441f4e1fbf837b17fa79bbcabcbe00c9d4b2836a845aa555e2d87ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74754990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f62092fc51142d4424c436862ff62be5a2451108e1ae1cca088900fab3cbec3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1793059200'
# Sun, 01 Nov 2026 11:18:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:87eacb97def82a2d6fda0c59baaa7e20f9b437d682e32d16d1da3f4c076fc672`  
		Last Modified: Wed, 28 Oct 2026 18:25:23 GMT  
		Size: 47.3 MB (47253173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccde0825030b10a0ef2507b430836b91c953ff3b552a30a5e10f46e110dd377`  
		Last Modified: Sun, 01 Nov 2026 11:19:57 GMT  
		Size: 27.5 MB (27501817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:642727ba2019fdaef98093cdb7e08bd51bb14b934e27a8aa3e192e64babf5160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4066052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3197dc9577f3ed1363f3ba7c8e3955dfa9344326ebd281cda2e5f187801493b2`

```dockerfile
```

-	Layers:
	-	`sha256:76c25d65b6501932594225cb3920fe9b90ecf7f5054947ee1a116b9ea9358276`  
		Last Modified: Sun, 01 Nov 2026 11:19:53 GMT  
		Size: 4.1 MB (4059259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb10018a5a29280e9e710dd56d1406c920a8d8dc3ae877b1178647710b09af2`  
		Last Modified: Sun, 01 Nov 2026 11:19:52 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e3ada61c42cf5fee499e5a4bfdc5429fafc6fcd4c22d0f82858fe57ec417c01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77506317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef73a275e7091c347917a737677537ff2a40c182a7047b18035d4e0f5cb4b1d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fab4dd3bb1bfe9c82bed80a75831816c076eda870f6bc87ec816275770723c7b`  
		Last Modified: Thu, 05 Nov 2026 06:14:57 GMT  
		Size: 49.7 MB (49744159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab1241173c07fe656a4c10a3409d581ee67ce12f0b7a5dc712ad0cacafaeefa`  
		Last Modified: Thu, 05 Nov 2026 07:57:26 GMT  
		Size: 27.8 MB (27762158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:df7cc38e6983a66dd80fa413b529eb8b4243fcf696018e2a60093aec27afd680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4081766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d727fd3aaf02a6715c720abf1c6a81da9d8210e368c1660036b98c219309ba`

```dockerfile
```

-	Layers:
	-	`sha256:463571b3ac97ca4ae1e2dbc993062855c6afb66b468dd99aa7ba70f6fddcc109`  
		Last Modified: Thu, 05 Nov 2026 07:57:25 GMT  
		Size: 4.1 MB (4075007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bf61cca7e44b94794a1f2b5e7f396ab516e9615b87c4173d63e8cff25f3513b`  
		Last Modified: Thu, 05 Nov 2026 07:57:25 GMT  
		Size: 6.8 KB (6759 bytes)  
		MIME: application/vnd.in-toto+json
