## `debian:forky-backports`

```console
$ docker pull debian@sha256:5061877acfb6c1a0a3c0602804dc6c75d69270f203216b9cb46f3714e45c6ab2
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:c87f2bb9e2446001a4df0352ab6e30a6bfc352238a7fea09036e88f35913beba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50075302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57afafe3fdf61498367c105a9d67350cfd8d16b0f147da4519fe445649fc970a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:11:48 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731ca9ae889adac0940de3cfedeb763ff2b636447295c464d0808187536d7a82`  
		Last Modified: Sat, 19 Sep 2026 00:11:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:86367e621bea30043f14bbc54e84d8c24d1e0b8dfcd8e9c06c3aca802204be1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35ce4263deaa64e728714820939cd0fdeb659859936f62db5d446398d7a15c7`

```dockerfile
```

-	Layers:
	-	`sha256:1f155cec0af56a21bad21b442d3bdb318ae313f1a56ccd396d88d5c3460a29a5`  
		Last Modified: Sat, 19 Sep 2026 00:11:54 GMT  
		Size: 3.2 MB (3194717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec665b268b573db4f2263006b0248f60c12e9537de73d74ab17a3ded3dd407f4`  
		Last Modified: Sat, 19 Sep 2026 00:11:54 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:fc63ee068facb29de0dac2f39755b5373c89b78636721aee7cdbf59e04e18ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46452064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461e368d0fbc9259340e8c4c65a71f1d4dae8dbae9519e9b118772d76a583e58`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:12:48 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c0dd4e73154d77853deb35b3302ee7d1c0dad7b51f51b93765769185d7b5842e`  
		Last Modified: Sat, 19 Sep 2026 00:03:00 GMT  
		Size: 46.5 MB (46451843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6abe134ce83f7b1d5cdc263e8f95870021d3b4ee64a7d7bad5f217ccb1d2ef`  
		Last Modified: Sat, 19 Sep 2026 00:12:54 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c9adb9ac1005c748f11a3521997dcffb1b911f883bb40ac8fb1894ce32ed3fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87feadd2c93967f3e54981eca3a4c0307eee8218e54fad18337e0869fac4aa43`

```dockerfile
```

-	Layers:
	-	`sha256:3a23fbdfcda39cc4f4f987d90ea0f64f456f384ec54563272ee2ac14757ba16f`  
		Last Modified: Sat, 19 Sep 2026 00:12:54 GMT  
		Size: 3.2 MB (3196244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02f2c883025ff24dad16b0d2c72c02c7020a70eca60421ab35385081b24dda74`  
		Last Modified: Sat, 19 Sep 2026 00:12:54 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:1facb22736daaf43b5feed80f8deb9308bba90d6e2889dec336208865c8e4330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49556709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf070806d9364193fbac2c815a41ef26a86d2db5dc00f815944645debe38905a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:11:47 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1add6bcfd50abf7037028c627ebc7cacc1090aada9fe050a84e84e48fae8a3`  
		Last Modified: Sat, 19 Sep 2026 00:11:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:39a33121f3a6084ea1fef01aa89354c7b4a3f0198231d26fe113508e10afcefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079801bc13a81865f4eb1c5498fb192f374e33ba002cb011c0eb5a0c64fdd21a`

```dockerfile
```

-	Layers:
	-	`sha256:3e8a9ecac41975ff419de33a3c81a39bcdb4aa4292586a1d73b4803dee26f279`  
		Last Modified: Sat, 19 Sep 2026 00:11:53 GMT  
		Size: 3.2 MB (3198166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22bb0537bf47c3714d08b19d3ff3aea109a9cb9b4934afe2b74eabbf4c3f7350`  
		Last Modified: Sat, 19 Sep 2026 00:11:52 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:b0ef091ea4e6bc1591f1b099eed18259029c9c14fe15e8db1441b42cd6d4347d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51213502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c0e78972b1419afd66c0e0707b804296cf826fb31e2416980d39e792c77bfb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:13:16 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80567be501664338112db95ee071ef620d401fa82a8bcc4c1528d95bb47c22`  
		Last Modified: Sat, 19 Sep 2026 00:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:3d2aa38f98daa939a20650964607ac682da11e9023a8eb43080f7e552c9982be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b057b770ce6978d0ba269a38870198046ad30d5f70fc18903821a3ddb3153951`

```dockerfile
```

-	Layers:
	-	`sha256:0ba3e89f3a875411909dd18545ff612e131e4f0c656163db070d4c98f88663ae`  
		Last Modified: Sat, 19 Sep 2026 00:13:23 GMT  
		Size: 3.2 MB (3191816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebf4d5f5fd8ace55795e993bb7284245cd482b4dfe0e4545a24aee4dd685ae31`  
		Last Modified: Sat, 19 Sep 2026 00:13:22 GMT  
		Size: 5.8 KB (5760 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:d61ce5678630a40ac409278d5fe5ed65a82fac5ce19c2333f6db46722358282b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54839394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c5abbac0ca923b42487723bd02a18bc742e1a57bab34ecf79c4350902514d6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:12:04 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cb7fd76ce3e2978f396620d2ce4db34c6e31abd26f0d973e1cace0466a535365`  
		Last Modified: Sat, 19 Sep 2026 00:03:15 GMT  
		Size: 54.8 MB (54839170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4688a7b57544dfa0218f9ca0fdacce1d9234c95b5ac8b3fb94c7834727cfb6ad`  
		Last Modified: Sat, 19 Sep 2026 00:12:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d53585daf660f5eb8dc42098307218a82e69409d255ea932f0641fd8bc1fa2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6763aa1e08a6647f1889c5874cf66d01b434729aa1a152787df07f626fe7d7f`

```dockerfile
```

-	Layers:
	-	`sha256:85dfb925bac59976b89daf10b4a02597455b0a57f2daed8979ccf7762547e706`  
		Last Modified: Sat, 19 Sep 2026 00:12:26 GMT  
		Size: 3.2 MB (3198479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cc14e12a4c8f8fe1ca3331d8a66d55271a3d7193d54ca2256d1ac06f2b18272`  
		Last Modified: Sat, 19 Sep 2026 00:12:26 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:f570c31b19f49cdd0d135db56ef9c65973ce605bad9c34ce18dfebf85bb84b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47567164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29696607bd4abc5db1e0b890b71c1d82451b4acbab7441dfed5c4d4961cd1b18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:15:18 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:317347724f0611ba03877e1eee8b21c4ddf58f85ee0ca414fa59f47dec32c320`  
		Last Modified: Mon, 24 Aug 2026 23:22:21 GMT  
		Size: 47.6 MB (47566939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4f970ab31080c61b89d4dbbdccc478217468e7fe9b7cecf62feef2b81b61d4`  
		Last Modified: Tue, 25 Aug 2026 00:16:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:67b315121aa2f1fd8a69a26b88ac5ab1309e0d3a8189bffca523d18108e55d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1069d39018d88537529e32072a5cf8c1b3d7898c030181d3df846f9f5d94b65`

```dockerfile
```

-	Layers:
	-	`sha256:0855911899a19ef95b780cec110fff641a86a6f3c651b6e8af9db8895d6c07d9`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 3.2 MB (3187143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:669c3ecb312d97bb60b92cde6fac61eead8022d0e13266b5b368f06993df5072`  
		Last Modified: Tue, 25 Aug 2026 00:16:11 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:a3061e45f7e5d65886544beb78fec019d72f79f81ca7364742b9be71c4290b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49326805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff11b3cb2a25cccc05a7642739652f77828b9eb305960bd52b1691ec27170a7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:12:25 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:00ec1575105e35cd5f9de7595058425838bb280d5ebcf3a21e441c789789cbb0`  
		Last Modified: Sat, 19 Sep 2026 00:02:10 GMT  
		Size: 49.3 MB (49326582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e742df90f33ab2170a2283a49c6c6ae233f0bb612fd503c5a0fd551ecd4424f7`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2cf7df9ee8e4ba2b1fae3cb575474c0488639c4b3b27e8f5d5b19d07a7eeb324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc61659bde7bb53135df6959bcefb183db1cfc48ddb416641b7fe90aa5fe0ae`

```dockerfile
```

-	Layers:
	-	`sha256:6990e7c0fcab3b22d3432cc8697d9f9d0dbf7ae4c481025f57a5760b58b8a27f`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 3.2 MB (3196113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fdc1363037f8b0030ffb45f8036fa27035dcf493449d80114723519544e55c1`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
