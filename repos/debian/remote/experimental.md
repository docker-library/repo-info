## `debian:experimental`

```console
$ docker pull debian@sha256:0c2277464f05afa0c212c28e2745fdb27d35c2a0c6ded360dcbbdfd86f652ff4
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:4d6fb86d06617337ff844b898b6329490edce27772d050fd340c992714052212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49811105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485b6d8d52fb49a19ee4c4e8ecfe3fbbab68402e236dc1e5efff962a2a9a7de5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:c23cf956e2ee2759ad8e6d7f2904d2fccc3b16610bd8bf43b5f5b99c90f29844`  
		Last Modified: Tue, 06 Oct 2026 00:13:52 GMT  
		Size: 49.8 MB (49810884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0af1458248e8c36dd7b8397244f87435e83672cd80c976e27f3af4c2ab4f9f6`  
		Last Modified: Tue, 06 Oct 2026 01:14:54 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:c7e80320bcef02563d9e48400b81bc88db5a368af2d0abb282e4ca4555dd77b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9468229c581f98e1c55e4ea967908dd468cbda8c0e19e20d32b2936cbc8e96c`

```dockerfile
```

-	Layers:
	-	`sha256:5710b09998f69058bbb7fc3e11f4b85aee3584aeeafff9c306088cc2eb4a5a41`  
		Last Modified: Tue, 06 Oct 2026 01:14:54 GMT  
		Size: 3.2 MB (3174105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94334316ead34163be3ecf626202f8bd5f80728fd8b3e682b82a2ef871cf7628`  
		Last Modified: Tue, 06 Oct 2026 01:14:54 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:c12785d2fd5f4d1b32d7c926d52c98f6ef766792270bd70b249e904384b3a386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46000577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34878414843d6ac565db8561ee4ad990be11d27c7cd881768e9639eac0dac604`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:15:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:e470f0399b40656fbc68ae94450dcaa1231748f9a618953f5275fdb07afd5aa0`  
		Last Modified: Tue, 06 Oct 2026 00:13:57 GMT  
		Size: 46.0 MB (46000356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca771ce5b76bc999aee5cd0b0efe03056f0cefac28f2df95e70c532c516930c8`  
		Last Modified: Tue, 06 Oct 2026 01:15:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:c49f378408120240efad1b0311a86130bd92080e74c5c389faa3a9360ca3c08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770ab118aa792139a11d4f90703074658bcee09d015420c9adc662dc103184ed`

```dockerfile
```

-	Layers:
	-	`sha256:c51f57225b3f17610d4c0d407c84d98dee412ca9be0f64a9abc1fbf5595af79e`  
		Last Modified: Tue, 06 Oct 2026 01:15:28 GMT  
		Size: 3.2 MB (3175640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d2b87872f44df1a3668b68b2637d76fe9ae2fedf606a6206b75b2b47139405`  
		Last Modified: Tue, 06 Oct 2026 01:15:27 GMT  
		Size: 6.2 KB (6164 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:7da496eb29424bd641e3f12d755f4bbb04b827f898fc0c33898e645b77139349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49137444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df24aac543e5028223361ac90c50f0091882b24ad09f8e0399bcb47835f7f14`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:c92dd615d1e11c5804e2c740b2eb0e98b40bb3df3f8d18fec4de71f1bc9fa553`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.1 MB (49137223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65371656aebeed10141f19a30efc92d5791ea785de8b764a6d1019b121daa20`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:1c8e0b9e90417222adce5bf5f409401b81fe2cc808c8c347aaaac1043b74b8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dbce0024a34f0fa4c15d0484ccf8b78c445b107e05cc8035f380f7b9a038b4`

```dockerfile
```

-	Layers:
	-	`sha256:2d677c660a487f3b5789cb9b39ce1c7d00a3db3841071bc413232b180a627b35`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 3.2 MB (3177566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:582e43c91248c4d7f8301711ce921fdfb1a7f277cb24a684b1e9cc3d32c0db0b`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:58bffeb46da3d36c00a2674f78fb7b456517e1d1380369d7eb5e0596f8a697c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50930651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d63a1442a2272e1f344d7b9051844cb2aff5f9fef22cf96f3016684affb43d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1f28ae1d38534a9d085e3cd145343bb08f8854370921001f262648e7e800748e`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50930430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e4ec2b9e0d5404820f11d5a3034d42a1ff76d92240ca84b6d484d8d7ccf72b`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:cb571260fd828f1a8bf1c1bbce5491abc080fe9b16765644c373f29a0705b60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e74e19a948bdcff77b4d94d1a161a3b466efe9c206e18a8e8022ca968aa64c`

```dockerfile
```

-	Layers:
	-	`sha256:fdee120722b658750353c63eb546c0d474e6ed64e8fcb63c68856a84f54dad53`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 3.2 MB (3171200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71dc274ac2a6548c57c13f5d8a64cae69bdaa672352a44e6a05e48e9e521c787`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:982b8db2cbf4e816275ad90f518b49576acf3633dd9b357af91c73d15dbea9ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54495878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7fe56a43797e8101365c460734e2638095aaefae885b4a1c1409b33ddf5b75`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:17:19 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:6e877c3a8ce160450527b31b0c3944585ccf7e18cb0c36fac948cf0814e33ce5`  
		Last Modified: Tue, 06 Oct 2026 00:17:08 GMT  
		Size: 54.5 MB (54495656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e303264a0a70988a9c9a5d2d791a9e587effb504799e3e61539b9a5abfc23`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:289f16610087443dbc4af38f2835bed54733cbbd698acba21d30d9b57d8eed8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038412d0e6af4303125154edc16da06c96469a9b45d2a9369a035d88acb2c387`

```dockerfile
```

-	Layers:
	-	`sha256:770787ba14fc06169aa03f9a66235b1be9ce5745e20434ac2581c4c90086962b`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 3.2 MB (3177871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae58fb50f23100a482923c030a138ed92611ab00a30f54d9ce944b715a341db`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:b1b418ec0d50af993f87a7472704925a43bf7ccf118ac2f1a000012804aeda11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47230802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30504bb688d8ff867396d1b3639172da2e2199f7a7e22071fb0c756c679e6d9d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 04:36:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9d0e65f13d0a708ed35dc211c5dfe6d52f6ac796acbbcc0bf324f38b39fc2b95`  
		Last Modified: Tue, 06 Oct 2026 00:34:25 GMT  
		Size: 47.2 MB (47230580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e87fc4e11237111bf69382a5db69826d2b506b84907c3631bea2d38467daa7e`  
		Last Modified: Tue, 06 Oct 2026 04:37:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:d67b3068b020fe0e1006fbac8a5701c89692b82696357b42ce5fae387ae8e3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3171787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e069302349f3c633ef34476c27cf6890d0aab732e9239822f60b507700c6e287`

```dockerfile
```

-	Layers:
	-	`sha256:653841dc7cafd85f638fd17dec351d4cf671a477e6aa8d89d4a55d308ec3e7fb`  
		Last Modified: Tue, 06 Oct 2026 04:37:40 GMT  
		Size: 3.2 MB (3165654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13025667a3462711138e8cec1d344d3375152a87ccc01b84fce819ba4250a611`  
		Last Modified: Tue, 06 Oct 2026 04:37:40 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:955f9a9168f2314eb79dc6513e6e403c6540e7c341fb295d358c545fef4f2d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48908512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7850a702657ee82e046bca5940310fd66c421096356808ba9d88c623a45394b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:13:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:bed96751360816a201e176a1212adbca4f146d9f20533b20e81c427c1f56a727`  
		Last Modified: Tue, 06 Oct 2026 00:13:16 GMT  
		Size: 48.9 MB (48908290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a183988ea804cc16aae6fb9806d57fd06afd4e7168e3b8a68807b6d627fb972`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:9f47e02e6d96c4d1c19fa5f7b495fe4df114a7928a139cae6f7519e2f5ddd664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac2f92e5ad7340c0f6ec873bf66b70e46e9d0fe49d06640d47936c98bf9999f`

```dockerfile
```

-	Layers:
	-	`sha256:e3b1474c904373bb963269cb987f0249bcea6ab985811e0ad47ebb83c642202d`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 3.2 MB (3175501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49657dfe6bf32258ade1bc95c08e158d03f7d85046050a78bdaced8154d4528e`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
