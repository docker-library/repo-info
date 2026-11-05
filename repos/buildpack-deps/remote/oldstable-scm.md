## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:92606626803ffb73b08635a76059b6b839094e94429918a873c15e7eecb57f84
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

### `buildpack-deps:oldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:43871fe79d288129dd83926d17113fc25c44a1ef5aef1244cea470c2cf7457a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136832321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc30ee76071b1a6d8e09517b69c82078dc09d28f6be2cd3f63e53b9591db6c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d1d04c520b3ed6ab220613dc5fbeaac6b5aea444da30fa2d9f0bb969facc720b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7975917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5018ce7eb950115eff194fb6865f4c4ac4356d2d456107ddc5c8285018484ac1`

```dockerfile
```

-	Layers:
	-	`sha256:3da97d44f8cf455896d9a3b8bf82c4c78549e086379295d6a3ee6a551cac56ca`  
		Last Modified: Thu, 05 Nov 2026 08:31:57 GMT  
		Size: 8.0 MB (7968607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b9df071ce56e71e0465542326dc30934692d1c3219431081d256c66ce899a5`  
		Last Modified: Thu, 05 Nov 2026 08:31:56 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b76c34b966c60249c8eb9eef13bee47a9b97bd56f1035863e391b5f1aeb067ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125690550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c6555c6a5afdc674baf0bba4788e81532f55e3ebca162e7d98c9974531e833`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:325fa5f44a7e8f47829253e74eaed9c78e6127eb6a563954393b7380e7d3174e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798b74d1502b6e7caa837d9d1b0e6b6ee176db6543ab878a3eae8db80509a367`

```dockerfile
```

-	Layers:
	-	`sha256:40215b5b33f59f0ae5a22df31c2efe161bfd8c737006e2813914b2195b6c0a58`  
		Last Modified: Thu, 05 Nov 2026 09:23:43 GMT  
		Size: 8.0 MB (7969884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4f31dc0799dfb2127e23f2917c0192e9379e6691e9201a72fbb7adbc2018e7c`  
		Last Modified: Thu, 05 Nov 2026 09:23:42 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:87f2e95d304714748869107923044a5f5c564202fcafe097caf52cefb6eb1802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136381577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45971530e64a7b572a46cffaace1a495875ab2c9843603cf6f2746b58acb5bd4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d8c1bec660a831bad900fa646cae9366b05c1a3619e484d8fcca0630ee714463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7982390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9384aa2e2525997bbd4e94d2ace37d210fd9361293fcd38f83bb3d6b75804e30`

```dockerfile
```

-	Layers:
	-	`sha256:b4f38874ec3ed4c169e4697f50a048ba758c09b76c7951fdaa2494e868107f03`  
		Last Modified: Thu, 05 Nov 2026 08:28:56 GMT  
		Size: 8.0 MB (7975000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af731445fbdd4182b04bc45e412e0e761c2bc5751568fb9ca01251b78558fb8f`  
		Last Modified: Thu, 05 Nov 2026 08:28:56 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d13ddb829d9c026a4af50844bce9d628eaec609055adc5c6fa9eaf11d788a55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140496947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6915bbef64bb800098942d2e500e714e06db2466598e678e87f6219fde7d3688`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3c82613bdf172e9f18ec7371687ef50a0ddf1d35292235ebc2788ca2754b7c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7972055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658477d185352c02953956b4e38255cc693abdcfaab96ab42b9b17a2f4fa96df`

```dockerfile
```

-	Layers:
	-	`sha256:7d3a6b97a8f2f9d7bbbc52d77417e9b3a26d1d1b49ae669e40eed87e27d788bb`  
		Last Modified: Thu, 05 Nov 2026 08:24:38 GMT  
		Size: 8.0 MB (7964767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:038982ba3b1c8a1c99c981f26a398e8d6f5ca6f525c161de6ae89d291a86818a`  
		Last Modified: Thu, 05 Nov 2026 08:24:37 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d666db167a9a30c07ece018977ffb282e168a1a364e65e58dd879612c0fe6796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147780595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000fb85a93bab29922876c2c0eb0665e164ac725735ef65cc035ff70d0ac85d7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 11:54:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7339b62b6463010208cd0f9bd95fca3c60b698cdfeeda413d511e883ce2f291`  
		Last Modified: Wed, 28 Oct 2026 04:19:13 GMT  
		Size: 25.5 MB (25514966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac3a369b48a110414ca84367074180b8af9539eba053b90f33f4b4032884eaa`  
		Last Modified: Wed, 28 Oct 2026 11:55:23 GMT  
		Size: 69.9 MB (69899322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fddc8ad7e44921c0cec0711fb5ba830d6a306688392c1badc9cae15d2b9899e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242f315b5f4bd5444b14e6dfb809037f6ea0ae9619ccbc7b2c2b2b696d71a1a1`

```dockerfile
```

-	Layers:
	-	`sha256:1079e802adec6fe5c1432780b3c95f4ca5808c1399b776a5d93a50f436790c75`  
		Last Modified: Wed, 28 Oct 2026 11:55:22 GMT  
		Size: 8.0 MB (7976422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ca5673541c4f4430fb68b5afaeb5a9935b6f8dac39367a027e7e850ab76aa38`  
		Last Modified: Wed, 28 Oct 2026 11:55:21 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
