## `nats:2-linux`

```console
$ docker pull nats@sha256:92747d0e6e1e01d40fddf588d26fccbe9dcc0f6b5af62eac4d11cbc4edd5bc2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:2-linux` - linux; amd64

```console
$ docker pull nats@sha256:bb879b6f6e4e1a3580cdebacbdfd9d5acb478ecfefb9c16785e2ed33e9b4491d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6891763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa84cbc4019766ed253d3f677ca8964ae28935e5d20c1ac620a5ca5a9167859`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:19 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:19 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:60d2ebe32288a28c0d77c33d26b26f46b700132b209b68e7dc059f782a5d91f2`  
		Last Modified: Wed, 12 Aug 2026 15:59:47 GMT  
		Size: 6.9 MB (6891254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333b0451c542fbda5686890701bd3743c787fe39abf3f54b2a8bbbce473b5801`  
		Last Modified: Wed, 12 Aug 2026 17:26:23 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:3b7334d9239983500934cf5f819e0645394dd63702d17324ac56b66b07fcc498
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98af0944fdf4eb0117d9808a69d8dee0d53a71dd8d4ae6b9d8d2461b66ecd0bc`

```dockerfile
```

-	Layers:
	-	`sha256:97fd9c8bfbc938b9928a3fbd5af1571406636f5cc1e4388ee3eb07e832f284cf`  
		Last Modified: Wed, 12 Aug 2026 17:26:23 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:63833f39d643448d13c0e65b7844a9fd97a7dfa55d1820fb560e5cc89e0e56f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6629663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5012372c5b7adf890fdec28caba7c49f79e641c738193f9f477331e48d1db9f2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:04 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:44335d63a957b80f93f0ad54ebb00b3b19657c97d422394cf481eae50fe04352`  
		Last Modified: Wed, 12 Aug 2026 15:59:44 GMT  
		Size: 6.6 MB (6629153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8fdebbbef326f768739c9466c52258cf547292bb09a20034dce6a7c30ab93`  
		Last Modified: Wed, 12 Aug 2026 17:25:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d9139854e32a4c59f5e320609a7f74c5531cd6248b594619a2997b46c5804119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2743b80eebe8d38202f9ecafd5bdc000d15b015376074a7093c0453f89463d`

```dockerfile
```

-	Layers:
	-	`sha256:aff4cdd20a457e70b0c1a486c68983f460062f15a70ce92949c3b2f2dc00900e`  
		Last Modified: Wed, 12 Aug 2026 17:25:08 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:297720a846079e52ad945707911846f7186789e7e65317fc85ba191e3e49ecb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3de0f91c063da8867658d4387c2e6812aeeaa930cf0ca13c6ac54cf58f0badf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bd701c85af73d1ffd8b1fd3ec7d2246426734d8f4591add10b2552f1ebad5301`  
		Last Modified: Wed, 12 Aug 2026 15:59:47 GMT  
		Size: 6.6 MB (6616551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e543433bb0a809687d4bffa4ea4cb71f3705185f22ce55862239f538f0c3ce75`  
		Last Modified: Wed, 12 Aug 2026 17:25:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:247ab0c6908ddb7e4921134b7b97740076667efdea8537ad40c2b1df35a171e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935562728a9e54aa5327d838e5e13fd40d8964164efdaac35b20f822d9986e32`

```dockerfile
```

-	Layers:
	-	`sha256:d82e51e62b6007c94ace5416b0336e765d80a683dcdfc3be8ee8e0e180c4ac9a`  
		Last Modified: Wed, 12 Aug 2026 17:25:46 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a6ace393629779e3479867ae810629a74f86834f2283c560ac0b8f49e836407a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6238311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539eec28c105dab47e412fe16cc31617357dbb0dd945eba9cf220416fb1b7bae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:00 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:60c300e60bbcdda6788313160d07c137fe064d5e8fe688a03bbfa3aacf3a106f`  
		Last Modified: Wed, 12 Aug 2026 15:59:44 GMT  
		Size: 6.2 MB (6237803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5676fc1c3359d1263d85309680b51d844fcc5d0e605e3fc48c2ef6915d084ef6`  
		Last Modified: Wed, 12 Aug 2026 17:32:03 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:efeca996c93b393fe09c64c0b1514bf20f23e59f3414dff9f148be0af3cad22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11fcac65ff7d18e8dfd09717d3ed11ec0ab23b40e5679c939720be0e9043590`

```dockerfile
```

-	Layers:
	-	`sha256:580a3d496ee460d7960319fba710e76f55d099166bc2d53162b47b6ec83b8f44`  
		Last Modified: Wed, 12 Aug 2026 17:32:04 GMT  
		Size: 10.6 KB (10606 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:61d28fe930cdad1a31d4c5e2bba20520a5985983a32cebd3a473582e032b77e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6306632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d493d9e899d14294bc4946e47d53a006c40abcd126ecab99c835ce2c24c059aa`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9b0e02d8560be3edfac8999dbb702bee749250d9c713020c865985032c83573b`  
		Last Modified: Wed, 12 Aug 2026 15:59:45 GMT  
		Size: 6.3 MB (6306122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8f7de3fc23237dca33d790b5e70593f5866071422c523d39cf24b8afae7b1bc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62419262a714de300e54dece90fe88c386f18f84a23cd4034945986e0a584077`

```dockerfile
```

-	Layers:
	-	`sha256:cada1db691970e0ab8d449cb5c7d5303f16413ce99fda63dc71f4ea91c567d4c`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:ed701bf4c71bacf7747e66e272ca7d9896563ac6fee74d23956defc104b8b670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1831bdb726579759d34b915eaf957181ff15c204f5c73bf8e0e1b0d7e7d08745`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:17 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b32d147a9b7c1c2826f40a3100a28ef10512f1d6e19f9c12188388095dc4df9e`  
		Last Modified: Wed, 12 Aug 2026 15:59:46 GMT  
		Size: 6.7 MB (6700022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cab4f9a108ae6bd628cbce164a0f6bce21851289e784205492c43c67c433889`  
		Last Modified: Wed, 12 Aug 2026 17:25:25 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e5c63203111bd0be1d69a6a7f40db851959364e6e75f92bbb143d6198044d715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ab7180d718151b30c560fe28162fe3cc5acd6b76441ee9d903569cf4a3ca01`

```dockerfile
```

-	Layers:
	-	`sha256:668100a64b82675d88a99526a2ffa646f0ae26808ee55bc0df79c19948fc4cc1`  
		Last Modified: Wed, 12 Aug 2026 17:25:25 GMT  
		Size: 10.4 KB (10421 bytes)  
		MIME: application/vnd.in-toto+json
