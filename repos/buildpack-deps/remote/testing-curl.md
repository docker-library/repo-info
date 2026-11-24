## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:a6fab177cd85099af258f342846ef19e541b84ffcd24736a8c2cad2b768a56d0
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c38a09f3eded440f2196f21510de194e8806ae8d413041e2fae96d38749b7079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79316665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc82be60dbe4a2b77ea31baccee17916ae94ef8448d056570f2fedfb71e96e48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:39:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88679e6561358812a7e8ee3a27635a14d2a615b8fe0bedacfea7315727a46bdd`  
		Last Modified: Tue, 24 Nov 2026 04:39:29 GMT  
		Size: 28.5 MB (28492186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dd985c5df66df81bb3fd92238bbd0d7f839add6ad0b7bd2eb4b077361d2c167f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a66db9a3b6c26da8e6b94bc87508296a6c875a8131ada910b8cd5d32737fd8`

```dockerfile
```

-	Layers:
	-	`sha256:86af3f6ad14ffd5a92e5a5536ac17252d7833acd2a49e73629e1c9fa376bb641`  
		Last Modified: Tue, 24 Nov 2026 04:39:28 GMT  
		Size: 4.1 MB (4085656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:612c0ea68db73a95f1f5210931c3357181b6d95d4c2014f44c557596d6a31f2b`  
		Last Modified: Tue, 24 Nov 2026 04:39:28 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c1fece733903e46a05784358717c01ac526a709af74670f9c3beee8c0acfff30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72413634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b618f1048582f0ac52d564c7d51ae4c4191abc8836d055466e2556dee6467739`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad15e1ccf6667f0b5d63e5965cca3e5ec1c04c4e3f2c41af33d31b007d744dcd`  
		Last Modified: Tue, 24 Nov 2026 03:39:59 GMT  
		Size: 46.8 MB (46761292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1143882d9322f3f9a5e283934cdafa1116ddb376b1373be2859f35ccd6fc0594`  
		Last Modified: Tue, 24 Nov 2026 05:16:16 GMT  
		Size: 25.7 MB (25652342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:819a2e059f8f9eb1da76994ed4da435722b28f72455d22baab7bbdc8ebb6c313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4094190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6608c86c71820da6143d94a6092efb43f07f6c0f029b6c91805d5c00ab96262`

```dockerfile
```

-	Layers:
	-	`sha256:c08ac6b0f6401eaebce6eddc736943d3869a78853a01d7276476e6ebf8dad8ef`  
		Last Modified: Tue, 24 Nov 2026 05:16:15 GMT  
		Size: 4.1 MB (4087353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab5b98499f3613d44d3f21f12125fe817007b6dcfaccef6f52f0e5151b21fc2`  
		Last Modified: Tue, 24 Nov 2026 05:16:15 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:75835c55606f0e35a7b83a7c872b265293376260366b6cc9dd05daab0873d946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77345207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdfc312074a53bee2440137ec60700cd84b7e9ae33199abcb4c872b5e2d1184`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:43:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fe612f86f020e2e30e6954733495ebb32e497ad47e90706869e4c2fca69ae2`  
		Last Modified: Tue, 24 Nov 2026 04:43:39 GMT  
		Size: 27.4 MB (27385671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ba712c7d40c7930ecbd57f442e59e7de23601e3d236f80aa641581a1d9fd5259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8987f29db32b931e7eca49cc2b202953703f2cc7327cc6ddad251683be6f11fc`

```dockerfile
```

-	Layers:
	-	`sha256:6e7bb94f133e114555858eca88fd63a862ee54ead0649b95440fe3345acb51ff`  
		Last Modified: Tue, 24 Nov 2026 04:43:38 GMT  
		Size: 4.1 MB (4089171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0692842556f1cd820e6e0df12a14e087f1b7e7eb7fdb64ce525a642ba375599`  
		Last Modified: Tue, 24 Nov 2026 04:43:38 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d93820689cf16938fcf50577a5d67ee9591b7ae4192cab5c3de4cefaa9738ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81545669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f763f78c2fcfb5b652ddff6ee1df3f085f221604bd91ef5bc3e618fcaaff4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:41:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781446897aa3758123b6f39af00768eaca22b2b0844b2ee8e80b24cfa21f2438`  
		Last Modified: Tue, 24 Nov 2026 04:41:17 GMT  
		Size: 29.6 MB (29647169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9facc49f65ecc6b84773408e5723cec76e5b4ea65215c044450d329e980a583d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd756402270bce66e7d598cffcdf3982f11d18354c2f4339141bf6acd9eac68a`

```dockerfile
```

-	Layers:
	-	`sha256:f13b899cd0393606e8176012551d6bf2ce067be461235fb44948d4639062cac1`  
		Last Modified: Tue, 24 Nov 2026 04:41:16 GMT  
		Size: 4.1 MB (4082634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad67290dbd0ccf8b97491eaaa2d0dbcadbc06d4984c90c1ca8f24cc73f2d3e91`  
		Last Modified: Tue, 24 Nov 2026 04:41:16 GMT  
		Size: 6.8 KB (6750 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ceff5a95ed27b3927eb91bc3ae94c81b08f5c18df693fae7f14bf44f9c7463ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (85970601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b866661651afb536c35d005c4821151edf2103c9322ac6c4ec1db644025e8d3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 06:51:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8c9c871a59639f586eab4e27a4e6dde32d5de918c3c725dcf429285aa24641a4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 55.4 MB (55430740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e972f99456c6523626c70628380eebc3727e7c065093bd8b6cf7ac8785b35726`  
		Last Modified: Tue, 24 Nov 2026 06:52:08 GMT  
		Size: 30.5 MB (30539861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:475cc7541c8cfb3976ef5478f30f40d75446fd71bd1ddfbbffaf7462bc38543a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818cc3214f3233796de6826dfa5c9d680bc5bdc3340848b0f68cb5bd71fab15d`

```dockerfile
```

-	Layers:
	-	`sha256:005e87f154f7a2a865e1a90978f7e67d9ad9423c79392c13981cb6d2f98d17b5`  
		Last Modified: Tue, 24 Nov 2026 06:52:08 GMT  
		Size: 4.1 MB (4089838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fa4ca92c286a2e5237eea7e43a45f51f593e0ea7123c27718afa624f92f5a4c`  
		Last Modified: Tue, 24 Nov 2026 06:52:07 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:24b8353ec81593d9a80977dd1b8f02191ea9a8bd2ff207430794aaec00bec97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74751259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5321c2824673c3a10bf6f699df40ca9035322f8af48a6406a40d18e066fd265`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793827419'
# Sat, 07 Nov 2026 04:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:af6814c9b170f0ad2c29fb9a95b0e4fbd5b006cf40779c5aad8ca65ea06385ca`  
		Last Modified: Thu, 05 Nov 2026 07:20:48 GMT  
		Size: 47.3 MB (47262981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804f345d2c293931117d186b7ea9940c8b2f0071589026ba4be5a6074242cf37`  
		Last Modified: Sat, 07 Nov 2026 04:14:37 GMT  
		Size: 27.5 MB (27488278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b8998cd0f52e3f3a619b7fc8c5b89417c33faf4feb36123f0e7997ce9bf5895a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4066851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12cdcf5604609cd3e6d5c78e32cb63707815c03e828d90323f1c7cb32fbeab1`

```dockerfile
```

-	Layers:
	-	`sha256:b8241d4d6f4b7f16e2af44fffab5e95f6c99f1138b3169619048d12ab064d1a5`  
		Last Modified: Sat, 07 Nov 2026 04:14:33 GMT  
		Size: 4.1 MB (4060046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cc364015144f5d72b5cc0060b4531dde79f8da4d56d6fdd3e31bc3ddcb24769`  
		Last Modified: Sat, 07 Nov 2026 04:14:32 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1b793e91487bb21a6d97c662d4a00f7bf78f59ff57182a1d92cdf4723a8fa403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77638534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c453e2c7508542d6f6a3cfd5e2434614697e3e87bbdb5e8fa29eaf57ada6c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:52:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a1c5eacac2275bcace23e821f0eb1d47f962bdcf22d863bf28709cb8b3953b7e`  
		Last Modified: Tue, 24 Nov 2026 03:39:06 GMT  
		Size: 49.9 MB (49863272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4df43e56d4aaaa7b350b094f3202a2410c8a7766c010d1e11839c68a7bf90eb`  
		Last Modified: Tue, 24 Nov 2026 04:53:11 GMT  
		Size: 27.8 MB (27775262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0f4a3931488c3231c933bd57a0e3dfcf23c92938c433c6b9e96b0a9d0e63724c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17178b7fa170d051360255aeaeb447d70a32a5cf1dd945b469fe5f25ea3d1f7`

```dockerfile
```

-	Layers:
	-	`sha256:0bdf42f27e017f3560994e6b81ae1168066b0e444a28ed912154a2e7b896b838`  
		Last Modified: Tue, 24 Nov 2026 04:53:10 GMT  
		Size: 4.1 MB (4086998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86fe2b2660f88bfc7f79e8e04a3b7ee101d62582b8a423134ce61af0c23bb002`  
		Last Modified: Tue, 24 Nov 2026 04:53:10 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
