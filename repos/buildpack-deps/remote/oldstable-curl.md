## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:5f8a65a7e3b419450aebd73c24e3ce8b25810354eccd7ff6f673b0c387479131
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
$ docker pull buildpack-deps@sha256:96fbcd27f941e2b5b409780b9eef6dd5a905bfd9ab281fcb4bd5b468d06019fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72393820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4827f1e958fc279ee3b0fc12daea26058e40b1707a0e72170a1966f8e38cd75e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9e6b986f76c329d1591792146d9299e56f9f94abf9ae7228eb853a08af998377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6ac94fc3b078ed6dafefcec62b3e284923af4184e90f0d683c0e94582136fd`

```dockerfile
```

-	Layers:
	-	`sha256:7a8fef3ba0dd05f5fef238768163f332285b533b740c562c0c894c849c1f011f`  
		Last Modified: Wed, 21 Oct 2026 00:46:12 GMT  
		Size: 4.5 MB (4517575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26a2e8d76d34f8fd7473299756efacbd45192b30d312a7a18e198cf6898693aa`  
		Last Modified: Wed, 21 Oct 2026 00:46:12 GMT  
		Size: 6.8 KB (6817 bytes)  
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
$ docker pull buildpack-deps@sha256:747e33bb9e4b2c34c51c5f49e65a275425dff6344a3853cd43a17920b512dee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74213572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756cde0888d8afdbeea4dd940a540d5604a96a9ec30a3eff99941750c340a6bc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:48:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5c931c0576f2166fcb004f72a7907d54e3d103e9fe67720d889fdb25bfdfecd7`  
		Last Modified: Tue, 20 Oct 2026 23:30:02 GMT  
		Size: 49.5 MB (49511651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb278f446e61688e19b3920610d3ef09cddb78ec196f53a7ade170a7ad811ce5`  
		Last Modified: Wed, 21 Oct 2026 00:48:38 GMT  
		Size: 24.7 MB (24701921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e2498c65cb2b003417b5ea2b45046f9ffc6a302f951b4df9a2fd2f31b3c35db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4521490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea7459cfd137eb48b28462dd9de8bd46cb9e768f1e3dfca41b051a957d7fecf`

```dockerfile
```

-	Layers:
	-	`sha256:7ec343a51151195f9138f4762c208bb3c93faf38528b7db7172d464ceffc9b58`  
		Last Modified: Wed, 21 Oct 2026 00:48:37 GMT  
		Size: 4.5 MB (4514695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0f4b9fb4c22fce086680a4ceecb0da09edc7d6c31ccf6e932bf2ddaedffb525`  
		Last Modified: Wed, 21 Oct 2026 00:48:37 GMT  
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
