## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:da75db32b698434c1f57c7f98ad0bdf85861a46e7054496ed2e4d273b4adc1b0
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

### `buildpack-deps:unstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:da9636f4461000f4ddb4e4c98e8cc6bccbc537120e64774a13f2886b38b84b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76881543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a04becf6757d0b19e763e0522287ea1af277a0d7d26e1387ec9f7672ab040d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:43:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9ffa190462c00dd3e91866b45b51875d2406be32a6a9ba23ddf0342daad6a`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 28.0 MB (28017509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7caabeda1ad79c4bcc128b3ef8600700ad491d9c47a0ca7d4a800d6587288918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4047881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d729ce7ffbc43fc89e05f0a8e39c5d526add4c0c7a8f43a1f8c3f48ee6c487b9`

```dockerfile
```

-	Layers:
	-	`sha256:7937e16b19d890af605b03877fdbc7cd21f402bae778d8ffb77ae67140ad3dae`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 4.0 MB (4041120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26b80d759810733aa3e89b7714d58a468b4459e69e36f866f5bc6c9ac54f0e62`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f73572d12a410add138f1dafdc2cada6ddaa801e01aa7de4ab190366dc700264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71157850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0359673fbc12f724d712f49763b422dcf16a0810b5567d614cbe53aada8f6f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 02:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:56f6eb49166be48a96505a3cb30479ed7bba799856a72fc0ac4fdaa74dd921ef`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 45.8 MB (45761330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1b68246de367282f99cbf7edfc3bf59cf036d727865cf3e45de1303e33bde6`  
		Last Modified: Tue, 14 Jul 2026 02:31:02 GMT  
		Size: 25.4 MB (25396520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0fc08d4a02fa9b84352054bf8d395a2301d6bd4c940f70fe71b0b1b3c9635921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4049432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd793d6efa741307d73d0756a0cc6228d3e357734fa19ec775a8479db0f6b258`

```dockerfile
```

-	Layers:
	-	`sha256:7c456a54a5919e4b866e9faa966027e460fa5ab1252bd76d505904a2f8d04aef`  
		Last Modified: Tue, 14 Jul 2026 02:31:02 GMT  
		Size: 4.0 MB (4042607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:973a14a9c595dec581d76b8e5bf69c644c8584062efb1417cdf726ac4871c9dd`  
		Last Modified: Tue, 14 Jul 2026 02:31:01 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1bf084862eb3b796c254600f582b51212e1425c6a1fa5ca90dd51662ab161c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76105495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8727db98d80724de7190b59cc9ce9e6da47e5a08e6a00aa1710eec869cc81e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:46:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443df5d9b4c983aa55f566335af19417100c2925ec7efd6c50e74c4e05e6df67`  
		Last Modified: Tue, 14 Jul 2026 01:47:08 GMT  
		Size: 27.2 MB (27225176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1e6b1b582c868507924f5164001233f8544044c9bfa721c9a865e1a884e1b17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4053320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c434411c8e8e576be5c1130ca3de6eff594474de90f747623de3a67b1109a253`

```dockerfile
```

-	Layers:
	-	`sha256:9de6aa7a7986f3057b79887a6a1444dd26fa4545142fdc76d338ef38d66527e0`  
		Last Modified: Tue, 14 Jul 2026 01:47:08 GMT  
		Size: 4.0 MB (4046479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2580a9e7f9db8e60b7adc4ebfcb7ab4dbf4eff560e94fc828935fa773ec3e98f`  
		Last Modified: Tue, 14 Jul 2026 01:47:08 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:af46d5d6c8bd77aa8c381c058a7da17c27e87d5331b306c5eacab4c1c5b10731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79343758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f51ebe67fe445f19df61bf2aa9ea4ffa0432004dd26fcfdb7b2265a8273ecfc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae53ddb1e095516038a38011bf3e6dda8259acc739ed46a5bfeb81089e5078cc`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 29.2 MB (29152557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f2ad2bc5683defa4b547dd4012a7984debc2df1f64959dbdb42cf5876094a855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4044979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f602103af93f3279199a018266a760f6b331984f3e3493f85d18ad9ed4949ed1`

```dockerfile
```

-	Layers:
	-	`sha256:ecbf33ac868fd3cf9ec5152b2492faa933a50aed7ba537d0b3ff8090bfd7d1c9`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 4.0 MB (4038240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11337565425a9147f3a14b33661eb7d15265c9fc0ef039422555a41174368368`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2f646470c12d5416a523128d53b180bc571e27faa4fa3bc88172bff87b6210cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84383571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a0897caf25d0538db5cc4e744f5d7b2ea9ebea216ce009a361cac7e585d3ac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 03:50:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fab381d38d54382fff171f66c20a79e5a3635a25848a60c6cf6a6fbc4e75fd6e`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 54.2 MB (54187305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abde0b9abfcfe7b355ae0c9b8bcfdae707404d70e4e816f5ab91eade15abe11`  
		Last Modified: Tue, 14 Jul 2026 03:50:45 GMT  
		Size: 30.2 MB (30196266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d0211be971dd569632d9979194452b5796e909ff48be830b6a209cdaff2358fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4051736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd00c49ca677ec1ef4ee17b50d620742becc79eb92ef8fb8f62cdef358d207f4`

```dockerfile
```

-	Layers:
	-	`sha256:34d1f6bfbb5c5d301fc414d459a65d857253bbd3476c227ad917634257a8fd28`  
		Last Modified: Tue, 14 Jul 2026 03:50:44 GMT  
		Size: 4.0 MB (4044944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29f8b38e7738257b91f096005a9c8aec69ba645cae636d8571df64a200118c51`  
		Last Modified: Tue, 14 Jul 2026 03:50:43 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:17351d842f2fe778108027efd152d9452909691222f6d8a4e1c33f79e7f39df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74295248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e4feccf33c98721bdcbbf35d7e8616f96769e4520304c082be2f9d0aac1b7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1783900800'
# Wed, 15 Jul 2026 17:28:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1be6f73fee28b568bfd2983847008ad3e045372345842108c1717134726f14c8`  
		Last Modified: Tue, 14 Jul 2026 00:18:18 GMT  
		Size: 47.0 MB (46976859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f22f7dbb38520320997d4f4595820024a83e2c201d16f2f9a01c9de002b538`  
		Last Modified: Wed, 15 Jul 2026 17:30:32 GMT  
		Size: 27.3 MB (27318389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8988da8da1cf3c198e66d20a171cc6c3a095e1ed9877b49f49a509144ba613af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4040399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903beab0e044ac0a0c8c3d3513a05c7da84e75c5db87f2940723d90c528828ff`

```dockerfile
```

-	Layers:
	-	`sha256:8394a5a88ce6993b4e51dd28634791e1aa84eb4bc9e57edd3515375e58252aaa`  
		Last Modified: Wed, 15 Jul 2026 17:30:28 GMT  
		Size: 4.0 MB (4033606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68fbc40d513c0de2ef3a895aa75cc497a198f486d7b46fa7dbb7bd7cd8e2f946`  
		Last Modified: Wed, 15 Jul 2026 17:30:27 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:47ab15247eecbde61674a84c2d558f412a6031b7fee9950b0ac4bb492be47b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76207170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f742b1972de611adf34bb6cd979162182046352904edfc1ef9c2ddd72e70d2d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 03:07:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5edc945190a0c39bdf657a310c42986617c2cda52e9000bb8f8e914615ba5c56`  
		Last Modified: Tue, 14 Jul 2026 00:15:29 GMT  
		Size: 48.6 MB (48599867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd495b241210e4b0a788cb4a753adadaa6ed306585eaff5d757a1be878c975`  
		Last Modified: Tue, 14 Jul 2026 03:07:50 GMT  
		Size: 27.6 MB (27607303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eeda48d9cc09f116df5b0c0ecc4d210dc6ec22eaa2bdd6b565c70e34436c8406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4049293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc83930113a3e721d40f59e17171e8d11828e0f952206127849fe1f19beb49d0`

```dockerfile
```

-	Layers:
	-	`sha256:60533f0d04546a0c1f1680834b06e320b249e9f6ab3eacd6f07f201ccd1fc708`  
		Last Modified: Tue, 14 Jul 2026 03:07:49 GMT  
		Size: 4.0 MB (4042532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaff9d2457347bcb830cc3a24c17ad3db9af7a9548b196ceba692e47bf4372c5`  
		Last Modified: Tue, 14 Jul 2026 03:07:49 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
