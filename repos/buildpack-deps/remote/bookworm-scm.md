## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:773b3640fb95a577712ab3c4b5239909259c791066a6e302bbc55972dabe28ed
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

### `buildpack-deps:bookworm-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6952312e7344964a052cae17d31f31718f45fa2538b47a46777dc88afad39042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136830388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44855819d9cfd53c7a98718d1f22c13b5f9e0894f4973d111abf93ebaf8a6a79`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ef7e1e7b1a9919ab256de1deb5be9107b28a15fea74b39921bec95b713038`  
		Last Modified: Wed, 28 Oct 2026 02:23:17 GMT  
		Size: 64.4 MB (64432590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0e97e0dc59160082b482ae52f6372d225418229eee72e80b4b6d6471ba7432e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7975862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10eb175e3a7642e2920e72712bf3b6f7532130be55fa0f9a621913050c7babbb`

```dockerfile
```

-	Layers:
	-	`sha256:066450eeb58f3527904bc2455404d72a88a13d75c1d0cd01e401c32b21ab9677`  
		Last Modified: Wed, 28 Oct 2026 02:23:16 GMT  
		Size: 8.0 MB (7968553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ae58ebaf59f9664062a87db41a1961c835ea8f56938384330fcad53b957c7f`  
		Last Modified: Wed, 28 Oct 2026 02:23:15 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7e9320aa83c8b6c5a90d596728bc47cd20a2ca286bb17fca6b99b7b5273e9139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125688897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1319cb5b6e5f863e2fd1390f3355a52314e107141ac2d8b6192b4a8c21368d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfbb29011d30458b56293a68613d94dc4b801df7c78c8b832f4d475cb486667`  
		Last Modified: Wed, 28 Oct 2026 03:47:25 GMT  
		Size: 59.7 MB (59697464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4a7e843261399462fbd30ece6456ea00c67bd18fe988a94b67d28de641c551d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d76868d47b4202883dc7429e13cd4a5a29405ca93845663d98c5a81866feef`

```dockerfile
```

-	Layers:
	-	`sha256:671f890144755bcfd5cd5a002390504269b01edd9e1a4a283cef498bdbc30683`  
		Last Modified: Wed, 28 Oct 2026 03:47:24 GMT  
		Size: 8.0 MB (7969830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed7b5306f0686ff61017f042334920042c4b510506b2a6eaa392de483ea21fb2`  
		Last Modified: Wed, 28 Oct 2026 03:47:24 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1aef535ea83d3a3fd23fc115d2902bd9bb8dd4548e6a9370c62b5e25f2e26025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136373550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616f82a19ced15b40aac13da181e88bc522ffda40a3b00240102142f312bb5f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:94e7393e75d518c27c2debd9162766b9434318643292d551cc287e05a328ac08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7982336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579817eb58a3abb9c62830803373e9dd3d2311d6a8e093d94405f07f7a46584e`

```dockerfile
```

-	Layers:
	-	`sha256:369df2f055297af3e0109e42c13112ba6e1766752e2239f269caef212664396e`  
		Last Modified: Wed, 28 Oct 2026 02:34:37 GMT  
		Size: 8.0 MB (7974946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89b1e7ce577c7c43b0bda082d708142a3892e945696d45262b004f777401a8a4`  
		Last Modified: Wed, 28 Oct 2026 02:34:37 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:dab14d92e650660d2509c6243fbcd07c345a6fa2437ad00fe35eefc2624fa093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140494692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2efbb0e3a8743dad9d92d70b1f8932a17289eef17ed1d865df820ee05d277afd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c427ac0282c0d463802a24e053ae8fee85e1e035dd9990480227e0565ac7a8d`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 24.7 MB (24703225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1774d898b2aada2b7099457b957d9c63dcf62f51c7916ce3034941142e49d2a3`  
		Last Modified: Wed, 28 Oct 2026 02:28:36 GMT  
		Size: 66.3 MB (66277930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b3f48cadbde48ce5683a682c6e067625337b8d812c6ff6954f6b4d56388454ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7972000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e477f121122e5eaa300e01a76da4f9f77cb0f57554d35e6f89e4757a395b9b7a`

```dockerfile
```

-	Layers:
	-	`sha256:e5b1648db86fb7b96551052e2195e8500307337320a707820cd5a8b1ffd433c8`  
		Last Modified: Wed, 28 Oct 2026 02:28:34 GMT  
		Size: 8.0 MB (7964713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ffed351f890b411904bb7bd4aeec98e3c7cbe45028724dbf635c0376468dded`  
		Last Modified: Wed, 28 Oct 2026 02:28:34 GMT  
		Size: 7.3 KB (7287 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:20dc2102ef31fb6bba137214083bbfec3ba7c2ffe958ade1d103b4f2ed6fe365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147771810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3309da8965d7cdb467930e71ac60dfd6b5daa1a5f3c1827c0631908cd3f53f4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 12:03:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1464e6ff9e88f81f47790e0b4d11c04499f7ec50f83eee4e30ca561e051dd7`  
		Last Modified: Wed, 21 Oct 2026 04:20:38 GMT  
		Size: 25.5 MB (25514941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d030ed614020eda0369d41da0e8a2fd91d38334145593925a75dff283016302e`  
		Last Modified: Wed, 21 Oct 2026 12:04:46 GMT  
		Size: 69.9 MB (69892128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aa4ee70cd9fb8636cd59ae3f154d7d2fa61fccfe96363310f1129dbbcf27b8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34c29d2d7f7ceeb94971972f212852fac014c6a5249944ed64ff9ea54d0db33`

```dockerfile
```

-	Layers:
	-	`sha256:107cdd68f64ecb8ac473e2a2c9cb8d56aa6556edc820930ea3df3688880f0e75`  
		Last Modified: Wed, 21 Oct 2026 12:04:44 GMT  
		Size: 8.0 MB (7977200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f88a930ff4877ba32f9afb624948e791b009022d0321f85540848c7fe9a9d02`  
		Last Modified: Wed, 21 Oct 2026 12:04:43 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
