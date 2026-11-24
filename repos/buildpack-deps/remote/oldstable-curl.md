## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:47829a8a72a39ce95fd43d0676572a3e6b7488caa2d6cadae9fe90b0ff77e755
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
$ docker pull buildpack-deps@sha256:d1f028369772013fe9aa1634329843d4ad1a6f22ab0b265f752cea293bbaedae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72399632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b4257275e07f220204063eec29c1cff7e6907a35532c6aca55776d906a7e88`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:36a247d3787698e1a860135220749ba90cee36c5167fbfeb3cc488359ea6fe8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b82ac49c9050bdd165249192f102a6daf319702e6d8eaf94f8286753e436956`

```dockerfile
```

-	Layers:
	-	`sha256:72191fbef66d9c952f100cf132293a2d9563c98ded7ad3825155a442f10ef866`  
		Last Modified: Tue, 24 Nov 2026 04:39:22 GMT  
		Size: 4.5 MB (4516853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:935c3f3421cac15fefde2ad382fd69151be9cef7bcb716ffa7e0f8dee7f79951`  
		Last Modified: Tue, 24 Nov 2026 04:39:22 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e931285eea3bd09ba8bf56b61ecc681d28efc7155668f39692c6153a308603aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65992648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcc9d725856fcf5335858c079a398a3a59e9b93d83fe9e3cf9ea9479746e39a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4fe65fb61c022a086ae1667b517b7c65bee4e6c796df36b493791ee593694bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bb94586c0a3d941b399d90afa0cb2ce7e560de6667527e691f6684a9a48fbb`

```dockerfile
```

-	Layers:
	-	`sha256:90d75f8205cf32abfc776b19588d6e1534e458d551c67efd5414883a185be18e`  
		Last Modified: Tue, 24 Nov 2026 05:16:05 GMT  
		Size: 4.5 MB (4519142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6160215e24386c51ce9dfff8d37f4e4ee1a6a7a7c7e554be9e9386f7a2ebe0`  
		Last Modified: Tue, 24 Nov 2026 05:16:05 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6b35307c90dac3f0093615845b31785aa074fdd5c639a4a989a72ae35996467f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71852640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280ad0271e8fb31978e918844ab8a63b96e4e930dd41efab3e8bd6ceb086b76b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5102806a398b45400375737e232e98cb835f68fd376c35539d82cbed6454b059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194117c9ccc51b951725264e25c87d3cc038f501574742152fefadde73ed27c0`

```dockerfile
```

-	Layers:
	-	`sha256:f437cc95fa3ea801728c4cf09e44052a0e1f4f6eabd304868ca783c7bc75d52e`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 4.5 MB (4517114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bda85f1f5ab3a6697132f1e4130cd73aeb69a9c3e42ada56bf59dd29f70f5840`  
		Last Modified: Tue, 24 Nov 2026 04:43:35 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0bb4eb240e282baf6f67e465a5ff507b20f325fbec756fd6ac041bb151842e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74219320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b399a2a3d12e9b4b2668c401a00a363a3933308d161b797aee1e4f7c16adb47f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c9e51c4a95d57bdec64801d986a2f1209692baa876c2f40c8b3ac8838db4386e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90b5d144cfc645fde943c6ca6f57f9aec76dfe6803b3b04ef102ff49c5e4261`

```dockerfile
```

-	Layers:
	-	`sha256:dc9ffcc4bbb32ecb62310d055bf915a45caf5332211770750ddb313c4d800788`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 4.5 MB (4513974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:777d13cfe6a95735514640c70901916160c4e85467f5cffd497953e941f303f9`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:90405ba938f05f23dd3e893f1142bce0cf5b1e539918fd4977517ce384a5c5be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77883684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2445c08673c1aa28ffa52f1cf8f4a120eeec710bab2c785787f6fbafb3f8772`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 06:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7ed8c49f58d7cef751e5a8d933be1e5cbede20189d3feec192fcca8c63783a`  
		Last Modified: Tue, 24 Nov 2026 06:51:01 GMT  
		Size: 25.5 MB (25515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:99be6fb02b72e3b246a29cc072ffc256e7b8bd5693b99adaee5d60fd744c0fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a461247717e01d9c78b66389b90798b79fda63d8daac8a0141bf65d6b9346a83`

```dockerfile
```

-	Layers:
	-	`sha256:7f074a52013b57d9d1d184b661d6d78473c1a41a86ce622381d2863f0b572c63`  
		Last Modified: Tue, 24 Nov 2026 06:51:01 GMT  
		Size: 4.5 MB (4521475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03655955871f0ae1ba30d8f79de5f7a956c9992214948cc1d2b8589475c500a8`  
		Last Modified: Tue, 24 Nov 2026 06:51:00 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
