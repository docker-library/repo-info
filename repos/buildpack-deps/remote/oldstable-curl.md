## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:039c298a66998b9c38abfd1969678eab89bca11ef84d59098d602842e179ea66
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

### `buildpack-deps:oldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a1c89a59d56245724cc8afbac1150c88385c2e7f7fd705ac988b1579ca421064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72397798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212a7198f48ceb2e6c42535994d44e6a7de01e0cdffba0c0c665f1a55e461050`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1b4e7abacb8a49c06d15c2c27524eed0ba51cadc1ee9660a53a9409ceddba85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b079f118463dbd49f82a75af55f2f20f7897a4ae72d8f0b422054d71b54ede98`

```dockerfile
```

-	Layers:
	-	`sha256:1f0a7e2d2963c6e61cff96507d717538068761bcf60bc2d18b158475cc837ac1`  
		Last Modified: Wed, 28 Oct 2026 01:39:42 GMT  
		Size: 4.5 MB (4516799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916f3e50075207c698e9c8cb8a972082c0eafd9eba5a4a4acf25097157560072`  
		Last Modified: Wed, 28 Oct 2026 01:39:42 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e0851afd919393c8bfbcff6c166fe1d6c918b0e2da9cf5dc4d4442efb2b1ce64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65988250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f23a7ff0033cc6d9a490fd373f7307028db104679e3818f0a5d1672e3d7c94e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fe72c7ebd4af1aa35a541a786cc9d88b8bfbfde120c50ed1545484c7d4bd2e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877d7a3bf5226e5daaef2bc5b46436f9067046eb9a7b224b027fd6e8a94816e5`

```dockerfile
```

-	Layers:
	-	`sha256:e094dc15d0104ded8eab677f252d8091230559f662499004eda48064b74d56ec`  
		Last Modified: Wed, 21 Oct 2026 01:28:55 GMT  
		Size: 4.5 MB (4519864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0035132c4ec86b89980e16c4d0c6b381a882ade5d5217cde7143d52098eff61a`  
		Last Modified: Wed, 21 Oct 2026 01:28:55 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b3434af6a9ba04efb22ab07307d248a7a53781f69482edd6d5dfb8a3430a5670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71842039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7e36635b7459a7b6b957b88c1bdf82bca367064589631224e9c597921418c6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:02ca9538aa5a0e9a8acd275ff263a83e7ea82c6d5c2165a73a9241b2c39753ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec37bf6b02b7fc60aec9c9c5d16d02c7643d608e7fddcfd03558b667e27e87e`

```dockerfile
```

-	Layers:
	-	`sha256:f3d81feeda8183aa56065f7762f33b8a745c08092d02faa94ff8dd66dba87b9d`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 4.5 MB (4517836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d33ee16d23c5f5f7cbe559d6866825f47bdd6787827a8483b54a9ed22acb66d3`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d29f1207d2337e24e35e39e3f6c43b98546100ac66ee7fd2832d2dc6b18eade5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74216762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ec07846e2349db74a8ff7b8c63d9b9f559105e10ca117e06fbfee9439446ea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e83c539c77164214e02ebd0125dba20c9411d62f0377e9ac0a0024cf4feaeeac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93cfe8ac28ebde9b95ad945d6567efef46261bae86766f49a085ce2996bfe881`

```dockerfile
```

-	Layers:
	-	`sha256:2833dfba53d706cb8d69e670c6660629fb43973254bf90670cbbc441f0de5511`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 4.5 MB (4513920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6e5c9f08d5d00e8746b850bb988246a2ab5e21a15ff5effddb6049bc6575970`  
		Last Modified: Wed, 28 Oct 2026 01:42:51 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f82965438647b11fa74ffe415556dc4503647eaad143b084e4c88f7453bb72e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77879682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355c86f81a4fe6445ccfd4c175bd4803605ed1d335fbabae3251c8b1348a35b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:092e37ef900ba8371714ea1f240b37e80fe8294788b3b8a26312db6c3bea1695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4529048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155034f2e62f8145826f731558b0f6f0cd1a813bbb30f06114ea3b546b5446fc`

```dockerfile
```

-	Layers:
	-	`sha256:4f15fe746d9d1ded5da0f23a9c4b1a83773ad699e52da45ca9a5c5f043f5e3de`  
		Last Modified: Wed, 21 Oct 2026 04:20:38 GMT  
		Size: 4.5 MB (4522199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891e570fdfc53bac0a01e7f4d0267fb289c9e5e7f8164f0af6c540badd1ace34`  
		Last Modified: Wed, 21 Oct 2026 04:20:37 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
