## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:6a51d53f955bc1c56a25a9511b9b8ec5811cf29b06afcad21b54f23e7c040537
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
$ docker pull buildpack-deps@sha256:ed55b87bec3f2645aa35993f893f1dc8d187b423039881ac6b12f18e2a9d0830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65988908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf7fa389a09947bf705018135a15d151ee7766806d171e4cdb0179733509df3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:36b94e650655d80ee57b9e7a45d957a56c3b193681ddbcfe129efbd9f9013205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9b9b9c70029228d9b2f0ca1cc3add4aa742a281161563b7668d0c2c965c80b`

```dockerfile
```

-	Layers:
	-	`sha256:d7fc7ed1968ea372411bb0e2b0f67bad6daebcd78ecf998d4bed561eb69b32b1`  
		Last Modified: Tue, 06 Oct 2026 02:24:07 GMT  
		Size: 4.5 MB (4521159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f43e2800cfb10cfa6eaf6ce847ac20b60b9a5183f8c14f501b58ed37d4850b72`  
		Last Modified: Tue, 06 Oct 2026 02:24:07 GMT  
		Size: 6.9 KB (6880 bytes)  
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
$ docker pull buildpack-deps@sha256:9762839b0f30e3aec9c74e2f0518717b4193456c04095e6559617bb79b76bdfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74213658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d18e750aaad986ee4fa2a59797d04a40d55c89422ac7c9197bc865e2e66e37`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:73dc3408befa06cd97819dbcdbaa3203149767a2bbde876a7f7a8ca5a2368419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4522785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2889a7ea35d49327c7ca434755834f7160d3e719d792227acde3dc8b9d249702`

```dockerfile
```

-	Layers:
	-	`sha256:e1aabb74488c57d46bab3e06cbe28d4a7ea50cbe2dd23f1078f048e30de61161`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 4.5 MB (4515990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6143599477e200716cee5d0f99370b232eb85571973a6e258e97da9a0401d1e`  
		Last Modified: Tue, 06 Oct 2026 01:45:51 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a7871cce82e49c411dd63a11a433d119371df2deb004710775539e2ef2ef7753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77881007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2a0c787766d85e223820a900b067307f1ccd178fc9c0b6385fc255d287128e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:50d607eb4bff71a0c15cd2004df9ed4bb221a2c720df3a999ef0bc337fde875d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4530342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e98ea5db9f5dbbaa83208b7aeded61e089bbb686ec3e3b46b9a5dad5db1f6a`

```dockerfile
```

-	Layers:
	-	`sha256:f7c6ca67de7096239d41832300ad517bd5e7f6f586cdad023f08bf97fe38d22f`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 4.5 MB (4523494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6acc55c1156532bf6614b34b3907bdc286f0fb490cac6386b1d88283c84fcee2`  
		Last Modified: Tue, 06 Oct 2026 04:38:34 GMT  
		Size: 6.8 KB (6848 bytes)  
		MIME: application/vnd.in-toto+json
